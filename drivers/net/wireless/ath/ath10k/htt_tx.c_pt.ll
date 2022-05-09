; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath10k/htt_tx.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath10k/htt_tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ath10k_htt_hif_tx_complete\22, \22a\22\09"
module asm "\09.weak\09__crc_ath10k_htt_hif_tx_complete\09\09\09\09"
module asm "\09.long\09__crc_ath10k_htt_hif_tx_complete\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath10k_htt_hif_tx_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22ath10k_htt_hif_tx_complete\22\09\09\09\09\09"
module asm "__kstrtabns_ath10k_htt_hif_tx_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ath10k_htt_tx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.91 }
%struct.atomic_t = type { i32 }
%union.anon.91 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.ath10k = type { %struct.ath_common, ptr, ptr, ptr, %struct.msa_region, [6 x i8], i32, i16, i32, i32, i8, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, %struct.anon.140, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.ath10k_bmi, %struct.ath10k_wmi, %struct.ath10k_htc, [4 x i8], %struct.ath10k_htt, %struct.ath10k_hw_params, %struct.ath10k_fw_components, ptr, ptr, ptr, %struct.anon.186, i32, i32, i32, %struct.anon.187, %struct.anon.188, ptr, ptr, %struct.cfg80211_chan_def, ptr, i64, ptr, i8, i32, i8, i32, i32, i8, i8, i32, i8, i8, %struct.completion, i32, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, [2048 x ptr], %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.completion, ptr, %struct.work_struct, %struct.sk_buff_head, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, [41 x %struct.survey_info], i8, %struct.completion, ptr, i32, %struct.ath10k_debug, %struct.anon.193, i32, %struct.anon.194, %struct.anon.195, %struct.anon.196, %struct.ath10k_thermal, %struct.ath10k_wow, %struct.ath10k_per_peer_tx_stats, [36 x i8], %struct.net_device, %struct.napi_struct, %struct.work_struct, %struct.anon.197, i32, ptr, ptr, i32, i32, %struct.ath10k_radar_found_info, %struct.work_struct, %struct.ath10k_bus_params, %struct.completion, i8, i32, i32, i32, [0 x i8], [48 x i8] }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.ath10k_htt = type { ptr, i32, %struct.sk_buff_head, i8, i8, %struct.completion, i8, i8, ptr, i32, %struct.anon.141, i32, %struct.spinlock, i32, i32, i32, %struct.idr, %struct.wait_queue_head, %struct.anon.145, i8, %struct.atomic_t, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.ieee80211_rx_status, %struct.anon.147, %struct.anon.150, %struct.anon.160, i8, ptr, ptr, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head, [4 x i8] }
%struct.anon.141 = type { ptr, i8, [16 x %struct.hlist_head], %union.anon.142, i32, i32, i32, i32, i32, %struct.anon.143, %struct.anon.144, %struct.timer_list, %struct.spinlock }
%struct.hlist_head = type { ptr }
%union.anon.142 = type { ptr }
%struct.anon.143 = type { ptr, i32 }
%struct.anon.144 = type { i32 }
%struct.anon.145 = type { %union.anon.146, [0 x %struct.htt_tx_done] }
%union.anon.146 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.htt_tx_done = type { i16, i16, i8 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.anon.147 = type { i32, %union.anon.148, i32 }
%union.anon.148 = type { ptr }
%struct.anon.150 = type { i32, %union.anon.151, i32 }
%union.anon.151 = type { ptr }
%struct.anon.160 = type { i8, ptr, i32, i16, i16, i16, i32, i32 }
%struct.ath10k_hw_params = type { i32, i16, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, %struct.ath10k_hw_params_fw, i8, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ath10k_hw_params_fw = type { ptr, ptr, i32, ptr, i32, i32 }
%struct.ath10k_fw_components = type { ptr, ptr, i32, ptr, ptr, i32, %struct.ath10k_fw_file }
%struct.ath10k_fw_file = type { ptr, [32 x i8], [1 x i32], i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.anon.186 = type { i32, i32, i32, i32, i8, i8, i32, i32, i8, i8, i8, i8, [32 x i8] }
%struct.anon.187 = type { %struct.completion, %struct.completion, %struct.completion, %struct.delayed_work, i32, i8, i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.anon.188 = type { [6 x %struct.ieee80211_supported_band] }
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
%struct.anon.193 = type { ptr, i32, %struct.ath10k_spec_scan }
%struct.ath10k_spec_scan = type { i8, i8 }
%struct.anon.194 = type { ptr }
%struct.anon.195 = type { %struct.ath10k_fw_components, i8 }
%struct.anon.196 = type { i32, i32, i32, i32 }
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
%struct.anon.197 = type { i16, i32, i32, i32, i32, i32 }
%struct.ath10k_radar_found_info = type { i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ath10k_bus_params = type { i32, i32, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ieee80211_txq = type { ptr, ptr, i8, i8, [2 x i8], [0 x i8] }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.129, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.129 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.130] }
%struct.anon.130 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.htt_q_state = type { [8 x [528 x i8]], [8 x [17 x i32]], i32 }
%struct.page = type { i32, %union.anon.17, %union.anon.86, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.86 = type { %struct.atomic_t }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, i32, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.htt_data_tx_desc = type <{ i8, i16, i16, i16, i32, %union.anon.156, [0 x i8] }>
%union.anon.156 = type { i32 }
%struct.htt_cmd = type { %struct.htt_cmd_hdr, %union.anon.198 }
%struct.htt_cmd_hdr = type { i8 }
%union.anon.198 = type { %struct.htt_frag_desc_bank_cfg64 }
%struct.htt_frag_desc_bank_cfg64 = type <{ i8, i8, i8, [4 x i64], [4 x %struct.htt_frag_desc_bank_id], %struct.htt_q_state_conf }>
%struct.htt_frag_desc_bank_id = type { i16, i16 }
%struct.htt_q_state_conf = type { i32, i16, i16, i8, i8, [2 x i8] }
%struct.htt_stats_req = type <{ [3 x i8], i8, [3 x i8], %struct.anon.200, i8, i32, i32 }>
%struct.anon.200 = type { i8, i8, i8 }
%struct.htt_tx_fetch_resp = type <{ i8, i16, i16, i16, i32, [0 x %struct.htt_tx_fetch_record] }>
%struct.htt_tx_fetch_record = type { i16, i16, i32 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.htt_mgmt_tx_desc = type <{ [3 x i8], i32, i32, i32, i32, [32 x i8], %union.anon.199 }>
%union.anon.199 = type { %struct.htt_mgmt_tx_desc_qca99x0 }
%struct.htt_mgmt_tx_desc_qca99x0 = type { i32 }
%struct.htt_rx_ring_setup_ring32 = type { i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.htt_rx_ring_setup_ring64 = type <{ i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }>
%struct.ath10k_hif_sg_item = type { i16, ptr, ptr, i32, i16 }
%struct.ath10k_htt_txbuf_64 = type { [2 x %struct.htt_data_tx_desc_frag], %struct.ath10k_htc_hdr, %struct.htt_cmd_hdr, %struct.htt_data_tx_desc_64 }
%struct.htt_data_tx_desc_frag = type { %union.anon.149 }
%union.anon.149 = type { %struct.double_word_addr }
%struct.double_word_addr = type { i32, i32 }
%struct.ath10k_htc_hdr = type { i8, i8, i16, %union.anon.152, %union.anon.153, %union.anon.154 }
%union.anon.152 = type { i8 }
%union.anon.153 = type { i8 }
%union.anon.154 = type { i16 }
%struct.htt_data_tx_desc_64 = type <{ i8, i16, i16, i16, i64, %union.anon.158, [0 x i8] }>
%union.anon.158 = type { i32 }
%struct.htt_msdu_ext_desc_64 = type { [5 x i32], i16, i8, i8, [6 x %struct.htt_data_tx_desc_frag] }
%struct.triple_word_addr = type { i32, i16, i16 }
%struct.anon.159 = type { i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ath10k_htt_txbuf_32 = type { [2 x %struct.htt_data_tx_desc_frag], %struct.ath10k_htc_hdr, %struct.htt_cmd_hdr, %struct.htt_data_tx_desc }
%struct.htt_msdu_ext_desc = type { [3 x i32], i16, i8, i8, [6 x %struct.htt_data_tx_desc_frag] }
%struct.anon.157 = type { i16, i16 }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireless/ath/ath10k/htt_tx.c\00", [55 x i8] zeroinitializer }, align 32
@ath10k_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"htt tx alloc msdu_id %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"htt tx free msdu_id %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"htt tx max num pending tx %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ath10k_htt_tx_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&htt->tx_lock\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"htt tx complete msdu id:%u ,flags1:%x\0A\00", [57 x i8] zeroinitializer }, align 32
@__kstrtab_ath10k_htt_hif_tx_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath10k_htt_hif_tx_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_ath10k_htt_hif_tx_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath10k_htt_hif_tx_complete to i32), ptr @__kstrtab_ath10k_htt_hif_tx_complete, ptr @__kstrtabns_ath10k_htt_hif_tx_complete }, section "___ksymtab+ath10k_htt_hif_tx_complete", align 4
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to send htt type stats request: %d\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to submit htc command: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@htt_tx_ops_hl = internal constant { %struct.ath10k_htt_tx_ops, [60 x i8] } { %struct.ath10k_htt_tx_ops { ptr @ath10k_htt_send_rx_ring_cfg_hl, ptr @ath10k_htt_send_frag_desc_bank_cfg_32, ptr null, ptr null, ptr @ath10k_htt_tx_hl, ptr null, ptr null, ptr @ath10k_htt_h2t_aggr_cfg_msg_32, ptr @ath10k_htt_flush_tx_queue }, [60 x i8] zeroinitializer }, align 32
@htt_tx_ops_64 = internal constant { %struct.ath10k_htt_tx_ops, [60 x i8] } { %struct.ath10k_htt_tx_ops { ptr @ath10k_htt_send_rx_ring_cfg_64, ptr @ath10k_htt_send_frag_desc_bank_cfg_64, ptr @ath10k_htt_tx_alloc_cont_frag_desc_64, ptr @ath10k_htt_tx_free_cont_frag_desc_64, ptr @ath10k_htt_tx_64, ptr @ath10k_htt_tx_alloc_cont_txbuf_64, ptr @ath10k_htt_tx_free_cont_txbuf_64, ptr @ath10k_htt_h2t_aggr_cfg_msg_v2, ptr null }, [60 x i8] zeroinitializer }, align 32
@htt_tx_ops_32 = internal constant { %struct.ath10k_htt_tx_ops, [60 x i8] } { %struct.ath10k_htt_tx_ops { ptr @ath10k_htt_send_rx_ring_cfg_32, ptr @ath10k_htt_send_frag_desc_bank_cfg_32, ptr @ath10k_htt_tx_alloc_cont_frag_desc_32, ptr @ath10k_htt_tx_free_cont_frag_desc_32, ptr @ath10k_htt_tx_32, ptr @ath10k_htt_tx_alloc_cont_txbuf_32, ptr @ath10k_htt_tx_free_cont_txbuf_32, ptr @ath10k_htt_h2t_aggr_cfg_msg_32, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"refusing to update txq for peer_id %u tid %u due to out of bounds\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"htt tx txq state update peer_id %u tid %u count %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"htt tx txq state update commit seq %u\0A\00", [57 x i8] zeroinitializer }, align 32
@__tracepoint_ath10k_log_dbg = external dso_local global %struct.tracepoint, align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to alloc cont tx buffer: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to alloc cont frag desc: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to alloc txq: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to alloc txdone fifo: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to dma map tx_q_state: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"force cleanup msdu_id %u\0A\00", [38 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid frag desc memory\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"htt frag desc bank cmd\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to send frag desc bank cfg request: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"Not enough headroom in skb. Current headroom: %u, needed: %u. Reallocating...\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"htt hl tx: Unable to realloc skb!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"msdu_id allocation failed %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"htt h2t aggr cfg msg amsdu %d ampdu %d\00", [57 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to alloc fragment desc memory\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"htt tx flags0 %u flags1 %u len %d id %u frags_paddr %pad, msdu_paddr %pad vdev %u tid %u freq %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"htt tx msdu: \00", [18 x i8] zeroinitializer }, align 32
@__tracepoint_ath10k_htt_tx = external dso_local global %struct.tracepoint, align 4
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/ath/ath10k/trace.h\00", [56 x i8] zeroinitializer }, align 32
@trace_ath10k_htt_tx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_ath10k_tx_hdr = external dso_local global %struct.tracepoint, align 4
@trace_ath10k_tx_hdr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ath10k_tx_payload = external dso_local global %struct.tracepoint, align 4
@trace_ath10k_tx_payload.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 40960, i64 49152, i64 53248]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 16, i64 40960, i64 49152, i64 53248]
@__sancov_gen_cov_switch_values.34 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 16, i64 40960, i64 49152, i64 53248]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 16, i64 40960, i64 49152, i64 53248]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 145, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 208, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 219, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 481, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 484, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 585, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 666, i32 19 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1160, i32 19 }
@___asan_gen_.66 = private unnamed_addr constant [14 x i8] c"htt_tx_ops_hl\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1837, i32 39 }
@___asan_gen_.69 = private unnamed_addr constant [14 x i8] c"htt_tx_ops_64\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1826, i32 39 }
@___asan_gen_.72 = private unnamed_addr constant [14 x i8] c"htt_tx_ops_32\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1815, i32 39 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 75, i32 19 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 84, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 105, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 378, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 440, i32 18 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 446, i32 18 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 452, i32 18 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 458, i32 18 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 409, i32 19 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 513, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 326, i32 6 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 688, i32 19 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 724, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 728, i32 19 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1353, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1359, i32 25 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1369, i32 19 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1063, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 363, i32 18 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1773, i32 2 }
@___asan_gen_.142 = private constant [44 x i8] c"../drivers/net/wireless/ath/ath10k/htt_tx.c\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 1777, i32 49 }
@___asan_gen_.148 = private unnamed_addr constant [43 x i8] c"../drivers/net/wireless/ath/ath10k/trace.h\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 294, i32 1 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 108, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__ksymtab_ath10k_htt_hif_tx_complete, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ath10k_htt_tx_start.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @htt_tx_ops_hl, ptr @htt_tx_ops_64, ptr @htt_tx_ops_32, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @xa_init_flags.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_htt_tx_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htt_tx_ops_hl to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htt_tx_ops_64 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htt_tx_ops_32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_htt_tx_txq_recalc(ptr nocapture noundef readonly %hw, ptr noundef %txq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tx_lock = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 44, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #9
  tail call fastcc void @__ath10k_htt_tx_txq_recalc(ptr noundef %hw, ptr noundef %txq)
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ath10k_htt_tx_txq_recalc(ptr nocapture noundef readonly %hw, ptr noundef %txq) unnamed_addr #0 align 64 {
entry:
  %frame_cnt = alloca i32, align 4
  %byte_cnt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %txq, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frame_cnt) #9
  %4 = ptrtoint ptr %frame_cnt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %frame_cnt, align 4, !annotation !94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %byte_cnt) #9
  %5 = ptrtoint ptr %byte_cnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %byte_cnt, align 4, !annotation !94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 44, i32 12, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !95

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 51, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tx_q_state = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 44, i32 27
  %7 = ptrtoint ptr %tx_q_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tx_q_state, align 8, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool25.not = icmp eq i8 %8, 0
  br i1 %tobool25.not, label %if.end.cleanup_crit_edge, label %if.end27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %mode = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 44, i32 27, i32 6
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp30.not = icmp eq i32 %10, 1
  br i1 %cmp30.not, label %if.end32, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %sta = getelementptr inbounds %struct.ieee80211_txq, ptr %txq, i32 0, i32 1
  %11 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sta, align 4
  %tobool33.not = icmp eq ptr %12, null
  %peer_id38 = getelementptr inbounds %struct.ieee80211_sta, ptr %12, i32 1, i32 0, i32 5
  %peer_id39 = getelementptr inbounds %struct.ieee80211_vif, ptr %3, i32 1, i32 1, i32 1
  %peer_id.0.in = select i1 %tobool33.not, ptr %peer_id39, ptr %peer_id38
  %13 = ptrtoint ptr %peer_id.0.in to i32
  call void @__asan_load2_noabort(i32 %13)
  %peer_id.0 = load i16, ptr %peer_id.0.in, align 4
  %tid41 = getelementptr inbounds %struct.ieee80211_txq, ptr %txq, i32 0, i32 2
  %14 = ptrtoint ptr %tid41 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tid41, align 4
  %conv = zext i16 %peer_id.0 to i32
  %rem = and i32 %conv, 31
  %shl = shl nuw i32 1, %rem
  %div142 = lshr i32 %conv, 5
  call void @ieee80211_txq_get_depth(ptr noundef %txq, ptr noundef nonnull %frame_cnt, ptr noundef nonnull %byte_cnt) #9
  %16 = ptrtoint ptr %byte_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %byte_cnt, align 4
  %shr.i = lshr i32 %17, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %17)
  %cmp20.i = icmp ugt i32 %17, 8191
  br i1 %cmp20.i, label %while.body.i, label %if.end32.if.end.i_crit_edge

if.end32.if.end.i_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

while.body.i:                                     ; preds = %if.end32
  %18 = lshr i32 %17, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %17)
  %cmp.i = icmp ugt i32 %17, 65535
  br i1 %cmp.i, label %while.body.i.1, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i.1:                                   ; preds = %while.body.i
  %19 = lshr i32 %17, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 524287, i32 %17)
  %cmp.i.1 = icmp ugt i32 %17, 524287
  br i1 %cmp.i.1, label %while.body.i.2, label %while.body.i.1.while.end.i_crit_edge

while.body.i.1.while.end.i_crit_edge:             ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i.2:                                   ; preds = %while.body.i.1
  %20 = lshr i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194303, i32 %17)
  %cmp.i.2 = icmp ugt i32 %17, 4194303
  br i1 %cmp.i.2, label %while.body.i.3, label %while.body.i.2.while.end.i_crit_edge

while.body.i.2.while.end.i_crit_edge:             ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i.3:                                   ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #11
  %21 = lshr i32 %17, 19
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.3, %while.body.i.2.while.end.i_crit_edge, %while.body.i.1.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  %.lcssa = phi i32 [ %18, %while.body.i.while.end.i_crit_edge ], [ %19, %while.body.i.1.while.end.i_crit_edge ], [ %20, %while.body.i.2.while.end.i_crit_edge ], [ %21, %while.body.i.3 ]
  %cmp3.i = phi i1 [ false, %while.body.i.while.end.i_crit_edge ], [ false, %while.body.i.1.while.end.i_crit_edge ], [ false, %while.body.i.2.while.end.i_crit_edge ], [ true, %while.body.i.3 ]
  %inc.i.lcssa = phi i32 [ 64, %while.body.i.while.end.i_crit_edge ], [ 128, %while.body.i.1.while.end.i_crit_edge ], [ 192, %while.body.i.2.while.end.i_crit_edge ], [ 256, %while.body.i.3 ]
  br i1 %cmp3.i, label %while.end.i.ath10k_htt_tx_txq_calc_size.exit_crit_edge, label %while.end.i.if.end.i_crit_edge

while.end.i.if.end.i_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

while.end.i.ath10k_htt_tx_txq_calc_size.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_htt_tx_txq_calc_size.exit

if.end.i:                                         ; preds = %while.end.i.if.end.i_crit_edge, %if.end32.if.end.i_crit_edge
  %factor.0.lcssa28.i = phi i32 [ %.lcssa, %while.end.i.if.end.i_crit_edge ], [ %shr.i, %if.end32.if.end.i_crit_edge ]
  %exp.0.lcssa27.i = phi i32 [ %inc.i.lcssa, %while.end.i.if.end.i_crit_edge ], [ 0, %if.end32.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp4.not.i = icmp eq i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %factor.0.lcssa28.i)
  %cmp6.i = icmp eq i32 %factor.0.lcssa28.i, 0
  %.factor.0.i = select i1 %cmp6.i, i32 1, i32 %factor.0.lcssa28.i
  %factor.1.i = select i1 %cmp4.not.i, i32 %factor.0.lcssa28.i, i32 %.factor.0.i
  %and9.i = and i32 %factor.1.i, 63
  %or.i = or i32 %and9.i, %exp.0.lcssa27.i
  %conv.i = trunc i32 %or.i to i8
  br label %ath10k_htt_tx_txq_calc_size.exit

ath10k_htt_tx_txq_calc_size.exit:                 ; preds = %if.end.i, %while.end.i.ath10k_htt_tx_txq_calc_size.exit_crit_edge
  %retval.0.i = phi i8 [ %conv.i, %if.end.i ], [ -1, %while.end.i.ath10k_htt_tx_txq_calc_size.exit_crit_edge ]
  %num_peers = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 44, i32 27, i32 4
  %22 = ptrtoint ptr %num_peers to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %num_peers, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %peer_id.0, i16 %23)
  %cmp48.not = icmp ult i16 %peer_id.0, %23
  %conv56 = zext i8 %15 to i32
  br i1 %cmp48.not, label %lor.lhs.false, label %ath10k_htt_tx_txq_calc_size.exit.if.then68_crit_edge, !prof !97

ath10k_htt_tx_txq_calc_size.exit.if.then68_crit_edge: ; preds = %ath10k_htt_tx_txq_calc_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then68

lor.lhs.false:                                    ; preds = %ath10k_htt_tx_txq_calc_size.exit
  %num_tids = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 44, i32 27, i32 5
  %24 = ptrtoint ptr %num_tids to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %num_tids, align 8
  %26 = zext i8 %15 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %26)
  %cmp60.not = icmp ugt i16 %25, %26
  br i1 %cmp60.not, label %if.end71, label %lor.lhs.false.if.then68_crit_edge, !prof !97

lor.lhs.false.if.then68_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then68

if.then68:                                        ; preds = %lor.lhs.false.if.then68_crit_edge, %ath10k_htt_tx_txq_calc_size.exit.if.then68_crit_edge
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef %conv, i32 noundef %conv56) #9
  br label %cleanup

if.end71:                                         ; preds = %lor.lhs.false
  %vaddr = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 44, i32 27, i32 1
  %27 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vaddr, align 4
  %arrayidx76 = getelementptr [8 x [528 x i8]], ptr %28, i32 0, i32 %conv56, i32 %conv
  %29 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %retval.0.i, ptr %arrayidx76, align 1
  %neg = xor i32 %shl, -1
  %30 = load ptr, ptr %vaddr, align 4
  %arrayidx82 = getelementptr %struct.htt_q_state, ptr %30, i32 0, i32 1, i32 %conv56, i32 %div142
  %31 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %arrayidx82, align 1
  %and = and i32 %32, %neg
  store i32 %and, ptr %arrayidx82, align 1
  %conv83 = zext i8 %retval.0.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.i)
  %tobool84.not = icmp eq i8 %retval.0.i, 0
  %spec.select = select i1 %tobool84.not, i32 0, i32 %shl
  %33 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vaddr, align 4
  %arrayidx91 = getelementptr %struct.htt_q_state, ptr %34, i32 0, i32 1, i32 %conv56, i32 %div142
  %35 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %arrayidx91, align 1
  %or = or i32 %36, %spec.select
  store i32 %or, ptr %arrayidx91, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %37 = load i32, ptr @ath10k_debug_mask, align 4
  %and93 = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %lor.lhs.false95, label %if.end71.if.then98_crit_edge

if.end71.if.then98_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then98

lor.lhs.false95:                                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@__ath10k_htt_tx_txq_recalc, %if.then98)) #9
          to label %cleanup [label %if.then98], !srcloc !98

