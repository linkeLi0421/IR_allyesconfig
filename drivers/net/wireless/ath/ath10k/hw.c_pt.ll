; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath10k/hw.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath10k/hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ath10k_hw_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath10k_hw_values = type { i32, i8, i8, i8, i16, i8, i32, i32, i8 }
%struct.ath10k_hw_ce_host_wm_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ath10k_hw_ce_misc_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath10k_hw_ce_ctrl1 = type { i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.ath10k_hw_ce_host_ie = type { i32, ptr }
%struct.ath10k_hw_ce_dst_src_wm_regs = type { i32, i32, i32, ptr, ptr }
%struct.ath10k_hw_ce_ctrl1_upd = type { i32, i32, i32 }
%struct.ath10k_hw_ce_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath10k_hw_ce_cmd_halt = type { i32, i32, i32, ptr }
%struct.ath10k_hw_clk_params = type { i32, i32, i32, i32, i32, i32 }
%struct.ath10k_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath10k_hw_ce_regs_addr_map = type { i32, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.91 }
%struct.atomic_t = type { i32 }
%union.anon.91 = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
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
%struct.bmi_segmented_file_header = type { i32, i32, [0 x i8] }
%struct.bmi_segmented_metadata = type { i32, i32, [0 x i8] }
%struct.ath10k_hif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wmi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wmi_cmd_map = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.htt_resp = type <{ %struct.htt_resp_hdr, %union.anon.175 }>
%struct.htt_resp_hdr = type { i8 }
%union.anon.175 = type { %struct.htt_rx_flush, [44 x i8] }
%struct.htt_rx_flush = type { i16, i8, i8, i8, i8, i8 }
%struct.htt_rx_desc = type { %union.anon.166, %struct.anon.167, [64 x i8], [0 x i8] }
%union.anon.166 = type { i32 }
%struct.anon.167 = type { %struct.rx_attention, %struct.rx_frag_info, %struct.rx_mpdu_start, %struct.rx_msdu_start, %struct.rx_msdu_end, %struct.rx_mpdu_end, %struct.rx_ppdu_start, %struct.rx_ppdu_end }
%struct.rx_attention = type { i32 }
%struct.rx_frag_info = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.rx_mpdu_start = type { i32, %union.anon.168 }
%union.anon.168 = type { %struct.anon.169 }
%struct.anon.169 = type { i32, i32 }
%struct.rx_msdu_start = type { %struct.rx_msdu_start_common, %union.anon.171 }
%struct.rx_msdu_start_common = type { i32, i32, i32 }
%union.anon.171 = type { %struct.rx_msdu_start_wcn3990 }
%struct.rx_msdu_start_wcn3990 = type { i32, i32 }
%struct.rx_msdu_end = type { %struct.rx_msdu_end_common, %union.anon.172 }
%struct.rx_msdu_end_common = type { i16, i16, i8, i8, [10 x i8], i32 }
%union.anon.172 = type { %struct.rx_msdu_end_wcn3990 }
%struct.rx_msdu_end_wcn3990 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rx_mpdu_end = type { i32 }
%struct.rx_ppdu_start = type <{ [4 x %struct.anon.173], i8, i16, i8, i32, i32, i32, i32, i32 }>
%struct.anon.173 = type { i8, i8, i8, i8 }
%struct.rx_ppdu_end = type { %struct.rx_ppdu_end_common, %union.anon.174 }
%struct.rx_ppdu_end_common = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.174 = type { %struct.rx_ppdu_end_qca9984, [36 x i8] }
%struct.rx_ppdu_end_qca9984 = type { %struct.rx_pkt_end, %struct.rx_location_info, %struct.rx_phy_ppdu_end, i32, i32, i16, i16 }
%struct.rx_pkt_end = type { i32, i32, i32 }
%struct.rx_location_info = type { i32, i32 }
%struct.rx_phy_ppdu_end = type { i32, i32 }

@qca988x_regs = dso_local constant { %struct.ath10k_hw_regs, [36 x i8] } { %struct.ath10k_hw_regs { i32 16384, i32 20480, i32 36864, i32 131072, i32 356352, i32 357376, i32 358400, i32 359424, i32 360448, i32 361472, i32 362496, i32 363520, i32 364544, i32 0, i32 0, i32 0, i32 0, i32 1, i32 262144, i32 236, i32 48, i32 36912, i32 524288, i32 8, i32 65280, i32 1024, i32 522240, i32 20, i32 0, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@qca6174_regs = dso_local constant { %struct.ath10k_hw_regs, [36 x i8] } { %struct.ath10k_hw_regs { i32 2048, i32 4096, i32 237568, i32 65536, i32 212992, i32 214016, i32 215040, i32 216064, i32 217088, i32 218112, i32 219136, i32 220160, i32 221184, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 240, i32 40, i32 237608, i32 524288, i32 8, i32 65280, i32 1024, i32 522240, i32 20, i32 4210720, i32 4210724, i32 4210728 }, [36 x i8] zeroinitializer }, align 32
@qca99x0_regs = dso_local constant { %struct.ath10k_hw_regs, [36 x i8] } { %struct.ath10k_hw_regs { i32 524288, i32 0, i32 532480, i32 196608, i32 315392, i32 303104, i32 304128, i32 305152, i32 306176, i32 307200, i32 308224, i32 309248, i32 310272, i32 0, i32 0, i32 0, i32 0, i32 1, i32 256, i32 236, i32 262224, i32 262224, i32 0, i32 12, i32 16773120, i32 1048576, i32 1048320, i32 16, i32 0, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@qca4019_regs = dso_local constant { %struct.ath10k_hw_regs, [36 x i8] } { %struct.ath10k_hw_regs { i32 524288, i32 0, i32 532480, i32 196608, i32 315392, i32 303104, i32 304128, i32 305152, i32 306176, i32 307200, i32 308224, i32 309248, i32 310272, i32 0, i32 0, i32 0, i32 0, i32 1, i32 256, i32 236, i32 0, i32 323596, i32 0, i32 12, i32 16773120, i32 1048576, i32 1048320, i32 16, i32 0, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@qca988x_values = dso_local constant { %struct.ath10k_hw_values, [40 x i8] } { %struct.ath10k_hw_values { i32 3, i8 8, i8 7, i8 7, i16 -4, i8 2, i32 0, i32 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@qca6174_values = dso_local constant { %struct.ath10k_hw_values, [40 x i8] } { %struct.ath10k_hw_values { i32 3, i8 8, i8 7, i8 7, i16 -4, i8 2, i32 16, i32 0, i8 1 }, [40 x i8] zeroinitializer }, align 32
@qca99x0_values = dso_local constant { %struct.ath10k_hw_values, [40 x i8] } { %struct.ath10k_hw_values { i32 7, i8 12, i8 12, i8 10, i16 -16, i8 4, i32 0, i32 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@qca9888_values = dso_local constant { %struct.ath10k_hw_values, [40 x i8] } { %struct.ath10k_hw_values { i32 3, i8 12, i8 12, i8 10, i16 -16, i8 4, i32 0, i32 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@qca4019_values = dso_local constant { %struct.ath10k_hw_values, [40 x i8] } { %struct.ath10k_hw_values { i32 0, i8 12, i8 0, i8 10, i16 -16, i8 4, i32 0, i32 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@wcn3990_regs = dso_local constant { %struct.ath10k_hw_regs, [36 x i8] } { %struct.ath10k_hw_regs { i32 0, i32 0, i32 0, i32 0, i32 2408448, i32 2359296, i32 2363392, i32 2367488, i32 2371584, i32 2375680, i32 2379776, i32 2383872, i32 2387968, i32 2392064, i32 2396160, i32 2400256, i32 2404352, i32 1, i32 256, i32 240, i32 0, i32 0, i32 0, i32 12, i32 16773120, i32 1048576, i32 0, i32 0, i32 0, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@wcn3990_wm_reg = internal global { %struct.ath10k_hw_ce_host_wm_regs, [36 x i8] } { %struct.ath10k_hw_ce_host_wm_regs { i32 16, i32 8, i32 4, i32 2, i32 1, i32 30, i32 48 }, [36 x i8] zeroinitializer }, align 32
@wcn3990_misc_reg = internal global { %struct.ath10k_hw_ce_misc_regs, [32 x i8] } { %struct.ath10k_hw_ce_misc_regs { i32 256, i32 512, i32 256, i32 128, i32 64, i32 32, i32 992, i32 56 }, [32 x i8] zeroinitializer }, align 32
@wcn3990_ctrl1 = internal global { %struct.ath10k_hw_ce_ctrl1, [56 x i8] } { %struct.ath10k_hw_ce_ctrl1 { i32 24, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @wcn3990_src_ring, ptr @wcn3990_dst_ring, ptr @wcn3990_dmax }, [56 x i8] zeroinitializer }, align 32
@wcn3990_host_ie = internal global { %struct.ath10k_hw_ce_host_ie, [24 x i8] } { %struct.ath10k_hw_ce_host_ie { i32 0, ptr @wcn3990_host_ie_cc }, [24 x i8] zeroinitializer }, align 32
@wcn3990_wm_src_ring = internal global { %struct.ath10k_hw_ce_dst_src_wm_regs, [44 x i8] } { %struct.ath10k_hw_ce_dst_src_wm_regs { i32 76, i32 0, i32 0, ptr @wcn3990_src_wm_low, ptr @wcn3990_src_wm_high }, [44 x i8] zeroinitializer }, align 32
@wcn3990_wm_dst_ring = internal global { %struct.ath10k_hw_ce_dst_src_wm_regs, [44 x i8] } { %struct.ath10k_hw_ce_dst_src_wm_regs { i32 80, i32 0, i32 0, ptr @wcn3990_dst_wm_low, ptr @wcn3990_dst_wm_high }, [44 x i8] zeroinitializer }, align 32
@wcn3990_ctrl1_upd = internal global { %struct.ath10k_hw_ce_ctrl1_upd, [20 x i8] } { %struct.ath10k_hw_ce_ctrl1_upd { i32 19, i32 524288, i32 0 }, [20 x i8] zeroinitializer }, align 32
@wcn3990_ce_regs = dso_local constant { %struct.ath10k_hw_ce_regs, [60 x i8] } { %struct.ath10k_hw_ce_regs { i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 0, i32 52, i32 60, i32 64, i32 68, i32 72, i32 0, i32 0, i32 2408452, i32 2408456, i32 44, ptr @wcn3990_wm_reg, ptr @wcn3990_misc_reg, ptr @wcn3990_ctrl1, ptr null, ptr @wcn3990_host_ie, ptr @wcn3990_wm_src_ring, ptr @wcn3990_wm_dst_ring, ptr @wcn3990_ctrl1_upd }, [60 x i8] zeroinitializer }, align 32
@wcn3990_values = dso_local constant { %struct.ath10k_hw_values, [40 x i8] } { %struct.ath10k_hw_values { i32 5, i8 12, i8 12, i8 12, i16 -16, i8 4, i32 0, i32 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@qcax_wm_reg = internal global { %struct.ath10k_hw_ce_host_wm_regs, [36 x i8] } { %struct.ath10k_hw_ce_host_wm_regs { i32 16, i32 8, i32 4, i32 2, i32 1, i32 30, i32 48 }, [36 x i8] zeroinitializer }, align 32
@qcax_misc_reg = internal global { %struct.ath10k_hw_ce_misc_regs, [32 x i8] } { %struct.ath10k_hw_ce_misc_regs { i32 1024, i32 512, i32 256, i32 128, i32 64, i32 32, i32 2016, i32 56 }, [32 x i8] zeroinitializer }, align 32
@qcax_ctrl1 = internal global { %struct.ath10k_hw_ce_ctrl1, [56 x i8] } { %struct.ath10k_hw_ce_ctrl1 { i32 16, i32 524287, i32 524287, i32 0, i32 524287, i32 -1, i32 128, ptr @qcax_src_ring, ptr @qcax_dst_ring, ptr @qcax_dmax }, [56 x i8] zeroinitializer }, align 32
@qcax_cmd_halt = internal global { %struct.ath10k_hw_ce_cmd_halt, [16 x i8] } { %struct.ath10k_hw_ce_cmd_halt { i32 0, i32 0, i32 1, ptr @qcax_cmd_halt_status }, [16 x i8] zeroinitializer }, align 32
@qcax_host_ie = internal global { %struct.ath10k_hw_ce_host_ie, [24 x i8] } { %struct.ath10k_hw_ce_host_ie { i32 0, ptr @qcax_host_ie_cc }, [24 x i8] zeroinitializer }, align 32
@qcax_wm_src_ring = internal global { %struct.ath10k_hw_ce_dst_src_wm_regs, [44 x i8] } { %struct.ath10k_hw_ce_dst_src_wm_regs { i32 76, i32 0, i32 0, ptr @qcax_src_wm_low, ptr @qcax_src_wm_high }, [44 x i8] zeroinitializer }, align 32
@qcax_wm_dst_ring = internal global { %struct.ath10k_hw_ce_dst_src_wm_regs, [44 x i8] } { %struct.ath10k_hw_ce_dst_src_wm_regs { i32 80, i32 0, i32 0, ptr @qcax_dst_wm_low, ptr @qcax_dst_wm_high }, [44 x i8] zeroinitializer }, align 32
@qcax_ce_regs = dso_local constant { %struct.ath10k_hw_ce_regs, [60 x i8] } { %struct.ath10k_hw_ce_regs { i32 0, i32 0, i32 4, i32 8, i32 0, i32 12, i32 24, i32 52, i32 60, i32 64, i32 68, i32 72, i32 0, i32 0, i32 0, i32 0, i32 44, ptr @qcax_wm_reg, ptr @qcax_misc_reg, ptr @qcax_ctrl1, ptr @qcax_cmd_halt, ptr @qcax_host_ie, ptr @qcax_wm_src_ring, ptr @qcax_wm_dst_ring, ptr null }, [60 x i8] zeroinitializer }, align 32
@qca6174_clk = dso_local constant { [8 x %struct.ath10k_hw_clk_params], [32 x i8] } { [8 x %struct.ath10k_hw_clk_params] [%struct.ath10k_hw_clk_params { i32 48000000, i32 14, i32 174760, i32 2400, i32 0, i32 1 }, %struct.ath10k_hw_clk_params { i32 19200000, i32 36, i32 174760, i32 960, i32 0, i32 1 }, %struct.ath10k_hw_clk_params { i32 24000000, i32 29, i32 87377, i32 1200, i32 0, i32 1 }, %struct.ath10k_hw_clk_params { i32 26000000, i32 27, i32 20164, i32 1300, i32 0, i32 1 }, %struct.ath10k_hw_clk_params { i32 37400000, i32 18, i32 215881, i32 1870, i32 0, i32 1 }, %struct.ath10k_hw_clk_params { i32 38400000, i32 18, i32 87377, i32 1920, i32 0, i32 1 }, %struct.ath10k_hw_clk_params { i32 40000000, i32 18, i32 157285, i32 2000, i32 0, i32 1 }, %struct.ath10k_hw_clk_params { i32 52000000, i32 27, i32 20164, i32 2600, i32 0, i32 1 }], [32 x i8] zeroinitializer }, align 32
@ath10k_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Not a supported firmware, magic_num:0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Not a supported firmware, file_flags:0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"firmware segment is truncated: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"firmware has unsupported segment:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"firmware has invalid segment length, %d > %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"failed to download firmware via diag interface:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"boot firmware fast diag download successfully.\0A\00", [48 x i8] zeroinitializer }, align 32
@qca988x_ops = dso_local constant { %struct.ath10k_hw_ops, [40 x i8] } { %struct.ath10k_hw_ops { ptr null, ptr @ath10k_hw_qca988x_set_coverage_class, ptr null, ptr null, ptr null, ptr @ath10k_htt_tx_rssi_enable }, [40 x i8] zeroinitializer }, align 32
@qca99x0_ops = dso_local constant { %struct.ath10k_hw_ops, [40 x i8] } { %struct.ath10k_hw_ops { ptr @ath10k_qca99x0_rx_desc_get_l3_pad_bytes, ptr null, ptr null, ptr @ath10k_qca99x0_rx_desc_msdu_limit_error, ptr null, ptr @ath10k_htt_tx_rssi_enable }, [40 x i8] zeroinitializer }, align 32
@qca6174_ops = dso_local constant { %struct.ath10k_hw_ops, [40 x i8] } { %struct.ath10k_hw_ops { ptr null, ptr @ath10k_hw_qca988x_set_coverage_class, ptr @ath10k_hw_qca6174_enable_pll_clock, ptr null, ptr null, ptr @ath10k_htt_tx_rssi_enable }, [40 x i8] zeroinitializer }, align 32
@qca6174_sdio_ops = dso_local constant { %struct.ath10k_hw_ops, [40 x i8] } { %struct.ath10k_hw_ops { ptr null, ptr null, ptr @ath10k_hw_qca6174_enable_pll_clock, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wcn3990_ops = dso_local constant { %struct.ath10k_hw_ops, [40 x i8] } { %struct.ath10k_hw_ops { ptr null, ptr null, ptr null, ptr null, ptr @ath10k_get_htt_tx_data_rssi_pad, ptr @ath10k_htt_tx_rssi_enable_wcn3990 }, [40 x i8] zeroinitializer }, align 32
@wcn3990_src_ring = internal global { %struct.ath10k_hw_ce_regs_addr_map, [20 x i8] } { %struct.ath10k_hw_ce_regs_addr_map { i32 16, i32 16, i32 131072 }, [20 x i8] zeroinitializer }, align 32
@wcn3990_dst_ring = internal global { %struct.ath10k_hw_ce_regs_addr_map, [20 x i8] } { %struct.ath10k_hw_ce_regs_addr_map { i32 18, i32 18, i32 262144 }, [20 x i8] zeroinitializer }, align 32
@wcn3990_dmax = internal global { %struct.ath10k_hw_ce_regs_addr_map, [20 x i8] } { %struct.ath10k_hw_ce_regs_addr_map { i32 0, i32 0, i32 65535 }, [20 x i8] zeroinitializer }, align 32
@wcn3990_host_ie_cc = internal global { %struct.ath10k_hw_ce_regs_addr_map, [20 x i8] } { %struct.ath10k_hw_ce_regs_addr_map { i32 0, i32 0, i32 1 }, [20 x i8] zeroinitializer }, align 32
@wcn3990_src_wm_low = internal global { %struct.ath10k_hw_ce_regs_addr_map, [20 x i8] } { %struct.ath10k_hw_ce_regs_addr_map { i32 0, i32 16, i32 -65536 }, [20 x i8] zeroinitializer }, align 32
@wcn3990_src_wm_high = internal global { %struct.ath10k_hw_ce_regs_addr_map, [20 x i8] } { %struct.ath10k_hw_ce_regs_addr_map { i32 15, i32 0, i32 65535 }, [20 x i8] zeroinitializer }, align 32
@wcn3990_dst_wm_low = internal global { %struct.ath10k_hw_ce_regs_addr_map, [20 x i8] } { %struct.ath10k_hw_ce_regs_addr_map { i32 0, i32 16, i32 -65536 }, [20 x i8] zeroinitializer }, align 32
@wcn3990_dst_wm_high = internal global { %struct.ath10k_hw_ce_regs_addr_map, [20 x i8] } { %struct.ath10k_hw_ce_regs_addr_map { i32 15, i32 0, i32 65535 }, [20 x i8] zeroinitializer }, align 32
@qcax_src_ring = internal global { %struct.ath10k_hw_ce_regs_addr_map, [20 x i8] } { %struct.ath10k_hw_ce_regs_addr_map { i32 16, i32 16, i32 65536 }, [20 x i8] zeroinitializer }, align 32
@qcax_dst_ring = internal global { %struct.ath10k_hw_ce_regs_addr_map, [20 x i8] } { %struct.ath10k_hw_ce_regs_addr_map { i32 17, i32 17, i32 131072 }, [20 x i8] zeroinitializer }, align 32
@qcax_dmax = internal global { %struct.ath10k_hw_ce_regs_addr_map, [20 x i8] } { %struct.ath10k_hw_ce_regs_addr_map { i32 15, i32 0, i32 65535 }, [20 x i8] zeroinitializer }, align 32
@qcax_cmd_halt_status = internal global { %struct.ath10k_hw_ce_regs_addr_map, [20 x i8] } { %struct.ath10k_hw_ce_regs_addr_map { i32 3, i32 3, i32 8 }, [20 x i8] zeroinitializer }, align 32
@qcax_host_ie_cc = internal global { %struct.ath10k_hw_ce_regs_addr_map, [20 x i8] } { %struct.ath10k_hw_ce_regs_addr_map { i32 0, i32 0, i32 1 }, [20 x i8] zeroinitializer }, align 32
@qcax_src_wm_low = internal global { %struct.ath10k_hw_ce_regs_addr_map, [20 x i8] } { %struct.ath10k_hw_ce_regs_addr_map { i32 31, i32 16, i32 -65536 }, [20 x i8] zeroinitializer }, align 32
@qcax_src_wm_high = internal global { %struct.ath10k_hw_ce_regs_addr_map, [20 x i8] } { %struct.ath10k_hw_ce_regs_addr_map { i32 15, i32 0, i32 65535 }, [20 x i8] zeroinitializer }, align 32
@qcax_dst_wm_low = internal global { %struct.ath10k_hw_ce_regs_addr_map, [20 x i8] } { %struct.ath10k_hw_ce_regs_addr_map { i32 0, i32 16, i32 -65536 }, [20 x i8] zeroinitializer }, align 32
@qcax_dst_wm_high = internal global { %struct.ath10k_hw_ce_regs_addr_map, [20 x i8] } { %struct.ath10k_hw_ce_regs_addr_map { i32 15, i32 0, i32 65535 }, [20 x i8] zeroinitializer }, align 32
@__tracepoint_ath10k_log_dbg = external dso_local global %struct.tracepoint, align 4
@.str.7 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"failed to download the first %d bytes segment to address:0x%x: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"failed to download the second %d bytes segment to address:0x%x: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"failed to download the only %d bytes segment to address:0x%x: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hif write32 not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"failed to set coverage class: expected integer microsecond value in register\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"failed to set coverage class: expected slot time of 9 or 20us in HW register. It is %uus.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hif read32 not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 32, i64 4294967292, i64 4294967293, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 16, i64 9, i64 20]
@___asan_gen_.17 = private unnamed_addr constant [13 x i8] c"qca988x_regs\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 15, i32 29 }
@___asan_gen_.20 = private unnamed_addr constant [13 x i8] c"qca6174_regs\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 42, i32 29 }
@___asan_gen_.23 = private unnamed_addr constant [13 x i8] c"qca99x0_regs\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 72, i32 29 }
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"qca4019_regs\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 109, i32 29 }
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"qca988x_values\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 142, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"qca6174_values\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 151, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"qca99x0_values\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 163, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"qca9888_values\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 172, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant [15 x i8] c"qca4019_values\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 181, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant [13 x i8] c"wcn3990_regs\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 188, i32 29 }
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"wcn3990_wm_reg\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 246, i32 41 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"wcn3990_misc_reg\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 256, i32 38 }
@___asan_gen_.53 = private unnamed_addr constant [14 x i8] c"wcn3990_ctrl1\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 231, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant [16 x i8] c"wcn3990_host_ie\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 242, i32 36 }
@___asan_gen_.59 = private unnamed_addr constant [20 x i8] c"wcn3990_wm_src_ring\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 279, i32 44 }
@___asan_gen_.62 = private unnamed_addr constant [20 x i8] c"wcn3990_wm_dst_ring\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 298, i32 44 }
@___asan_gen_.65 = private unnamed_addr constant [18 x i8] c"wcn3990_ctrl1_upd\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 306, i32 38 }
@___asan_gen_.68 = private unnamed_addr constant [16 x i8] c"wcn3990_ce_regs\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 312, i32 32 }
@___asan_gen_.71 = private unnamed_addr constant [15 x i8] c"wcn3990_values\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 336, i32 31 }
@___asan_gen_.74 = private unnamed_addr constant [12 x i8] c"qcax_wm_reg\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 400, i32 41 }
@___asan_gen_.77 = private unnamed_addr constant [14 x i8] c"qcax_misc_reg\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 410, i32 38 }
@___asan_gen_.80 = private unnamed_addr constant [11 x i8] c"qcax_ctrl1\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 363, i32 34 }
@___asan_gen_.83 = private unnamed_addr constant [14 x i8] c"qcax_cmd_halt\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 382, i32 37 }
@___asan_gen_.86 = private unnamed_addr constant [13 x i8] c"qcax_host_ie\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 395, i32 36 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"qcax_wm_src_ring\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 433, i32 44 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"qcax_wm_dst_ring\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 452, i32 44 }
@___asan_gen_.95 = private unnamed_addr constant [13 x i8] c"qcax_ce_regs\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 460, i32 32 }
@___asan_gen_.98 = private unnamed_addr constant [12 x i8] c"qca6174_clk\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 481, i32 35 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1024, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1031, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1042, i32 20 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1067, i32 9 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1075, i32 10 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1088, i32 10 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1101, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [12 x i8] c"qca988x_ops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1132, i32 28 }
@___asan_gen_.125 = private unnamed_addr constant [12 x i8] c"qca99x0_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1149, i32 28 }
@___asan_gen_.128 = private unnamed_addr constant [12 x i8] c"qca6174_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1155, i32 28 }
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"qca6174_sdio_ops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1161, i32 28 }
@___asan_gen_.134 = private unnamed_addr constant [12 x i8] c"wcn3990_ops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1165, i32 28 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"wcn3990_src_ring\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 213, i32 42 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"wcn3990_dst_ring\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 219, i32 42 }
@___asan_gen_.143 = private unnamed_addr constant [13 x i8] c"wcn3990_dmax\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 225, i32 42 }
@___asan_gen_.146 = private unnamed_addr constant [19 x i8] c"wcn3990_host_ie_cc\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 238, i32 42 }
@___asan_gen_.149 = private unnamed_addr constant [19 x i8] c"wcn3990_src_wm_low\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 267, i32 42 }
@___asan_gen_.152 = private unnamed_addr constant [20 x i8] c"wcn3990_src_wm_high\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 273, i32 42 }
@___asan_gen_.155 = private unnamed_addr constant [19 x i8] c"wcn3990_dst_wm_low\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 287, i32 42 }
@___asan_gen_.158 = private unnamed_addr constant [20 x i8] c"wcn3990_dst_wm_high\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 292, i32 42 }
@___asan_gen_.161 = private unnamed_addr constant [14 x i8] c"qcax_src_ring\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 345, i32 42 }
@___asan_gen_.164 = private unnamed_addr constant [14 x i8] c"qcax_dst_ring\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 351, i32 42 }
@___asan_gen_.167 = private unnamed_addr constant [10 x i8] c"qcax_dmax\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 357, i32 42 }
@___asan_gen_.170 = private unnamed_addr constant [21 x i8] c"qcax_cmd_halt_status\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 376, i32 42 }
@___asan_gen_.173 = private unnamed_addr constant [16 x i8] c"qcax_host_ie_cc\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 389, i32 42 }
@___asan_gen_.176 = private unnamed_addr constant [16 x i8] c"qcax_src_wm_low\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 421, i32 42 }
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"qcax_src_wm_high\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 427, i32 42 }
@___asan_gen_.182 = private unnamed_addr constant [16 x i8] c"qcax_dst_wm_low\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 441, i32 42 }
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"qcax_dst_wm_high\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 446, i32 42 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 952, i32 9 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 966, i32 9 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 976, i32 9 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 224, i32 19 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 652, i32 8 }
@___asan_gen_.204 = private constant [40 x i8] c"../drivers/net/wireless/ath/ath10k/hw.c\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 661, i32 8 }
@___asan_gen_.206 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [41 x i8] c"../drivers/net/wireless/ath/ath10k/hif.h\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 213, i32 19 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @qca988x_regs, ptr @qca6174_regs, ptr @qca99x0_regs, ptr @qca4019_regs, ptr @qca988x_values, ptr @qca6174_values, ptr @qca99x0_values, ptr @qca9888_values, ptr @qca4019_values, ptr @wcn3990_regs, ptr @wcn3990_wm_reg, ptr @wcn3990_misc_reg, ptr @wcn3990_ctrl1, ptr @wcn3990_host_ie, ptr @wcn3990_wm_src_ring, ptr @wcn3990_wm_dst_ring, ptr @wcn3990_ctrl1_upd, ptr @wcn3990_ce_regs, ptr @wcn3990_values, ptr @qcax_wm_reg, ptr @qcax_misc_reg, ptr @qcax_ctrl1, ptr @qcax_cmd_halt, ptr @qcax_host_ie, ptr @qcax_wm_src_ring, ptr @qcax_wm_dst_ring, ptr @qcax_ce_regs, ptr @qca6174_clk, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @qca988x_ops, ptr @qca99x0_ops, ptr @qca6174_ops, ptr @qca6174_sdio_ops, ptr @wcn3990_ops, ptr @wcn3990_src_ring, ptr @wcn3990_dst_ring, ptr @wcn3990_dmax, ptr @wcn3990_host_ie_cc, ptr @wcn3990_src_wm_low, ptr @wcn3990_src_wm_high, ptr @wcn3990_dst_wm_low, ptr @wcn3990_dst_wm_high, ptr @qcax_src_ring, ptr @qcax_dst_ring, ptr @qcax_dmax, ptr @qcax_cmd_halt_status, ptr @qcax_host_ie_cc, ptr @qcax_src_wm_low, ptr @qcax_src_wm_high, ptr @qcax_dst_wm_low, ptr @qcax_dst_wm_high, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca988x_regs to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca6174_regs to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca99x0_regs to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca4019_regs to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca988x_values to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca6174_values to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca99x0_values to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca9888_values to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca4019_values to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn3990_regs to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn3990_wm_reg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn3990_misc_reg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn3990_ctrl1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn3990_host_ie to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn3990_wm_src_ring to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn3990_wm_dst_ring to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn3990_ctrl1_upd to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn3990_ce_regs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn3990_values to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcax_wm_reg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcax_misc_reg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcax_ctrl1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcax_cmd_halt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcax_host_ie to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcax_wm_src_ring to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcax_wm_dst_ring to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcax_ce_regs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca6174_clk to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca988x_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca99x0_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca6174_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qca6174_sdio_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn3990_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn3990_src_ring to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn3990_dst_ring to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn3990_dmax to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn3990_host_ie_cc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn3990_src_wm_low to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn3990_src_wm_high to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn3990_dst_wm_low to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn3990_dst_wm_high to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcax_src_ring to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcax_dst_ring to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcax_dmax to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcax_cmd_halt_status to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcax_host_ie_cc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcax_src_wm_low to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcax_src_wm_high to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcax_dst_wm_low to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcax_dst_wm_high to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath10k_hw_fill_survey_time(ptr nocapture noundef readonly %ar, ptr nocapture noundef %survey, i32 noundef %cc, i32 noundef %rcc, i32 noundef %cc_prev, i32 noundef %rcc_prev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %filled = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 8
  %0 = ptrtoint ptr %filled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %filled, align 8
  %or = or i32 %1, 12
  store i32 %or, ptr %filled, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cc, i32 %cc_prev)
  %cmp = icmp ult i32 %cc, %cc_prev
  call void @__sanitizer_cov_trace_cmp4(i32 %rcc, i32 %rcc_prev)
  %cmp1 = icmp ult i32 %rcc, %rcc_prev
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then:                                          ; preds = %entry
  %cc_wraparound_type = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 45, i32 7
  %2 = ptrtoint ptr %cc_wraparound_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cc_wraparound_type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.then.if.end12_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
  ]

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

sw.bb:                                            ; preds = %if.then
  br i1 %cmp, label %if.then3, label %sw.bb.if.end12_crit_edge

sw.bb.if.end12_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then3:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %or, -9
  %5 = ptrtoint ptr %filled to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and, ptr %filled, align 8
  br label %if.end12

sw.bb5:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select = select i1 %cmp, i32 2147483647, i32 0
  %spec.select38.neg = select i1 %cmp1, i32 2147483647, i32 0
  br label %if.end12

if.end12:                                         ; preds = %sw.bb5, %if.then3, %sw.bb.if.end12_crit_edge, %if.then.if.end12_crit_edge, %entry.if.end12_crit_edge
  %cc_fix.1 = phi i32 [ 0, %if.then.if.end12_crit_edge ], [ 2147483647, %if.then3 ], [ 0, %sw.bb.if.end12_crit_edge ], [ 0, %entry.if.end12_crit_edge ], [ %spec.select, %sw.bb5 ]
  %rcc_fix.0.neg.neg39 = phi i32 [ 0, %if.then.if.end12_crit_edge ], [ 0, %if.then3 ], [ 0, %sw.bb.if.end12_crit_edge ], [ 0, %entry.if.end12_crit_edge ], [ %spec.select38.neg, %sw.bb5 ]
  %sub.neg = sub i32 %cc, %cc_prev
  %sub13 = add i32 %sub.neg, %cc_fix.1
  %sub14.neg = sub i32 %rcc, %rcc_prev
  %sub15 = add i32 %sub14.neg, %rcc_fix.0.neg.neg39
  %channel_counters_freq_hz = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 45, i32 10
  %6 = ptrtoint ptr %channel_counters_freq_hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel_counters_freq_hz, align 4
  %div = udiv i32 %sub13, %7
  %conv = zext i32 %div to i64
  %time = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 1
  %8 = ptrtoint ptr %time to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %time, align 8
  %9 = load i32, ptr %channel_counters_freq_hz, align 4
  %div19 = udiv i32 %sub15, %9
  %conv20 = zext i32 %div19 to i64
  %time_busy = getelementptr inbounds %struct.survey_info, ptr %survey, i32 0, i32 2
  %10 = ptrtoint ptr %time_busy to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv20, ptr %time_busy, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_hw_diag_fast_download(ptr noundef %ar, i32 noundef %address, ptr noundef %buffer, i32 noundef %length) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %length)
  %cmp = icmp ult i32 %length, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1397181780, i32 %1)
  %cmp1.not = icmp eq i32 %1, 1397181780
  br i1 %cmp1.not, label %if.end6, label %do.body

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %2 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %do.body.if.then3_crit_edge

do.body.if.then3_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_hw_diag_fast_download, %if.then3)) #6
          to label %cleanup [label %if.then3], !srcloc !137

if.then3:                                         ; preds = %lor.lhs.false, %do.body.if.then3_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buffer, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef %4) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %file_flags = getelementptr inbounds %struct.bmi_segmented_file_header, ptr %buffer, i32 0, i32 1
  %5 = ptrtoint ptr %file_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %file_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp7.not = icmp eq i32 %6, 0
  br i1 %cmp7.not, label %if.end19, label %do.body9

do.body9:                                         ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %7 = load i32, ptr @ath10k_debug_mask, align 4
  %and10 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %do.body9.if.then14_crit_edge

do.body9.if.then14_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

lor.lhs.false12:                                  ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_hw_diag_fast_download, %if.then14)) #6
          to label %cleanup [label %if.then14], !srcloc !137

if.then14:                                        ; preds = %lor.lhs.false12, %do.body9.if.then14_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %file_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %file_flags, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %9) #6
  br label %cleanup

if.end19:                                         ; preds = %if.end6
  %sub = add i32 %length, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp20.not147 = icmp eq i32 %sub, 0
  br i1 %cmp20.not147, label %if.end19.do.body46_crit_edge, label %while.body.lr.ph

if.end19.do.body46_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body46

while.body.lr.ph:                                 ; preds = %if.end19
  %data = getelementptr inbounds %struct.bmi_segmented_file_header, ptr %buffer, i32 0, i32 2
  %ops.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 34, i32 1
  %regs.i.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 37
  br label %while.body

while.body:                                       ; preds = %if.end42.while.body_crit_edge, %while.body.lr.ph
  %metadata.0149 = phi ptr [ %data, %while.body.lr.ph ], [ %add.ptr, %if.end42.while.body_crit_edge ]
  %left.0148 = phi i32 [ %sub, %while.body.lr.ph ], [ %sub43, %if.end42.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %left.0148)
  %cmp21 = icmp ult i32 %left.0148, 8
  br i1 %cmp21, label %while.end.thread124, label %if.end23

while.end.thread124:                              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.2, i32 noundef %left.0148) #6
  br label %cleanup

if.end23:                                         ; preds = %while.body
  %10 = ptrtoint ptr %metadata.0149 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %metadata.0149, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %length24 = getelementptr inbounds %struct.bmi_segmented_metadata, ptr %metadata.0149, i32 0, i32 1
  %13 = ptrtoint ptr %length24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length24, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %data25 = getelementptr inbounds %struct.bmi_segmented_metadata, ptr %metadata.0149, i32 0, i32 2
  %sub27 = add i32 %left.0148, -8
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %15, label %sw.default [
    i32 -3, label %sw.epilog
    i32 -1, label %if.end23.do.body46_crit_edge
    i32 -2, label %if.end23.sw.bb30_crit_edge
    i32 -4, label %if.end23.sw.bb30_crit_edge219
  ]

if.end23.sw.bb30_crit_edge219:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb30

if.end23.sw.bb30_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb30

if.end23.do.body46_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body46

sw.bb30:                                          ; preds = %if.end23.sw.bb30_crit_edge, %if.end23.sw.bb30_crit_edge219
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.3, i32 noundef %15) #6
  br label %cleanup

sw.default:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %sub27)
  %cmp31 = icmp ugt i32 %15, %sub27
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.4, i32 noundef %15, i32 noundef %sub27) #6
  br label %cleanup

if.end33:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_const_cmp4(i32 5242879, i32 %12)
  %cmp.i = icmp ugt i32 %12, 5242879
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end33
  %and.i.i = and i32 %12, 1048575
  %and13.i.i = lshr i32 %12, 20
  %shr.i.i = and i32 %and13.i.i, 15
  %17 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i.i, align 4
  %write32.i.i.i.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %18, i32 0, i32 13
  %19 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write32.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.10) #6
  br label %ath10k_hw_map_target_mem.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i.i.i, align 4
  %soc_core_base_address.i.i.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %soc_core_base_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %soc_core_base_address.i.i.i, align 4
  %add.i.i.i = add i32 %24, 24
  tail call void %20(ptr noundef %ar, i32 noundef %add.i.i.i, i32 noundef %shr.i.i) #6
  br label %ath10k_hw_map_target_mem.exit.i.i

ath10k_hw_map_target_mem.exit.i.i:                ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %add.i.i = add i32 %and.i.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %add.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i, 1048576
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %ath10k_hw_map_target_mem.exit.i.i
  %sub.i.i = sub nuw nsw i32 1048576, %and.i.i
  %sub14.i.i = sub i32 %15, %sub.i.i
  %25 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i.i, align 4
  %diag_write.i.i.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %diag_write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %diag_write.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.if.then15.i.i_crit_edge, label %ath10k_hif_diag_write.exit.i.i

if.then.i.i.if.then15.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15.i.i

ath10k_hif_diag_write.exit.i.i:                   ; preds = %if.then.i.i
  %call.i.i.i = tail call i32 %28(ptr noundef %ar, i32 noundef %12, ptr noundef %data25, i32 noundef %sub.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %ath10k_hif_diag_write.exit.i.i.if.then15.i.i_crit_edge

ath10k_hif_diag_write.exit.i.i.if.then15.i.i_crit_edge: ; preds = %ath10k_hif_diag_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15.i.i

if.then15.i.i:                                    ; preds = %ath10k_hif_diag_write.exit.i.i.if.then15.i.i_crit_edge, %if.then.i.i.if.then15.i.i_crit_edge
  %retval.0.i128.i.i = phi i32 [ %call.i.i.i, %ath10k_hif_diag_write.exit.i.i.if.then15.i.i_crit_edge ], [ -95, %if.then.i.i.if.then15.i.i_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.7, i32 noundef %sub.i.i, i32 noundef %12, i32 noundef %retval.0.i128.i.i) #6
  br label %done.i.i

if.end.i.i:                                       ; preds = %ath10k_hif_diag_write.exit.i.i
  %29 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i.i, align 4
  %write32.i.i95.i.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %30, i32 0, i32 13
  %31 = ptrtoint ptr %write32.i.i95.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write32.i.i95.i.i, align 4
  %tobool.not.i.i96.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i96.i.i, label %if.then.i.i97.i.i, label %if.end.i.i101.i.i

if.then.i.i97.i.i:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.10) #6
  br label %ath10k_hw_map_target_mem.exit102.i.i

if.end.i.i101.i.i:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add34.i.i = add nuw nsw i32 %shr.i.i, 1
  %33 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i.i.i, align 4
  %soc_core_base_address.i99.i.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %soc_core_base_address.i99.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %soc_core_base_address.i99.i.i, align 4
  %add.i100.i.i = add i32 %36, 24
  tail call void %32(ptr noundef %ar, i32 noundef %add.i100.i.i, i32 noundef %add34.i.i) #6
  br label %ath10k_hw_map_target_mem.exit102.i.i

ath10k_hw_map_target_mem.exit102.i.i:             ; preds = %if.end.i.i101.i.i, %if.then.i.i97.i.i
  %and35.i.i = and i32 %12, -1048576
  %37 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i.i, align 4
  %diag_write.i104.i.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %diag_write.i104.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %diag_write.i104.i.i, align 4
  %tobool.not.i105.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i105.i.i, label %ath10k_hw_map_target_mem.exit102.i.i.if.then38.i.i_crit_edge, label %ath10k_hif_diag_write.exit109.i.i

ath10k_hw_map_target_mem.exit102.i.i.if.then38.i.i_crit_edge: ; preds = %ath10k_hw_map_target_mem.exit102.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38.i.i

ath10k_hif_diag_write.exit109.i.i:                ; preds = %ath10k_hw_map_target_mem.exit102.i.i
  %add.ptr.i.i = getelementptr i8, ptr %data25, i32 %sub.i.i
  %call.i106.i.i = tail call i32 %40(ptr noundef %ar, i32 noundef %and35.i.i, ptr noundef %add.ptr.i.i, i32 noundef %sub14.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106.i.i)
  %tobool37.not.i.i = icmp eq i32 %call.i106.i.i, 0
  br i1 %tobool37.not.i.i, label %ath10k_hif_diag_write.exit109.i.i.done.i.i_crit_edge, label %ath10k_hif_diag_write.exit109.i.i.if.then38.i.i_crit_edge

ath10k_hif_diag_write.exit109.i.i.if.then38.i.i_crit_edge: ; preds = %ath10k_hif_diag_write.exit109.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38.i.i

ath10k_hif_diag_write.exit109.i.i.done.i.i_crit_edge: ; preds = %ath10k_hif_diag_write.exit109.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %done.i.i

if.then38.i.i:                                    ; preds = %ath10k_hif_diag_write.exit109.i.i.if.then38.i.i_crit_edge, %ath10k_hw_map_target_mem.exit102.i.i.if.then38.i.i_crit_edge
  %retval.0.i108131.i.i = phi i32 [ %call.i106.i.i, %ath10k_hif_diag_write.exit109.i.i.if.then38.i.i_crit_edge ], [ -95, %ath10k_hw_map_target_mem.exit102.i.i.if.then38.i.i_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.8, i32 noundef %sub14.i.i, i32 noundef %and35.i.i, i32 noundef %retval.0.i108131.i.i) #6
  br label %done.i.i

if.else.i.i:                                      ; preds = %ath10k_hw_map_target_mem.exit.i.i
  %41 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i.i, align 4
  %diag_write.i111.i.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %diag_write.i111.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %diag_write.i111.i.i, align 4
  %tobool.not.i112.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i112.i.i, label %if.else.i.i.if.then43.i.i_crit_edge, label %ath10k_hif_diag_write.exit116.i.i

if.else.i.i.if.then43.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43.i.i

ath10k_hif_diag_write.exit116.i.i:                ; preds = %if.else.i.i
  %call.i113.i.i = tail call i32 %44(ptr noundef %ar, i32 noundef %12, ptr noundef %data25, i32 noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113.i.i)
  %tobool42.not.i.i = icmp eq i32 %call.i113.i.i, 0
  br i1 %tobool42.not.i.i, label %ath10k_hif_diag_write.exit116.i.i.done.i.i_crit_edge, label %ath10k_hif_diag_write.exit116.i.i.if.then43.i.i_crit_edge

ath10k_hif_diag_write.exit116.i.i.if.then43.i.i_crit_edge: ; preds = %ath10k_hif_diag_write.exit116.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then43.i.i

ath10k_hif_diag_write.exit116.i.i.done.i.i_crit_edge: ; preds = %ath10k_hif_diag_write.exit116.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %done.i.i

if.then43.i.i:                                    ; preds = %ath10k_hif_diag_write.exit116.i.i.if.then43.i.i_crit_edge, %if.else.i.i.if.then43.i.i_crit_edge
  %retval.0.i115134.i.i = phi i32 [ %call.i113.i.i, %ath10k_hif_diag_write.exit116.i.i.if.then43.i.i_crit_edge ], [ -95, %if.else.i.i.if.then43.i.i_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.9, i32 noundef %15, i32 noundef %12, i32 noundef %retval.0.i115134.i.i) #6
  br label %done.i.i

done.i.i:                                         ; preds = %if.then43.i.i, %ath10k_hif_diag_write.exit116.i.i.done.i.i_crit_edge, %if.then38.i.i, %ath10k_hif_diag_write.exit109.i.i.done.i.i_crit_edge, %if.then15.i.i
  %ret.0.i.i = phi i32 [ %retval.0.i128.i.i, %if.then15.i.i ], [ %retval.0.i108131.i.i, %if.then38.i.i ], [ 0, %ath10k_hif_diag_write.exit109.i.i.done.i.i_crit_edge ], [ %retval.0.i115134.i.i, %if.then43.i.i ], [ 0, %ath10k_hif_diag_write.exit116.i.i.done.i.i_crit_edge ]
  %45 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i.i, align 4
  %write32.i.i118.i.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %46, i32 0, i32 13
  %47 = ptrtoint ptr %write32.i.i118.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write32.i.i118.i.i, align 4
  %tobool.not.i.i119.i.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.i119.i.i, label %if.then.i.i120.i.i, label %if.end.i.i124.i.i

if.then.i.i120.i.i:                               ; preds = %done.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.10) #6
  br label %ath10k_hw_diag_segment_download.exit

