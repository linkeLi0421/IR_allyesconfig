; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath10k/wow.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath10k/wow.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.ath10k = type { %struct.ath_common, ptr, ptr, ptr, %struct.msa_region, [6 x i8], i32, i16, i32, i32, i8, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, %struct.anon.140, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.ath10k_bmi, %struct.ath10k_wmi, %struct.ath10k_htc, [4 x i8], %struct.ath10k_htt, %struct.ath10k_hw_params, %struct.ath10k_fw_components, ptr, ptr, ptr, %struct.anon.189, i32, i32, i32, %struct.anon.190, %struct.anon.191, ptr, ptr, %struct.cfg80211_chan_def, ptr, i64, ptr, i8, i32, i8, i32, i32, i8, i8, i32, i8, i8, %struct.completion, i32, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, [2048 x ptr], %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.completion, ptr, %struct.work_struct, %struct.sk_buff_head, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, [41 x %struct.survey_info], i8, %struct.completion, ptr, i32, %struct.ath10k_debug, %struct.anon.196, i32, %struct.anon.197, %struct.anon.198, %struct.anon.199, %struct.ath10k_thermal, %struct.ath10k_wow, %struct.ath10k_per_peer_tx_stats, [36 x i8], %struct.net_device, %struct.napi_struct, %struct.work_struct, %struct.anon.200, i32, ptr, ptr, i32, i32, %struct.ath10k_radar_found_info, %struct.work_struct, %struct.ath10k_bus_params, %struct.completion, i8, i32, i32, i32, [0 x i8], [48 x i8] }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ath_cycle_counters = type { i32, i32, i32, i32 }
%struct.ath_regulatory = type { [2 x i8], i32, i16, i16, i16, i16, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
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
%struct.cfg80211_wowlan = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, ptr }
%struct.ieee80211_hdr_3addr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.ath10k_vif = type { %struct.list_head, i32, i16, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i8, i8, i8, i8, i32, [6 x i8], [4 x ptr], i8, i16, %union.anon.192, i8, i8, i32, i32, i8, %struct.wmi_wmm_params_all_arg, %struct.work_struct, %struct.delayed_work, %struct.cfg80211_bitrate_mask, i32, i8, [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i8], [8 x i32], [8 x i32], i32 }
%union.anon.192 = type { %struct.anon.194 }
%struct.anon.194 = type { [64 x i8], i8, i32, [32 x i8], i8, i32, ptr }
%struct.wmi_wmm_params_all_arg = type { %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg }
%struct.wmi_wmm_params_arg = type { i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.131] }
%struct.anon.131 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.wmi_pno_scan_req = type <{ i8, i8, i8, [16 x %struct.wmi_network_type], i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, [6 x i8], [6 x i8] }>
%struct.wmi_network_type = type <{ %struct.wmi_ssid, i32, i32, i32, i8, [60 x i16], i32 }>
%struct.wmi_ssid = type { i32, [32 x i8] }
%struct.cfg80211_sched_scan_request = type { i64, ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, [6 x i8], [6 x i8], i8, i8, %struct.cfg80211_bss_select_adjust, ptr, ptr, i32, i8, %struct.callback_head, i32, i8, %struct.list_head, [0 x ptr] }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.cfg80211_match_set = type { %struct.cfg80211_ssid, [6 x i8], i32, [6 x i32] }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_sched_scan_plan = type { i32, i32 }
%struct.wmi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wmi_cmd_map = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_pkt_pattern = type { ptr, ptr, i32, i32 }
%struct.ath10k_hif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.127 = type { i64, i64, i8 }

@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ath/ath10k/wow.c\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to clear wow wakeup events: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to set wow wakeup events: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to start wow: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to suspend hif: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to resume hif: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to wakeup from wow: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to cleanup nlo: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"encountered unexpected device state %d on resume, cannot recover\0A\00", [62 x i8] zeroinitializer }, align 32
@ath10k_wowlan_support = internal constant { %struct.wiphy_wowlan_support, [36 x i8] } { %struct.wiphy_wowlan_support { i32 6, i32 0, i32 148, i32 1, i32 128, i32 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to clean wow wakeups on vdev %i: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"failed to issue wow wakeup for event %s on vdev %i: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"failed to delete wow pattern %d for vdev %i: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WOW_BMISS_EVENT\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"WOW_BETTER_AP_EVENT\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WOW_DEAUTH_RECVD_EVENT\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"WOW_MAGIC_PKT_RECVD_EVENT\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"WOW_GTK_ERR_EVENT\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"WOW_FOURWAY_HSHAKE_EVENT\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"WOW_EAPOL_RECVD_EVENT\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WOW_NLO_DETECTED_EVENT\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"WOW_DISASSOC_RECVD_EVENT\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"WOW_PATTERN_MATCH_EVENT\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"WOW_CSA_IE_EVENT\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WOW_PROBE_REQ_WPS_IE_EVENT\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WOW_AUTH_REQ_EVENT\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"WOW_ASSOC_REQ_EVENT\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"WOW_HTT_EVENT\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WOW_RA_MATCH_EVENT\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"WOW_HOST_AUTO_SHUTDOWN_EVENT\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WOW_IOAC_MAGIC_EVENT\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WOW_IOAC_SHORT_EVENT\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"WOW_IOAC_EXTEND_EVENT\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WOW_IOAC_TIMER_EVENT\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WOW_DFS_PHYERR_RADAR_EVENT\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"WOW_BEACON_EVENT\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"WOW_CLIENT_KICKOUT_EVENT\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to set wow wakeups on vdev %i: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to add pattern %i to vdev %i: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"failed to enable wakeup event %s on vdev %i: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid number of scan plans %d !!\00", [61 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to issue wow enable: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"timed out while waiting for suspend completion\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to send wow wakeup indication: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"timed out while waiting for wow wakeup completion\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to clean nlo settings on vdev %i: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@switch.table.ath10k_wow_op_suspend = internal constant { [24 x ptr], [32 x i8] } { [24 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], [32 x i8] zeroinitializer }, align 32
@switch.table.ath10k_wow_cleanup = internal constant { [24 x ptr], [32 x i8] } { [24 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.47 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 504, i32 6 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 512, i32 19 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 519, i32 19 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 528, i32 19 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 534, i32 19 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 578, i32 19 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 584, i32 19 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 588, i32 19 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 602, i32 20 }
@___asan_gen_.75 = private unnamed_addr constant [22 x i8] c"ath10k_wowlan_support\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 16, i32 42 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 60, i32 20 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 32, i32 20 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 41, i32 20 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 6999, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 7000, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 7001, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 7002, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 7003, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 7004, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 7005, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 7006, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 7007, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 7008, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 7009, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 7010, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 7011, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 7012, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 7013, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 7014, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 7015, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 7016, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 7017, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 7018, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 7019, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 7020, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 7021, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [41 x i8] c"../drivers/net/wireless/ath/ath10k/wmi.h\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 7022, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 395, i32 20 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 360, i32 20 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 375, i32 20 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 246, i32 19 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 459, i32 19 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 465, i32 19 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 482, i32 19 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 489, i32 19 }
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.184 = private constant [41 x i8] c"../drivers/net/wireless/ath/ath10k/wow.c\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 440, i32 20 }
@___asan_gen_.186 = private unnamed_addr constant [35 x i8] c"switch.table.ath10k_wow_op_suspend\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [32 x i8] c"switch.table.ath10k_wow_cleanup\00", align 1
@llvm.compiler.used = appending global [48 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ath10k_wowlan_support, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @switch.table.ath10k_wow_op_suspend, ptr @switch.table.ath10k_wow_cleanup], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_wowlan_support to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath10k_wow_op_suspend to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath10k_wow_cleanup to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_wow_op_suspend(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %wowlan) local_unnamed_addr #0 align 64 {
entry:
  %hdr_8023_pattern.i.i.i = alloca [14 x i8], align 1
  %hdr_8023_bit_mask.i.i.i = alloca [14 x i8], align 1
  %hdr_80211_pattern.i.i.i = alloca [32 x i8], align 1
  %hdr_80211_bit_mask.i.i.i = alloca [32 x i8], align 1
  %wow_mask.i.i = alloca i32, align 4
  %bitmask.i.i = alloca [148 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #6
  %running_fw = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %running_fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %running_fw, align 64
  %fw_features = getelementptr inbounds %struct.ath10k_fw_components, ptr %3, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %fw_features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %fw_features, align 4
  %6 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !103

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 505, i32 noundef 9, ptr noundef null) #6
  br label %exit

if.end23:                                         ; preds = %entry
  %call24 = tail call fastcc i32 @ath10k_wow_cleanup(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %call24) #6
  br label %exit

if.end27:                                         ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %7 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end27.if.end.i_crit_edge, label %land.rhs.i

if.end27.if.end.i_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end27
  %dep_map.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !103

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 390, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end27.if.end.i_crit_edge
  %arvifs.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 83
  %8 = ptrtoint ptr %arvifs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %arvif.065.i = load ptr, ptr %arvifs.i, align 4
  %cmp26.not66.i = icmp eq ptr %arvif.065.i, %arvifs.i
  br i1 %cmp26.not66.i, label %if.end.i.if.end31_crit_edge, label %for.body.lr.ph.i

if.end.i.if.end31_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %patterns2.i.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 7
  %disconnect.i.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 1
  %magic_pkt.i.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 2
  %nd_config.i.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 10
  %n_patterns.i.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 9
  %addr1.i.i.i = getelementptr inbounds %struct.ieee80211_hdr_3addr, ptr %hdr_80211_pattern.i.i.i, i32 0, i32 2
  %addr118.i.i.i = getelementptr inbounds %struct.ieee80211_hdr_3addr, ptr %hdr_80211_bit_mask.i.i.i, i32 0, i32 2
  %addr3.i.i.i = getelementptr inbounds %struct.ieee80211_hdr_3addr, ptr %hdr_80211_pattern.i.i.i, i32 0, i32 4
  %h_source.i.i.i = getelementptr inbounds %struct.ethhdr, ptr %hdr_8023_pattern.i.i.i, i32 0, i32 1
  %addr324.i.i.i = getelementptr inbounds %struct.ieee80211_hdr_3addr, ptr %hdr_80211_bit_mask.i.i.i, i32 0, i32 4
  %h_source26.i.i.i = getelementptr inbounds %struct.ethhdr, ptr %hdr_8023_bit_mask.i.i.i, i32 0, i32 1
  %snap_type.i.i.i = getelementptr inbounds i8, ptr %hdr_80211_pattern.i.i.i, i32 30
  %h_proto.i.i.i = getelementptr inbounds %struct.ethhdr, ptr %hdr_8023_pattern.i.i.i, i32 0, i32 2
  %snap_type28.i.i.i = getelementptr inbounds i8, ptr %hdr_80211_bit_mask.i.i.i, i32 30
  %h_proto29.i.i.i = getelementptr inbounds %struct.ethhdr, ptr %hdr_8023_bit_mask.i.i.i, i32 0, i32 2
  %add.ptr94.i.i.i = getelementptr inbounds i8, ptr %bitmask.i.i, i32 14
  br label %for.body.i

for.body.i:                                       ; preds = %ath10k_vif_wow_set_wakeups.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %arvif.067.i = phi ptr [ %arvif.065.i, %for.body.lr.ph.i ], [ %arvif.0.i, %ath10k_vif_wow_set_wakeups.exit.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wow_mask.i.i)
  %9 = ptrtoint ptr %wow_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %wow_mask.i.i, align 4
  %ar1.i.i = getelementptr inbounds %struct.ath10k_vif, ptr %arvif.067.i, i32 0, i32 12
  %10 = ptrtoint ptr %ar1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ar1.i.i, align 4
  %12 = ptrtoint ptr %patterns2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %patterns2.i.i, align 4
  %vdev_type.i.i = getelementptr inbounds %struct.ath10k_vif, ptr %arvif.067.i, i32 0, i32 3
  %14 = ptrtoint ptr %vdev_type.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vdev_type.i.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %for.body.i.sw.epilog.i.i_crit_edge [
    i32 3, label %sw.bb.i.i
    i32 1, label %for.body.i.sw.bb3.i.i_crit_edge
    i32 2, label %sw.bb4.i.i
  ]

for.body.i.sw.bb3.i.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i.i

for.body.i.sw.epilog.i.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %wow_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4194304, ptr %wow_mask.i.i, align 4
  br label %sw.bb3.i.i

sw.bb3.i.i:                                       ; preds = %sw.bb.i.i, %for.body.i.sw.bb3.i.i_crit_edge
  %18 = ptrtoint ptr %wow_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %wow_mask.i.i.0.wow_mask.i.i.0.wow_mask.i.0.wow_mask.i.0.wow_mask.0.277.i.i = load i32, ptr %wow_mask.i.i, align 4
  %or.i182.i.i = or i32 %wow_mask.i.i.0.wow_mask.i.i.0.wow_mask.i.0.wow_mask.i.0.wow_mask.0.277.i.i, 63748
  store i32 %or.i182.i.i, ptr %wow_mask.i.i, align 4
  br label %sw.epilog.i.i

sw.bb4.i.i:                                       ; preds = %for.body.i
  %19 = ptrtoint ptr %disconnect.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %disconnect.i.i, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i.i, label %sw.bb4.i.i.if.end.i.i_crit_edge, label %if.then.i.i

sw.bb4.i.i.if.end.i.i_crit_edge:                  ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %wow_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1285, ptr %wow_mask.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %sw.bb4.i.i.if.end.i.i_crit_edge
  %22 = ptrtoint ptr %magic_pkt.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %magic_pkt.i.i, align 2, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool5.not.i.i = icmp eq i8 %23, 0
  br i1 %tobool5.not.i.i, label %if.end.i.i.if.end7.i.i_crit_edge, label %if.then6.i.i

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %wow_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %wow_mask.i.i.0.wow_mask.i.i.0.wow_mask.i.0.wow_mask.i.0.wow_mask.0.278.i.i = load i32, ptr %wow_mask.i.i, align 4
  %or.i187.i.i = or i32 %wow_mask.i.i.0.wow_mask.i.i.0.wow_mask.i.0.wow_mask.i.0.wow_mask.0.278.i.i, 8
  store i32 %or.i187.i.i, ptr %wow_mask.i.i, align 4
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then6.i.i, %if.end.i.i.if.end7.i.i_crit_edge
  %25 = ptrtoint ptr %nd_config.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nd_config.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %26, null
  br i1 %tobool8.not.i.i, label %if.end7.i.i.sw.epilog.i.i_crit_edge, label %if.then9.i.i

if.end7.i.i.sw.epilog.i.i_crit_edge:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i

if.then9.i.i:                                     ; preds = %if.end7.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 2817) #9
  %tobool11.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool11.not.i.i, label %if.then9.i.i.if.then30_crit_edge, label %if.end13.i.i

if.then9.i.i.if.then30_crit_edge:                 ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

if.end13.i.i:                                     ; preds = %if.then9.i.i
  %nlo_enabled.i.i = getelementptr inbounds %struct.ath10k, ptr %11, i32 0, i32 32
  %28 = ptrtoint ptr %nlo_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %nlo_enabled.i.i, align 2
  %vdev_id.i.i = getelementptr inbounds %struct.ath10k_vif, ptr %arvif.067.i, i32 0, i32 1
  %29 = ptrtoint ptr %vdev_id.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vdev_id.i.i, align 4
  %31 = ptrtoint ptr %nd_config.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nd_config.i.i, align 4
  %33 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %call7.i.i.i.i, align 8
  %conv.i.i.i = trunc i32 %30 to i8
  %vdev_id1.i.i.i = getelementptr inbounds %struct.wmi_pno_scan_req, ptr %call7.i.i.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %vdev_id1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv.i.i.i, ptr %vdev_id1.i.i.i, align 1
  %n_match_sets.i.i.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %32, i32 0, i32 9
  %35 = ptrtoint ptr %n_match_sets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %n_match_sets.i.i.i, align 8
  %conv2.i.i.i = trunc i32 %36 to i8
  %uc_networks_count.i.i.i = getelementptr inbounds %struct.wmi_pno_scan_req, ptr %call7.i.i.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %uc_networks_count.i.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv2.i.i.i, ptr %uc_networks_count.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv2.i.i.i)
  %tobool.not.i.i.i = icmp eq i8 %conv2.i.i.i, 0
  %conv5.i.i.i = and i32 %36, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %conv5.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %conv5.i.i.i, 16
  %or.cond.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %or.cond.i.i.i, label %if.end13.i.i.if.end20.i.i_crit_edge, label %if.end.i.i.i

if.end13.i.i.if.end20.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i.i

if.end.i.i.i:                                     ; preds = %if.end13.i.i
  %n_channels.i.i.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %32, i32 0, i32 3
  %38 = ptrtoint ptr %n_channels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_channels.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %39)
  %cmp7.i.i.i = icmp ugt i32 %39, 60
  br i1 %cmp7.i.i.i, label %if.end.i.i.i.if.end20.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end.i.i.i.if.end20.i.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end.i.i.i
  %match_sets.i.i.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %32, i32 0, i32 8
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc68.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.0252.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc69.i.i.i, %for.inc68.i.i.i.for.body.i.i.i_crit_edge ]
  %40 = ptrtoint ptr %match_sets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %match_sets.i.i.i, align 4
  %ssid_len15.i.i.i = getelementptr %struct.cfg80211_match_set, ptr %41, i32 %i.0252.i.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %ssid_len15.i.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ssid_len15.i.i.i, align 4
  %44 = add i8 %43, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %44)
  %45 = icmp ult i8 %44, -32
  br i1 %45, label %for.body.i.i.i.if.end20.i.i_crit_edge, label %if.end24.i.i.i