if.then98:                                        ; preds = %lor.lhs.false95, %if.end71.if.then98_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.9, i32 noundef %conv, i32 noundef %conv56, i32 noundef %conv83) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then98, %lor.lhs.false95, %if.then68, %if.end27.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %byte_cnt) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame_cnt) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_htt_tx_txq_sync(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #9
  tail call fastcc void @__ath10k_htt_tx_txq_sync(ptr noundef %ar)
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ath10k_htt_tx_txq_sync(ptr noundef %ar) unnamed_addr #0 align 64 {
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
  %dep_map = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 12, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !95

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tx_q_state = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 27
  %1 = ptrtoint ptr %tx_q_state to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tx_q_state, align 8, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool25.not = icmp eq i8 %2, 0
  br i1 %tobool25.not, label %if.end.cleanup_crit_edge, label %if.end27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %mode = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 27, i32 6
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp30.not = icmp eq i32 %4, 1
  br i1 %cmp30.not, label %if.end32, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %vaddr = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 27, i32 1
  %5 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vaddr, align 4
  %seq35 = getelementptr inbounds %struct.htt_q_state, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %seq35 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %seq35, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %inc = add i32 %9, 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %inc)
  %11 = ptrtoint ptr %seq35 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %seq35, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %12 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %lor.lhs.false, label %if.end32.if.then43_crit_edge

if.end32.if.then43_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then43

lor.lhs.false:                                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@__ath10k_htt_tx_txq_sync, %if.then43)) #9
          to label %do.end46 [label %if.then43], !srcloc !98

if.then43:                                        ; preds = %lor.lhs.false, %if.end32.if.then43_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 8, ptr noundef nonnull @.str.10, i32 noundef %inc) #9
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %lor.lhs.false
  %dev = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 3
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %paddr = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 27, i32 2
  %15 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %paddr, align 8
  tail call void @dma_sync_single_for_device(ptr noundef %14, i32 noundef %16, i32 noundef 4772, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %if.end27.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_htt_tx_txq_update(ptr nocapture noundef readonly %hw, ptr noundef %txq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tx_lock = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 44, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #9
  tail call fastcc void @__ath10k_htt_tx_txq_recalc(ptr noundef %hw, ptr noundef %txq)
  tail call fastcc void @__ath10k_htt_tx_txq_sync(ptr noundef %1)
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_htt_tx_dec_pending(ptr noundef %htt) local_unnamed_addr #0 align 64 {
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
  %dep_map = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !95

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 145, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %num_pending_tx = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 14
  %1 = ptrtoint ptr %num_pending_tx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_pending_tx, align 4
  %dec = add i32 %2, -1
  store i32 %dec, ptr %num_pending_tx, align 4
  %max_num_pending_tx = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 13
  %3 = ptrtoint ptr %max_num_pending_tx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_num_pending_tx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp25 = icmp eq i32 %2, %4
  br i1 %cmp25, label %if.then26, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %htt, align 8
  tail call void @ath10k_mac_tx_unlock(ptr noundef %6, i32 noundef 0) #9
  %7 = ptrtoint ptr %num_pending_tx to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %num_pending_tx, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end.if.end27_crit_edge
  %8 = phi i32 [ %.pr, %if.then26 ], [ %dec, %if.end.if.end27_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp29 = icmp eq i32 %8, 0
  br i1 %cmp29, label %if.then30, label %if.end27.if.end31_crit_edge

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %empty_tx_wq = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 17
  tail call void @__wake_up(ptr noundef %empty_tx_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end27.if.end31_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_mac_tx_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_htt_tx_inc_pending(ptr noundef %htt) local_unnamed_addr #0 align 64 {
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
  %dep_map = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !95

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 157, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %num_pending_tx = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 14
  %1 = ptrtoint ptr %num_pending_tx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_pending_tx, align 4
  %max_num_pending_tx = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 13
  %3 = ptrtoint ptr %max_num_pending_tx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_num_pending_tx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp24.not = icmp slt i32 %2, %4
  br i1 %cmp24.not, label %if.end26, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end26:                                         ; preds = %if.end
  %inc = add nsw i32 %2, 1
  %5 = ptrtoint ptr %num_pending_tx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %inc, ptr %num_pending_tx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %4)
  %cmp30 = icmp eq i32 %inc, %4
  br i1 %cmp30, label %if.then31, label %if.end26.return_crit_edge

if.end26.return_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %htt, align 8
  tail call void @ath10k_mac_tx_lock(ptr noundef %7, i32 noundef 0) #9
  br label %return

return:                                           ; preds = %if.then31, %if.end26.return_crit_edge, %if.end.return_crit_edge
  %retval.0 = phi i32 [ -16, %if.end.return_crit_edge ], [ 0, %if.then31 ], [ 0, %if.end26.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_mac_tx_lock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_htt_tx_mgmt_inc_pending(ptr noundef %htt, i1 noundef zeroext %is_mgmt, i1 noundef zeroext %is_presp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !95

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 174, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  br i1 %is_mgmt, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %max_probe_resp_desc_thres = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 45, i32 11
  %3 = ptrtoint ptr %max_probe_resp_desc_thres to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_probe_resp_desc_thres, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool27.not = icmp eq i32 %4, 0
  br i1 %tobool27.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end29

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %lor.lhs.false
  br i1 %is_presp, label %land.lhs.true, label %if.end29.if.end35_crit_edge

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end29
  %num_pending_mgmt_tx = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 15
  %5 = ptrtoint ptr %num_pending_mgmt_tx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_pending_mgmt_tx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp33 = icmp ult i32 %4, %6
  br i1 %cmp33, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35:                                         ; preds = %land.lhs.true.if.end35_crit_edge, %if.end29.if.end35_crit_edge
  %num_pending_mgmt_tx36 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 15
  %7 = ptrtoint ptr %num_pending_mgmt_tx36 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_pending_mgmt_tx36, align 8
  %inc = add i32 %8, 1
  store i32 %inc, ptr %num_pending_mgmt_tx36, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -16, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_htt_tx_mgmt_dec_pending(ptr noundef %htt) local_unnamed_addr #0 align 64 {
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
  %dep_map = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !95

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 190, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %htt, align 8
  %max_probe_resp_desc_thres = getelementptr inbounds %struct.ath10k, ptr %2, i32 0, i32 45, i32 11
  %3 = ptrtoint ptr %max_probe_resp_desc_thres to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_probe_resp_desc_thres, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool24.not = icmp eq i32 %4, 0
  br i1 %tobool24.not, label %if.end.return_crit_edge, label %if.end26

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %num_pending_mgmt_tx = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 15
  %5 = ptrtoint ptr %num_pending_mgmt_tx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_pending_mgmt_tx, align 8
  %dec = add i32 %6, -1
  store i32 %dec, ptr %num_pending_mgmt_tx, align 8
  br label %return

return:                                           ; preds = %if.end26, %if.end.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_htt_tx_alloc_msdu_id(ptr noundef %htt, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  %tx_lock = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #9
  %pending_tx = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 16
  %max_num_pending_tx = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 13
  %2 = ptrtoint ptr %max_num_pending_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_num_pending_tx, align 8
  %call = tail call i32 @idr_alloc(ptr noundef %pending_tx, ptr noundef %skb, i32 noundef 0, i32 noundef %3, i32 noundef 2592) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %4 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_tx_alloc_msdu_id, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !98

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.1, i32 noundef %call) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ath10k_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_htt_tx_free_msdu_id(ptr noundef %htt, i16 noundef zeroext %msdu_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !95

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 217, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %3 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %lor.lhs.false, label %if.end.if.then28_crit_edge

if.end.if.then28_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_tx_free_msdu_id, %if.then28)) #9
          to label %do.end31 [label %if.then28], !srcloc !98

if.then28:                                        ; preds = %lor.lhs.false, %if.end.if.then28_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %msdu_id to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.2, i32 noundef %conv) #9
  br label %do.end31

do.end31:                                         ; preds = %if.then28, %lor.lhs.false
  %pending_tx = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 16
  %conv32 = zext i16 %msdu_id to i32
  %call33 = tail call ptr @idr_remove(ptr noundef %pending_tx, i32 noundef %conv32) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_htt_tx_start(ptr noundef %htt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %2 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_tx_start, %if.then)) #9
          to label %do.body2 [label %if.then], !srcloc !98

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  %max_num_pending_tx = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 13
  %3 = ptrtoint ptr %max_num_pending_tx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_num_pending_tx, align 8
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.3, i32 noundef %4) #9
  br label %do.body2

do.body2:                                         ; preds = %if.then, %lor.lhs.false
  %tx_lock = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @ath10k_htt_tx_start.__key, i16 noundef signext 3) #9
  %pending_tx = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %pending_tx, ptr noundef nonnull @.str.11, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #9
  %xa_flags.i.i.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 16, i32 0, i32 1
  %5 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 16, i32 0, i32 2
  %6 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 16, i32 1
  %7 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 16, i32 2
  %8 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %idr_next.i.i, align 4
  %tx_mem_allocated = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 28
  %9 = ptrtoint ptr %tx_mem_allocated to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tx_mem_allocated, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool6.not = icmp eq i8 %10, 0
  br i1 %tobool6.not, label %if.end8, label %do.body2.cleanup_crit_edge

do.body2.cleanup_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %do.body2
  %dev_type = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 136, i32 1
  %11 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end8
  %13 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %htt, align 8
  %tx_ops.i.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 29
  %15 = ptrtoint ptr %tx_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_ops.i.i, align 8
  %htt_alloc_txbuff.i.i = getelementptr inbounds %struct.ath10k_htt_tx_ops, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %htt_alloc_txbuff.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %htt_alloc_txbuff.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.end10.if.then.i_crit_edge, label %ath10k_htt_alloc_txbuff.exit.i

if.end10.if.then.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

ath10k_htt_alloc_txbuff.exit.i:                   ; preds = %if.end10
  %call.i.i = tail call i32 %18(ptr noundef %htt) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %ath10k_htt_alloc_txbuff.exit.i.if.then.i_crit_edge

ath10k_htt_alloc_txbuff.exit.i.if.then.i_crit_edge: ; preds = %ath10k_htt_alloc_txbuff.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %ath10k_htt_alloc_txbuff.exit.i.if.then.i_crit_edge, %if.end10.if.then.i_crit_edge
  %retval.0.i58.i = phi i32 [ %call.i.i, %ath10k_htt_alloc_txbuff.exit.i.if.then.i_crit_edge ], [ -95, %if.end10.if.then.i_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %14, ptr noundef nonnull @.str.12, i32 noundef %retval.0.i58.i) #9
  br label %free_idr_pending_tx

if.end.i:                                         ; preds = %ath10k_htt_alloc_txbuff.exit.i
  %19 = ptrtoint ptr %tx_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_ops.i.i, align 8
  %htt_alloc_frag_desc.i.i = getelementptr inbounds %struct.ath10k_htt_tx_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %htt_alloc_frag_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %htt_alloc_frag_desc.i.i, align 4
  %tobool.not.i35.i = icmp eq ptr %22, null
  br i1 %tobool.not.i35.i, label %if.end.i.if.then4.i_crit_edge, label %ath10k_htt_alloc_frag_desc.exit.i

if.end.i.if.then4.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4.i

ath10k_htt_alloc_frag_desc.exit.i:                ; preds = %if.end.i
  %call.i36.i = tail call i32 %22(ptr noundef %htt) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i)
  %tobool3.not.i = icmp eq i32 %call.i36.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %ath10k_htt_alloc_frag_desc.exit.i.if.then4.i_crit_edge

ath10k_htt_alloc_frag_desc.exit.i.if.then4.i_crit_edge: ; preds = %ath10k_htt_alloc_frag_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4.i

if.then4.i:                                       ; preds = %ath10k_htt_alloc_frag_desc.exit.i.if.then4.i_crit_edge, %if.end.i.if.then4.i_crit_edge
  %retval.0.i3861.i = phi i32 [ %call.i36.i, %ath10k_htt_alloc_frag_desc.exit.i.if.then4.i_crit_edge ], [ -95, %if.end.i.if.then4.i_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %14, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i3861.i) #9
  br label %free_txbuf.i

if.end5.i:                                        ; preds = %ath10k_htt_alloc_frag_desc.exit.i
  %23 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %htt, align 8
  %running_fw.i.i = getelementptr inbounds %struct.ath10k, ptr %24, i32 0, i32 47
  %25 = ptrtoint ptr %running_fw.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %running_fw.i.i, align 64
  %fw_features.i.i = getelementptr inbounds %struct.ath10k_fw_components, ptr %26, i32 0, i32 6, i32 2
  %27 = ptrtoint ptr %fw_features.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %fw_features.i.i, align 4
  %29 = and i32 %28, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i39.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i39.i, label %if.end5.i.ath10k_htt_tx_alloc_txdone_fifo.exit.i_crit_edge, label %if.end.i40.i

if.end5.i.ath10k_htt_tx_alloc_txdone_fifo.exit.i_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_htt_tx_alloc_txdone_fifo.exit.i

if.end.i40.i:                                     ; preds = %if.end5.i
  %num_peers.i.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 27, i32 4
  %30 = ptrtoint ptr %num_peers.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 528, ptr %num_peers.i.i, align 2
  %num_tids.i.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 27, i32 5
  %31 = ptrtoint ptr %num_tids.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 8, ptr %num_tids.i.i, align 8
  %type.i.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 27, i32 7
  %32 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %type.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 4772) #12
  %vaddr.i.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 27, i32 1
  %34 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i.i.i, ptr %vaddr.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool8.not.i.i, label %if.end.i40.i.if.then8.i_crit_edge, label %if.end10.i.i

if.end.i40.i.if.then8.i_crit_edge:                ; preds = %if.end.i40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8.i

if.end10.i.i:                                     ; preds = %if.end.i40.i
  %dev.i.i = getelementptr inbounds %struct.ath10k, ptr %24, i32 0, i32 3
  %35 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call7.i.i.i.i) #9
  br i1 %call.i.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end10.i.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !97

land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %36) #9
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %36, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %40, %if.end.i.i.i.i ], [ %38, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.19, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #9
  br label %dma_map_single_attrs.exit.i.i

if.end39.i.i.i:                                   ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %36, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 4772) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %41 = load ptr, ptr @mem_map, align 4
  %42 = ptrtoint ptr %call7.i.i.i.i to i32
  %sub.i.i.i = add i32 %42, 1073741824
  %shr.i40.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %41, i32 %shr.i40.i.i
  %and.i.i.i = and i32 %42, 4088
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %36, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i.i, i32 noundef 4772, i32 noundef 1, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge
  %retval.0.i.i.i27 = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge ]
  %paddr.i.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 27, i32 2
  %43 = ptrtoint ptr %paddr.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %retval.0.i.i.i27, ptr %paddr.i.i, align 8
  %44 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %45, i32 noundef %retval.0.i.i.i27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i.i27)
  %cmp.i.i.i = icmp eq i32 %retval.0.i.i.i27, -1
  br i1 %cmp.i.i.i, label %if.then20.i.i, label %dma_map_single_attrs.exit.i.i.ath10k_htt_tx_alloc_txdone_fifo.exit.i_crit_edge

dma_map_single_attrs.exit.i.i.ath10k_htt_tx_alloc_txdone_fifo.exit.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_htt_tx_alloc_txdone_fifo.exit.i

if.then20.i.i:                                    ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %24, ptr noundef nonnull @.str.16, i32 noundef -12) #9
  %46 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vaddr.i.i, align 4
  tail call void @kfree(ptr noundef %47) #9
  br label %if.then8.i

if.then8.i:                                       ; preds = %if.then20.i.i, %if.end.i40.i.if.then8.i_crit_edge
  %retval.0.i41.i = phi i32 [ -5, %if.then20.i.i ], [ -12, %if.end.i40.i.if.then8.i_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %14, ptr noundef nonnull @.str.14, i32 noundef %retval.0.i41.i) #9
  br label %free_frag_desc.i

ath10k_htt_tx_alloc_txdone_fifo.exit.i:           ; preds = %dma_map_single_attrs.exit.i.i.ath10k_htt_tx_alloc_txdone_fifo.exit.i_crit_edge, %if.end5.i.ath10k_htt_tx_alloc_txdone_fifo.exit.i_crit_edge
  %max_num_pending_tx.i.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 13
  %48 = ptrtoint ptr %max_num_pending_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_num_pending_tx.i.i, align 8
  %sub.i34.i.i = add i32 %49, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i34.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %sub.i34.i.i, 0
  %50 = tail call i32 @llvm.ctlz.i32(i32 %sub.i34.i.i, i1 true) #9, !range !99
  %sub.i.i.i.i.i = sub nuw nsw i32 32, %50
  %sub.i.i.op.i.i.i = shl nuw i32 1, %sub.i.i.i.i.i
  %shl.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 1, i32 %sub.i.i.op.i.i.i
  %txdone_fifo.i.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 18
  %call25.i.i = tail call i32 @__kfifo_alloc(ptr noundef %txdone_fifo.i.i, i32 noundef %shl.i.i.i, i32 noundef 6, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %tobool11.not.i = icmp eq i32 %call25.i.i, 0
  br i1 %tobool11.not.i, label %if.end14, label %if.then12.i

if.then12.i:                                      ; preds = %ath10k_htt_tx_alloc_txdone_fifo.exit.i
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %14, ptr noundef nonnull @.str.15, i32 noundef %call25.i.i) #9
  %51 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %htt, align 8
  %running_fw.i42.i = getelementptr inbounds %struct.ath10k, ptr %52, i32 0, i32 47
  %53 = ptrtoint ptr %running_fw.i42.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %running_fw.i42.i, align 64
  %fw_features.i43.i = getelementptr inbounds %struct.ath10k_fw_components, ptr %54, i32 0, i32 6, i32 2
  %55 = ptrtoint ptr %fw_features.i43.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %fw_features.i43.i, align 4
  %57 = and i32 %56, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i44.i = icmp eq i32 %57, 0
  br i1 %tobool.not.i44.i, label %if.then12.i.free_frag_desc.i_crit_edge, label %if.end.i48.i

if.then12.i.free_frag_desc.i_crit_edge:           ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_frag_desc.i

if.end.i48.i:                                     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i45.i = getelementptr inbounds %struct.ath10k, ptr %52, i32 0, i32 3
  %58 = ptrtoint ptr %dev.i45.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i45.i, align 4
  %paddr.i46.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 27, i32 2
  %60 = ptrtoint ptr %paddr.i46.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %paddr.i46.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %59, i32 noundef %61, i32 noundef 4772, i32 noundef 1, i32 noundef 0) #9
  %vaddr.i47.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 27, i32 1
  %62 = ptrtoint ptr %vaddr.i47.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vaddr.i47.i, align 4
  tail call void @kfree(ptr noundef %63) #9
  br label %free_frag_desc.i

free_frag_desc.i:                                 ; preds = %if.end.i48.i, %if.then12.i.free_frag_desc.i_crit_edge, %if.then8.i
  %ret.0.i = phi i32 [ %retval.0.i41.i, %if.then8.i ], [ %call25.i.i, %if.then12.i.free_frag_desc.i_crit_edge ], [ %call25.i.i, %if.end.i48.i ]
  %64 = ptrtoint ptr %tx_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tx_ops.i.i, align 8
  %htt_free_frag_desc.i.i = getelementptr inbounds %struct.ath10k_htt_tx_ops, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %htt_free_frag_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %htt_free_frag_desc.i.i, align 4
  %tobool.not.i50.i = icmp eq ptr %67, null
  br i1 %tobool.not.i50.i, label %free_frag_desc.i.free_txbuf.i_crit_edge, label %if.then.i.i

free_frag_desc.i.free_txbuf.i_crit_edge:          ; preds = %free_frag_desc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_txbuf.i

if.then.i.i:                                      ; preds = %free_frag_desc.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %67(ptr noundef %htt) #9
  br label %free_txbuf.i

free_txbuf.i:                                     ; preds = %if.then.i.i, %free_frag_desc.i.free_txbuf.i_crit_edge, %if.then4.i
  %ret.1.i = phi i32 [ %retval.0.i3861.i, %if.then4.i ], [ %ret.0.i, %free_frag_desc.i.free_txbuf.i_crit_edge ], [ %ret.0.i, %if.then.i.i ]
  %68 = ptrtoint ptr %tx_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tx_ops.i.i, align 8
  %htt_free_txbuff.i.i = getelementptr inbounds %struct.ath10k_htt_tx_ops, ptr %69, i32 0, i32 6
  %70 = ptrtoint ptr %htt_free_txbuff.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %htt_free_txbuff.i.i, align 4
  %tobool.not.i53.i = icmp eq ptr %71, null
  br i1 %tobool.not.i53.i, label %free_txbuf.i.free_idr_pending_tx_crit_edge, label %if.then.i54.i

free_txbuf.i.free_idr_pending_tx_crit_edge:       ; preds = %free_txbuf.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_idr_pending_tx

if.then.i54.i:                                    ; preds = %free_txbuf.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %71(ptr noundef %htt) #9
  br label %free_idr_pending_tx

if.end14:                                         ; preds = %ath10k_htt_tx_alloc_txdone_fifo.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %tx_mem_allocated to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %tx_mem_allocated, align 4
  br label %cleanup

free_idr_pending_tx:                              ; preds = %if.then.i54.i, %free_txbuf.i.free_idr_pending_tx_crit_edge, %if.then.i
  %retval.0.i.ph = phi i32 [ %ret.1.i, %if.then.i54.i ], [ %ret.1.i, %free_txbuf.i.free_idr_pending_tx_crit_edge ], [ %retval.0.i58.i, %if.then.i ]
  tail call void @idr_destroy(ptr noundef %pending_tx) #9
  br label %cleanup