if.end.i.i124.i.i:                                ; preds = %done.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i.i.i, align 4
  %soc_core_base_address.i122.i.i = getelementptr inbounds %struct.ath10k_hw_regs, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %soc_core_base_address.i122.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %soc_core_base_address.i122.i.i, align 4
  %add.i123.i.i = add i32 %52, 24
  tail call void %48(ptr noundef %ar, i32 noundef %add.i123.i.i, i32 noundef 4) #6
  br label %ath10k_hw_diag_segment_download.exit

if.else.i:                                        ; preds = %if.end33
  %53 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops.i.i, align 4
  %diag_write.i.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %diag_write.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %diag_write.i.i, align 4
  %tobool.not.i7.i = icmp eq ptr %56, null
  br i1 %tobool.not.i7.i, label %if.else.i.if.then36_crit_edge, label %if.end.i8.i

if.else.i.if.then36_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36

if.end.i8.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 %56(ptr noundef %ar, i32 noundef %12, ptr noundef %data25, i32 noundef %15) #6
  br label %ath10k_hw_diag_segment_download.exit

ath10k_hw_diag_segment_download.exit:             ; preds = %if.end.i8.i, %if.end.i.i124.i.i, %if.then.i.i120.i.i
  %retval.0.i = phi i32 [ %ret.0.i.i, %if.then.i.i120.i.i ], [ %ret.0.i.i, %if.end.i.i124.i.i ], [ %call.i.i, %if.end.i8.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool35.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool35.not, label %ath10k_hw_diag_segment_download.exit.if.end42_crit_edge, label %ath10k_hw_diag_segment_download.exit.if.then36_crit_edge

ath10k_hw_diag_segment_download.exit.if.then36_crit_edge: ; preds = %ath10k_hw_diag_segment_download.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then36

ath10k_hw_diag_segment_download.exit.if.end42_crit_edge: ; preds = %ath10k_hw_diag_segment_download.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then36:                                        ; preds = %ath10k_hw_diag_segment_download.exit.if.then36_crit_edge, %if.else.i.if.then36_crit_edge
  %retval.0.i112 = phi i32 [ %retval.0.i, %ath10k_hw_diag_segment_download.exit.if.then36_crit_edge ], [ -95, %if.else.i.if.then36_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.5, i32 noundef %retval.0.i112) #6
  br label %cleanup

sw.epilog:                                        ; preds = %if.end23
  %call28 = tail call i32 @ath10k_bmi_set_start(ptr noundef %ar, i32 noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool38.not.not = icmp eq i32 %call28, 0
  br i1 %tobool38.not.not, label %sw.epilog.if.end42_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.if.end42_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.end42:                                         ; preds = %sw.epilog.if.end42_crit_edge, %ath10k_hw_diag_segment_download.exit.if.end42_crit_edge
  %base_len.0166 = phi i32 [ 0, %sw.epilog.if.end42_crit_edge ], [ %15, %ath10k_hw_diag_segment_download.exit.if.end42_crit_edge ]
  %add.ptr = getelementptr i8, ptr %data25, i32 %base_len.0166
  %sub43 = sub i32 %sub27, %base_len.0166
  %cmp20.not = icmp eq i32 %sub43, 0
  br i1 %cmp20.not, label %if.end42.do.body46_crit_edge, label %if.end42.while.body_crit_edge

if.end42.while.body_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end42.do.body46_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body46

do.body46:                                        ; preds = %if.end42.do.body46_crit_edge, %if.end23.do.body46_crit_edge, %if.end19.do.body46_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %57 = load i32, ptr @ath10k_debug_mask, align 4
  %and47 = and i32 %57, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %lor.lhs.false49, label %do.body46.if.then51_crit_edge

do.body46.if.then51_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then51

lor.lhs.false49:                                  ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_hw_diag_fast_download, %if.then51)) #6
          to label %cleanup [label %if.then51], !srcloc !137