for.body.i.i.i.if.end20.i.i_crit_edge:            ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i.i

if.end24.i.i.i:                                   ; preds = %for.body.i.i.i
  %conv16.i.i.i = zext i8 %43 to i32
  %46 = shl nuw nsw i32 %conv16.i.i.i, 24
  %arrayidx26.i.i.i = getelementptr %struct.wmi_pno_scan_req, ptr %call7.i.i.i.i, i32 0, i32 3, i32 %i.0252.i.i.i
  %47 = ptrtoint ptr %arrayidx26.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %46, ptr %arrayidx26.i.i.i, align 1
  %ssid32.i.i.i = getelementptr inbounds %struct.wmi_ssid, ptr %arrayidx26.i.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %match_sets.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %match_sets.i.i.i, align 4
  %arrayidx34.i.i.i = getelementptr %struct.cfg80211_match_set, ptr %49, i32 %i.0252.i.i.i
  %ssid_len41.i.i.i = getelementptr inbounds %struct.cfg80211_ssid, ptr %arrayidx34.i.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %ssid_len41.i.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ssid_len41.i.i.i, align 4
  %conv42.i.i.i = zext i8 %51 to i32
  %52 = call ptr @memcpy(ptr %ssid32.i.i.i, ptr %arrayidx34.i.i.i, i32 %conv42.i.i.i)
  %authentication.i.i.i = getelementptr %struct.wmi_pno_scan_req, ptr %call7.i.i.i.i, i32 0, i32 3, i32 %i.0252.i.i.i, i32 1
  %53 = ptrtoint ptr %authentication.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 0, ptr %authentication.i.i.i, align 1
  %encryption.i.i.i = getelementptr %struct.wmi_pno_scan_req, ptr %call7.i.i.i.i, i32 0, i32 3, i32 %i.0252.i.i.i, i32 2
  %54 = ptrtoint ptr %encryption.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 0, ptr %encryption.i.i.i, align 1
  %bcast_nw_type.i.i.i = getelementptr %struct.wmi_pno_scan_req, ptr %call7.i.i.i.i, i32 0, i32 3, i32 %i.0252.i.i.i, i32 3
  %55 = ptrtoint ptr %bcast_nw_type.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 0, ptr %bcast_nw_type.i.i.i, align 1
  %56 = ptrtoint ptr %n_channels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %n_channels.i.i.i, align 8
  %conv50.i.i.i = trunc i32 %57 to i8
  %channel_count.i.i.i = getelementptr %struct.wmi_pno_scan_req, ptr %call7.i.i.i.i, i32 0, i32 3, i32 %i.0252.i.i.i, i32 4
  %58 = ptrtoint ptr %channel_count.i.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv50.i.i.i, ptr %channel_count.i.i.i, align 1
  %59 = load ptr, ptr %match_sets.i.i.i, align 4
  %rssi_thold.i.i.i = getelementptr %struct.cfg80211_match_set, ptr %59, i32 %i.0252.i.i.i, i32 2
  %60 = ptrtoint ptr %rssi_thold.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rssi_thold.i.i.i, align 4
  %rssi_threshold.i.i.i = getelementptr %struct.wmi_pno_scan_req, ptr %call7.i.i.i.i, i32 0, i32 3, i32 %i.0252.i.i.i, i32 6
  %62 = ptrtoint ptr %rssi_threshold.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %61, ptr %rssi_threshold.i.i.i, align 1
  %63 = load i32, ptr %n_channels.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp59248.not.i.i.i = icmp eq i32 %63, 0
  br i1 %cmp59248.not.i.i.i, label %if.end24.i.i.i.for.inc68.i.i.i_crit_edge, label %if.end24.i.i.i.for.body61.i.i.i_crit_edge

if.end24.i.i.i.for.body61.i.i.i_crit_edge:        ; preds = %if.end24.i.i.i
  br label %for.body61.i.i.i

if.end24.i.i.i.for.inc68.i.i.i_crit_edge:         ; preds = %if.end24.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc68.i.i.i

for.body61.i.i.i:                                 ; preds = %for.body61.i.i.i.for.body61.i.i.i_crit_edge, %if.end24.i.i.i.for.body61.i.i.i_crit_edge
  %j.0249.i.i.i = phi i32 [ %inc.i.i.i, %for.body61.i.i.i.for.body61.i.i.i_crit_edge ], [ 0, %if.end24.i.i.i.for.body61.i.i.i_crit_edge ]
  %arrayidx62.i.i.i = getelementptr %struct.cfg80211_sched_scan_request, ptr %32, i32 0, i32 27, i32 %j.0249.i.i.i
  %64 = ptrtoint ptr %arrayidx62.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx62.i.i.i, align 4
  %center_freq.i.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %center_freq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %center_freq.i.i.i, align 4
  %conv63.i.i.i = trunc i32 %67 to i16
  %arrayidx67.i.i.i = getelementptr %struct.wmi_pno_scan_req, ptr %call7.i.i.i.i, i32 0, i32 3, i32 %i.0252.i.i.i, i32 5, i32 %j.0249.i.i.i
  %68 = ptrtoint ptr %arrayidx67.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 2)
  store i16 %conv63.i.i.i, ptr %arrayidx67.i.i.i, align 1
  %inc.i.i.i = add nuw i32 %j.0249.i.i.i, 1
  %69 = ptrtoint ptr %n_channels.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %n_channels.i.i.i, align 8
  %cmp59.i.i.i = icmp ult i32 %inc.i.i.i, %70
  br i1 %cmp59.i.i.i, label %for.body61.i.i.i.for.body61.i.i.i_crit_edge, label %for.body61.i.i.i.for.inc68.i.i.i_crit_edge

for.body61.i.i.i.for.inc68.i.i.i_crit_edge:       ; preds = %for.body61.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc68.i.i.i

for.body61.i.i.i.for.body61.i.i.i_crit_edge:      ; preds = %for.body61.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body61.i.i.i

for.inc68.i.i.i:                                  ; preds = %for.body61.i.i.i.for.inc68.i.i.i_crit_edge, %if.end24.i.i.i.for.inc68.i.i.i_crit_edge
  %inc69.i.i.i = add nuw nsw i32 %i.0252.i.i.i, 1
  %71 = ptrtoint ptr %uc_networks_count.i.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %uc_networks_count.i.i.i, align 2
  %conv12.i.i.i = zext i8 %72 to i32
  %cmp13.i.i.i = icmp ult i32 %inc69.i.i.i, %conv12.i.i.i
  br i1 %cmp13.i.i.i, label %for.inc68.i.i.i.for.body.i.i.i_crit_edge, label %for.end70.i.i.i

for.inc68.i.i.i.for.body.i.i.i_crit_edge:         ; preds = %for.inc68.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

for.end70.i.i.i:                                  ; preds = %for.inc68.i.i.i
  %n_ssids.i.i.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %32, i32 0, i32 2
  %73 = ptrtoint ptr %n_ssids.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %n_ssids.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp71.i.i.i = icmp eq i32 %74, 0
  %spec.select.i.i.i = zext i1 %cmp71.i.i.i to i8
  %75 = getelementptr inbounds %struct.wmi_pno_scan_req, ptr %call7.i.i.i.i, i32 0, i32 7
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %spec.select.i.i.i, ptr %75, align 4
  %77 = ptrtoint ptr %n_ssids.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %n_ssids.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp78257.i.i.i = icmp sgt i32 %78, 0
  br i1 %cmp78257.i.i.i, label %while.cond.preheader.lr.ph.i.i.i, label %for.end70.i.i.i.for.end117.i.i.i_crit_edge

for.end70.i.i.i.for.end117.i.i.i_crit_edge:       ; preds = %for.end70.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end117.i.i.i

while.cond.preheader.lr.ph.i.i.i:                 ; preds = %for.end70.i.i.i
  %ssids.i.i.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %32, i32 0, i32 1
  br label %while.cond.preheader.i.i.i

while.cond.preheader.i.i.i:                       ; preds = %for.inc115.i.i.i.while.cond.preheader.i.i.i_crit_edge, %while.cond.preheader.lr.ph.i.i.i
  %i.1258.i.i.i = phi i32 [ 0, %while.cond.preheader.lr.ph.i.i.i ], [ %inc116.i.i.i, %for.inc115.i.i.i.while.cond.preheader.i.i.i_crit_edge ]
  %79 = ptrtoint ptr %uc_networks_count.i.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %uc_networks_count.i.i.i, align 2
  %conv82.i.i.i = zext i8 %80 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %cmp83254.not.i.i.i = icmp eq i8 %80, 0
  br i1 %cmp83254.not.i.i.i, label %while.cond.preheader.i.i.i.for.inc115.i.i.i_crit_edge, label %while.body.lr.ph.i.i.i

while.cond.preheader.i.i.i.for.inc115.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc115.i.i.i