cleanup:                                          ; preds = %free_idr_pending_tx, %if.end14, %if.end8.cleanup_crit_edge, %do.body2.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %free_idr_pending_tx ], [ 0, %if.end14 ], [ 0, %do.body2.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_htt_tx_destroy(ptr noundef %htt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_mem_allocated = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 28
  %0 = ptrtoint ptr %tx_mem_allocated to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx_mem_allocated, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %tx_ops.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 29
  %2 = ptrtoint ptr %tx_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ops.i, align 8
  %htt_free_txbuff.i = getelementptr inbounds %struct.ath10k_htt_tx_ops, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %htt_free_txbuff.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %htt_free_txbuff.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.ath10k_htt_free_txbuff.exit_crit_edge, label %if.then.i

if.end.ath10k_htt_free_txbuff.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_htt_free_txbuff.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %5(ptr noundef %htt) #9
  br label %ath10k_htt_free_txbuff.exit

ath10k_htt_free_txbuff.exit:                      ; preds = %if.then.i, %if.end.ath10k_htt_free_txbuff.exit_crit_edge
  %6 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %htt, align 8
  %running_fw.i = getelementptr inbounds %struct.ath10k, ptr %7, i32 0, i32 47
  %8 = ptrtoint ptr %running_fw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %running_fw.i, align 64
  %fw_features.i = getelementptr inbounds %struct.ath10k_fw_components, ptr %9, i32 0, i32 6, i32 2
  %10 = ptrtoint ptr %fw_features.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %fw_features.i, align 4
  %12 = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i7 = icmp eq i32 %12, 0
  br i1 %tobool.not.i7, label %ath10k_htt_free_txbuff.exit.ath10k_htt_tx_free_txq.exit_crit_edge, label %if.end.i

ath10k_htt_free_txbuff.exit.ath10k_htt_tx_free_txq.exit_crit_edge: ; preds = %ath10k_htt_free_txbuff.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_htt_tx_free_txq.exit

if.end.i:                                         ; preds = %ath10k_htt_free_txbuff.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.ath10k, ptr %7, i32 0, i32 3
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %paddr.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 27, i32 2
  %15 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %paddr.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %14, i32 noundef %16, i32 noundef 4772, i32 noundef 1, i32 noundef 0) #9
  %vaddr.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 27, i32 1
  %17 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vaddr.i, align 4
  tail call void @kfree(ptr noundef %18) #9
  br label %ath10k_htt_tx_free_txq.exit

ath10k_htt_tx_free_txq.exit:                      ; preds = %if.end.i, %ath10k_htt_free_txbuff.exit.ath10k_htt_tx_free_txq.exit_crit_edge
  %19 = ptrtoint ptr %tx_ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_ops.i, align 8
  %htt_free_frag_desc.i = getelementptr inbounds %struct.ath10k_htt_tx_ops, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %htt_free_frag_desc.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %htt_free_frag_desc.i, align 4
  %tobool.not.i9 = icmp eq ptr %22, null
  br i1 %tobool.not.i9, label %ath10k_htt_tx_free_txq.exit.ath10k_htt_free_frag_desc.exit_crit_edge, label %if.then.i10

ath10k_htt_tx_free_txq.exit.ath10k_htt_free_frag_desc.exit_crit_edge: ; preds = %ath10k_htt_tx_free_txq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_htt_free_frag_desc.exit

if.then.i10:                                      ; preds = %ath10k_htt_tx_free_txq.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %22(ptr noundef %htt) #9
  br label %ath10k_htt_free_frag_desc.exit

ath10k_htt_free_frag_desc.exit:                   ; preds = %if.then.i10, %ath10k_htt_tx_free_txq.exit.ath10k_htt_free_frag_desc.exit_crit_edge
  %txdone_fifo.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 18
  %23 = ptrtoint ptr %txdone_fifo.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %txdone_fifo.i, align 4
  %out.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 18, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %out.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp.not.i = icmp eq i32 %24, %26
  br i1 %cmp.not.i, label %ath10k_htt_free_frag_desc.exit.ath10k_htt_tx_free_txdone_fifo.exit_crit_edge, label %do.end.i, !prof !97

ath10k_htt_free_frag_desc.exit.ath10k_htt_tx_free_txdone_fifo.exit_crit_edge: ; preds = %ath10k_htt_free_frag_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_htt_tx_free_txdone_fifo.exit

do.end.i:                                         ; preds = %ath10k_htt_free_frag_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 419, i32 noundef 9, ptr noundef null) #9
  br label %ath10k_htt_tx_free_txdone_fifo.exit

ath10k_htt_tx_free_txdone_fifo.exit:              ; preds = %do.end.i, %ath10k_htt_free_frag_desc.exit.ath10k_htt_tx_free_txdone_fifo.exit_crit_edge
  tail call void @__kfifo_free(ptr noundef %txdone_fifo.i) #9
  %27 = ptrtoint ptr %tx_mem_allocated to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %tx_mem_allocated, align 4
  br label %return

return:                                           ; preds = %ath10k_htt_tx_free_txdone_fifo.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_htt_tx_stop(ptr noundef %htt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  tail call void @ath10k_htc_stop_hl(ptr noundef %1) #9
  %pending_tx.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 16
  %2 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %htt, align 8
  %call.i = tail call i32 @idr_for_each(ptr noundef %pending_tx.i, ptr noundef nonnull @ath10k_htt_tx_clean_up_pending, ptr noundef %3) #9
  tail call void @idr_destroy(ptr noundef %pending_tx.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_htt_flush_tx_queue(ptr noundef %htt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  tail call void @ath10k_htc_stop_hl(ptr noundef %1) #9
  %pending_tx = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 16
  %2 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %htt, align 8
  %call = tail call i32 @idr_for_each(ptr noundef %pending_tx, ptr noundef nonnull @ath10k_htt_tx_clean_up_pending, ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_htt_tx_free(ptr noundef %htt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  tail call void @ath10k_htc_stop_hl(ptr noundef %1) #9
  %pending_tx.i.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 16
  %2 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %htt, align 8
  %call.i.i = tail call i32 @idr_for_each(ptr noundef %pending_tx.i.i, ptr noundef nonnull @ath10k_htt_tx_clean_up_pending, ptr noundef %3) #9
  tail call void @idr_destroy(ptr noundef %pending_tx.i.i) #9
  tail call void @ath10k_htt_tx_destroy(ptr noundef %htt)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_htt_op_ep_tx_credits(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %workqueue = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 77
  %0 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %workqueue, align 8
  %bundle_tx_work = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 106
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %bundle_tx_work) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_htt_htc_tx_complete(ptr noundef %ar, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %tx_done = alloca %struct.htt_tx_done, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %htt1 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %tx_done) #9
  %0 = getelementptr inbounds i8, ptr %tx_done, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %0, align 2
  %disable_tx_comp = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 31
  %2 = ptrtoint ptr %disable_tx_comp to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disable_tx_comp, align 8, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp eq i8 %7, 1
  br i1 %cmp, label %if.then4, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %5, i32 1
  %flags16 = getelementptr i8, ptr %5, i32 2
  %8 = ptrtoint ptr %flags16 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %flags16, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #9
  %call7 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 15) #9
  %phi.cast = zext i16 %10 to i32
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %desc_hdr.0 = phi ptr [ %add.ptr, %if.then4 ], [ null, %if.then.if.end8_crit_edge ], [ null, %entry.if.end8_crit_edge ]
  %flags1.0 = phi i32 [ %phi.cast, %if.then4 ], [ 0, %if.then.if.end8_crit_edge ], [ 0, %entry.if.end8_crit_edge ]
  %msg_type.0 = phi i8 [ 1, %if.then4 ], [ %7, %if.then.if.end8_crit_edge ], [ 0, %entry.if.end8_crit_edge ]
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #9
  %11 = ptrtoint ptr %disable_tx_comp to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %disable_tx_comp, align 8, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool10.not = icmp ne i8 %12, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %msg_type.0)
  %cmp12.not = icmp eq i8 %msg_type.0, 1
  %or.cond = select i1 %tobool10.not, i1 %cmp12.not, i1 false
  br i1 %or.cond, label %do.body, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %13 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %lor.lhs.false17, label %do.body.if.then20_crit_edge

do.body.if.then20_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20

lor.lhs.false17:                                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_htc_tx_complete, %if.then20)) #9
          to label %do.end [label %if.then20], !srcloc !98

if.then20:                                        ; preds = %lor.lhs.false17, %do.body.if.then20_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  %id = getelementptr inbounds %struct.htt_data_tx_desc, ptr %desc_hdr.0, i32 0, i32 3
  %14 = ptrtoint ptr %id to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %id, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv21 = zext i16 %16 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 8, ptr noundef nonnull @.str.5, i32 noundef %conv21, i32 noundef %flags1.0) #9
  br label %do.end

do.end:                                           ; preds = %if.then20, %lor.lhs.false17
  %and25 = and i32 %flags1.0, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end28, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %status = getelementptr inbounds %struct.htt_tx_done, ptr %tx_done, i32 0, i32 1
  %17 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %status, align 2
  %id29 = getelementptr inbounds %struct.htt_data_tx_desc, ptr %desc_hdr.0, i32 0, i32 3
  %18 = ptrtoint ptr %id29 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %id29, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %21 = ptrtoint ptr %tx_done to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %tx_done, align 2
  %call31 = call i32 @ath10k_txrx_tx_unref(ptr noundef %htt1, ptr noundef nonnull %tx_done) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tx_done) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_txrx_tx_unref(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_htt_hif_tx_complete(ptr nocapture readnone %ar, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_htt_h2t_ver_req_msg(ptr nocapture noundef readonly %htt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  %call = tail call ptr @ath10k_htc_alloc_skb(ptr noundef %1, i32 noundef 4) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef 4) #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %3, align 1
  %5 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %htt, align 8
  %htc = getelementptr inbounds %struct.ath10k, ptr %6, i32 0, i32 42
  %eid = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 1
  %7 = ptrtoint ptr %eid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %eid, align 4
  %call5 = tail call i32 @ath10k_htc_send(ptr noundef %htc, i32 noundef %8, ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then7 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath10k_htc_alloc_skb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_htc_send(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_htt_h2t_stats_req(ptr nocapture noundef readonly %htt, i32 noundef %mask, i32 noundef %reset_mask, i64 noundef %cookie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  %call = tail call ptr @ath10k_htc_alloc_skb(ptr noundef %1, i32 noundef 20) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef 20) #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %3, align 1
  %5 = getelementptr inbounds %struct.htt_cmd, ptr %3, i32 0, i32 1
  %6 = getelementptr inbounds %struct.htt_cmd, ptr %3, i32 0, i32 1, i32 0, i32 3
  %7 = call ptr @memset(ptr %6, i32 0, i32 7)
  %mask.addr.0.extract.shift = lshr i32 %mask, 8
  %mask.addr.0.extract.trunc = trunc i32 %mask.addr.0.extract.shift to i24
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 3)
  store i24 %mask.addr.0.extract.trunc, ptr %5, align 1
  %reset_types = getelementptr inbounds %struct.htt_stats_req, ptr %5, i32 0, i32 2
  %reset_mask.addr.0.extract.shift = lshr i32 %reset_mask, 8
  %reset_mask.addr.0.extract.trunc = trunc i32 %reset_mask.addr.0.extract.shift to i24
  %9 = ptrtoint ptr %reset_types to i32
  call void @__asan_storeN_noabort(i32 %9, i32 3)
  store i24 %reset_mask.addr.0.extract.trunc, ptr %reset_types, align 1
  %stat_type = getelementptr inbounds %struct.htt_stats_req, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %stat_type to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %stat_type, align 1
  %conv = trunc i64 %cookie to i32
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %cookie_lsb = getelementptr inbounds %struct.htt_cmd, ptr %3, i32 0, i32 1, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %cookie_lsb to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %cookie_lsb, align 1
  %shr = lshr i64 %cookie, 32
  %conv6 = trunc i64 %shr to i32
  %13 = tail call i32 @llvm.bswap.i32(i32 %conv6)
  %cookie_msb = getelementptr inbounds %struct.htt_stats_req, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %cookie_msb to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %cookie_msb, align 1
  %15 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %htt, align 8
  %htc = getelementptr inbounds %struct.ath10k, ptr %16, i32 0, i32 42
  %eid = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 1
  %17 = ptrtoint ptr %eid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %eid, align 4
  %call8 = tail call i32 @ath10k_htc_send(ptr noundef %htc, i32 noundef %18, ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.then10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %call8) #9
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then10 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_htt_tx_fetch_resp(ptr noundef %ar, i32 noundef %token, i16 noundef zeroext %fetch_seq_num, ptr nocapture noundef readonly %records, i32 noundef %num_records) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %num_records, 3
  %add2 = add i32 %mul, 12
  %call = tail call ptr @ath10k_htc_alloc_skb(ptr noundef %ar, i32 noundef %add2) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef %add2) #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 11, ptr %1, align 1
  %3 = getelementptr inbounds %struct.htt_cmd, ptr %1, i32 0, i32 1
  %resp_id4 = getelementptr inbounds %struct.htt_cmd, ptr %1, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %resp_id4 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 0, ptr %resp_id4, align 1
  %fetch_seq_num5 = getelementptr inbounds %struct.htt_cmd, ptr %1, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %fetch_seq_num5 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %fetch_seq_num, ptr %fetch_seq_num5, align 1
  %conv = trunc i32 %num_records to i16
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %num_records6 = getelementptr inbounds %struct.htt_tx_fetch_resp, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %num_records6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %num_records6, align 1
  %token7 = getelementptr inbounds %struct.htt_tx_fetch_resp, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %token7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %token, ptr %token7, align 1
  %records8 = getelementptr inbounds %struct.htt_cmd, ptr %1, i32 0, i32 1, i32 0, i32 3, i32 1
  %9 = call ptr @memcpy(ptr %records8, ptr %records, i32 %mul)
  %htc = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 42
  %eid = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 1
  %10 = ptrtoint ptr %eid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %eid, align 4
  %call10 = tail call i32 @ath10k_htc_send(ptr noundef %htc, i32 noundef %11, ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end.cleanup_crit_edge, label %if.then12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.7, i32 noundef %call10) #9
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then12 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_htt_mgmt_tx(ptr noundef %htt, ptr noundef %msdu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  %dev2 = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 3, i32 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 3
  %5 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cb.i.i, align 8
  %and.i = and i32 %6, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %vdev_id.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 54, i32 6
  %7 = ptrtoint ptr %vdev_id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vdev_id.i, align 4
  br label %ath10k_htt_tx_get_vdev_id.exit

if.else.i:                                        ; preds = %entry
  %vif.i = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 3, i32 18
  %9 = ptrtoint ptr %vif.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load ptr, ptr %vif.i, align 1
  %tobool2.not.i = icmp eq ptr %10, null
  br i1 %tobool2.not.i, label %if.else7.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %vdev_id5.i = getelementptr inbounds %struct.ieee80211_vif, ptr %10, i32 1, i32 1
  %11 = ptrtoint ptr %vdev_id5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vdev_id5.i, align 4
  br label %ath10k_htt_tx_get_vdev_id.exit

if.else7.i:                                       ; preds = %if.else.i
  %monitor_started.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 64
  %13 = ptrtoint ptr %monitor_started.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %monitor_started.i, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool8.not.i = icmp eq i8 %14, 0
  br i1 %tobool8.not.i, label %if.else7.i.ath10k_htt_tx_get_vdev_id.exit_crit_edge, label %if.then9.i

if.else7.i.ath10k_htt_tx_get_vdev_id.exit_crit_edge: ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_htt_tx_get_vdev_id.exit

if.then9.i:                                       ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #11
  %monitor_vdev_id.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 63
  %15 = ptrtoint ptr %monitor_vdev_id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %monitor_vdev_id.i, align 8
  br label %ath10k_htt_tx_get_vdev_id.exit

ath10k_htt_tx_get_vdev_id.exit:                   ; preds = %if.then9.i, %if.else7.i.ath10k_htt_tx_get_vdev_id.exit_crit_edge, %if.then3.i, %if.then.i
  %retval.0.i = phi i32 [ %8, %if.then.i ], [ %12, %if.then3.i ], [ %16, %if.then9.i ], [ 0, %if.else7.i.ath10k_htt_tx_get_vdev_id.exit_crit_edge ]
  %data = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 19
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %tx_lock.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock.i) #9
  %pending_tx.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 16
  %max_num_pending_tx.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 13
  %19 = ptrtoint ptr %max_num_pending_tx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_num_pending_tx.i, align 8
  %call.i = tail call i32 @idr_alloc(ptr noundef %pending_tx.i, ptr noundef %msdu, i32 noundef 0, i32 noundef %20, i32 noundef 2592) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %21 = load i32, ptr @ath10k_debug_mask, align 4
  %and.i131 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i131)
  %tobool.not.i132 = icmp eq i32 %and.i131, 0
  br i1 %tobool.not.i132, label %lor.lhs.false.i, label %ath10k_htt_tx_get_vdev_id.exit.if.then.i133_crit_edge

ath10k_htt_tx_get_vdev_id.exit.if.then.i133_crit_edge: ; preds = %ath10k_htt_tx_get_vdev_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i133

lor.lhs.false.i:                                  ; preds = %ath10k_htt_tx_get_vdev_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_mgmt_tx, %if.then.i133)) #9
          to label %ath10k_htt_tx_alloc_msdu_id.exit [label %if.then.i133], !srcloc !98

if.then.i133:                                     ; preds = %lor.lhs.false.i, %ath10k_htt_tx_get_vdev_id.exit.if.then.i133_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.1, i32 noundef %call.i) #9
  br label %ath10k_htt_tx_alloc_msdu_id.exit

ath10k_htt_tx_alloc_msdu_id.exit:                 ; preds = %if.then.i133, %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %ath10k_htt_tx_alloc_msdu_id.exit.cleanup_crit_edge, label %if.end

ath10k_htt_tx_alloc_msdu_id.exit.cleanup_crit_edge: ; preds = %ath10k_htt_tx_alloc_msdu_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %ath10k_htt_tx_alloc_msdu_id.exit
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %18, align 2
  %24 = and i16 %23, -1024
  %25 = zext i16 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i16 %24, label %if.end.if.end28_crit_edge [
    i16 -12288, label %if.end.land.lhs.true_crit_edge
    i16 -16384, label %if.end.land.lhs.true_crit_edge151
    i16 -24576, label %if.end.land.lhs.true_crit_edge152
  ]

if.end.land.lhs.true_crit_edge152:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge151:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge151, %if.end.land.lhs.true_crit_edge152
  %26 = and i16 %23, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp.i136.not = icmp eq i16 %26, 0
  br i1 %cmp.i136.not, label %land.lhs.true.if.end28_crit_edge, label %if.then14

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then14:                                        ; preds = %land.lhs.true
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %18, i32 0, i32 2
  %27 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr1, align 4
  %29 = and i32 %28, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not = icmp eq i32 %29, 0
  br i1 %tobool.i.not, label %if.else, label %if.then14.if.end28.sink.split_crit_edge

if.then14.if.end28.sink.split_crit_edge:          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.sink.split

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %ucast_cipher = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 3, i32 26
  %30 = ptrtoint ptr %ucast_cipher to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %ucast_cipher, align 1
  %32 = and i32 %31, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027080, i32 %32)
  %switch = icmp eq i32 %32, 1027080
  %. = select i1 %switch, i32 16, i32 8
  br label %if.end28.sink.split

if.end28.sink.split:                              ; preds = %if.else, %if.then14.if.end28.sink.split_crit_edge
  %.sink = phi i32 [ 26, %if.then14.if.end28.sink.split_crit_edge ], [ %., %if.else ]
  %call17 = tail call ptr @skb_put(ptr noundef %msdu, i32 noundef %.sink) #9
  br label %if.end28

if.end28:                                         ; preds = %if.end28.sink.split, %land.lhs.true.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %call29 = tail call ptr @ath10k_htc_alloc_skb(ptr noundef %1, i32 noundef 56) #9
  %tobool.not = icmp eq ptr %call29, null
  br i1 %tobool.not, label %if.end28.err_free_msdu_id_crit_edge, label %if.end31

if.end28.err_free_msdu_id_crit_edge:              ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_msdu_id

if.end31:                                         ; preds = %if.end28
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %len33 = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 6
  %35 = ptrtoint ptr %len33 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len33, align 4
  %call.i137 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %34) #9
  br i1 %call.i137, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end31
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i138, !prof !97

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread

if.then.i138:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %3) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %37 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i138.dev_name.exit.i_crit_edge

if.then.i138.dev_name.exit.i_crit_edge:           ; preds = %if.then.i138
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i138
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i138.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %40, %if.end.i.i ], [ %38, %if.then.i138.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.19, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 -1, ptr %4, align 1
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef -1) #9
  br label %err_free_txdesc

dma_map_single_attrs.exit:                        ; preds = %if.end31
  tail call void @debug_dma_map_single(ptr noundef %3, ptr noundef %34, i32 noundef %36) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %42 = load ptr, ptr @mem_map, align 4
  %43 = ptrtoint ptr %34 to i32
  %sub.i = add i32 %43, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %42, i32 %shr.i
  %and.i139 = and i32 %43, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %add.ptr.i, i32 noundef %and.i139, i32 noundef %36, i32 noundef 1, i32 noundef 0) #9
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %call41.i, ptr %4, align 1
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %call41.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i141 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i141, label %dma_map_single_attrs.exit.err_free_txdesc_crit_edge, label %if.end39

dma_map_single_attrs.exit.err_free_txdesc_crit_edge: ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_txdesc

if.end39:                                         ; preds = %dma_map_single_attrs.exit
  %call40 = tail call ptr @skb_put(ptr noundef nonnull %call29, i32 noundef 56) #9
  %data41 = getelementptr inbounds %struct.sk_buff, ptr %call29, i32 0, i32 19
  %45 = ptrtoint ptr %data41 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data41, align 4
  %47 = getelementptr inbounds i8, ptr %46, i32 1
  %48 = call ptr @memset(ptr %47, i32 0, i32 55)
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 7, ptr %46, align 1
  %50 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %4, align 1
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %53 = getelementptr inbounds %struct.htt_cmd, ptr %46, i32 0, i32 1
  %msdu_paddr = getelementptr inbounds %struct.htt_cmd, ptr %46, i32 0, i32 1, i32 0, i32 3
  %54 = ptrtoint ptr %msdu_paddr to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %52, ptr %msdu_paddr, align 1
  %55 = ptrtoint ptr %len33 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len33, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %len46 = getelementptr inbounds %struct.htt_cmd, ptr %46, i32 0, i32 1, i32 0, i32 3, i32 1
  %58 = ptrtoint ptr %len46 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 %57, ptr %len46, align 1
  %59 = tail call i32 @llvm.bswap.i32(i32 %call.i)
  %desc_id = getelementptr inbounds %struct.htt_mgmt_tx_desc, ptr %53, i32 0, i32 2
  %60 = ptrtoint ptr %desc_id to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %59, ptr %desc_id, align 1
  %conv = shl i32 %retval.0.i, 24
  %vdev_id47 = getelementptr inbounds %struct.htt_mgmt_tx_desc, ptr %53, i32 0, i32 4
  %61 = ptrtoint ptr %vdev_id47 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %conv, ptr %vdev_id47, align 1
  %hdr48 = getelementptr inbounds %struct.htt_cmd, ptr %46, i32 0, i32 1, i32 0, i32 3, i32 2
  %62 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data, align 4
  %64 = ptrtoint ptr %len33 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len33, align 4
  %66 = tail call i32 @llvm.smin.i32(i32 %65, i32 32)
  %67 = call ptr @memcpy(ptr %hdr48, ptr %63, i32 %66)
  %68 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %htt, align 8
  %htc = getelementptr inbounds %struct.ath10k, ptr %69, i32 0, i32 42
  %eid = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 1
  %70 = ptrtoint ptr %eid to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %eid, align 4
  %call55 = tail call i32 @ath10k_htc_send(ptr noundef %htc, i32 noundef %71, ptr noundef nonnull %call29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end39.cleanup_crit_edge, label %err_unmap_msdu

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_unmap_msdu:                                   ; preds = %if.end39
  %dev_type = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 136, i32 1
  %72 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp59.not = icmp eq i32 %73, 1
  br i1 %cmp59.not, label %err_unmap_msdu.err_free_txdesc_crit_edge, label %if.then61

err_unmap_msdu.err_free_txdesc_crit_edge:         ; preds = %err_unmap_msdu
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_txdesc

if.then61:                                        ; preds = %err_unmap_msdu
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %4, align 1
  %76 = ptrtoint ptr %len33 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len33, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %75, i32 noundef %77, i32 noundef 1, i32 noundef 0) #9
  br label %err_free_txdesc

err_free_txdesc:                                  ; preds = %if.then61, %err_unmap_msdu.err_free_txdesc_crit_edge, %dma_map_single_attrs.exit.err_free_txdesc_crit_edge, %dma_map_single_attrs.exit.thread
  %res.0 = phi i32 [ %call55, %if.then61 ], [ %call55, %err_unmap_msdu.err_free_txdesc_crit_edge ], [ -5, %dma_map_single_attrs.exit.err_free_txdesc_crit_edge ], [ -5, %dma_map_single_attrs.exit.thread ]
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call29, i32 noundef 1) #9
  br label %err_free_msdu_id

err_free_msdu_id:                                 ; preds = %err_free_txdesc, %if.end28.err_free_msdu_id_crit_edge
  %res.1 = phi i32 [ %res.0, %err_free_txdesc ], [ -12, %if.end28.err_free_msdu_id_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock.i) #9
  %78 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %htt, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %80 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i142 = icmp eq i32 %80, 0
  br i1 %tobool.not.i142, label %err_free_msdu_id.if.end.i_crit_edge, label %land.rhs.i143