if.then51:                                        ; preds = %lor.lhs.false49, %do.body46.if.then51_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 32, ptr noundef nonnull @.str.6) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %lor.lhs.false49, %sw.epilog.cleanup_crit_edge, %if.then36, %if.then32, %sw.bb30, %while.end.thread124, %if.then14, %lor.lhs.false12, %if.then3, %lor.lhs.false, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then3 ], [ -22, %if.then14 ], [ 0, %if.then51 ], [ -22, %lor.lhs.false ], [ -22, %lor.lhs.false12 ], [ -22, %while.end.thread124 ], [ 0, %lor.lhs.false49 ], [ -22, %sw.bb30 ], [ %retval.0.i112, %if.then36 ], [ -22, %if.then32 ], [ %call28, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ath10k_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_bmi_set_start(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_hw_qca988x_set_coverage_class(ptr noundef %ar, i16 noundef signext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 80
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #6
  %state = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 103
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 32
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %1, label %if.then [
    i32 1, label %entry.if.end_crit_edge
    i32 3, label %entry.if.end_crit_edge256
  ]

entry.if.end_crit_edge256:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #6
  %fw_coverage = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 128
  %3 = ptrtoint ptr %fw_coverage to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %value, ptr %fw_coverage, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #6
  br label %unlock

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge256
  %regs = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 37
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 34, i32 1
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.13) #6
  br label %ath10k_hif_read32.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %wlan_mac_base_address = getelementptr inbounds %struct.ath10k_hw_regs, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %wlan_mac_base_address to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wlan_mac_base_address, align 4
  %add = add i32 %11, 4208
  %call.i = tail call i32 %7(ptr noundef %ar, i32 noundef %add) #6
  br label %ath10k_hif_read32.exit

ath10k_hif_read32.exit:                           ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ -559030611, %if.then.i ]
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %read32.i226 = getelementptr inbounds %struct.ath10k_hif_ops, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %read32.i226 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32.i226, align 4
  %tobool.not.i227 = icmp eq ptr %15, null
  br i1 %tobool.not.i227, label %if.then.i228, label %if.end.i230

if.then.i228:                                     ; preds = %ath10k_hif_read32.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.13) #6
  br label %ath10k_hif_read32.exit232