while.body.lr.ph.i.i.i:                           ; preds = %while.cond.preheader.i.i.i
  %81 = ptrtoint ptr %ssids.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ssids.i.i.i, align 8
  %ssid_len90.i.i.i = getelementptr %struct.cfg80211_ssid, ptr %82, i32 %i.1258.i.i.i, i32 1
  %83 = ptrtoint ptr %ssid_len90.i.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %ssid_len90.i.i.i, align 1
  %conv91.i.i.i = zext i8 %84 to i32
  %arrayidx89.i.i.i = getelementptr %struct.cfg80211_ssid, ptr %82, i32 %i.1258.i.i.i
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end113.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %j.1255.i.i.i = phi i32 [ 0, %while.body.lr.ph.i.i.i ], [ %inc114.i.i.i, %if.end113.i.i.i.while.body.i.i.i_crit_edge ]
  %arrayidx86.i.i.i = getelementptr %struct.wmi_pno_scan_req, ptr %call7.i.i.i.i, i32 0, i32 3, i32 %j.1255.i.i.i
  %85 = ptrtoint ptr %arrayidx86.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %arrayidx86.i.i.i, align 1
  %87 = call i32 @llvm.bswap.i32(i32 %86) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %conv91.i.i.i)
  %cmp92.i.i.i = icmp eq i32 %87, %conv91.i.i.i
  br i1 %cmp92.i.i.i, label %land.lhs.true.i.i.i, label %while.body.i.i.i.if.end113.i.i.i_crit_edge

while.body.i.i.i.if.end113.i.i.i_crit_edge:       ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113.i.i.i

land.lhs.true.i.i.i:                              ; preds = %while.body.i.i.i
  %ssid97.i.i.i = getelementptr inbounds %struct.wmi_ssid, ptr %arrayidx86.i.i.i, i32 0, i32 1
  %bcmp.i.i.i = call i32 @bcmp(ptr %ssid97.i.i.i, ptr %arrayidx89.i.i.i, i32 %conv91.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %cmp107.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %cmp107.i.i.i, label %if.then109.i.i.i, label %land.lhs.true.i.i.i.if.end113.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end113.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113.i.i.i

if.then109.i.i.i:                                 ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %bcast_nw_type112.i.i.i = getelementptr %struct.wmi_pno_scan_req, ptr %call7.i.i.i.i, i32 0, i32 3, i32 %j.1255.i.i.i, i32 3
  %88 = ptrtoint ptr %bcast_nw_type112.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 2, ptr %bcast_nw_type112.i.i.i, align 1
  br label %for.inc115.i.i.i

if.end113.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.if.end113.i.i.i_crit_edge, %while.body.i.i.i.if.end113.i.i.i_crit_edge
  %inc114.i.i.i = add nuw nsw i32 %j.1255.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc114.i.i.i, %conv82.i.i.i
  br i1 %exitcond.not.i.i.i, label %if.end113.i.i.i.for.inc115.i.i.i_crit_edge, label %if.end113.i.i.i.while.body.i.i.i_crit_edge

if.end113.i.i.i.while.body.i.i.i_crit_edge:       ; preds = %if.end113.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i.i

if.end113.i.i.i.for.inc115.i.i.i_crit_edge:       ; preds = %if.end113.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc115.i.i.i

for.inc115.i.i.i:                                 ; preds = %if.end113.i.i.i.for.inc115.i.i.i_crit_edge, %if.then109.i.i.i, %while.cond.preheader.i.i.i.for.inc115.i.i.i_crit_edge
  %inc116.i.i.i = add nuw nsw i32 %i.1258.i.i.i, 1
  %89 = ptrtoint ptr %n_ssids.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %n_ssids.i.i.i, align 4
  %cmp78.i.i.i = icmp slt i32 %inc116.i.i.i, %90
  br i1 %cmp78.i.i.i, label %for.inc115.i.i.i.while.cond.preheader.i.i.i_crit_edge, label %for.inc115.i.i.i.for.end117.i.i.i_crit_edge

for.inc115.i.i.i.for.end117.i.i.i_crit_edge:      ; preds = %for.inc115.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end117.i.i.i

for.inc115.i.i.i.while.cond.preheader.i.i.i_crit_edge: ; preds = %for.inc115.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.preheader.i.i.i

for.end117.i.i.i:                                 ; preds = %for.inc115.i.i.i.for.end117.i.i.i_crit_edge, %for.end70.i.i.i.for.end117.i.i.i_crit_edge
  %n_scan_plans.i.i.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %32, i32 0, i32 13
  %91 = ptrtoint ptr %n_scan_plans.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %n_scan_plans.i.i.i, align 8
  %93 = zext i32 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %92, label %if.else145.i.i.i [
    i32 2, label %if.then120.i.i.i
    i32 1, label %if.then133.i.i.i
  ]

if.then120.i.i.i:                                 ; preds = %for.end117.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %scan_plans.i.i.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %32, i32 0, i32 12
  %94 = ptrtoint ptr %scan_plans.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %scan_plans.i.i.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 4
  %mul.i.i.i = mul i32 %97, 1000
  %fast_scan_period.i.i.i = getelementptr inbounds %struct.wmi_pno_scan_req, ptr %call7.i.i.i.i, i32 0, i32 4
  %98 = ptrtoint ptr %fast_scan_period.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %98, i32 4)
  store i32 %mul.i.i.i, ptr %fast_scan_period.i.i.i, align 1
  %99 = load ptr, ptr %scan_plans.i.i.i, align 4
  %iterations.i.i.i = getelementptr inbounds %struct.cfg80211_sched_scan_plan, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %iterations.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %iterations.i.i.i, align 4
  %conv124.i.i.i = trunc i32 %101 to i8
  %fast_scan_max_cycles.i.i.i = getelementptr inbounds %struct.wmi_pno_scan_req, ptr %call7.i.i.i.i, i32 0, i32 6
  %102 = ptrtoint ptr %fast_scan_max_cycles.i.i.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv124.i.i.i, ptr %fast_scan_max_cycles.i.i.i, align 1
  %103 = load ptr, ptr %scan_plans.i.i.i, align 4
  %arrayidx126.i.i.i = getelementptr %struct.cfg80211_sched_scan_plan, ptr %103, i32 1
  %104 = ptrtoint ptr %arrayidx126.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx126.i.i.i, align 4
  %mul128.i.i.i = mul i32 %105, 1000
  %slow_scan_period.i.i.i = getelementptr inbounds %struct.wmi_pno_scan_req, ptr %call7.i.i.i.i, i32 0, i32 5
  %106 = ptrtoint ptr %slow_scan_period.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %106, i32 4)
  store i32 %mul128.i.i.i, ptr %slow_scan_period.i.i.i, align 1
  br label %if.end148.i.i.i

if.then133.i.i.i:                                 ; preds = %for.end117.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %scan_plans134.i.i.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %32, i32 0, i32 12
  %107 = ptrtoint ptr %scan_plans134.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %scan_plans134.i.i.i, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %108, align 4
  %mul137.i.i.i = mul i32 %110, 1000
  %fast_scan_period138.i.i.i = getelementptr inbounds %struct.wmi_pno_scan_req, ptr %call7.i.i.i.i, i32 0, i32 4
  %111 = ptrtoint ptr %fast_scan_period138.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %111, i32 4)
  store i32 %mul137.i.i.i, ptr %fast_scan_period138.i.i.i, align 1
  %fast_scan_max_cycles139.i.i.i = getelementptr inbounds %struct.wmi_pno_scan_req, ptr %call7.i.i.i.i, i32 0, i32 6
  %112 = ptrtoint ptr %fast_scan_max_cycles139.i.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 1, ptr %fast_scan_max_cycles139.i.i.i, align 1
  %113 = load ptr, ptr %scan_plans134.i.i.i, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %113, align 4
  %mul143.i.i.i = mul i32 %115, 1000
  %slow_scan_period144.i.i.i = getelementptr inbounds %struct.wmi_pno_scan_req, ptr %call7.i.i.i.i, i32 0, i32 5
  %116 = ptrtoint ptr %slow_scan_period144.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %116, i32 4)
  store i32 %mul143.i.i.i, ptr %slow_scan_period144.i.i.i, align 1
  br label %if.end148.i.i.i

if.else145.i.i.i:                                 ; preds = %for.end117.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %11, ptr noundef nonnull @.str.40, i32 noundef %92) #6
  br label %if.end148.i.i.i

if.end148.i.i.i:                                  ; preds = %if.else145.i.i.i, %if.then133.i.i.i, %if.then120.i.i.i
  %flags.i.i.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %32, i32 0, i32 7
  %117 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %flags.i.i.i, align 8
  %and.i190.i.i = and i32 %118, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i190.i.i)
  %tobool149.not.i.i.i = icmp eq i32 %and.i190.i.i, 0
  br i1 %tobool149.not.i.i.i, label %if.end148.i.i.i.if.then17.i.i_crit_edge, label %if.then150.i.i.i

if.end148.i.i.i.if.then17.i.i_crit_edge:          ; preds = %if.end148.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17.i.i

if.then150.i.i.i:                                 ; preds = %if.end148.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %enable_pno_scan_randomization.i.i.i = getelementptr inbounds %struct.wmi_pno_scan_req, ptr %call7.i.i.i.i, i32 0, i32 13
  %119 = ptrtoint ptr %enable_pno_scan_randomization.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %119, i32 4)
  store i32 1, ptr %enable_pno_scan_randomization.i.i.i, align 1
  %mac_addr.i.i.i = getelementptr inbounds %struct.wmi_pno_scan_req, ptr %call7.i.i.i.i, i32 0, i32 14
  %mac_addr152.i.i.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %32, i32 0, i32 14
  %120 = call ptr @memcpy(ptr %mac_addr.i.i.i, ptr %mac_addr152.i.i.i, i32 6)
  %mac_addr_mask.i.i.i = getelementptr inbounds %struct.wmi_pno_scan_req, ptr %call7.i.i.i.i, i32 0, i32 15
  %mac_addr_mask155.i.i.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %32, i32 0, i32 15
  %121 = call ptr @memcpy(ptr %mac_addr_mask.i.i.i, ptr %mac_addr_mask155.i.i.i, i32 6)
  br label %if.then17.i.i

if.then17.i.i:                                    ; preds = %if.then150.i.i.i, %if.end148.i.i.i.if.then17.i.i_crit_edge
  %delay.i.i.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %32, i32 0, i32 11
  %122 = ptrtoint ptr %delay.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %delay.i.i.i, align 8
  %delay_start_time.i.i.i = getelementptr inbounds %struct.wmi_pno_scan_req, ptr %call7.i.i.i.i, i32 0, i32 8
  %124 = ptrtoint ptr %delay_start_time.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %124, i32 4)
  store i32 %123, ptr %delay_start_time.i.i.i, align 1
  %active_max_time.i.i.i = getelementptr inbounds %struct.wmi_pno_scan_req, ptr %call7.i.i.i.i, i32 0, i32 10
  %125 = ptrtoint ptr %active_max_time.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %125, i32 4)
  store i32 40, ptr %active_max_time.i.i.i, align 1
  %passive_max_time.i.i.i = getelementptr inbounds %struct.wmi_pno_scan_req, ptr %call7.i.i.i.i, i32 0, i32 12
  %126 = ptrtoint ptr %passive_max_time.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %126, i32 4)
  store i32 110, ptr %passive_max_time.i.i.i, align 1
  %ops.i.i.i = getelementptr inbounds %struct.ath10k, ptr %11, i32 0, i32 41, i32 11
  %127 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ops.i.i.i, align 4
  %gen_wow_config_pno.i.i.i = getelementptr inbounds %struct.wmi_ops, ptr %128, i32 0, i32 87
  %129 = ptrtoint ptr %gen_wow_config_pno.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %gen_wow_config_pno.i.i.i, align 4
  %tobool.not.i191.i.i = icmp eq ptr %130, null
  br i1 %tobool.not.i191.i.i, label %if.then17.i.i.ath10k_wmi_wow_config_pno.exit.i.i_crit_edge, label %if.end.i192.i.i

if.then17.i.i.ath10k_wmi_wow_config_pno.exit.i.i_crit_edge: ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath10k_wmi_wow_config_pno.exit.i.i

if.end.i192.i.i:                                  ; preds = %if.then17.i.i
  %131 = ptrtoint ptr %vdev_id.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %vdev_id.i.i, align 4
  %call.i.i.i = call ptr %130(ptr noundef %11, i32 noundef %132, ptr noundef %call7.i.i.i.i) #6
  %cmp.i.i.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %if.end.i192.i.i.ath10k_wmi_wow_config_pno.exit.i.i_crit_edge, label %if.end7.i.i.i

if.end.i192.i.i.ath10k_wmi_wow_config_pno.exit.i.i_crit_edge: ; preds = %if.end.i192.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath10k_wmi_wow_config_pno.exit.i.i

if.end7.i.i.i:                                    ; preds = %if.end.i192.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %cmd.i.i.i = getelementptr inbounds %struct.ath10k, ptr %11, i32 0, i32 41, i32 7
  %133 = ptrtoint ptr %cmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %cmd.i.i.i, align 4
  %network_list_offload_config_cmdid.i.i.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %134, i32 0, i32 92
  %135 = ptrtoint ptr %network_list_offload_config_cmdid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %network_list_offload_config_cmdid.i.i.i, align 4
  %call9.i.i.i = call i32 @ath10k_wmi_cmd_send(ptr noundef %11, ptr noundef %call.i.i.i, i32 noundef %136) #6
  br label %ath10k_wmi_wow_config_pno.exit.i.i