err_free_msdu_id.if.end.i_crit_edge:              ; preds = %err_free_msdu_id
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i143:                                    ; preds = %err_free_msdu_id
  %dep_map.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i143.if.end.i_crit_edge, !prof !95

land.rhs.i143.if.end.i_crit_edge:                 ; preds = %land.rhs.i143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i143
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 217, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i143.if.end.i_crit_edge, %err_free_msdu_id.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %81 = load i32, ptr @ath10k_debug_mask, align 4
  %and.i144 = and i32 %81, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i144)
  %tobool26.not.i = icmp eq i32 %and.i144, 0
  br i1 %tobool26.not.i, label %lor.lhs.false.i145, label %if.end.i.if.then28.i_crit_edge

if.end.i.if.then28.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28.i

lor.lhs.false.i145:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_mgmt_tx, %if.then28.i)) #9
          to label %ath10k_htt_tx_free_msdu_id.exit [label %if.then28.i], !srcloc !98

if.then28.i:                                      ; preds = %lor.lhs.false.i145, %if.end.i.if.then28.i_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i146 = and i32 %call.i, 65535
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %79, i32 noundef 8, ptr noundef nonnull @.str.2, i32 noundef %conv.i146) #9
  br label %ath10k_htt_tx_free_msdu_id.exit

ath10k_htt_tx_free_msdu_id.exit:                  ; preds = %if.then28.i, %lor.lhs.false.i145
  %conv32.i = and i32 %call.i, 65535
  %call33.i = tail call ptr @idr_remove(ptr noundef %pending_tx.i, i32 noundef %conv32.i) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock.i) #9
  br label %cleanup

cleanup:                                          ; preds = %ath10k_htt_tx_free_msdu_id.exit, %if.end39.cleanup_crit_edge, %ath10k_htt_tx_alloc_msdu_id.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end39.cleanup_crit_edge ], [ %call.i, %ath10k_htt_tx_alloc_msdu_id.exit.cleanup_crit_edge ], [ %res.1, %ath10k_htt_tx_free_msdu_id.exit ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath10k_htt_set_tx_ops(ptr nocapture noundef %htt) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  %dev_type = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 136, i32 1
  %2 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tx_ops = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 29
  %4 = ptrtoint ptr %tx_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @htt_tx_ops_hl, ptr %tx_ops, align 8
  br label %if.end6

if.else:                                          ; preds = %entry
  %target_64bit = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 45, i32 29
  %5 = ptrtoint ptr %target_64bit to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %target_64bit, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %tx_ops5 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 29
  br i1 %tobool.not, label %if.else4, label %if.then2

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %tx_ops5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @htt_tx_ops_64, ptr %tx_ops5, align 8
  br label %if.end6

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %tx_ops5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @htt_tx_ops_32, ptr %tx_ops5, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.else4, %if.then2, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_txq_get_depth(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_htc_stop_hl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_htt_tx_clean_up_pending(i32 noundef %msdu_id, ptr nocapture noundef readnone %skb, ptr noundef %ctx) #0 align 64 {
entry:
  %tx_done = alloca %struct.htt_tx_done, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %tx_done) #9
  %0 = getelementptr inbounds i8, ptr %tx_done, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %0, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %2 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_tx_clean_up_pending, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !98

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ctx, i32 noundef 8, ptr noundef nonnull @.str.17, i32 noundef %msdu_id) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %htt1 = getelementptr inbounds %struct.ath10k, ptr %ctx, i32 0, i32 44
  %conv = trunc i32 %msdu_id to i16
  %3 = ptrtoint ptr %tx_done to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %tx_done, align 2
  %status = getelementptr inbounds %struct.htt_tx_done, ptr %tx_done, i32 0, i32 1
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 3, ptr %status, align 2
  %call3 = call i32 @ath10k_txrx_tx_unref(ptr noundef %htt1, ptr noundef nonnull %tx_done) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tx_done) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_htt_send_rx_ring_cfg_hl(ptr nocapture noundef readonly %htt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  %call = tail call ptr @ath10k_htc_alloc_skb(ptr noundef %1, i32 noundef 40) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef 40) #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = getelementptr inbounds %struct.htt_cmd, ptr %3, i32 0, i32 1
  %rings = getelementptr inbounds %struct.htt_cmd, ptr %3, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %3, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %4, align 1
  %7 = call ptr @memset(ptr %rings, i32 0, i32 36)
  %rx_ring_len = getelementptr inbounds %struct.htt_cmd, ptr %3, i32 0, i32 1, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %rx_ring_len to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 -32768, ptr %rx_ring_len, align 1
  %rx_ring_bufsize = getelementptr inbounds %struct.htt_rx_ring_setup_ring32, ptr %rings, i32 0, i32 3
  %9 = ptrtoint ptr %rx_ring_bufsize to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 8, ptr %rx_ring_bufsize, align 1
  %flags14 = getelementptr inbounds %struct.htt_rx_ring_setup_ring32, ptr %rings, i32 0, i32 4
  %10 = ptrtoint ptr %flags14 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 524, ptr %flags14, align 1
  %11 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %htt, align 8
  %htc = getelementptr inbounds %struct.ath10k, ptr %12, i32 0, i32 42
  %eid = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 1
  %13 = ptrtoint ptr %eid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %eid, align 4
  %call16 = tail call i32 @ath10k_htc_send(ptr noundef %htc, i32 noundef %14, ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end.cleanup_crit_edge, label %if.then18

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.then18 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_htt_send_frag_desc_bank_cfg_32(ptr nocapture noundef readonly %htt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  %continuous_frag_desc = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 45, i32 8
  %2 = ptrtoint ptr %continuous_frag_desc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %continuous_frag_desc, align 32, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %frag_desc = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 25
  %4 = ptrtoint ptr %frag_desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frag_desc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.20) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call = tail call ptr @ath10k_htc_alloc_skb(ptr noundef %1, i32 noundef 48) #9
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %call8 = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef 48) #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 6, ptr %7, align 1
  %type = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 27, i32 7
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 8
  %.tr = trunc i32 %10 to i8
  %11 = shl i8 %.tr, 4
  %conv9 = and i8 %11, 16
  %running_fw = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 47
  %12 = ptrtoint ptr %running_fw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %running_fw, align 64
  %fw_features = getelementptr inbounds %struct.ath10k_fw_components, ptr %13, i32 0, i32 6, i32 2
  %14 = ptrtoint ptr %fw_features to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %fw_features, align 4
  %16 = lshr i32 %15, 10
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 8
  %19 = or i8 %18, %conv9
  %20 = getelementptr inbounds %struct.htt_cmd, ptr %7, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %19, ptr %20, align 1
  %num_banks = getelementptr inbounds %struct.htt_cmd, ptr %7, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %num_banks to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %num_banks, align 1
  %desc_size = getelementptr inbounds %struct.htt_cmd, ptr %7, i32 0, i32 1, i32 0, i32 2
  %23 = ptrtoint ptr %desc_size to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 64, ptr %desc_size, align 1
  %24 = ptrtoint ptr %frag_desc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %frag_desc, align 8
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %bank_base_addrs = getelementptr inbounds %struct.htt_cmd, ptr %7, i32 0, i32 1, i32 0, i32 3
  %27 = ptrtoint ptr %bank_base_addrs to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %bank_base_addrs, align 1
  %bank_id = getelementptr inbounds %struct.htt_cmd, ptr %7, i32 0, i32 1, i32 0, i32 3, i32 2
  %28 = ptrtoint ptr %bank_id to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 0, ptr %bank_id, align 1
  %max_num_pending_tx = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 13
  %29 = ptrtoint ptr %max_num_pending_tx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_num_pending_tx, align 8
  %31 = trunc i32 %30 to i16
  %conv21 = add i16 %31, -1
  %32 = tail call i16 @llvm.bswap.i16(i16 %conv21)
  %bank_max_id = getelementptr inbounds %struct.htt_frag_desc_bank_id, ptr %bank_id, i32 0, i32 1
  %33 = ptrtoint ptr %bank_max_id to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %32, ptr %bank_max_id, align 1
  %paddr25 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 27, i32 2
  %34 = ptrtoint ptr %paddr25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %paddr25, align 8
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %q_state = getelementptr inbounds %struct.htt_cmd, ptr %7, i32 0, i32 1, i32 0, i32 4
  %37 = ptrtoint ptr %q_state to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %q_state, align 1
  %num_peers = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 27, i32 4
  %38 = ptrtoint ptr %num_peers to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %num_peers, align 2
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  %num_peers29 = getelementptr inbounds %struct.htt_cmd, ptr %7, i32 0, i32 1, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %num_peers29 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %40, ptr %num_peers29, align 1
  %num_tids = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 27, i32 5
  %42 = ptrtoint ptr %num_tids to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %num_tids, align 8
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %num_tids32 = getelementptr inbounds %struct.htt_cmd, ptr %7, i32 0, i32 1, i32 0, i32 4, i32 1, i32 1
  %45 = ptrtoint ptr %num_tids32 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 %44, ptr %num_tids32, align 1
  %record_size = getelementptr inbounds %struct.htt_cmd, ptr %7, i32 0, i32 1, i32 0, i32 4, i32 2
  %46 = ptrtoint ptr %record_size to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %record_size, align 1
  %record_multiplier = getelementptr inbounds %struct.htt_q_state_conf, ptr %q_state, i32 0, i32 4
  %47 = ptrtoint ptr %record_multiplier to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %record_multiplier, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %48 = load i32, ptr @ath10k_debug_mask, align 4
  %and35 = and i32 %48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %lor.lhs.false, label %if.end7.if.then39_crit_edge

if.end7.if.then39_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39

lor.lhs.false:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_send_frag_desc_bank_cfg_32, %if.then39)) #9
          to label %do.end [label %if.then39], !srcloc !98

if.then39:                                        ; preds = %lor.lhs.false, %if.end7.if.then39_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.21) #9
  br label %do.end

do.end:                                           ; preds = %if.then39, %lor.lhs.false
  %49 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %htt, align 8
  %htc = getelementptr inbounds %struct.ath10k, ptr %50, i32 0, i32 42
  %eid = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 1
  %51 = ptrtoint ptr %eid to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %eid, align 4
  %call42 = tail call i32 @ath10k_htc_send(ptr noundef %htc, i32 noundef %52, ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.end.cleanup_crit_edge, label %if.then44

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then44:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %call42) #9
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %do.end.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %if.then44 ], [ -22, %if.then3 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_htt_tx_hl(ptr noundef %htt, i32 noundef %txmode, ptr noundef %msdu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %txmode)
  %cmp = icmp eq i32 %txmode, 2
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 3
  %4 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cb.i.i, align 8
  %and.i = and i32 %5, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %vdev_id.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 54, i32 6
  %6 = ptrtoint ptr %vdev_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vdev_id.i, align 4
  %conv.i = trunc i32 %7 to i8
  br label %ath10k_htt_tx_get_vdev_id.exit

if.else.i:                                        ; preds = %entry
  %vif.i = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 3, i32 18
  %8 = ptrtoint ptr %vif.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load ptr, ptr %vif.i, align 1
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %if.else7.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %vdev_id5.i = getelementptr inbounds %struct.ieee80211_vif, ptr %9, i32 1, i32 1
  %10 = ptrtoint ptr %vdev_id5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vdev_id5.i, align 4
  %conv6.i = trunc i32 %11 to i8
  br label %ath10k_htt_tx_get_vdev_id.exit

if.else7.i:                                       ; preds = %if.else.i
  %monitor_started.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 64
  %12 = ptrtoint ptr %monitor_started.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %monitor_started.i, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8.not.i = icmp eq i8 %13, 0
  br i1 %tobool8.not.i, label %if.else7.i.ath10k_htt_tx_get_vdev_id.exit_crit_edge, label %if.then9.i

if.else7.i.ath10k_htt_tx_get_vdev_id.exit_crit_edge: ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_htt_tx_get_vdev_id.exit

if.then9.i:                                       ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #11
  %monitor_vdev_id.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 63
  %14 = ptrtoint ptr %monitor_vdev_id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %monitor_vdev_id.i, align 8
  %conv10.i = trunc i32 %15 to i8
  br label %ath10k_htt_tx_get_vdev_id.exit

ath10k_htt_tx_get_vdev_id.exit:                   ; preds = %if.then9.i, %if.else7.i.ath10k_htt_tx_get_vdev_id.exit_crit_edge, %if.then3.i, %if.then.i
  %retval.0.i = phi i8 [ %conv.i, %if.then.i ], [ %conv6.i, %if.then3.i ], [ %conv10.i, %if.then9.i ], [ 0, %if.else7.i.ath10k_htt_tx_get_vdev_id.exit_crit_edge ]
  br i1 %cmp, label %ath10k_htt_tx_get_vdev_id.exit.if.else.i163_crit_edge, label %land.lhs.true.i

ath10k_htt_tx_get_vdev_id.exit.if.else.i163_crit_edge: ; preds = %ath10k_htt_tx_get_vdev_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i163

land.lhs.true.i:                                  ; preds = %ath10k_htt_tx_get_vdev_id.exit
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %3, align 2
  %18 = and i16 %17, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp.i.i = icmp eq i16 %18, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.ath10k_htt_tx_get_tid.exit_crit_edge, label %land.lhs.true.i.if.else.i163_crit_edge

land.lhs.true.i.if.else.i163_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i163

land.lhs.true.i.ath10k_htt_tx_get_tid.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_htt_tx_get_tid.exit

if.else.i163:                                     ; preds = %land.lhs.true.i.if.else.i163_crit_edge, %ath10k_htt_tx_get_vdev_id.exit.if.else.i163_crit_edge
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 3, i32 12
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags.i, align 1
  %21 = and i8 %20, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool2.not.i162 = icmp eq i8 %21, 0
  br i1 %tobool2.not.i162, label %if.else.i163.ath10k_htt_tx_get_tid.exit_crit_edge, label %if.then3.i164

if.else.i163.ath10k_htt_tx_get_tid.exit_crit_edge: ; preds = %if.else.i163
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_htt_tx_get_tid.exit

if.then3.i164:                                    ; preds = %if.else.i163
  call void @__sanitizer_cov_trace_pc() #11
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 15, i32 0, i32 6
  %22 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %priority.i, align 4
  %24 = trunc i32 %23 to i8
  %conv5.i = and i8 %24, 15
  br label %ath10k_htt_tx_get_tid.exit

ath10k_htt_tx_get_tid.exit:                       ; preds = %if.then3.i164, %if.else.i163.ath10k_htt_tx_get_tid.exit_crit_edge, %land.lhs.true.i.ath10k_htt_tx_get_tid.exit_crit_edge
  %retval.0.i165 = phi i8 [ %conv5.i, %if.then3.i164 ], [ 17, %land.lhs.true.i.ath10k_htt_tx_get_tid.exit_crit_edge ], [ 16, %if.else.i163.ath10k_htt_tx_get_tid.exit_crit_edge ]
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %3, align 2
  %27 = and i16 %26, -1024
  %28 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.33)
  switch i16 %27, label %ath10k_htt_tx_get_tid.exit.if.end_crit_edge [
    i16 -12288, label %ath10k_htt_tx_get_tid.exit.land.lhs.true_crit_edge
    i16 -16384, label %ath10k_htt_tx_get_tid.exit.land.lhs.true_crit_edge179
    i16 -24576, label %ath10k_htt_tx_get_tid.exit.land.lhs.true_crit_edge180
  ]

ath10k_htt_tx_get_tid.exit.land.lhs.true_crit_edge180: ; preds = %ath10k_htt_tx_get_tid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

ath10k_htt_tx_get_tid.exit.land.lhs.true_crit_edge179: ; preds = %ath10k_htt_tx_get_tid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

ath10k_htt_tx_get_tid.exit.land.lhs.true_crit_edge: ; preds = %ath10k_htt_tx_get_tid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

ath10k_htt_tx_get_tid.exit.if.end_crit_edge:      ; preds = %ath10k_htt_tx_get_tid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %ath10k_htt_tx_get_tid.exit.land.lhs.true_crit_edge, %ath10k_htt_tx_get_tid.exit.land.lhs.true_crit_edge179, %ath10k_htt_tx_get_tid.exit.land.lhs.true_crit_edge180
  %29 = and i16 %26, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp.i168.not = icmp eq i16 %29, 0
  br i1 %cmp.i168.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call ptr @skb_put(ptr noundef %msdu, i32 noundef 8) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %ath10k_htt_tx_get_tid.exit.if.end_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 6
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 4
  %32 = zext i32 %txmode to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %txmode, label %if.end.sw.epilog_crit_edge [
    i32 0, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge181
    i32 2, label %if.end.sw.bb14_crit_edge
    i32 3, label %sw.bb18
  ]

if.end.sw.bb14_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb14

if.end.sw.bb_crit_edge181:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge181
  br label %sw.bb14

sw.bb14:                                          ; preds = %sw.bb, %if.end.sw.bb14_crit_edge
  %flags0.0 = phi i32 [ 0, %if.end.sw.bb14_crit_edge ], [ 1, %sw.bb ]
  %shl = shl nuw nsw i32 %txmode, 5
  %or16 = or i32 %flags0.0, %shl
  %conv17 = trunc i32 %or16 to i8
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %disable_tx_comp = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 31
  %33 = ptrtoint ptr %disable_tx_comp to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %disable_tx_comp, align 8, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool25.not = icmp eq i8 %34, 0
  %spec.select = select i1 %tobool25.not, i16 0, i16 -32768
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb14, %if.end.sw.epilog_crit_edge
  %flags0.1 = phi i8 [ 0, %if.end.sw.epilog_crit_edge ], [ %conv17, %sw.bb14 ], [ 97, %sw.bb18 ]
  %flags1.0 = phi i16 [ 0, %if.end.sw.epilog_crit_edge ], [ 0, %sw.bb14 ], [ %spec.select, %sw.bb18 ]
  %flags = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 3, i32 12
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %flags, align 1
  %37 = shl i8 %36, 2
  %38 = and i8 %37, 4
  %39 = or i8 %38, %flags0.1
  %40 = and i8 %retval.0.i, 63
  %and42 = zext i8 %40 to i16
  %or44 = or i16 %flags1.0, %and42
  %conv47 = zext i8 %retval.0.i165 to i16
  %shl48 = shl nuw nsw i16 %conv47, 6
  %or51 = or i16 %or44, %shl48
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 15
  %41 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load = load i16, ptr %ip_summed, align 8
  %42 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %42)
  %cmp54 = icmp eq i16 %42, 1536
  br i1 %cmp54, label %land.lhs.true56, label %sw.epilog.if.end66_crit_edge

sw.epilog.if.end66_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

land.lhs.true56:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %dev_flags = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 66
  %43 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %dev_flags, align 4
  %45 = and i32 %44, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool58.not = icmp eq i32 %45, 0
  %46 = or i16 %or51, 24576
  %spec.select161 = select i1 %tobool58.not, i16 %46, i16 %or51
  br label %if.end66

if.end66:                                         ; preds = %land.lhs.true56, %sw.epilog.if.end66_crit_edge
  %flags1.1 = phi i16 [ %or51, %sw.epilog.if.end66_crit_edge ], [ %spec.select161, %land.lhs.true56 ]
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 18
  %49 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %48 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %50 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.ptr.sub.i)
  %cmp68 = icmp ult i32 %sub.ptr.sub.i, 24
  br i1 %cmp68, label %if.then70, label %if.end66.if.end85_crit_edge

if.end66.if.end85_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then70:                                        ; preds = %if.end66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %51 = load i32, ptr @ath10k_debug_mask, align 4
  %and71 = and i32 %51, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %lor.lhs.false73, label %if.then70.if.then76_crit_edge

if.then70.if.then76_crit_edge:                    ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then76

lor.lhs.false73:                                  ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_tx_hl, %if.then76)) #9
          to label %do.end [label %if.then76], !srcloc !98

if.then76:                                        ; preds = %lor.lhs.false73, %if.then70.if.then76_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %htt, align 8
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data, align 4
  %56 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i172 = ptrtoint ptr %55 to i32
  %sub.ptr.rhs.cast.i173 = ptrtoint ptr %57 to i32
  %sub.ptr.sub.i174 = sub i32 %sub.ptr.lhs.cast.i172, %sub.ptr.rhs.cast.i173
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %53, i32 noundef 8, ptr noundef nonnull @.str.23, i32 noundef %sub.ptr.sub.i174, i32 noundef 24) #9
  br label %do.end

do.end:                                           ; preds = %if.then76, %lor.lhs.false73
  %call80 = tail call ptr @skb_realloc_headroom(ptr noundef %msdu, i32 noundef 24) #9
  tail call void @kfree_skb_reason(ptr noundef %msdu, i32 noundef 0) #9
  %tobool81.not = icmp eq ptr %call80, null
  br i1 %tobool81.not, label %if.then82, label %do.end.if.end85_crit_edge

do.end.if.end85_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then82:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %htt, align 8
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %59, ptr noundef nonnull @.str.24) #9
  br label %out

if.end85:                                         ; preds = %do.end.if.end85_crit_edge, %if.end66.if.end85_crit_edge
  %msdu.addr.0 = phi ptr [ %call80, %do.end.if.end85_crit_edge ], [ %msdu, %if.end66.if.end85_crit_edge ]
  %hl_msdu_ids = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 136, i32 3
  %60 = ptrtoint ptr %hl_msdu_ids to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %hl_msdu_ids, align 1, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool86.not = icmp eq i8 %61, 0
  br i1 %tobool86.not, label %if.end85.if.end97_crit_edge, label %if.then87

if.end85.if.end97_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then87:                                        ; preds = %if.end85
  %62 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %htt, align 8
  %tx_lock.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock.i) #9
  %pending_tx.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 16
  %max_num_pending_tx.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 13
  %64 = ptrtoint ptr %max_num_pending_tx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %max_num_pending_tx.i, align 8
  %call.i = tail call i32 @idr_alloc(ptr noundef %pending_tx.i, ptr noundef %msdu.addr.0, i32 noundef 0, i32 noundef %65, i32 noundef 2592) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %66 = load i32, ptr @ath10k_debug_mask, align 4
  %and.i175 = and i32 %66, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i175)
  %tobool.not.i176 = icmp eq i32 %and.i175, 0
  br i1 %tobool.not.i176, label %lor.lhs.false.i, label %if.then87.if.then.i177_crit_edge

if.then87.if.then.i177_crit_edge:                 ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i177

lor.lhs.false.i:                                  ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_tx_hl, %if.then.i177)) #9
          to label %ath10k_htt_tx_alloc_msdu_id.exit [label %if.then.i177], !srcloc !98

if.then.i177:                                     ; preds = %lor.lhs.false.i, %if.then87.if.then.i177_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %63, i32 noundef 8, ptr noundef nonnull @.str.1, i32 noundef %call.i) #9
  br label %ath10k_htt_tx_alloc_msdu_id.exit

ath10k_htt_tx_alloc_msdu_id.exit:                 ; preds = %if.then.i177, %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp92 = icmp slt i32 %call.i, 0
  br i1 %cmp92, label %if.then94, label %if.end95

if.then94:                                        ; preds = %ath10k_htt_tx_alloc_msdu_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %1, ptr noundef nonnull @.str.25, i32 noundef %call.i) #9
  br label %out

if.end95:                                         ; preds = %ath10k_htt_tx_alloc_msdu_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  %67 = or i16 %flags1.1, 2048
  %conv96 = trunc i32 %call.i to i16
  br label %if.end97