if.end.i230:                                      ; preds = %ath10k_hif_read32.exit
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %wlan_mac_base_address5 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %wlan_mac_base_address5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wlan_mac_base_address5, align 4
  %add6 = add i32 %19, 32788
  %call.i229 = tail call i32 %15(ptr noundef %ar, i32 noundef %add6) #6
  br label %ath10k_hif_read32.exit232

ath10k_hif_read32.exit232:                        ; preds = %if.end.i230, %if.then.i228
  %retval.0.i231 = phi i32 [ %call.i229, %if.end.i230 ], [ -559030611, %if.then.i228 ]
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  %read32.i234 = getelementptr inbounds %struct.ath10k_hif_ops, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %read32.i234 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32.i234, align 4
  %tobool.not.i235 = icmp eq ptr %23, null
  br i1 %tobool.not.i235, label %if.then.i236, label %if.end.i238

if.then.i236:                                     ; preds = %ath10k_hif_read32.exit232
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.13) #6
  br label %ath10k_hif_read32.exit240

if.end.i238:                                      ; preds = %ath10k_hif_read32.exit232
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %wlan_mac_base_address9 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %wlan_mac_base_address9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wlan_mac_base_address9, align 4
  %add10 = add i32 %27, 32796
  %call.i237 = tail call i32 %23(ptr noundef %ar, i32 noundef %add10) #6
  br label %ath10k_hif_read32.exit240