ath10k_wmi_wow_config_pno.exit.i.i:               ; preds = %if.end7.i.i.i, %if.end.i192.i.i.ath10k_wmi_wow_config_pno.exit.i.i_crit_edge, %if.then17.i.i.ath10k_wmi_wow_config_pno.exit.i.i_crit_edge
  %137 = ptrtoint ptr %wow_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %wow_mask.i.i.0.wow_mask.i.i.0.wow_mask.i.0.wow_mask.i.0.wow_mask.0.279.i.i = load i32, ptr %wow_mask.i.i, align 4
  %or.i188.i.i = or i32 %wow_mask.i.i.0.wow_mask.i.i.0.wow_mask.i.0.wow_mask.i.0.wow_mask.0.279.i.i, 128
  store i32 %or.i188.i.i, ptr %wow_mask.i.i, align 4
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %ath10k_wmi_wow_config_pno.exit.i.i, %for.body.i.i.i.if.end20.i.i_crit_edge, %if.end.i.i.i.if.end20.i.i_crit_edge, %if.end13.i.i.if.end20.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #6
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %if.end20.i.i, %if.end7.i.i.sw.epilog.i.i_crit_edge, %sw.bb3.i.i, %for.body.i.sw.epilog.i.i_crit_edge
  %138 = ptrtoint ptr %n_patterns.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %n_patterns.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp266.i.i = icmp sgt i32 %139, 0
  br i1 %cmp266.i.i, label %for.body.lr.ph.i.i, label %sw.epilog.i.i.for.cond101.preheader.i.i_crit_edge

sw.epilog.i.i.for.cond101.preheader.i.i_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond101.preheader.i.i

for.body.lr.ph.i.i:                               ; preds = %sw.epilog.i.i
  %rx_decap_mode.i.i = getelementptr inbounds %struct.ath10k, ptr %11, i32 0, i32 41, i32 16
  %vdev_id79.i.i = getelementptr inbounds %struct.ath10k_vif, ptr %arvif.067.i, i32 0, i32 1
  %ops.i195.i.i = getelementptr inbounds %struct.ath10k, ptr %11, i32 0, i32 41, i32 11
  %cmd.i201.i.i = getelementptr inbounds %struct.ath10k, ptr %11, i32 0, i32 41, i32 7
  br label %for.body.i.i

for.cond101.preheader.i.i:                        ; preds = %for.inc98.i.i.for.cond101.preheader.i.i_crit_edge, %sw.epilog.i.i.for.cond101.preheader.i.i_crit_edge
  %vdev_id109.i.i = getelementptr inbounds %struct.ath10k_vif, ptr %arvif.067.i, i32 0, i32 1
  %ops.i205.i.i = getelementptr inbounds %struct.ath10k, ptr %11, i32 0, i32 41, i32 11
  %cmd.i211.i.i = getelementptr inbounds %struct.ath10k, ptr %11, i32 0, i32 41, i32 7
  br label %for.body104.i.i

for.body.i.i:                                     ; preds = %for.inc98.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %pattern_id.0270.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %pattern_id.1.i.i, %for.inc98.i.i.for.body.i.i_crit_edge ]
  %i.0267.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc99.i.i, %for.inc98.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 148, ptr nonnull %bitmask.i.i) #6
  %140 = call ptr @memset(ptr %bitmask.i.i, i32 0, i32 148)
  %arrayidx.i.i = getelementptr %struct.cfg80211_pkt_pattern, ptr %13, i32 %i.0267.i.i
  %old_pattern.sroa.8.0.arrayidx.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 4
  %141 = ptrtoint ptr %old_pattern.sroa.8.0.arrayidx.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %old_pattern.sroa.8.0.copyload.i.i = load ptr, ptr %old_pattern.sroa.8.0.arrayidx.sroa_idx.i.i, align 4
  %old_pattern.sroa.11.0.arrayidx.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 8
  %142 = ptrtoint ptr %old_pattern.sroa.11.0.arrayidx.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %old_pattern.sroa.11.0.copyload.i.i = load i32, ptr %old_pattern.sroa.11.0.arrayidx.sroa_idx.i.i, align 4
  %old_pattern.sroa.13.0.arrayidx.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 12
  %143 = ptrtoint ptr %old_pattern.sroa.13.0.arrayidx.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %old_pattern.sroa.13.0.copyload.i.i = load i32, ptr %old_pattern.sroa.13.0.arrayidx.sroa_idx.i.i, align 4
  %pattern_len.i.i = getelementptr %struct.cfg80211_pkt_pattern, ptr %13, i32 %i.0267.i.i, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 148, i32 %old_pattern.sroa.11.0.copyload.i.i)
  %cmp25.i.i = icmp sgt i32 %old_pattern.sroa.11.0.copyload.i.i, 148
  br i1 %cmp25.i.i, label %for.body.i.i.for.inc98.i.i_crit_edge, label %for.cond28.preheader.i.i

for.body.i.i.for.inc98.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc98.i.i

for.cond28.preheader.i.i:                         ; preds = %for.body.i.i
  %144 = ptrtoint ptr %pattern_len.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %pattern_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp31263.i.i = icmp sgt i32 %145, 0
  br i1 %cmp31263.i.i, label %for.cond28.preheader.i.i.for.body32.i.i_crit_edge, label %for.cond28.preheader.i.i.for.end.i.i_crit_edge

for.cond28.preheader.i.i.for.end.i.i_crit_edge:   ; preds = %for.cond28.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.cond28.preheader.i.i.for.body32.i.i_crit_edge: ; preds = %for.cond28.preheader.i.i
  br label %for.body32.i.i

for.body32.i.i:                                   ; preds = %for.inc.i.i.for.body32.i.i_crit_edge, %for.cond28.preheader.i.i.for.body32.i.i_crit_edge
  %j.0264.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body32.i.i_crit_edge ], [ 0, %for.cond28.preheader.i.i.for.body32.i.i_crit_edge ]
  %146 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx.i.i, align 4
  %div258.i.i = lshr i32 %j.0264.i.i, 3
  %arrayidx35.i.i = getelementptr i8, ptr %147, i32 %div258.i.i
  %148 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx35.i.i, align 1
  %conv.i.i = zext i8 %149 to i32
  %rem175.i.i = and i32 %j.0264.i.i, 7
  %shl.i.i = shl nuw nsw i32 1, %rem175.i.i
  %and.i.i = and i32 %shl.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool36.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool36.not.i.i, label %for.body32.i.i.for.inc.i.i_crit_edge, label %if.then37.i.i

for.body32.i.i.for.inc.i.i_crit_edge:             ; preds = %for.body32.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then37.i.i:                                    ; preds = %for.body32.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx38.i.i = getelementptr [148 x i8], ptr %bitmask.i.i, i32 0, i32 %j.0264.i.i
  %150 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 -1, ptr %arrayidx38.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then37.i.i, %for.body32.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %j.0264.i.i, 1
  %151 = ptrtoint ptr %pattern_len.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %pattern_len.i.i, align 4
  %cmp31.i.i = icmp slt i32 %inc.i.i, %152
  br i1 %cmp31.i.i, label %for.inc.i.i.for.body32.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.inc.i.i.for.body32.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body32.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.cond28.preheader.i.i.for.end.i.i_crit_edge
  %153 = ptrtoint ptr %rx_decap_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %rx_decap_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %154)
  %cmp42.i.i = icmp eq i32 %154, 1
  br i1 %cmp42.i.i, label %if.then44.i.i, label %for.end.i.i.if.end51.i.i_crit_edge

for.end.i.i.if.end51.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.i.i

if.then44.i.i:                                    ; preds = %for.end.i.i
  %pkt_offset.i.i = getelementptr %struct.cfg80211_pkt_pattern, ptr %13, i32 %i.0267.i.i, i32 3
  %155 = ptrtoint ptr %pkt_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %pkt_offset.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %156)
  %cmp46.i.i = icmp slt i32 %156, 14
  br i1 %cmp46.i.i, label %if.then48.i.i, label %if.else.i.i

if.then48.i.i:                                    ; preds = %if.then44.i.i
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %hdr_8023_pattern.i.i.i) #6
  %157 = call ptr @memset(ptr %hdr_8023_pattern.i.i.i, i32 0, i32 14)
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %hdr_8023_bit_mask.i.i.i) #6
  %158 = call ptr @memset(ptr %hdr_8023_bit_mask.i.i.i, i32 0, i32 14)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %hdr_80211_pattern.i.i.i) #6
  %159 = call ptr @memset(ptr %hdr_80211_pattern.i.i.i, i32 0, i32 30)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %hdr_80211_bit_mask.i.i.i) #6
  %160 = call ptr @memset(ptr %hdr_80211_bit_mask.i.i.i, i32 0, i32 30)
  %add.i.i.i = add i32 %old_pattern.sroa.13.0.copyload.i.i, %old_pattern.sroa.11.0.copyload.i.i
  %add.ptr9.i.i.i = getelementptr i8, ptr %hdr_8023_pattern.i.i.i, i32 %old_pattern.sroa.13.0.copyload.i.i
  %sub.i.i.i = sub i32 14, %old_pattern.sroa.13.0.copyload.i.i
  %161 = call ptr @memcpy(ptr %add.ptr9.i.i.i, ptr %old_pattern.sroa.8.0.copyload.i.i, i32 %sub.i.i.i)
  %add.ptr13.i.i.i = getelementptr i8, ptr %hdr_8023_bit_mask.i.i.i, i32 %old_pattern.sroa.13.0.copyload.i.i
  %162 = call ptr @memcpy(ptr %add.ptr13.i.i.i, ptr %bitmask.i.i, i32 %sub.i.i.i)
  %163 = call ptr @memcpy(ptr %addr1.i.i.i, ptr %hdr_8023_pattern.i.i.i, i32 6)
  %164 = call ptr @memcpy(ptr %addr118.i.i.i, ptr %hdr_8023_bit_mask.i.i.i, i32 6)
  %165 = call ptr @memcpy(ptr %addr3.i.i.i, ptr %h_source.i.i.i, i32 6)
  %166 = call ptr @memcpy(ptr %addr324.i.i.i, ptr %h_source26.i.i.i, i32 6)
  %167 = ptrtoint ptr %h_proto.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %167, i32 2)
  %168 = load i16, ptr %h_proto.i.i.i, align 1
  %169 = ptrtoint ptr %snap_type.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %169, i32 2)
  store i16 %168, ptr %snap_type.i.i.i, align 1
  %170 = ptrtoint ptr %h_proto29.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %170, i32 2)
  %171 = load i16, ptr %h_proto29.i.i.i, align 1
  %172 = ptrtoint ptr %snap_type28.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %172, i32 2)
  store i16 %171, ptr %snap_type28.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %old_pattern.sroa.13.0.copyload.i.i)
  %cmp.i194.i.i = icmp slt i32 %old_pattern.sroa.13.0.copyload.i.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %old_pattern.sroa.13.0.copyload.i.i)
  %cmp35.i.i.i = icmp ult i32 %old_pattern.sroa.13.0.copyload.i.i, 12
  %..i.i.i = select i1 %cmp35.i.i.i, i32 10, i32 18
  %.sink.i.i.i = select i1 %cmp.i194.i.i, i32 4, i32 %..i.i.i
  %sub39.i.i.i = add i32 %.sink.i.i.i, %old_pattern.sroa.13.0.copyload.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %add.i.i.i)
  %cmp48.i.i.i = icmp sgt i32 %add.i.i.i, 14
  br i1 %cmp48.i.i.i, label %if.then81.i.i.i, label %if.else51.i.i.i

if.else51.i.i.i:                                  ; preds = %if.then48.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %add.i.i.i)
  %cmp52.i.i.i = icmp ugt i32 %add.i.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %add.i.i.i)
  %cmp58.i.i.i = icmp ugt i32 %add.i.i.i, 6
  %..i.i = select i1 %cmp58.i.i.i, i32 10, i32 4
  %.sink.i.i = select i1 %cmp52.i.i.i, i32 18, i32 %..i.i
  %add63.i.i.i = add nsw i32 %.sink.i.i, %add.i.i.i
  %sub68.i244.i.i = sub i32 %add63.i.i.i, %sub39.i.i.i
  %add.ptr73.i245.i.i = getelementptr i8, ptr %hdr_80211_pattern.i.i.i, i32 %sub39.i.i.i
  %173 = call ptr @memcpy(ptr %old_pattern.sroa.8.0.copyload.i.i, ptr %add.ptr73.i245.i.i, i32 %sub68.i244.i.i)
  %add.ptr78.i246.i.i = getelementptr i8, ptr %hdr_80211_bit_mask.i.i.i, i32 %sub39.i.i.i
  %174 = call ptr @memcpy(ptr %bitmask.i.i, ptr %add.ptr78.i246.i.i, i32 %sub68.i244.i.i)
  br label %ath10k_wow_convert_8023_to_80211.exit.i.i