if.end97:                                         ; preds = %if.end95, %if.end85.if.end97_crit_edge
  %flags1.2 = phi i16 [ %67, %if.end95 ], [ %flags1.1, %if.end85.if.end97_crit_edge ]
  %msdu_id.0 = phi i16 [ %conv96, %if.end95 ], [ 0, %if.end85.if.end97_crit_edge ]
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %msdu.addr.0, i32 0, i32 21
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #9
  %68 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #9, !srcloc !100
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %68, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end97.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !95

if.end97.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end97
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %69 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %69)
  %.not.i.i.i.i = icmp sgt i32 %69, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !97

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end97.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end97.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #9
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  %call99 = tail call ptr @skb_push(ptr noundef %msdu.addr.0, i32 noundef 1) #9
  %call100 = tail call ptr @skb_push(ptr noundef %msdu.addr.0, i32 noundef 15) #9
  %data101 = getelementptr inbounds %struct.sk_buff, ptr %msdu.addr.0, i32 0, i32 19
  %70 = ptrtoint ptr %data101 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data101, align 4
  %add.ptr = getelementptr i8, ptr %71, i32 1
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %71, align 1
  %73 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %39, ptr %add.ptr, align 1
  %74 = tail call i16 @llvm.bswap.i16(i16 %flags1.2)
  %flags1104 = getelementptr i8, ptr %71, i32 2
  %75 = ptrtoint ptr %flags1104 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 2)
  store i16 %74, ptr %flags1104, align 1
  %conv105 = trunc i32 %31 to i16
  %76 = tail call i16 @llvm.bswap.i16(i16 %conv105)
  %len106 = getelementptr i8, ptr %71, i32 4
  %77 = ptrtoint ptr %len106 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 2)
  store i16 %76, ptr %len106, align 1
  %78 = tail call i16 @llvm.bswap.i16(i16 %msdu_id.0)
  %id = getelementptr i8, ptr %71, i32 6
  %79 = ptrtoint ptr %id to i32
  call void @__asan_storeN_noabort(i32 %79, i32 2)
  store i16 %78, ptr %id, align 1
  %frags_paddr = getelementptr i8, ptr %71, i32 8
  %80 = ptrtoint ptr %frags_paddr to i32
  call void @__asan_storeN_noabort(i32 %80, i32 4)
  store i32 0, ptr %frags_paddr, align 1
  %81 = getelementptr i8, ptr %71, i32 12
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 -65536, ptr %81, align 1
  %83 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %htt, align 8
  %htc = getelementptr inbounds %struct.ath10k, ptr %84, i32 0, i32 42
  %eid = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 1
  %85 = ptrtoint ptr %eid to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %eid, align 4
  %call108 = tail call i32 @ath10k_htc_send_hl(ptr noundef %htc, i32 noundef %86, ptr noundef %msdu.addr.0) #9
  br label %out

out:                                              ; preds = %skb_get.exit, %if.then94, %if.then82
  %res.0 = phi i32 [ %call.i, %if.then94 ], [ %call108, %skb_get.exit ], [ -12, %if.then82 ]
  ret i32 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_htt_h2t_aggr_cfg_msg_32(ptr nocapture noundef readonly %htt, i8 noundef zeroext %max_subfrms_ampdu, i8 noundef zeroext %max_subfrms_amsdu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  %2 = add i8 %max_subfrms_ampdu, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %2)
  %3 = icmp ult i8 %2, -64
  %4 = add i8 %max_subfrms_amsdu, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -31, i8 %4)
  %5 = icmp ult i8 %4, -31
  %or.cond = or i1 %3, %5
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end14

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %entry
  %call = tail call ptr @ath10k_htc_alloc_skb(ptr noundef %1, i32 noundef 3) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end14.cleanup_crit_edge, label %if.end16

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end14
  %call17 = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef 3) #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 5, ptr %7, align 1
  %9 = getelementptr inbounds %struct.htt_cmd, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %max_subfrms_ampdu, ptr %9, align 1
  %max_num_amsdu_subframes = getelementptr inbounds %struct.htt_cmd, ptr %7, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %max_num_amsdu_subframes to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %max_subfrms_amsdu, ptr %max_num_amsdu_subframes, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %12 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %lor.lhs.false19, label %if.end16.if.then22_crit_edge

if.end16.if.then22_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

lor.lhs.false19:                                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_h2t_aggr_cfg_msg_32, %if.then22)) #9
          to label %do.end [label %if.then22], !srcloc !98

if.then22:                                        ; preds = %lor.lhs.false19, %if.end16.if.then22_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %max_num_amsdu_subframes to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %max_num_amsdu_subframes, align 1
  %conv24 = zext i8 %14 to i32
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %9, align 1
  %conv26 = zext i8 %16 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.26, i32 noundef %conv24, i32 noundef %conv26) #9
  br label %do.end

do.end:                                           ; preds = %if.then22, %lor.lhs.false19
  %17 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %htt, align 8
  %htc = getelementptr inbounds %struct.ath10k, ptr %18, i32 0, i32 42
  %eid = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 1
  %19 = ptrtoint ptr %eid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %eid, align 4
  %call29 = tail call i32 @ath10k_htc_send(ptr noundef %htc, i32 noundef %20, ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %do.end.cleanup_crit_edge, label %if.then31

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then31:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %do.end.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %if.then31 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end14.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_realloc_headroom(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_htc_send_hl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_htt_send_rx_ring_cfg_64(ptr nocapture noundef readonly %htt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  %call = tail call ptr @ath10k_htc_alloc_skb(ptr noundef %1, i32 noundef 48) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef 48) #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = getelementptr inbounds %struct.htt_cmd, ptr %3, i32 0, i32 1
  %rings = getelementptr inbounds %struct.htt_cmd, ptr %3, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %3, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %4, align 1
  %alloc_idx = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 9
  %7 = ptrtoint ptr %alloc_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %alloc_idx, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %paddr = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 9, i32 1
  %11 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %paddr, align 4
  %conv55 = zext i32 %12 to i64
  %13 = tail call i64 @llvm.bswap.i64(i64 %conv55)
  %14 = ptrtoint ptr %rings to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %rings, align 1
  %base_paddr = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 4
  %15 = ptrtoint ptr %base_paddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base_paddr, align 4
  %conv57 = zext i32 %16 to i64
  %17 = tail call i64 @llvm.bswap.i64(i64 %conv57)
  %rx_ring_base_paddr = getelementptr inbounds %struct.htt_cmd, ptr %3, i32 0, i32 1, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %rx_ring_base_paddr to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %17, ptr %rx_ring_base_paddr, align 1
  %size = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 5
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size, align 8
  %conv59 = trunc i32 %20 to i16
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv59)
  %rx_ring_len = getelementptr inbounds %struct.htt_cmd, ptr %3, i32 0, i32 1, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %rx_ring_len to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %21, ptr %rx_ring_len, align 1
  %rx_ring_bufsize = getelementptr inbounds %struct.htt_rx_ring_setup_ring64, ptr %rings, i32 0, i32 3
  %23 = ptrtoint ptr %rx_ring_bufsize to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 8, ptr %rx_ring_bufsize, align 1
  %flags60 = getelementptr inbounds %struct.htt_rx_ring_setup_ring64, ptr %rings, i32 0, i32 4
  %24 = ptrtoint ptr %flags60 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 -1, ptr %flags60, align 1
  %25 = lshr i32 %10, 16
  %26 = trunc i32 %25 to i16
  %fw_idx_init_val = getelementptr inbounds %struct.htt_rx_ring_setup_ring64, ptr %rings, i32 0, i32 5
  %27 = ptrtoint ptr %fw_idx_init_val to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %26, ptr %fw_idx_init_val, align 1
  %mac80211_hdr_offset.i = getelementptr inbounds %struct.htt_cmd, ptr %3, i32 0, i32 1, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %mac80211_hdr_offset.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 18944, ptr %mac80211_hdr_offset.i, align 1
  %msdu_payload_offset.i = getelementptr inbounds %struct.htt_rx_ring_setup_ring64, ptr %rings, i32 0, i32 7
  %29 = ptrtoint ptr %msdu_payload_offset.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 23040, ptr %msdu_payload_offset.i, align 1
  %ppdu_start_offset.i = getelementptr inbounds %struct.htt_rx_ring_setup_ring64, ptr %rings, i32 0, i32 8
  %30 = ptrtoint ptr %ppdu_start_offset.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 6912, ptr %ppdu_start_offset.i, align 1
  %ppdu_end_offset.i = getelementptr inbounds %struct.htt_rx_ring_setup_ring64, ptr %rings, i32 0, i32 9
  %31 = ptrtoint ptr %ppdu_end_offset.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 9472, ptr %ppdu_end_offset.i, align 1
  %mpdu_start_offset.i = getelementptr inbounds %struct.htt_cmd, ptr %3, i32 0, i32 1, i32 0, i32 4
  %32 = ptrtoint ptr %mpdu_start_offset.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 1024, ptr %mpdu_start_offset.i, align 1
  %mpdu_end_offset.i = getelementptr inbounds %struct.htt_cmd, ptr %3, i32 0, i32 1, i32 0, i32 4, i32 0, i32 1
  %33 = ptrtoint ptr %mpdu_end_offset.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 6656, ptr %mpdu_end_offset.i, align 1
  %msdu_start_offset.i = getelementptr inbounds %struct.htt_cmd, ptr %3, i32 0, i32 1, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %msdu_start_offset.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 1792, ptr %msdu_start_offset.i, align 1
  %msdu_end_offset.i = getelementptr inbounds %struct.htt_cmd, ptr %3, i32 0, i32 1, i32 0, i32 4, i32 1, i32 1
  %35 = ptrtoint ptr %msdu_end_offset.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 3072, ptr %msdu_end_offset.i, align 1
  %rx_attention_offset.i = getelementptr inbounds %struct.htt_cmd, ptr %3, i32 0, i32 1, i32 0, i32 4, i32 2
  %36 = ptrtoint ptr %rx_attention_offset.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 256, ptr %rx_attention_offset.i, align 1
  %frag_info_offset.i = getelementptr inbounds %struct.htt_cmd, ptr %3, i32 0, i32 1, i32 0, i32 4, i32 2, i32 1
  %37 = ptrtoint ptr %frag_info_offset.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 512, ptr %frag_info_offset.i, align 1
  %38 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %htt, align 8
  %htc = getelementptr inbounds %struct.ath10k, ptr %39, i32 0, i32 42
  %eid = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 1
  %40 = ptrtoint ptr %eid to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %eid, align 4
  %call63 = tail call i32 @ath10k_htc_send(ptr noundef %htc, i32 noundef %41, ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end.cleanup_crit_edge, label %if.then65

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then65:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call63, %if.then65 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_htt_send_frag_desc_bank_cfg_64(ptr nocapture noundef readonly %htt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  %continuous_frag_desc = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 45, i32 8
  %2 = ptrtoint ptr %continuous_frag_desc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %continuous_frag_desc, align 32, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %frag_desc = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 25
  %4 = ptrtoint ptr %frag_desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frag_desc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.20) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call = tail call ptr @ath10k_htc_alloc_skb(ptr noundef %1, i32 noundef 64) #9
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %call8 = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef 64) #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 6, ptr %7, align 1
  %type = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 27, i32 7
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 8
  %.tr = trunc i32 %10 to i8
  %11 = shl i8 %.tr, 4
  %conv9 = and i8 %11, 16
  %running_fw = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 47
  %12 = ptrtoint ptr %running_fw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %running_fw, align 64
  %fw_features = getelementptr inbounds %struct.ath10k_fw_components, ptr %13, i32 0, i32 6, i32 2
  %14 = ptrtoint ptr %fw_features to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %fw_features, align 4
  %16 = lshr i32 %15, 10
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 8
  %19 = or i8 %18, %conv9
  %20 = getelementptr inbounds %struct.htt_cmd, ptr %7, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %19, ptr %20, align 1
  %num_banks = getelementptr inbounds %struct.htt_cmd, ptr %7, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %num_banks to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %num_banks, align 1
  %desc_size = getelementptr inbounds %struct.htt_cmd, ptr %7, i32 0, i32 1, i32 0, i32 2
  %23 = ptrtoint ptr %desc_size to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 72, ptr %desc_size, align 1
  %24 = ptrtoint ptr %frag_desc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %frag_desc, align 8
  %conv20 = zext i32 %25 to i64
  %26 = tail call i64 @llvm.bswap.i64(i64 %conv20)
  %bank_base_addrs = getelementptr inbounds %struct.htt_cmd, ptr %7, i32 0, i32 1, i32 0, i32 3
  %27 = ptrtoint ptr %bank_base_addrs to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %26, ptr %bank_base_addrs, align 1
  %bank_id = getelementptr inbounds %struct.htt_cmd, ptr %7, i32 0, i32 1, i32 0, i32 4
  %28 = ptrtoint ptr %bank_id to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 0, ptr %bank_id, align 1
  %max_num_pending_tx = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 13
  %29 = ptrtoint ptr %max_num_pending_tx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_num_pending_tx, align 8
  %31 = trunc i32 %30 to i16
  %conv22 = add i16 %31, -1
  %32 = tail call i16 @llvm.bswap.i16(i16 %conv22)
  %bank_max_id = getelementptr inbounds %struct.htt_cmd, ptr %7, i32 0, i32 1, i32 0, i32 4, i32 0, i32 1
  %33 = ptrtoint ptr %bank_max_id to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %32, ptr %bank_max_id, align 1
  %paddr26 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 27, i32 2
  %34 = ptrtoint ptr %paddr26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %paddr26, align 8
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %q_state = getelementptr inbounds %struct.htt_cmd, ptr %7, i32 0, i32 1, i32 0, i32 5
  %37 = ptrtoint ptr %q_state to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %q_state, align 1
  %num_peers = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 27, i32 4
  %38 = ptrtoint ptr %num_peers to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %num_peers, align 2
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  %num_peers30 = getelementptr inbounds %struct.htt_cmd, ptr %7, i32 0, i32 1, i32 0, i32 5, i32 1
  %41 = ptrtoint ptr %num_peers30 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %40, ptr %num_peers30, align 1
  %num_tids = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 27, i32 5
  %42 = ptrtoint ptr %num_tids to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %num_tids, align 8
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %num_tids33 = getelementptr inbounds %struct.htt_cmd, ptr %7, i32 0, i32 1, i32 0, i32 5, i32 2
  %45 = ptrtoint ptr %num_tids33 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 %44, ptr %num_tids33, align 1
  %record_size = getelementptr inbounds %struct.htt_cmd, ptr %7, i32 0, i32 1, i32 0, i32 5, i32 3
  %46 = ptrtoint ptr %record_size to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %record_size, align 1
  %record_multiplier = getelementptr inbounds %struct.htt_cmd, ptr %7, i32 0, i32 1, i32 0, i32 5, i32 4
  %47 = ptrtoint ptr %record_multiplier to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %record_multiplier, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %48 = load i32, ptr @ath10k_debug_mask, align 4
  %and36 = and i32 %48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %lor.lhs.false, label %if.end7.if.then40_crit_edge

if.end7.if.then40_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then40

lor.lhs.false:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_send_frag_desc_bank_cfg_64, %if.then40)) #9
          to label %do.end [label %if.then40], !srcloc !98

if.then40:                                        ; preds = %lor.lhs.false, %if.end7.if.then40_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.21) #9
  br label %do.end

do.end:                                           ; preds = %if.then40, %lor.lhs.false
  %49 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %htt, align 8
  %htc = getelementptr inbounds %struct.ath10k, ptr %50, i32 0, i32 42
  %eid = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 1
  %51 = ptrtoint ptr %eid to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %eid, align 4
  %call43 = tail call i32 @ath10k_htc_send(ptr noundef %htc, i32 noundef %52, ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %do.end.cleanup_crit_edge, label %if.then45

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then45:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %call43) #9
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %do.end.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call43, %if.then45 ], [ -22, %if.then3 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_htt_tx_alloc_cont_frag_desc_64(ptr noundef %htt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  %continuous_frag_desc = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 45, i32 8
  %2 = ptrtoint ptr %continuous_frag_desc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %continuous_frag_desc, align 32, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_num_pending_tx = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 13
  %4 = ptrtoint ptr %max_num_pending_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_num_pending_tx, align 8
  %mul = mul i32 %5, 72
  %dev = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %frag_desc = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 25
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %7, i32 noundef %mul, ptr noundef %frag_desc, i32 noundef 3264, i32 noundef 0) #9
  %8 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 25, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %8, align 4
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %1, ptr noundef nonnull @.str.27) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %size8 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 25, i32 2
  %10 = ptrtoint ptr %size8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %size8, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -12, %if.then5 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_htt_tx_free_cont_frag_desc_64(ptr nocapture noundef %htt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 25, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %frag_desc = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 25
  %max_num_pending_tx = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 13
  %3 = ptrtoint ptr %max_num_pending_tx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_num_pending_tx, align 8
  %mul = mul i32 %4, 72
  %5 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %htt, align 8
  %dev = getelementptr inbounds %struct.ath10k, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %frag_desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %frag_desc, align 8
  tail call void @dma_free_attrs(ptr noundef %8, i32 noundef %mul, ptr noundef nonnull %2, i32 noundef %10, i32 noundef 0) #9
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %0, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_htt_tx_64(ptr noundef %htt, i32 noundef %txmode, ptr noundef %msdu) #0 align 64 {
entry:
  %sg_items = alloca [2 x %struct.ath10k_hif_sg_item], align 4
  %frags_paddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  %dev2 = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 3
  %6 = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 3, i32 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sg_items) #9
  %7 = call ptr @memset(ptr %sg_items, i32 255, i32 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %txmode)
  %cmp = icmp eq i32 %txmode, 2
  %8 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cb.i, align 8
  %and.i = and i32 %9, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %vdev_id.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 54, i32 6
  %10 = ptrtoint ptr %vdev_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vdev_id.i, align 4
  %conv.i = trunc i32 %11 to i8
  br label %ath10k_htt_tx_get_vdev_id.exit

if.else.i:                                        ; preds = %entry
  %vif.i = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 3, i32 18
  %12 = ptrtoint ptr %vif.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load ptr, ptr %vif.i, align 1
  %tobool2.not.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i, label %if.else7.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %vdev_id5.i = getelementptr inbounds %struct.ieee80211_vif, ptr %13, i32 1, i32 1
  %14 = ptrtoint ptr %vdev_id5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vdev_id5.i, align 4
  %conv6.i = trunc i32 %15 to i8
  br label %ath10k_htt_tx_get_vdev_id.exit

if.else7.i:                                       ; preds = %if.else.i
  %monitor_started.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 64
  %16 = ptrtoint ptr %monitor_started.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %monitor_started.i, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not.i = icmp eq i8 %17, 0
  br i1 %tobool8.not.i, label %if.else7.i.ath10k_htt_tx_get_vdev_id.exit_crit_edge, label %if.then9.i

if.else7.i.ath10k_htt_tx_get_vdev_id.exit_crit_edge: ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_htt_tx_get_vdev_id.exit

if.then9.i:                                       ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #11
  %monitor_vdev_id.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 63
  %18 = ptrtoint ptr %monitor_vdev_id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %monitor_vdev_id.i, align 8
  %conv10.i = trunc i32 %19 to i8
  br label %ath10k_htt_tx_get_vdev_id.exit

ath10k_htt_tx_get_vdev_id.exit:                   ; preds = %if.then9.i, %if.else7.i.ath10k_htt_tx_get_vdev_id.exit_crit_edge, %if.then3.i, %if.then.i
  %retval.0.i = phi i8 [ %conv.i, %if.then.i ], [ %conv6.i, %if.then3.i ], [ %conv10.i, %if.then9.i ], [ 0, %if.else7.i.ath10k_htt_tx_get_vdev_id.exit_crit_edge ]
  br i1 %cmp, label %ath10k_htt_tx_get_vdev_id.exit.if.else.i403_crit_edge, label %land.lhs.true.i

ath10k_htt_tx_get_vdev_id.exit.if.else.i403_crit_edge: ; preds = %ath10k_htt_tx_get_vdev_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i403

land.lhs.true.i:                                  ; preds = %ath10k_htt_tx_get_vdev_id.exit
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %5, align 2
  %22 = and i16 %21, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp.i.i = icmp eq i16 %22, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.ath10k_htt_tx_get_tid.exit_crit_edge, label %land.lhs.true.i.if.else.i403_crit_edge

land.lhs.true.i.if.else.i403_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i403

land.lhs.true.i.ath10k_htt_tx_get_tid.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_htt_tx_get_tid.exit

if.else.i403:                                     ; preds = %land.lhs.true.i.if.else.i403_crit_edge, %ath10k_htt_tx_get_vdev_id.exit.if.else.i403_crit_edge
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 3, i32 12
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flags.i, align 1
  %25 = and i8 %24, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool2.not.i402 = icmp eq i8 %25, 0
  br i1 %tobool2.not.i402, label %if.else.i403.ath10k_htt_tx_get_tid.exit_crit_edge, label %if.then3.i404

if.else.i403.ath10k_htt_tx_get_tid.exit_crit_edge: ; preds = %if.else.i403
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_htt_tx_get_tid.exit

if.then3.i404:                                    ; preds = %if.else.i403
  call void @__sanitizer_cov_trace_pc() #11
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 15, i32 0, i32 6
  %26 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %priority.i, align 4
  %28 = trunc i32 %27 to i8
  %conv5.i = and i8 %28, 15
  br label %ath10k_htt_tx_get_tid.exit

ath10k_htt_tx_get_tid.exit:                       ; preds = %if.then3.i404, %if.else.i403.ath10k_htt_tx_get_tid.exit_crit_edge, %land.lhs.true.i.ath10k_htt_tx_get_tid.exit_crit_edge
  %retval.0.i405 = phi i8 [ %conv5.i, %if.then3.i404 ], [ 17, %land.lhs.true.i.ath10k_htt_tx_get_tid.exit_crit_edge ], [ 16, %if.else.i403.ath10k_htt_tx_get_tid.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frags_paddr) #9
  %29 = ptrtoint ptr %frags_paddr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %frags_paddr, align 4
  %tx_lock.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock.i) #9
  %pending_tx.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 16
  %max_num_pending_tx.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 13
  %30 = ptrtoint ptr %max_num_pending_tx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_num_pending_tx.i, align 8
  %call.i = tail call i32 @idr_alloc(ptr noundef %pending_tx.i, ptr noundef %msdu, i32 noundef 0, i32 noundef %31, i32 noundef 2592) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %32 = load i32, ptr @ath10k_debug_mask, align 4
  %and.i406 = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i406)
  %tobool.not.i407 = icmp eq i32 %and.i406, 0
  br i1 %tobool.not.i407, label %lor.lhs.false.i, label %ath10k_htt_tx_get_tid.exit.if.then.i408_crit_edge

ath10k_htt_tx_get_tid.exit.if.then.i408_crit_edge: ; preds = %ath10k_htt_tx_get_tid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i408

lor.lhs.false.i:                                  ; preds = %ath10k_htt_tx_get_tid.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_tx_64, %if.then.i408)) #9
          to label %ath10k_htt_tx_alloc_msdu_id.exit [label %if.then.i408], !srcloc !98

if.then.i408:                                     ; preds = %lor.lhs.false.i, %ath10k_htt_tx_get_tid.exit.if.then.i408_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.1, i32 noundef %call.i) #9
  br label %ath10k_htt_tx_alloc_msdu_id.exit

ath10k_htt_tx_alloc_msdu_id.exit:                 ; preds = %if.then.i408, %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7 = icmp slt i32 %call.i, 0
  br i1 %cmp7, label %ath10k_htt_tx_alloc_msdu_id.exit.cleanup_crit_edge, label %if.end