ath10k_hif_read32.exit240:                        ; preds = %if.end.i238, %if.then.i236
  %retval.0.i239 = phi i32 [ %call.i237, %if.end.i238 ], [ -559030611, %if.then.i236 ]
  %and = and i32 %retval.0.i239, 127
  %add12 = add nuw nsw i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %value)
  %cmp13 = icmp slt i16 %value, 0
  br i1 %cmp13, label %if.then15, label %ath10k_hif_read32.exit240.if.end18_crit_edge

ath10k_hif_read32.exit240.if.end18_crit_edge:     ; preds = %ath10k_hif_read32.exit240
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then15:                                        ; preds = %ath10k_hif_read32.exit240
  call void @__sanitizer_cov_trace_pc() #8
  %fw_coverage16 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 128
  %28 = ptrtoint ptr %fw_coverage16 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %fw_coverage16, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %ath10k_hif_read32.exit240.if.end18_crit_edge
  %value.addr.0 = phi i16 [ %29, %if.then15 ], [ %value, %ath10k_hif_read32.exit240.if.end18_crit_edge ]
  %conv19 = sext i16 %value.addr.0 to i32
  %fw_coverage20 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 128
  %30 = ptrtoint ptr %fw_coverage20 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %fw_coverage20, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %value.addr.0, i16 %31)
  %cmp23 = icmp eq i16 %value.addr.0, %31
  br i1 %cmp23, label %land.lhs.true25, label %if.end18.if.end38_crit_edge