if.then81.i.i.i:                                  ; preds = %if.then48.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub68.i.i.i = sub i32 32, %sub39.i.i.i
  %add.ptr73.i.i.i = getelementptr i8, ptr %hdr_80211_pattern.i.i.i, i32 %sub39.i.i.i
  %175 = call ptr @memcpy(ptr %old_pattern.sroa.8.0.copyload.i.i, ptr %add.ptr73.i.i.i, i32 %sub68.i.i.i)
  %add.ptr78.i.i.i = getelementptr i8, ptr %hdr_80211_bit_mask.i.i.i, i32 %sub39.i.i.i
  %176 = call ptr @memcpy(ptr %bitmask.i.i, ptr %add.ptr78.i.i.i, i32 %sub68.i.i.i)
  %add.ptr84.i.i.i = getelementptr i8, ptr %old_pattern.sroa.8.0.copyload.i.i, i32 %sub68.i.i.i
  %add.ptr86.i.i.i = getelementptr i8, ptr %old_pattern.sroa.8.0.copyload.i.i, i32 14
  %idx.neg.i.i.i = sub i32 0, %old_pattern.sroa.13.0.copyload.i.i
  %add.ptr88.i.i.i = getelementptr i8, ptr %add.ptr86.i.i.i, i32 %idx.neg.i.i.i
  %sub89.i.i.i = add nsw i32 %add.i.i.i, -14
  %177 = call ptr @memcpy(ptr %add.ptr84.i.i.i, ptr %add.ptr88.i.i.i, i32 %sub89.i.i.i)
  %add.ptr92.i.i.i = getelementptr i8, ptr %bitmask.i.i, i32 %sub68.i.i.i
  %add.ptr97.i.i.i = getelementptr i8, ptr %add.ptr94.i.i.i, i32 %idx.neg.i.i.i
  %178 = call ptr @memcpy(ptr %add.ptr92.i.i.i, ptr %add.ptr97.i.i.i, i32 %sub89.i.i.i)
  %add101.i.i.i = add i32 %sub68.i.i.i, %sub89.i.i.i
  br label %ath10k_wow_convert_8023_to_80211.exit.i.i

ath10k_wow_convert_8023_to_80211.exit.i.i:        ; preds = %if.then81.i.i.i, %if.else51.i.i.i
  %new_pattern.sroa.13.1.i.i = phi i32 [ %add101.i.i.i, %if.then81.i.i.i ], [ %sub68.i244.i.i, %if.else51.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %hdr_80211_bit_mask.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %hdr_80211_pattern.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %hdr_8023_bit_mask.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %hdr_8023_pattern.i.i.i) #6
  br label %if.end51.i.i

if.else.i.i:                                      ; preds = %if.then44.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i.i = add i32 %old_pattern.sroa.13.0.copyload.i.i, 18
  br label %if.end51.i.i

if.end51.i.i:                                     ; preds = %if.else.i.i, %ath10k_wow_convert_8023_to_80211.exit.i.i, %for.end.i.i.if.end51.i.i_crit_edge
  %new_pattern.sroa.13.2.i.i = phi i32 [ %new_pattern.sroa.13.1.i.i, %ath10k_wow_convert_8023_to_80211.exit.i.i ], [ %old_pattern.sroa.11.0.copyload.i.i, %if.else.i.i ], [ %old_pattern.sroa.11.0.copyload.i.i, %for.end.i.i.if.end51.i.i_crit_edge ]
  %new_pattern.sroa.22.1.i.i = phi i32 [ %sub39.i.i.i, %ath10k_wow_convert_8023_to_80211.exit.i.i ], [ %add.i.i, %if.else.i.i ], [ %old_pattern.sroa.13.0.copyload.i.i, %for.end.i.i.if.end51.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 148, i32 %new_pattern.sroa.13.2.i.i)
  %cmp53.i.i = icmp sgt i32 %new_pattern.sroa.13.2.i.i, 148
  br i1 %cmp53.i.i, label %do.end.i.i, label %if.end78.i.i, !prof !103

do.end.i.i:                                       ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 350, i32 noundef 9, ptr noundef null) #6
  br label %cleanup90.thread.i.i

if.end78.i.i:                                     ; preds = %if.end51.i.i
  %179 = ptrtoint ptr %ops.i195.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %ops.i195.i.i, align 4
  %gen_wow_add_pattern.i.i.i = getelementptr inbounds %struct.wmi_ops, ptr %180, i32 0, i32 76
  %181 = ptrtoint ptr %gen_wow_add_pattern.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %gen_wow_add_pattern.i.i.i, align 4
  %tobool.not.i196.i.i = icmp eq ptr %182, null
  br i1 %tobool.not.i196.i.i, label %if.end78.i.i.if.then86.i.i_crit_edge, label %if.end.i199.i.i

if.end78.i.i.if.then86.i.i_crit_edge:             ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then86.i.i

if.end.i199.i.i:                                  ; preds = %if.end78.i.i
  %183 = ptrtoint ptr %vdev_id79.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %vdev_id79.i.i, align 4
  %call.i197.i.i = call ptr %182(ptr noundef %11, i32 noundef %184, i32 noundef %pattern_id.0270.i.i, ptr noundef %old_pattern.sroa.8.0.copyload.i.i, ptr noundef nonnull %bitmask.i.i, i32 noundef %new_pattern.sroa.13.2.i.i, i32 noundef %new_pattern.sroa.22.1.i.i) #6
  %cmp.i.i198.i.i = icmp ugt ptr %call.i197.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i198.i.i, label %if.then5.i200.i.i, label %if.end7.i203.i.i

if.then5.i200.i.i:                                ; preds = %if.end.i199.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %185 = ptrtoint ptr %call.i197.i.i to i32
  br label %ath10k_wmi_wow_add_pattern.exit.i.i

if.end7.i203.i.i:                                 ; preds = %if.end.i199.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %186 = ptrtoint ptr %cmd.i201.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %cmd.i201.i.i, align 4
  %wow_add_wake_pattern_cmdid.i.i.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %187, i32 0, i32 80
  %188 = ptrtoint ptr %wow_add_wake_pattern_cmdid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %wow_add_wake_pattern_cmdid.i.i.i, align 4
  %call9.i202.i.i = call i32 @ath10k_wmi_cmd_send(ptr noundef %11, ptr noundef %call.i197.i.i, i32 noundef %189) #6
  br label %ath10k_wmi_wow_add_pattern.exit.i.i

ath10k_wmi_wow_add_pattern.exit.i.i:              ; preds = %if.end7.i203.i.i, %if.then5.i200.i.i
  %retval.0.i204.i.i = phi i32 [ %185, %if.then5.i200.i.i ], [ %call9.i202.i.i, %if.end7.i203.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i204.i.i)
  %tobool85.not.i.i = icmp eq i32 %retval.0.i204.i.i, 0
  br i1 %tobool85.not.i.i, label %if.end88.i.i, label %ath10k_wmi_wow_add_pattern.exit.i.i.if.then86.i.i_crit_edge

ath10k_wmi_wow_add_pattern.exit.i.i.if.then86.i.i_crit_edge: ; preds = %ath10k_wmi_wow_add_pattern.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then86.i.i

if.then86.i.i:                                    ; preds = %ath10k_wmi_wow_add_pattern.exit.i.i.if.then86.i.i_crit_edge, %if.end78.i.i.if.then86.i.i_crit_edge
  %retval.0.i204249.i.i = phi i32 [ %retval.0.i204.i.i, %ath10k_wmi_wow_add_pattern.exit.i.i.if.then86.i.i_crit_edge ], [ -95, %if.end78.i.i.if.then86.i.i_crit_edge ]
  %190 = ptrtoint ptr %vdev_id79.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %vdev_id79.i.i, align 4
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %11, ptr noundef nonnull @.str.38, i32 noundef %pattern_id.0270.i.i, i32 noundef %191, i32 noundef %retval.0.i204249.i.i) #6
  br label %cleanup90.thread.i.i

if.end88.i.i:                                     ; preds = %ath10k_wmi_wow_add_pattern.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc89.i.i = add i32 %pattern_id.0270.i.i, 1
  %192 = ptrtoint ptr %wow_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %wow_mask.i.i.0.wow_mask.i.i.0.wow_mask.i.0.wow_mask.i.0.wow_mask.0.280.i.i = load i32, ptr %wow_mask.i.i, align 4
  %or.i189.i.i = or i32 %wow_mask.i.i.0.wow_mask.i.i.0.wow_mask.i.0.wow_mask.i.0.wow_mask.0.280.i.i, 512
  store i32 %or.i189.i.i, ptr %wow_mask.i.i, align 4
  br label %for.inc98.i.i

cleanup90.thread.i.i:                             ; preds = %if.then86.i.i, %do.end.i.i
  %retval.3.ph.i.i = phi i32 [ %retval.0.i204249.i.i, %if.then86.i.i ], [ -22, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %bitmask.i.i) #6
  br label %if.then30

for.inc98.i.i:                                    ; preds = %if.end88.i.i, %for.body.i.i.for.inc98.i.i_crit_edge
  %pattern_id.1.i.i = phi i32 [ %inc89.i.i, %if.end88.i.i ], [ %pattern_id.0270.i.i, %for.body.i.i.for.inc98.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %bitmask.i.i) #6
  %inc99.i.i = add nuw nsw i32 %i.0267.i.i, 1
  %193 = ptrtoint ptr %n_patterns.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %n_patterns.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc99.i.i, %194
  br i1 %cmp.i.i, label %for.inc98.i.i.for.body.i.i_crit_edge, label %for.inc98.i.i.for.cond101.preheader.i.i_crit_edge

for.inc98.i.i.for.cond101.preheader.i.i_crit_edge: ; preds = %for.inc98.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond101.preheader.i.i

for.inc98.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc98.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body104.i.i:                                  ; preds = %for.inc116.i.i.for.body104.i.i_crit_edge, %for.cond101.preheader.i.i
  %i.1271.i.i = phi i32 [ 0, %for.cond101.preheader.i.i ], [ %inc117.i.i, %for.inc116.i.i.for.body104.i.i_crit_edge ]
  %195 = ptrtoint ptr %wow_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %wow_mask.i.i.0.wow_mask.i.i.0.wow_mask.i.0.wow_mask.i.0.wow_mask.0..i.i = load volatile i32, ptr %wow_mask.i.i, align 4
  %196 = shl nuw i32 1, %i.1271.i.i
  %197 = and i32 %wow_mask.i.i.0.wow_mask.i.i.0.wow_mask.i.0.wow_mask.i.0.wow_mask.0..i.i, %196
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool106.not.i.i = icmp eq i32 %197, 0
  br i1 %tobool106.not.i.i, label %for.body104.i.i.for.inc116.i.i_crit_edge, label %if.end108.i.i

for.body104.i.i.for.inc116.i.i_crit_edge:         ; preds = %for.body104.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc116.i.i

if.end108.i.i:                                    ; preds = %for.body104.i.i
  %198 = ptrtoint ptr %ops.i205.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %ops.i205.i.i, align 4
  %gen_wow_add_wakeup_event.i.i.i = getelementptr inbounds %struct.wmi_ops, ptr %199, i32 0, i32 74
  %200 = ptrtoint ptr %gen_wow_add_wakeup_event.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %gen_wow_add_wakeup_event.i.i.i, align 4
  %tobool.not.i206.i.i = icmp eq ptr %201, null
  br i1 %tobool.not.i206.i.i, label %if.end108.i.i.if.then112.i.i_crit_edge, label %if.end.i209.i.i

if.end108.i.i.if.then112.i.i_crit_edge:           ; preds = %if.end108.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then112.i.i

if.end.i209.i.i:                                  ; preds = %if.end108.i.i
  %202 = ptrtoint ptr %vdev_id109.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %vdev_id109.i.i, align 4
  %call.i207.i.i = call ptr %201(ptr noundef %11, i32 noundef %203, i32 noundef %i.1271.i.i, i32 noundef 1) #6
  %cmp.i.i208.i.i = icmp ugt ptr %call.i207.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i208.i.i, label %if.then5.i210.i.i, label %if.end7.i213.i.i

if.then5.i210.i.i:                                ; preds = %if.end.i209.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %204 = ptrtoint ptr %call.i207.i.i to i32
  br label %ath10k_wmi_wow_add_wakeup_event.exit.i.i

if.end7.i213.i.i:                                 ; preds = %if.end.i209.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %205 = ptrtoint ptr %cmd.i211.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %cmd.i211.i.i, align 4
  %wow_enable_disable_wake_event_cmdid.i.i.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %206, i32 0, i32 82
  %207 = ptrtoint ptr %wow_enable_disable_wake_event_cmdid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %wow_enable_disable_wake_event_cmdid.i.i.i, align 4
  %call9.i212.i.i = call i32 @ath10k_wmi_cmd_send(ptr noundef %11, ptr noundef %call.i207.i.i, i32 noundef %208) #6
  br label %ath10k_wmi_wow_add_wakeup_event.exit.i.i

ath10k_wmi_wow_add_wakeup_event.exit.i.i:         ; preds = %if.end7.i213.i.i, %if.then5.i210.i.i
  %retval.0.i214.i.i = phi i32 [ %204, %if.then5.i210.i.i ], [ %call9.i212.i.i, %if.end7.i213.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i214.i.i)
  %tobool111.not.i.i = icmp eq i32 %retval.0.i214.i.i, 0
  br i1 %tobool111.not.i.i, label %ath10k_wmi_wow_add_wakeup_event.exit.i.i.for.inc116.i.i_crit_edge, label %ath10k_wmi_wow_add_wakeup_event.exit.i.i.if.then112.i.i_crit_edge