ath10k_htt_tx_alloc_msdu_id.exit.cleanup_crit_edge: ; preds = %ath10k_htt_tx_alloc_msdu_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %ath10k_htt_tx_alloc_msdu_id.exit
  %conv = trunc i32 %call.i to i16
  %prefetch_len8 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 11
  %33 = ptrtoint ptr %prefetch_len8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %prefetch_len8, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 6
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len, align 4
  %37 = tail call i32 @llvm.umin.i32(i32 %34, i32 %36)
  %add = add i32 %37, 3
  %div = sdiv i32 %add, 4
  %txbuf12 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 26
  %38 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 26, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %conv13 = and i32 %call.i, 65535
  %add.ptr = getelementptr %struct.ath10k_htt_txbuf_64, ptr %40, i32 %conv13
  %41 = ptrtoint ptr %txbuf12 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %txbuf12, align 4
  %mul16 = mul nuw nsw i32 %conv13, 44
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %5, align 2
  %45 = and i16 %44, -1024
  %46 = zext i16 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %45, label %if.end.if.else_crit_edge [
    i16 -12288, label %if.end.land.lhs.true_crit_edge
    i16 -16384, label %if.end.land.lhs.true_crit_edge431
    i16 -24576, label %if.end.land.lhs.true_crit_edge432
  ]

if.end.land.lhs.true_crit_edge432:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge431:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = and i16 %44, 64
  br label %if.else

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge431, %if.end.land.lhs.true_crit_edge432
  %47 = and i16 %44, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp.i411.not = icmp eq i16 %47, 0
  br i1 %cmp.i411.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end44.sink.split_crit_edge

land.lhs.true.if.end44.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.sink.split

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %.pre-phi = phi i16 [ %.pre, %if.end.if.else_crit_edge ], [ 0, %land.lhs.true.if.else_crit_edge ]
  %flags = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 3, i32 12
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %flags, align 1
  %50 = and i8 %49, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool33.not = icmp eq i8 %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %txmode)
  %cmp35 = icmp eq i32 %txmode, 0
  %or.cond = and i1 %cmp35, %tobool33.not
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pre-phi)
  %cmp.i412 = icmp ne i16 %.pre-phi, 0
  %or.cond430 = select i1 %or.cond, i1 %cmp.i412, i1 false
  br i1 %or.cond430, label %if.else.if.end44.sink.split_crit_edge, label %if.else.if.end44_crit_edge

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.else.if.end44.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.sink.split

if.end44.sink.split:                              ; preds = %if.else.if.end44.sink.split_crit_edge, %land.lhs.true.if.end44.sink.split_crit_edge
  %call42 = tail call ptr @skb_put(ptr noundef %msdu, i32 noundef 8) #9
  br label %if.end44

if.end44:                                         ; preds = %if.end44.sink.split, %if.else.if.end44_crit_edge
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data, align 4
  %53 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len, align 4
  %call.i413 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %52) #9
  br i1 %call.i413, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end44
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i414, !prof !97

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread

if.then.i414:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %3) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %55 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i414.dev_name.exit.i_crit_edge

if.then.i414.dev_name.exit.i_crit_edge:           ; preds = %if.then.i414
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i414
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %3, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i414.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %58, %if.end.i.i ], [ %56, %if.then.i414.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.19, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %59 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 -1, ptr %6, align 1
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef -1) #9
  br label %err_free_msdu_id

dma_map_single_attrs.exit:                        ; preds = %if.end44
  tail call void @debug_dma_map_single(ptr noundef %3, ptr noundef %52, i32 noundef %54) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %60 = load ptr, ptr @mem_map, align 4
  %61 = ptrtoint ptr %52 to i32
  %sub.i = add i32 %61, 1073741824
  %shr.i415 = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %60, i32 %shr.i415
  %and.i416 = and i32 %61, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %add.ptr.i, i32 noundef %and.i416, i32 noundef %54, i32 noundef 1, i32 noundef 0) #9
  %62 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %call41.i, ptr %6, align 1
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %call41.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i418 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i418, label %dma_map_single_attrs.exit.err_free_msdu_id_crit_edge, label %if.end53

dma_map_single_attrs.exit.err_free_msdu_id_crit_edge: ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_msdu_id

if.end53:                                         ; preds = %dma_map_single_attrs.exit
  %63 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cb.i, align 8
  %and55 = and i32 %64, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end53.if.end61_crit_edge, label %if.then59, !prof !97

if.end53.if.end61_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then59:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %roc_freq = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 54, i32 7
  %65 = ptrtoint ptr %roc_freq to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %roc_freq, align 8
  %conv60 = trunc i32 %66 to i16
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end53.if.end61_crit_edge
  %freq.0 = phi i16 [ %conv60, %if.then59 ], [ 0, %if.end53.if.end61_crit_edge ]
  %67 = zext i32 %txmode to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %txmode, label %if.end61.sw.epilog_crit_edge [
    i32 0, label %if.end61.sw.bb_crit_edge
    i32 1, label %if.end61.sw.bb_crit_edge433
    i32 2, label %if.end61.sw.bb64_crit_edge
    i32 3, label %sw.bb112
  ]

if.end61.sw.bb64_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb64

if.end61.sw.bb_crit_edge433:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end61.sw.bb_crit_edge:                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end61.sw.epilog_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end61.sw.bb_crit_edge, %if.end61.sw.bb_crit_edge433
  br label %sw.bb64

sw.bb64:                                          ; preds = %sw.bb, %if.end61.sw.bb64_crit_edge
  %flags0.0 = phi i32 [ 0, %if.end61.sw.bb64_crit_edge ], [ 1, %sw.bb ]
  %continuous_frag_desc = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 45, i32 8
  %68 = ptrtoint ptr %continuous_frag_desc to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %continuous_frag_desc, align 32, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool65.not = icmp eq i8 %69, 0
  br i1 %tobool65.not, label %if.else86, label %if.then66

if.then66:                                        ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #11
  %frag_desc = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 25
  %70 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 25, i32 1
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %arrayidx = getelementptr %struct.htt_msdu_ext_desc_64, ptr %72, i32 %conv13
  %73 = call ptr @memset(ptr %arrayidx, i32 0, i32 72)
  %frags69 = getelementptr %struct.htt_msdu_ext_desc_64, ptr %72, i32 %conv13, i32 4
  %74 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %6, align 1
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  %77 = ptrtoint ptr %frags69 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %76, ptr %frags69, align 1
  %paddr_hi = getelementptr inbounds %struct.triple_word_addr, ptr %frags69, i32 0, i32 1
  %78 = ptrtoint ptr %paddr_hi to i32
  call void @__asan_storeN_noabort(i32 %78, i32 2)
  store i16 0, ptr %paddr_hi, align 1
  %79 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len, align 4
  %conv79 = trunc i32 %80 to i16
  %81 = tail call i16 @llvm.bswap.i16(i16 %conv79)
  %len_16 = getelementptr inbounds %struct.triple_word_addr, ptr %frags69, i32 0, i32 2
  %82 = ptrtoint ptr %len_16 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 %81, ptr %len_16, align 1
  %83 = ptrtoint ptr %frag_desc to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %frag_desc, align 8
  %mul84 = mul nuw nsw i32 %conv13, 72
  %add85 = add i32 %84, %mul84
  %85 = ptrtoint ptr %frags_paddr to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %add85, ptr %frags_paddr, align 4
  br label %if.end107

if.else86:                                        ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %6, align 1
  %88 = tail call i32 @llvm.bswap.i32(i32 %87)
  %89 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %89, i32 4)
  store i32 %88, ptr %add.ptr, align 1
  %paddr_hi96 = getelementptr inbounds %struct.triple_word_addr, ptr %add.ptr, i32 0, i32 1
  %90 = ptrtoint ptr %paddr_hi96 to i32
  call void @__asan_storeN_noabort(i32 %90, i32 2)
  store i16 0, ptr %paddr_hi96, align 1
  %91 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %len, align 4
  %conv98 = trunc i32 %92 to i16
  %93 = tail call i16 @llvm.bswap.i16(i16 %conv98)
  %len_16100 = getelementptr inbounds %struct.triple_word_addr, ptr %add.ptr, i32 0, i32 2
  %94 = ptrtoint ptr %len_16100 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 2)
  store i16 %93, ptr %len_16100, align 1
  %arrayidx101 = getelementptr %struct.htt_data_tx_desc_frag, ptr %add.ptr, i32 1
  %95 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_storeN_noabort(i32 %95, i32 8)
  store i64 0, ptr %arrayidx101, align 1
  br label %if.end107

if.end107:                                        ; preds = %if.else86, %if.then66
  %ext_desc.0 = phi ptr [ %arrayidx, %if.then66 ], [ null, %if.else86 ]
  %shl = shl nuw nsw i32 %txmode, 5
  %or110 = or i32 %flags0.0, %shl
  %conv111 = trunc i32 %or110 to i8
  br label %sw.epilog

sw.bb112:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %97 = load i32, ptr %6, align 1
  %98 = ptrtoint ptr %frags_paddr to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %frags_paddr, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb112, %if.end107, %if.end61.sw.epilog_crit_edge
  %flags0.1 = phi i8 [ 0, %if.end61.sw.epilog_crit_edge ], [ 97, %sw.bb112 ], [ %conv111, %if.end107 ]
  %ext_desc.1 = phi ptr [ null, %if.end61.sw.epilog_crit_edge ], [ null, %sw.bb112 ], [ %ext_desc.0, %if.end107 ]
  %eid = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 1
  %99 = ptrtoint ptr %eid to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %eid, align 4
  %conv120 = trunc i32 %100 to i8
  %htc_hdr = getelementptr %struct.ath10k_htt_txbuf_64, ptr %40, i32 %conv13, i32 1
  %101 = ptrtoint ptr %htc_hdr to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv120, ptr %htc_hdr, align 4
  %div.tr = trunc i32 %div to i16
  %102 = shl i16 %div.tr, 2
  %conv123 = add i16 %102, 20
  %103 = tail call i16 @llvm.bswap.i16(i16 %conv123)
  %len125 = getelementptr %struct.ath10k_htt_txbuf_64, ptr %40, i32 %conv13, i32 1, i32 2
  %104 = ptrtoint ptr %len125 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %len125, align 2
  %flags127 = getelementptr %struct.ath10k_htt_txbuf_64, ptr %40, i32 %conv13, i32 1, i32 1
  %105 = ptrtoint ptr %flags127 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %flags127, align 1
  %flags128 = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 3, i32 12
  %106 = ptrtoint ptr %flags128 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %flags128, align 1
  %108 = shl i8 %107, 2
  %109 = and i8 %108, 4
  %110 = or i8 %109, %flags0.1
  %111 = and i8 %retval.0.i, 63
  %conv145 = zext i8 %retval.0.i405 to i16
  %shl146 = shl nuw nsw i16 %conv145, 6
  %conv148 = zext i8 %111 to i16
  %or149 = or i16 %shl146, %conv148
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 15
  %112 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %112)
  %bf.load = load i16, ptr %ip_summed, align 8
  %113 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %113)
  %cmp152 = icmp eq i16 %113, 1536
  br i1 %cmp152, label %land.lhs.true154, label %sw.epilog.if.end173_crit_edge

sw.epilog.if.end173_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end173

land.lhs.true154:                                 ; preds = %sw.epilog
  %dev_flags = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 66
  %114 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %dev_flags, align 4
  %116 = and i32 %115, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool156.not = icmp eq i32 %116, 0
  br i1 %tobool156.not, label %if.then157, label %land.lhs.true154.if.end173_crit_edge

land.lhs.true154.if.end173_crit_edge:             ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end173

if.then157:                                       ; preds = %land.lhs.true154
  %117 = or i16 %or149, 24576
  %continuous_frag_desc165 = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 45, i32 8
  %118 = ptrtoint ptr %continuous_frag_desc165 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %continuous_frag_desc165, align 32, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool166.not = icmp eq i8 %119, 0
  br i1 %tobool166.not, label %if.then157.if.end173_crit_edge, label %if.then167

if.then157.if.end173_crit_edge:                   ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end173

if.then167:                                       ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #11
  %120 = call ptr @memset(ptr %ext_desc.1, i32 0, i32 20)
  %arrayidx170 = getelementptr [5 x i32], ptr %ext_desc.1, i32 0, i32 3
  %121 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 7936, ptr %arrayidx170, align 4
  br label %if.end173

if.end173:                                        ; preds = %if.then167, %if.then157.if.end173_crit_edge, %land.lhs.true154.if.end173_crit_edge, %sw.epilog.if.end173_crit_edge
  %flags1.0 = phi i16 [ %or149, %land.lhs.true154.if.end173_crit_edge ], [ %117, %if.then167 ], [ %117, %if.then157.if.end173_crit_edge ], [ %or149, %sw.epilog.if.end173_crit_edge ]
  %122 = or i16 %flags1.0, 2048
  %cmd_hdr = getelementptr %struct.ath10k_htt_txbuf_64, ptr %40, i32 %conv13, i32 2
  %123 = ptrtoint ptr %cmd_hdr to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 1, ptr %cmd_hdr, align 4
  %cmd_tx = getelementptr %struct.ath10k_htt_txbuf_64, ptr %40, i32 %conv13, i32 3
  %124 = ptrtoint ptr %cmd_tx to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %110, ptr %cmd_tx, align 1
  %125 = tail call i16 @llvm.bswap.i16(i16 %122)
  %flags1179 = getelementptr %struct.ath10k_htt_txbuf_64, ptr %40, i32 %conv13, i32 3, i32 1
  %126 = ptrtoint ptr %flags1179 to i32
  call void @__asan_storeN_noabort(i32 %126, i32 2)
  store i16 %125, ptr %flags1179, align 1
  %127 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %len, align 4
  %conv181 = trunc i32 %128 to i16
  %129 = tail call i16 @llvm.bswap.i16(i16 %conv181)
  %len183 = getelementptr %struct.ath10k_htt_txbuf_64, ptr %40, i32 %conv13, i32 3, i32 2
  %130 = ptrtoint ptr %len183 to i32
  call void @__asan_storeN_noabort(i32 %130, i32 2)
  store i16 %129, ptr %len183, align 1
  %131 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %id = getelementptr %struct.ath10k_htt_txbuf_64, ptr %40, i32 %conv13, i32 3, i32 3
  %132 = ptrtoint ptr %id to i32
  call void @__asan_storeN_noabort(i32 %132, i32 2)
  store i16 %131, ptr %id, align 1
  %133 = ptrtoint ptr %frags_paddr to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %frags_paddr, align 4
  %conv185 = zext i32 %134 to i64
  %135 = tail call i64 @llvm.bswap.i64(i64 %conv185)
  %frags_paddr187 = getelementptr %struct.ath10k_htt_txbuf_64, ptr %40, i32 %conv13, i32 3, i32 4
  %136 = ptrtoint ptr %frags_paddr187 to i32
  call void @__asan_storeN_noabort(i32 %136, i32 8)
  store i64 %135, ptr %frags_paddr187, align 1
  %call188 = tail call zeroext i1 @ath10k_mac_tx_frm_has_freq(ptr noundef %1) #9
  %137 = getelementptr %struct.ath10k_htt_txbuf_64, ptr %40, i32 %conv13, i32 3, i32 5
  br i1 %call188, label %if.then189, label %if.else193

if.then189:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #11
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_storeN_noabort(i32 %138, i32 2)
  store i16 -1, ptr %137, align 1
  %139 = tail call i16 @llvm.bswap.i16(i16 %freq.0)
  %freq192 = getelementptr inbounds %struct.anon.159, ptr %137, i32 0, i32 1
  %140 = ptrtoint ptr %freq192 to i32
  call void @__asan_storeN_noabort(i32 %140, i32 2)
  store i16 %139, ptr %freq192, align 1
  br label %if.end195

if.else193:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #11
  %141 = ptrtoint ptr %137 to i32
  call void @__asan_storeN_noabort(i32 %141, i32 4)
  store i32 -65536, ptr %137, align 1
  br label %if.end195

if.end195:                                        ; preds = %if.else193, %if.then189
  %142 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %len, align 4
  %conv197 = trunc i32 %143 to i16
  tail call fastcc void @trace_ath10k_htt_tx(ptr noundef %1, i16 noundef zeroext %conv, i16 noundef zeroext %conv197, i8 noundef zeroext %retval.0.i, i8 noundef zeroext %retval.0.i405)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %144 = load i32, ptr @ath10k_debug_mask, align 4
  %and198 = and i32 %144, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and198)
  %tobool199.not = icmp eq i32 %and198, 0
  br i1 %tobool199.not, label %lor.lhs.false200, label %if.end195.if.then203_crit_edge

if.end195.if.then203_crit_edge:                   ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then203

lor.lhs.false200:                                 ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_tx_64, %if.then203)) #9
          to label %do.end [label %if.then203], !srcloc !98

if.then203:                                       ; preds = %lor.lhs.false200, %if.end195.if.then203_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  %conv204 = zext i8 %110 to i32
  %conv205 = zext i16 %122 to i32
  %145 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %len, align 4
  %conv209 = zext i8 %retval.0.i to i32
  %conv210 = zext i8 %retval.0.i405 to i32
  %conv211 = zext i16 %freq.0 to i32
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.28, i32 noundef %conv204, i32 noundef %conv205, i32 noundef %146, i32 noundef %conv13, ptr noundef nonnull %frags_paddr, ptr noundef %6, i32 noundef %conv209, i32 noundef %conv210, i32 noundef %conv211) #9
  br label %do.end

do.end:                                           ; preds = %if.then203, %lor.lhs.false200
  %147 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %data, align 4
  %149 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %len, align 4
  call void @ath10k_dbg_dump(ptr noundef %1, i32 noundef 128, ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef %148, i32 noundef %150) #9
  %151 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %data, align 4
  %153 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %len, align 4
  call fastcc void @trace_ath10k_tx_hdr(ptr noundef %1, ptr noundef %152, i32 noundef %154)
  %155 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %data, align 4
  %157 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %len, align 4
  call fastcc void @trace_ath10k_tx_payload(ptr noundef %1, ptr noundef %156, i32 noundef %158)
  %159 = ptrtoint ptr %sg_items to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 0, ptr %sg_items, align 4
  %transfer_context = getelementptr inbounds %struct.ath10k_hif_sg_item, ptr %sg_items, i32 0, i32 1
  %160 = ptrtoint ptr %transfer_context to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr null, ptr %transfer_context, align 4
  %vaddr = getelementptr inbounds %struct.ath10k_hif_sg_item, ptr %sg_items, i32 0, i32 2
  %161 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %htc_hdr, ptr %vaddr, align 4
  %add17 = add nuw nsw i32 %mul16, 16
  %add223 = add i32 %add17, %42
  %paddr225 = getelementptr inbounds %struct.ath10k_hif_sg_item, ptr %sg_items, i32 0, i32 3
  %162 = ptrtoint ptr %paddr225 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %add223, ptr %paddr225, align 4
  %len227 = getelementptr inbounds %struct.ath10k_hif_sg_item, ptr %sg_items, i32 0, i32 4
  %163 = ptrtoint ptr %len227 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 28, ptr %len227, align 4
  %arrayidx228 = getelementptr inbounds [2 x %struct.ath10k_hif_sg_item], ptr %sg_items, i32 0, i32 1
  %164 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 0, ptr %arrayidx228, align 4
  %transfer_context231 = getelementptr inbounds [2 x %struct.ath10k_hif_sg_item], ptr %sg_items, i32 0, i32 1, i32 1
  %165 = ptrtoint ptr %transfer_context231 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr null, ptr %transfer_context231, align 4
  %166 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %data, align 4
  %vaddr234 = getelementptr inbounds [2 x %struct.ath10k_hif_sg_item], ptr %sg_items, i32 0, i32 1, i32 2
  %168 = ptrtoint ptr %vaddr234 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %167, ptr %vaddr234, align 4
  %169 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %169, i32 4)
  %170 = load i32, ptr %6, align 1
  %paddr237 = getelementptr inbounds [2 x %struct.ath10k_hif_sg_item], ptr %sg_items, i32 0, i32 1, i32 3
  %171 = ptrtoint ptr %paddr237 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %paddr237, align 4
  %len240 = getelementptr inbounds [2 x %struct.ath10k_hif_sg_item], ptr %sg_items, i32 0, i32 1, i32 4
  %172 = ptrtoint ptr %len240 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %102, ptr %len240, align 4
  %173 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %htt, align 8
  %175 = ptrtoint ptr %eid to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %eid, align 4
  %ul_pipe_id = getelementptr %struct.ath10k, ptr %174, i32 0, i32 42, i32 1, i32 %176, i32 6
  %177 = ptrtoint ptr %ul_pipe_id to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %ul_pipe_id, align 4
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %174, i32 0, i32 34, i32 1
  %179 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %ops.i, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %180, align 4
  %call.i419 = call i32 %182(ptr noundef %174, i8 noundef zeroext %178, ptr noundef nonnull %sg_items, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i419)
  %tobool247.not = icmp eq i32 %call.i419, 0
  br i1 %tobool247.not, label %do.end.cleanup_crit_edge, label %err_unmap_msdu

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_unmap_msdu:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %183 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %183, i32 4)
  %184 = load i32, ptr %6, align 1
  %185 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %len, align 4
  call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %184, i32 noundef %186, i32 noundef 1, i32 noundef 0) #9
  br label %err_free_msdu_id

err_free_msdu_id:                                 ; preds = %err_unmap_msdu, %dma_map_single_attrs.exit.err_free_msdu_id_crit_edge, %dma_map_single_attrs.exit.thread
  %res.0 = phi i32 [ %call.i419, %err_unmap_msdu ], [ -5, %dma_map_single_attrs.exit.err_free_msdu_id_crit_edge ], [ -5, %dma_map_single_attrs.exit.thread ]
  call void @_raw_spin_lock_bh(ptr noundef %tx_lock.i) #9
  %187 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %htt, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %189 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool.not.i420 = icmp eq i32 %189, 0
  br i1 %tobool.not.i420, label %err_free_msdu_id.if.end.i_crit_edge, label %land.rhs.i421

err_free_msdu_id.if.end.i_crit_edge:              ; preds = %err_free_msdu_id
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i421:                                    ; preds = %err_free_msdu_id
  %dep_map.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i421.if.end.i_crit_edge, !prof !95

land.rhs.i421.if.end.i_crit_edge:                 ; preds = %land.rhs.i421
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i421
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 217, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i421.if.end.i_crit_edge, %err_free_msdu_id.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %190 = load i32, ptr @ath10k_debug_mask, align 4
  %and.i422 = and i32 %190, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i422)
  %tobool26.not.i = icmp eq i32 %and.i422, 0
  br i1 %tobool26.not.i, label %lor.lhs.false.i423, label %if.end.i.if.then28.i_crit_edge

if.end.i.if.then28.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28.i

lor.lhs.false.i423:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_tx_64, %if.then28.i)) #9
          to label %ath10k_htt_tx_free_msdu_id.exit [label %if.then28.i], !srcloc !98

if.then28.i:                                      ; preds = %lor.lhs.false.i423, %if.end.i.if.then28.i_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %188, i32 noundef 8, ptr noundef nonnull @.str.2, i32 noundef %conv13) #9
  br label %ath10k_htt_tx_free_msdu_id.exit

ath10k_htt_tx_free_msdu_id.exit:                  ; preds = %if.then28.i, %lor.lhs.false.i423
  %call33.i = call ptr @idr_remove(ptr noundef %pending_tx.i, i32 noundef %conv13) #9
  call void @_raw_spin_unlock_bh(ptr noundef %tx_lock.i) #9
  br label %cleanup