if.end18.if.end38_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

land.lhs.true25:                                  ; preds = %if.end18
  %reg_slottime_conf = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 128, i32 2
  %32 = ptrtoint ptr %reg_slottime_conf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reg_slottime_conf, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %33)
  %cmp27 = icmp eq i32 %retval.0.i, %33
  br i1 %cmp27, label %land.lhs.true29, label %land.lhs.true25.if.end38_crit_edge

land.lhs.true25.if.end38_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

land.lhs.true29:                                  ; preds = %land.lhs.true25
  %reg_ack_cts_timeout_conf = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 128, i32 4
  %34 = ptrtoint ptr %reg_ack_cts_timeout_conf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reg_ack_cts_timeout_conf, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i231, i32 %35)
  %cmp31 = icmp eq i32 %retval.0.i231, %35
  br i1 %cmp31, label %land.lhs.true33, label %land.lhs.true29.if.end38_crit_edge

land.lhs.true29.if.end38_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

land.lhs.true33:                                  ; preds = %land.lhs.true29
  %reg_phyclk = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 128, i32 1
  %36 = ptrtoint ptr %reg_phyclk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %reg_phyclk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i239, i32 %37)
  %cmp35 = icmp eq i32 %retval.0.i239, %37
  br i1 %cmp35, label %land.lhs.true33.unlock_crit_edge, label %land.lhs.true33.if.end38_crit_edge

land.lhs.true33.if.end38_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

land.lhs.true33.unlock_crit_edge:                 ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end38:                                         ; preds = %land.lhs.true33.if.end38_crit_edge, %land.lhs.true29.if.end38_crit_edge, %land.lhs.true25.if.end38_crit_edge, %if.end18.if.end38_crit_edge
  %reg_slottime_conf40 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 128, i32 2
  %38 = ptrtoint ptr %reg_slottime_conf40 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %reg_slottime_conf40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %39)
  %cmp41.not = icmp eq i32 %retval.0.i, %39
  br i1 %cmp41.not, label %if.end38.if.end45_crit_edge, label %if.then43

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %reg_slottime_orig = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 128, i32 3
  %40 = ptrtoint ptr %reg_slottime_orig to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %retval.0.i, ptr %reg_slottime_orig, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end38.if.end45_crit_edge
  %reg_ack_cts_timeout_conf47 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 128, i32 4
  %41 = ptrtoint ptr %reg_ack_cts_timeout_conf47 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %reg_ack_cts_timeout_conf47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i231, i32 %42)
  %cmp48.not = icmp eq i32 %retval.0.i231, %42
  br i1 %cmp48.not, label %if.end45.if.end52_crit_edge, label %if.then50

if.end45.if.end52_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %reg_ack_cts_timeout_orig = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 128, i32 5
  %43 = ptrtoint ptr %reg_ack_cts_timeout_orig to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %retval.0.i231, ptr %reg_ack_cts_timeout_orig, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end45.if.end52_crit_edge
  %reg_phyclk54 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 128, i32 1
  %44 = ptrtoint ptr %reg_phyclk54 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %retval.0.i239, ptr %reg_phyclk54, align 4
  %reg_slottime_orig56 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 128, i32 3
  %45 = ptrtoint ptr %reg_slottime_orig56 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %reg_slottime_orig56, align 4
  %reg_ack_cts_timeout_orig58 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 128, i32 5
  %47 = ptrtoint ptr %reg_ack_cts_timeout_orig58 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %reg_ack_cts_timeout_orig58, align 4
  %rem = urem i32 %46, %add12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end60, label %if.then59

if.then59:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.11) #6
  br label %store_regs

if.end60:                                         ; preds = %if.end52
  %div.lhs.trunc = trunc i32 %46 to i16
  %div.rhs.trunc = trunc i32 %add12 to i16
  %div255 = udiv i16 %div.lhs.trunc, %div.rhs.trunc
  %49 = zext i16 %div255 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.16)
  switch i16 %div255, label %if.then68 [
    i16 9, label %if.end60.if.end69_crit_edge
    i16 20, label %if.end60.if.end69_crit_edge257
  ]

if.end60.if.end69_crit_edge257:                   ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.end60.if.end69_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then68:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %div.zext = zext i16 %div255 to i32
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.12, i32 noundef %div.zext) #6
  br label %store_regs

if.end69:                                         ; preds = %if.end60.if.end69_crit_edge, %if.end60.if.end69_crit_edge257
  %and61 = and i32 %46, 65535
  %mul = mul nuw nsw i32 %add12, 3
  %mul73 = mul nsw i32 %mul, %conv19
  %add74 = add nsw i32 %and61, %mul73
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add74)
  %cmp75 = icmp ult i32 %add74, 65535
  %phi.bo = and i32 %add74, 65535
  %cond = select i1 %cmp75, i32 %phi.bo, i32 65535
  %and78 = and i32 %46, -65536
  %or = or i32 %cond, %and78
  %and79 = and i32 %48, 16383
  %add84 = add nsw i32 %and79, %mul73
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %add84)
  %cmp86 = icmp ult i32 %add84, 16383
  %phi.bo222 = and i32 %add84, 16383
  %cond91 = select i1 %cmp86, i32 %phi.bo222, i32 16383
  %and94 = lshr i32 %48, 16
  %shr95 = and i32 %and94, 16383
  %add99 = add nsw i32 %shr95, %mul73
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %add99)
  %cmp101 = icmp ult i32 %add99, 16383
  %phi.bo223 = shl i32 %add99, 16
  %phi.bo224 = and i32 %phi.bo223, 1073676288
  %cond106 = select i1 %cmp101, i32 %phi.bo224, i32 1073676288
  %or109 = or i32 %cond106, %cond91
  %50 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops.i, align 4
  %write32.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %51, i32 0, i32 13
  %52 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write32.i, align 4
  %tobool.not.i242 = icmp eq ptr %53, null
  br i1 %tobool.not.i242, label %if.then.i243, label %if.end.i244

if.then.i243:                                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.10) #6
  br label %ath10k_hif_write32.exit

if.end.i244:                                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 4
  %wlan_mac_base_address111 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %wlan_mac_base_address111 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %wlan_mac_base_address111, align 4
  %add112 = add i32 %57, 4208
  tail call void %53(ptr noundef %ar, i32 noundef %add112, i32 noundef %or) #6
  br label %ath10k_hif_write32.exit

ath10k_hif_write32.exit:                          ; preds = %if.end.i244, %if.then.i243
  %58 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i, align 4
  %write32.i246 = getelementptr inbounds %struct.ath10k_hif_ops, ptr %59, i32 0, i32 13
  %60 = ptrtoint ptr %write32.i246 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write32.i246, align 4
  %tobool.not.i247 = icmp eq ptr %61, null
  br i1 %tobool.not.i247, label %if.then.i248, label %if.end.i249

if.then.i248:                                     ; preds = %ath10k_hif_write32.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.10) #6
  br label %ath10k_hif_write32.exit250

if.end.i249:                                      ; preds = %ath10k_hif_write32.exit
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs, align 4
  %wlan_mac_base_address114 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %wlan_mac_base_address114 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %wlan_mac_base_address114, align 4
  %add115 = add i32 %65, 32788
  tail call void %61(ptr noundef %ar, i32 noundef %add115, i32 noundef %or109) #6
  br label %ath10k_hif_write32.exit250

ath10k_hif_write32.exit250:                       ; preds = %if.end.i249, %if.then.i248
  %ops.i251 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 41, i32 11
  %66 = ptrtoint ptr %ops.i251 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops.i251, align 4
  %gen_dbglog_cfg.i = getelementptr inbounds %struct.wmi_ops, ptr %67, i32 0, i32 59
  %68 = ptrtoint ptr %gen_dbglog_cfg.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %gen_dbglog_cfg.i, align 4
  %tobool.not.i252 = icmp eq ptr %69, null
  br i1 %tobool.not.i252, label %ath10k_hif_write32.exit250.store_regs_crit_edge, label %if.end.i254

ath10k_hif_write32.exit250.store_regs_crit_edge:  ; preds = %ath10k_hif_write32.exit250
  call void @__sanitizer_cov_trace_pc() #8
  br label %store_regs

if.end.i254:                                      ; preds = %ath10k_hif_write32.exit250
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %value.addr.0)
  %cmp119 = icmp sgt i16 %value.addr.0, 0
  %fw_dbglog_level.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 13
  %70 = ptrtoint ptr %fw_dbglog_level.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %fw_dbglog_level.i, align 8
  %72 = tail call i32 @llvm.umin.i32(i32 %71, i32 2)
  %fw_dbglog_level.0 = select i1 %cmp119, i32 %72, i32 %71
  %fw_dbglog_mask.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 12
  %73 = ptrtoint ptr %fw_dbglog_mask.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %fw_dbglog_mask.i, align 16
  %fw_dbglog_mask.0 = select i1 %cmp119, i64 -1, i64 %74
  %call.i253 = tail call ptr %69(ptr noundef %ar, i64 noundef %fw_dbglog_mask.0, i32 noundef %fw_dbglog_level.0) #6
  %cmp.i.i = icmp ugt ptr %call.i253, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i254.store_regs_crit_edge, label %if.end7.i

if.end.i254.store_regs_crit_edge:                 ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #8
  br label %store_regs

if.end7.i:                                        ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #8
  %cmd.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 41, i32 7
  %75 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cmd.i, align 4
  %dbglog_cfg_cmdid.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %76, i32 0, i32 104
  %77 = ptrtoint ptr %dbglog_cfg_cmdid.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dbglog_cfg_cmdid.i, align 4
  %call9.i = tail call i32 @ath10k_wmi_cmd_send(ptr noundef %ar, ptr noundef %call.i253, i32 noundef %78) #6
  br label %store_regs

store_regs:                                       ; preds = %if.end7.i, %if.end.i254.store_regs_crit_edge, %ath10k_hif_write32.exit250.store_regs_crit_edge, %if.then68, %if.then59
  %timeout_reg.0 = phi i32 [ %48, %if.then59 ], [ %48, %if.then68 ], [ %or109, %ath10k_hif_write32.exit250.store_regs_crit_edge ], [ %or109, %if.end.i254.store_regs_crit_edge ], [ %or109, %if.end7.i ]
  %slottime_reg.0 = phi i32 [ %46, %if.then59 ], [ %46, %if.then68 ], [ %or, %ath10k_hif_write32.exit250.store_regs_crit_edge ], [ %or, %if.end.i254.store_regs_crit_edge ], [ %or, %if.end7.i ]
  %data_lock128 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock128) #6
  %79 = ptrtoint ptr %fw_coverage20 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %value.addr.0, ptr %fw_coverage20, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock128) #6
  %80 = ptrtoint ptr %reg_slottime_conf40 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %slottime_reg.0, ptr %reg_slottime_conf40, align 4
  %81 = ptrtoint ptr %reg_ack_cts_timeout_conf47 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %timeout_reg.0, ptr %reg_ack_cts_timeout_conf47, align 4
  br label %unlock