ath10k_wmi_wow_add_wakeup_event.exit.i.i.if.then112.i.i_crit_edge: ; preds = %ath10k_wmi_wow_add_wakeup_event.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then112.i.i

ath10k_wmi_wow_add_wakeup_event.exit.i.i.for.inc116.i.i_crit_edge: ; preds = %ath10k_wmi_wow_add_wakeup_event.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc116.i.i

if.then112.i.i:                                   ; preds = %ath10k_wmi_wow_add_wakeup_event.exit.i.i.if.then112.i.i_crit_edge, %if.end108.i.i.if.then112.i.i_crit_edge
  %retval.0.i214257.i.i = phi i32 [ %retval.0.i214.i.i, %ath10k_wmi_wow_add_wakeup_event.exit.i.i.if.then112.i.i_crit_edge ], [ -95, %if.end108.i.i.if.then112.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %i.1271.i.i)
  %209 = icmp ult i32 %i.1271.i.i, 24
  br i1 %209, label %switch.lookup, label %if.then112.i.i.wow_wakeup_event.exit.i.i_crit_edge

if.then112.i.i.wow_wakeup_event.exit.i.i_crit_edge: ; preds = %if.then112.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wow_wakeup_event.exit.i.i

switch.lookup:                                    ; preds = %if.then112.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [24 x ptr], ptr @switch.table.ath10k_wow_op_suspend, i32 0, i32 %i.1271.i.i
  %210 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %210)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %wow_wakeup_event.exit.i.i

wow_wakeup_event.exit.i.i:                        ; preds = %switch.lookup, %if.then112.i.i.wow_wakeup_event.exit.i.i_crit_edge
  %retval.0.i215.i.i = phi ptr [ %switch.load, %switch.lookup ], [ null, %if.then112.i.i.wow_wakeup_event.exit.i.i_crit_edge ]
  %211 = ptrtoint ptr %vdev_id109.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %vdev_id109.i.i, align 4
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %11, ptr noundef nonnull @.str.39, ptr noundef %retval.0.i215.i.i, i32 noundef %212, i32 noundef %retval.0.i214257.i.i) #6
  br label %if.then30

for.inc116.i.i:                                   ; preds = %ath10k_wmi_wow_add_wakeup_event.exit.i.i.for.inc116.i.i_crit_edge, %for.body104.i.i.for.inc116.i.i_crit_edge
  %inc117.i.i = add nuw nsw i32 %i.1271.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc117.i.i, 24
  br i1 %exitcond.not.i.i, label %ath10k_vif_wow_set_wakeups.exit.i, label %for.inc116.i.i.for.body104.i.i_crit_edge

for.inc116.i.i.for.body104.i.i_crit_edge:         ; preds = %for.inc116.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body104.i.i

ath10k_vif_wow_set_wakeups.exit.i:                ; preds = %for.inc116.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wow_mask.i.i)
  %213 = ptrtoint ptr %arvif.067.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %arvif.0.i = load ptr, ptr %arvif.067.i, align 4
  %cmp26.not.i = icmp eq ptr %arvif.0.i, %arvifs.i
  br i1 %cmp26.not.i, label %ath10k_vif_wow_set_wakeups.exit.i.if.end31_crit_edge, label %ath10k_vif_wow_set_wakeups.exit.i.for.body.i_crit_edge

ath10k_vif_wow_set_wakeups.exit.i.for.body.i_crit_edge: ; preds = %ath10k_vif_wow_set_wakeups.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

ath10k_vif_wow_set_wakeups.exit.i.if.end31_crit_edge: ; preds = %ath10k_vif_wow_set_wakeups.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then30:                                        ; preds = %wow_wakeup_event.exit.i.i, %cleanup90.thread.i.i, %if.then9.i.i.if.then30_crit_edge
  %retval.4.i.ph.i = phi i32 [ %retval.3.ph.i.i, %cleanup90.thread.i.i ], [ %retval.0.i214257.i.i, %wow_wakeup_event.exit.i.i ], [ -12, %if.then9.i.i.if.then30_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wow_mask.i.i)
  %vdev_id.i = getelementptr inbounds %struct.ath10k_vif, ptr %arvif.067.i, i32 0, i32 1
  %214 = ptrtoint ptr %vdev_id.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %vdev_id.i, align 4
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.37, i32 noundef %215, i32 noundef %retval.4.i.ph.i) #6
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %retval.4.i.ph.i) #6
  br label %cleanup

if.end31:                                         ; preds = %ath10k_vif_wow_set_wakeups.exit.i.if.end31_crit_edge, %if.end.i.if.end31_crit_edge
  call void @ath10k_mac_wait_tx_complete(ptr noundef %1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %216 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool.not.i68 = icmp eq i32 %216, 0
  br i1 %tobool.not.i68, label %if.end31.if.end.i75_crit_edge, label %land.rhs.i72

if.end31.if.end.i75_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i75

land.rhs.i72:                                     ; preds = %if.end31
  %dep_map.i69 = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80, i32 5
  %call.i.i70 = call i32 @lock_is_held_type(ptr noundef %dep_map.i69, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i70)
  %cmp.not.i71 = icmp eq i32 %call.i.i70, 0
  br i1 %cmp.not.i71, label %do.end.i73, label %land.rhs.i72.if.end.i75_crit_edge, !prof !103

land.rhs.i72.if.end.i75_crit_edge:                ; preds = %land.rhs.i72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i75

do.end.i73:                                       ; preds = %land.rhs.i72
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 453, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i75

if.end.i75:                                       ; preds = %do.end.i73, %land.rhs.i72.if.end.i75_crit_edge, %if.end31.if.end.i75_crit_edge
  %target_suspend.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 35
  %217 = ptrtoint ptr %target_suspend.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 0, ptr %target_suspend.i, align 4
  %ops.i.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 11
  %218 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %ops.i.i, align 4
  %gen_wow_enable.i.i = getelementptr inbounds %struct.wmi_ops, ptr %219, i32 0, i32 73
  %220 = ptrtoint ptr %gen_wow_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %gen_wow_enable.i.i, align 4
  %tobool.not.i.i74 = icmp eq ptr %221, null
  br i1 %tobool.not.i.i74, label %if.end.i75.if.then26.i_crit_edge, label %if.end.i.i77

if.end.i75.if.then26.i_crit_edge:                 ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.i

if.end.i.i77:                                     ; preds = %if.end.i75
  %call.i42.i = call ptr %221(ptr noundef %1) #6
  %cmp.i.i.i76 = icmp ugt ptr %call.i42.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i76, label %if.then5.i.i, label %if.end7.i.i78

if.then5.i.i:                                     ; preds = %if.end.i.i77
  call void @__sanitizer_cov_trace_pc() #8
  %222 = ptrtoint ptr %call.i42.i to i32
  br label %ath10k_wmi_wow_enable.exit.i

if.end7.i.i78:                                    ; preds = %if.end.i.i77
  call void @__sanitizer_cov_trace_pc() #8
  %cmd.i.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 7
  %223 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %cmd.i.i, align 4
  %wow_enable_cmdid.i.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %224, i32 0, i32 83
  %225 = ptrtoint ptr %wow_enable_cmdid.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %wow_enable_cmdid.i.i, align 4
  %call9.i.i = call i32 @ath10k_wmi_cmd_send(ptr noundef %1, ptr noundef %call.i42.i, i32 noundef %226) #6
  br label %ath10k_wmi_wow_enable.exit.i

ath10k_wmi_wow_enable.exit.i:                     ; preds = %if.end7.i.i78, %if.then5.i.i
  %retval.0.i.i = phi i32 [ %222, %if.then5.i.i ], [ %call9.i.i, %if.end7.i.i78 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool25.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %ath10k_wmi_wow_enable.exit.i.if.then26.i_crit_edge

ath10k_wmi_wow_enable.exit.i.if.then26.i_crit_edge: ; preds = %ath10k_wmi_wow_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.i

if.then26.i:                                      ; preds = %ath10k_wmi_wow_enable.exit.i.if.then26.i_crit_edge, %if.end.i75.if.then26.i_crit_edge
  %retval.0.i45.i = phi i32 [ %retval.0.i.i, %ath10k_wmi_wow_enable.exit.i.if.then26.i_crit_edge ], [ -95, %if.end.i75.if.then26.i_crit_edge ]
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.41, i32 noundef %retval.0.i45.i) #6
  br label %if.then34

if.end27.i:                                       ; preds = %ath10k_wmi_wow_enable.exit.i
  %call29.i = call i32 @wait_for_completion_timeout(ptr noundef %target_suspend.i, i32 noundef 300) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp eq i32 %call29.i, 0
  br i1 %cmp30.i, label %if.then31.i79, label %if.end35

if.then31.i79:                                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.42) #6
  br label %if.then34

if.then34:                                        ; preds = %if.then31.i79, %if.then26.i
  %retval.0.i80.ph = phi i32 [ -110, %if.then31.i79 ], [ %retval.0.i45.i, %if.then26.i ]
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %retval.0.i80.ph) #6
  br label %cleanup

if.end35:                                         ; preds = %if.end27.i
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 34, i32 1
  %227 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %ops.i, align 4
  %suspend.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %228, i32 0, i32 16
  %229 = ptrtoint ptr %suspend.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %suspend.i, align 4
  %tobool.not.i81 = icmp eq ptr %230, null
  br i1 %tobool.not.i81, label %if.end35.if.then38_crit_edge, label %ath10k_hif_suspend.exit

if.end35.if.then38_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38