cleanup:                                          ; preds = %ath10k_htt_tx_free_msdu_id.exit, %do.end.cleanup_crit_edge, %ath10k_htt_tx_alloc_msdu_id.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ %call.i, %ath10k_htt_tx_alloc_msdu_id.exit.cleanup_crit_edge ], [ %res.0, %ath10k_htt_tx_free_msdu_id.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frags_paddr) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sg_items) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_htt_tx_alloc_cont_txbuf_64(ptr noundef %htt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  %max_num_pending_tx = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 13
  %2 = ptrtoint ptr %max_num_pending_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_num_pending_tx, align 8
  %mul = mul i32 %3, 44
  %dev = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %txbuf = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 26
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %5, i32 noundef %mul, ptr noundef %txbuf, i32 noundef 3264, i32 noundef 0) #9
  %6 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 26, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %6, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %size5 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 26, i32 2
  %8 = ptrtoint ptr %size5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %size5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_htt_tx_free_cont_txbuf_64(ptr nocapture noundef %htt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 26, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %txbuf = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 26
  %3 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %htt, align 8
  %size3 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 26, i32 2
  %5 = ptrtoint ptr %size3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size3, align 4
  %dev = getelementptr inbounds %struct.ath10k, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %txbuf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %txbuf, align 4
  tail call void @dma_free_attrs(ptr noundef %8, i32 noundef %6, ptr noundef nonnull %2, i32 noundef %10, i32 noundef 0) #9
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %0, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_htt_h2t_aggr_cfg_msg_v2(ptr nocapture noundef readonly %htt, i8 noundef zeroext %max_subfrms_ampdu, i8 noundef zeroext %max_subfrms_amsdu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  %2 = add i8 %max_subfrms_ampdu, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %2)
  %3 = icmp ult i8 %2, -64
  %4 = add i8 %max_subfrms_amsdu, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -31, i8 %4)
  %5 = icmp ult i8 %4, -31
  %or.cond = or i1 %3, %5
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end14

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %entry
  %call = tail call ptr @ath10k_htc_alloc_skb(ptr noundef %1, i32 noundef 4) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end14.cleanup_crit_edge, label %if.end16

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end14
  %call17 = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef 4) #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 5, ptr %7, align 1
  %9 = getelementptr inbounds %struct.htt_cmd, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %max_subfrms_ampdu, ptr %9, align 1
  %max_num_amsdu_subframes = getelementptr inbounds %struct.htt_cmd, ptr %7, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %max_num_amsdu_subframes to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %max_subfrms_amsdu, ptr %max_num_amsdu_subframes, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %12 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %lor.lhs.false19, label %if.end16.if.then22_crit_edge

if.end16.if.then22_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

lor.lhs.false19:                                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_h2t_aggr_cfg_msg_v2, %if.then22)) #9
          to label %do.end [label %if.then22], !srcloc !98

if.then22:                                        ; preds = %lor.lhs.false19, %if.end16.if.then22_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %max_num_amsdu_subframes to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %max_num_amsdu_subframes, align 1
  %conv24 = zext i8 %14 to i32
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %9, align 1
  %conv26 = zext i8 %16 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.26, i32 noundef %conv24, i32 noundef %conv26) #9
  br label %do.end

do.end:                                           ; preds = %if.then22, %lor.lhs.false19
  %17 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %htt, align 8
  %htc = getelementptr inbounds %struct.ath10k, ptr %18, i32 0, i32 42
  %eid = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 1
  %19 = ptrtoint ptr %eid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %eid, align 4
  %call29 = tail call i32 @ath10k_htc_send(ptr noundef %htc, i32 noundef %20, ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %do.end.cleanup_crit_edge, label %if.then31

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then31:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %do.end.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %if.then31 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end14.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath10k_mac_tx_frm_has_freq(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ath10k_htt_tx(ptr noundef %ar, i16 noundef zeroext %msdu_id, i16 noundef zeroext %msdu_len, i8 noundef zeroext %vdev_id, i8 noundef zeroext %tid) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_htt_tx, i32 0, i32 1), ptr blockaddress(@trace_ath10k_htt_tx, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !98

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !84) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !97

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !84) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !101
  %call42 = tail call i32 @__traceiter_ath10k_htt_tx(ptr noundef null, ptr noundef %ar, i16 noundef zeroext %msdu_id, i16 noundef zeroext %msdu_len, i8 noundef zeroext %vdev_id, i8 noundef zeroext %tid) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  %13 = tail call i32 @llvm.read_register.i32(metadata !84) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !84) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !97

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !84) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_htt_tx, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_htt_tx, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ath10k_htt_tx.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ath10k_htt_tx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 327, ptr noundef nonnull @.str.31) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !104
  %31 = tail call i32 @llvm.read_register.i32(metadata !84) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_dbg_dump(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ath10k_tx_hdr(ptr noundef %ar, ptr noundef %data, i32 noundef %len) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_tx_hdr, i32 0, i32 1), ptr blockaddress(@trace_ath10k_tx_hdr, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !98

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !84) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !97

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !84) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !105
  %call42 = tail call i32 @__traceiter_ath10k_tx_hdr(ptr noundef null, ptr noundef %ar, ptr noundef %data, i32 noundef %len) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !106
  %13 = tail call i32 @llvm.read_register.i32(metadata !84) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !84) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !97

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !84) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_tx_hdr, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_tx_hdr, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ath10k_tx_hdr.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ath10k_tx_hdr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 413, ptr noundef nonnull @.str.31) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !104
  %31 = tail call i32 @llvm.read_register.i32(metadata !84) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ath10k_tx_payload(ptr noundef %ar, ptr noundef %data, i32 noundef %len) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_tx_payload, i32 0, i32 1), ptr blockaddress(@trace_ath10k_tx_payload, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !98

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !84) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !97

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !84) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !107
  %call42 = tail call i32 @__traceiter_ath10k_tx_payload(ptr noundef null, ptr noundef %ar, ptr noundef %data, i32 noundef %len) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !108
  %13 = tail call i32 @llvm.read_register.i32(metadata !84) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !84) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !97

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !84) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_tx_payload, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_tx_payload, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ath10k_tx_payload.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ath10k_tx_payload.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 418, ptr noundef nonnull @.str.31) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !104
  %31 = tail call i32 @llvm.read_register.i32(metadata !84) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ath10k_htt_tx(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ath10k_tx_hdr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ath10k_tx_payload(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_htt_send_rx_ring_cfg_32(ptr nocapture noundef readonly %htt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  %call = tail call ptr @ath10k_htc_alloc_skb(ptr noundef %1, i32 noundef 40) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef 40) #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = getelementptr inbounds %struct.htt_cmd, ptr %3, i32 0, i32 1
  %rings = getelementptr inbounds %struct.htt_cmd, ptr %3, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %3, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %4, align 1
  %alloc_idx = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 9
  %7 = ptrtoint ptr %alloc_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %alloc_idx, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %paddr = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 9, i32 1
  %11 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %paddr, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %rings to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %rings, align 1
  %base_paddr = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 4
  %15 = ptrtoint ptr %base_paddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base_paddr, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %rx_ring_base_paddr = getelementptr inbounds %struct.htt_rx_ring_setup_ring32, ptr %rings, i32 0, i32 1
  %18 = ptrtoint ptr %rx_ring_base_paddr to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %rx_ring_base_paddr, align 1
  %size = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 5
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size, align 8
  %conv57 = trunc i32 %20 to i16
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv57)
  %rx_ring_len = getelementptr inbounds %struct.htt_cmd, ptr %3, i32 0, i32 1, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %rx_ring_len to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 %21, ptr %rx_ring_len, align 1
  %rx_ring_bufsize = getelementptr inbounds %struct.htt_rx_ring_setup_ring32, ptr %rings, i32 0, i32 3
  %23 = ptrtoint ptr %rx_ring_bufsize to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 8, ptr %rx_ring_bufsize, align 1
  %flags58 = getelementptr inbounds %struct.htt_rx_ring_setup_ring32, ptr %rings, i32 0, i32 4
  %24 = ptrtoint ptr %flags58 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 -1, ptr %flags58, align 1
  %25 = lshr i32 %10, 16
  %26 = trunc i32 %25 to i16
  %fw_idx_init_val = getelementptr inbounds %struct.htt_rx_ring_setup_ring32, ptr %rings, i32 0, i32 5
  %27 = ptrtoint ptr %fw_idx_init_val to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %26, ptr %fw_idx_init_val, align 1
  %mac80211_hdr_offset.i = getelementptr inbounds %struct.htt_cmd, ptr %3, i32 0, i32 1, i32 0, i32 3, i32 2
  %28 = ptrtoint ptr %mac80211_hdr_offset.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 18944, ptr %mac80211_hdr_offset.i, align 1
  %msdu_payload_offset.i = getelementptr inbounds %struct.htt_rx_ring_setup_ring32, ptr %rings, i32 0, i32 7
  %29 = ptrtoint ptr %msdu_payload_offset.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 23040, ptr %msdu_payload_offset.i, align 1
  %ppdu_start_offset.i = getelementptr inbounds %struct.htt_rx_ring_setup_ring32, ptr %rings, i32 0, i32 8
  %30 = ptrtoint ptr %ppdu_start_offset.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 6912, ptr %ppdu_start_offset.i, align 1
  %ppdu_end_offset.i = getelementptr inbounds %struct.htt_rx_ring_setup_ring32, ptr %rings, i32 0, i32 9
  %31 = ptrtoint ptr %ppdu_end_offset.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 9472, ptr %ppdu_end_offset.i, align 1
  %mpdu_start_offset.i = getelementptr inbounds %struct.htt_cmd, ptr %3, i32 0, i32 1, i32 0, i32 3, i32 3
  %32 = ptrtoint ptr %mpdu_start_offset.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 1024, ptr %mpdu_start_offset.i, align 1
  %mpdu_end_offset.i = getelementptr inbounds %struct.htt_rx_ring_setup_ring32, ptr %rings, i32 0, i32 11
  %33 = ptrtoint ptr %mpdu_end_offset.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 6656, ptr %mpdu_end_offset.i, align 1
  %msdu_start_offset.i = getelementptr inbounds %struct.htt_rx_ring_setup_ring32, ptr %rings, i32 0, i32 12
  %34 = ptrtoint ptr %msdu_start_offset.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 1792, ptr %msdu_start_offset.i, align 1
  %msdu_end_offset.i = getelementptr inbounds %struct.htt_rx_ring_setup_ring32, ptr %rings, i32 0, i32 13
  %35 = ptrtoint ptr %msdu_end_offset.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 3072, ptr %msdu_end_offset.i, align 1
  %rx_attention_offset.i = getelementptr inbounds %struct.htt_cmd, ptr %3, i32 0, i32 1, i32 0, i32 4
  %36 = ptrtoint ptr %rx_attention_offset.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 256, ptr %rx_attention_offset.i, align 1
  %frag_info_offset.i = getelementptr inbounds %struct.htt_cmd, ptr %3, i32 0, i32 1, i32 0, i32 4, i32 0, i32 1
  %37 = ptrtoint ptr %frag_info_offset.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 512, ptr %frag_info_offset.i, align 1
  %38 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %htt, align 8
  %htc = getelementptr inbounds %struct.ath10k, ptr %39, i32 0, i32 42
  %eid = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 1
  %40 = ptrtoint ptr %eid to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %eid, align 4
  %call61 = tail call i32 @ath10k_htc_send(ptr noundef %htc, i32 noundef %41, ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end.cleanup_crit_edge, label %if.then63

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then63:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call61, %if.then63 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_htt_tx_alloc_cont_frag_desc_32(ptr noundef %htt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  %continuous_frag_desc = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 45, i32 8
  %2 = ptrtoint ptr %continuous_frag_desc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %continuous_frag_desc, align 32, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_num_pending_tx = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 13
  %4 = ptrtoint ptr %max_num_pending_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_num_pending_tx, align 8
  %mul = shl i32 %5, 6
  %dev = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %frag_desc = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 25
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %7, i32 noundef %mul, ptr noundef %frag_desc, i32 noundef 3264, i32 noundef 0) #9
  %8 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 25, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %8, align 4
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %1, ptr noundef nonnull @.str.27) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %size8 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 25, i32 2
  %10 = ptrtoint ptr %size8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %size8, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -12, %if.then5 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_htt_tx_free_cont_frag_desc_32(ptr nocapture noundef %htt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 25, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %frag_desc = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 25
  %max_num_pending_tx = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 13
  %3 = ptrtoint ptr %max_num_pending_tx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_num_pending_tx, align 8
  %mul = shl i32 %4, 6
  %5 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %htt, align 8
  %dev = getelementptr inbounds %struct.ath10k, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %frag_desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %frag_desc, align 8
  tail call void @dma_free_attrs(ptr noundef %8, i32 noundef %mul, ptr noundef nonnull %2, i32 noundef %10, i32 noundef 0) #9
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %0, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_htt_tx_32(ptr noundef %htt, i32 noundef %txmode, ptr noundef %msdu) #0 align 64 {
entry:
  %sg_items = alloca [2 x %struct.ath10k_hif_sg_item], align 4
  %frags_paddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  %dev2 = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 3
  %6 = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 3, i32 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sg_items) #9
  %7 = call ptr @memset(ptr %sg_items, i32 255, i32 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %txmode)
  %cmp = icmp eq i32 %txmode, 2
  %8 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cb.i, align 8
  %and.i = and i32 %9, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %vdev_id.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 54, i32 6
  %10 = ptrtoint ptr %vdev_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vdev_id.i, align 4
  %conv.i = trunc i32 %11 to i8
  br label %ath10k_htt_tx_get_vdev_id.exit

if.else.i:                                        ; preds = %entry
  %vif.i = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 3, i32 18
  %12 = ptrtoint ptr %vif.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load ptr, ptr %vif.i, align 1
  %tobool2.not.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i, label %if.else7.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %vdev_id5.i = getelementptr inbounds %struct.ieee80211_vif, ptr %13, i32 1, i32 1
  %14 = ptrtoint ptr %vdev_id5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vdev_id5.i, align 4
  %conv6.i = trunc i32 %15 to i8
  br label %ath10k_htt_tx_get_vdev_id.exit

if.else7.i:                                       ; preds = %if.else.i
  %monitor_started.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 64
  %16 = ptrtoint ptr %monitor_started.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %monitor_started.i, align 4, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not.i = icmp eq i8 %17, 0
  br i1 %tobool8.not.i, label %if.else7.i.ath10k_htt_tx_get_vdev_id.exit_crit_edge, label %if.then9.i

if.else7.i.ath10k_htt_tx_get_vdev_id.exit_crit_edge: ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_htt_tx_get_vdev_id.exit

if.then9.i:                                       ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #11
  %monitor_vdev_id.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 63
  %18 = ptrtoint ptr %monitor_vdev_id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %monitor_vdev_id.i, align 8
  %conv10.i = trunc i32 %19 to i8
  br label %ath10k_htt_tx_get_vdev_id.exit

ath10k_htt_tx_get_vdev_id.exit:                   ; preds = %if.then9.i, %if.else7.i.ath10k_htt_tx_get_vdev_id.exit_crit_edge, %if.then3.i, %if.then.i
  %retval.0.i = phi i8 [ %conv.i, %if.then.i ], [ %conv6.i, %if.then3.i ], [ %conv10.i, %if.then9.i ], [ 0, %if.else7.i.ath10k_htt_tx_get_vdev_id.exit_crit_edge ]
  br i1 %cmp, label %ath10k_htt_tx_get_vdev_id.exit.if.else.i386_crit_edge, label %land.lhs.true.i

ath10k_htt_tx_get_vdev_id.exit.if.else.i386_crit_edge: ; preds = %ath10k_htt_tx_get_vdev_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i386

land.lhs.true.i:                                  ; preds = %ath10k_htt_tx_get_vdev_id.exit
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %5, align 2
  %22 = and i16 %21, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp.i.i = icmp eq i16 %22, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.ath10k_htt_tx_get_tid.exit_crit_edge, label %land.lhs.true.i.if.else.i386_crit_edge

land.lhs.true.i.if.else.i386_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i386

land.lhs.true.i.ath10k_htt_tx_get_tid.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_htt_tx_get_tid.exit

if.else.i386:                                     ; preds = %land.lhs.true.i.if.else.i386_crit_edge, %ath10k_htt_tx_get_vdev_id.exit.if.else.i386_crit_edge
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 3, i32 12
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flags.i, align 1
  %25 = and i8 %24, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool2.not.i385 = icmp eq i8 %25, 0
  br i1 %tobool2.not.i385, label %if.else.i386.ath10k_htt_tx_get_tid.exit_crit_edge, label %if.then3.i387

if.else.i386.ath10k_htt_tx_get_tid.exit_crit_edge: ; preds = %if.else.i386
  call void @__sanitizer_cov_trace_pc() #11
  br label %ath10k_htt_tx_get_tid.exit

if.then3.i387:                                    ; preds = %if.else.i386
  call void @__sanitizer_cov_trace_pc() #11
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 15, i32 0, i32 6
  %26 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %priority.i, align 4
  %28 = trunc i32 %27 to i8
  %conv5.i = and i8 %28, 15
  br label %ath10k_htt_tx_get_tid.exit

ath10k_htt_tx_get_tid.exit:                       ; preds = %if.then3.i387, %if.else.i386.ath10k_htt_tx_get_tid.exit_crit_edge, %land.lhs.true.i.ath10k_htt_tx_get_tid.exit_crit_edge
  %retval.0.i388 = phi i8 [ %conv5.i, %if.then3.i387 ], [ 17, %land.lhs.true.i.ath10k_htt_tx_get_tid.exit_crit_edge ], [ 16, %if.else.i386.ath10k_htt_tx_get_tid.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frags_paddr) #9
  %29 = ptrtoint ptr %frags_paddr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %frags_paddr, align 4
  %tx_lock.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock.i) #9
  %pending_tx.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 16
  %max_num_pending_tx.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 13
  %30 = ptrtoint ptr %max_num_pending_tx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_num_pending_tx.i, align 8
  %call.i = tail call i32 @idr_alloc(ptr noundef %pending_tx.i, ptr noundef %msdu, i32 noundef 0, i32 noundef %31, i32 noundef 2592) #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %32 = load i32, ptr @ath10k_debug_mask, align 4
  %and.i389 = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i389)
  %tobool.not.i390 = icmp eq i32 %and.i389, 0
  br i1 %tobool.not.i390, label %lor.lhs.false.i, label %ath10k_htt_tx_get_tid.exit.if.then.i391_crit_edge

ath10k_htt_tx_get_tid.exit.if.then.i391_crit_edge: ; preds = %ath10k_htt_tx_get_tid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i391

lor.lhs.false.i:                                  ; preds = %ath10k_htt_tx_get_tid.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_tx_32, %if.then.i391)) #9
          to label %ath10k_htt_tx_alloc_msdu_id.exit [label %if.then.i391], !srcloc !98

if.then.i391:                                     ; preds = %lor.lhs.false.i, %ath10k_htt_tx_get_tid.exit.if.then.i391_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.1, i32 noundef %call.i) #9
  br label %ath10k_htt_tx_alloc_msdu_id.exit

ath10k_htt_tx_alloc_msdu_id.exit:                 ; preds = %if.then.i391, %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7 = icmp slt i32 %call.i, 0
  br i1 %cmp7, label %ath10k_htt_tx_alloc_msdu_id.exit.cleanup_crit_edge, label %if.end

ath10k_htt_tx_alloc_msdu_id.exit.cleanup_crit_edge: ; preds = %ath10k_htt_tx_alloc_msdu_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %ath10k_htt_tx_alloc_msdu_id.exit
  %conv = trunc i32 %call.i to i16
  %prefetch_len8 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 11
  %33 = ptrtoint ptr %prefetch_len8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %prefetch_len8, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 6
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len, align 4
  %37 = tail call i32 @llvm.umin.i32(i32 %34, i32 %36)
  %add = add i32 %37, 3
  %div = sdiv i32 %add, 4
  %txbuf12 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 26
  %38 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 26, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %conv13 = and i32 %call.i, 65535
  %add.ptr = getelementptr %struct.ath10k_htt_txbuf_32, ptr %40, i32 %conv13
  %41 = ptrtoint ptr %txbuf12 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %txbuf12, align 4
  %mul16 = mul nuw nsw i32 %conv13, 40
  %add17 = add i32 %42, %mul16
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %5, align 2
  %45 = and i16 %44, -1024
  %46 = zext i16 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.37)
  switch i16 %45, label %if.end.if.else_crit_edge [
    i16 -12288, label %if.end.land.lhs.true_crit_edge
    i16 -16384, label %if.end.land.lhs.true_crit_edge414
    i16 -24576, label %if.end.land.lhs.true_crit_edge415
  ]

if.end.land.lhs.true_crit_edge415:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge414:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = and i16 %44, 64
  br label %if.else

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge414, %if.end.land.lhs.true_crit_edge415
  %47 = and i16 %44, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp.i394.not = icmp eq i16 %47, 0
  br i1 %cmp.i394.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end44.sink.split_crit_edge

land.lhs.true.if.end44.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.sink.split

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %.pre-phi = phi i16 [ %.pre, %if.end.if.else_crit_edge ], [ 0, %land.lhs.true.if.else_crit_edge ]
  %flags = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 3, i32 12
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %flags, align 1
  %50 = and i8 %49, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool33.not = icmp eq i8 %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %txmode)
  %cmp35 = icmp eq i32 %txmode, 0
  %or.cond = and i1 %cmp35, %tobool33.not
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pre-phi)
  %cmp.i395 = icmp ne i16 %.pre-phi, 0
  %or.cond413 = select i1 %or.cond, i1 %cmp.i395, i1 false
  br i1 %or.cond413, label %if.else.if.end44.sink.split_crit_edge, label %if.else.if.end44_crit_edge

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.else.if.end44.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.sink.split

if.end44.sink.split:                              ; preds = %if.else.if.end44.sink.split_crit_edge, %land.lhs.true.if.end44.sink.split_crit_edge
  %call42 = tail call ptr @skb_put(ptr noundef %msdu, i32 noundef 8) #9
  br label %if.end44

if.end44:                                         ; preds = %if.end44.sink.split, %if.else.if.end44_crit_edge
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data, align 4
  %53 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len, align 4
  %call.i396 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %52) #9
  br i1 %call.i396, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end44
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i397, !prof !97

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread

if.then.i397:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %3) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %55 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i397.dev_name.exit.i_crit_edge

if.then.i397.dev_name.exit.i_crit_edge:           ; preds = %if.then.i397
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i397
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %3, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i397.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %58, %if.end.i.i ], [ %56, %if.then.i397.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.19, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %59 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 -1, ptr %6, align 1
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef -1) #9
  br label %err_free_msdu_id

dma_map_single_attrs.exit:                        ; preds = %if.end44
  tail call void @debug_dma_map_single(ptr noundef %3, ptr noundef %52, i32 noundef %54) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %60 = load ptr, ptr @mem_map, align 4
  %61 = ptrtoint ptr %52 to i32
  %sub.i = add i32 %61, 1073741824
  %shr.i398 = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %60, i32 %shr.i398
  %and.i399 = and i32 %61, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %add.ptr.i, i32 noundef %and.i399, i32 noundef %54, i32 noundef 1, i32 noundef 0) #9
  %62 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %call41.i, ptr %6, align 1
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %call41.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i401 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i401, label %dma_map_single_attrs.exit.err_free_msdu_id_crit_edge, label %if.end53

dma_map_single_attrs.exit.err_free_msdu_id_crit_edge: ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_msdu_id

if.end53:                                         ; preds = %dma_map_single_attrs.exit
  %63 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cb.i, align 8
  %and55 = and i32 %64, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end53.if.end61_crit_edge, label %if.then59, !prof !97