unlock:                                           ; preds = %store_regs, %land.lhs.true33.unlock_crit_edge, %if.then
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath10k_htt_tx_rssi_enable(ptr nocapture noundef readonly %resp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags2 = getelementptr inbounds %struct.htt_resp, ptr %resp, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %flags2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags2, align 1
  %2 = and i8 %1, 1
  %and = zext i8 %2 to i32
  ret i32 %and
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath10k_qca99x0_rx_desc_get_l3_pad_bytes(ptr nocapture noundef readonly %rxd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.htt_rx_desc, ptr %rxd, i32 0, i32 1, i32 4, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info1, align 1
  %2 = lshr i32 %1, 18
  %and = and i32 %2, 7
  ret i32 %and
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ath10k_qca99x0_rx_desc_msdu_limit_error(ptr nocapture noundef readonly %rxd) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %info0 = getelementptr inbounds %struct.htt_rx_desc, ptr %rxd, i32 0, i32 1, i32 4, i32 0, i32 5
  %0 = ptrtoint ptr %info0 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %info0, align 1
  %and = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_hw_qca6174_enable_pll_clock(ptr noundef %ar) #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  %mem_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #6
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_val, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mem_val) #6
  %regs = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 37
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 4
  %core_clk_div_address = getelementptr inbounds %struct.ath10k_hw_regs, ptr %2, i32 0, i32 30
  %3 = ptrtoint ptr %core_clk_div_address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %core_clk_div_address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cpu_pll_init_address = getelementptr inbounds %struct.ath10k_hw_regs, ptr %2, i32 0, i32 28
  %5 = ptrtoint ptr %cpu_pll_init_address to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu_pll_init_address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %cpu_speed_address = getelementptr inbounds %struct.ath10k_hw_regs, ptr %2, i32 0, i32 29
  %7 = ptrtoint ptr %cpu_speed_address to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu_speed_address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5 = icmp eq i32 %8, 0
  br i1 %cmp5, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %2, align 4
  %or = or i32 %10, 812
  %call = call i32 @ath10k_bmi_read_soc_reg(ptr noundef %ar, i32 noundef %or, ptr noundef nonnull %reg_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %11 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_val, align 4
  %and = lshr i32 %12, 8
  %shr = and i32 %and, 7
  %hw_clk18 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 45, i32 20
  %13 = ptrtoint ptr %hw_clk18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_clk18, align 4
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %or23 = or i32 %18, 756
  %call24 = call i32 @ath10k_bmi_read_soc_reg(ptr noundef %ar, i32 noundef %or23, ptr noundef nonnull %reg_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end17
  %19 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_val, align 4
  %and28 = and i32 %20, -2097152
  store i32 %and28, ptr %reg_val, align 4
  %rnfrac = getelementptr %struct.ath10k_hw_clk_params, ptr %14, i32 %shr, i32 2
  %21 = ptrtoint ptr %rnfrac to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rnfrac, align 4
  %and29 = and i32 %22, 262143
  %outdiv = getelementptr %struct.ath10k_hw_clk_params, ptr %14, i32 %shr, i32 5
  %23 = ptrtoint ptr %outdiv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %outdiv, align 4
  %shl30 = shl i32 %24, 18
  %and31 = and i32 %shl30, 1835008
  %or32 = or i32 %and29, %and28
  %or33 = or i32 %or32, %and31
  store i32 %or33, ptr %reg_val, align 4
  %call34 = call i32 @ath10k_bmi_write_soc_reg(ptr noundef %ar, i32 noundef %or23, i32 noundef %or33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %if.end27
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %rtc_wmac_base_address = getelementptr inbounds %struct.ath10k_hw_regs, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %rtc_wmac_base_address to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rtc_wmac_base_address, align 4
  %or39 = or i32 %28, 24
  %call40 = call i32 @ath10k_bmi_read_soc_reg(ptr noundef %ar, i32 noundef %or39, ptr noundef nonnull %reg_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43:                                         ; preds = %if.end37
  %29 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg_val, align 4
  %and44 = and i32 %30, -2048
  store i32 %and44, ptr %reg_val, align 4
  %settle_time = getelementptr %struct.ath10k_hw_clk_params, ptr %14, i32 %shr, i32 3
  %31 = ptrtoint ptr %settle_time to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %settle_time, align 4
  %and46 = and i32 %32, 2047
  %or47 = or i32 %and46, %and44
  store i32 %or47, ptr %reg_val, align 4
  %call48 = call i32 @ath10k_bmi_write_soc_reg(ptr noundef %ar, i32 noundef %or39, i32 noundef %or47) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end51:                                         ; preds = %if.end43
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %or54 = or i32 %36, 276
  %call55 = call i32 @ath10k_bmi_read_soc_reg(ptr noundef %ar, i32 noundef %or54, ptr noundef nonnull %reg_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end58:                                         ; preds = %if.end51
  %37 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %reg_val, align 4
  %and59 = and i32 %38, -8
  %or60 = or i32 %and59, 1
  store i32 %or60, ptr %reg_val, align 4
  %call61 = call i32 @ath10k_bmi_write_soc_reg(ptr noundef %ar, i32 noundef %or54, i32 noundef %or60) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end64:                                         ; preds = %if.end58
  %39 = ptrtoint ptr %mem_val to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %mem_val, align 4
  %call65 = call i32 @ath10k_bmi_write_memory(ptr noundef %ar, i32 noundef %4, ptr noundef nonnull %mem_val, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end68:                                         ; preds = %if.end64
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %rtc_wmac_base_address70 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %rtc_wmac_base_address70 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rtc_wmac_base_address70, align 4
  %or71 = or i32 %43, 20
  %call72 = call i32 @ath10k_bmi_read_soc_reg(ptr noundef %ar, i32 noundef %or71, ptr noundef nonnull %reg_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end75:                                         ; preds = %if.end68
  %refdiv = getelementptr %struct.ath10k_hw_clk_params, ptr %14, i32 %shr, i32 4
  %44 = ptrtoint ptr %refdiv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %refdiv, align 4
  %shl76 = shl i32 %45, 10
  %and77 = and i32 %shl76, 15360
  %div = getelementptr %struct.ath10k_hw_clk_params, ptr %14, i32 %shr, i32 1
  %46 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %div, align 4
  %and79 = and i32 %47, 1023
  %48 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %reg_val, align 4
  %or80 = or i32 %and79, %and77
  %or81 = or i32 %or80, %49
  %or82 = or i32 %or81, 262144
  store i32 %or82, ptr %reg_val, align 4
  %call83 = call i32 @ath10k_bmi_write_soc_reg(ptr noundef %ar, i32 noundef %or71, i32 noundef %or82) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.end75.cleanup_crit_edge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end86:                                         ; preds = %if.end75
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 4
  %rtc_wmac_base_address88 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %rtc_wmac_base_address88 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rtc_wmac_base_address88, align 4
  %or89 = or i32 %53, 580
  br label %do.body

do.body:                                          ; preds = %if.end98.do.body_crit_edge, %if.end86
  %wait_limit.0 = phi i32 [ 100000, %if.end86 ], [ %dec, %if.end98.do.body_crit_edge ]
  %call90 = call i32 @ath10k_bmi_read_soc_reg(ptr noundef %ar, i32 noundef %or89, ptr noundef nonnull %reg_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end93:                                         ; preds = %do.body
  %54 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %reg_val, align 4
  %56 = and i32 %55, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool96.not = icmp eq i32 %56, 0
  br i1 %tobool96.not, label %if.end93.do.end_crit_edge, label %if.end98

if.end93.do.end_crit_edge:                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end98:                                         ; preds = %if.end93
  %dec = add nsw i32 %wait_limit.0, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %57(i32 noundef 2147480) #6
  %cmp99.not = icmp eq i32 %dec, 0
  br i1 %cmp99.not, label %if.end98.do.end_crit_edge, label %if.end98.do.body_crit_edge

if.end98.do.body_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end98.do.end_crit_edge:                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %if.end98.do.end_crit_edge, %if.end93.do.end_crit_edge
  %58 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %reg_val, align 4
  %60 = and i32 %59, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool102.not = icmp eq i32 %60, 0
  br i1 %tobool102.not, label %if.end104, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end104:                                        ; preds = %do.end
  %61 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs, align 4
  %rtc_wmac_base_address106 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %rtc_wmac_base_address106 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rtc_wmac_base_address106, align 4
  %or107 = or i32 %64, 20
  %call108 = call i32 @ath10k_bmi_read_soc_reg(ptr noundef %ar, i32 noundef %or107, ptr noundef nonnull %reg_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end111, label %if.end104.cleanup_crit_edge

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end111:                                        ; preds = %if.end104
  %65 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %reg_val, align 4
  %and112 = and i32 %66, -65537
  store i32 %and112, ptr %reg_val, align 4
  %call114 = call i32 @ath10k_bmi_write_soc_reg(ptr noundef %ar, i32 noundef %or107, i32 noundef %and112) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end117, label %if.end111.cleanup_crit_edge

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end117:                                        ; preds = %if.end111
  %67 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs, align 4
  %rtc_wmac_base_address119 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %rtc_wmac_base_address119 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rtc_wmac_base_address119, align 4
  %or120 = or i32 %70, 580
  br label %do.body121

do.body121:                                       ; preds = %if.end130.do.body121_crit_edge, %if.end117
  %wait_limit.1 = phi i32 [ 100000, %if.end117 ], [ %dec131, %if.end130.do.body121_crit_edge ]
  %call122 = call i32 @ath10k_bmi_read_soc_reg(ptr noundef %ar, i32 noundef %or120, ptr noundef nonnull %reg_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end125, label %do.body121.cleanup_crit_edge

do.body121.cleanup_crit_edge:                     ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end125:                                        ; preds = %do.body121
  %71 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %reg_val, align 4
  %73 = and i32 %72, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool128.not = icmp eq i32 %73, 0
  br i1 %tobool128.not, label %if.end125.do.end134_crit_edge, label %if.end130

if.end125.do.end134_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end134

if.end130:                                        ; preds = %if.end125
  %dec131 = add nsw i32 %wait_limit.1, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %74(i32 noundef 2147480) #6
  %cmp133.not = icmp eq i32 %dec131, 0
  br i1 %cmp133.not, label %if.end130.do.end134_crit_edge, label %if.end130.do.body121_crit_edge

if.end130.do.body121_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body121

if.end130.do.end134_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end134

do.end134:                                        ; preds = %if.end130.do.end134_crit_edge, %if.end125.do.end134_crit_edge
  %75 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %reg_val, align 4
  %77 = and i32 %76, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool137.not = icmp eq i32 %77, 0
  br i1 %tobool137.not, label %if.end139, label %do.end134.cleanup_crit_edge

do.end134.cleanup_crit_edge:                      ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end139:                                        ; preds = %do.end134
  %78 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %or142 = or i32 %81, 32
  %call143 = call i32 @ath10k_bmi_read_soc_reg(ptr noundef %ar, i32 noundef %or142, ptr noundef nonnull %reg_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end146, label %if.end139.cleanup_crit_edge

if.end139.cleanup_crit_edge:                      ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end146:                                        ; preds = %if.end139
  %82 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %reg_val, align 4
  %and147 = and i32 %83, -4
  %or148 = or i32 %and147, 1
  store i32 %or148, ptr %reg_val, align 4
  %call149 = call i32 @ath10k_bmi_write_soc_reg(ptr noundef %ar, i32 noundef %or142, i32 noundef %or148) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.end152, label %if.end146.cleanup_crit_edge

if.end146.cleanup_crit_edge:                      ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end152:                                        ; preds = %if.end146
  %84 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs, align 4
  %rtc_wmac_base_address154 = getelementptr inbounds %struct.ath10k_hw_regs, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %rtc_wmac_base_address154 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rtc_wmac_base_address154, align 4
  %or155 = or i32 %87, 20
  %call156 = call i32 @ath10k_bmi_read_soc_reg(ptr noundef %ar, i32 noundef %or155, ptr noundef nonnull %reg_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.end159, label %if.end152.cleanup_crit_edge

if.end152.cleanup_crit_edge:                      ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end159:                                        ; preds = %if.end152
  %88 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %reg_val, align 4
  %and160 = and i32 %89, -262145
  store i32 %and160, ptr %reg_val, align 4
  %call161 = call i32 @ath10k_bmi_write_soc_reg(ptr noundef %ar, i32 noundef %or155, i32 noundef %and160) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.end164, label %if.end159.cleanup_crit_edge

if.end159.cleanup_crit_edge:                      ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end164:                                        ; preds = %if.end159
  %90 = ptrtoint ptr %mem_val to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %mem_val, align 4
  %call165 = call i32 @ath10k_bmi_write_memory(ptr noundef %ar, i32 noundef %6, ptr noundef nonnull %mem_val, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.end168, label %if.end164.cleanup_crit_edge

if.end164.cleanup_crit_edge:                      ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end168:                                        ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #8
  %target_cpu_freq = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 45, i32 21
  %call169 = call i32 @ath10k_bmi_write_memory(ptr noundef %ar, i32 noundef %8, ptr noundef %target_cpu_freq, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  %. = select i1 %tobool170.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end168, %if.end164.cleanup_crit_edge, %if.end159.cleanup_crit_edge, %if.end152.cleanup_crit_edge, %if.end146.cleanup_crit_edge, %if.end139.cleanup_crit_edge, %do.end134.cleanup_crit_edge, %do.body121.cleanup_crit_edge, %if.end111.cleanup_crit_edge, %if.end104.cleanup_crit_edge, %do.end.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ -22, %if.end27.cleanup_crit_edge ], [ -22, %if.end37.cleanup_crit_edge ], [ -22, %if.end43.cleanup_crit_edge ], [ -22, %if.end51.cleanup_crit_edge ], [ -22, %if.end58.cleanup_crit_edge ], [ -22, %if.end64.cleanup_crit_edge ], [ -22, %if.end68.cleanup_crit_edge ], [ -22, %if.end75.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %if.end104.cleanup_crit_edge ], [ -22, %if.end111.cleanup_crit_edge ], [ -22, %do.end134.cleanup_crit_edge ], [ -22, %if.end139.cleanup_crit_edge ], [ -22, %if.end146.cleanup_crit_edge ], [ -22, %if.end152.cleanup_crit_edge ], [ -22, %if.end159.cleanup_crit_edge ], [ -22, %if.end164.cleanup_crit_edge ], [ %., %if.end168 ], [ -22, %do.body121.cleanup_crit_edge ], [ -22, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem_val) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath10k_get_htt_tx_data_rssi_pad(ptr nocapture noundef readonly %resp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags2 = getelementptr inbounds %struct.htt_resp, ptr %resp, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %flags2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags2, align 1
  %2 = shl i8 %1, 1
  %3 = and i8 %2, 2
  %4 = zext i8 %3 to i32
  %5 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  %add6 = add nuw nsw i32 %4, 2
  %pad_bytes.1 = select i1 %tobool4.not, i32 %4, i32 %add6
  ret i32 %pad_bytes.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath10k_htt_tx_rssi_enable_wcn3990(ptr nocapture noundef readonly %resp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags2 = getelementptr inbounds %struct.htt_resp, ptr %resp, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %flags2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags2, align 1
  %2 = and i8 %1, 8
  %and = zext i8 %2 to i32
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_wmi_cmd_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_bmi_read_soc_reg(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_bmi_write_soc_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_bmi_write_memory(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @qca988x_regs, !1, !"qca988x_regs", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 15, i32 29}
!2 = !{ptr @qca6174_regs, !3, !"qca6174_regs", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 42, i32 29}
!4 = !{ptr @qca99x0_regs, !5, !"qca99x0_regs", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 72, i32 29}
!6 = !{ptr @qca4019_regs, !7, !"qca4019_regs", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 109, i32 29}
!8 = !{ptr @qca988x_values, !9, !"qca988x_values", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 142, i32 31}
!10 = !{ptr @qca6174_values, !11, !"qca6174_values", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 151, i32 31}
!12 = !{ptr @qca99x0_values, !13, !"qca99x0_values", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 163, i32 31}
!14 = !{ptr @qca9888_values, !15, !"qca9888_values", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 172, i32 31}
!16 = !{ptr @qca4019_values, !17, !"qca4019_values", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 181, i32 31}
!18 = !{ptr @wcn3990_regs, !19, !"wcn3990_regs", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 188, i32 29}
!20 = !{ptr @wcn3990_ce_regs, !21, !"wcn3990_ce_regs", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 312, i32 32}
!22 = !{ptr @wcn3990_values, !23, !"wcn3990_values", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 336, i32 31}
!24 = !{ptr @qcax_ce_regs, !25, !"qcax_ce_regs", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 460, i32 32}
!26 = !{ptr @qca6174_clk, !27, !"qca6174_clk", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 481, i32 35}
!28 = !{ptr @.str, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 1024, i32 3}
!30 = !{ptr @.str.1, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 1031, i32 3}
!32 = !{ptr @.str.2, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 1042, i32 20}
!34 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 1067, i32 9}
!36 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 1075, i32 10}
!38 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 1088, i32 10}
!40 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 1101, i32 3}
!42 = !{ptr @qca988x_ops, !43, !"qca988x_ops", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 1132, i32 28}
!44 = !{ptr @qca99x0_ops, !45, !"qca99x0_ops", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 1149, i32 28}
!46 = !{ptr @qca6174_ops, !47, !"qca6174_ops", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 1155, i32 28}
!48 = !{ptr @qca6174_sdio_ops, !49, !"qca6174_sdio_ops", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 1161, i32 28}
!50 = !{ptr @wcn3990_ops, !51, !"wcn3990_ops", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 1165, i32 28}
!52 = !{ptr @wcn3990_wm_reg, !53, !"wcn3990_wm_reg", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 246, i32 41}
!54 = !{ptr @wcn3990_misc_reg, !55, !"wcn3990_misc_reg", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 256, i32 38}
!56 = !{ptr @wcn3990_ctrl1, !57, !"wcn3990_ctrl1", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 231, i32 34}
!58 = !{ptr @wcn3990_src_ring, !59, !"wcn3990_src_ring", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 213, i32 42}
!60 = !{ptr @wcn3990_dst_ring, !61, !"wcn3990_dst_ring", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 219, i32 42}
!62 = !{ptr @wcn3990_dmax, !63, !"wcn3990_dmax", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 225, i32 42}
!64 = !{ptr @wcn3990_host_ie, !65, !"wcn3990_host_ie", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 242, i32 36}
!66 = !{ptr @wcn3990_host_ie_cc, !67, !"wcn3990_host_ie_cc", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 238, i32 42}
!68 = !{ptr @wcn3990_wm_src_ring, !69, !"wcn3990_wm_src_ring", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 279, i32 44}
!70 = !{ptr @wcn3990_src_wm_low, !71, !"wcn3990_src_wm_low", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 267, i32 42}
!72 = !{ptr @wcn3990_src_wm_high, !73, !"wcn3990_src_wm_high", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 273, i32 42}
!74 = !{ptr @wcn3990_wm_dst_ring, !75, !"wcn3990_wm_dst_ring", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 298, i32 44}
!76 = !{ptr @wcn3990_dst_wm_low, !77, !"wcn3990_dst_wm_low", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 287, i32 42}
!78 = !{ptr @wcn3990_dst_wm_high, !79, !"wcn3990_dst_wm_high", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 292, i32 42}
!80 = !{ptr @wcn3990_ctrl1_upd, !81, !"wcn3990_ctrl1_upd", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 306, i32 38}
!82 = !{ptr @qcax_wm_reg, !83, !"qcax_wm_reg", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 400, i32 41}
!84 = !{ptr @qcax_misc_reg, !85, !"qcax_misc_reg", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 410, i32 38}
!86 = !{ptr @qcax_ctrl1, !87, !"qcax_ctrl1", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 363, i32 34}
!88 = !{ptr @qcax_src_ring, !89, !"qcax_src_ring", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 345, i32 42}
!90 = !{ptr @qcax_dst_ring, !91, !"qcax_dst_ring", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 351, i32 42}
!92 = !{ptr @qcax_dmax, !93, !"qcax_dmax", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 357, i32 42}
!94 = !{ptr @qcax_cmd_halt, !95, !"qcax_cmd_halt", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 382, i32 37}
!96 = !{ptr @qcax_cmd_halt_status, !97, !"qcax_cmd_halt_status", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 376, i32 42}
!98 = !{ptr @qcax_host_ie, !99, !"qcax_host_ie", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 395, i32 36}
!100 = !{ptr @qcax_host_ie_cc, !101, !"qcax_host_ie_cc", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 389, i32 42}
!102 = !{ptr @qcax_wm_src_ring, !103, !"qcax_wm_src_ring", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 433, i32 44}
!104 = !{ptr @qcax_src_wm_low, !105, !"qcax_src_wm_low", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 421, i32 42}
!106 = !{ptr @qcax_src_wm_high, !107, !"qcax_src_wm_high", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 427, i32 42}
!108 = !{ptr @qcax_wm_dst_ring, !109, !"qcax_wm_dst_ring", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 452, i32 44}
!110 = !{ptr @qcax_dst_wm_low, !111, !"qcax_dst_wm_low", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 441, i32 42}
!112 = !{ptr @qcax_dst_wm_high, !113, !"qcax_dst_wm_high", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 446, i32 42}
!114 = !{ptr @.str.7, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 952, i32 9}
!116 = !{ptr @.str.8, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 966, i32 9}
!118 = !{ptr @.str.9, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 976, i32 9}
!120 = !{ptr @.str.10, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ath/ath10k/hif.h", i32 224, i32 19}
!122 = !{ptr @.str.11, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 652, i32 8}
!124 = !{ptr @.str.12, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ath/ath10k/hw.c", i32 661, i32 8}
!126 = !{ptr @.str.13, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ath/ath10k/hif.h", i32 213, i32 19}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{i64 2148894705, i64 2148894710, i64 2148894723, i64 2148894767, i64 2148894801, i64 2148894822}
!138 = !{!"auto-init"}