ath10k_hif_suspend.exit:                          ; preds = %if.end35
  %call.i = call i32 %230(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool37.not = icmp eq i32 %call.i, 0
  br i1 %tobool37.not, label %ath10k_hif_suspend.exit.exit_crit_edge, label %ath10k_hif_suspend.exit.if.then38_crit_edge

ath10k_hif_suspend.exit.if.then38_crit_edge:      ; preds = %ath10k_hif_suspend.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38

ath10k_hif_suspend.exit.exit_crit_edge:           ; preds = %ath10k_hif_suspend.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.then38:                                        ; preds = %ath10k_hif_suspend.exit.if.then38_crit_edge, %if.end35.if.then38_crit_edge
  %retval.0.i8391 = phi i32 [ %call.i, %ath10k_hif_suspend.exit.if.then38_crit_edge ], [ -95, %if.end35.if.then38_crit_edge ]
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %retval.0.i8391) #6
  %call40 = call fastcc i32 @ath10k_wow_wakeup(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.then34, %if.then30
  %call41 = call fastcc i32 @ath10k_wow_cleanup(ptr noundef %1)
  br label %exit

exit:                                             ; preds = %cleanup, %ath10k_hif_suspend.exit.exit_crit_edge, %if.then26, %do.end
  %tobool43.not = phi i32 [ 0, %ath10k_hif_suspend.exit.exit_crit_edge ], [ 1, %cleanup ], [ 1, %if.then26 ], [ 1, %do.end ]
  call void @mutex_unlock(ptr noundef %conf_mutex) #6
  ret i32 %tobool43.not
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_wow_cleanup(ptr noundef %ar) unnamed_addr #0 align 64 {
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
  %dep_map = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 80, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !103

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 55, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %arvifs = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 83
  %1 = ptrtoint ptr %arvifs to i32
  call void @__asan_load4_noabort(i32 %1)
  %arvif.056 = load ptr, ptr %arvifs, align 4
  %cmp26.not57 = icmp eq ptr %arvif.056, %arvifs
  br i1 %cmp26.not57, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %ath10k_wow_vif_cleanup.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %arvif.058 = phi ptr [ %arvif.0, %ath10k_wow_vif_cleanup.exit.for.body_crit_edge ], [ %arvif.056, %if.end.for.body_crit_edge ]
  %ar1.i = getelementptr inbounds %struct.ath10k_vif, ptr %arvif.058, i32 0, i32 12
  %2 = ptrtoint ptr %ar1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar1.i, align 4
  %vdev_id.i = getelementptr inbounds %struct.ath10k_vif, ptr %arvif.058, i32 0, i32 1
  %ops.i.i = getelementptr inbounds %struct.ath10k, ptr %3, i32 0, i32 41, i32 11
  %cmd.i.i = getelementptr inbounds %struct.ath10k, ptr %3, i32 0, i32 41, i32 7
  br label %for.body.i

for.cond4.preheader.i:                            ; preds = %for.inc.i
  %wow.i = getelementptr inbounds %struct.ath10k, ptr %3, i32 0, i32 122
  %4 = ptrtoint ptr %wow.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wow.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp558.not.i = icmp eq i32 %5, 0
  br i1 %cmp558.not.i, label %for.cond4.preheader.i.ath10k_wow_vif_cleanup.exit_crit_edge, label %for.cond4.preheader.i.for.body6.i_crit_edge

for.cond4.preheader.i.for.body6.i_crit_edge:      ; preds = %for.cond4.preheader.i
  br label %for.body6.i

for.cond4.preheader.i.ath10k_wow_vif_cleanup.exit_crit_edge: ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath10k_wow_vif_cleanup.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body
  %i.057.i = phi i32 [ 0, %for.body ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i.i, align 4
  %gen_wow_add_wakeup_event.i.i = getelementptr inbounds %struct.wmi_ops, ptr %7, i32 0, i32 74
  %8 = ptrtoint ptr %gen_wow_add_wakeup_event.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gen_wow_add_wakeup_event.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %for.body.i.if.then.i_crit_edge, label %if.end.i.i

for.body.i.if.then.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.end.i.i:                                       ; preds = %for.body.i
  %10 = ptrtoint ptr %vdev_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vdev_id.i, align 4
  %call.i.i = tail call ptr %9(ptr noundef %3, i32 noundef %11, i32 noundef %i.057.i, i32 noundef 0) #6
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then5.i.i, label %if.end7.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call.i.i to i32
  br label %ath10k_wmi_wow_add_wakeup_event.exit.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd.i.i, align 4
  %wow_enable_disable_wake_event_cmdid.i.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %14, i32 0, i32 82
  %15 = ptrtoint ptr %wow_enable_disable_wake_event_cmdid.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wow_enable_disable_wake_event_cmdid.i.i, align 4
  %call9.i.i = tail call i32 @ath10k_wmi_cmd_send(ptr noundef %3, ptr noundef %call.i.i, i32 noundef %16) #6
  br label %ath10k_wmi_wow_add_wakeup_event.exit.i

ath10k_wmi_wow_add_wakeup_event.exit.i:           ; preds = %if.end7.i.i, %if.then5.i.i
  %retval.0.i.i = phi i32 [ %12, %if.then5.i.i ], [ %call9.i.i, %if.end7.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %ath10k_wmi_wow_add_wakeup_event.exit.i.if.then.i_crit_edge

ath10k_wmi_wow_add_wakeup_event.exit.i.if.then.i_crit_edge: ; preds = %ath10k_wmi_wow_add_wakeup_event.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %ath10k_wmi_wow_add_wakeup_event.exit.i.if.then.i_crit_edge, %for.body.i.if.then.i_crit_edge
  %retval.0.i51.i = phi i32 [ %retval.0.i.i, %ath10k_wmi_wow_add_wakeup_event.exit.i.if.then.i_crit_edge ], [ -95, %for.body.i.if.then.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %i.057.i)
  %17 = icmp ult i32 %i.057.i, 24
  br i1 %17, label %switch.lookup, label %if.then.i.wow_wakeup_event.exit.i_crit_edge

if.then.i.wow_wakeup_event.exit.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wow_wakeup_event.exit.i

switch.lookup:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [24 x ptr], ptr @switch.table.ath10k_wow_cleanup, i32 0, i32 %i.057.i
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %wow_wakeup_event.exit.i

wow_wakeup_event.exit.i:                          ; preds = %switch.lookup, %if.then.i.wow_wakeup_event.exit.i_crit_edge
  %retval.0.i38.i = phi ptr [ %switch.load, %switch.lookup ], [ null, %if.then.i.wow_wakeup_event.exit.i_crit_edge ]
  %19 = ptrtoint ptr %vdev_id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vdev_id.i, align 4
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %3, ptr noundef nonnull @.str.10, ptr noundef %retval.0.i38.i, i32 noundef %20, i32 noundef %retval.0.i51.i) #6
  br label %if.then31

for.inc.i:                                        ; preds = %ath10k_wmi_wow_add_wakeup_event.exit.i
  %inc.i = add nuw nsw i32 %i.057.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 24
  br i1 %exitcond.not.i, label %for.cond4.preheader.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body6.i:                                      ; preds = %for.inc13.i.for.body6.i_crit_edge, %for.cond4.preheader.i.for.body6.i_crit_edge
  %i.159.i = phi i32 [ %inc14.i, %for.inc13.i.for.body6.i_crit_edge ], [ 0, %for.cond4.preheader.i.for.body6.i_crit_edge ]
  %21 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i.i, align 4
  %gen_wow_del_pattern.i.i = getelementptr inbounds %struct.wmi_ops, ptr %22, i32 0, i32 77
  %23 = ptrtoint ptr %gen_wow_del_pattern.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gen_wow_del_pattern.i.i, align 4
  %tobool.not.i40.i = icmp eq ptr %24, null
  br i1 %tobool.not.i40.i, label %for.body6.i.if.then10.i_crit_edge, label %if.end.i43.i

for.body6.i.if.then10.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.i

if.end.i43.i:                                     ; preds = %for.body6.i
  %25 = ptrtoint ptr %vdev_id.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vdev_id.i, align 4
  %call.i41.i = tail call ptr %24(ptr noundef %3, i32 noundef %26, i32 noundef %i.159.i) #6
  %cmp.i.i42.i = icmp ugt ptr %call.i41.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i42.i, label %if.then5.i44.i, label %if.end7.i47.i

if.then5.i44.i:                                   ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %call.i41.i to i32
  br label %ath10k_wmi_wow_del_pattern.exit.i

if.end7.i47.i:                                    ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cmd.i.i, align 4
  %wow_del_wake_pattern_cmdid.i.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %29, i32 0, i32 81
  %30 = ptrtoint ptr %wow_del_wake_pattern_cmdid.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wow_del_wake_pattern_cmdid.i.i, align 4
  %call9.i46.i = tail call i32 @ath10k_wmi_cmd_send(ptr noundef %3, ptr noundef %call.i41.i, i32 noundef %31) #6
  br label %ath10k_wmi_wow_del_pattern.exit.i

ath10k_wmi_wow_del_pattern.exit.i:                ; preds = %if.end7.i47.i, %if.then5.i44.i
  %retval.0.i48.i = phi i32 [ %27, %if.then5.i44.i ], [ %call9.i46.i, %if.end7.i47.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i48.i)
  %tobool9.not.i = icmp eq i32 %retval.0.i48.i, 0
  br i1 %tobool9.not.i, label %for.inc13.i, label %ath10k_wmi_wow_del_pattern.exit.i.if.then10.i_crit_edge

ath10k_wmi_wow_del_pattern.exit.i.if.then10.i_crit_edge: ; preds = %ath10k_wmi_wow_del_pattern.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.i

if.then10.i:                                      ; preds = %ath10k_wmi_wow_del_pattern.exit.i.if.then10.i_crit_edge, %for.body6.i.if.then10.i_crit_edge
  %retval.0.i4854.i = phi i32 [ %retval.0.i48.i, %ath10k_wmi_wow_del_pattern.exit.i.if.then10.i_crit_edge ], [ -95, %for.body6.i.if.then10.i_crit_edge ]
  %32 = ptrtoint ptr %vdev_id.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vdev_id.i, align 4
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %3, ptr noundef nonnull @.str.11, i32 noundef %i.159.i, i32 noundef %33, i32 noundef %retval.0.i4854.i) #6
  br label %if.then31

for.inc13.i:                                      ; preds = %ath10k_wmi_wow_del_pattern.exit.i
  %inc14.i = add nuw i32 %i.159.i, 1
  %34 = ptrtoint ptr %wow.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wow.i, align 4
  %cmp5.i = icmp ult i32 %inc14.i, %35
  br i1 %cmp5.i, label %for.inc13.i.for.body6.i_crit_edge, label %for.inc13.i.ath10k_wow_vif_cleanup.exit_crit_edge

for.inc13.i.ath10k_wow_vif_cleanup.exit_crit_edge: ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath10k_wow_vif_cleanup.exit

for.inc13.i.for.body6.i_crit_edge:                ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6.i

ath10k_wow_vif_cleanup.exit:                      ; preds = %for.inc13.i.ath10k_wow_vif_cleanup.exit_crit_edge, %for.cond4.preheader.i.ath10k_wow_vif_cleanup.exit_crit_edge
  %36 = ptrtoint ptr %arvif.058 to i32
  call void @__asan_load4_noabort(i32 %36)
  %arvif.0 = load ptr, ptr %arvif.058, align 4
  %cmp26.not = icmp eq ptr %arvif.0, %arvifs
  br i1 %cmp26.not, label %ath10k_wow_vif_cleanup.exit.cleanup_crit_edge, label %ath10k_wow_vif_cleanup.exit.for.body_crit_edge

ath10k_wow_vif_cleanup.exit.for.body_crit_edge:   ; preds = %ath10k_wow_vif_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

ath10k_wow_vif_cleanup.exit.cleanup_crit_edge:    ; preds = %ath10k_wow_vif_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then31:                                        ; preds = %if.then10.i, %wow_wakeup_event.exit.i
  %retval.0.i.ph = phi i32 [ %retval.0.i4854.i, %if.then10.i ], [ %retval.0.i51.i, %wow_wakeup_event.exit.i ]
  %37 = ptrtoint ptr %vdev_id.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vdev_id.i, align 4
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.9, i32 noundef %38, i32 noundef %retval.0.i.ph) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %ath10k_wow_vif_cleanup.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then31 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %ath10k_wow_vif_cleanup.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_mac_wait_tx_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_wow_wakeup(ptr noundef %ar) unnamed_addr #0 align 64 {
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
  %dep_map = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 80, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !103

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 476, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %wakeup_completed = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 122, i32 1
  %1 = ptrtoint ptr %wakeup_completed to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wakeup_completed, align 4
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 41, i32 11
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %gen_wow_host_wakeup_ind.i = getelementptr inbounds %struct.wmi_ops, ptr %3, i32 0, i32 75
  %4 = ptrtoint ptr %gen_wow_host_wakeup_ind.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gen_wow_host_wakeup_ind.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.if.then26_crit_edge, label %if.end.i

if.end.if.then26_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

if.end.i:                                         ; preds = %if.end
  %call.i43 = tail call ptr %5(ptr noundef %ar) #6
  %cmp.i.i = icmp ugt ptr %call.i43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call.i43 to i32
  br label %ath10k_wmi_wow_host_wakeup_ind.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %cmd.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 41, i32 7
  %7 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmd.i, align 4
  %wow_hostwakeup_from_sleep_cmdid.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %8, i32 0, i32 84
  %9 = ptrtoint ptr %wow_hostwakeup_from_sleep_cmdid.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wow_hostwakeup_from_sleep_cmdid.i, align 4
  %call9.i = tail call i32 @ath10k_wmi_cmd_send(ptr noundef %ar, ptr noundef %call.i43, i32 noundef %10) #6
  br label %ath10k_wmi_wow_host_wakeup_ind.exit