if.end53.if.end61_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then59:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %roc_freq = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 54, i32 7
  %65 = ptrtoint ptr %roc_freq to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %roc_freq, align 8
  %conv60 = trunc i32 %66 to i16
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end53.if.end61_crit_edge
  %freq.0 = phi i16 [ %conv60, %if.then59 ], [ 0, %if.end53.if.end61_crit_edge ]
  %67 = zext i32 %txmode to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %txmode, label %if.end61.sw.epilog_crit_edge [
    i32 0, label %if.end61.sw.bb_crit_edge
    i32 1, label %if.end61.sw.bb_crit_edge416
    i32 2, label %if.end61.sw.bb64_crit_edge
    i32 3, label %sw.bb100
  ]

if.end61.sw.bb64_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb64

if.end61.sw.bb_crit_edge416:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end61.sw.bb_crit_edge:                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end61.sw.epilog_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end61.sw.bb_crit_edge, %if.end61.sw.bb_crit_edge416
  br label %sw.bb64

sw.bb64:                                          ; preds = %sw.bb, %if.end61.sw.bb64_crit_edge
  %flags0.0 = phi i32 [ 0, %if.end61.sw.bb64_crit_edge ], [ 1, %sw.bb ]
  %continuous_frag_desc = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 45, i32 8
  %68 = ptrtoint ptr %continuous_frag_desc to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %continuous_frag_desc, align 32, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool65.not = icmp eq i8 %69, 0
  br i1 %tobool65.not, label %if.else83, label %if.then66

if.then66:                                        ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #11
  %frag_desc = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 25
  %70 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 25, i32 1
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %arrayidx = getelementptr %struct.htt_msdu_ext_desc, ptr %72, i32 %conv13
  %73 = call ptr @memset(ptr %arrayidx, i32 0, i32 64)
  %frags69 = getelementptr %struct.htt_msdu_ext_desc, ptr %72, i32 %conv13, i32 4
  %74 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %6, align 1
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  %77 = ptrtoint ptr %frags69 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %76, ptr %frags69, align 1
  %paddr_hi = getelementptr inbounds %struct.triple_word_addr, ptr %frags69, i32 0, i32 1
  %78 = ptrtoint ptr %paddr_hi to i32
  call void @__asan_storeN_noabort(i32 %78, i32 2)
  store i16 0, ptr %paddr_hi, align 1
  %79 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len, align 4
  %conv76 = trunc i32 %80 to i16
  %81 = tail call i16 @llvm.bswap.i16(i16 %conv76)
  %len_16 = getelementptr inbounds %struct.triple_word_addr, ptr %frags69, i32 0, i32 2
  %82 = ptrtoint ptr %len_16 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 %81, ptr %len_16, align 1
  %83 = ptrtoint ptr %frag_desc to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %frag_desc, align 8
  %mul81 = shl nuw nsw i32 %conv13, 6
  %add82 = add i32 %84, %mul81
  br label %if.end95

if.else83:                                        ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %6, align 1
  %87 = tail call i32 @llvm.bswap.i32(i32 %86)
  %88 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 %87, ptr %add.ptr, align 1
  %89 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %len, align 4
  %91 = tail call i32 @llvm.bswap.i32(i32 %90)
  %len90 = getelementptr inbounds %struct.double_word_addr, ptr %add.ptr, i32 0, i32 1
  %92 = ptrtoint ptr %len90 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 %91, ptr %len90, align 1
  %arrayidx91 = getelementptr %struct.htt_data_tx_desc_frag, ptr %add.ptr, i32 1
  %93 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 0, ptr %arrayidx91, align 1
  %len94 = getelementptr inbounds %struct.double_word_addr, ptr %arrayidx91, i32 0, i32 1
  %94 = ptrtoint ptr %len94 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 4)
  store i32 0, ptr %len94, align 1
  br label %if.end95

if.end95:                                         ; preds = %if.else83, %if.then66
  %storemerge = phi i32 [ %add17, %if.else83 ], [ %add82, %if.then66 ]
  %ext_desc.0 = phi ptr [ null, %if.else83 ], [ %arrayidx, %if.then66 ]
  %95 = ptrtoint ptr %frags_paddr to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %storemerge, ptr %frags_paddr, align 4
  %shl = shl nuw nsw i32 %txmode, 5
  %or98 = or i32 %flags0.0, %shl
  %conv99 = trunc i32 %or98 to i8
  br label %sw.epilog

sw.bb100:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %97 = load i32, ptr %6, align 1
  %98 = ptrtoint ptr %frags_paddr to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %frags_paddr, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb100, %if.end95, %if.end61.sw.epilog_crit_edge
  %flags0.1 = phi i8 [ 0, %if.end61.sw.epilog_crit_edge ], [ 97, %sw.bb100 ], [ %conv99, %if.end95 ]
  %ext_desc.1 = phi ptr [ null, %if.end61.sw.epilog_crit_edge ], [ null, %sw.bb100 ], [ %ext_desc.0, %if.end95 ]
  %eid = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 1
  %99 = ptrtoint ptr %eid to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %eid, align 4
  %conv108 = trunc i32 %100 to i8
  %htc_hdr = getelementptr %struct.ath10k_htt_txbuf_32, ptr %40, i32 %conv13, i32 1
  %101 = ptrtoint ptr %htc_hdr to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv108, ptr %htc_hdr, align 4
  %div.tr = trunc i32 %div to i16
  %102 = shl i16 %div.tr, 2
  %conv111 = add i16 %102, 16
  %103 = tail call i16 @llvm.bswap.i16(i16 %conv111)
  %len113 = getelementptr %struct.ath10k_htt_txbuf_32, ptr %40, i32 %conv13, i32 1, i32 2
  %104 = ptrtoint ptr %len113 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %len113, align 2
  %flags115 = getelementptr %struct.ath10k_htt_txbuf_32, ptr %40, i32 %conv13, i32 1, i32 1
  %105 = ptrtoint ptr %flags115 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %flags115, align 1
  %flags116 = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 3, i32 12
  %106 = ptrtoint ptr %flags116 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %flags116, align 1
  %108 = shl i8 %107, 2
  %109 = and i8 %108, 4
  %110 = or i8 %109, %flags0.1
  %111 = and i8 %retval.0.i, 63
  %conv133 = zext i8 %retval.0.i388 to i16
  %shl134 = shl nuw nsw i16 %conv133, 6
  %conv136 = zext i8 %111 to i16
  %or137 = or i16 %shl134, %conv136
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %msdu, i32 0, i32 15
  %112 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %112)
  %bf.load = load i16, ptr %ip_summed, align 8
  %113 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %113)
  %cmp140 = icmp eq i16 %113, 1536
  br i1 %cmp140, label %land.lhs.true142, label %sw.epilog.if.end161_crit_edge

sw.epilog.if.end161_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end161

land.lhs.true142:                                 ; preds = %sw.epilog
  %dev_flags = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 66
  %114 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %dev_flags, align 4
  %116 = and i32 %115, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool144.not = icmp eq i32 %116, 0
  br i1 %tobool144.not, label %if.then145, label %land.lhs.true142.if.end161_crit_edge

land.lhs.true142.if.end161_crit_edge:             ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end161

if.then145:                                       ; preds = %land.lhs.true142
  %117 = or i16 %or137, 24576
  %continuous_frag_desc153 = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 45, i32 8
  %118 = ptrtoint ptr %continuous_frag_desc153 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %continuous_frag_desc153, align 32, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool154.not = icmp eq i8 %119, 0
  br i1 %tobool154.not, label %if.then145.if.end161_crit_edge, label %if.then155

if.then145.if.end161_crit_edge:                   ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end161

if.then155:                                       ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #11
  %flags156 = getelementptr inbounds %struct.htt_msdu_ext_desc, ptr %ext_desc.1, i32 0, i32 2
  %120 = ptrtoint ptr %flags156 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %flags156, align 2
  %122 = or i8 %121, 31
  store i8 %122, ptr %flags156, align 2
  br label %if.end161

if.end161:                                        ; preds = %if.then155, %if.then145.if.end161_crit_edge, %land.lhs.true142.if.end161_crit_edge, %sw.epilog.if.end161_crit_edge
  %flags1.0 = phi i16 [ %or137, %land.lhs.true142.if.end161_crit_edge ], [ %117, %if.then155 ], [ %117, %if.then145.if.end161_crit_edge ], [ %or137, %sw.epilog.if.end161_crit_edge ]
  %123 = or i16 %flags1.0, 2048
  %cmd_hdr = getelementptr %struct.ath10k_htt_txbuf_32, ptr %40, i32 %conv13, i32 2
  %124 = ptrtoint ptr %cmd_hdr to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 1, ptr %cmd_hdr, align 4
  %cmd_tx = getelementptr %struct.ath10k_htt_txbuf_32, ptr %40, i32 %conv13, i32 3
  %125 = ptrtoint ptr %cmd_tx to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %110, ptr %cmd_tx, align 1
  %126 = tail call i16 @llvm.bswap.i16(i16 %123)
  %flags1167 = getelementptr %struct.ath10k_htt_txbuf_32, ptr %40, i32 %conv13, i32 3, i32 1
  %127 = ptrtoint ptr %flags1167 to i32
  call void @__asan_storeN_noabort(i32 %127, i32 2)
  store i16 %126, ptr %flags1167, align 1
  %128 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %len, align 4
  %conv169 = trunc i32 %129 to i16
  %130 = tail call i16 @llvm.bswap.i16(i16 %conv169)
  %len171 = getelementptr %struct.ath10k_htt_txbuf_32, ptr %40, i32 %conv13, i32 3, i32 2
  %131 = ptrtoint ptr %len171 to i32
  call void @__asan_storeN_noabort(i32 %131, i32 2)
  store i16 %130, ptr %len171, align 1
  %132 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %id = getelementptr %struct.ath10k_htt_txbuf_32, ptr %40, i32 %conv13, i32 3, i32 3
  %133 = ptrtoint ptr %id to i32
  call void @__asan_storeN_noabort(i32 %133, i32 2)
  store i16 %132, ptr %id, align 1
  %134 = ptrtoint ptr %frags_paddr to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %frags_paddr, align 4
  %136 = tail call i32 @llvm.bswap.i32(i32 %135)
  %frags_paddr174 = getelementptr %struct.ath10k_htt_txbuf_32, ptr %40, i32 %conv13, i32 3, i32 4
  %137 = ptrtoint ptr %frags_paddr174 to i32
  call void @__asan_storeN_noabort(i32 %137, i32 4)
  store i32 %136, ptr %frags_paddr174, align 1
  %call175 = tail call zeroext i1 @ath10k_mac_tx_frm_has_freq(ptr noundef %1) #9
  %138 = getelementptr %struct.ath10k_htt_txbuf_32, ptr %40, i32 %conv13, i32 3, i32 5
  br i1 %call175, label %if.then176, label %if.else180

if.then176:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #11
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_storeN_noabort(i32 %139, i32 2)
  store i16 -1, ptr %138, align 1
  %140 = tail call i16 @llvm.bswap.i16(i16 %freq.0)
  %freq179 = getelementptr inbounds %struct.anon.157, ptr %138, i32 0, i32 1
  %141 = ptrtoint ptr %freq179 to i32
  call void @__asan_storeN_noabort(i32 %141, i32 2)
  store i16 %140, ptr %freq179, align 1
  br label %if.end182

if.else180:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #11
  %142 = ptrtoint ptr %138 to i32
  call void @__asan_storeN_noabort(i32 %142, i32 4)
  store i32 -65536, ptr %138, align 1
  br label %if.end182

if.end182:                                        ; preds = %if.else180, %if.then176
  %143 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %len, align 4
  %conv184 = trunc i32 %144 to i16
  tail call fastcc void @trace_ath10k_htt_tx(ptr noundef %1, i16 noundef zeroext %conv, i16 noundef zeroext %conv184, i8 noundef zeroext %retval.0.i, i8 noundef zeroext %retval.0.i388)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %145 = load i32, ptr @ath10k_debug_mask, align 4
  %and185 = and i32 %145, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %lor.lhs.false187, label %if.end182.if.then190_crit_edge

if.end182.if.then190_crit_edge:                   ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then190

lor.lhs.false187:                                 ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_tx_32, %if.then190)) #9
          to label %do.end [label %if.then190], !srcloc !98

if.then190:                                       ; preds = %lor.lhs.false187, %if.end182.if.then190_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  %conv191 = zext i8 %110 to i32
  %conv192 = zext i16 %123 to i32
  %146 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %len, align 4
  %conv196 = zext i8 %retval.0.i to i32
  %conv197 = zext i8 %retval.0.i388 to i32
  %conv198 = zext i16 %freq.0 to i32
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.28, i32 noundef %conv191, i32 noundef %conv192, i32 noundef %147, i32 noundef %conv13, ptr noundef nonnull %frags_paddr, ptr noundef %6, i32 noundef %conv196, i32 noundef %conv197, i32 noundef %conv198) #9
  br label %do.end

do.end:                                           ; preds = %if.then190, %lor.lhs.false187
  %148 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %data, align 4
  %150 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %len, align 4
  call void @ath10k_dbg_dump(ptr noundef %1, i32 noundef 128, ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef %149, i32 noundef %151) #9
  %152 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %data, align 4
  %154 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %len, align 4
  call fastcc void @trace_ath10k_tx_hdr(ptr noundef %1, ptr noundef %153, i32 noundef %155)
  %156 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %data, align 4
  %158 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %len, align 4
  call fastcc void @trace_ath10k_tx_payload(ptr noundef %1, ptr noundef %157, i32 noundef %159)
  %160 = ptrtoint ptr %sg_items to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 0, ptr %sg_items, align 4
  %transfer_context = getelementptr inbounds %struct.ath10k_hif_sg_item, ptr %sg_items, i32 0, i32 1
  %161 = ptrtoint ptr %transfer_context to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr null, ptr %transfer_context, align 4
  %vaddr = getelementptr inbounds %struct.ath10k_hif_sg_item, ptr %sg_items, i32 0, i32 2
  %162 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %htc_hdr, ptr %vaddr, align 4
  %add210 = add i32 %add17, 16
  %paddr212 = getelementptr inbounds %struct.ath10k_hif_sg_item, ptr %sg_items, i32 0, i32 3
  %163 = ptrtoint ptr %paddr212 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %add210, ptr %paddr212, align 4
  %len214 = getelementptr inbounds %struct.ath10k_hif_sg_item, ptr %sg_items, i32 0, i32 4
  %164 = ptrtoint ptr %len214 to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 24, ptr %len214, align 4
  %arrayidx215 = getelementptr inbounds [2 x %struct.ath10k_hif_sg_item], ptr %sg_items, i32 0, i32 1
  %165 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 0, ptr %arrayidx215, align 4
  %transfer_context218 = getelementptr inbounds [2 x %struct.ath10k_hif_sg_item], ptr %sg_items, i32 0, i32 1, i32 1
  %166 = ptrtoint ptr %transfer_context218 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %transfer_context218, align 4
  %167 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %data, align 4
  %vaddr221 = getelementptr inbounds [2 x %struct.ath10k_hif_sg_item], ptr %sg_items, i32 0, i32 1, i32 2
  %169 = ptrtoint ptr %vaddr221 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %168, ptr %vaddr221, align 4
  %170 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %170, i32 4)
  %171 = load i32, ptr %6, align 1
  %paddr224 = getelementptr inbounds [2 x %struct.ath10k_hif_sg_item], ptr %sg_items, i32 0, i32 1, i32 3
  %172 = ptrtoint ptr %paddr224 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %paddr224, align 4
  %len227 = getelementptr inbounds [2 x %struct.ath10k_hif_sg_item], ptr %sg_items, i32 0, i32 1, i32 4
  %173 = ptrtoint ptr %len227 to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 %102, ptr %len227, align 4
  %174 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %htt, align 8
  %176 = ptrtoint ptr %eid to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %eid, align 4
  %ul_pipe_id = getelementptr %struct.ath10k, ptr %175, i32 0, i32 42, i32 1, i32 %177, i32 6
  %178 = ptrtoint ptr %ul_pipe_id to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %ul_pipe_id, align 4
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %175, i32 0, i32 34, i32 1
  %180 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %ops.i, align 4
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %181, align 4
  %call.i402 = call i32 %183(ptr noundef %175, i8 noundef zeroext %179, ptr noundef nonnull %sg_items, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i402)
  %tobool234.not = icmp eq i32 %call.i402, 0
  br i1 %tobool234.not, label %do.end.cleanup_crit_edge, label %err_unmap_msdu

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_unmap_msdu:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %184 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %184, i32 4)
  %185 = load i32, ptr %6, align 1
  %186 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %len, align 4
  call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %185, i32 noundef %187, i32 noundef 1, i32 noundef 0) #9
  br label %err_free_msdu_id

err_free_msdu_id:                                 ; preds = %err_unmap_msdu, %dma_map_single_attrs.exit.err_free_msdu_id_crit_edge, %dma_map_single_attrs.exit.thread
  %res.0 = phi i32 [ %call.i402, %err_unmap_msdu ], [ -5, %dma_map_single_attrs.exit.err_free_msdu_id_crit_edge ], [ -5, %dma_map_single_attrs.exit.thread ]
  call void @_raw_spin_lock_bh(ptr noundef %tx_lock.i) #9
  %188 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %htt, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %190 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool.not.i403 = icmp eq i32 %190, 0
  br i1 %tobool.not.i403, label %err_free_msdu_id.if.end.i_crit_edge, label %land.rhs.i404

err_free_msdu_id.if.end.i_crit_edge:              ; preds = %err_free_msdu_id
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i404:                                    ; preds = %err_free_msdu_id
  %dep_map.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i404.if.end.i_crit_edge, !prof !95

land.rhs.i404.if.end.i_crit_edge:                 ; preds = %land.rhs.i404
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i404
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 217, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i404.if.end.i_crit_edge, %err_free_msdu_id.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %191 = load i32, ptr @ath10k_debug_mask, align 4
  %and.i405 = and i32 %191, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i405)
  %tobool26.not.i = icmp eq i32 %and.i405, 0
  br i1 %tobool26.not.i, label %lor.lhs.false.i406, label %if.end.i.if.then28.i_crit_edge

if.end.i.if.then28.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28.i

lor.lhs.false.i406:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_tx_32, %if.then28.i)) #9
          to label %ath10k_htt_tx_free_msdu_id.exit [label %if.then28.i], !srcloc !98

if.then28.i:                                      ; preds = %lor.lhs.false.i406, %if.end.i.if.then28.i_crit_edge
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %189, i32 noundef 8, ptr noundef nonnull @.str.2, i32 noundef %conv13) #9
  br label %ath10k_htt_tx_free_msdu_id.exit

ath10k_htt_tx_free_msdu_id.exit:                  ; preds = %if.then28.i, %lor.lhs.false.i406
  %call33.i = call ptr @idr_remove(ptr noundef %pending_tx.i, i32 noundef %conv13) #9
  call void @_raw_spin_unlock_bh(ptr noundef %tx_lock.i) #9
  br label %cleanup

cleanup:                                          ; preds = %ath10k_htt_tx_free_msdu_id.exit, %do.end.cleanup_crit_edge, %ath10k_htt_tx_alloc_msdu_id.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ %call.i, %ath10k_htt_tx_alloc_msdu_id.exit.cleanup_crit_edge ], [ %res.0, %ath10k_htt_tx_free_msdu_id.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frags_paddr) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sg_items) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_htt_tx_alloc_cont_txbuf_32(ptr noundef %htt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  %max_num_pending_tx = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 13
  %2 = ptrtoint ptr %max_num_pending_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_num_pending_tx, align 8
  %mul = mul i32 %3, 40
  %dev = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %txbuf = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 26
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %5, i32 noundef %mul, ptr noundef %txbuf, i32 noundef 3264, i32 noundef 0) #9
  %6 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 26, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %6, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %size5 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 26, i32 2
  %8 = ptrtoint ptr %size5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %size5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_htt_tx_free_cont_txbuf_32(ptr nocapture noundef %htt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 26, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %txbuf = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 26
  %3 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %htt, align 8
  %size3 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 26, i32 2
  %5 = ptrtoint ptr %size3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size3, align 4
  %dev = getelementptr inbounds %struct.ath10k, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %txbuf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %txbuf, align 4
  tail call void @dma_free_attrs(ptr noundef %8, i32 noundef %6, ptr noundef nonnull %2, i32 noundef %10, i32 noundef 0) #9
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %0, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !75, !76, !78, !79, !81, !82}
!llvm.named.register.sp = !{!84}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath10k/htt_tx.c", i32 145, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath10k/htt_tx.c", i32 208, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath10k/htt_tx.c", i32 219, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath10k/htt_tx.c", i32 481, i32 2}
!8 = !{ptr @ath10k_htt_tx_start.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath10k/htt_tx.c", i32 484, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath10k/htt_tx.c", i32 585, i32 2}
!13 = !{ptr @__ksymtab_ath10k_htt_hif_tx_complete, !14, !"__ksymtab_ath10k_htt_hif_tx_complete", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/ath10k/htt_tx.c", i32 601, i32 1}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/ath10k/htt_tx.c", i32 666, i32 19}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/ath10k/htt_tx.c", i32 1160, i32 19}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/ath10k/htt_tx.c", i32 75, i32 19}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath10k/htt_tx.c", i32 84, i32 2}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/ath10k/htt_tx.c", i32 105, i32 2}
!25 = !{ptr @xa_init_flags.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath10k/htt_tx.c", i32 440, i32 18}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath10k/htt_tx.c", i32 446, i32 18}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath10k/htt_tx.c", i32 452, i32 18}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath10k/htt_tx.c", i32 458, i32 18}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath10k/htt_tx.c", i32 409, i32 19}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath10k/htt_tx.c", i32 513, i32 2}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @htt_tx_ops_hl, !45, !"htt_tx_ops_hl", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath10k/htt_tx.c", i32 1837, i32 39}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath10k/htt_tx.c", i32 688, i32 19}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath10k/htt_tx.c", i32 724, i32 2}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath10k/htt_tx.c", i32 728, i32 19}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath10k/htt_tx.c", i32 1353, i32 3}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath10k/htt_tx.c", i32 1359, i32 25}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath10k/htt_tx.c", i32 1369, i32 19}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath10k/htt_tx.c", i32 1063, i32 2}
!60 = !{ptr @htt_tx_ops_64, !61, !"htt_tx_ops_64", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath10k/htt_tx.c", i32 1826, i32 39}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath10k/htt_tx.c", i32 363, i32 18}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath10k/htt_tx.c", i32 1773, i32 2}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath10k/htt_tx.c", i32 1777, i32 49}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/ath10k/trace.h", i32 294, i32 1}
!70 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!71 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!72 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!75 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/ath10k/trace.h", i32 410, i32 1}
!78 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/ath/ath10k/trace.h", i32 415, i32 1}
!81 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!82 = !{ptr @htt_tx_ops_32, !83, !"htt_tx_ops_32", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/ath10k/htt_tx.c", i32 1815, i32 39}
!84 = !{!"sp"}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{!"auto-init"}
!95 = !{!"branch_weights", i32 1, i32 2000}
!96 = !{i8 0, i8 2}
!97 = !{!"branch_weights", i32 2000, i32 1}
!98 = !{i64 2148898877, i64 2148898882, i64 2148898895, i64 2148898939, i64 2148898973, i64 2148898994}
!99 = !{i32 0, i32 33}
!100 = !{i64 2148418592, i64 2148418624, i64 2148418653, i64 2148418687, i64 2148418718, i64 2148418741}
!101 = !{i64 2158917912}
!102 = !{i64 2158918171}
!103 = !{i64 2149722258}
!104 = !{i64 2149723294}
!105 = !{i64 2158955443}
!106 = !{i64 2158955658}
!107 = !{i64 2158972049}
!108 = !{i64 2158972272}