ath10k_wmi_wow_host_wakeup_ind.exit:              ; preds = %if.end7.i, %if.then5.i
  %retval.0.i = phi i32 [ %6, %if.then5.i ], [ %call9.i, %if.end7.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool25.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool25.not, label %if.end27, label %ath10k_wmi_wow_host_wakeup_ind.exit.if.then26_crit_edge

ath10k_wmi_wow_host_wakeup_ind.exit.if.then26_crit_edge: ; preds = %ath10k_wmi_wow_host_wakeup_ind.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

if.then26:                                        ; preds = %ath10k_wmi_wow_host_wakeup_ind.exit.if.then26_crit_edge, %if.end.if.then26_crit_edge
  %retval.0.i46 = phi i32 [ %retval.0.i, %ath10k_wmi_wow_host_wakeup_ind.exit.if.then26_crit_edge ], [ -95, %if.end.if.then26_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.43, i32 noundef %retval.0.i46) #6
  br label %cleanup

if.end27:                                         ; preds = %ath10k_wmi_wow_host_wakeup_ind.exit
  %call30 = tail call i32 @wait_for_completion_timeout(ptr noundef %wakeup_completed, i32 noundef 300) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.44) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end27.cleanup_crit_edge, %if.then26
  %retval.0 = phi i32 [ %retval.0.i46, %if.then26 ], [ -110, %if.then32 ], [ 0, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_wow_op_set_wakeup(ptr nocapture noundef readonly %hw, i1 noundef zeroext %enabled) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #6
  %running_fw = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %running_fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %running_fw, align 64
  %fw_features = getelementptr inbounds %struct.ath10k_fw_components, ptr %3, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %fw_features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %fw_features, align 4
  %6 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %call2 = tail call i32 @device_set_wakeup_enable(ptr noundef %8, i1 noundef zeroext %enabled) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_wow_op_resume(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #6
  %running_fw = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %running_fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %running_fw, align 64
  %fw_features = getelementptr inbounds %struct.ath10k_fw_components, ptr %3, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %fw_features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %fw_features, align 4
  %6 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !103

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 571, i32 noundef 9, ptr noundef null) #6
  br label %if.then37

if.end23:                                         ; preds = %entry
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 34, i32 1
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %resume.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %8, i32 0, i32 17
  %9 = ptrtoint ptr %resume.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resume.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end23.if.then26_crit_edge, label %ath10k_hif_resume.exit

if.end23.if.then26_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

ath10k_hif_resume.exit:                           ; preds = %if.end23
  %call.i = tail call i32 %10(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool25.not = icmp eq i32 %call.i, 0
  br i1 %tobool25.not, label %if.end27, label %ath10k_hif_resume.exit.if.then26_crit_edge

ath10k_hif_resume.exit.if.then26_crit_edge:       ; preds = %ath10k_hif_resume.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

if.then26:                                        ; preds = %ath10k_hif_resume.exit.if.then26_crit_edge, %if.end23.if.then26_crit_edge
  %retval.0.i68 = phi i32 [ %call.i, %ath10k_hif_resume.exit.if.then26_crit_edge ], [ -95, %if.end23.if.then26_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef %retval.0.i68) #6
  br label %if.then37

if.end27:                                         ; preds = %ath10k_hif_resume.exit
  %call28 = tail call fastcc i32 @ath10k_wow_wakeup(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end27.if.end31_crit_edge, label %if.then30

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %call28) #6
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end27.if.end31_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %11 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i63 = icmp eq i32 %11, 0
  br i1 %tobool.not.i63, label %if.end31.if.end.i64_crit_edge, label %land.rhs.i

if.end31.if.end.i64_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i64

land.rhs.i:                                       ; preds = %if.end31
  %dep_map.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i64_crit_edge, !prof !103

land.rhs.i.if.end.i64_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i64

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 435, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i64

if.end.i64:                                       ; preds = %do.end.i, %land.rhs.i.if.end.i64_crit_edge, %if.end31.if.end.i64_crit_edge
  %arvifs.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 83
  br label %for.cond.i

for.cond.i:                                       ; preds = %ath10k_vif_wow_clean_nlo.exit.i.for.cond.i_crit_edge, %if.end.i64
  %arvif.0.in.i = phi ptr [ %arvifs.i, %if.end.i64 ], [ %arvif.0.i, %ath10k_vif_wow_clean_nlo.exit.i.for.cond.i_crit_edge ]
  %12 = ptrtoint ptr %arvif.0.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %arvif.0.i = load ptr, ptr %arvif.0.in.i, align 4
  %cmp26.not.i = icmp eq ptr %arvif.0.i, %arvifs.i
  br i1 %cmp26.not.i, label %for.cond.i.if.end41_crit_edge, label %for.body.i

for.cond.i.if.end41_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

for.body.i:                                       ; preds = %for.cond.i
  %ar1.i.i = getelementptr inbounds %struct.ath10k_vif, ptr %arvif.0.i, i32 0, i32 12
  %13 = ptrtoint ptr %ar1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ar1.i.i, align 4
  %vdev_type.i.i = getelementptr inbounds %struct.ath10k_vif, ptr %arvif.0.i, i32 0, i32 3
  %15 = ptrtoint ptr %vdev_type.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vdev_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cond.i.i = icmp eq i32 %16, 2
  br i1 %cond.i.i, label %sw.bb.i.i, label %for.body.i.ath10k_vif_wow_clean_nlo.exit.i_crit_edge

for.body.i.ath10k_vif_wow_clean_nlo.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath10k_vif_wow_clean_nlo.exit.i

sw.bb.i.i:                                        ; preds = %for.body.i
  %nlo_enabled.i.i = getelementptr inbounds %struct.ath10k, ptr %14, i32 0, i32 32
  %17 = ptrtoint ptr %nlo_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %nlo_enabled.i.i, align 2, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.i.ath10k_vif_wow_clean_nlo.exit.i_crit_edge, label %if.then.i.i

sw.bb.i.i.ath10k_vif_wow_clean_nlo.exit.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath10k_vif_wow_clean_nlo.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 2817) #9
  %tobool2.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %if.then.i.i.if.then34_crit_edge, label %if.end.i.i

if.then.i.i.if.then34_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34

if.end.i.i:                                       ; preds = %if.then.i.i
  %20 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %call7.i.i.i.i, align 8
  %21 = ptrtoint ptr %nlo_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %nlo_enabled.i.i, align 2
  %ops.i.i.i = getelementptr inbounds %struct.ath10k, ptr %14, i32 0, i32 41, i32 11
  %22 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i.i.i, align 4
  %gen_wow_config_pno.i.i.i = getelementptr inbounds %struct.wmi_ops, ptr %23, i32 0, i32 87
  %24 = ptrtoint ptr %gen_wow_config_pno.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gen_wow_config_pno.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.cleanup.i.i_crit_edge, label %if.end.i.i.i

if.end.i.i.cleanup.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %vdev_id.i.i = getelementptr inbounds %struct.ath10k_vif, ptr %arvif.0.i, i32 0, i32 1
  %26 = ptrtoint ptr %vdev_id.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vdev_id.i.i, align 4
  %call.i.i.i = tail call ptr %25(ptr noundef %14, i32 noundef %27, ptr noundef nonnull %call7.i.i.i.i) #6
  %cmp.i.i.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %if.then5.i.i.i, label %if.end7.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %call.i.i.i to i32
  br label %cleanup.i.i

if.end7.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %cmd.i.i.i = getelementptr inbounds %struct.ath10k, ptr %14, i32 0, i32 41, i32 7
  %29 = ptrtoint ptr %cmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cmd.i.i.i, align 4
  %network_list_offload_config_cmdid.i.i.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %30, i32 0, i32 92
  %31 = ptrtoint ptr %network_list_offload_config_cmdid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %network_list_offload_config_cmdid.i.i.i, align 4
  %call9.i.i.i = tail call i32 @ath10k_wmi_cmd_send(ptr noundef %14, ptr noundef %call.i.i.i, i32 noundef %32) #6
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end7.i.i.i, %if.then5.i.i.i, %if.end.i.i.cleanup.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %28, %if.then5.i.i.i ], [ %call9.i.i.i, %if.end7.i.i.i ], [ -95, %if.end.i.i.cleanup.i.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #6
  br label %ath10k_vif_wow_clean_nlo.exit.i

ath10k_vif_wow_clean_nlo.exit.i:                  ; preds = %cleanup.i.i, %sw.bb.i.i.ath10k_vif_wow_clean_nlo.exit.i_crit_edge, %for.body.i.ath10k_vif_wow_clean_nlo.exit.i_crit_edge
  %retval.1.i.i = phi i32 [ %retval.0.i.i.i, %cleanup.i.i ], [ 0, %sw.bb.i.i.ath10k_vif_wow_clean_nlo.exit.i_crit_edge ], [ 0, %for.body.i.ath10k_vif_wow_clean_nlo.exit.i_crit_edge ]
  %tobool30.not.i = icmp eq i32 %retval.1.i.i, 0
  br i1 %tobool30.not.i, label %ath10k_vif_wow_clean_nlo.exit.i.for.cond.i_crit_edge, label %ath10k_vif_wow_clean_nlo.exit.i.if.then34_crit_edge

ath10k_vif_wow_clean_nlo.exit.i.if.then34_crit_edge: ; preds = %ath10k_vif_wow_clean_nlo.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34

ath10k_vif_wow_clean_nlo.exit.i.for.cond.i_crit_edge: ; preds = %ath10k_vif_wow_clean_nlo.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

if.then34:                                        ; preds = %ath10k_vif_wow_clean_nlo.exit.i.if.then34_crit_edge, %if.then.i.i.if.then34_crit_edge
  %retval.1.i50.i = phi i32 [ %retval.1.i.i, %ath10k_vif_wow_clean_nlo.exit.i.if.then34_crit_edge ], [ -12, %if.then.i.i.if.then34_crit_edge ]
  %vdev_id.i = getelementptr inbounds %struct.ath10k_vif, ptr %arvif.0.i, i32 0, i32 1
  %33 = ptrtoint ptr %vdev_id.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vdev_id.i, align 4
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %34, i32 noundef %retval.1.i50.i) #6
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %retval.1.i50.i) #6
  br label %if.then37

if.then37:                                        ; preds = %if.then34, %if.then26, %do.end
  %ret.0.ph = phi i32 [ %retval.1.i50.i, %if.then34 ], [ %retval.0.i68, %if.then26 ], [ 1, %do.end ]
  %state = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 103
  %35 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %state, align 32
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %36, label %if.then37.if.end41_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %if.then37.sw.bb39_crit_edge
    i32 2, label %if.then37.sw.bb39_crit_edge80
    i32 3, label %if.then37.sw.bb39_crit_edge81
    i32 5, label %if.then37.sw.bb39_crit_edge82
    i32 4, label %if.then37.sw.bb39_crit_edge83
  ]

if.then37.sw.bb39_crit_edge83:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb39

if.then37.sw.bb39_crit_edge82:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb39

if.then37.sw.bb39_crit_edge81:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb39

if.then37.sw.bb39_crit_edge80:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb39

if.then37.sw.bb39_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb39

if.then37.if.end41_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

sw.bb:                                            ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %state, align 32
  br label %if.end41

sw.bb39:                                          ; preds = %if.then37.sw.bb39_crit_edge, %if.then37.sw.bb39_crit_edge80, %if.then37.sw.bb39_crit_edge81, %if.then37.sw.bb39_crit_edge82, %if.then37.sw.bb39_crit_edge83
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef %36) #6
  br label %if.end41

if.end41:                                         ; preds = %sw.bb39, %sw.bb, %if.then37.if.end41_crit_edge, %for.cond.i.if.end41_crit_edge
  %ret.1 = phi i32 [ %ret.0.ph, %if.then37.if.end41_crit_edge ], [ -5, %sw.bb39 ], [ 1, %sw.bb ], [ 0, %for.cond.i.if.end41_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #6
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_wow_init(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %running_fw = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 47
  %0 = ptrtoint ptr %running_fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %running_fw, align 64
  %fw_features = getelementptr inbounds %struct.ath10k_fw_components, ptr %1, i32 0, i32 6, i32 2
  %2 = ptrtoint ptr %fw_features to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %fw_features, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %svc_map = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 41, i32 6
  %5 = ptrtoint ptr %svc_map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %svc_map, align 4
  %7 = and i32 %6, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %do.end, label %if.end28, !prof !103

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 619, i32 noundef 9, ptr noundef null) #6
  br label %return

if.end28:                                         ; preds = %if.end
  %wow = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 122
  %wowlan_support = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 122, i32 2
  %8 = call ptr @memcpy(ptr %wowlan_support, ptr @ath10k_wowlan_support, i32 28)
  %rx_decap_mode = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 41, i32 16
  %9 = ptrtoint ptr %rx_decap_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_decap_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %if.then30, label %if.end28.if.end36_crit_edge

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %pattern_max_len = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 122, i32 2, i32 2
  %11 = ptrtoint ptr %pattern_max_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pattern_max_len, align 4
  %sub = add i32 %12, -14
  store i32 %sub, ptr %pattern_max_len, align 4
  %max_pkt_offset = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 122, i32 2, i32 4
  %13 = ptrtoint ptr %max_pkt_offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_pkt_offset, align 4
  %sub35 = add i32 %14, -14
  store i32 %sub35, ptr %max_pkt_offset, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %if.end28.if.end36_crit_edge
  %15 = ptrtoint ptr %svc_map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %svc_map, align 4
  %17 = and i32 %16, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool41.not = icmp eq i32 %17, 0
  br i1 %tobool41.not, label %if.end36.if.end47_crit_edge, label %if.then42

if.end36.if.end47_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then42:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %wowlan_support to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wowlan_support, align 4
  %or = or i32 %19, 256
  store i32 %or, ptr %wowlan_support, align 4
  %max_nd_match_sets = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 122, i32 2, i32 5
  %20 = ptrtoint ptr %max_nd_match_sets to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16, ptr %max_nd_match_sets, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %if.end36.if.end47_crit_edge
  %21 = ptrtoint ptr %wow to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wow, align 4
  %n_patterns = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 122, i32 2, i32 1
  %23 = ptrtoint ptr %n_patterns to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %n_patterns, align 4
  %hw = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 1
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wiphy, align 8
  %wowlan = getelementptr inbounds %struct.wiphy, ptr %27, i32 0, i32 40
  %28 = ptrtoint ptr %wowlan to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %wowlan_support, ptr %wowlan, align 32
  %dev = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 3
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  tail call void @device_set_wakeup_capable(ptr noundef %30, i1 noundef zeroext true) #6
  br label %return

return:                                           ; preds = %if.end47, %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end47 ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_wmi_cmd_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath10k/wow.c", i32 504, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath10k/wow.c", i32 512, i32 19}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath10k/wow.c", i32 519, i32 19}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath10k/wow.c", i32 528, i32 19}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath10k/wow.c", i32 534, i32 19}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath10k/wow.c", i32 578, i32 19}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath10k/wow.c", i32 584, i32 19}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath10k/wow.c", i32 588, i32 19}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath10k/wow.c", i32 602, i32 20}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath10k/wow.c", i32 60, i32 20}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath10k/wow.c", i32 32, i32 20}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath10k/wow.c", i32 41, i32 20}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 6999, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 7000, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 7001, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 7002, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 7003, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 7004, i32 2}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 7005, i32 2}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 7006, i32 2}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 7007, i32 2}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 7008, i32 2}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 7009, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 7010, i32 2}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 7011, i32 2}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 7012, i32 2}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 7013, i32 2}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 7014, i32 2}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 7015, i32 2}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 7016, i32 2}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 7017, i32 2}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 7018, i32 2}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 7019, i32 2}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 7020, i32 2}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 7021, i32 2}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 7022, i32 2}
!72 = distinct !{null, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 7023, i32 2}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/ath10k/wow.c", i32 395, i32 20}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/ath10k/wow.c", i32 360, i32 20}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/ath10k/wow.c", i32 375, i32 20}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/ath10k/wow.c", i32 246, i32 19}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/ath10k/wow.c", i32 459, i32 19}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/ath10k/wow.c", i32 465, i32 19}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/ath10k/wow.c", i32 482, i32 19}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/ath10k/wow.c", i32 489, i32 19}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/ath10k/wow.c", i32 440, i32 20}
!92 = !{ptr @ath10k_wowlan_support, !93, !"ath10k_wowlan_support", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/ath10k/wow.c", i32 16, i32 42}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{!"branch_weights", i32 1, i32 2000}
!104 = !{i8 0, i8 2}
