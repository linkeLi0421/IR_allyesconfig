; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath10k/htt_rx.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath10k/htt_rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ath10k_htt_t2h_msg_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_ath10k_htt_t2h_msg_handler\09\09\09\09"
module asm "\09.long\09__crc_ath10k_htt_t2h_msg_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath10k_htt_t2h_msg_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22ath10k_htt_t2h_msg_handler\22\09\09\09\09\09"
module asm "__kstrtabns_ath10k_htt_t2h_msg_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath10k_htt_rx_pktlog_completion_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_ath10k_htt_rx_pktlog_completion_handler\09\09\09\09"
module asm "\09.long\09__crc_ath10k_htt_rx_pktlog_completion_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath10k_htt_rx_pktlog_completion_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22ath10k_htt_rx_pktlog_completion_handler\22\09\09\09\09\09"
module asm "__kstrtabns_ath10k_htt_rx_pktlog_completion_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath10k_htt_rx_hl_indication\22, \22a\22\09"
module asm "\09.weak\09__crc_ath10k_htt_rx_hl_indication\09\09\09\09"
module asm "\09.long\09__crc_ath10k_htt_rx_hl_indication\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath10k_htt_rx_hl_indication:\09\09\09\09\09"
module asm "\09.asciz \09\22ath10k_htt_rx_hl_indication\22\09\09\09\09\09"
module asm "__kstrtabns_ath10k_htt_rx_hl_indication:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath10k_htt_txrx_compl_task\22, \22a\22\09"
module asm "\09.weak\09__crc_ath10k_htt_txrx_compl_task\09\09\09\09"
module asm "\09.long\09__crc_ath10k_htt_txrx_compl_task\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath10k_htt_txrx_compl_task:\09\09\09\09\09"
module asm "\09.asciz \09\22ath10k_htt_txrx_compl_task\22\09\09\09\09\09"
module asm "__kstrtabns_ath10k_htt_txrx_compl_task:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ath10k_htt_rx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.91 }
%struct.atomic_t = type { i32 }
%union.anon.91 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ath10k = type { %struct.ath_common, ptr, ptr, ptr, %struct.msa_region, [6 x i8], i32, i16, i32, i32, i8, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, %struct.anon.140, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.ath10k_bmi, %struct.ath10k_wmi, %struct.ath10k_htc, [4 x i8], %struct.ath10k_htt, %struct.ath10k_hw_params, %struct.ath10k_fw_components, ptr, ptr, ptr, %struct.anon.186, i32, i32, i32, %struct.anon.187, %struct.anon.188, ptr, ptr, %struct.cfg80211_chan_def, ptr, i64, ptr, i8, i32, i8, i32, i32, i8, i8, i32, i8, i8, %struct.completion, i32, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, [2048 x ptr], %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.completion, ptr, %struct.work_struct, %struct.sk_buff_head, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, [41 x %struct.survey_info], i8, %struct.completion, ptr, i32, %struct.ath10k_debug, %struct.anon.193, i32, %struct.anon.194, %struct.anon.195, %struct.anon.196, %struct.ath10k_thermal, %struct.ath10k_wow, %struct.ath10k_per_peer_tx_stats, [36 x i8], %struct.net_device, %struct.napi_struct, %struct.work_struct, %struct.anon.197, i32, ptr, ptr, i32, i32, %struct.ath10k_radar_found_info, %struct.work_struct, %struct.ath10k_bus_params, %struct.completion, i8, i32, i32, i32, [0 x i8], [48 x i8] }
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
%struct.htt_rx_desc = type { %union.anon.163, %struct.anon.164, [64 x i8], [0 x i8] }
%union.anon.163 = type { i32 }
%struct.anon.164 = type { %struct.rx_attention, %struct.rx_frag_info, %struct.rx_mpdu_start, %struct.rx_msdu_start, %struct.rx_msdu_end, %struct.rx_mpdu_end, %struct.rx_ppdu_start, %struct.rx_ppdu_end }
%struct.rx_attention = type { i32 }
%struct.rx_frag_info = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.rx_mpdu_start = type { i32, %union.anon.165 }
%union.anon.165 = type { %struct.anon.166 }
%struct.anon.166 = type { i32, i32 }
%struct.rx_msdu_start = type { %struct.rx_msdu_start_common, %union.anon.168 }
%struct.rx_msdu_start_common = type { i32, i32, i32 }
%union.anon.168 = type { %struct.rx_msdu_start_wcn3990 }
%struct.rx_msdu_start_wcn3990 = type { i32, i32 }
%struct.rx_msdu_end = type { %struct.rx_msdu_end_common, %union.anon.169 }
%struct.rx_msdu_end_common = type { i16, i16, i8, i8, [10 x i8], i32 }
%union.anon.169 = type { %struct.rx_msdu_end_wcn3990 }
%struct.rx_msdu_end_wcn3990 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rx_mpdu_end = type { i32 }
%struct.rx_ppdu_start = type <{ [4 x %struct.anon.170], i8, i16, i8, i32, i32, i32, i32, i32 }>
%struct.anon.170 = type { i8, i8, i8, i8 }
%struct.rx_ppdu_end = type { %struct.rx_ppdu_end_common, %union.anon.171 }
%struct.rx_ppdu_end_common = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.171 = type { %struct.rx_ppdu_end_qca9984, [36 x i8] }
%struct.rx_ppdu_end_qca9984 = type { %struct.rx_pkt_end, %struct.rx_location_info, %struct.rx_phy_ppdu_end, i32, i32, i16, i16 }
%struct.rx_pkt_end = type { i32, i32, i32 }
%struct.rx_location_info = type { i32, i32 }
%struct.rx_phy_ppdu_end = type { i32, i32 }
%struct.page = type { i32, %union.anon.17, %union.anon.86, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.86 = type { %struct.atomic_t }
%struct.ath10k_skb_rxcb = type { i32, %struct.hlist_node, i8 }
%struct.htt_peer_map_event = type { i8, i16, [6 x i8] }
%struct.htt_peer_unmap_event = type { i16 }
%struct.htt_resp = type <{ %struct.htt_resp_hdr, %union.anon.172 }>
%struct.htt_resp_hdr = type { i8 }
%union.anon.172 = type { %struct.htt_rx_flush, [44 x i8] }
%struct.htt_rx_flush = type { i16, i8, i8, i8, i8, i8 }
%struct.htt_ver_resp = type { i8, i8, i8 }
%struct.htt_rx_peer_map = type <{ i8, i16, [6 x i8], i8, i8 }>
%struct.htt_rx_peer_unmap = type <{ i8, i16 }>
%struct.htt_mgmt_tx_completion = type <{ i8, i8, i8, i32, i32, i32, i32 }>
%struct.htt_security_indication = type <{ %union.anon.178, i16, [8 x i8], [16 x i8] }>
%union.anon.178 = type { i8 }
%struct.ath10k_peer = type { %struct.list_head, ptr, ptr, i8, i32, [6 x i8], [64 x i32], [4 x ptr], [19 x %union.htt_rx_pn_t], [19 x i8], [19 x %union.htt_rx_pn_t], [19 x i32], [2 x %struct.anon.192] }
%union.htt_rx_pn_t = type { [2 x i64] }
%struct.anon.192 = type { i32, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.htt_peer_tx_stats = type { i8, i8, i8, [0 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.htt_per_peer_tx_stats_ind = type { i32, i32, i32, i8, i8, i16, i16, i16, i16, i16, i32, i32 }
%struct.htt_rx_indication_hdr = type <{ i8, i16, i32 }>
%struct.htt_rx_indication = type <{ %struct.htt_rx_indication_hdr, %struct.htt_rx_indication_ppdu, %struct.htt_rx_indication_prefix, %struct.fw_rx_desc_base, [0 x %struct.htt_rx_indication_mpdu_range] }>
%struct.htt_rx_indication_ppdu = type { i8, i8, i8, i8, [4 x %struct.anon.175], i32, i32, i32, i32 }
%struct.anon.175 = type { i8, i8, i8, i8 }
%struct.htt_rx_indication_prefix = type { i16, i8, i8 }
%struct.fw_rx_desc_base = type { i8 }
%struct.htt_rx_indication_mpdu_range = type { i8, i8, i8, i8 }
%struct.htt_data_tx_completion = type <{ %union.anon.173, i8, i8, [0 x i16] }>
%union.anon.173 = type { i8 }
%struct.ath10k_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.htt_data_tx_compl_ppdu_dur = type { i32, [0 x %struct.htt_data_tx_ppdu_dur] }
%struct.htt_data_tx_ppdu_dur = type { i32, i32 }
%struct.htt_rx_addba = type <{ i8, i16 }>
%struct.ath10k_vif = type { %struct.list_head, i32, i16, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i8, i8, i8, i8, i32, [6 x i8], [4 x ptr], i8, i16, %union.anon.189, i8, i8, i32, i32, i8, %struct.wmi_wmm_params_all_arg, %struct.work_struct, %struct.delayed_work, %struct.cfg80211_bitrate_mask, i32, i8, [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i8], [8 x i32], [8 x i32], i32 }
%union.anon.189 = type { %struct.anon.191 }
%struct.anon.191 = type { [64 x i8], i8, i32, [32 x i8], i8, i32, ptr }
%struct.wmi_wmm_params_all_arg = type { %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg }
%struct.wmi_wmm_params_arg = type { i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.131] }
%struct.anon.131 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.htt_rx_delba = type <{ i8, i16 }>
%struct.ath10k_pktlog_hdr = type { i16, i16, i16, i16, i32, [0 x i8] }
%struct.ath10k_10_2_peer_tx_stats = type <{ [4 x i8], [4 x i8], [4 x i16], [4 x i8], [4 x i16], [4 x i8], [4 x i16], [4 x i8], i32, i8, i8 }>
%struct.htt_tx_fetch_confirm = type <{ i8, i16, [0 x i32] }>
%struct.htt_tx_mode_switch_ind = type <{ i8, i16, i16, [2 x i8], [0 x %struct.htt_tx_mode_switch_record] }>
%struct.htt_tx_mode_switch_record = type { i16, i16 }
%struct.ieee80211_txq = type { ptr, ptr, i8, i8, [2 x i8], [0 x i8] }
%struct.htt_rx_indication_hl = type <{ %struct.htt_rx_indication_hdr, %struct.htt_rx_indication_ppdu, %struct.htt_rx_indication_prefix, %struct.fw_rx_desc_hl, [0 x %struct.htt_rx_indication_mpdu_range] }>
%struct.fw_rx_desc_hl = type { %union.anon.176, i8, i8, i8 }
%union.anon.176 = type { %struct.anon.177 }
%struct.anon.177 = type { i8 }
%struct.htt_hl_rx_desc = type { i32, i32, %union.anon.205, i32, i32 }
%union.anon.205 = type { i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.sk_buff_list = type { ptr, ptr }
%struct.htt_rx_in_ord_ind = type <{ i8, i16, i8, i8, i16, %union.anon.180 }>
%union.anon.180 = type { [0 x %struct.htt_rx_in_ord_msdu_desc] }
%struct.htt_rx_in_ord_msdu_desc = type { i32, i16, i8, i8 }
%struct.htt_rx_in_ord_msdu_desc_ext = type <{ i64, i16, i8, i8 }>
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.htt_rx_offload_msdu = type <{ i16, i16, i8, i8, i8, [0 x i8] }>
%struct.htt_tx_fetch_ind = type <{ i8, i16, i32, i16, i16, %union.anon.181 }>
%union.anon.181 = type { %struct.anon.182 }
%struct.anon.182 = type { %struct.anon.183, [0 x i32] }
%struct.anon.183 = type {}
%struct.htt_tx_fetch_record = type { i16, i16, i32 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ath10k_sta = type { ptr, i32, i32, i32, i32, i16, %struct.rate_info, %struct.ieee80211_tx_info, i32, i32, i32, i32, i32, i32, i32, %struct.work_struct, i64, ptr, i32, i8, [17 x %struct.ath10k_sta_tid_stats], i32, %struct.work_struct, [8 x i32], [8 x i32], [8 x i32], [8 x i8], [8 x i32], [8 x i32] }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.ieee80211_tx_info = type { i32, i32, %union.anon.198 }
%union.anon.198 = type { %struct.anon.202, [32 x i8] }
%struct.anon.202 = type { i64 }
%struct.ath10k_sta_tid_stats = type { i32, i32, i32, i32, [4 x i32], i32, [7 x i32], [5 x i32] }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.130, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.130 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ath10k_htt_data_stats = type { [2 x [12 x i64]], [2 x [32 x i64]], [2 x [10 x i64]], [2 x [6 x i64]], [2 x [4 x i64]], [2 x [2 x i64]], [2 x [320 x i64]] }
%struct.ath10k_htt_tx_stats = type { [4 x %struct.ath10k_htt_data_stats], i64, i64, i64 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.htt_rx_fragment_indication = type <{ %union.anon.161, i16, i32, i16, i16, [0 x i8] }>
%union.anon.161 = type { i8 }

@ath10k_htt_rx_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"(timer)\00", [24 x i8] zeroinitializer }, align 32
@ath10k_htt_rx_alloc.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&htt->rx_ring.lock\00", [45 x i8] zeroinitializer }, align 32
@ath10k_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"htt rx ring size %d fill_level %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unaligned htt message, expect trouble\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"htt rx, msg_type: 0x%0X\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"htt rx, unsupported msg_type: 0x%0X\0A max: 0x%0X\00", [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"sec ind peer_id %d unicast %d type %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"htt event: \00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"received an unexpected htt tx inspect event\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"htt credit update delta %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"htt credit total %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"htt chan change freq %u phymode %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to copy htt tx fetch ind\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"htt event (%d) not handled\0A\00", [36 x i8] zeroinitializer }, align 32
@__kstrtab_ath10k_htt_t2h_msg_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath10k_htt_t2h_msg_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_ath10k_htt_t2h_msg_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath10k_htt_t2h_msg_handler to i32), ptr @__kstrtab_ath10k_htt_t2h_msg_handler, ptr @__kstrtabns_ath10k_htt_t2h_msg_handler }, section "___ksymtab+ath10k_htt_t2h_msg_handler", align 4
@__kstrtab_ath10k_htt_rx_pktlog_completion_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath10k_htt_rx_pktlog_completion_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_ath10k_htt_rx_pktlog_completion_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath10k_htt_rx_pktlog_completion_handler to i32), ptr @__kstrtab_ath10k_htt_rx_pktlog_completion_handler, ptr @__kstrtabns_ath10k_htt_rx_pktlog_completion_handler }, section "___ksymtab+ath10k_htt_rx_pktlog_completion_handler", align 4
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rx indication poll pending count:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@__kstrtab_ath10k_htt_rx_hl_indication = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath10k_htt_rx_hl_indication = external dso_local constant [0 x i8], align 1
@__ksymtab_ath10k_htt_rx_hl_indication = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath10k_htt_rx_hl_indication to i32), ptr @__kstrtab_ath10k_htt_rx_hl_indication, ptr @__kstrtabns_ath10k_htt_rx_hl_indication }, section "___ksymtab+ath10k_htt_rx_hl_indication", align 4
@__kstrtab_ath10k_htt_txrx_compl_task = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath10k_htt_txrx_compl_task = external dso_local constant [0 x i8], align 1
@__ksymtab_ath10k_htt_txrx_compl_task = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath10k_htt_txrx_compl_task to i32), ptr @__kstrtab_ath10k_htt_txrx_compl_task, ptr @__kstrtabns_ath10k_htt_txrx_compl_task }, section "___ksymtab+ath10k_htt_txrx_compl_task", align 4
@htt_rx_ops_hl = internal constant { %struct.ath10k_htt_rx_ops, [40 x i8] } { %struct.ath10k_htt_rx_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ath10k_htt_rx_proc_rx_frag_ind_hl }, [40 x i8] zeroinitializer }, align 32
@htt_rx_ops_64 = internal constant { %struct.ath10k_htt_rx_ops, [40 x i8] } { %struct.ath10k_htt_rx_ops { ptr @ath10k_htt_get_rx_ring_size_64, ptr @ath10k_htt_config_paddrs_ring_64, ptr @ath10k_htt_set_paddrs_ring_64, ptr @ath10k_htt_get_vaddr_ring_64, ptr @ath10k_htt_reset_paddrs_ring_64, ptr null }, [40 x i8] zeroinitializer }, align 32
@htt_rx_ops_32 = internal constant { %struct.ath10k_htt_rx_ops, [40 x i8] } { %struct.ath10k_htt_rx_ops { ptr @ath10k_htt_get_rx_ring_size_32, ptr @ath10k_htt_config_paddrs_ring_32, ptr @ath10k_htt_set_paddrs_ring_32, ptr @ath10k_htt_get_vaddr_ring_32, ptr @ath10k_htt_reset_paddrs_ring_32, ptr null }, [40 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireless/ath/ath10k/htt_rx.c\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"rx ring index is not valid, firmware malfunctioning?\0A\00", [42 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@__tracepoint_ath10k_log_dbg = external dso_local global %struct.tracepoint, align 4
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"htt rx ind: \00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unhandled tx completion status %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"htt tx completion num_msdus %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"txdone fifo overrun, msdu_id %d status %d\0A\00", [53 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to find peer id %d for security indication\00", [46 x i8] zeroinitializer }, align 32
@__tracepoint_ath10k_htt_stats = external dso_local global %struct.tracepoint, align 4
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/ath/ath10k/trace.h\00", [56 x i8] zeroinitializer }, align 32
@trace_ath10k_htt_stats.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"htt rx addba tid %u peer_id %u size %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"received addba event for invalid peer_id: %u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"received addba event for invalid vdev_id: %u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"htt rx start rx ba session sta %pM tid %u size %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"htt rx delba tid %u peer_id %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"htt rx stop rx ba session sta %pM tid %u\0A\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_ath10k_htt_pktlog = external dso_local global %struct.tracepoint, align 4
@trace_ath10k_htt_pktlog.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Invalid peer id %d in peer stats buffer\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid VHT mcs %d peer stats\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid HT mcs %d nss %d peer stats\00", [60 x i8] zeroinitializer }, align 32
@ath10k_update_per_peer_tx_stats.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tx failed %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"htt tx retries %d\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid legacy rate %d peer stats\00", [62 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"11a\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"11g\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"11b\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"11gonly\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"11na-ht20\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"11ng-ht20\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"11na-ht40\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"11ng-ht40\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"11ac-vht20\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"11ac-vht40\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"11ac-vht80\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"11ac-vht160\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"11ac-vht80+80\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"11ac-vht20-2g\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"11ac-vht40-2g\00", [18 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"11ac-vht80-2g\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<unknown>\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"htt rx tx fetch confirm\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"received corrupted tx_fetch_confirm event: buffer too short\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"received corrupted tx_fetch_confirm event: resp_ids buffer overflow\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"htt rx tx fetch confirm num_resp_ids %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"htt rx tx fetch confirm resp_id %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"htt rx tx mode switch ind\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"received corrupted tx_mode_switch_ind event: buffer too short\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"htt rx tx mode switch ind info0 0x%04hx info1 0x%04x enable %d num records %zd mode %d threshold %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"received corrupted tx_mode_switch_mode_ind event: too many records\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"received invalid tx_mode_switch_mode_ind mode %d, ignoring\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"received out of range peer_id %u tid %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to lookup txq for peer_id %u tid %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid peer stats buf length %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Invalid peer id %d peer stats buffer\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Got RX ind from invalid peer: %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"htt discard mpdu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Unsupported number of MPDU ranges: %d, ignoring all but the first\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"htt mpdu_range_status %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [140 x i8], [52 x i8] } { [140 x i8] c"rx skb %pK len %u peer %pM %s %s sn %u %s%s%s%s%s%s %srate_idx %u vht_nss %u freq %u band %u flag 0x%x fcs-err %i mic-err %i amsdu-more %i\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mcast\00", [26 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ucast\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"legacy\00", [25 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.86 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ht\00", [29 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vht\00", [28 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"40\00", [29 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"80\00", [29 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"160\00", [28 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sgi \00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rx skb: \00", [23 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tid %d (%s)\00", [20 x i8] zeroinitializer }, align 32
@tid_to_ac = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.95, ptr @.str.96, ptr @.str.96, ptr @.str.95, ptr @.str.97, ptr @.str.97, ptr @.str.98, ptr @.str.98], [32 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tid %d\00", [25 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BE\00", [29 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BK\00", [29 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VI\00", [29 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VO\00", [29 x i8] zeroinitializer }, align 32
@__tracepoint_ath10k_rx_hdr = external dso_local global %struct.tracepoint, align 4
@trace_ath10k_rx_hdr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ath10k_rx_payload = external dso_local global %struct.tracepoint, align 4
@trace_ath10k_rx_payload.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.99 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"htt rx in ord vdev %i peer %i tid %i offload %i frag %i msdu count %i\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"dropping invalid in order rx indication\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to pop paddr list: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to extract amsdu: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"tried to pop an incomplete frame, oops!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"htt rx netbuf pop: \00", [44 x i8] zeroinitializer }, align 32
@ath10k_htt_rx_find_skb_paddr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.105 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid amsdu len %u, left %d\00", [34 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to pop frag-1 paddr: 0x%llx\00", [61 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to pop frag-n paddr: 0x%llx\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_ath10k_htt_rx_desc = external dso_local global %struct.tracepoint, align 4
@trace_ath10k_htt_rx_desc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.108 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to pop frag-1 paddr: 0x%x\00", [63 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to pop frag-n paddr: 0x%x\00", [63 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"dropping frame: offloaded rx msdu is too long!\0A\00", [48 x i8] zeroinitializer }, align 32
@ath10k_htt_rx_h_peer_channel.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.111 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid MCS received %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"rxd %08x mpdu start %08x %08x msdu start %08x %08x ppdu start %08x %08x %08x %08x %08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"msdu end %08x mpdu end %08x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rx desc msdu payload: \00", [41 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"no channel configured; ignoring frame(s)!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"htt rx cac running\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid amsdu received\0A\00", [40 x i8] zeroinitializer }, align 32
@rfc1042_header = external dso_local local_unnamed_addr constant [6 x i8], align 1
@.str.118 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unsupported encryption type %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid peer for frag pn check\0A\00", [32 x i8] zeroinitializer }, align 32
@ath10k_htt_rx_h_undecap_raw.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ath10k_htt_rx_h_undecap_raw.__already_done.120 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ath10k_htt_rx_h_undecap_eth.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.121 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rx ring became corrupted: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"tried to pop sk_buff from an empty rx ring\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"htt rx tx fetch ind\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"received corrupted tx_fetch_ind event: buffer too short\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"received corrupted tx_fetch_ind event: too many records/resp_ids\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"htt rx tx fetch ind num records %u num resps %u seq %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"received unexpected tx_fetch_ind event: not enabled\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"received unexpected tx_fetch_ind event: in push mode\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"htt rx tx fetch record %i peer_id %u tid %u msdus %zu bytes %zu\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"failed to submit tx fetch resp for token 0x%08x: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.131 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"invalid peer: %u\0A\00", [46 x i8] zeroinitializer }, align 32
@switch.table.ath10k_htt_rx_tx_compl_ind = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 1, i16 3, i16 2, i16 3], [24 x i8] zeroinitializer }, align 32
@switch.table.ath10k_wmi_phymode_str = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.58, ptr @.str.57], [32 x i8] zeroinitializer }, align 32
@switch.table.ath10k_htt_rx_h_mpdu = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 0, i32 0, i32 0, i32 -16, i32 0, i32 -16, i32 -8, i32 -16, i32 -16, i32 -16, i32 -16], [52 x i8] zeroinitializer }, align 32
@switch.table.ath10k_htt_rx_h_mpdu.132 = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 -4, i32 -4, i32 -4, i32 0, i32 -4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [52 x i8] zeroinitializer }, align 32
@switch.table.ath10k_htt_rx_h_mpdu.133 = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 4, i32 4, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 8, i32 8], [52 x i8] zeroinitializer }, align 32
@switch.table.ath10k_htt_rx_h_mpdu.134 = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 3, i32 3, i32 7, i32 -1, i32 7, i32 -1, i32 7, i32 -1, i32 7, i32 7, i32 7], [52 x i8] zeroinitializer }, align 32
@switch.table.ath10k_htt_rx_amsdu_allowed = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 4, i32 4, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 8, i32 8], [52 x i8] zeroinitializer }, align 32
@switch.table.ath10k_htt_rx_crypto_param_len = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 4, i32 4, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 8, i32 8], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [25 x i64] [i64 23, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 13, i64 14, i64 15, i64 18, i64 20, i64 22, i64 24, i64 26, i64 27, i64 28, i64 29]
@__sancov_gen_cov_switch_values.135 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 9]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 32, i64 24, i64 48]
@__sancov_gen_cov_switch_values.138 = internal global [14 x i64] [i64 12, i64 6, i64 1, i64 2, i64 5, i64 6, i64 9, i64 11, i64 12, i64 18, i64 24, i64 36, i64 48, i64 54]
@__sancov_gen_cov_switch_values.139 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 4]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 32, i64 24, i64 48]
@__sancov_gen_cov_switch_values.142 = internal global [7 x i64] [i64 5, i64 8, i64 4, i64 8, i64 9, i64 12, i64 13]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 63]
@__sancov_gen_cov_switch_values.144 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.145 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 4, i64 6, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.146 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 4, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.147 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 4, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.148 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 4, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.149 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 4, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.150 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 4, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.151 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 4, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.152 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 4, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 24, i64 48]
@__sancov_gen_cov_switch_values.154 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 804, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 806, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 817, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3949, i32 19 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3951, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3955, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 4044, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 4053, i32 50 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 4072, i32 19 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 4112, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 4120, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 4132, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 4143, i32 20 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 4160, i32 19 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 4220, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant [14 x i8] c"htt_rx_ops_hl\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 4326, i32 39 }
@___asan_gen_.209 = private unnamed_addr constant [14 x i8] c"htt_rx_ops_64\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 4318, i32 39 }
@___asan_gen_.212 = private unnamed_addr constant [14 x i8] c"htt_rx_ops_32\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 4310, i32 39 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 208, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 147, i32 23 }
@___asan_gen_.225 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 326, i32 6 }
@___asan_gen_.227 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1984, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2813, i32 49 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2854, i32 19 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2859, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2899, i32 20 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 695, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 723, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3919, i32 19 }
@___asan_gen_.261 = private unnamed_addr constant [43 x i8] c"../drivers/net/wireless/ath/ath10k/trace.h\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 207, i32 1 }
@___asan_gen_.264 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 108, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2962, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2969, i32 19 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2977, i32 19 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2983, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3002, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3023, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3865, i32 19 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3684, i32 19 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3690, i32 19 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3772, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3777, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3530, i32 18 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 1998, i32 10 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2000, i32 10 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2002, i32 10 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2004, i32 10 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2006, i32 10 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2008, i32 10 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2010, i32 10 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2012, i32 10 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2014, i32 10 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2016, i32 10 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2018, i32 10 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2020, i32 10 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2022, i32 10 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2024, i32 10 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2026, i32 10 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2028, i32 10 }
@___asan_gen_.351 = private unnamed_addr constant [41 x i8] c"../drivers/net/wireless/ath/ath10k/wmi.h\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 2038, i32 9 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3385, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3389, i32 19 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3397, i32 19 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3232, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3238, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3424, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3428, i32 19 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3440, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3447, i32 19 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3456, i32 19 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3478, i32 20 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3492, i32 20 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3799, i32 19 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3811, i32 19 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2365, i32 19 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2377, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2387, i32 8 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2394, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1309, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1332, i32 49 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1275, i32 23 }
@___asan_gen_.446 = private unnamed_addr constant [10 x i8] c"tid_to_ac\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1253, i32 27 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1277, i32 23 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1254, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1255, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1258, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1260, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3163, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3168, i32 19 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3184, i32 19 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3216, i32 20 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 741, i32 26 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 463, i32 49 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 578, i32 20 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 589, i32 19 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 604, i32 20 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 513, i32 19 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 528, i32 20 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3102, i32 20 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1023, i32 20 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1024, i32 20 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1036, i32 20 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1041, i32 6 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2166, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2171, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2176, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 856, i32 18 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 1795, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2224, i32 19 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 317, i32 19 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3265, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3269, i32 19 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3280, i32 19 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3284, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3289, i32 19 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3294, i32 19 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3309, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 3370, i32 19 }
@___asan_gen_.557 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.558 = private constant [44 x i8] c"../drivers/net/wireless/ath/ath10k/htt_rx.c\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 2668, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant [40 x i8] c"switch.table.ath10k_htt_rx_tx_compl_ind\00", align 1
@___asan_gen_.561 = private unnamed_addr constant [36 x i8] c"switch.table.ath10k_wmi_phymode_str\00", align 1
@___asan_gen_.562 = private unnamed_addr constant [34 x i8] c"switch.table.ath10k_htt_rx_h_mpdu\00", align 1
@___asan_gen_.563 = private unnamed_addr constant [38 x i8] c"switch.table.ath10k_htt_rx_h_mpdu.132\00", align 1
@___asan_gen_.564 = private unnamed_addr constant [38 x i8] c"switch.table.ath10k_htt_rx_h_mpdu.133\00", align 1
@___asan_gen_.565 = private unnamed_addr constant [38 x i8] c"switch.table.ath10k_htt_rx_h_mpdu.134\00", align 1
@___asan_gen_.566 = private unnamed_addr constant [41 x i8] c"switch.table.ath10k_htt_rx_amsdu_allowed\00", align 1
@___asan_gen_.567 = private unnamed_addr constant [44 x i8] c"switch.table.ath10k_htt_rx_crypto_param_len\00", align 1
@llvm.compiler.used = appending global [147 x ptr] [ptr @__ksymtab_ath10k_htt_rx_hl_indication, ptr @__ksymtab_ath10k_htt_rx_pktlog_completion_handler, ptr @__ksymtab_ath10k_htt_t2h_msg_handler, ptr @__ksymtab_ath10k_htt_txrx_compl_task, ptr @ath10k_htt_rx_alloc.__key, ptr @.str.1, ptr @ath10k_htt_rx_alloc.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @htt_rx_ops_hl, ptr @htt_rx_ops_64, ptr @htt_rx_ops_32, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @skb_queue_head_init.__key, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @tid_to_ac, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @switch.table.ath10k_htt_rx_tx_compl_ind, ptr @switch.table.ath10k_wmi_phymode_str, ptr @switch.table.ath10k_htt_rx_h_mpdu, ptr @switch.table.ath10k_htt_rx_h_mpdu.132, ptr @switch.table.ath10k_htt_rx_h_mpdu.133, ptr @switch.table.ath10k_htt_rx_h_mpdu.134, ptr @switch.table.ath10k_htt_rx_amsdu_allowed, ptr @switch.table.ath10k_htt_rx_crypto_param_len], section "llvm.metadata"
@0 = internal global [143 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_htt_rx_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_htt_rx_alloc.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htt_rx_ops_hl to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htt_rx_ops_64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @htt_rx_ops_32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tid_to_ac to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath10k_htt_rx_tx_compl_ind to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath10k_wmi_phymode_str to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath10k_htt_rx_h_mpdu to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath10k_htt_rx_h_mpdu.132 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath10k_htt_rx_h_mpdu.133 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath10k_htt_rx_h_mpdu.134 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath10k_htt_rx_amsdu_allowed to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath10k_htt_rx_crypto_param_len to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_htt_rx_ring_refill(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %htt1 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44
  %dev_type = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 136, i32 1
  %0 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 10, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #16
  %fill_level = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 10, i32 7
  %2 = ptrtoint ptr %fill_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fill_level, align 8
  %fill_cnt = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 10, i32 8
  %4 = ptrtoint ptr %fill_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fill_cnt, align 4
  %sub = sub i32 %3, %5
  %call = tail call fastcc i32 @ath10k_htt_rx_ring_fill_n(ptr noundef %htt1, i32 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @ath10k_htt_rx_ring_free(ptr noundef %htt1)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end5 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_htt_rx_ring_fill_n(ptr noundef %htt, i32 noundef %num) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 12, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !308

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 208, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %rx_ring.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10
  %alloc_idx.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 9
  %1 = ptrtoint ptr %alloc_idx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %alloc_idx.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp slt i32 %5, 0
  br i1 %cmp.i, label %if.end.if.then.i_crit_edge, label %lor.lhs.false.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end
  %size.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 5
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp2.not.i = icmp slt i32 %5, %7
  br i1 %cmp2.not.i, label %while.cond.preheader.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

while.cond.preheader.i:                           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp492.i = icmp sgt i32 %num, 0
  br i1 %cmp492.i, label %while.body.lr.ph.i, label %while.cond.preheader.i.__ath10k_htt_rx_ring_fill_n.exit_crit_edge

while.cond.preheader.i.__ath10k_htt_rx_ring_fill_n.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__ath10k_htt_rx_ring_fill_n.exit

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %rx_ops.i.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 30
  %fill_cnt.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 8
  %in_ord_rx.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 1
  %size_mask43.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 6
  br label %while.body.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %8 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %htt, align 8
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %9, ptr noundef nonnull @.str.18) #16
  %size_mask.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 6
  %10 = ptrtoint ptr %size_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size_mask.i, align 4
  %and.i = and i32 %11, %5
  br label %__ath10k_htt_rx_ring_fill_n.exit

while.body.i:                                     ; preds = %if.end40.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %idx.094.i = phi i32 [ %5, %while.body.lr.ph.i ], [ %and44.i, %if.end40.i.while.body.i_crit_edge ]
  %num.addr.093.i = phi i32 [ %num, %while.body.lr.ph.i ], [ %dec.i, %if.end40.i.while.body.i_crit_edge ]
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2056, i32 noundef 2592) #16
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %while.body.i.__ath10k_htt_rx_ring_fill_n.exit_crit_edge, label %if.end6.i

while.body.i.__ath10k_htt_rx_ring_fill_n.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__ath10k_htt_rx_ring_fill_n.exit

if.end6.i:                                        ; preds = %while.body.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %14 = ptrtoint ptr %13 to i32
  %and7.i = and i32 %14, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %cmp8.i = icmp eq i32 %and7.i, 0
  br i1 %cmp8.i, label %if.end6.i.if.end14.i_crit_edge, label %if.then9.i

if.end6.i.if.end14.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.i = add i32 %14, 7
  %and11.i = and i32 %add.i, -8
  %sub.ptr.sub.i = sub i32 %and11.i, %14
  %call13.i = tail call ptr @skb_pull(ptr noundef nonnull %call.i.i.i, i32 noundef %sub.ptr.sub.i) #16
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end14.i_crit_edge
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %17 = getelementptr inbounds %struct.htt_rx_desc, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 0, ptr %17, align 1
  %19 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %htt, align 8
  %dev.i = getelementptr inbounds %struct.ath10k, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %23 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %24 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 7
  %26 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool.i.not.i.i, label %cond.false.i.i, label %if.end14.i.skb_tailroom.exit.i_crit_edge

if.end14.i.skb_tailroom.exit.i_crit_edge:         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_tailroom.exit.i

cond.false.i.i:                                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #18
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 17
  %28 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %30 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %29 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %skb_tailroom.exit.i

skb_tailroom.exit.i:                              ; preds = %cond.false.i.i, %if.end14.i.skb_tailroom.exit.i_crit_edge
  %cond.i.i = phi i32 [ %sub.ptr.sub.i.i, %cond.false.i.i ], [ 0, %if.end14.i.skb_tailroom.exit.i_crit_edge ]
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %23) #16
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %skb_tailroom.exit.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !309

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %22) #16
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 3
  %32 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %22, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %35, %if.end.i.i.i ], [ %33, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #16
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %add19.i = add i32 %cond.i.i, %25
  tail call void @debug_dma_map_single(ptr noundef %22, ptr noundef %23, i32 noundef %add19.i) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %36 = load ptr, ptr @mem_map, align 4
  %37 = ptrtoint ptr %23 to i32
  %sub.i.i = add i32 %37, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %36, i32 %shr.i.i
  %and.i.i = and i32 %37, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %22, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %add19.i, i32 noundef 2, i32 noundef 0) #16
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %38 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %htt, align 8
  %dev22.i = getelementptr inbounds %struct.ath10k, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %dev22.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev22.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %41, i32 noundef %retval.0.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %if.then27.i, label %if.end28.i

if.then27.i:                                      ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i.i, i32 noundef 1) #16
  br label %__ath10k_htt_rx_ring_fill_n.exit

if.end28.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %42 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %retval.0.i.i, ptr %cb.i.i, align 4
  %43 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx_ring.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %44, i32 %idx.094.i
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i.i.i, ptr %arrayidx.i, align 4
  %46 = ptrtoint ptr %rx_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx_ops.i.i, align 4
  %htt_set_paddrs_ring.i.i = getelementptr inbounds %struct.ath10k_htt_rx_ops, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %htt_set_paddrs_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %htt_set_paddrs_ring.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %49, null
  br i1 %tobool.not.i.i, label %if.end28.i.ath10k_htt_set_paddrs_ring.exit.i_crit_edge, label %if.then.i86.i

if.end28.i.ath10k_htt_set_paddrs_ring.exit.i_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_set_paddrs_ring.exit.i

if.then.i86.i:                                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %49(ptr noundef %htt, i32 noundef %retval.0.i.i, i32 noundef %idx.094.i) #16
  br label %ath10k_htt_set_paddrs_ring.exit.i

ath10k_htt_set_paddrs_ring.exit.i:                ; preds = %if.then.i86.i, %if.end28.i.ath10k_htt_set_paddrs_ring.exit.i_crit_edge
  %50 = ptrtoint ptr %fill_cnt.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fill_cnt.i, align 4
  %inc.i = add i32 %51, 1
  store i32 %inc.i, ptr %fill_cnt.i, align 4
  %52 = ptrtoint ptr %in_ord_rx.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %in_ord_rx.i, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool34.not.i = icmp eq i8 %53, 0
  br i1 %tobool34.not.i, label %ath10k_htt_set_paddrs_ring.exit.i.if.end40.i_crit_edge, label %if.then35.i

ath10k_htt_set_paddrs_ring.exit.i.if.end40.i_crit_edge: ; preds = %ath10k_htt_set_paddrs_ring.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40.i

if.then35.i:                                      ; preds = %ath10k_htt_set_paddrs_ring.exit.i
  %hlist.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 4
  %mul.i.i.i = mul i32 %retval.0.i.i, 1640531527
  %shr.i88.i = lshr i32 %mul.i.i.i, 28
  %arrayidx39.i = getelementptr %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 2, i32 %shr.i88.i
  %54 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx39.i, align 4
  %56 = ptrtoint ptr %hlist.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %55, ptr %hlist.i, align 4
  %tobool.not.i89.i = icmp eq ptr %55, null
  br i1 %tobool.not.i89.i, label %if.then35.i.hlist_add_head.exit.i_crit_edge, label %do.body12.i.i

if.then35.i.hlist_add_head.exit.i_crit_edge:      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %hlist_add_head.exit.i

do.body12.i.i:                                    ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #18
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %55, i32 0, i32 1
  %57 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %hlist.i, ptr %pprev.i.i, align 4
  br label %hlist_add_head.exit.i

hlist_add_head.exit.i:                            ; preds = %do.body12.i.i, %if.then35.i.hlist_add_head.exit.i_crit_edge
  %58 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %hlist.i, ptr %arrayidx39.i, align 4
  %pprev34.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 8
  %59 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %arrayidx39.i, ptr %pprev34.i.i, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %hlist_add_head.exit.i, %ath10k_htt_set_paddrs_ring.exit.i.if.end40.i_crit_edge
  %dec.i = add nsw i32 %num.addr.093.i, -1
  %inc41.i = add i32 %idx.094.i, 1
  %60 = ptrtoint ptr %size_mask43.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %size_mask43.i, align 4
  %and44.i = and i32 %61, %inc41.i
  %cmp4.i = icmp sgt i32 %num.addr.093.i, 1
  br i1 %cmp4.i, label %if.end40.i.while.body.i_crit_edge, label %if.end40.i.__ath10k_htt_rx_ring_fill_n.exit_crit_edge

if.end40.i.__ath10k_htt_rx_ring_fill_n.exit_crit_edge: ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__ath10k_htt_rx_ring_fill_n.exit

if.end40.i.while.body.i_crit_edge:                ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

__ath10k_htt_rx_ring_fill_n.exit:                 ; preds = %if.end40.i.__ath10k_htt_rx_ring_fill_n.exit_crit_edge, %if.then27.i, %while.body.i.__ath10k_htt_rx_ring_fill_n.exit_crit_edge, %if.then.i, %while.cond.preheader.i.__ath10k_htt_rx_ring_fill_n.exit_crit_edge
  %ret.0.i = phi i32 [ -12, %if.then.i ], [ -12, %if.then27.i ], [ 0, %while.cond.preheader.i.__ath10k_htt_rx_ring_fill_n.exit_crit_edge ], [ -12, %while.body.i.__ath10k_htt_rx_ring_fill_n.exit_crit_edge ], [ 0, %if.end40.i.__ath10k_htt_rx_ring_fill_n.exit_crit_edge ]
  %idx.1.i = phi i32 [ %and.i, %if.then.i ], [ %idx.094.i, %if.then27.i ], [ %5, %while.cond.preheader.i.__ath10k_htt_rx_ring_fill_n.exit_crit_edge ], [ %idx.094.i, %while.body.i.__ath10k_htt_rx_ring_fill_n.exit_crit_edge ], [ %and44.i, %if.end40.i.__ath10k_htt_rx_ring_fill_n.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !311
  tail call void @arm_heavy_mb() #16
  %62 = tail call i32 @llvm.bswap.i32(i32 %idx.1.i) #16
  %63 = ptrtoint ptr %alloc_idx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %alloc_idx.i, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %62, ptr %64, align 4
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_htt_rx_ring_free(ptr nocapture noundef %htt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ring = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10
  %in_ord_rx = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 1
  %0 = ptrtoint ptr %in_ord_rx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %in_ord_rx, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.cond28.preheader, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond28.preheader:                             ; preds = %entry
  %size = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 5
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp30102 = icmp sgt i32 %3, 0
  br i1 %cmp30102, label %for.cond28.preheader.for.body31_crit_edge, label %for.cond28.preheader.if.end46_crit_edge

for.cond28.preheader.if.end46_crit_edge:          ; preds = %for.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46

for.cond28.preheader.for.body31_crit_edge:        ; preds = %for.cond28.preheader
  br label %for.body31

for.body:                                         ; preds = %for.inc26.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0101 = phi i32 [ %inc, %for.inc26.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 2, i32 %i.0101
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %5, null
  %add.ptr = getelementptr i8, ptr %5, i32 -4
  %tobool6.not98105 = icmp eq ptr %add.ptr, null
  %tobool6.not98 = or i1 %tobool3.not, %tobool6.not98105
  br i1 %tobool6.not98, label %for.body.for.inc26_crit_edge, label %for.body.land.rhs7_crit_edge

for.body.land.rhs7_crit_edge:                     ; preds = %for.body
  br label %land.rhs7

for.body.for.inc26_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc26

land.rhs7:                                        ; preds = %hash_del.exit.land.rhs7_crit_edge, %for.body.land.rhs7_crit_edge
  %rxcb.199 = phi ptr [ %add.ptr22, %hash_del.exit.land.rhs7_crit_edge ], [ %add.ptr, %for.body.land.rhs7_crit_edge ]
  %hlist = getelementptr inbounds %struct.ath10k_skb_rxcb, ptr %rxcb.199, i32 0, i32 1
  %6 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hlist, align 4
  %add.ptr14 = getelementptr i8, ptr %rxcb.199, i32 -24
  %8 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %htt, align 8
  %dev = getelementptr inbounds %struct.ath10k, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = ptrtoint ptr %rxcb.199 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rxcb.199, align 4
  %len = getelementptr i8, ptr %rxcb.199, i32 60
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %data_len.i.i = getelementptr i8, ptr %rxcb.199, i32 64
  %16 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not.i = icmp eq i32 %17, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %land.rhs7.skb_tailroom.exit_crit_edge

land.rhs7.skb_tailroom.exit_crit_edge:            ; preds = %land.rhs7
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %land.rhs7
  call void @__sanitizer_cov_trace_pc() #18
  %end.i = getelementptr i8, ptr %rxcb.199, i32 148
  %18 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr i8, ptr %rxcb.199, i32 144
  %20 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %land.rhs7.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %land.rhs7.skb_tailroom.exit_crit_edge ]
  %add = add i32 %cond.i, %15
  tail call void @dma_unmap_page_attrs(ptr noundef %11, i32 noundef %13, i32 noundef %add, i32 noundef 2, i32 noundef 0) #16
  %pprev.i.i.i = getelementptr inbounds %struct.ath10k_skb_rxcb, ptr %rxcb.199, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.not.i.i, label %skb_tailroom.exit.hash_del.exit_crit_edge, label %if.then.i.i

skb_tailroom.exit.hash_del.exit_crit_edge:        ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %hash_del.exit

if.then.i.i:                                      ; preds = %skb_tailroom.exit
  %24 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hlist, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %25, ptr %23, align 4
  %tobool.not.i3.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %23, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %28 = ptrtoint ptr %hlist to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %hlist, align 4
  %29 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del.exit

hash_del.exit:                                    ; preds = %__hlist_del.exit.i.i, %skb_tailroom.exit.hash_del.exit_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %add.ptr14, i32 noundef 1) #16
  %tobool18.not = icmp eq ptr %7, null
  %add.ptr22 = getelementptr i8, ptr %7, i32 -4
  %tobool6.not107 = icmp eq ptr %add.ptr22, null
  %tobool6.not = or i1 %tobool18.not, %tobool6.not107
  br i1 %tobool6.not, label %hash_del.exit.for.inc26_crit_edge, label %hash_del.exit.land.rhs7_crit_edge

hash_del.exit.land.rhs7_crit_edge:                ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs7

hash_del.exit.for.inc26_crit_edge:                ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc26

for.inc26:                                        ; preds = %hash_del.exit.for.inc26_crit_edge, %for.body.for.inc26_crit_edge
  %inc = add nuw nsw i32 %i.0101, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc26.if.end46_crit_edge, label %for.inc26.for.body_crit_edge

for.inc26.for.body_crit_edge:                     ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc26.if.end46_crit_edge:                     ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46

for.body31:                                       ; preds = %for.inc43.for.body31_crit_edge, %for.cond28.preheader.for.body31_crit_edge
  %i.1103 = phi i32 [ %inc44, %for.inc43.for.body31_crit_edge ], [ 0, %for.cond28.preheader.for.body31_crit_edge ]
  %30 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rx_ring, align 8
  %arrayidx33 = getelementptr ptr, ptr %31, i32 %i.1103
  %32 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx33, align 4
  %tobool34.not = icmp eq ptr %33, null
  br i1 %tobool34.not, label %for.body31.for.inc43_crit_edge, label %if.end

for.body31.for.inc43_crit_edge:                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc43

if.end:                                           ; preds = %for.body31
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %htt, align 8
  %dev38 = getelementptr inbounds %struct.ath10k, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev38, align 4
  %38 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cb.i, align 4
  %len40 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 6
  %40 = ptrtoint ptr %len40 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len40, align 4
  %data_len.i.i85 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 7
  %42 = ptrtoint ptr %data_len.i.i85 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data_len.i.i85, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.i.not.i86 = icmp eq i32 %43, 0
  br i1 %tobool.i.not.i86, label %cond.false.i92, label %if.end.skb_tailroom.exit94_crit_edge

if.end.skb_tailroom.exit94_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_tailroom.exit94

cond.false.i92:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %end.i87 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 17
  %44 = ptrtoint ptr %end.i87 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %end.i87, align 4
  %tail.i88 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 16
  %46 = ptrtoint ptr %tail.i88 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tail.i88, align 8
  %sub.ptr.lhs.cast.i89 = ptrtoint ptr %45 to i32
  %sub.ptr.rhs.cast.i90 = ptrtoint ptr %47 to i32
  %sub.ptr.sub.i91 = sub i32 %sub.ptr.lhs.cast.i89, %sub.ptr.rhs.cast.i90
  br label %skb_tailroom.exit94

skb_tailroom.exit94:                              ; preds = %cond.false.i92, %if.end.skb_tailroom.exit94_crit_edge
  %cond.i93 = phi i32 [ %sub.ptr.sub.i91, %cond.false.i92 ], [ 0, %if.end.skb_tailroom.exit94_crit_edge ]
  %add42 = add i32 %cond.i93, %41
  tail call void @dma_unmap_page_attrs(ptr noundef %37, i32 noundef %39, i32 noundef %add42, i32 noundef 2, i32 noundef 0) #16
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %33, i32 noundef 1) #16
  br label %for.inc43

for.inc43:                                        ; preds = %skb_tailroom.exit94, %for.body31.for.inc43_crit_edge
  %inc44 = add nuw nsw i32 %i.1103, 1
  %48 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %size, align 8
  %cmp30 = icmp slt i32 %inc44, %49
  br i1 %cmp30, label %for.inc43.for.body31_crit_edge, label %for.inc43.if.end46_crit_edge

for.inc43.if.end46_crit_edge:                     ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46

for.inc43.for.body31_crit_edge:                   ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body31

if.end46:                                         ; preds = %for.inc43.if.end46_crit_edge, %for.inc26.if.end46_crit_edge, %for.cond28.preheader.if.end46_crit_edge
  %fill_cnt = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 8
  %50 = ptrtoint ptr %fill_cnt to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %fill_cnt, align 4
  %skb_table49 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 2
  %51 = call ptr @memset(ptr %skb_table49, i32 0, i32 64)
  %52 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rx_ring, align 8
  %size53 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 5
  %54 = ptrtoint ptr %size53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %size53, align 8
  %mul = shl i32 %55, 2
  %56 = call ptr @memset(ptr %53, i32 0, i32 %mul)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_htt_rx_free(ptr noundef %htt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  %rx_ring = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10
  %refill_retry_timer = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 11
  %call = tail call i32 @del_timer_sync(ptr noundef %refill_retry_timer) #16
  %rx_msdus_q = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 21
  tail call void @skb_queue_purge(ptr noundef %rx_msdus_q) #16
  %rx_in_ord_compl_q = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 22
  tail call void @skb_queue_purge(ptr noundef %rx_in_ord_compl_q) #16
  %tx_fetch_ind_q = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 23
  tail call void @skb_queue_purge(ptr noundef %tx_fetch_ind_q) #16
  %lock = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #16
  tail call fastcc void @ath10k_htt_rx_ring_free(ptr noundef %htt)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #16
  %4 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %htt, align 8
  %dev = getelementptr inbounds %struct.ath10k, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %rx_ops.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 30
  %8 = ptrtoint ptr %rx_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_ops.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.ath10k_htt_get_rx_ring_size.exit_crit_edge, label %if.end.i

if.end.ath10k_htt_get_rx_ring_size.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_get_rx_ring_size.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call i32 %11(ptr noundef %htt) #16
  br label %ath10k_htt_get_rx_ring_size.exit

ath10k_htt_get_rx_ring_size.exit:                 ; preds = %if.end.i, %if.end.ath10k_htt_get_rx_ring_size.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ 0, %if.end.ath10k_htt_get_rx_ring_size.exit_crit_edge ]
  %12 = ptrtoint ptr %rx_ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_ops.i, align 4
  %htt_get_vaddr_ring.i = getelementptr inbounds %struct.ath10k_htt_rx_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %htt_get_vaddr_ring.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %htt_get_vaddr_ring.i, align 4
  %tobool.not.i30 = icmp eq ptr %15, null
  br i1 %tobool.not.i30, label %ath10k_htt_get_rx_ring_size.exit.ath10k_htt_get_vaddr_ring.exit_crit_edge, label %if.end.i32

ath10k_htt_get_rx_ring_size.exit.ath10k_htt_get_vaddr_ring.exit_crit_edge: ; preds = %ath10k_htt_get_rx_ring_size.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_get_vaddr_ring.exit

if.end.i32:                                       ; preds = %ath10k_htt_get_rx_ring_size.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call.i31 = tail call ptr %15(ptr noundef %htt) #16
  br label %ath10k_htt_get_vaddr_ring.exit

ath10k_htt_get_vaddr_ring.exit:                   ; preds = %if.end.i32, %ath10k_htt_get_rx_ring_size.exit.ath10k_htt_get_vaddr_ring.exit_crit_edge
  %retval.0.i33 = phi ptr [ %call.i31, %if.end.i32 ], [ null, %ath10k_htt_get_rx_ring_size.exit.ath10k_htt_get_vaddr_ring.exit_crit_edge ]
  %base_paddr = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 4
  %16 = ptrtoint ptr %base_paddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base_paddr, align 4
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef %retval.0.i, ptr noundef %retval.0.i33, i32 noundef %17, i32 noundef 0) #16
  %18 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %htt, align 8
  %dev9 = getelementptr inbounds %struct.ath10k, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev9, align 4
  %alloc_idx = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 9
  %22 = ptrtoint ptr %alloc_idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %alloc_idx, align 8
  %paddr = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 9, i32 1
  %24 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %paddr, align 4
  tail call void @dma_free_attrs(ptr noundef %21, i32 noundef 4, ptr noundef %23, i32 noundef %25, i32 noundef 0) #16
  %26 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx_ring, align 8
  tail call void @kfree(ptr noundef %27) #16
  br label %return

return:                                           ; preds = %ath10k_htt_get_vaddr_ring.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_htt_rx_alloc(ptr noundef %htt) local_unnamed_addr #0 align 64 {
entry:
  %paddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr) #16
  %2 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %paddr, align 4, !annotation !312
  %rx_ring = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10
  %refill_retry_timer = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 11
  %dev_type = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 136, i32 1
  %3 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %kcalloc.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

kcalloc.exit:                                     ; preds = %entry
  %rx_confused = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 19
  %5 = ptrtoint ptr %rx_confused to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %rx_confused, align 8
  %size3 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 5
  %6 = ptrtoint ptr %size3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2048, ptr %size3, align 8
  %size_mask = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 6
  %7 = ptrtoint ptr %size_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2047, ptr %size_mask, align 4
  %rx_ring_fill_level = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 45, i32 30
  %8 = ptrtoint ptr %rx_ring_fill_level to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_ring_fill_level, align 8
  %fill_level = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 7
  %10 = ptrtoint ptr %fill_level to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %fill_level, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 8192) #19
  %12 = ptrtoint ptr %rx_ring to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i.i, ptr %rx_ring, align 8
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %kcalloc.exit.cleanup_crit_edge, label %if.end19

kcalloc.exit.cleanup_crit_edge:                   ; preds = %kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end19:                                         ; preds = %kcalloc.exit
  %rx_ops.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 30
  %13 = ptrtoint ptr %rx_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_ops.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end19.ath10k_htt_get_rx_ring_size.exit_crit_edge, label %if.end.i

if.end19.ath10k_htt_get_rx_ring_size.exit_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_get_rx_ring_size.exit

if.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call i32 %16(ptr noundef %htt) #16
  br label %ath10k_htt_get_rx_ring_size.exit

ath10k_htt_get_rx_ring_size.exit:                 ; preds = %if.end.i, %if.end19.ath10k_htt_get_rx_ring_size.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ 0, %if.end19.ath10k_htt_get_rx_ring_size.exit_crit_edge ]
  %17 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %htt, align 8
  %dev = getelementptr inbounds %struct.ath10k, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %call.i117 = call ptr @dma_alloc_attrs(ptr noundef %20, i32 noundef %retval.0.i, ptr noundef nonnull %paddr, i32 noundef 3264, i32 noundef 0) #16
  %tobool23.not = icmp eq ptr %call.i117, null
  br i1 %tobool23.not, label %ath10k_htt_get_rx_ring_size.exit.err_dma_ring_crit_edge, label %if.end25

ath10k_htt_get_rx_ring_size.exit.err_dma_ring_crit_edge: ; preds = %ath10k_htt_get_rx_ring_size.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_dma_ring

if.end25:                                         ; preds = %ath10k_htt_get_rx_ring_size.exit
  %21 = ptrtoint ptr %rx_ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_ops.i, align 4
  %htt_config_paddrs_ring.i = getelementptr inbounds %struct.ath10k_htt_rx_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %htt_config_paddrs_ring.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %htt_config_paddrs_ring.i, align 4
  %tobool.not.i119 = icmp eq ptr %24, null
  br i1 %tobool.not.i119, label %if.end25.ath10k_htt_config_paddrs_ring.exit_crit_edge, label %if.then.i

if.end25.ath10k_htt_config_paddrs_ring.exit_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_config_paddrs_ring.exit

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  call void %24(ptr noundef %htt, ptr noundef nonnull %call.i117) #16
  br label %ath10k_htt_config_paddrs_ring.exit

ath10k_htt_config_paddrs_ring.exit:               ; preds = %if.then.i, %if.end25.ath10k_htt_config_paddrs_ring.exit_crit_edge
  %25 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %paddr, align 4
  %base_paddr = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 4
  %27 = ptrtoint ptr %base_paddr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %base_paddr, align 4
  %28 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %htt, align 8
  %dev28 = getelementptr inbounds %struct.ath10k, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev28, align 4
  %call.i121 = call ptr @dma_alloc_attrs(ptr noundef %31, i32 noundef 4, ptr noundef nonnull %paddr, i32 noundef 3264, i32 noundef 0) #16
  %tobool30.not = icmp eq ptr %call.i121, null
  br i1 %tobool30.not, label %err_dma_idx, label %if.end32

if.end32:                                         ; preds = %ath10k_htt_config_paddrs_ring.exit
  %alloc_idx = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 9
  %32 = ptrtoint ptr %alloc_idx to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i121, ptr %alloc_idx, align 8
  %33 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %paddr, align 4
  %paddr37 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 9, i32 1
  %35 = ptrtoint ptr %paddr37 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %paddr37, align 4
  %36 = ptrtoint ptr %size_mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size_mask, align 4
  %sw_rd_idx = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 10
  %38 = ptrtoint ptr %sw_rd_idx to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %sw_rd_idx, align 8
  %39 = ptrtoint ptr %call.i121 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %call.i121, align 4
  call void @init_timer_key(ptr noundef %refill_retry_timer, ptr noundef nonnull @ath10k_htt_rx_ring_refill_retry, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @ath10k_htt_rx_alloc.__key) #16
  %lock = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 12
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @ath10k_htt_rx_alloc.__key.2, i16 noundef signext 3) #16
  %fill_cnt = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 8
  %40 = ptrtoint ptr %fill_cnt to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %fill_cnt, align 4
  %41 = ptrtoint ptr %sw_rd_idx to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %sw_rd_idx, align 8
  %skb_table = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 2
  %42 = call ptr @memset(ptr %skb_table, i32 0, i32 64)
  %rx_msdus_q = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 21
  %lock.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 21, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #16
  %43 = ptrtoint ptr %rx_msdus_q to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %rx_msdus_q, ptr %rx_msdus_q, align 4
  %prev.i.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 21, i32 0, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %rx_msdus_q, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 21, i32 1
  %45 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %qlen.i.i, align 4
  %rx_in_ord_compl_q = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 22
  %lock.i122 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 22, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i122, ptr noundef nonnull @.str.21, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #16
  %46 = ptrtoint ptr %rx_in_ord_compl_q to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %rx_in_ord_compl_q, ptr %rx_in_ord_compl_q, align 4
  %prev.i.i123 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 22, i32 0, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i123 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %rx_in_ord_compl_q, ptr %prev.i.i123, align 4
  %qlen.i.i124 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 22, i32 1
  %48 = ptrtoint ptr %qlen.i.i124 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %qlen.i.i124, align 4
  %tx_fetch_ind_q = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 23
  %lock.i125 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 23, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i125, ptr noundef nonnull @.str.21, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #16
  %49 = ptrtoint ptr %tx_fetch_ind_q to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %tx_fetch_ind_q, ptr %tx_fetch_ind_q, align 4
  %prev.i.i126 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 23, i32 0, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i126 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %tx_fetch_ind_q, ptr %prev.i.i126, align 4
  %qlen.i.i127 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 23, i32 1
  %51 = ptrtoint ptr %qlen.i.i127 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %qlen.i.i127, align 4
  %num_mpdus_ready = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 20
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %num_mpdus_ready, i32 noundef 4) #16
  %52 = ptrtoint ptr %num_mpdus_ready to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 0, ptr %num_mpdus_ready, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %53 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %53, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool55.not = icmp eq i32 %and, 0
  br i1 %tobool55.not, label %lor.lhs.false, label %if.end32.if.then57_crit_edge

if.end32.if.then57_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then57

lor.lhs.false:                                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_rx_alloc, %if.then57)) #16
          to label %cleanup [label %if.then57], !srcloc !313

if.then57:                                        ; preds = %lor.lhs.false, %if.end32.if.then57_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  %54 = ptrtoint ptr %size3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %size3, align 8
  %56 = ptrtoint ptr %fill_level to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fill_level, align 8
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.4, i32 noundef %55, i32 noundef %57) #16
  br label %cleanup

err_dma_idx:                                      ; preds = %ath10k_htt_config_paddrs_ring.exit
  %58 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %htt, align 8
  %dev66 = getelementptr inbounds %struct.ath10k, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev66, align 4
  %62 = ptrtoint ptr %rx_ops.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rx_ops.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %tobool.not.i129 = icmp eq ptr %65, null
  br i1 %tobool.not.i129, label %err_dma_idx.ath10k_htt_get_rx_ring_size.exit133_crit_edge, label %if.end.i131

err_dma_idx.ath10k_htt_get_rx_ring_size.exit133_crit_edge: ; preds = %err_dma_idx
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_get_rx_ring_size.exit133

if.end.i131:                                      ; preds = %err_dma_idx
  call void @__sanitizer_cov_trace_pc() #18
  %call.i130 = call i32 %65(ptr noundef %htt) #16
  br label %ath10k_htt_get_rx_ring_size.exit133

ath10k_htt_get_rx_ring_size.exit133:              ; preds = %if.end.i131, %err_dma_idx.ath10k_htt_get_rx_ring_size.exit133_crit_edge
  %retval.0.i132 = phi i32 [ %call.i130, %if.end.i131 ], [ 0, %err_dma_idx.ath10k_htt_get_rx_ring_size.exit133_crit_edge ]
  %66 = ptrtoint ptr %base_paddr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %base_paddr, align 4
  call void @dma_free_attrs(ptr noundef %61, i32 noundef %retval.0.i132, ptr noundef nonnull %call.i117, i32 noundef %67, i32 noundef 0) #16
  br label %err_dma_ring

err_dma_ring:                                     ; preds = %ath10k_htt_get_rx_ring_size.exit133, %ath10k_htt_get_rx_ring_size.exit.err_dma_ring_crit_edge
  %68 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rx_ring, align 8
  call void @kfree(ptr noundef %69) #16
  br label %cleanup

cleanup:                                          ; preds = %err_dma_ring, %if.then57, %lor.lhs.false, %kcalloc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then57 ], [ -12, %kcalloc.exit.cleanup_crit_edge ], [ -12, %err_dma_ring ], [ 0, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_htt_rx_ring_refill_retry(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -244
  %lock.i = getelementptr i8, ptr %t, i32 48
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #16
  %fill_level.i = getelementptr i8, ptr %t, i32 -20
  %0 = ptrtoint ptr %fill_level.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fill_level.i, align 8
  %fill_cnt.i = getelementptr i8, ptr %t, i32 -16
  %2 = ptrtoint ptr %fill_cnt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fill_cnt.i, align 4
  %sub.i = sub i32 %1, %3
  %4 = tail call i32 @llvm.smin.i32(i32 %sub.i, i32 100) #16
  %call.i = tail call fastcc i32 @ath10k_htt_rx_ring_fill_n(ptr noundef %add.ptr, i32 noundef %4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call.i)
  %cmp4.i = icmp eq i32 %call.i, -12
  br i1 %cmp4.i, label %entry.if.end15.sink.split.i_crit_edge, label %if.else.i

entry.if.end15.sink.split.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i

if.else.i:                                        ; preds = %entry
  %sub3.i = sub i32 %sub.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3.i)
  %cmp8.i = icmp sgt i32 %sub3.i, 0
  br i1 %cmp8.i, label %if.else.i.if.end15.sink.split.i_crit_edge, label %if.else.i.ath10k_htt_rx_msdu_buff_replenish.exit_crit_edge

if.else.i.ath10k_htt_rx_msdu_buff_replenish.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_msdu_buff_replenish.exit

if.else.i.if.end15.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i

if.end15.sink.split.i:                            ; preds = %if.else.i.if.end15.sink.split.i_crit_edge, %entry.if.end15.sink.split.i_crit_edge
  %.sink29.i = phi i32 [ 5, %entry.if.end15.sink.split.i_crit_edge ], [ 1, %if.else.i.if.end15.sink.split.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %add13.i = add i32 %5, %.sink29.i
  %call14.i = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add13.i) #16
  br label %ath10k_htt_rx_msdu_buff_replenish.exit

ath10k_htt_rx_msdu_buff_replenish.exit:           ; preds = %if.end15.sink.split.i, %if.else.i.ath10k_htt_rx_msdu_buff_replenish.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ath10k_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_htt_htc_t2h_msg_handler(ptr noundef %ar, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @ath10k_htt_t2h_msg_handler(ptr noundef %ar, ptr noundef %skb)
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ath10k_htt_t2h_msg_handler(ptr noundef %ar, ptr noundef %skb) #0 align 64 {
entry:
  %ev = alloca %struct.htt_peer_map_event, align 2
  %ev44 = alloca %struct.htt_peer_unmap_event, align 2
  %tx_done = alloca %struct.htt_tx_done, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %htt1 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.5) #16
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %3 = load i32, ptr @ath10k_debug_mask, align 4
  %and3 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %do.body.if.then4_crit_edge

do.body.if.then4_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then4

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_t2h_msg_handler, %if.then4)) #16
          to label %do.end [label %if.then4], !srcloc !313

if.then4:                                         ; preds = %lor.lhs.false, %do.body.if.then4_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 1
  %conv = zext i8 %5 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 8, ptr noundef nonnull @.str.6, i32 noundef %conv) #16
  br label %do.end

do.end:                                           ; preds = %if.then4, %lor.lhs.false
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 1
  %conv8 = zext i8 %7 to i32
  %t2h_msg_types_max = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 9
  %8 = ptrtoint ptr %t2h_msg_types_max to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %t2h_msg_types_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv8)
  %cmp10.not = icmp ugt i32 %9, %conv8
  br i1 %cmp10.not, label %if.end28, label %do.body13

do.body13:                                        ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %10 = load i32, ptr @ath10k_debug_mask, align 4
  %and14 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %lor.lhs.false16, label %do.body13.if.then19_crit_edge

do.body13.if.then19_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then19

lor.lhs.false16:                                  ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_t2h_msg_handler, %if.then19)) #16
          to label %cleanup219 [label %if.then19], !srcloc !313

if.then19:                                        ; preds = %lor.lhs.false16, %do.body13.if.then19_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %1, align 1
  %conv22 = zext i8 %12 to i32
  %13 = ptrtoint ptr %t2h_msg_types_max to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %t2h_msg_types_max, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 8, ptr noundef nonnull @.str.7, i32 noundef %conv22, i32 noundef %14) #16
  br label %cleanup219

if.end28:                                         ; preds = %do.end
  %t2h_msg_types = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 8
  %15 = ptrtoint ptr %t2h_msg_types to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %t2h_msg_types, align 8
  %arrayidx = getelementptr i32, ptr %16, i32 %conv8
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb32
    i32 3, label %sw.bb37
    i32 4, label %sw.bb43
    i32 14, label %sw.bb47
    i32 7, label %sw.bb97
    i32 11, label %sw.bb99
    i32 10, label %sw.bb122
    i32 24, label %if.end28.cleanup219_crit_edge
    i32 9, label %sw.bb125
    i32 13, label %sw.bb128
    i32 5, label %sw.bb129
    i32 6, label %sw.bb130
    i32 8, label %sw.bb131
    i32 2, label %if.end28.cleanup219_crit_edge366
    i32 18, label %sw.bb141
    i32 15, label %sw.bb142
    i32 20, label %sw.bb189
    i32 22, label %if.end28.cleanup219_crit_edge367
    i32 26, label %sw.bb204
    i32 27, label %sw.bb209
    i32 28, label %sw.bb210
    i32 29, label %sw.bb211
  ]

if.end28.cleanup219_crit_edge367:                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup219

if.end28.cleanup219_crit_edge366:                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup219

if.end28.cleanup219_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup219

sw.bb:                                            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  %20 = getelementptr inbounds %struct.htt_resp, ptr %1, i32 0, i32 1
  %major = getelementptr inbounds %struct.htt_ver_resp, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %major to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %major, align 1
  %target_version_major = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 3
  %23 = ptrtoint ptr %target_version_major to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %target_version_major, align 8
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %20, align 1
  %target_version_minor = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 4
  %26 = ptrtoint ptr %target_version_minor to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %target_version_minor, align 1
  %target_version_received = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 5
  tail call void @complete(ptr noundef %target_version_received) #16
  br label %cleanup219

sw.bb32:                                          ; preds = %if.end28
  %dev_type = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 136, i32 1
  %27 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp33.not = icmp eq i32 %28, 1
  br i1 %cmp33.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #18
  %29 = getelementptr inbounds %struct.htt_resp, ptr %1, i32 0, i32 1
  tail call fastcc void @ath10k_htt_rx_proc_rx_ind_ll(ptr noundef %htt1, ptr noundef %29)
  br label %cleanup219

if.else:                                          ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #18
  %rx_indication_head = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 2
  tail call void @skb_queue_tail(ptr noundef %rx_indication_head, ptr noundef %skb) #16
  br label %cleanup219

sw.bb37:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %ev) #16
  %30 = ptrtoint ptr %ev to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -1, ptr %ev, align 2
  %31 = getelementptr inbounds %struct.htt_resp, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  store i8 %33, ptr %ev, align 2
  %peer_id = getelementptr inbounds %struct.htt_peer_map_event, ptr %ev, i32 0, i32 1
  %peer_id39 = getelementptr inbounds %struct.htt_rx_peer_map, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %peer_id39 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %peer_id39, align 1
  %36 = tail call i16 @llvm.bswap.i16(i16 %35)
  %37 = ptrtoint ptr %peer_id to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %peer_id, align 2
  %addr = getelementptr inbounds %struct.htt_peer_map_event, ptr %ev, i32 0, i32 2
  %addr41 = getelementptr inbounds %struct.htt_resp, ptr %1, i32 0, i32 1, i32 0, i32 2
  %38 = call ptr @memcpy(ptr %addr, ptr %addr41, i32 6)
  call void @ath10k_peer_map_event(ptr noundef %htt1, ptr noundef nonnull %ev) #16
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %ev) #16
  br label %cleanup219

sw.bb43:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ev44) #16
  %39 = getelementptr inbounds %struct.htt_resp, ptr %1, i32 0, i32 1
  %peer_id46 = getelementptr inbounds %struct.htt_rx_peer_unmap, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %peer_id46 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %peer_id46, align 1
  %42 = tail call i16 @llvm.bswap.i16(i16 %41)
  %43 = ptrtoint ptr %ev44 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %ev44, align 2
  call void @ath10k_peer_unmap_event(ptr noundef %htt1, ptr noundef nonnull %ev44) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ev44) #16
  br label %cleanup219

sw.bb47:                                          ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %tx_done) #16
  %44 = getelementptr inbounds i8, ptr %tx_done, i32 2
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 0, ptr %44, align 2
  %eid = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 1
  %46 = ptrtoint ptr %eid to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %eid, align 4
  %48 = getelementptr inbounds %struct.htt_resp, ptr %1, i32 0, i32 1
  %status53 = getelementptr inbounds %struct.htt_mgmt_tx_completion, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %status53 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %status53, align 1
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %info54 = getelementptr inbounds %struct.htt_resp, ptr %1, i32 0, i32 1, i32 1, i32 7
  %52 = ptrtoint ptr %info54 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %info54, align 1
  %54 = lshr i32 %53, 24
  %desc_id = getelementptr inbounds %struct.htt_resp, ptr %1, i32 0, i32 1, i32 0, i32 2
  %55 = ptrtoint ptr %desc_id to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %desc_id, align 1
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %conv55 = trunc i32 %57 to i16
  %58 = ptrtoint ptr %tx_done to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv55, ptr %tx_done, align 2
  %59 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %51, label %sw.bb47.sw.epilog_crit_edge [
    i32 0, label %sw.bb56
    i32 1, label %sw.bb83
    i32 2, label %sw.bb85
  ]

sw.bb47.sw.epilog_crit_edge:                      ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb56:                                          ; preds = %sw.bb47
  %status57 = getelementptr inbounds %struct.htt_tx_done, ptr %tx_done, i32 0, i32 1
  %60 = ptrtoint ptr %status57 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 1, ptr %status57, align 2
  %arrayidx.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 41, i32 6, i32 3
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %arrayidx.i, align 4
  %63 = and i32 %62, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool60.not = icmp eq i32 %63, 0
  br i1 %tobool60.not, label %sw.bb56.sw.epilog_crit_edge, label %land.lhs.true

sw.bb56.sw.epilog_crit_edge:                      ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb56
  %flags = getelementptr inbounds %struct.htt_resp, ptr %1, i32 0, i32 1, i32 0, i32 1
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %flags, align 1
  %66 = and i8 %65, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool63.not = icmp eq i8 %66, 0
  br i1 %tobool63.not, label %land.lhs.true.sw.epilog_crit_edge, label %do.end79

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

do.end79:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %conv81 = trunc i32 %54 to i8
  %ack_rssi = getelementptr inbounds %struct.htt_tx_done, ptr %tx_done, i32 0, i32 2
  %67 = ptrtoint ptr %ack_rssi to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv81, ptr %ack_rssi, align 2
  br label %sw.epilog

sw.bb83:                                          ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #18
  %status84 = getelementptr inbounds %struct.htt_tx_done, ptr %tx_done, i32 0, i32 1
  %68 = ptrtoint ptr %status84 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 2, ptr %status84, align 2
  br label %sw.epilog

sw.bb85:                                          ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #18
  %status86 = getelementptr inbounds %struct.htt_tx_done, ptr %tx_done, i32 0, i32 1
  %69 = ptrtoint ptr %status86 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 3, ptr %status86, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb85, %sw.bb83, %do.end79, %land.lhs.true.sw.epilog_crit_edge, %sw.bb56.sw.epilog_crit_edge, %sw.bb47.sw.epilog_crit_edge
  %disable_tx_comp = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 31
  %70 = ptrtoint ptr %disable_tx_comp to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %disable_tx_comp, align 8, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool87.not = icmp eq i8 %71, 0
  br i1 %tobool87.not, label %sw.epilog.if.end90_crit_edge, label %if.then88

sw.epilog.if.end90_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end90

if.then88:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  %tx_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 42, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #16
  %tx_credits = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 %47, i32 9
  %72 = ptrtoint ptr %tx_credits to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tx_credits, align 4
  %inc = add i32 %73, 1
  store i32 %inc, ptr %tx_credits, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #16
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %sw.epilog.if.end90_crit_edge
  %call91 = call i32 @ath10k_txrx_tx_unref(ptr noundef %htt1, ptr noundef nonnull %tx_done) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.then93, label %if.end90.if.end96_crit_edge

if.end90.if.end96_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end96

if.then93:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #18
  %tx_lock94 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 12
  call void @_raw_spin_lock_bh(ptr noundef %tx_lock94) #16
  call void @ath10k_htt_tx_mgmt_dec_pending(ptr noundef %htt1) #16
  call void @_raw_spin_unlock_bh(ptr noundef %tx_lock94) #16
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %if.end90.if.end96_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tx_done) #16
  br label %cleanup219

sw.bb97:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  %74 = ptrtoint ptr %htt1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %htt1, align 8
  tail call fastcc void @ath10k_htt_rx_tx_compl_ind(ptr noundef %75, ptr noundef %skb)
  br label %cleanup219

sw.bb99:                                          ; preds = %if.end28
  %76 = ptrtoint ptr %htt1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %htt1, align 8
  %78 = getelementptr inbounds %struct.htt_resp, ptr %1, i32 0, i32 1
  %data_lock.i = getelementptr inbounds %struct.ath10k, ptr %77, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock.i) #16
  %peer_id.i = getelementptr inbounds %struct.htt_security_indication, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %peer_id.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %peer_id.i, align 1
  %81 = tail call i16 @llvm.bswap.i16(i16 %80) #16
  %conv.i = zext i16 %81 to i32
  %call.i = tail call ptr @ath10k_peer_find_by_id(ptr noundef %77, i32 noundef %conv.i) #16
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #18
  %82 = ptrtoint ptr %peer_id.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 2)
  %83 = load i16, ptr %peer_id.i, align 1
  %84 = tail call i16 @llvm.bswap.i16(i16 %83) #16
  %conv2.i = zext i16 %84 to i32
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %77, ptr noundef nonnull @.str.29, i32 noundef %conv2.i) #16
  br label %ath10k_htt_rx_sec_ind_handler.exit

if.end.i:                                         ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #18
  %85 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %78, align 1
  %conv3.i = zext i8 %86 to i32
  %and.i = and i32 %conv3.i, 127
  %and5.lobit.i = lshr i32 %conv3.i, 7
  %arrayidx.i332 = getelementptr %struct.ath10k_peer, ptr %call.i, i32 0, i32 12, i32 %and5.lobit.i
  %87 = ptrtoint ptr %arrayidx.i332 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %and.i, ptr %arrayidx.i332, align 4
  %sec_type.off.i.i = add nsw i32 %and.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sec_type.off.i.i)
  %switch.i.i = icmp ult i32 %sec_type.off.i.i, 3
  %..i.i = select i1 %switch.i.i, i32 48, i32 0
  %pn_len.i = getelementptr %struct.ath10k_peer, ptr %call.i, i32 0, i32 12, i32 %and5.lobit.i, i32 1
  %88 = ptrtoint ptr %pn_len.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %..i.i, ptr %pn_len.i, align 4
  %tids_last_pn.i = getelementptr inbounds %struct.ath10k_peer, ptr %call.i, i32 0, i32 8
  %89 = call ptr @memset(ptr %tids_last_pn.i, i32 0, i32 323)
  br label %ath10k_htt_rx_sec_ind_handler.exit

ath10k_htt_rx_sec_ind_handler.exit:               ; preds = %if.end.i, %if.then.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock.i) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %90 = load i32, ptr @ath10k_debug_mask, align 4
  %and104 = and i32 %90, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %lor.lhs.false106, label %ath10k_htt_rx_sec_ind_handler.exit.if.then109_crit_edge

ath10k_htt_rx_sec_ind_handler.exit.if.then109_crit_edge: ; preds = %ath10k_htt_rx_sec_ind_handler.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then109

lor.lhs.false106:                                 ; preds = %ath10k_htt_rx_sec_ind_handler.exit
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_t2h_msg_handler, %if.then109)) #16
          to label %do.end121 [label %if.then109], !srcloc !313

if.then109:                                       ; preds = %lor.lhs.false106, %ath10k_htt_rx_sec_ind_handler.exit.if.then109_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  %91 = ptrtoint ptr %peer_id.i to i32
  call void @__asan_loadN_noabort(i32 %91, i32 2)
  %92 = load i16, ptr %peer_id.i, align 1
  %93 = tail call i16 @llvm.bswap.i16(i16 %92)
  %conv111 = zext i16 %93 to i32
  %94 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %78, align 1
  %conv112 = zext i8 %95 to i32
  %and113.lobit = lshr i32 %conv112, 7
  %and117 = and i32 %conv112, 127
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %77, i32 noundef 8, ptr noundef nonnull @.str.8, i32 noundef %conv111, i32 noundef %and113.lobit, i32 noundef %and117) #16
  br label %do.end121

do.end121:                                        ; preds = %if.then109, %lor.lhs.false106
  %install_key_done = getelementptr inbounds %struct.ath10k, ptr %77, i32 0, i32 72
  tail call void @complete(ptr noundef %install_key_done) #16
  br label %cleanup219

sw.bb122:                                         ; preds = %if.end28
  %96 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %98 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %len, align 4
  tail call void @ath10k_dbg_dump(ptr noundef %ar, i32 noundef 128, ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef %97, i32 noundef %99) #16
  %num_mpdus_ready = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_mpdus_ready, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %num_mpdus_ready, i32 1, i32 3, i32 1) #16
  %100 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_mpdus_ready, ptr %num_mpdus_ready, i32 1, ptr elementtype(i32) %num_mpdus_ready) #16, !srcloc !314
  %rx_ops.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 30
  %101 = ptrtoint ptr %rx_ops.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rx_ops.i, align 4
  %htt_rx_proc_rx_frag_ind.i = getelementptr inbounds %struct.ath10k_htt_rx_ops, ptr %102, i32 0, i32 5
  %103 = ptrtoint ptr %htt_rx_proc_rx_frag_ind.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %htt_rx_proc_rx_frag_ind.i, align 4
  %tobool.not.i336 = icmp eq ptr %104, null
  br i1 %tobool.not.i336, label %sw.bb122.cleanup219_crit_edge, label %if.end.i338

sw.bb122.cleanup219_crit_edge:                    ; preds = %sw.bb122
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup219

if.end.i338:                                      ; preds = %sw.bb122
  call void @__sanitizer_cov_trace_pc() #18
  %105 = getelementptr inbounds %struct.htt_resp, ptr %1, i32 0, i32 1
  %call.i337 = tail call zeroext i1 %104(ptr noundef %htt1, ptr noundef %105, ptr noundef %skb) #16
  br label %cleanup219

sw.bb125:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  %106 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data, align 4
  %len127 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %108 = ptrtoint ptr %len127 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %len127, align 4
  tail call fastcc void @trace_ath10k_htt_stats(ptr noundef %ar, ptr noundef %107, i32 noundef %109)
  br label %cleanup219

sw.bb128:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.10) #16
  br label %cleanup219

sw.bb129:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @ath10k_htt_rx_addba(ptr noundef %ar, ptr noundef %1)
  br label %cleanup219

sw.bb130:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @ath10k_htt_rx_delba(ptr noundef %ar, ptr noundef %1)
  br label %cleanup219

sw.bb131:                                         ; preds = %if.end28
  %payload = getelementptr inbounds %struct.htt_resp, ptr %1, i32 0, i32 1, i32 0, i32 2
  %len133 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %110 = ptrtoint ptr %len133 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %len133, align 4
  %112 = trunc i32 %111 to i16
  %conv134 = add i16 %112, -4
  tail call fastcc void @trace_ath10k_htt_pktlog(ptr noundef %ar, ptr noundef %payload, i16 noundef zeroext %conv134)
  %dev_flags.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 66
  %113 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %dev_flags.i, align 4
  %115 = and i32 %114, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool.not.i339 = icmp eq i32 %115, 0
  br i1 %tobool.not.i339, label %sw.bb131.cleanup219_crit_edge, label %land.lhs.true.i

sw.bb131.cleanup219_crit_edge:                    ; preds = %sw.bb131
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup219

land.lhs.true.i:                                  ; preds = %sw.bb131
  %arrayidx.i.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 41, i32 6, i32 2
  %116 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %arrayidx.i.i, align 4
  %118 = and i32 %117, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool2.not.i = icmp eq i32 %118, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.cleanup219_crit_edge, label %if.then136

land.lhs.true.i.cleanup219_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup219

if.then136:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @ath10k_fetch_10_2_tx_stats(ptr noundef %ar, ptr noundef %payload)
  br label %cleanup219

sw.bb141:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  %rx_in_ord_compl_q = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 22
  tail call void @skb_queue_tail(ptr noundef %rx_in_ord_compl_q, ptr noundef %skb) #16
  br label %cleanup219

sw.bb142:                                         ; preds = %if.end28
  %htc146 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 42
  %eid150 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 1
  %119 = ptrtoint ptr %eid150 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %eid150, align 4
  %121 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %1, align 4
  %123 = tail call i32 @llvm.bswap.i32(i32 %122)
  %shr153 = lshr i32 %123, 16
  %124 = and i32 %123, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool156.not = icmp eq i32 %124, 0
  %sub158 = sub nsw i32 0, %shr153
  %spec.select = select i1 %tobool156.not, i32 %shr153, i32 %sub158
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %125 = load i32, ptr @ath10k_debug_mask, align 4
  %and161 = and i32 %125, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %lor.lhs.false163, label %sw.bb142.if.then166_crit_edge

sw.bb142.if.then166_crit_edge:                    ; preds = %sw.bb142
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then166

lor.lhs.false163:                                 ; preds = %sw.bb142
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_t2h_msg_handler, %if.then166)) #16
          to label %do.end169 [label %if.then166], !srcloc !313

if.then166:                                       ; preds = %lor.lhs.false163, %sw.bb142.if.then166_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 8, ptr noundef nonnull @.str.11, i32 noundef %spec.select) #16
  br label %do.end169

do.end169:                                        ; preds = %if.then166, %lor.lhs.false163
  %disable_tx_comp170 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 31
  %126 = ptrtoint ptr %disable_tx_comp170 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %disable_tx_comp170, align 8, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool171.not = icmp eq i8 %127, 0
  br i1 %tobool171.not, label %do.end169.cleanup219_crit_edge, label %if.then172

do.end169.cleanup219_crit_edge:                   ; preds = %do.end169
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup219

if.then172:                                       ; preds = %do.end169
  %tx_lock173 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 42, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock173) #16
  %tx_credits174 = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 %120, i32 9
  %128 = ptrtoint ptr %tx_credits174 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %tx_credits174, align 4
  %add = add i32 %129, %spec.select
  store i32 %add, ptr %tx_credits174, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock173) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %130 = load i32, ptr @ath10k_debug_mask, align 4
  %and177 = and i32 %130, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177)
  %tobool178.not = icmp eq i32 %and177, 0
  br i1 %tobool178.not, label %lor.lhs.false179, label %if.then172.if.then182_crit_edge

if.then172.if.then182_crit_edge:                  ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then182

lor.lhs.false179:                                 ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_t2h_msg_handler, %if.then182)) #16
          to label %do.end186 [label %if.then182], !srcloc !313

if.then182:                                       ; preds = %lor.lhs.false179, %if.then172.if.then182_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  %131 = ptrtoint ptr %tx_credits174 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %tx_credits174, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 8, ptr noundef nonnull @.str.12, i32 noundef %132) #16
  br label %do.end186

do.end186:                                        ; preds = %if.then182, %lor.lhs.false179
  %ep_tx_credits = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 %120, i32 3, i32 2
  %133 = ptrtoint ptr %ep_tx_credits to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ep_tx_credits, align 4
  %135 = ptrtoint ptr %htc146 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %htc146, align 4
  tail call void %134(ptr noundef %136) #16
  br label %cleanup219

sw.bb189:                                         ; preds = %if.end28
  %phymode190 = getelementptr inbounds %struct.htt_resp, ptr %1, i32 0, i32 1, i32 1, i32 7
  %137 = ptrtoint ptr %phymode190 to i32
  call void @__asan_loadN_noabort(i32 %137, i32 4)
  %138 = load i32, ptr %phymode190, align 1
  %139 = tail call i32 @llvm.bswap.i32(i32 %138)
  %freq191 = getelementptr inbounds %struct.htt_resp, ptr %1, i32 0, i32 1, i32 0, i32 2
  %140 = ptrtoint ptr %freq191 to i32
  call void @__asan_loadN_noabort(i32 %140, i32 4)
  %141 = load i32, ptr %freq191, align 1
  %142 = tail call i32 @llvm.bswap.i32(i32 %141)
  %hw = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 1
  %143 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %wiphy, align 8
  %mul.i = mul i32 %142, 1000
  %call.i348 = tail call ptr @ieee80211_get_channel_khz(ptr noundef %146, i32 noundef %mul.i) #16
  %tgt_oper_chan = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 59
  %147 = ptrtoint ptr %tgt_oper_chan to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call.i348, ptr %tgt_oper_chan, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %148 = load i32, ptr @ath10k_debug_mask, align 4
  %and194 = and i32 %148, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and194)
  %tobool195.not = icmp eq i32 %and194, 0
  br i1 %tobool195.not, label %lor.lhs.false196, label %sw.bb189.if.then199_crit_edge

sw.bb189.if.then199_crit_edge:                    ; preds = %sw.bb189
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then199

lor.lhs.false196:                                 ; preds = %sw.bb189
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_t2h_msg_handler, %if.then199)) #16
          to label %cleanup219 [label %if.then199], !srcloc !313

if.then199:                                       ; preds = %lor.lhs.false196, %sw.bb189.if.then199_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  %call200 = tail call fastcc ptr @ath10k_wmi_phymode_str(i32 noundef %139)
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 8, ptr noundef nonnull @.str.13, i32 noundef %142, ptr noundef nonnull %call200) #16
  br label %cleanup219

sw.bb204:                                         ; preds = %if.end28
  %call205 = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 2592) #16
  %tobool206.not = icmp eq ptr %call205, null
  br i1 %tobool206.not, label %if.then207, label %if.end208

if.then207:                                       ; preds = %sw.bb204
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.14) #16
  br label %cleanup219

if.end208:                                        ; preds = %sw.bb204
  call void @__sanitizer_cov_trace_pc() #18
  %tx_fetch_ind_q = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 23
  tail call void @skb_queue_tail(ptr noundef %tx_fetch_ind_q, ptr noundef nonnull %call205) #16
  br label %cleanup219

sw.bb209:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @ath10k_htt_rx_tx_fetch_confirm(ptr noundef %ar, ptr noundef %skb)
  br label %cleanup219

sw.bb210:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @ath10k_htt_rx_tx_mode_switch_ind(ptr noundef %ar, ptr noundef %skb)
  br label %cleanup219

sw.bb211:                                         ; preds = %if.end28
  %149 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %data, align 4
  %peer_tx_stats.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 123
  %151 = getelementptr inbounds %struct.htt_resp, ptr %150, i32 0, i32 1
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %151, align 1
  %ppdu_len2.i = getelementptr inbounds %struct.htt_peer_tx_stats, ptr %151, i32 0, i32 1
  %154 = ptrtoint ptr %ppdu_len2.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %ppdu_len2.i, align 1
  %mul.i352 = shl i8 %155, 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %156 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %len.i, align 4
  %conv4.i = zext i8 %153 to i32
  %conv5.i = zext i8 %mul.i352 to i32
  %mul6.i = mul nuw nsw i32 %conv5.i, %conv4.i
  %add.i = or i32 %mul6.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %157, i32 %add.i)
  %cmp.i = icmp ult i32 %157, %add.i
  br i1 %cmp.i, label %if.then.i353, label %if.end.i355

if.then.i353:                                     ; preds = %sw.bb211
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.75, i32 noundef %157) #16
  br label %cleanup219

if.end.i355:                                      ; preds = %sw.bb211
  %payload.i = getelementptr inbounds %struct.htt_resp, ptr %150, i32 0, i32 1, i32 0, i32 2
  %peer_id9.i = getelementptr inbounds %struct.htt_resp, ptr %150, i32 0, i32 1, i32 1, i32 9
  %158 = ptrtoint ptr %peer_id9.i to i32
  call void @__asan_loadN_noabort(i32 %158, i32 2)
  %159 = load i16, ptr %peer_id9.i, align 1
  %160 = tail call i16 @llvm.bswap.i16(i16 %159) #16
  %conv10.i = zext i16 %160 to i32
  %161 = tail call i32 @llvm.read_register.i32(metadata !298) #16
  %and.i.i.i.i.i.i = and i32 %161, -16384
  %162 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %164, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !315
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i354 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i354, label %if.end.i355.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i355.rcu_read_lock.exit.i_crit_edge:       ; preds = %if.end.i355
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i355
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 696, ptr noundef nonnull @.str.27) #16
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i355.rcu_read_lock.exit.i_crit_edge
  %data_lock.i356 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock.i356) #16
  %call.i357 = tail call ptr @ath10k_peer_find_by_id(ptr noundef %ar, i32 noundef %conv10.i) #16
  %tobool.not.i358 = icmp eq ptr %call.i357, null
  br i1 %tobool.not.i358, label %rcu_read_lock.exit.i.if.then13.i_crit_edge, label %lor.lhs.false.i

rcu_read_lock.exit.i.if.then13.i_crit_edge:       ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then13.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %sta11.i = getelementptr inbounds %struct.ath10k_peer, ptr %call.i357, i32 0, i32 2
  %165 = ptrtoint ptr %sta11.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %sta11.i, align 4
  %tobool12.not.i = icmp eq ptr %166, null
  br i1 %tobool12.not.i, label %lor.lhs.false.i.if.then13.i_crit_edge, label %for.cond.preheader.i

lor.lhs.false.i.if.then13.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then13.i

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %cmp1786.not.i = icmp eq i8 %153, 0
  br i1 %cmp1786.not.i, label %for.cond.preheader.i.out.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.out.i_crit_edge:             ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %retry_bytes24.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 123, i32 1
  %failed_bytes25.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 123, i32 2
  %ratecode26.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 123, i32 3
  %flags27.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 123, i32 4
  %succ_pkts28.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 123, i32 6
  %retry_pkts29.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 123, i32 7
  %failed_pkts30.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 123, i32 8
  %duration.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 123, i32 9
  br label %for.body.i

if.then13.i:                                      ; preds = %lor.lhs.false.i.if.then13.i_crit_edge, %rcu_read_lock.exit.i.if.then13.i_crit_edge
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.76, i32 noundef %conv10.i) #16
  br label %out.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.087.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %mul22.i = mul nuw nsw i32 %i.087.i, %conv5.i
  %add.ptr.i = getelementptr i8, ptr %payload.i, i32 %mul22.i
  %167 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %167, i32 4)
  %168 = load i32, ptr %add.ptr.i, align 1
  %169 = tail call i32 @llvm.bswap.i32(i32 %168) #16
  %170 = ptrtoint ptr %peer_tx_stats.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %peer_tx_stats.i, align 4
  %retry_bytes.i = getelementptr inbounds %struct.htt_per_peer_tx_stats_ind, ptr %add.ptr.i, i32 0, i32 1
  %171 = ptrtoint ptr %retry_bytes.i to i32
  call void @__asan_loadN_noabort(i32 %171, i32 4)
  %172 = load i32, ptr %retry_bytes.i, align 1
  %173 = tail call i32 @llvm.bswap.i32(i32 %172) #16
  %174 = ptrtoint ptr %retry_bytes24.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %retry_bytes24.i, align 4
  %failed_bytes.i = getelementptr inbounds %struct.htt_per_peer_tx_stats_ind, ptr %add.ptr.i, i32 0, i32 2
  %175 = ptrtoint ptr %failed_bytes.i to i32
  call void @__asan_loadN_noabort(i32 %175, i32 4)
  %176 = load i32, ptr %failed_bytes.i, align 1
  %177 = tail call i32 @llvm.bswap.i32(i32 %176) #16
  %178 = ptrtoint ptr %failed_bytes25.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %failed_bytes25.i, align 4
  %ratecode.i = getelementptr inbounds %struct.htt_per_peer_tx_stats_ind, ptr %add.ptr.i, i32 0, i32 3
  %179 = ptrtoint ptr %ratecode.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %ratecode.i, align 1
  %181 = ptrtoint ptr %ratecode26.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %180, ptr %ratecode26.i, align 4
  %flags.i = getelementptr inbounds %struct.htt_per_peer_tx_stats_ind, ptr %add.ptr.i, i32 0, i32 4
  %182 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %flags.i, align 1
  %184 = ptrtoint ptr %flags27.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %183, ptr %flags27.i, align 1
  %succ_pkts.i = getelementptr inbounds %struct.htt_per_peer_tx_stats_ind, ptr %add.ptr.i, i32 0, i32 6
  %185 = ptrtoint ptr %succ_pkts.i to i32
  call void @__asan_loadN_noabort(i32 %185, i32 2)
  %186 = load i16, ptr %succ_pkts.i, align 1
  %187 = tail call i16 @llvm.bswap.i16(i16 %186) #16
  %188 = ptrtoint ptr %succ_pkts28.i to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 %187, ptr %succ_pkts28.i, align 4
  %retry_pkts.i = getelementptr inbounds %struct.htt_per_peer_tx_stats_ind, ptr %add.ptr.i, i32 0, i32 7
  %189 = ptrtoint ptr %retry_pkts.i to i32
  call void @__asan_loadN_noabort(i32 %189, i32 2)
  %190 = load i16, ptr %retry_pkts.i, align 1
  %191 = tail call i16 @llvm.bswap.i16(i16 %190) #16
  %192 = ptrtoint ptr %retry_pkts29.i to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 %191, ptr %retry_pkts29.i, align 2
  %failed_pkts.i = getelementptr inbounds %struct.htt_per_peer_tx_stats_ind, ptr %add.ptr.i, i32 0, i32 8
  %193 = ptrtoint ptr %failed_pkts.i to i32
  call void @__asan_loadN_noabort(i32 %193, i32 2)
  %194 = load i16, ptr %failed_pkts.i, align 1
  %195 = tail call i16 @llvm.bswap.i16(i16 %194) #16
  %196 = ptrtoint ptr %failed_pkts30.i to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 %195, ptr %failed_pkts30.i, align 4
  %tx_duration.i = getelementptr inbounds %struct.htt_per_peer_tx_stats_ind, ptr %add.ptr.i, i32 0, i32 9
  %197 = ptrtoint ptr %tx_duration.i to i32
  call void @__asan_loadN_noabort(i32 %197, i32 2)
  %198 = load i16, ptr %tx_duration.i, align 1
  %199 = tail call i16 @llvm.bswap.i16(i16 %198) #16
  %200 = ptrtoint ptr %duration.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 %199, ptr %duration.i, align 2
  tail call fastcc void @ath10k_update_per_peer_tx_stats(ptr noundef %ar, ptr noundef nonnull %166, ptr noundef %peer_tx_stats.i) #16
  %inc.i = add nuw nsw i32 %i.087.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv4.i
  br i1 %exitcond.not.i, label %for.body.i.out.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.body.i.out.i_crit_edge:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i

out.i:                                            ; preds = %for.body.i.out.i_crit_edge, %if.then13.i, %for.cond.preheader.i.out.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock.i356) #16
  %call.i77.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i77.i, label %out.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i80.i

out.i.rcu_read_unlock.exit.i_crit_edge:           ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i

land.lhs.true.i80.i:                              ; preds = %out.i
  %call1.i78.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i78.i)
  %tobool.not.i79.i = icmp eq i32 %call1.i78.i, 0
  br i1 %tobool.not.i79.i, label %land.lhs.true.i80.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i82.i

land.lhs.true.i80.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i80.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i82.i:                             ; preds = %land.lhs.true.i80.i
  %.b4.i81.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i81.i, label %land.lhs.true2.i82.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i83.i

land.lhs.true2.i82.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i82.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit.i

if.then.i83.i:                                    ; preds = %land.lhs.true2.i82.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i83.i, %land.lhs.true2.i82.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i80.i.rcu_read_unlock.exit.i_crit_edge, %out.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !316
  %201 = tail call i32 @llvm.read_register.i32(metadata !298) #16
  %and.i.i.i.i.i84.i = and i32 %201, -16384
  %202 = inttoptr i32 %and.i.i.i.i.i84.i to ptr
  %preempt_count.i.i.i.i85.i = getelementptr inbounds %struct.thread_info, ptr %202, i32 0, i32 1
  %203 = ptrtoint ptr %preempt_count.i.i.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load volatile i32, ptr %preempt_count.i.i.i.i85.i, align 4
  %sub.i.i.i.i = add i32 %204, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i85.i, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %cleanup219

sw.default:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.15, i32 noundef %conv8) #16
  %205 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %data, align 4
  %len217 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %207 = ptrtoint ptr %len217 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %len217, align 4
  tail call void @ath10k_dbg_dump(ptr noundef %ar, i32 noundef 128, ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef %206, i32 noundef %208) #16
  br label %cleanup219

cleanup219:                                       ; preds = %sw.default, %rcu_read_unlock.exit.i, %if.then.i353, %sw.bb210, %sw.bb209, %if.end208, %if.then207, %if.then199, %lor.lhs.false196, %do.end186, %do.end169.cleanup219_crit_edge, %sw.bb141, %if.then136, %land.lhs.true.i.cleanup219_crit_edge, %sw.bb131.cleanup219_crit_edge, %sw.bb130, %sw.bb129, %sw.bb128, %sw.bb125, %if.end.i338, %sw.bb122.cleanup219_crit_edge, %do.end121, %sw.bb97, %if.end96, %sw.bb43, %sw.bb37, %if.else, %if.then35, %sw.bb, %if.end28.cleanup219_crit_edge, %if.end28.cleanup219_crit_edge366, %if.end28.cleanup219_crit_edge367, %if.then19, %lor.lhs.false16
  %retval.0 = phi i1 [ false, %sw.bb141 ], [ false, %if.else ], [ true, %if.then19 ], [ true, %if.then207 ], [ true, %if.end208 ], [ true, %if.then199 ], [ true, %do.end169.cleanup219_crit_edge ], [ true, %do.end186 ], [ true, %if.end28.cleanup219_crit_edge ], [ true, %if.then136 ], [ true, %sw.default ], [ true, %sw.bb210 ], [ true, %sw.bb209 ], [ true, %if.end28.cleanup219_crit_edge366 ], [ true, %sw.bb130 ], [ true, %sw.bb129 ], [ true, %sw.bb128 ], [ true, %if.end28.cleanup219_crit_edge367 ], [ true, %sw.bb125 ], [ true, %do.end121 ], [ true, %sw.bb97 ], [ true, %if.end96 ], [ true, %sw.bb43 ], [ true, %sw.bb37 ], [ true, %if.then35 ], [ true, %sw.bb ], [ true, %lor.lhs.false16 ], [ %call.i337, %if.end.i338 ], [ true, %sw.bb122.cleanup219_crit_edge ], [ true, %sw.bb131.cleanup219_crit_edge ], [ true, %land.lhs.true.i.cleanup219_crit_edge ], [ true, %lor.lhs.false196 ], [ true, %if.then.i353 ], [ true, %rcu_read_unlock.exit.i ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_htt_rx_proc_rx_ind_ll(ptr noundef %htt, ptr noundef %rx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  %info1 = getelementptr inbounds %struct.htt_rx_indication_hdr, ptr %rx, i32 0, i32 2
  %2 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %info1, align 1
  %4 = and i32 %3, 255
  %peer_id3 = getelementptr inbounds %struct.htt_rx_indication_hdr, ptr %rx, i32 0, i32 1
  %5 = ptrtoint ptr %peer_id3 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %peer_id3, align 1
  %7 = ptrtoint ptr %rx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rx, align 1
  %prefix.i = getelementptr inbounds %struct.htt_rx_indication, ptr %rx, i32 0, i32 2
  %9 = ptrtoint ptr %prefix.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %prefix.i, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #16
  %conv.i = zext i16 %11 to i32
  %add.i = add nuw nsw i32 %conv.i, 3
  %div6.i = and i32 %add.i, 131068
  %add1.i = add nuw nsw i32 %div6.i, 47
  %add.ptr.i = getelementptr i8, ptr %rx, i32 %add1.i
  %12 = shl nuw nsw i32 %4, 2
  %spec.select.i24 = add nuw nsw i32 %12, 48
  tail call void @ath10k_dbg_dump(ptr noundef %1, i32 noundef 128, ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef %rx, i32 noundef %spec.select.i24) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp25.not = icmp eq i32 %4, 0
  br i1 %cmp25.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %mpdu_count.027 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.026 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.htt_rx_indication_mpdu_range, ptr %add.ptr.i, i32 %i.026
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %conv11 = zext i8 %14 to i32
  %add = add i32 %mpdu_count.027, %conv11
  %inc = add nuw nsw i32 %i.026, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %mpdu_count.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %15 = and i8 %8, 31
  %16 = tail call i16 @llvm.bswap.i16(i16 %6)
  %num_mpdus_ready = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_mpdus_ready, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %num_mpdus_ready, i32 1, i32 3, i32 1) #16
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_mpdus_ready, ptr %num_mpdus_ready, i32 %mpdu_count.0.lcssa, ptr elementtype(i32) %num_mpdus_ready) #16, !srcloc !314
  tail call void @ath10k_sta_update_rx_tid_stats_ampdu(ptr noundef %1, i16 noundef zeroext %16, i8 noundef zeroext %15, ptr noundef %add.ptr.i, i32 noundef %4) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_peer_map_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_peer_unmap_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_txrx_tx_unref(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_htt_tx_mgmt_dec_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_htt_rx_tx_compl_ind(ptr noundef %ar, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  %tx_done = alloca %struct.htt_tx_done, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %htt1 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %tx_done) #16
  %2 = call ptr @memset(ptr %tx_done, i32 0, i32 6)
  %3 = getelementptr inbounds %struct.htt_resp, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %trunc = trunc i8 %5 to i3
  %6 = sext i3 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %7 = icmp sgt i3 %trunc, -1
  br i1 %7, label %switch.lookup, label %sw.default

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %8 = and i8 %5, 7
  %and = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.23, i32 noundef %and) #16
  br label %do.body

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %9 = sext i3 %trunc to i32
  %switch.gep = getelementptr inbounds [4 x i16], ptr @switch.table.ath10k_htt_rx_tx_compl_ind, i32 0, i32 %9
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %10)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %do.body

do.body:                                          ; preds = %switch.lookup, %sw.default
  %.sink = phi i16 [ 3, %sw.default ], [ %switch.load, %switch.lookup ]
  %status2 = getelementptr inbounds %struct.htt_tx_done, ptr %tx_done, i32 0, i32 1
  %11 = ptrtoint ptr %status2 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %.sink, ptr %status2, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %12 = load i32, ptr @ath10k_debug_mask, align 4
  %and8 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %lor.lhs.false, label %do.body.if.then_crit_edge

do.body.if.then_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_rx_tx_compl_ind, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !313

if.then:                                          ; preds = %lor.lhs.false, %do.body.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  %num_msdus = getelementptr inbounds %struct.htt_data_tx_completion, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %num_msdus to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_msdus, align 1
  %conv10 = zext i8 %14 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 8, ptr noundef nonnull @.str.24, i32 noundef %conv10) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %num_msdus11 = getelementptr inbounds %struct.htt_data_tx_completion, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %num_msdus11 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %num_msdus11, align 1
  %msdus12 = getelementptr inbounds %struct.htt_resp, ptr %1, i32 0, i32 1, i32 0, i32 2
  %hw_ops.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 45, i32 18
  %17 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw_ops.i, align 4
  %is_rssi_enable.i = getelementptr inbounds %struct.ath10k_hw_ops, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %is_rssi_enable.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %is_rssi_enable.i, align 4
  %tobool.not.i270 = icmp eq ptr %20, null
  br i1 %tobool.not.i270, label %do.end.if.end19_crit_edge, label %ath10k_is_rssi_enable.exit

do.end.if.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

ath10k_is_rssi_enable.exit:                       ; preds = %do.end
  %call.i271 = tail call i32 %20(ptr noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i271)
  %tobool14.not = icmp eq i32 %call.i271, 0
  br i1 %tobool14.not, label %ath10k_is_rssi_enable.exit.if.end19_crit_edge, label %if.then16

ath10k_is_rssi_enable.exit.if.end19_crit_edge:    ; preds = %ath10k_is_rssi_enable.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.then16:                                        ; preds = %ath10k_is_rssi_enable.exit
  %21 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_ops.i, align 4
  %tx_data_rssi_pad_bytes.i = getelementptr inbounds %struct.ath10k_hw_ops, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %tx_data_rssi_pad_bytes.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_data_rssi_pad_bytes.i, align 4
  %tobool.not.i274 = icmp eq ptr %24, null
  br i1 %tobool.not.i274, label %if.then16.if.end19_crit_edge, label %if.then.i276

if.then16.if.end19_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.then.i276:                                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  %call.i275 = tail call i32 %24(ptr noundef %1) #16
  br label %if.end19

if.end19:                                         ; preds = %if.then.i276, %if.then16.if.end19_crit_edge, %ath10k_is_rssi_enable.exit.if.end19_crit_edge, %do.end.if.end19_crit_edge
  %tobool14.not301 = phi i1 [ true, %ath10k_is_rssi_enable.exit.if.end19_crit_edge ], [ false, %if.then16.if.end19_crit_edge ], [ false, %if.then.i276 ], [ true, %do.end.if.end19_crit_edge ]
  %htt_pad.0 = phi i32 [ 0, %ath10k_is_rssi_enable.exit.if.end19_crit_edge ], [ 0, %if.then16.if.end19_crit_edge ], [ %call.i275, %if.then.i276 ], [ 0, %do.end.if.end19_crit_edge ]
  %conv20 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp302.not = icmp eq i8 %16, 0
  br i1 %cmp302.not, label %if.end19.for.end_crit_edge, label %for.body.lr.ph

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end19
  %and26 = and i32 %conv20, 1
  %add = add i32 %htt_pad.0, %conv20
  %ack_rssi = getelementptr inbounds %struct.htt_tx_done, ptr %tx_done, i32 0, i32 2
  %dev_type = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 136, i32 1
  %txdone_fifo = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 18
  %out = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 18, i32 0, i32 0, i32 1
  %mask = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 18, i32 0, i32 0, i32 2
  %data57 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 18, i32 0, i32 0, i32 4
  %status76 = getelementptr inbounds %struct.htt_tx_done, ptr %tx_done, i32 0, i32 1
  %add.add30 = add i32 %add, %and26
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0303 = phi i32 [ 0, %for.body.lr.ph ], [ %inc81, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %msdus12, i32 %i.0303
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx, align 2
  %27 = call i16 @llvm.bswap.i16(i16 %26)
  %28 = ptrtoint ptr %tx_done to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %tx_done, align 2
  br i1 %tobool14.not301, label %for.body.if.end41_crit_edge, label %if.then24

for.body.if.end41_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

if.then24:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %add31 = add i32 %add.add30, %i.0303
  %arrayidx32 = getelementptr i16, ptr %msdus12, i32 %add31
  %29 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx32, align 2
  %31 = lshr i16 %30, 8
  %conv33 = trunc i16 %31 to i8
  %32 = ptrtoint ptr %ack_rssi to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv33, ptr %ack_rssi, align 2
  br label %if.end41

if.end41:                                         ; preds = %if.then24, %for.body.if.end41_crit_edge
  %33 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp42 = icmp eq i32 %34, 1
  br i1 %cmp42, label %if.then44, label %if.else46

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  %call45 = call i32 @ath10k_txrx_tx_unref(ptr noundef %htt1, ptr noundef nonnull %tx_done) #16
  br label %for.inc

if.else46:                                        ; preds = %if.end41
  %35 = ptrtoint ptr %txdone_fifo to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %txdone_fifo, align 4
  %37 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %out, align 4
  %sub = sub i32 %36, %38
  %39 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %40)
  %cmp52.not = icmp ugt i32 %sub, %40
  br i1 %cmp52.not, label %if.then73.critedge, label %if.then56

if.then56:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #18
  %41 = ptrtoint ptr %data57 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data57, align 4
  %and60 = and i32 %40, %36
  %arrayidx61 = getelementptr %struct.htt_tx_done, ptr %42, i32 %and60
  %43 = call ptr @memmove(ptr %arrayidx61, ptr %tx_done, i32 6)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !317
  %44 = ptrtoint ptr %txdone_fifo to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %txdone_fifo, align 4
  %inc = add i32 %45, 1
  store i32 %inc, ptr %txdone_fifo, align 4
  br label %for.inc

if.then73.critedge:                               ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #18
  %conv75 = zext i16 %27 to i32
  %46 = ptrtoint ptr %status76 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %status76, align 2
  %conv77 = zext i16 %47 to i32
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.25, i32 noundef %conv75, i32 noundef %conv77) #16
  %call78 = call i32 @ath10k_txrx_tx_unref(ptr noundef %htt1, ptr noundef nonnull %tx_done) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then73.critedge, %if.then56, %if.then44
  %inc81 = add nuw nsw i32 %i.0303, 1
  %exitcond.not = icmp eq i32 %inc81, %conv20
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end19.for.end_crit_edge
  %flags2 = getelementptr inbounds %struct.htt_resp, ptr %1, i32 0, i32 1, i32 0, i32 1
  %48 = ptrtoint ptr %flags2 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %flags2, align 1
  %50 = and i8 %49, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool84.not = icmp eq i8 %50, 0
  br i1 %tobool84.not, label %for.end.cleanup193_crit_edge, label %if.end86

for.end.cleanup193_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup193

if.end86:                                         ; preds = %for.end
  %and88 = and i32 %conv20, 1
  %cond = add nuw nsw i32 %and88, %conv20
  %conv93 = trunc i32 %cond to i16
  %not.tobool14.not301 = xor i1 %tobool14.not301, true
  %conv99 = zext i1 %not.tobool14.not301 to i16
  %ppdu_info_offset.0 = shl nuw nsw i16 %conv93, %conv99
  %51 = and i8 %49, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool104.not = icmp eq i8 %51, 0
  %add107 = add nuw nsw i16 %ppdu_info_offset.0, 2
  %ppdu_info_offset.1 = select i1 %tobool104.not, i16 %ppdu_info_offset.0, i16 %add107
  %idxprom = zext i16 %ppdu_info_offset.1 to i32
  %arrayidx110 = getelementptr i16, ptr %msdus12, i32 %idxprom
  %52 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %arrayidx110, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %53)
  %cmp132305.not = icmp ult i32 %53, 16777216
  br i1 %cmp132305.not, label %if.end86.cleanup193_crit_edge, label %for.body134.lr.ph

if.end86.cleanup193_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup193

for.body134.lr.ph:                                ; preds = %if.end86
  %54 = lshr i32 %53, 24
  %ppdu_dur136 = getelementptr inbounds %struct.htt_data_tx_compl_ppdu_dur, ptr %arrayidx110, i32 0, i32 1
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 82
  br label %for.body134

for.body134:                                      ; preds = %cleanup.for.body134_crit_edge, %for.body134.lr.ph
  %i.1306 = phi i32 [ 0, %for.body134.lr.ph ], [ %inc191, %cleanup.for.body134_crit_edge ]
  %arrayidx137 = getelementptr [0 x %struct.htt_data_tx_ppdu_dur], ptr %ppdu_dur136, i32 0, i32 %i.1306
  %55 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %arrayidx137, align 1
  %57 = call i32 @llvm.bswap.i32(i32 %56)
  %58 = call i32 @llvm.read_register.i32(metadata !298) #16
  %and.i.i.i.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %61, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !315
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %for.body134.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.body134.rcu_read_lock.exit_crit_edge:         ; preds = %for.body134
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.body134
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 696, ptr noundef nonnull @.str.27) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.body134.rcu_read_lock.exit_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef %data_lock) #16
  %conv158 = and i32 %57, 65535
  %call159 = call ptr @ath10k_peer_find_by_id(ptr noundef %ar, i32 noundef %conv158) #16
  %tobool160.not = icmp eq ptr %call159, null
  br i1 %tobool160.not, label %rcu_read_lock.exit.if.then163_crit_edge, label %lor.lhs.false161

rcu_read_lock.exit.if.then163_crit_edge:          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then163

lor.lhs.false161:                                 ; preds = %rcu_read_lock.exit
  %sta = getelementptr inbounds %struct.ath10k_peer, ptr %call159, i32 0, i32 2
  %62 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sta, align 4
  %tobool162.not = icmp eq ptr %63, null
  br i1 %tobool162.not, label %lor.lhs.false161.if.then163_crit_edge, label %do.end180

lor.lhs.false161.if.then163_crit_edge:            ; preds = %lor.lhs.false161
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then163

if.then163:                                       ; preds = %lor.lhs.false161.if.then163_crit_edge, %rcu_read_lock.exit.if.then163_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #16
  %call.i278 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i278, label %if.then163.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i281

if.then163.rcu_read_unlock.exit_crit_edge:        ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i281:                               ; preds = %if.then163
  %call1.i279 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i279)
  %tobool.not.i280 = icmp eq i32 %call1.i279, 0
  br i1 %tobool.not.i280, label %land.lhs.true.i281.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i283

land.lhs.true.i281.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i281
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i283:                              ; preds = %land.lhs.true.i281
  %.b4.i282 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i282, label %land.lhs.true2.i283.rcu_read_unlock.exit_crit_edge, label %if.then.i284

land.lhs.true2.i283.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i283
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i284:                                     ; preds = %land.lhs.true2.i283
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i284, %land.lhs.true2.i283.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i281.rcu_read_unlock.exit_crit_edge, %if.then163.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !316
  br label %cleanup

do.end180:                                        ; preds = %lor.lhs.false161
  %and182 = lshr i32 %57, 16
  %64 = trunc i32 %and182 to i8
  %conv185 = and i8 %64, 15
  %tx_duration186 = getelementptr [0 x %struct.htt_data_tx_ppdu_dur], ptr %ppdu_dur136, i32 0, i32 %i.1306, i32 1
  %65 = ptrtoint ptr %tx_duration186 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %tx_duration186, align 1
  %67 = call i32 @llvm.bswap.i32(i32 %66)
  call void @ieee80211_sta_register_airtime(ptr noundef nonnull %63, i8 noundef zeroext %conv185, i32 noundef %67, i32 noundef 0) #16
  call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #16
  %call.i287 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i287, label %do.end180.rcu_read_unlock.exit297_crit_edge, label %land.lhs.true.i290

do.end180.rcu_read_unlock.exit297_crit_edge:      ; preds = %do.end180
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit297

land.lhs.true.i290:                               ; preds = %do.end180
  %call1.i288 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i288)
  %tobool.not.i289 = icmp eq i32 %call1.i288, 0
  br i1 %tobool.not.i289, label %land.lhs.true.i290.rcu_read_unlock.exit297_crit_edge, label %land.lhs.true2.i292

land.lhs.true.i290.rcu_read_unlock.exit297_crit_edge: ; preds = %land.lhs.true.i290
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit297

land.lhs.true2.i292:                              ; preds = %land.lhs.true.i290
  %.b4.i291 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i291, label %land.lhs.true2.i292.rcu_read_unlock.exit297_crit_edge, label %if.then.i293

land.lhs.true2.i292.rcu_read_unlock.exit297_crit_edge: ; preds = %land.lhs.true2.i292
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit297

if.then.i293:                                     ; preds = %land.lhs.true2.i292
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_unlock.exit297

rcu_read_unlock.exit297:                          ; preds = %if.then.i293, %land.lhs.true2.i292.rcu_read_unlock.exit297_crit_edge, %land.lhs.true.i290.rcu_read_unlock.exit297_crit_edge, %do.end180.rcu_read_unlock.exit297_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !316
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit297, %rcu_read_unlock.exit
  %68 = call i32 @llvm.read_register.i32(metadata !298) #16
  %and.i.i.i.i.i294 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i.i294 to ptr
  %preempt_count.i.i.i.i295 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i.i.i295 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i.i.i295, align 4
  %sub.i.i.i296 = add i32 %71, -1
  store volatile i32 %sub.i.i.i296, ptr %preempt_count.i.i.i.i295, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %inc191 = add nuw nsw i32 %i.1306, 1
  %exitcond309.not = icmp eq i32 %inc191, %54
  br i1 %exitcond309.not, label %cleanup.cleanup193_crit_edge, label %cleanup.for.body134_crit_edge

cleanup.for.body134_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body134

cleanup.cleanup193_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup193

cleanup193:                                       ; preds = %cleanup.cleanup193_crit_edge, %if.end86.cleanup193_crit_edge, %for.end.cleanup193_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tx_done) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_dbg_dump(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ath10k_htt_stats(ptr noundef %ar, ptr noundef %buf, i32 noundef %buf_len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_htt_stats, i32 0, i32 1), ptr blockaddress(@trace_ath10k_htt_stats, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !298) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !309

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !298) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !318
  %call42 = tail call i32 @__traceiter_ath10k_htt_stats(ptr noundef null, ptr noundef %ar, ptr noundef %buf, i32 noundef %buf_len) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !319
  %13 = tail call i32 @llvm.read_register.i32(metadata !298) #16
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !298) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !309

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !298) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !320
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_htt_stats, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_htt_stats, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ath10k_htt_stats.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_ath10k_htt_stats.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 232, ptr noundef nonnull @.str.31) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !321
  %31 = tail call i32 @llvm.read_register.i32(metadata !298) #16
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_htt_rx_addba(ptr noundef %ar, ptr nocapture noundef readonly %resp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.htt_resp, ptr %resp, i32 0, i32 1
  %info01 = getelementptr inbounds %struct.htt_rx_addba, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %info01 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %info01, align 1
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %and = and i16 %3, 15
  %4 = lshr i16 %3, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %5 = load i32, ptr @ath10k_debug_mask, align 4
  %and7 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_rx_addba, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !313

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  %conv9 = zext i16 %and to i32
  %conv10 = zext i16 %4 to i32
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %0, align 1
  %conv11 = zext i8 %7 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 8, ptr noundef nonnull @.str.33, i32 noundef %conv9, i32 noundef %conv10, i32 noundef %conv11) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #16
  %conv12 = zext i16 %4 to i32
  %call13 = tail call ptr @ath10k_peer_find_by_id(ptr noundef %ar, i32 noundef %conv12) #16
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.then15, label %if.end18

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.34, i32 noundef %conv12) #16
  br label %cleanup

if.end18:                                         ; preds = %do.end
  %vdev_id = getelementptr inbounds %struct.ath10k_peer, ptr %call13, i32 0, i32 4
  %8 = ptrtoint ptr %vdev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vdev_id, align 4
  %call19 = tail call ptr @ath10k_get_arvif(ptr noundef %ar, i32 noundef %9) #16
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then21, label %do.body25

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %vdev_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vdev_id, align 4
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.35, i32 noundef %11) #16
  br label %cleanup

do.body25:                                        ; preds = %if.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %12 = load i32, ptr @ath10k_debug_mask, align 4
  %and26 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %lor.lhs.false28, label %do.body25.if.then31_crit_edge

do.body25.if.then31_crit_edge:                    ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then31

lor.lhs.false28:                                  ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_rx_addba, %if.then31)) #16
          to label %do.end37 [label %if.then31], !srcloc !313

if.then31:                                        ; preds = %lor.lhs.false28, %do.body25.if.then31_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  %addr = getelementptr inbounds %struct.ath10k_peer, ptr %call13, i32 0, i32 5
  %conv32 = zext i16 %and to i32
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %0, align 1
  %conv34 = zext i8 %14 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 8, ptr noundef nonnull @.str.36, ptr noundef %addr, i32 noundef %conv32, i32 noundef %conv34) #16
  br label %do.end37

do.end37:                                         ; preds = %if.then31, %lor.lhs.false28
  %vif = getelementptr inbounds %struct.ath10k_vif, ptr %call19, i32 0, i32 13
  %15 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vif, align 4
  %addr38 = getelementptr inbounds %struct.ath10k_peer, ptr %call13, i32 0, i32 5
  %conv.i = zext i16 %and to i32
  tail call void @ieee80211_manage_rx_ba_offl(ptr noundef %16, ptr noundef %addr38, i32 noundef %conv.i) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %if.then21, %if.then15
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_htt_rx_delba(ptr noundef %ar, ptr nocapture noundef readonly %resp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.htt_resp, ptr %resp, i32 0, i32 1
  %info01 = getelementptr inbounds %struct.htt_rx_delba, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %info01 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %info01, align 1
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %and = and i16 %3, 15
  %4 = lshr i16 %3, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %5 = load i32, ptr @ath10k_debug_mask, align 4
  %and7 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_rx_delba, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !313

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  %conv9 = zext i16 %and to i32
  %conv10 = zext i16 %4 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 8, ptr noundef nonnull @.str.38, i32 noundef %conv9, i32 noundef %conv10) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #16
  %conv11 = zext i16 %4 to i32
  %call12 = tail call ptr @ath10k_peer_find_by_id(ptr noundef %ar, i32 noundef %conv11) #16
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.then14, label %if.end17

if.then14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.34, i32 noundef %conv11) #16
  br label %cleanup

if.end17:                                         ; preds = %do.end
  %vdev_id = getelementptr inbounds %struct.ath10k_peer, ptr %call12, i32 0, i32 4
  %6 = ptrtoint ptr %vdev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vdev_id, align 4
  %call18 = tail call ptr @ath10k_get_arvif(ptr noundef %ar, i32 noundef %7) #16
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.then20, label %do.body24

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %vdev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vdev_id, align 4
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.35, i32 noundef %9) #16
  br label %cleanup

do.body24:                                        ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %10 = load i32, ptr @ath10k_debug_mask, align 4
  %and25 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %lor.lhs.false27, label %do.body24.if.then30_crit_edge

do.body24.if.then30_crit_edge:                    ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then30

lor.lhs.false27:                                  ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_rx_delba, %if.then30)) #16
          to label %do.end34 [label %if.then30], !srcloc !313

if.then30:                                        ; preds = %lor.lhs.false27, %do.body24.if.then30_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  %addr = getelementptr inbounds %struct.ath10k_peer, ptr %call12, i32 0, i32 5
  %conv31 = zext i16 %and to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 8, ptr noundef nonnull @.str.39, ptr noundef %addr, i32 noundef %conv31) #16
  br label %do.end34

do.end34:                                         ; preds = %if.then30, %lor.lhs.false27
  %vif = getelementptr inbounds %struct.ath10k_vif, ptr %call18, i32 0, i32 13
  %11 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vif, align 4
  %addr35 = getelementptr inbounds %struct.ath10k_peer, ptr %call12, i32 0, i32 5
  %13 = or i16 %and, 16
  %add.i = zext i16 %13 to i32
  tail call void @ieee80211_manage_rx_ba_offl(ptr noundef %12, ptr noundef %addr35, i32 noundef %add.i) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %if.then20, %if.then14
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ath10k_htt_pktlog(ptr noundef %ar, ptr noundef %buf, i16 noundef zeroext %buf_len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_htt_pktlog, i32 0, i32 1), ptr blockaddress(@trace_ath10k_htt_pktlog, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !298) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !309

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !298) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !322
  %call42 = tail call i32 @__traceiter_ath10k_htt_pktlog(ptr noundef null, ptr noundef %ar, ptr noundef %buf, i16 noundef zeroext %buf_len) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !323
  %13 = tail call i32 @llvm.read_register.i32(metadata !298) #16
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !298) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !309

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !298) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !320
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_htt_pktlog, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_htt_pktlog, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ath10k_htt_pktlog.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_ath10k_htt_pktlog.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 292, ptr noundef nonnull @.str.31) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !321
  %31 = tail call i32 @llvm.read_register.i32(metadata !298) #16
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_fetch_10_2_tx_stats(ptr noundef %ar, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %peer_tx_stats = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 123
  %log_type1 = getelementptr inbounds %struct.ath10k_pktlog_hdr, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %log_type1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %log_type1, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %1)
  %cmp.not = icmp eq i16 %1, 512
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr %struct.ath10k_pktlog_hdr, ptr %data, i32 12, i32 2
  %tx_ppdu_cnt = getelementptr %struct.ath10k_pktlog_hdr, ptr %data, i32 16, i32 2
  %2 = ptrtoint ptr %tx_ppdu_cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_ppdu_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %peer_id5 = getelementptr inbounds %struct.ath10k_10_2_peer_tx_stats, ptr %add.ptr, i32 0, i32 10
  %4 = ptrtoint ptr %peer_id5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %peer_id5, align 1
  %conv6 = zext i8 %5 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !298) #16
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !315
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.end4.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end4.rcu_read_lock.exit_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end4
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 696, ptr noundef nonnull @.str.27) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end4.rcu_read_lock.exit_crit_edge
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #16
  %call = tail call ptr @ath10k_peer_find_by_id(ptr noundef %ar, i32 noundef %conv6) #16
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %rcu_read_lock.exit.if.then10_crit_edge, label %lor.lhs.false

rcu_read_lock.exit.if.then10_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then10

lor.lhs.false:                                    ; preds = %rcu_read_lock.exit
  %sta8 = getelementptr inbounds %struct.ath10k_peer, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %sta8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sta8, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %lor.lhs.false.if.then10_crit_edge, label %for.cond.preheader

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then10

for.cond.preheader:                               ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %tx_ppdu_cnt to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tx_ppdu_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp15103.not = icmp eq i8 %13, 0
  br i1 %cmp15103.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %success_bytes = getelementptr %struct.ath10k_pktlog_hdr, ptr %data, i32 13
  %retry_bytes = getelementptr %struct.ath10k_pktlog_hdr, ptr %data, i32 14
  %retry_bytes20 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 123, i32 1
  %failed_bytes = getelementptr %struct.ath10k_pktlog_hdr, ptr %data, i32 15
  %failed_bytes23 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 123, i32 2
  %ratecode25 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 123, i32 3
  %flags = getelementptr %struct.ath10k_pktlog_hdr, ptr %data, i32 15, i32 4
  %flags27 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 123, i32 4
  %success_pkts = getelementptr %struct.ath10k_pktlog_hdr, ptr %data, i32 12, i32 4
  %succ_pkts = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 123, i32 6
  %retry_pkts = getelementptr %struct.ath10k_pktlog_hdr, ptr %data, i32 13, i32 4
  %retry_pkts32 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 123, i32 7
  %failed_pkts = getelementptr %struct.ath10k_pktlog_hdr, ptr %data, i32 14, i32 4
  %failed_pkts35 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 123, i32 8
  br label %for.body

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %rcu_read_lock.exit.if.then10_crit_edge
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.40, i32 noundef %conv6) #16
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #16
  %call.i82 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i82, label %if.then10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i85

if.then10.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i85:                                ; preds = %if.then10
  %call1.i83 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i83)
  %tobool.not.i84 = icmp eq i32 %call1.i83, 0
  br i1 %tobool.not.i84, label %land.lhs.true.i85.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i87

land.lhs.true.i85.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i85
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i87:                               ; preds = %land.lhs.true.i85
  %.b4.i86 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i86, label %land.lhs.true2.i87.rcu_read_unlock.exit_crit_edge, label %if.then.i88

land.lhs.true2.i87.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i87
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i88:                                      ; preds = %land.lhs.true2.i87
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i88, %land.lhs.true2.i87.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i85.rcu_read_unlock.exit_crit_edge, %if.then10.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !316
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0104 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i16], ptr %success_bytes, i32 0, i32 %i.0104
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %arrayidx, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv17 = zext i16 %16 to i32
  %17 = ptrtoint ptr %peer_tx_stats to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv17, ptr %peer_tx_stats, align 4
  %arrayidx18 = getelementptr [4 x i16], ptr %retry_bytes, i32 0, i32 %i.0104
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %arrayidx18, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %conv19 = zext i16 %20 to i32
  %21 = ptrtoint ptr %retry_bytes20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv19, ptr %retry_bytes20, align 4
  %arrayidx21 = getelementptr [4 x i16], ptr %failed_bytes, i32 0, i32 %i.0104
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %arrayidx21, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %conv22 = zext i16 %24 to i32
  %25 = ptrtoint ptr %failed_bytes23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv22, ptr %failed_bytes23, align 4
  %arrayidx24 = getelementptr [4 x i8], ptr %add.ptr, i32 0, i32 %i.0104
  %26 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx24, align 1
  %28 = ptrtoint ptr %ratecode25 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %ratecode25, align 4
  %arrayidx26 = getelementptr [4 x i8], ptr %flags, i32 0, i32 %i.0104
  %29 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx26, align 1
  %31 = ptrtoint ptr %flags27 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %flags27, align 1
  %arrayidx28 = getelementptr [4 x i8], ptr %success_pkts, i32 0, i32 %i.0104
  %32 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %33 to i16
  %34 = ptrtoint ptr %succ_pkts to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv29, ptr %succ_pkts, align 4
  %arrayidx30 = getelementptr [4 x i8], ptr %retry_pkts, i32 0, i32 %i.0104
  %35 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %36 to i16
  %37 = ptrtoint ptr %retry_pkts32 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv31, ptr %retry_pkts32, align 2
  %arrayidx33 = getelementptr [4 x i8], ptr %failed_pkts, i32 0, i32 %i.0104
  %38 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %39 to i16
  %40 = ptrtoint ptr %failed_pkts35 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv34, ptr %failed_pkts35, align 4
  tail call fastcc void @ath10k_update_per_peer_tx_stats(ptr noundef %ar, ptr noundef nonnull %11, ptr noundef %peer_tx_stats)
  %inc = add nuw nsw i32 %i.0104, 1
  %41 = ptrtoint ptr %tx_ppdu_cnt to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %tx_ppdu_cnt, align 1
  %conv14 = zext i8 %42 to i32
  %cmp15 = icmp ult i32 %inc, %conv14
  br i1 %cmp15, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #16
  %call.i91 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i91, label %for.end.rcu_read_unlock.exit101_crit_edge, label %land.lhs.true.i94

for.end.rcu_read_unlock.exit101_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit101

land.lhs.true.i94:                                ; preds = %for.end
  %call1.i92 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i92)
  %tobool.not.i93 = icmp eq i32 %call1.i92, 0
  br i1 %tobool.not.i93, label %land.lhs.true.i94.rcu_read_unlock.exit101_crit_edge, label %land.lhs.true2.i96

land.lhs.true.i94.rcu_read_unlock.exit101_crit_edge: ; preds = %land.lhs.true.i94
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit101

land.lhs.true2.i96:                               ; preds = %land.lhs.true.i94
  %.b4.i95 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i95, label %land.lhs.true2.i96.rcu_read_unlock.exit101_crit_edge, label %if.then.i97

land.lhs.true2.i96.rcu_read_unlock.exit101_crit_edge: ; preds = %land.lhs.true2.i96
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit101

if.then.i97:                                      ; preds = %land.lhs.true2.i96
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_unlock.exit101

rcu_read_unlock.exit101:                          ; preds = %if.then.i97, %land.lhs.true2.i96.rcu_read_unlock.exit101_crit_edge, %land.lhs.true.i94.rcu_read_unlock.exit101_crit_edge, %for.end.rcu_read_unlock.exit101_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !316
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %rcu_read_unlock.exit101, %rcu_read_unlock.exit
  %43 = tail call i32 @llvm.read_register.i32(metadata !298) #16
  %and.i.i.i.i.i98 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i98 to ptr
  %preempt_count.i.i.i.i99 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i99, align 4
  %sub.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i99, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @ath10k_wmi_phymode_str(i32 noundef %mode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %mode)
  %0 = icmp ult i32 %mode, 16
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %switch.gep = getelementptr inbounds [16 x ptr], ptr @switch.table.ath10k_wmi_phymode_str, i32 0, i32 %mode
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.62, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_htt_rx_tx_fetch_confirm(ptr noundef %ar, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %2 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_rx_tx_fetch_confirm, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !313

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 8, ptr noundef nonnull @.str.63) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp = icmp ult i32 %4, 4
  br i1 %cmp, label %do.end.cleanup.sink.split_crit_edge, label %if.end5, !prof !308

do.end.cleanup.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end5:                                          ; preds = %do.end
  %5 = getelementptr inbounds %struct.htt_resp, ptr %1, i32 0, i32 1
  %num_resp_ids6 = getelementptr inbounds %struct.htt_tx_fetch_confirm, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %num_resp_ids6 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %num_resp_ids6, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv = zext i16 %8 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %add)
  %cmp8 = icmp ult i32 %4, %add
  br i1 %cmp8, label %if.end5.cleanup.sink.split_crit_edge, label %if.end17, !prof !308

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end17:                                         ; preds = %if.end5
  %resp_ids = getelementptr inbounds %struct.htt_resp, ptr %1, i32 0, i32 1, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %9 = load i32, ptr @ath10k_debug_mask, align 4
  %and.i = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end17.if.then.i_crit_edge

if.end17.if.then.i_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_rx_tx_fetch_confirm, %if.then.i)) #16
          to label %do.end.i [label %if.then.i], !srcloc !313

if.then.i:                                        ; preds = %lor.lhs.false.i, %if.end17.if.then.i_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 8, ptr noundef nonnull @.str.66, i32 noundef %conv) #16
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp19.i.not = icmp eq i16 %7, 0
  br i1 %cmp19.i.not, label %do.end.i.cleanup_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %i.020.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %resp_ids, i32 %i.020.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %13 = load i32, ptr @ath10k_debug_mask, align 4
  %and2.i = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %for.body.i.if.then6.i_crit_edge

for.body.i.if.then6.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then6.i

lor.lhs.false4.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_rx_tx_fetch_confirm, %if.then6.i)) #16
          to label %for.inc.i [label %if.then6.i], !srcloc !313

if.then6.i:                                       ; preds = %lor.lhs.false4.i, %for.body.i.if.then6.i_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 8, ptr noundef nonnull @.str.67, i32 noundef %12) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %lor.lhs.false4.i
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end5.cleanup.sink.split_crit_edge, %do.end.cleanup.sink.split_crit_edge
  %.str.65.sink = phi ptr [ @.str.64, %do.end.cleanup.sink.split_crit_edge ], [ @.str.65, %if.end5.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull %.str.65.sink) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_htt_rx_tx_mode_switch_ind(ptr noundef %ar, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %2 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_rx_tx_mode_switch_ind, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !313

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 8, ptr noundef nonnull @.str.68) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %cmp = icmp ult i32 %4, 8
  br i1 %cmp, label %if.then4, label %if.end5, !prof !308

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.69) #16
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %5 = getelementptr inbounds %struct.htt_resp, ptr %1, i32 0, i32 1
  %info06 = getelementptr inbounds %struct.htt_tx_mode_switch_ind, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %info06 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %info06, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %info17 = getelementptr inbounds %struct.htt_resp, ptr %1, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %info17 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %info17, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv = zext i16 %8 to i32
  %and8 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %12 = trunc i32 %and8 to i8
  %13 = lshr i32 %conv, 2
  %conv16 = zext i16 %11 to i32
  %and17 = and i32 %conv16, 3
  %14 = lshr i16 %11, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %15 = load i32, ptr @ath10k_debug_mask, align 4
  %and24 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %lor.lhs.false26, label %if.end5.if.then29_crit_edge

if.end5.if.then29_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then29

lor.lhs.false26:                                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_rx_tx_mode_switch_ind, %if.then29)) #16
          to label %do.end37 [label %if.then29], !srcloc !313

if.then29:                                        ; preds = %lor.lhs.false26, %if.end5.if.then29_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  %conv34 = zext i16 %14 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 8, ptr noundef nonnull @.str.70, i32 noundef %conv, i32 noundef %conv16, i32 noundef %and8, i32 noundef %13, i32 noundef %and17, i32 noundef %conv34) #16
  br label %do.end37

do.end37:                                         ; preds = %if.then29, %lor.lhs.false26
  %mul = and i32 %conv, 65532
  %add = add nuw nsw i32 %mul, 8
  %16 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add)
  %cmp39 = icmp ult i32 %17, %add
  br i1 %cmp39, label %if.then47, label %if.end48, !prof !308

if.then47:                                        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.71) #16
  br label %cleanup

if.end48:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and17)
  %switch = icmp ult i32 %and17, 2
  br i1 %switch, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.72, i32 noundef %and17) #16
  br label %cleanup

sw.epilog:                                        ; preds = %if.end48
  br i1 %tobool9.not, label %sw.epilog.cleanup_crit_edge, label %if.end51

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end51:                                         ; preds = %sw.epilog
  %tx_q_state = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 27
  %18 = ptrtoint ptr %tx_q_state to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %12, ptr %tx_q_state, align 8
  %mode56 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 27, i32 6
  %19 = ptrtoint ptr %mode56 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and17, ptr %mode56, align 4
  %num_push_allowed = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 27, i32 3
  %20 = ptrtoint ptr %num_push_allowed to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %14, ptr %num_push_allowed, align 4
  %21 = tail call i32 @llvm.read_register.i32(metadata !298) #16
  %and.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !315
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.end51.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end51.rcu_read_lock.exit_crit_edge:            ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end51
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 696, ptr noundef nonnull @.str.27) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end51.rcu_read_lock.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %8)
  %cmp59193.not = icmp ult i16 %8, 4
  br i1 %cmp59193.not, label %rcu_read_lock.exit.for.end_crit_edge, label %for.body.lr.ph

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %rcu_read_lock.exit
  %num_peers = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 27, i32 4
  %num_tids = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 27, i32 5
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 82
  %tx_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 12
  %umax = call i32 @llvm.umax.i32(i32 %13, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0194 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.htt_tx_mode_switch_ind, ptr %5, i32 0, i32 4, i32 %i.0194
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %arrayidx, align 1
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  %and63 = and i16 %27, 4095
  %28 = lshr i16 %27, 12
  %conv69 = trunc i16 %28 to i8
  %conv70 = zext i16 %and63 to i32
  %29 = ptrtoint ptr %num_peers to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %num_peers, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %and63, i16 %30)
  %cmp74.not = icmp ult i16 %and63, %30
  %conv83 = zext i16 %28 to i32
  br i1 %cmp74.not, label %lor.lhs.false82, label %for.body.if.then95_crit_edge, !prof !309

for.body.if.then95_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then95

lor.lhs.false82:                                  ; preds = %for.body
  %31 = ptrtoint ptr %num_tids to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %num_tids, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %32)
  %cmp87.not = icmp ult i16 %28, %32
  br i1 %cmp87.not, label %if.end98, label %lor.lhs.false82.if.then95_crit_edge, !prof !309

lor.lhs.false82.if.then95_crit_edge:              ; preds = %lor.lhs.false82
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then95

if.then95:                                        ; preds = %lor.lhs.false82.if.then95_crit_edge, %for.body.if.then95_crit_edge
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.73, i32 noundef %conv70, i32 noundef %conv83) #16
  br label %for.inc

if.end98:                                         ; preds = %lor.lhs.false82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #16
  %call99 = tail call ptr @ath10k_mac_txq_lookup(ptr noundef %ar, i16 noundef zeroext %and63, i8 noundef zeroext %conv69) #16
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #16
  %tobool101.not = icmp eq ptr %call99, null
  br i1 %tobool101.not, label %if.then110, label %if.end113, !prof !308

if.then110:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.74, i32 noundef %conv70, i32 noundef %conv83) #16
  br label %for.inc

if.end113:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #16
  %num_max_msdus = getelementptr %struct.htt_tx_mode_switch_ind, ptr %5, i32 0, i32 4, i32 %i.0194, i32 1
  %33 = ptrtoint ptr %num_max_msdus to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %num_max_msdus, align 1
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  %conv115 = zext i16 %35 to i32
  %num_push_allowed116 = getelementptr inbounds %struct.ieee80211_txq, ptr %call99, i32 2
  %36 = ptrtoint ptr %num_push_allowed116 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv115, ptr %num_push_allowed116, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #16
  br label %for.inc

for.inc:                                          ; preds = %if.end113, %if.then110, %if.then95
  %inc = add nuw nsw i32 %i.0194, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i182 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i182, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i185

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i185:                               ; preds = %for.end
  %call1.i183 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i183)
  %tobool.not.i184 = icmp eq i32 %call1.i183, 0
  br i1 %tobool.not.i184, label %land.lhs.true.i185.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i187

land.lhs.true.i185.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i185
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i187:                              ; preds = %land.lhs.true.i185
  %.b4.i186 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i186, label %land.lhs.true2.i187.rcu_read_unlock.exit_crit_edge, label %if.then.i188

land.lhs.true2.i187.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i187
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i188:                                     ; preds = %land.lhs.true2.i187
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i188, %land.lhs.true2.i187.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i185.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !316
  %37 = tail call i32 @llvm.read_register.i32(metadata !298) #16
  %and.i.i.i.i.i189 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i189 to ptr
  %preempt_count.i.i.i.i190 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i190 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i190, align 4
  %sub.i.i.i = add i32 %40, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i190, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  tail call void @ath10k_mac_tx_push_pending(ptr noundef %ar) #16
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %sw.epilog.cleanup_crit_edge, %sw.default, %if.then47, %if.then4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_htt_rx_pktlog_completion_handler(ptr noundef %ar, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %conv = trunc i32 %3 to i16
  tail call fastcc void @trace_ath10k_htt_pktlog(ptr noundef %ar, ptr noundef %1, i16 noundef zeroext %conv)
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_htt_rx_hl_indication(ptr noundef %ar, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %htt1 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44
  %rx_indication_head = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp21 = icmp sgt i32 %budget, 0
  br i1 %cmp21, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %qlen.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 2, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %quota.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = tail call ptr @skb_dequeue(ptr noundef %rx_indication_head) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end:                                           ; preds = %for.body
  %data = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = getelementptr inbounds %struct.htt_resp, ptr %1, i32 0, i32 1
  %call2 = tail call fastcc zeroext i1 @ath10k_htt_rx_proc_rx_ind_hl(ptr noundef %htt1, ptr noundef %2, ptr noundef nonnull %call, i32 noundef 1, i32 noundef 0)
  br i1 %call2, label %if.then4, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call, i32 noundef 1) #16
  br label %do.body

do.body:                                          ; preds = %if.then4, %if.end.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %3 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %do.body.if.then8_crit_edge

do.body.if.then8_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then8

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_rx_hl_indication, %if.then8)) #16
          to label %for.inc [label %if.then8], !srcloc !313

if.then8:                                         ; preds = %lor.lhs.false, %do.body.if.then8_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qlen.i, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 8, ptr noundef nonnull @.str.16, i32 noundef %5) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %lor.lhs.false
  %inc = add nuw nsw i32 %quota.022, 1
  %exitcond.not = icmp eq i32 %inc, %budget
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %quota.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %quota.022, %for.body.for.end_crit_edge ], [ %budget, %for.inc.for.end_crit_edge ]
  ret i32 %quota.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ath10k_htt_rx_proc_rx_ind_hl(ptr nocapture noundef readonly %htt, ptr nocapture noundef readonly %rx, ptr noundef %skb, i32 noundef %check_pn_type, i32 noundef %tkip_mic_type) unnamed_addr #0 align 64 {
entry:
  %def.i = alloca %struct.cfg80211_chan_def, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  %peer_id3 = getelementptr inbounds %struct.htt_rx_indication_hdr, ptr %rx, i32 0, i32 1
  %2 = ptrtoint ptr %peer_id3 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %peer_id3, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %5 = ptrtoint ptr %rx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rx, align 1
  %7 = and i8 %6, 31
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #16
  %conv5 = zext i16 %4 to i32
  %call = tail call ptr @ath10k_peer_find_by_id(ptr noundef %1, i32 noundef %conv5) #16
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #16
  %tobool.not = icmp eq ptr %call, null
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp.not = icmp eq i16 %3, -1
  %or.cond = select i1 %tobool.not.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.77, i32 noundef %conv5) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %info1 = getelementptr inbounds %struct.htt_rx_indication_hdr, ptr %rx, i32 0, i32 2
  %8 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %info1, align 1
  %10 = and i32 %9, 255
  %fw_desc17 = getelementptr inbounds %struct.htt_rx_indication_hl, ptr %rx, i32 0, i32 3
  %len = getelementptr inbounds %struct.htt_rx_indication_hl, ptr %rx, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %len, align 1
  %13 = ptrtoint ptr %fw_desc17 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %fw_desc17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool18.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool18.not, label %if.end26, label %do.body

do.body:                                          ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %14 = load i32, ptr @ath10k_debug_mask, align 4
  %and20 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %lor.lhs.false, label %do.body.if.then24_crit_edge

do.body.if.then24_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then24

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_rx_proc_rx_ind_hl, %if.then24)) #16
          to label %cleanup [label %if.then24], !srcloc !313

if.then24:                                        ; preds = %lor.lhs.false, %do.body.if.then24_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.78) #16
  br label %cleanup

if.end26:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp27 = icmp ugt i32 %10, 1
  br i1 %cmp27, label %if.then29, label %if.end26.if.end30_crit_edge

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.79, i32 noundef %10) #16
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end26.if.end30_crit_edge
  %mpdu_range_status = getelementptr i8, ptr %rx, i32 52
  %15 = ptrtoint ptr %mpdu_range_status to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mpdu_range_status, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.136)
  switch i8 %16, label %do.body40 [
    i8 1, label %if.end30.if.end52_crit_edge
    i8 9, label %if.end30.if.end52_crit_edge445
  ]

if.end30.if.end52_crit_edge445:                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

if.end30.if.end52_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

do.body40:                                        ; preds = %if.end30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %18 = load i32, ptr @ath10k_debug_mask, align 4
  %and41 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %lor.lhs.false43, label %do.body40.if.then46_crit_edge

do.body40.if.then46_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then46

lor.lhs.false43:                                  ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_rx_proc_rx_ind_hl, %if.then46)) #16
          to label %cleanup [label %if.then46], !srcloc !313

if.then46:                                        ; preds = %lor.lhs.false43, %do.body40.if.then46_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  %19 = ptrtoint ptr %mpdu_range_status to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mpdu_range_status, align 1
  %conv48 = zext i8 %20 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.80, i32 noundef %conv48) #16
  br label %cleanup

if.end52:                                         ; preds = %if.end30.if.end52_crit_edge, %if.end30.if.end52_crit_edge445
  %arrayidx = getelementptr %struct.htt_rx_indication_hl, ptr %rx, i32 0, i32 4, i32 %10
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %arrayidx, align 1
  %23 = lshr i32 %22, 8
  %.lobit = and i32 %23, 1
  %24 = xor i32 %.lobit, 1
  %arrayidx59 = getelementptr %struct.ath10k_peer, ptr %call, i32 0, i32 12, i32 %24
  %25 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx59, align 4
  %flags = getelementptr inbounds %struct.htt_rx_indication_hl, ptr %rx, i32 0, i32 3, i32 3
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %flags, align 1
  %29 = and i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool64.not = icmp eq i8 %29, 0
  %pn_len = getelementptr %struct.ath10k_peer, ptr %call, i32 0, i32 12, i32 %24, i32 1
  %30 = ptrtoint ptr %pn_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pn_len, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %31, label %if.end52.ath10k_htt_rx_mpdu_desc_pn_hl.exit_crit_edge [
    i32 48, label %sw.bb.i
    i32 24, label %sw.bb2.i
  ]

if.end52.ath10k_htt_rx_mpdu_desc_pn_hl.exit_crit_edge: ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_mpdu_desc_pn_hl.exit

sw.bb.i:                                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #18
  %pn_31_0.i = getelementptr inbounds %struct.htt_hl_rx_desc, ptr %arrayidx, i32 0, i32 1
  %33 = ptrtoint ptr %pn_31_0.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %pn_31_0.i, align 1
  %u0.i = getelementptr inbounds %struct.htt_hl_rx_desc, ptr %arrayidx, i32 0, i32 2
  %35 = ptrtoint ptr %u0.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %u0.i, align 1
  %37 = and i32 %36, -65536
  %38 = zext i32 %37 to i64
  %39 = zext i32 %34 to i64
  %40 = shl nuw i64 %39, 32
  %41 = or i64 %40, %38
  %42 = tail call i64 @llvm.bswap.i64(i64 %41) #16
  %new_pn.sroa.0.sroa.0.0.extract.shift = lshr i64 %42, 32
  %new_pn.sroa.0.sroa.0.0.extract.trunc = trunc i64 %new_pn.sroa.0.sroa.0.0.extract.shift to i32
  %new_pn.sroa.0.sroa.6.0.extract.trunc = trunc i64 %42 to i32
  br label %ath10k_htt_rx_mpdu_desc_pn_hl.exit

sw.bb2.i:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #18
  %pn_31_03.i = getelementptr inbounds %struct.htt_hl_rx_desc, ptr %arrayidx, i32 0, i32 1
  %43 = ptrtoint ptr %pn_31_03.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %pn_31_03.i, align 1
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #16
  br label %ath10k_htt_rx_mpdu_desc_pn_hl.exit

ath10k_htt_rx_mpdu_desc_pn_hl.exit:               ; preds = %sw.bb2.i, %sw.bb.i, %if.end52.ath10k_htt_rx_mpdu_desc_pn_hl.exit_crit_edge
  %new_pn.sroa.0.sroa.0.0 = phi i32 [ 0, %if.end52.ath10k_htt_rx_mpdu_desc_pn_hl.exit_crit_edge ], [ %45, %sw.bb2.i ], [ %new_pn.sroa.0.sroa.0.0.extract.trunc, %sw.bb.i ]
  %new_pn.sroa.0.sroa.6.0 = phi i32 [ -1, %if.end52.ath10k_htt_rx_mpdu_desc_pn_hl.exit_crit_edge ], [ -1, %sw.bb2.i ], [ %new_pn.sroa.0.sroa.6.0.extract.trunc, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %check_pn_type)
  %cmp67 = icmp eq i32 %check_pn_type, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %7)
  %cmp70 = icmp ugt i8 %7, 15
  %or.cond422 = select i1 %cmp67, i1 %cmp70, i1 false
  br i1 %or.cond422, label %if.then72, label %ath10k_htt_rx_mpdu_desc_pn_hl.exit.if.end80_crit_edge

ath10k_htt_rx_mpdu_desc_pn_hl.exit.if.end80_crit_edge: ; preds = %ath10k_htt_rx_mpdu_desc_pn_hl.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end80

if.then72:                                        ; preds = %ath10k_htt_rx_mpdu_desc_pn_hl.exit
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #16
  %call74 = tail call fastcc zeroext i1 @ath10k_htt_rx_pn_check_replay_hl(ptr noundef %1, ptr noundef nonnull %call, ptr noundef %rx)
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #16
  br i1 %call74, label %if.then72.cleanup_crit_edge, label %if.then72.if.end80_crit_edge

if.then72.if.end80_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end80

if.then72.cleanup_crit_edge:                      ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end80:                                         ; preds = %if.then72.if.end80_crit_edge, %ath10k_htt_rx_mpdu_desc_pn_hl.exit.if.end80_crit_edge
  %mul = shl nuw nsw i32 %10, 2
  %add = add nuw nsw i32 %mul, 52
  %conv81 = zext i8 %12 to i32
  %add82 = add nuw nsw i32 %add, %conv81
  %call83 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %add82) #16
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %47, align 2
  %50 = and i16 %49, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %50)
  %cmp.i = icmp ne i16 %50, -30720
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %51 = call ptr @memset(ptr %cb.i, i32 0, i32 48)
  %ppdu = getelementptr inbounds %struct.htt_rx_indication_hl, ptr %rx, i32 0, i32 1
  %52 = ptrtoint ptr %ppdu to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ppdu, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp88 = icmp eq i8 %53, 0
  br i1 %cmp88, label %if.then90, label %if.else91

if.then90:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #18
  %flag = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %54 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flag, align 8
  %or = or i32 %55, 256
  store i32 %or, ptr %flag, align 8
  br label %if.end100

if.else91:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #18
  %add95 = add i8 %53, -95
  %signal97 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 38
  %56 = ptrtoint ptr %signal97 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %add95, ptr %signal97, align 2
  %flag98 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %57 = ptrtoint ptr %flag98 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flag98, align 8
  %and99 = and i32 %58, -257
  store i32 %and99, ptr %flag98, align 8
  br label %if.end100

if.end100:                                        ; preds = %if.else91, %if.then90
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #16
  %scan_channel = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 57
  %59 = ptrtoint ptr %scan_channel to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %scan_channel, align 4
  %tobool102.not = icmp eq ptr %60, null
  br i1 %tobool102.not, label %if.end104, label %if.end100.if.end111.thread_crit_edge

if.end100.if.end111.thread_crit_edge:             ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end111.thread

if.end104:                                        ; preds = %if.end100
  %rx_channel = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 56
  %61 = ptrtoint ptr %rx_channel to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rx_channel, align 32
  %tobool105.not = icmp eq ptr %62, null
  br i1 %tobool105.not, label %if.end108, label %if.end104.if.end111.thread_crit_edge

if.end104.if.end111.thread_crit_edge:             ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end111.thread

if.end108:                                        ; preds = %if.end104
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %def.i) #16
  %63 = call ptr @memset(ptr %def.i, i32 0, i32 28)
  %hw.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 1
  %64 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw.i, align 4
  call void @ieee80211_iter_chan_contexts_atomic(ptr noundef %65, ptr noundef nonnull @ath10k_htt_rx_h_any_chan_iter, ptr noundef nonnull %def.i) #16
  %66 = ptrtoint ptr %def.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %def.i, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %def.i) #16
  %tobool109.not = icmp eq ptr %67, null
  br i1 %tobool109.not, label %if.end111, label %if.end108.if.end111.thread_crit_edge

if.end108.if.end111.thread_crit_edge:             ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end111.thread

if.end111.thread:                                 ; preds = %if.end108.if.end111.thread_crit_edge, %if.end104.if.end111.thread_crit_edge, %if.end100.if.end111.thread_crit_edge
  %ch.2.ph = phi ptr [ %67, %if.end108.if.end111.thread_crit_edge ], [ %62, %if.end104.if.end111.thread_crit_edge ], [ %60, %if.end100.if.end111.thread_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #16
  br label %if.then114

if.end111:                                        ; preds = %if.end108
  %tgt_oper_chan = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 59
  %68 = ptrtoint ptr %tgt_oper_chan to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tgt_oper_chan, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #16
  %tobool113.not = icmp eq ptr %69, null
  br i1 %tobool113.not, label %if.end111.if.end119_crit_edge, label %if.end111.if.then114_crit_edge

if.end111.if.then114_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then114

if.end111.if.end119_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end119

if.then114:                                       ; preds = %if.end111.if.then114_crit_edge, %if.end111.thread
  %ch.2442 = phi ptr [ %ch.2.ph, %if.end111.thread ], [ %69, %if.end111.if.then114_crit_edge ]
  %70 = ptrtoint ptr %ch.2442 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ch.2442, align 4
  %conv115 = trunc i32 %71 to i8
  %band116 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %72 = ptrtoint ptr %band116 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv115, ptr %band116, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %ch.2442, i32 0, i32 1
  %73 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %center_freq, align 4
  %conv117 = trunc i32 %74 to i16
  %freq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %75 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %75)
  %bf.load118 = load i16, ptr %freq, align 4
  %bf.shl = shl i16 %conv117, 3
  %bf.clear = and i16 %bf.load118, 7
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %freq, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.then114, %if.end111.if.end119_crit_edge
  %76 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %flags, align 1
  %78 = and i8 %77, 2
  %flag129 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %79 = ptrtoint ptr %flag129 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flag129, align 8
  %and127 = and i32 %80, -524289
  %81 = zext i8 %78 to i32
  %82 = shl nuw nsw i32 %81, 18
  %83 = or i32 %82, %and127
  %or130.sink = xor i32 %83, 524288
  store i32 %or130.sink, ptr %flag129, align 8
  %84 = ptrtoint ptr %47 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %47, align 2
  %86 = and i16 %85, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %cmp.i430.not = icmp eq i16 %86, 0
  br i1 %cmp.i430.not, label %if.end119.if.end238_crit_edge, label %if.then134

if.end119.if.end238_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end238

if.then134:                                       ; preds = %if.end119
  %87 = and i16 %85, -65
  %88 = ptrtoint ptr %47 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %47, align 2
  %flag139 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %89 = ptrtoint ptr %flag139 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flag139, align 8
  %or140 = or i32 %90, 26
  store i32 %or140, ptr %flag139, align 8
  %brmerge = select i1 %cmp70, i1 true, i1 %tobool64.not
  %cmp67.not = xor i1 %cmp67, true
  %brmerge423 = or i1 %brmerge, %cmp67.not
  br i1 %brmerge423, label %if.then134.if.end238_crit_edge, label %land.lhs.true149

if.then134.if.end238_crit_edge:                   ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end238

land.lhs.true149:                                 ; preds = %if.then134
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %26)
  %cmp150 = icmp eq i32 %26, 6
  %.off = add i32 %26, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then158, label %land.lhs.true149.if.end238_crit_edge

land.lhs.true149.if.end238_crit_edge:             ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end238

if.then158:                                       ; preds = %land.lhs.true149
  %new_pn.sroa.0.sroa.6.0.insert.ext = zext i32 %new_pn.sroa.0.sroa.6.0 to i64
  %new_pn.sroa.0.sroa.0.0.insert.ext = zext i32 %new_pn.sroa.0.sroa.0.0 to i64
  %new_pn.sroa.0.sroa.0.0.insert.shift = shl nuw i64 %new_pn.sroa.0.sroa.0.0.insert.ext, 32
  %new_pn.sroa.0.sroa.0.0.insert.insert = or i64 %new_pn.sroa.0.sroa.0.0.insert.shift, %new_pn.sroa.0.sroa.6.0.insert.ext
  %91 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %92, align 2
  %call161 = call i32 @ieee80211_hdrlen(i16 noundef zeroext %94) #20
  %95 = or i16 %94, 64
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %92, align 2
  %97 = ptrtoint ptr %flag139 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %flag139, align 8
  %and168 = and i32 %98, -17
  store i32 %and168, ptr %flag139, align 8
  %99 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %100, i32 -8
  %conv171 = and i32 %call161, 255
  %101 = call ptr @memmove(ptr %add.ptr, ptr %100, i32 %conv171)
  %call172 = call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #16
  %102 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data, align 4
  %add.ptr175 = getelementptr i8, ptr %103, i32 %conv171
  %104 = ptrtoint ptr %add.ptr175 to i32
  call void @__asan_storeN_noabort(i32 %104, i32 8)
  store i64 137438953472, ptr %add.ptr175, align 1
  %arrayidx179 = getelementptr i8, ptr %add.ptr175, i32 3
  %arrayidx186 = getelementptr %struct.ath10k_peer, ptr %call, i32 0, i32 7, i32 0
  %105 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx186, align 4
  %tobool187.not = icmp eq ptr %106, null
  br i1 %tobool187.not, label %if.then158.for.inc_crit_edge, label %land.lhs.true188

if.then158.for.inc_crit_edge:                     ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true188:                                 ; preds = %if.then158
  %flags192 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %106, i32 0, i32 6
  %107 = ptrtoint ptr %flags192 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %flags192, align 8
  %109 = and i16 %108, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %109)
  %tobool195.not = icmp eq i16 %109, 0
  br i1 %tobool195.not, label %land.lhs.true188.for.inc_crit_edge, label %if.then196

land.lhs.true188.for.inc_crit_edge:               ; preds = %land.lhs.true188
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then196:                                       ; preds = %land.lhs.true188
  call void @__sanitizer_cov_trace_pc() #18
  %keyidx200 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %106, i32 0, i32 5
  %110 = ptrtoint ptr %keyidx200 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %keyidx200, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then196, %land.lhs.true188.for.inc_crit_edge, %if.then158.for.inc_crit_edge
  %keyidx.1 = phi i8 [ %111, %if.then196 ], [ 0, %land.lhs.true188.for.inc_crit_edge ], [ 0, %if.then158.for.inc_crit_edge ]
  %arrayidx186.1 = getelementptr %struct.ath10k_peer, ptr %call, i32 0, i32 7, i32 1
  %112 = ptrtoint ptr %arrayidx186.1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx186.1, align 4
  %tobool187.not.1 = icmp eq ptr %113, null
  br i1 %tobool187.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true188.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

land.lhs.true188.1:                               ; preds = %for.inc
  %flags192.1 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %113, i32 0, i32 6
  %114 = ptrtoint ptr %flags192.1 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %flags192.1, align 8
  %116 = and i16 %115, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %tobool195.not.1 = icmp eq i16 %116, 0
  br i1 %tobool195.not.1, label %land.lhs.true188.1.for.inc.1_crit_edge, label %if.then196.1

land.lhs.true188.1.for.inc.1_crit_edge:           ; preds = %land.lhs.true188.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1

if.then196.1:                                     ; preds = %land.lhs.true188.1
  call void @__sanitizer_cov_trace_pc() #18
  %keyidx200.1 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %113, i32 0, i32 5
  %117 = ptrtoint ptr %keyidx200.1 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %keyidx200.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then196.1, %land.lhs.true188.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %keyidx.1.1 = phi i8 [ %118, %if.then196.1 ], [ %keyidx.1, %land.lhs.true188.1.for.inc.1_crit_edge ], [ %keyidx.1, %for.inc.for.inc.1_crit_edge ]
  %arrayidx186.2 = getelementptr %struct.ath10k_peer, ptr %call, i32 0, i32 7, i32 2
  %119 = ptrtoint ptr %arrayidx186.2 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx186.2, align 4
  %tobool187.not.2 = icmp eq ptr %120, null
  br i1 %tobool187.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true188.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

land.lhs.true188.2:                               ; preds = %for.inc.1
  %flags192.2 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %120, i32 0, i32 6
  %121 = ptrtoint ptr %flags192.2 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %flags192.2, align 8
  %123 = and i16 %122, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %tobool195.not.2 = icmp eq i16 %123, 0
  br i1 %tobool195.not.2, label %land.lhs.true188.2.for.inc.2_crit_edge, label %if.then196.2

land.lhs.true188.2.for.inc.2_crit_edge:           ; preds = %land.lhs.true188.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2

if.then196.2:                                     ; preds = %land.lhs.true188.2
  call void @__sanitizer_cov_trace_pc() #18
  %keyidx200.2 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %120, i32 0, i32 5
  %124 = ptrtoint ptr %keyidx200.2 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %keyidx200.2, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then196.2, %land.lhs.true188.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %keyidx.1.2 = phi i8 [ %125, %if.then196.2 ], [ %keyidx.1.1, %land.lhs.true188.2.for.inc.2_crit_edge ], [ %keyidx.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %arrayidx186.3 = getelementptr %struct.ath10k_peer, ptr %call, i32 0, i32 7, i32 3
  %126 = ptrtoint ptr %arrayidx186.3 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx186.3, align 4
  %tobool187.not.3 = icmp eq ptr %127, null
  br i1 %tobool187.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true188.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.3

land.lhs.true188.3:                               ; preds = %for.inc.2
  %flags192.3 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %127, i32 0, i32 6
  %128 = ptrtoint ptr %flags192.3 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %flags192.3, align 8
  %130 = and i16 %129, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %130)
  %tobool195.not.3 = icmp eq i16 %130, 0
  br i1 %tobool195.not.3, label %land.lhs.true188.3.for.inc.3_crit_edge, label %if.then196.3

land.lhs.true188.3.for.inc.3_crit_edge:           ; preds = %land.lhs.true188.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.3

if.then196.3:                                     ; preds = %land.lhs.true188.3
  call void @__sanitizer_cov_trace_pc() #18
  %keyidx200.3 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %127, i32 0, i32 5
  %131 = ptrtoint ptr %keyidx200.3 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %keyidx200.3, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then196.3, %land.lhs.true188.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %keyidx.1.3 = phi i8 [ %132, %if.then196.3 ], [ %keyidx.1.2, %land.lhs.true188.3.for.inc.3_crit_edge ], [ %keyidx.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %133 = call i64 @llvm.bswap.i64(i64 %new_pn.sroa.0.sroa.0.0.insert.insert)
  %shl = shl i8 %keyidx.1.3, 6
  %or205 = or i8 %shl, 32
  %134 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %or205, ptr %arrayidx179, align 1
  %135 = ptrtoint ptr %flag139 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %flag139, align 8
  br i1 %cmp150, label %if.then209, label %if.else220

if.then209:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  %or211 = or i32 %136, 2097152
  %137 = ptrtoint ptr %flag139 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %or211, ptr %flag139, align 8
  %138 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %data, align 4
  %add.ptr214 = getelementptr i8, ptr %139, i32 %conv171
  %pn48.0.extract.shift = lshr i64 %133, 48
  %pn48.0.extract.trunc = trunc i64 %pn48.0.extract.shift to i16
  %140 = ptrtoint ptr %add.ptr214 to i32
  call void @__asan_storeN_noabort(i32 %140, i32 2)
  store i16 %pn48.0.extract.trunc, ptr %add.ptr214, align 1
  br label %if.end238.sink.split

if.else220:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #18
  %or222 = or i32 %136, 8388608
  %141 = ptrtoint ptr %flag139 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %or222, ptr %flag139, align 8
  %142 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %data, align 4
  %add.ptr225 = getelementptr i8, ptr %143, i32 %conv171
  %add.ptr226 = getelementptr i8, ptr %add.ptr225, i32 2
  %pn48.0.extract.shift304 = lshr i64 %133, 56
  %pn48.0.extract.trunc305 = trunc i64 %pn48.0.extract.shift304 to i8
  %144 = ptrtoint ptr %add.ptr226 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %pn48.0.extract.trunc305, ptr %add.ptr226, align 1
  %145 = load ptr, ptr %data, align 4
  %add.ptr229 = getelementptr i8, ptr %145, i32 %conv171
  %pn48.1.extract.shift = lshr i64 %133, 48
  %pn48.1.extract.trunc = trunc i64 %pn48.1.extract.shift to i8
  %146 = ptrtoint ptr %add.ptr229 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %pn48.1.extract.trunc, ptr %add.ptr229, align 1
  br label %if.end238.sink.split

if.end238.sink.split:                             ; preds = %if.else220, %if.then209
  %147 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %data, align 4
  %add.ptr217 = getelementptr i8, ptr %148, i32 %conv171
  %add.ptr218 = getelementptr i8, ptr %add.ptr217, i32 4
  %pn48.2.extract.shift = lshr i64 %133, 16
  %pn48.2.extract.trunc = trunc i64 %pn48.2.extract.shift to i32
  %149 = ptrtoint ptr %add.ptr218 to i32
  call void @__asan_storeN_noabort(i32 %149, i32 4)
  store i32 %pn48.2.extract.trunc, ptr %add.ptr218, align 1
  br label %if.end238

if.end238:                                        ; preds = %if.end238.sink.split, %land.lhs.true149.if.end238_crit_edge, %if.then134.if.end238_crit_edge, %if.end119.if.end238_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %tkip_mic_type)
  %cmp239 = icmp eq i32 %tkip_mic_type, 1
  br i1 %cmp239, label %if.then241, label %if.end238.if.end244_crit_edge

if.end238.if.end244_crit_edge:                    ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end244

if.then241:                                       ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #18
  %flag242 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %150 = ptrtoint ptr %flag242 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %flag242, align 8
  %and243 = and i32 %151, -25
  store i32 %and243, ptr %flag242, align 8
  br label %if.end244

if.end244:                                        ; preds = %if.then241, %if.end238.if.end244_crit_edge
  %152 = ptrtoint ptr %mpdu_range_status to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %mpdu_range_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %153)
  %cmp247 = icmp eq i8 %153, 9
  br i1 %cmp247, label %if.then249, label %if.end244.if.end252_crit_edge

if.end244.if.end252_crit_edge:                    ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end252

if.then249:                                       ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #18
  %flag250 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %154 = ptrtoint ptr %flag250 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %flag250, align 8
  %or251 = or i32 %155, 1
  store i32 %or251, ptr %flag250, align 8
  br label %if.end252

if.end252:                                        ; preds = %if.then249, %if.end244.if.end252_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %7)
  %cmp255 = icmp ult i8 %7, 16
  %or.cond426 = select i1 %cmp.i, i1 %cmp255, i1 false
  br i1 %or.cond426, label %if.then257, label %if.end252.if.end276_crit_edge

if.end252.if.end276_crit_edge:                    ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end276

if.then257:                                       ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #18
  %156 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %data, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %157, align 2
  %call261 = call i32 @ieee80211_hdrlen(i16 noundef zeroext %159) #20
  %160 = or i16 %159, -32768
  %161 = ptrtoint ptr %157 to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %160, ptr %157, align 2
  %162 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %data, align 4
  %add.ptr268 = getelementptr i8, ptr %163, i32 -2
  %conv270 = and i32 %call261, 255
  %164 = call ptr @memmove(ptr %add.ptr268, ptr %163, i32 %conv270)
  %call271 = call ptr @skb_push(ptr noundef %skb, i32 noundef 2) #16
  %conv272 = zext i8 %7 to i16
  %165 = shl nuw nsw i16 %conv272, 8
  %166 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %data, align 4
  %add.ptr275 = getelementptr i8, ptr %167, i32 %conv270
  %168 = ptrtoint ptr %add.ptr275 to i32
  call void @__asan_storeN_noabort(i32 %168, i32 2)
  store i16 %165, ptr %add.ptr275, align 1
  br label %if.end276

if.end276:                                        ; preds = %if.then257, %if.end252.if.end276_crit_edge
  %dev = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 126, i32 7
  %169 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dev, align 32
  %tobool277.not = icmp eq ptr %170, null
  br i1 %tobool277.not, label %if.else280, label %if.then278

if.then278:                                       ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #18
  %napi = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 126
  %hw = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 1
  %171 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %hw, align 4
  call void @ieee80211_rx_napi(ptr noundef %172, ptr noundef null, ptr noundef %skb, ptr noundef %napi) #16
  br label %cleanup

if.else280:                                       ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #18
  %hw281 = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 1
  %173 = ptrtoint ptr %hw281 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %hw281, align 4
  call fastcc void @local_bh_disable() #16
  call void @ieee80211_rx_napi(ptr noundef %174, ptr noundef null, ptr noundef %skb, ptr noundef null) #16
  call fastcc void @local_bh_enable() #16
  br label %cleanup

cleanup:                                          ; preds = %if.else280, %if.then278, %if.then72.cleanup_crit_edge, %if.then46, %lor.lhs.false43, %if.then24, %lor.lhs.false, %if.end.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end.cleanup_crit_edge ], [ false, %if.else280 ], [ false, %if.then278 ], [ true, %if.then72.cleanup_crit_edge ], [ true, %if.then46 ], [ true, %if.then24 ], [ true, %lor.lhs.false ], [ true, %lor.lhs.false43 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_htt_txrx_compl_task(ptr noundef %ar, i32 noundef %budget) #0 align 64 {
entry:
  %amsdu.i = alloca %struct.sk_buff_head, align 4
  %err.i = alloca i32, align 4
  %first_hdr.i = alloca [64 x i8], align 1
  %tx_done = alloca %struct.htt_tx_done, align 2
  %tx_ind_q = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %htt1 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %tx_done) #16
  %0 = call ptr @memset(ptr %tx_done, i32 0, i32 6)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tx_ind_q) #16
  %1 = getelementptr inbounds i8, ptr %tx_ind_q, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 44)
  %3 = ptrtoint ptr %tx_ind_q to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tx_ind_q, ptr %tx_ind_q, align 4
  %prev.i = getelementptr inbounds %struct.anon.62, ptr %tx_ind_q, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tx_ind_q, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %tx_ind_q, i32 0, i32 1
  %5 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %qlen.i, align 4
  %rx_msdus_q.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp12.i = icmp sgt i32 %budget, 0
  br i1 %cmp12.i, label %entry.while.body.i_crit_edge, label %entry.ath10k_htt_rx_deliver_msdu.exit_crit_edge

entry.ath10k_htt_rx_deliver_msdu.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_deliver_msdu.exit

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %quota.addr.013.i = phi i32 [ %inc.i, %if.end6.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %6 = ptrtoint ptr %rx_msdus_q.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_msdus_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, %rx_msdus_q.i
  br i1 %cmp.i.not.i, label %while.body.i.ath10k_htt_rx_deliver_msdu.exit_crit_edge, label %if.end.i

while.body.i.ath10k_htt_rx_deliver_msdu.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_deliver_msdu.exit

if.end.i:                                         ; preds = %while.body.i
  %call3.i = call ptr @skb_dequeue(ptr noundef %rx_msdus_q.i) #16
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.end.i.ath10k_htt_rx_deliver_msdu.exit_crit_edge, label %if.end6.i

if.end.i.ath10k_htt_rx_deliver_msdu.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_deliver_msdu.exit

if.end6.i:                                        ; preds = %if.end.i
  call fastcc void @ath10k_process_rx(ptr noundef %ar, ptr noundef nonnull %call3.i) #16
  %inc.i = add nuw nsw i32 %quota.addr.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %budget
  br i1 %exitcond.not.i, label %if.end6.i.exit_crit_edge, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

if.end6.i.exit_crit_edge:                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

ath10k_htt_rx_deliver_msdu.exit:                  ; preds = %if.end.i.ath10k_htt_rx_deliver_msdu.exit_crit_edge, %while.body.i.ath10k_htt_rx_deliver_msdu.exit_crit_edge, %entry.ath10k_htt_rx_deliver_msdu.exit_crit_edge
  %quota.addr.0.lcssa.i = phi i32 [ 0, %entry.ath10k_htt_rx_deliver_msdu.exit_crit_edge ], [ %quota.addr.013.i, %if.end.i.ath10k_htt_rx_deliver_msdu.exit_crit_edge ], [ %quota.addr.013.i, %while.body.i.ath10k_htt_rx_deliver_msdu.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %quota.addr.0.lcssa.i, i32 %budget)
  %cmp = icmp eq i32 %quota.addr.0.lcssa.i, %budget
  br i1 %cmp, label %ath10k_htt_rx_deliver_msdu.exit.exit_crit_edge, label %while.cond.preheader

ath10k_htt_rx_deliver_msdu.exit.exit_crit_edge:   ; preds = %ath10k_htt_rx_deliver_msdu.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

while.cond.preheader:                             ; preds = %ath10k_htt_rx_deliver_msdu.exit
  %rx_in_ord_compl_q = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 22
  %lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 10, i32 12
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %call2 = call ptr @skb_dequeue(ptr noundef %rx_in_ord_compl_q) #16
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %while.cond9.preheader, label %while.body

while.cond9.preheader:                            ; preds = %while.cond
  %num_mpdus_ready = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 20
  %call.i.i152 = call zeroext i1 @__kasan_check_read(ptr noundef %num_mpdus_ready, i32 noundef 4) #16
  %8 = ptrtoint ptr %num_mpdus_ready to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %num_mpdus_ready, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not153 = icmp eq i32 %9, 0
  br i1 %tobool11.not153, label %while.cond9.preheader.while.end18_crit_edge, label %while.body12.lr.ph

while.cond9.preheader.while.end18_crit_edge:      ; preds = %while.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end18

while.body12.lr.ph:                               ; preds = %while.cond9.preheader
  %rx_status2.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 24
  %10 = getelementptr inbounds i8, ptr %amsdu.i, i32 12
  %prev.i.i = getelementptr inbounds %struct.anon.62, ptr %amsdu.i, i32 0, i32 1
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %amsdu.i, i32 0, i32 1
  %rx_confused.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 19
  %dep_map.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 10, i32 12, i32 0, i32 0, i32 4
  %flag4.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 24, i32 4
  br label %while.body12

while.body:                                       ; preds = %while.cond
  call void @_raw_spin_lock_bh(ptr noundef %lock) #16
  %call3 = call fastcc i32 @ath10k_htt_rx_in_ord_ind(ptr noundef %ar, ptr noundef nonnull %call2)
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #16
  call void @__dev_kfree_skb_any(ptr noundef nonnull %call2, i32 noundef 1) #16
  %cmp6 = icmp eq i32 %call3, -5
  br i1 %cmp6, label %while.body.exit_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond

while.body.exit_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

while.body12:                                     ; preds = %if.end16.while.body12_crit_edge, %while.body12.lr.ph
  %11 = ptrtoint ptr %htt1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %htt1, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %amsdu.i) #16
  %13 = call ptr @memset(ptr %10, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err.i) #16
  %14 = ptrtoint ptr %err.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %err.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %first_hdr.i) #16
  %15 = call ptr @memset(ptr %first_hdr.i, i32 255, i32 64)
  %16 = ptrtoint ptr %amsdu.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %amsdu.i, ptr %amsdu.i, align 4
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %amsdu.i, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %qlen.i.i, align 4
  call void @_raw_spin_lock_bh(ptr noundef %lock) #16
  %19 = ptrtoint ptr %rx_confused.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rx_confused.i, align 8, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %if.end.i108, label %ath10k_htt_rx_handle_amsdu.exit.thread

ath10k_htt_rx_handle_amsdu.exit.thread:           ; preds = %while.body12
  call void @__sanitizer_cov_trace_pc() #18
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %first_hdr.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %amsdu.i) #16
  br label %exit

if.end.i108:                                      ; preds = %while.body12
  %21 = ptrtoint ptr %htt1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %htt1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %23 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i, label %if.end.i108.for.cond.i.i.preheader_crit_edge, label %land.rhs.i.i

if.end.i108.for.cond.i.i.preheader_crit_edge:     ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i.preheader

land.rhs.i.i:                                     ; preds = %if.end.i108
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.for.cond.i.i.preheader_crit_edge, !prof !308

land.rhs.i.i.for.cond.i.i.preheader_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i.preheader

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 350, i32 noundef 9, ptr noundef null) #16
  br label %for.cond.i.i.preheader

for.cond.i.i.preheader:                           ; preds = %do.end.i.i, %land.rhs.i.i.for.cond.i.i.preheader_crit_edge, %if.end.i108.for.cond.i.i.preheader_crit_edge
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %while.end.i.i.for.cond.i.i_crit_edge, %for.cond.i.i.preheader
  %msdu_chaining.0.i.i = phi i32 [ %msdu_chaining.1.lcssa.i.i, %while.end.i.i.for.cond.i.i_crit_edge ], [ 0, %for.cond.i.i.preheader ]
  %call25.i.i = call fastcc ptr @ath10k_htt_rx_netbuf_pop(ptr noundef %htt1) #16
  %tobool26.not.i.i = icmp eq ptr %call25.i.i, null
  br i1 %tobool26.not.i.i, label %if.then27.i.i, label %if.end28.i.i

if.then27.i.i:                                    ; preds = %for.cond.i.i
  %24 = ptrtoint ptr %amsdu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %amsdu.i, align 4
  %cmp.i.i2.i.i.i = icmp eq ptr %25, %amsdu.i
  %tobool.not.i13.i.i.i = icmp eq ptr %25, null
  %tobool.not.i4.i.i.i = or i1 %cmp.i.i2.i.i.i, %tobool.not.i13.i.i.i
  br i1 %tobool.not.i4.i.i.i, label %if.then27.i.i.if.then7.i_crit_edge, label %if.then27.i.i.while.body.i.i.i_crit_edge

if.then27.i.i.while.body.i.i.i_crit_edge:         ; preds = %if.then27.i.i
  br label %while.body.i.i.i

if.then27.i.i.if.then7.i_crit_edge:               ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %if.then27.i.i.while.body.i.i.i_crit_edge
  %26 = phi ptr [ %36, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %25, %if.then27.i.i.while.body.i.i.i_crit_edge ]
  %27 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i.i.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %qlen.i.i, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 8
  %prev9.i.i.i.i.i = getelementptr inbounds %struct.anon.41, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %prev9.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev9.i.i.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i.i.i, align 4
  store ptr null, ptr %26, align 8
  %prev17.i.i.i.i.i = getelementptr inbounds %struct.anon.41, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %prev17.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %32, ptr %prev17.i.i.i.i.i, align 4
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %30, ptr %32, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %26, i32 noundef 0) #16
  %35 = ptrtoint ptr %amsdu.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %amsdu.i, align 4
  %cmp.i.i.i.i.i = icmp eq ptr %36, %amsdu.i
  %tobool.not.i1.i.i.i = icmp eq ptr %36, null
  %tobool.not.i.i.i.i = or i1 %cmp.i.i.i.i.i, %tobool.not.i1.i.i.i
  br i1 %tobool.not.i.i.i.i, label %while.body.i.i.i.if.then7.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i.i

while.body.i.i.i.if.then7.i_crit_edge:            ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7.i

if.end28.i.i:                                     ; preds = %for.cond.i.i
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i, align 4
  %39 = ptrtoint ptr %call25.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %amsdu.i, ptr %call25.i.i, align 8
  %prev10.i.i.i.i.i = getelementptr inbounds %struct.anon.41, ptr %call25.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %prev10.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %prev10.i.i.i.i.i, align 4
  store volatile ptr %call25.i.i, ptr %prev.i.i, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %call25.i.i, ptr %38, align 4
  %42 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i.i.i = add i32 %43, 1
  store volatile i32 %add.i.i.i.i.i, ptr %qlen.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call25.i.i, i32 0, i32 19
  %44 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i.i, align 4
  %call29.i.i = call ptr @skb_put(ptr noundef nonnull %call25.i.i, i32 noundef 360) #16
  %call30.i.i = call ptr @skb_pull(ptr noundef nonnull %call25.i.i, i32 noundef 360) #16
  %46 = getelementptr inbounds %struct.htt_rx_desc, ptr %45, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %46, align 1
  %49 = call i32 @llvm.bswap.i32(i32 %48) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %tobool31.not.i.i = icmp sgt i32 %49, -1
  br i1 %tobool31.not.i.i, label %if.then32.i.i, label %if.end33.i.i

if.then32.i.i:                                    ; preds = %if.end28.i.i
  %50 = ptrtoint ptr %amsdu.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %amsdu.i, align 4
  %cmp.i.i2.i118.i.i = icmp eq ptr %51, %amsdu.i
  %tobool.not.i13.i119.i.i = icmp eq ptr %51, null
  %tobool.not.i4.i120.i.i = or i1 %cmp.i.i2.i118.i.i, %tobool.not.i13.i119.i.i
  br i1 %tobool.not.i4.i120.i.i, label %if.then32.i.i.if.then7.i_crit_edge, label %if.then32.i.i.while.body.i129.i.i_crit_edge

if.then32.i.i.while.body.i129.i.i_crit_edge:      ; preds = %if.then32.i.i
  br label %while.body.i129.i.i

if.then32.i.i.if.then7.i_crit_edge:               ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7.i

while.body.i129.i.i:                              ; preds = %while.body.i129.i.i.while.body.i129.i.i_crit_edge, %if.then32.i.i.while.body.i129.i.i_crit_edge
  %52 = phi ptr [ %62, %while.body.i129.i.i.while.body.i129.i.i_crit_edge ], [ %51, %if.then32.i.i.while.body.i129.i.i_crit_edge ]
  %53 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i.i123.i.i = add i32 %54, -1
  store volatile i32 %sub.i.i.i123.i.i, ptr %qlen.i.i, align 4
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %52, align 8
  %prev9.i.i.i124.i.i = getelementptr inbounds %struct.anon.41, ptr %52, i32 0, i32 1
  %57 = ptrtoint ptr %prev9.i.i.i124.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev9.i.i.i124.i.i, align 4
  store ptr null, ptr %prev9.i.i.i124.i.i, align 4
  store ptr null, ptr %52, align 8
  %prev17.i.i.i125.i.i = getelementptr inbounds %struct.anon.41, ptr %56, i32 0, i32 1
  %59 = ptrtoint ptr %prev17.i.i.i125.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %58, ptr %prev17.i.i.i125.i.i, align 4
  %60 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %56, ptr %58, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %52, i32 noundef 0) #16
  %61 = ptrtoint ptr %amsdu.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %amsdu.i, align 4
  %cmp.i.i.i126.i.i = icmp eq ptr %62, %amsdu.i
  %tobool.not.i1.i127.i.i = icmp eq ptr %62, null
  %tobool.not.i.i128.i.i = or i1 %cmp.i.i.i126.i.i, %tobool.not.i1.i127.i.i
  br i1 %tobool.not.i.i128.i.i, label %while.body.i129.i.i.if.then7.i_crit_edge, label %while.body.i129.i.i.while.body.i129.i.i_crit_edge

while.body.i129.i.i.while.body.i129.i.i_crit_edge: ; preds = %while.body.i129.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i129.i.i

while.body.i129.i.i.if.then7.i_crit_edge:         ; preds = %while.body.i129.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7.i

if.end33.i.i:                                     ; preds = %if.end28.i.i
  %and36.i.i = and i32 %49, 134348800
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.i)
  %tobool37.not.i.i = icmp eq i32 %and36.i.i, 0
  %msdu_start.i.i = getelementptr inbounds %struct.htt_rx_desc, ptr %45, i32 0, i32 1, i32 3
  %63 = ptrtoint ptr %msdu_start.i.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %msdu_start.i.i, align 1
  %65 = and i32 %64, -12648448
  %66 = call i32 @llvm.bswap.i32(i32 %65) #16
  %ring2_more_count.i.i = getelementptr inbounds %struct.htt_rx_desc, ptr %45, i32 0, i32 1, i32 1, i32 2
  %67 = ptrtoint ptr %ring2_more_count.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %ring2_more_count.i.i, align 1
  %spec.select.i.i = select i1 %tobool37.not.i.i, i32 %66, i32 0
  call void @skb_trim(ptr noundef nonnull %call25.i.i, i32 noundef 0) #16
  %69 = call i32 @llvm.umin.i32(i32 %spec.select.i.i, i32 1688) #16
  %call49.i.i = call ptr @skb_put(ptr noundef nonnull %call25.i.i, i32 noundef %69) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool50.not162.i.i = icmp eq i8 %68, 0
  br i1 %tobool50.not162.i.i, label %if.end33.i.i.while.end.i.i_crit_edge, label %while.body.preheader.i.i

if.end33.i.i.while.end.i.i_crit_edge:             ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i.i

while.body.preheader.i.i:                         ; preds = %if.end33.i.i
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call25.i.i, i32 0, i32 6
  %70 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len.i.i, align 4
  %sub.i.i = sub i32 %spec.select.i.i, %71
  %conv.i.i = zext i8 %68 to i32
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end54.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %dec164.in.i.i = phi i32 [ %dec164.i.i, %if.end54.i.i.while.body.i.i_crit_edge ], [ %conv.i.i, %while.body.preheader.i.i ]
  %msdu_len.1163.i.i = phi i32 [ %sub64.i.i, %if.end54.i.i.while.body.i.i_crit_edge ], [ %sub.i.i, %while.body.preheader.i.i ]
  %call51.i.i = call fastcc ptr @ath10k_htt_rx_netbuf_pop(ptr noundef %htt1) #16
  %tobool52.not.i.i = icmp eq ptr %call51.i.i, null
  br i1 %tobool52.not.i.i, label %if.then53.i.i, label %if.end54.i.i

if.then53.i.i:                                    ; preds = %while.body.i.i
  %72 = ptrtoint ptr %amsdu.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %amsdu.i, align 4
  %cmp.i.i2.i131.i.i = icmp eq ptr %73, %amsdu.i
  %tobool.not.i13.i132.i.i = icmp eq ptr %73, null
  %tobool.not.i4.i133.i.i = or i1 %cmp.i.i2.i131.i.i, %tobool.not.i13.i132.i.i
  br i1 %tobool.not.i4.i133.i.i, label %if.then53.i.i.if.then7.i_crit_edge, label %if.then53.i.i.while.body.i142.i.i_crit_edge

if.then53.i.i.while.body.i142.i.i_crit_edge:      ; preds = %if.then53.i.i
  br label %while.body.i142.i.i

if.then53.i.i.if.then7.i_crit_edge:               ; preds = %if.then53.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7.i

while.body.i142.i.i:                              ; preds = %while.body.i142.i.i.while.body.i142.i.i_crit_edge, %if.then53.i.i.while.body.i142.i.i_crit_edge
  %74 = phi ptr [ %84, %while.body.i142.i.i.while.body.i142.i.i_crit_edge ], [ %73, %if.then53.i.i.while.body.i142.i.i_crit_edge ]
  %75 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i.i136.i.i = add i32 %76, -1
  store volatile i32 %sub.i.i.i136.i.i, ptr %qlen.i.i, align 4
  %77 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %74, align 8
  %prev9.i.i.i137.i.i = getelementptr inbounds %struct.anon.41, ptr %74, i32 0, i32 1
  %79 = ptrtoint ptr %prev9.i.i.i137.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev9.i.i.i137.i.i, align 4
  store ptr null, ptr %prev9.i.i.i137.i.i, align 4
  store ptr null, ptr %74, align 8
  %prev17.i.i.i138.i.i = getelementptr inbounds %struct.anon.41, ptr %78, i32 0, i32 1
  %81 = ptrtoint ptr %prev17.i.i.i138.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %80, ptr %prev17.i.i.i138.i.i, align 4
  %82 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %78, ptr %80, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %74, i32 noundef 0) #16
  %83 = ptrtoint ptr %amsdu.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %amsdu.i, align 4
  %cmp.i.i.i139.i.i = icmp eq ptr %84, %amsdu.i
  %tobool.not.i1.i140.i.i = icmp eq ptr %84, null
  %tobool.not.i.i141.i.i = or i1 %cmp.i.i.i139.i.i, %tobool.not.i1.i140.i.i
  br i1 %tobool.not.i.i141.i.i, label %while.body.i142.i.i.if.then7.i_crit_edge, label %while.body.i142.i.i.while.body.i142.i.i_crit_edge

while.body.i142.i.i.while.body.i142.i.i_crit_edge: ; preds = %while.body.i142.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i142.i.i

while.body.i142.i.i.if.then7.i_crit_edge:         ; preds = %while.body.i142.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7.i

if.end54.i.i:                                     ; preds = %while.body.i.i
  %dec164.i.i = add nsw i32 %dec164.in.i.i, -1
  %85 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev.i.i, align 4
  %87 = ptrtoint ptr %call51.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %amsdu.i, ptr %call51.i.i, align 8
  %prev10.i.i.i145.i.i = getelementptr inbounds %struct.anon.41, ptr %call51.i.i, i32 0, i32 1
  %88 = ptrtoint ptr %prev10.i.i.i145.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %86, ptr %prev10.i.i.i145.i.i, align 4
  store volatile ptr %call51.i.i, ptr %prev.i.i, align 4
  %89 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %call51.i.i, ptr %86, align 4
  %90 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i147.i.i = add i32 %91, 1
  store volatile i32 %add.i.i.i147.i.i, ptr %qlen.i.i, align 4
  call void @skb_trim(ptr noundef nonnull %call51.i.i, i32 noundef 0) #16
  %92 = call i32 @llvm.smin.i32(i32 %msdu_len.1163.i.i, i32 2048) #16
  %call62.i.i = call ptr @skb_put(ptr noundef nonnull %call51.i.i, i32 noundef %92) #16
  %len63.i.i = getelementptr inbounds %struct.sk_buff, ptr %call51.i.i, i32 0, i32 6
  %93 = ptrtoint ptr %len63.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %len63.i.i, align 4
  %sub64.i.i = sub i32 %msdu_len.1163.i.i, %94
  %tobool50.not.i.i = icmp eq i32 %dec164.i.i, 0
  br i1 %tobool50.not.i.i, label %if.end54.i.i.while.end.i.i_crit_edge, label %if.end54.i.i.while.body.i.i_crit_edge

if.end54.i.i.while.body.i.i_crit_edge:            ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i

if.end54.i.i.while.end.i.i_crit_edge:             ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.end54.i.i.while.end.i.i_crit_edge, %if.end33.i.i.while.end.i.i_crit_edge
  %msdu_chaining.1.lcssa.i.i = phi i32 [ %msdu_chaining.0.i.i, %if.end33.i.i.while.end.i.i_crit_edge ], [ 1, %if.end54.i.i.while.end.i.i_crit_edge ]
  %info066.i.i = getelementptr inbounds %struct.htt_rx_desc, ptr %45, i32 0, i32 1, i32 4, i32 0, i32 5
  %95 = ptrtoint ptr %info066.i.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %info066.i.i, align 1
  call fastcc void @trace_ath10k_htt_rx_desc(ptr noundef %22, ptr noundef %46, i32 noundef 356) #16
  %97 = and i32 %96, 8388608
  %tobool69.not.i.i = icmp eq i32 %97, 0
  br i1 %tobool69.not.i.i, label %while.end.i.i.for.cond.i.i_crit_edge, label %for.end.i.i

while.end.i.i.for.cond.i.i_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %while.end.i.i
  %98 = ptrtoint ptr %amsdu.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %amsdu.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %99, %amsdu.i
  br i1 %cmp.i.not.i.i, label %for.end.i.i.if.then7.i_crit_edge, label %if.end9.i

for.end.i.i.if.then7.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7.i

if.then7.i:                                       ; preds = %for.end.i.i.if.then7.i_crit_edge, %while.body.i142.i.i.if.then7.i_crit_edge, %if.then53.i.i.if.then7.i_crit_edge, %while.body.i129.i.i.if.then7.i_crit_edge, %if.then32.i.i.if.then7.i_crit_edge, %while.body.i.i.i.if.then7.i_crit_edge, %if.then27.i.i.if.then7.i_crit_edge
  %cmp14 = phi i1 [ false, %for.end.i.i.if.then7.i_crit_edge ], [ false, %if.then53.i.i.if.then7.i_crit_edge ], [ true, %if.then32.i.i.if.then7.i_crit_edge ], [ false, %if.then27.i.i.if.then7.i_crit_edge ], [ false, %while.body.i.i.i.if.then7.i_crit_edge ], [ true, %while.body.i129.i.i.if.then7.i_crit_edge ], [ false, %while.body.i142.i.i.if.then7.i_crit_edge ]
  %retval.2.i.ph.i = phi i32 [ -1, %for.end.i.i.if.then7.i_crit_edge ], [ -2, %if.then53.i.i.if.then7.i_crit_edge ], [ -5, %if.then32.i.i.if.then7.i_crit_edge ], [ -2, %if.then27.i.i.if.then7.i_crit_edge ], [ -2, %while.body.i.i.i.if.then7.i_crit_edge ], [ -5, %while.body.i129.i.i.if.then7.i_crit_edge ], [ -2, %while.body.i142.i.i.if.then7.i_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #16
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %12, ptr noundef nonnull @.str.121, i32 noundef %retval.2.i.ph.i) #16
  %100 = ptrtoint ptr %amsdu.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %amsdu.i, align 4
  %cmp.i.i2.i.i = icmp eq ptr %101, %amsdu.i
  %tobool.not.i13.i.i = icmp eq ptr %101, null
  %tobool.not.i4.i.i = or i1 %cmp.i.i2.i.i, %tobool.not.i13.i.i
  br i1 %tobool.not.i4.i.i, label %if.then7.i.ath10k_htt_rx_handle_amsdu.exit_crit_edge, label %if.then7.i.while.body.i45.i_crit_edge

if.then7.i.while.body.i45.i_crit_edge:            ; preds = %if.then7.i
  br label %while.body.i45.i

if.then7.i.ath10k_htt_rx_handle_amsdu.exit_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_handle_amsdu.exit

while.body.i45.i:                                 ; preds = %while.body.i45.i.while.body.i45.i_crit_edge, %if.then7.i.while.body.i45.i_crit_edge
  %102 = phi ptr [ %112, %while.body.i45.i.while.body.i45.i_crit_edge ], [ %101, %if.then7.i.while.body.i45.i_crit_edge ]
  %103 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i.i.i = add i32 %104, -1
  store volatile i32 %sub.i.i.i.i, ptr %qlen.i.i, align 4
  %105 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %102, align 8
  %prev9.i.i.i.i = getelementptr inbounds %struct.anon.41, ptr %102, i32 0, i32 1
  %107 = ptrtoint ptr %prev9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %102, align 8
  %prev17.i.i.i.i = getelementptr inbounds %struct.anon.41, ptr %106, i32 0, i32 1
  %109 = ptrtoint ptr %prev17.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %108, ptr %prev17.i.i.i.i, align 4
  %110 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %106, ptr %108, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %102, i32 noundef 0) #16
  %111 = ptrtoint ptr %amsdu.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %amsdu.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %112, %amsdu.i
  %tobool.not.i1.i.i = icmp eq ptr %112, null
  %tobool.not.i.i.i = or i1 %cmp.i.i.i.i, %tobool.not.i1.i.i
  br i1 %tobool.not.i.i.i, label %while.body.i45.i.ath10k_htt_rx_handle_amsdu.exit_crit_edge, label %while.body.i45.i.while.body.i45.i_crit_edge

while.body.i45.i.while.body.i45.i_crit_edge:      ; preds = %while.body.i45.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i45.i

while.body.i45.i.ath10k_htt_rx_handle_amsdu.exit_crit_edge: ; preds = %while.body.i45.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_handle_amsdu.exit

if.end9.i:                                        ; preds = %for.end.i.i
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #16
  %113 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %qlen.i.i, align 4
  call fastcc void @ath10k_htt_rx_h_ppdu(ptr noundef %12, ptr noundef nonnull %amsdu.i, ptr noundef %rx_status2.i, i32 noundef 65535) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %msdu_chaining.1.lcssa.i.i)
  %cmp11.not.i = icmp eq i32 %msdu_chaining.1.lcssa.i.i, 0
  br i1 %cmp11.not.i, label %if.end9.i.if.end13.i_crit_edge, label %if.then12.i

if.end9.i.if.end13.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.end9.i
  %115 = ptrtoint ptr %amsdu.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %amsdu.i, align 4
  %cmp.i.i.i = icmp eq ptr %116, %amsdu.i
  %spec.store.select.i.i.i = select i1 %cmp.i.i.i, ptr null, ptr %116
  %data.i48.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i.i, i32 0, i32 19
  %117 = ptrtoint ptr %data.i48.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %data.i48.i, align 4
  %info1.i.i = getelementptr i8, ptr %118, i32 -324
  %119 = ptrtoint ptr %info1.i.i to i32
  call void @__asan_loadN_noabort(i32 %119, i32 4)
  %120 = load i32, ptr %info1.i.i, align 1
  %121 = and i32 %120, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp.not.i49.i = icmp eq i32 %121, 0
  br i1 %cmp.not.i49.i, label %lor.lhs.false.i.i, label %if.then12.i.if.then.i.i_crit_edge

if.then12.i.if.then.i.i_crit_edge:                ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.then12.i
  %122 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %qlen.i.i, align 4
  %ring2_more_count.i50.i = getelementptr i8, ptr %118, i32 -350
  %124 = ptrtoint ptr %ring2_more_count.i50.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %ring2_more_count.i50.i, align 1
  %conv.i51.i = zext i8 %125 to i32
  %add.i.i = add nuw nsw i32 %conv.i51.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %add.i.i)
  %cmp2.not.i.i = icmp eq i32 %123, %add.i.i
  br i1 %cmp2.not.i.i, label %if.end.i62.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %if.then12.i.if.then.i.i_crit_edge
  %126 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %qlen.i.i, align 4
  %tobool.not.i13.i.i53.i = icmp eq ptr %116, null
  %tobool.not.i4.i.i54.i = or i1 %cmp.i.i.i, %tobool.not.i13.i.i53.i
  br i1 %tobool.not.i4.i.i54.i, label %if.then.i.i.if.end13.i_crit_edge, label %if.then.i.i.while.body.i.i61.i_crit_edge

if.then.i.i.while.body.i.i61.i_crit_edge:         ; preds = %if.then.i.i
  br label %while.body.i.i61.i

if.then.i.i.if.end13.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13.i

while.body.i.i61.i:                               ; preds = %while.body.i.i61.i.while.body.i.i61.i_crit_edge, %if.then.i.i.while.body.i.i61.i_crit_edge
  %128 = phi ptr [ %138, %while.body.i.i61.i.while.body.i.i61.i_crit_edge ], [ %116, %if.then.i.i.while.body.i.i61.i_crit_edge ]
  %129 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i.i.i55.i = add i32 %130, -1
  store volatile i32 %sub.i.i.i.i55.i, ptr %qlen.i.i, align 4
  %131 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %128, align 8
  %prev9.i.i.i.i56.i = getelementptr inbounds %struct.anon.41, ptr %128, i32 0, i32 1
  %133 = ptrtoint ptr %prev9.i.i.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %prev9.i.i.i.i56.i, align 4
  store ptr null, ptr %prev9.i.i.i.i56.i, align 4
  store ptr null, ptr %128, align 8
  %prev17.i.i.i.i57.i = getelementptr inbounds %struct.anon.41, ptr %132, i32 0, i32 1
  %135 = ptrtoint ptr %prev17.i.i.i.i57.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile ptr %134, ptr %prev17.i.i.i.i57.i, align 4
  %136 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %136)
  store volatile ptr %132, ptr %134, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %128, i32 noundef 0) #16
  %137 = ptrtoint ptr %amsdu.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %amsdu.i, align 4
  %cmp.i.i.i.i58.i = icmp eq ptr %138, %amsdu.i
  %tobool.not.i1.i.i59.i = icmp eq ptr %138, null
  %tobool.not.i.i.i60.i = or i1 %cmp.i.i.i.i58.i, %tobool.not.i1.i.i59.i
  br i1 %tobool.not.i.i.i60.i, label %while.body.i.i61.i.if.end13.i_crit_edge, label %while.body.i.i61.i.while.body.i.i61.i_crit_edge

while.body.i.i61.i.while.body.i.i61.i_crit_edge:  ; preds = %while.body.i.i61.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i61.i

while.body.i.i61.i.if.end13.i_crit_edge:          ; preds = %while.body.i.i61.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13.i

if.end.i62.i:                                     ; preds = %lor.lhs.false.i.i
  %tobool.not.i.i3.i.i = icmp eq ptr %spec.store.select.i.i.i, null
  br i1 %tobool.not.i.i3.i.i, label %if.end.i62.i.__skb_dequeue.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

if.end.i62.i.__skb_dequeue.exit.i.i.i_crit_edge:  ; preds = %if.end.i62.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__skb_dequeue.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i62.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i.i4.i.i = add i32 %123, -1
  %139 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile i32 %sub.i.i.i4.i.i, ptr %qlen.i.i, align 4
  %140 = ptrtoint ptr %spec.store.select.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %spec.store.select.i.i.i, align 8
  %prev9.i.i.i5.i.i = getelementptr inbounds %struct.anon.41, ptr %spec.store.select.i.i.i, i32 0, i32 1
  %142 = ptrtoint ptr %prev9.i.i.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %prev9.i.i.i5.i.i, align 4
  store ptr null, ptr %prev9.i.i.i5.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i.i, align 8
  %prev17.i.i.i6.i.i = getelementptr inbounds %struct.anon.41, ptr %141, i32 0, i32 1
  %144 = ptrtoint ptr %prev17.i.i.i6.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %143, ptr %prev17.i.i.i6.i.i, align 4
  %145 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile ptr %141, ptr %143, align 8
  br label %__skb_dequeue.exit.i.i.i

__skb_dequeue.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %if.end.i62.i.__skb_dequeue.exit.i.i.i_crit_edge
  %146 = ptrtoint ptr %amsdu.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %skb.015.i.i.i = load ptr, ptr %amsdu.i, align 4
  %cmp.not16.i.i.i = icmp eq ptr %skb.015.i.i.i, %amsdu.i
  br i1 %cmp.not16.i.i.i, label %__skb_dequeue.exit.i.i.i.for.end.i.i.i_crit_edge, label %__skb_dequeue.exit.i.i.i.for.body.i.i.i_crit_edge

__skb_dequeue.exit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %__skb_dequeue.exit.i.i.i
  br label %for.body.i.i.i

__skb_dequeue.exit.i.i.i.for.end.i.i.i_crit_edge: ; preds = %__skb_dequeue.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %__skb_dequeue.exit.i.i.i.for.body.i.i.i_crit_edge
  %skb.018.i.i.i = phi ptr [ %skb.0.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %skb.015.i.i.i, %__skb_dequeue.exit.i.i.i.for.body.i.i.i_crit_edge ]
  %total_len.017.i.i.i = phi i32 [ %add.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %__skb_dequeue.exit.i.i.i.for.body.i.i.i_crit_edge ]
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.018.i.i.i, i32 0, i32 6
  %147 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %len.i.i.i, align 4
  %add.i.i.i = add i32 %148, %total_len.017.i.i.i
  %149 = ptrtoint ptr %skb.018.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %skb.0.i.i.i = load ptr, ptr %skb.018.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %skb.0.i.i.i, %amsdu.i
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.for.end.i.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.i

for.body.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i.for.end.i.i.i_crit_edge, %__skb_dequeue.exit.i.i.i.for.end.i.i.i_crit_edge
  %total_len.0.lcssa.i.i.i = phi i32 [ 0, %__skb_dequeue.exit.i.i.i.for.end.i.i.i_crit_edge ], [ %add.i.i.i, %for.body.i.i.i.for.end.i.i.i_crit_edge ]
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i.i, i32 0, i32 7
  %150 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool.i.not.i.i.i.i = icmp eq i32 %151, 0
  br i1 %tobool.i.not.i.i.i.i, label %cond.false.i.i.i.i, label %for.end.i.i.i.skb_tailroom.exit.i.i.i_crit_edge

for.end.i.i.i.skb_tailroom.exit.i.i.i_crit_edge:  ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_tailroom.exit.i.i.i

cond.false.i.i.i.i:                               ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i.i, i32 0, i32 17
  %152 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %end.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i.i, i32 0, i32 16
  %154 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %153 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %155 to i32
  %sub.ptr.sub.i.neg.i.i.i = sub i32 %sub.ptr.rhs.cast.i.i.i.i, %sub.ptr.lhs.cast.i.i.i.i
  br label %skb_tailroom.exit.i.i.i

skb_tailroom.exit.i.i.i:                          ; preds = %cond.false.i.i.i.i, %for.end.i.i.i.skb_tailroom.exit.i.i.i_crit_edge
  %cond.i.neg.i.i.i = phi i32 [ %sub.ptr.sub.i.neg.i.i.i, %cond.false.i.i.i.i ], [ 0, %for.end.i.i.i.skb_tailroom.exit.i.i.i_crit_edge ]
  %sub.i.i.i = add i32 %cond.i.neg.i.i.i, %total_len.0.lcssa.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp4.i.i.i = icmp sgt i32 %sub.i.i.i, 0
  br i1 %cmp4.i.i.i, label %land.lhs.true.i.i.i, label %skb_tailroom.exit.i.i.i.if.end.i.i.i_crit_edge

skb_tailroom.exit.i.i.i.if.end.i.i.i_crit_edge:   ; preds = %skb_tailroom.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %skb_tailroom.exit.i.i.i
  %call5.i.i.i = call i32 @pskb_expand_head(ptr noundef %spec.store.select.i.i.i, i32 noundef 0, i32 noundef %sub.i.i.i, i32 noundef 2592) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %cmp6.i.i.i = icmp slt i32 %call5.i.i.i, 0
  br i1 %cmp6.i.i.i, label %if.then.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %156 = ptrtoint ptr %amsdu.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %amsdu.i, align 4
  %158 = ptrtoint ptr %spec.store.select.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store volatile ptr %157, ptr %spec.store.select.i.i.i, align 8
  %prev10.i.i.i.i.i.i = getelementptr inbounds %struct.anon.41, ptr %spec.store.select.i.i.i, i32 0, i32 1
  %159 = ptrtoint ptr %prev10.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store volatile ptr %amsdu.i, ptr %prev10.i.i.i.i.i.i, align 4
  %prev17.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %157, i32 0, i32 1
  %160 = ptrtoint ptr %prev17.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store volatile ptr %spec.store.select.i.i.i, ptr %prev17.i.i.i.i.i.i, align 4
  store volatile ptr %spec.store.select.i.i.i, ptr %amsdu.i, align 4
  %161 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %162, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %qlen.i.i, align 4
  br label %if.end13.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %skb_tailroom.exit.i.i.i.if.end.i.i.i_crit_edge
  %163 = ptrtoint ptr %amsdu.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %amsdu.i, align 4
  %cmp.i.i119.i.i.i = icmp eq ptr %164, %amsdu.i
  %tobool.not.i31420.i.i.i = icmp eq ptr %164, null
  %tobool.not.i321.i.i.i = or i1 %cmp.i.i119.i.i.i, %tobool.not.i31420.i.i.i
  br i1 %tobool.not.i321.i.i.i, label %if.end.i.i.i.while.end.i.i.i_crit_edge, label %if.end.i.i.i.while.body.i7.i.i_crit_edge

if.end.i.i.i.while.body.i7.i.i_crit_edge:         ; preds = %if.end.i.i.i
  br label %while.body.i7.i.i

if.end.i.i.i.while.end.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i.i.i

while.body.i7.i.i:                                ; preds = %while.body.i7.i.i.while.body.i7.i.i_crit_edge, %if.end.i.i.i.while.body.i7.i.i_crit_edge
  %165 = phi ptr [ %182, %while.body.i7.i.i.while.body.i7.i.i_crit_edge ], [ %164, %if.end.i.i.i.while.body.i7.i.i_crit_edge ]
  %166 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i5.i.i.i = add i32 %167, -1
  store volatile i32 %sub.i.i5.i.i.i, ptr %qlen.i.i, align 4
  %168 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %165, align 8
  %prev9.i.i6.i.i.i = getelementptr inbounds %struct.anon.41, ptr %165, i32 0, i32 1
  %170 = ptrtoint ptr %prev9.i.i6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %prev9.i.i6.i.i.i, align 4
  store ptr null, ptr %prev9.i.i6.i.i.i, align 4
  store ptr null, ptr %165, align 8
  %prev17.i.i7.i.i.i = getelementptr inbounds %struct.anon.41, ptr %169, i32 0, i32 1
  %172 = ptrtoint ptr %prev17.i.i7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store volatile ptr %171, ptr %prev17.i.i7.i.i.i, align 4
  %173 = ptrtoint ptr %171 to i32
  call void @__asan_store4_noabort(i32 %173)
  store volatile ptr %169, ptr %171, align 8
  %len8.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %165, i32 0, i32 6
  %174 = ptrtoint ptr %len8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %len8.i.i.i, align 4
  %call9.i.i.i = call ptr @skb_put(ptr noundef %spec.store.select.i.i.i, i32 noundef %175) #16
  %176 = ptrtoint ptr %len8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %len8.i.i.i, align 4
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %165, i32 0, i32 19
  %178 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %data.i.i.i.i, align 4
  %180 = call ptr @memcpy(ptr %call9.i.i.i, ptr %179, i32 %177)
  call void @__dev_kfree_skb_any(ptr noundef nonnull %165, i32 noundef 1) #16
  %181 = ptrtoint ptr %amsdu.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %amsdu.i, align 4
  %cmp.i.i1.i.i.i = icmp eq ptr %182, %amsdu.i
  %tobool.not.i314.i.i.i = icmp eq ptr %182, null
  %tobool.not.i3.i.i.i = or i1 %cmp.i.i1.i.i.i, %tobool.not.i314.i.i.i
  br i1 %tobool.not.i3.i.i.i, label %while.body.i7.i.i.while.end.i.i.i_crit_edge, label %while.body.i7.i.i.while.body.i7.i.i_crit_edge

while.body.i7.i.i.while.body.i7.i.i_crit_edge:    ; preds = %while.body.i7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i7.i.i

while.body.i7.i.i.while.end.i.i.i_crit_edge:      ; preds = %while.body.i7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %while.body.i7.i.i.while.end.i.i.i_crit_edge, %if.end.i.i.i.while.end.i.i.i_crit_edge
  %183 = ptrtoint ptr %amsdu.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %amsdu.i, align 4
  %185 = ptrtoint ptr %spec.store.select.i.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store volatile ptr %184, ptr %spec.store.select.i.i.i, align 8
  %prev10.i.i.i10.i.i.i = getelementptr inbounds %struct.anon.41, ptr %spec.store.select.i.i.i, i32 0, i32 1
  %186 = ptrtoint ptr %prev10.i.i.i10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store volatile ptr %amsdu.i, ptr %prev10.i.i.i10.i.i.i, align 4
  %prev17.i.i.i11.i.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %184, i32 0, i32 1
  %187 = ptrtoint ptr %prev17.i.i.i11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store volatile ptr %spec.store.select.i.i.i, ptr %prev17.i.i.i11.i.i.i, align 4
  store volatile ptr %spec.store.select.i.i.i, ptr %amsdu.i, align 4
  %188 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i13.i.i.i = add i32 %189, 1
  store volatile i32 %add.i.i.i13.i.i.i, ptr %qlen.i.i, align 4
  %sub11.i.i.i = add i32 %123, -1
  br label %if.end13.i

if.end13.i:                                       ; preds = %while.end.i.i.i, %if.then.i.i.i, %while.body.i.i61.i.if.end13.i_crit_edge, %if.then.i.i.if.end13.i_crit_edge, %if.end9.i.if.end13.i_crit_edge
  %drop_cnt.1.i = phi i32 [ 0, %if.end9.i.if.end13.i_crit_edge ], [ 0, %if.then.i.i.i ], [ 0, %while.end.i.i.i ], [ %127, %if.then.i.i.if.end13.i_crit_edge ], [ %127, %while.body.i.i61.i.if.end13.i_crit_edge ]
  %unchain_cnt.1.i = phi i32 [ 0, %if.end9.i.if.end13.i_crit_edge ], [ 0, %if.then.i.i.i ], [ %sub11.i.i.i, %while.end.i.i.i ], [ 0, %if.then.i.i.if.end13.i_crit_edge ], [ 0, %while.body.i.i61.i.if.end13.i_crit_edge ]
  %190 = ptrtoint ptr %amsdu.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %amsdu.i, align 4
  %cmp.i.not.i63.i = icmp eq ptr %191, %amsdu.i
  br i1 %cmp.i.not.i63.i, label %if.end13.i.ath10k_htt_rx_h_filter.exit.i_crit_edge, label %if.end.i64.i

if.end13.i.ath10k_htt_rx_h_filter.exit.i_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_h_filter.exit.i

if.end.i64.i:                                     ; preds = %if.end13.i
  %call1.i.i = call fastcc zeroext i1 @ath10k_htt_rx_amsdu_allowed(ptr noundef %12, ptr noundef nonnull %amsdu.i, ptr noundef %rx_status2.i) #16
  br i1 %call1.i.i, label %if.end.i64.i.ath10k_htt_rx_h_filter.exit.i_crit_edge, label %if.end3.i.i

if.end.i64.i.ath10k_htt_rx_h_filter.exit.i_crit_edge: ; preds = %if.end.i64.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_h_filter.exit.i

if.end3.i.i:                                      ; preds = %if.end.i64.i
  %192 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %qlen.i.i, align 4
  %194 = ptrtoint ptr %amsdu.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %amsdu.i, align 4
  %cmp.i.i2.i.i67.i = icmp eq ptr %195, %amsdu.i
  %tobool.not.i13.i.i68.i = icmp eq ptr %195, null
  %tobool.not.i4.i.i69.i = or i1 %cmp.i.i2.i.i67.i, %tobool.not.i13.i.i68.i
  br i1 %tobool.not.i4.i.i69.i, label %if.end3.i.i.ath10k_htt_rx_h_filter.exit.i_crit_edge, label %if.end3.i.i.while.body.i.i76.i_crit_edge

if.end3.i.i.while.body.i.i76.i_crit_edge:         ; preds = %if.end3.i.i
  br label %while.body.i.i76.i

if.end3.i.i.ath10k_htt_rx_h_filter.exit.i_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_h_filter.exit.i

while.body.i.i76.i:                               ; preds = %while.body.i.i76.i.while.body.i.i76.i_crit_edge, %if.end3.i.i.while.body.i.i76.i_crit_edge
  %196 = phi ptr [ %206, %while.body.i.i76.i.while.body.i.i76.i_crit_edge ], [ %195, %if.end3.i.i.while.body.i.i76.i_crit_edge ]
  %197 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i.i.i70.i = add i32 %198, -1
  store volatile i32 %sub.i.i.i.i70.i, ptr %qlen.i.i, align 4
  %199 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %196, align 8
  %prev9.i.i.i.i71.i = getelementptr inbounds %struct.anon.41, ptr %196, i32 0, i32 1
  %201 = ptrtoint ptr %prev9.i.i.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %prev9.i.i.i.i71.i, align 4
  store ptr null, ptr %prev9.i.i.i.i71.i, align 4
  store ptr null, ptr %196, align 8
  %prev17.i.i.i.i72.i = getelementptr inbounds %struct.anon.41, ptr %200, i32 0, i32 1
  %203 = ptrtoint ptr %prev17.i.i.i.i72.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store volatile ptr %202, ptr %prev17.i.i.i.i72.i, align 4
  %204 = ptrtoint ptr %202 to i32
  call void @__asan_store4_noabort(i32 %204)
  store volatile ptr %200, ptr %202, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %196, i32 noundef 0) #16
  %205 = ptrtoint ptr %amsdu.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %amsdu.i, align 4
  %cmp.i.i.i.i73.i = icmp eq ptr %206, %amsdu.i
  %tobool.not.i1.i.i74.i = icmp eq ptr %206, null
  %tobool.not.i.i.i75.i = or i1 %cmp.i.i.i.i73.i, %tobool.not.i1.i.i74.i
  br i1 %tobool.not.i.i.i75.i, label %while.body.i.i76.i.ath10k_htt_rx_h_filter.exit.i_crit_edge, label %while.body.i.i76.i.while.body.i.i76.i_crit_edge

while.body.i.i76.i.while.body.i.i76.i_crit_edge:  ; preds = %while.body.i.i76.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i76.i

while.body.i.i76.i.ath10k_htt_rx_h_filter.exit.i_crit_edge: ; preds = %while.body.i.i76.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_h_filter.exit.i

ath10k_htt_rx_h_filter.exit.i:                    ; preds = %while.body.i.i76.i.ath10k_htt_rx_h_filter.exit.i_crit_edge, %if.end3.i.i.ath10k_htt_rx_h_filter.exit.i_crit_edge, %if.end.i64.i.ath10k_htt_rx_h_filter.exit.i_crit_edge, %if.end13.i.ath10k_htt_rx_h_filter.exit.i_crit_edge
  %drop_cnt_filter.0.i = phi i32 [ 0, %if.end13.i.ath10k_htt_rx_h_filter.exit.i_crit_edge ], [ 0, %if.end.i64.i.ath10k_htt_rx_h_filter.exit.i_crit_edge ], [ %193, %if.end3.i.i.ath10k_htt_rx_h_filter.exit.i_crit_edge ], [ %193, %while.body.i.i76.i.ath10k_htt_rx_h_filter.exit.i_crit_edge ]
  call fastcc void @ath10k_htt_rx_h_mpdu(ptr noundef %12, ptr noundef nonnull %amsdu.i, ptr noundef %rx_status2.i, i1 noundef zeroext true, ptr noundef nonnull %first_hdr.i, ptr noundef nonnull %err.i, i16 noundef zeroext 0, i1 noundef zeroext false) #16
  %207 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %qlen.i.i, align 4
  %209 = ptrtoint ptr %amsdu.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %amsdu.i, align 4
  %cmp.i.i21.i.i = icmp eq ptr %210, %amsdu.i
  %tobool.not.i2022.i.i = icmp eq ptr %210, null
  %tobool.not.i23.i.i = or i1 %cmp.i.i21.i.i, %tobool.not.i2022.i.i
  br i1 %tobool.not.i23.i.i, label %ath10k_htt_rx_h_filter.exit.i.ath10k_htt_rx_handle_amsdu.exit.thread137_crit_edge, label %while.body.lr.ph.i81.i

ath10k_htt_rx_h_filter.exit.i.ath10k_htt_rx_handle_amsdu.exit.thread137_crit_edge: ; preds = %ath10k_htt_rx_h_filter.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_handle_amsdu.exit.thread137

while.body.lr.ph.i81.i:                           ; preds = %ath10k_htt_rx_h_filter.exit.i
  %rx_msdus_q.i.i.i = getelementptr inbounds %struct.ath10k, ptr %12, i32 0, i32 44, i32 21
  br label %while.body.i87.i

while.body.i87.i:                                 ; preds = %while.body.i87.i.while.body.i87.i_crit_edge, %while.body.lr.ph.i81.i
  %211 = phi ptr [ %210, %while.body.lr.ph.i81.i ], [ %226, %while.body.i87.i.while.body.i87.i_crit_edge ]
  %first_subframe.024.i.i = phi ptr [ %210, %while.body.lr.ph.i81.i ], [ %first_subframe.1.i.i, %while.body.i87.i.while.body.i87.i_crit_edge ]
  %212 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i.i82.i = add i32 %213, -1
  store volatile i32 %sub.i.i.i82.i, ptr %qlen.i.i, align 4
  %214 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %211, align 8
  %prev9.i.i.i83.i = getelementptr inbounds %struct.anon.41, ptr %211, i32 0, i32 1
  %216 = ptrtoint ptr %prev9.i.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %prev9.i.i.i83.i, align 4
  store ptr null, ptr %prev9.i.i.i83.i, align 4
  store ptr null, ptr %211, align 8
  %prev17.i.i.i84.i = getelementptr inbounds %struct.anon.41, ptr %215, i32 0, i32 1
  %218 = ptrtoint ptr %prev17.i.i.i84.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store volatile ptr %217, ptr %prev17.i.i.i84.i, align 4
  %219 = ptrtoint ptr %217 to i32
  call void @__asan_store4_noabort(i32 %219)
  store volatile ptr %215, ptr %217, align 8
  %220 = ptrtoint ptr %amsdu.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %amsdu.i, align 4
  %cmp.i19.not.i.i = icmp eq ptr %221, %amsdu.i
  %222 = ptrtoint ptr %flag4.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %flag4.i.i, align 8
  %and.i.i = and i32 %223, -4718593
  %masksel.i.i = select i1 %cmp.i19.not.i.i, i32 0, i32 524288
  %cmp.i.i = icmp eq ptr %211, %first_subframe.024.i.i
  %masksel26.i.i = select i1 %cmp.i.i, i32 0, i32 4194304
  %storemerge.i.i = or i32 %masksel.i.i, %masksel26.i.i
  %storemerge25.i.i = or i32 %storemerge.i.i, %and.i.i
  %first_subframe.1.i.i = select i1 %cmp.i.i, ptr null, ptr %first_subframe.024.i.i
  store i32 %storemerge25.i.i, ptr %flag4.i.i, align 8
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %211, i32 0, i32 3
  %224 = call ptr @memcpy(ptr %cb.i.i.i.i, ptr %rx_status2.i, i32 48)
  call void @skb_queue_tail(ptr noundef %rx_msdus_q.i.i.i, ptr noundef nonnull %211) #16
  %225 = ptrtoint ptr %amsdu.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %amsdu.i, align 4
  %cmp.i.i.i85.i = icmp eq ptr %226, %amsdu.i
  %tobool.not.i20.i.i = icmp eq ptr %226, null
  %tobool.not.i.i86.i = or i1 %cmp.i.i.i85.i, %tobool.not.i20.i.i
  br i1 %tobool.not.i.i86.i, label %while.body.i87.i.ath10k_htt_rx_handle_amsdu.exit.thread137_crit_edge, label %while.body.i87.i.while.body.i87.i_crit_edge

while.body.i87.i.while.body.i87.i_crit_edge:      ; preds = %while.body.i87.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i87.i

while.body.i87.i.ath10k_htt_rx_handle_amsdu.exit.thread137_crit_edge: ; preds = %while.body.i87.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_handle_amsdu.exit.thread137

ath10k_htt_rx_handle_amsdu.exit.thread137:        ; preds = %while.body.i87.i.ath10k_htt_rx_handle_amsdu.exit.thread137_crit_edge, %ath10k_htt_rx_h_filter.exit.i.ath10k_htt_rx_handle_amsdu.exit.thread137_crit_edge
  %227 = ptrtoint ptr %err.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %err.i, align 4
  call void @ath10k_sta_update_rx_tid_stats(ptr noundef %12, ptr noundef nonnull %first_hdr.i, i32 noundef %114, i32 noundef %228, i32 noundef %unchain_cnt.1.i, i32 noundef %drop_cnt.1.i, i32 noundef %drop_cnt_filter.0.i, i32 noundef %208) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %first_hdr.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %amsdu.i) #16
  br label %if.end16

ath10k_htt_rx_handle_amsdu.exit:                  ; preds = %while.body.i45.i.ath10k_htt_rx_handle_amsdu.exit_crit_edge, %if.then7.i.ath10k_htt_rx_handle_amsdu.exit_crit_edge
  %229 = ptrtoint ptr %rx_confused.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 1, ptr %rx_confused.i, align 8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %first_hdr.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err.i) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %amsdu.i) #16
  br i1 %cmp14, label %ath10k_htt_rx_handle_amsdu.exit.exit_crit_edge, label %ath10k_htt_rx_handle_amsdu.exit.if.end16_crit_edge

ath10k_htt_rx_handle_amsdu.exit.if.end16_crit_edge: ; preds = %ath10k_htt_rx_handle_amsdu.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

ath10k_htt_rx_handle_amsdu.exit.exit_crit_edge:   ; preds = %ath10k_htt_rx_handle_amsdu.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end16:                                         ; preds = %ath10k_htt_rx_handle_amsdu.exit.if.end16_crit_edge, %ath10k_htt_rx_handle_amsdu.exit.thread137
  %call.i.i107 = call zeroext i1 @__kasan_check_write(ptr noundef %num_mpdus_ready, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %num_mpdus_ready, i32 1, i32 3, i32 1) #16
  %230 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_mpdus_ready, ptr %num_mpdus_ready, i32 1, ptr elementtype(i32) %num_mpdus_ready) #16, !srcloc !324
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %num_mpdus_ready, i32 noundef 4) #16
  %231 = ptrtoint ptr %num_mpdus_ready to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load volatile i32, ptr %num_mpdus_ready, align 4
  %tobool11.not = icmp eq i32 %232, 0
  br i1 %tobool11.not, label %if.end16.while.end18_crit_edge, label %if.end16.while.body12_crit_edge

if.end16.while.body12_crit_edge:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body12

if.end16.while.end18_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end18

while.end18:                                      ; preds = %if.end16.while.end18_crit_edge, %while.cond9.preheader.while.end18_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %quota.addr.0.lcssa.i, i32 %budget)
  %cmp12.i110 = icmp slt i32 %quota.addr.0.lcssa.i, %budget
  br i1 %cmp12.i110, label %while.end18.while.body.i113_crit_edge, label %while.end18.ath10k_htt_rx_deliver_msdu.exit121_crit_edge

while.end18.ath10k_htt_rx_deliver_msdu.exit121_crit_edge: ; preds = %while.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_deliver_msdu.exit121

while.end18.while.body.i113_crit_edge:            ; preds = %while.end18
  br label %while.body.i113

while.body.i113:                                  ; preds = %if.end6.i119.while.body.i113_crit_edge, %while.end18.while.body.i113_crit_edge
  %quota.addr.013.i111 = phi i32 [ %inc.i117, %if.end6.i119.while.body.i113_crit_edge ], [ %quota.addr.0.lcssa.i, %while.end18.while.body.i113_crit_edge ]
  %233 = ptrtoint ptr %rx_msdus_q.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %rx_msdus_q.i, align 4
  %cmp.i.not.i112 = icmp eq ptr %234, %rx_msdus_q.i
  br i1 %cmp.i.not.i112, label %while.body.i113.ath10k_htt_rx_deliver_msdu.exit121_crit_edge, label %if.end.i116

while.body.i113.ath10k_htt_rx_deliver_msdu.exit121_crit_edge: ; preds = %while.body.i113
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_deliver_msdu.exit121

if.end.i116:                                      ; preds = %while.body.i113
  %call3.i114 = call ptr @skb_dequeue(ptr noundef %rx_msdus_q.i) #16
  %tobool4.not.i115 = icmp eq ptr %call3.i114, null
  br i1 %tobool4.not.i115, label %if.end.i116.ath10k_htt_rx_deliver_msdu.exit121_crit_edge, label %if.end6.i119

if.end.i116.ath10k_htt_rx_deliver_msdu.exit121_crit_edge: ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_deliver_msdu.exit121

if.end6.i119:                                     ; preds = %if.end.i116
  call fastcc void @ath10k_process_rx(ptr noundef %ar, ptr noundef nonnull %call3.i114) #16
  %inc.i117 = add i32 %quota.addr.013.i111, 1
  %exitcond.not.i118 = icmp eq i32 %inc.i117, %budget
  br i1 %exitcond.not.i118, label %if.end6.i119.if.end24_crit_edge, label %if.end6.i119.while.body.i113_crit_edge

if.end6.i119.while.body.i113_crit_edge:           ; preds = %if.end6.i119
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i113

if.end6.i119.if.end24_crit_edge:                  ; preds = %if.end6.i119
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

ath10k_htt_rx_deliver_msdu.exit121:               ; preds = %if.end.i116.ath10k_htt_rx_deliver_msdu.exit121_crit_edge, %while.body.i113.ath10k_htt_rx_deliver_msdu.exit121_crit_edge, %while.end18.ath10k_htt_rx_deliver_msdu.exit121_crit_edge
  %quota.addr.0.lcssa.i120 = phi i32 [ %quota.addr.0.lcssa.i, %while.end18.ath10k_htt_rx_deliver_msdu.exit121_crit_edge ], [ %quota.addr.013.i111, %if.end.i116.ath10k_htt_rx_deliver_msdu.exit121_crit_edge ], [ %quota.addr.013.i111, %while.body.i113.ath10k_htt_rx_deliver_msdu.exit121_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %quota.addr.0.lcssa.i120, i32 %budget)
  %cmp20 = icmp slt i32 %quota.addr.0.lcssa.i120, %budget
  br i1 %cmp20, label %land.lhs.true, label %ath10k_htt_rx_deliver_msdu.exit121.if.end24_crit_edge

ath10k_htt_rx_deliver_msdu.exit121.if.end24_crit_edge: ; preds = %ath10k_htt_rx_deliver_msdu.exit121
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

land.lhs.true:                                    ; preds = %ath10k_htt_rx_deliver_msdu.exit121
  call void @__sanitizer_cov_trace_pc() #18
  %txdone_fifo = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 18
  %235 = ptrtoint ptr %txdone_fifo to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %txdone_fifo, align 4
  %out = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 18, i32 0, i32 0, i32 1
  %237 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %236, i32 %238)
  %cmp21 = icmp eq i32 %236, %238
  %spec.select = select i1 %cmp21, i32 %quota.addr.0.lcssa.i120, i32 %budget
  br label %if.end24

if.end24:                                         ; preds = %land.lhs.true, %ath10k_htt_rx_deliver_msdu.exit121.if.end24_crit_edge, %if.end6.i119.if.end24_crit_edge
  %quota.0 = phi i32 [ %quota.addr.0.lcssa.i120, %ath10k_htt_rx_deliver_msdu.exit121.if.end24_crit_edge ], [ %spec.select, %land.lhs.true ], [ %budget, %if.end6.i119.if.end24_crit_edge ]
  %txdone_fifo26 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 18
  %out30 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 18, i32 0, i32 0, i32 1
  %239 = ptrtoint ptr %txdone_fifo26 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %txdone_fifo26, align 4
  %241 = ptrtoint ptr %out30 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %out30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %240, i32 %242)
  %cmp31.not154 = icmp eq i32 %240, %242
  br i1 %cmp31.not154, label %if.end24.while.end47_crit_edge, label %while.body45.lr.ph

if.end24.while.end47_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end47

while.body45.lr.ph:                               ; preds = %if.end24
  %data = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 18, i32 0, i32 0, i32 4
  %mask = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 18, i32 0, i32 0, i32 2
  br label %while.body45

while.body45:                                     ; preds = %while.body45.while.body45_crit_edge, %while.body45.lr.ph
  %243 = phi i32 [ %242, %while.body45.lr.ph ], [ %254, %while.body45.while.body45_crit_edge ]
  %244 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %data, align 4
  %246 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %mask, align 4
  %and = and i32 %247, %243
  %arrayidx = getelementptr %struct.htt_tx_done, ptr %245, i32 %and
  %248 = call ptr @memcpy(ptr %tx_done, ptr %arrayidx, i32 6)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !325
  %249 = ptrtoint ptr %out30 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %out30, align 4
  %inc = add i32 %250, 1
  store i32 %inc, ptr %out30, align 4
  %call46 = call i32 @ath10k_txrx_tx_unref(ptr noundef %htt1, ptr noundef nonnull %tx_done) #16
  %251 = ptrtoint ptr %txdone_fifo26 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %txdone_fifo26, align 4
  %253 = ptrtoint ptr %out30 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %out30, align 4
  %cmp31.not = icmp eq i32 %252, %254
  br i1 %cmp31.not, label %while.body45.while.end47_crit_edge, label %while.body45.while.body45_crit_edge

while.body45.while.body45_crit_edge:              ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body45

while.body45.while.end47_crit_edge:               ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end47

while.end47:                                      ; preds = %while.body45.while.end47_crit_edge, %if.end24.while.end47_crit_edge
  call void @ath10k_mac_tx_push_pending(ptr noundef %ar) #16
  %tx_fetch_ind_q = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 23
  %lock53 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 23, i32 2
  %call55 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock53) #16
  %255 = ptrtoint ptr %tx_fetch_ind_q to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %tx_fetch_ind_q, align 4
  %cmp.i.not.i122 = icmp eq ptr %256, %tx_fetch_ind_q
  br i1 %cmp.i.not.i122, label %while.end47.skb_queue_splice_init.exit_crit_edge, label %if.then.i124

while.end47.skb_queue_splice_init.exit_crit_edge: ; preds = %while.end47
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_queue_splice_init.exit

if.then.i124:                                     ; preds = %while.end47
  call void @__sanitizer_cov_trace_pc() #18
  %257 = ptrtoint ptr %tx_ind_q to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %tx_ind_q, align 4
  %prev2.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 23, i32 0, i32 0, i32 1
  %259 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %prev2.i.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon.41, ptr %256, i32 0, i32 1
  %261 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store volatile ptr %tx_ind_q, ptr %prev5.i.i, align 4
  store volatile ptr %256, ptr %tx_ind_q, align 8
  %262 = ptrtoint ptr %260 to i32
  call void @__asan_store4_noabort(i32 %262)
  store volatile ptr %258, ptr %260, align 8
  %prev35.i.i = getelementptr inbounds %struct.anon.41, ptr %258, i32 0, i32 1
  %263 = ptrtoint ptr %prev35.i.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store volatile ptr %260, ptr %prev35.i.i, align 4
  %qlen.i123 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 23, i32 1
  %264 = ptrtoint ptr %qlen.i123 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %qlen.i123, align 4
  %266 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %qlen.i, align 4
  %add.i = add i32 %267, %265
  store i32 %add.i, ptr %qlen.i, align 4
  %268 = ptrtoint ptr %tx_fetch_ind_q to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr %tx_fetch_ind_q, ptr %tx_fetch_ind_q, align 4
  store ptr %tx_fetch_ind_q, ptr %prev2.i.i, align 4
  store i32 0, ptr %qlen.i123, align 4
  br label %skb_queue_splice_init.exit

skb_queue_splice_init.exit:                       ; preds = %if.then.i124, %while.end47.skb_queue_splice_init.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock53, i32 noundef %call55) #16
  %269 = ptrtoint ptr %tx_ind_q to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %tx_ind_q, align 4
  %cmp.i.i126155 = icmp eq ptr %270, %tx_ind_q
  %tobool.not.i127143156 = icmp eq ptr %270, null
  %tobool.not.i127157 = or i1 %cmp.i.i126155, %tobool.not.i127143156
  br i1 %tobool.not.i127157, label %skb_queue_splice_init.exit.exit_crit_edge, label %skb_queue_splice_init.exit.while.body66_crit_edge

skb_queue_splice_init.exit.while.body66_crit_edge: ; preds = %skb_queue_splice_init.exit
  br label %while.body66

skb_queue_splice_init.exit.exit_crit_edge:        ; preds = %skb_queue_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

while.body66:                                     ; preds = %while.body66.while.body66_crit_edge, %skb_queue_splice_init.exit.while.body66_crit_edge
  %271 = phi ptr [ %281, %while.body66.while.body66_crit_edge ], [ %270, %skb_queue_splice_init.exit.while.body66_crit_edge ]
  %272 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %qlen.i, align 4
  %sub.i.i129 = add i32 %273, -1
  store volatile i32 %sub.i.i129, ptr %qlen.i, align 4
  %274 = ptrtoint ptr %271 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %271, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.41, ptr %271, i32 0, i32 1
  %276 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %271, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.41, ptr %275, i32 0, i32 1
  %278 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store volatile ptr %277, ptr %prev17.i.i, align 4
  %279 = ptrtoint ptr %277 to i32
  call void @__asan_store4_noabort(i32 %279)
  store volatile ptr %275, ptr %277, align 8
  call fastcc void @ath10k_htt_rx_tx_fetch_ind(ptr noundef %ar, ptr noundef nonnull %271)
  call void @__dev_kfree_skb_any(ptr noundef nonnull %271, i32 noundef 1) #16
  %280 = ptrtoint ptr %tx_ind_q to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %tx_ind_q, align 4
  %cmp.i.i126 = icmp eq ptr %281, %tx_ind_q
  %tobool.not.i127143 = icmp eq ptr %281, null
  %tobool.not.i127 = or i1 %cmp.i.i126, %tobool.not.i127143
  br i1 %tobool.not.i127, label %while.body66.exit_crit_edge, label %while.body66.while.body66_crit_edge

while.body66.while.body66_crit_edge:              ; preds = %while.body66
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body66

while.body66.exit_crit_edge:                      ; preds = %while.body66
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

exit:                                             ; preds = %while.body66.exit_crit_edge, %skb_queue_splice_init.exit.exit_crit_edge, %ath10k_htt_rx_handle_amsdu.exit.exit_crit_edge, %ath10k_htt_rx_handle_amsdu.exit.thread, %while.body.exit_crit_edge, %ath10k_htt_rx_deliver_msdu.exit.exit_crit_edge, %if.end6.i.exit_crit_edge
  %resched_napi.0.off0 = phi i32 [ %budget, %ath10k_htt_rx_deliver_msdu.exit.exit_crit_edge ], [ %budget, %ath10k_htt_rx_handle_amsdu.exit.thread ], [ %quota.0, %skb_queue_splice_init.exit.exit_crit_edge ], [ %quota.0, %while.body66.exit_crit_edge ], [ %budget, %ath10k_htt_rx_handle_amsdu.exit.exit_crit_edge ], [ %budget, %while.body.exit_crit_edge ], [ %budget, %if.end6.i.exit_crit_edge ]
  %lock.i132 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 10, i32 12
  call void @_raw_spin_lock_bh(ptr noundef %lock.i132) #16
  %fill_level.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 10, i32 7
  %282 = ptrtoint ptr %fill_level.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %fill_level.i, align 8
  %fill_cnt.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 10, i32 8
  %284 = ptrtoint ptr %fill_cnt.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %fill_cnt.i, align 4
  %sub.i = sub i32 %283, %285
  %286 = call i32 @llvm.smin.i32(i32 %sub.i, i32 100) #16
  %call.i = call fastcc i32 @ath10k_htt_rx_ring_fill_n(ptr noundef %htt1, i32 noundef %286) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call.i)
  %cmp4.i = icmp eq i32 %call.i, -12
  br i1 %cmp4.i, label %exit.if.end15.sink.split.i_crit_edge, label %if.else.i

exit.if.end15.sink.split.i_crit_edge:             ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i

if.else.i:                                        ; preds = %exit
  %sub3.i = sub i32 %sub.i, %286
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3.i)
  %cmp8.i = icmp sgt i32 %sub3.i, 0
  br i1 %cmp8.i, label %if.else.i.if.end15.sink.split.i_crit_edge, label %if.else.i.ath10k_htt_rx_msdu_buff_replenish.exit_crit_edge

if.else.i.ath10k_htt_rx_msdu_buff_replenish.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_msdu_buff_replenish.exit

if.else.i.if.end15.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i

if.end15.sink.split.i:                            ; preds = %if.else.i.if.end15.sink.split.i_crit_edge, %exit.if.end15.sink.split.i_crit_edge
  %.sink29.i = phi i32 [ 5, %exit.if.end15.sink.split.i_crit_edge ], [ 1, %if.else.i.if.end15.sink.split.i_crit_edge ]
  %refill_retry_timer11.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 10, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %287 = load volatile i32, ptr @jiffies, align 128
  %add13.i = add i32 %287, %.sink29.i
  %call14.i = call i32 @mod_timer(ptr noundef %refill_retry_timer11.i, i32 noundef %add13.i) #16
  br label %ath10k_htt_rx_msdu_buff_replenish.exit

ath10k_htt_rx_msdu_buff_replenish.exit:           ; preds = %if.end15.sink.split.i, %if.else.i.ath10k_htt_rx_msdu_buff_replenish.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i132) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tx_ind_q) #16
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tx_done) #16
  ret i32 %resched_napi.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_htt_rx_in_ord_ind(ptr noundef %ar, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %list = alloca %struct.sk_buff_head, align 4
  %amsdu = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %htt1 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %rx_status = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 24
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %list) #16
  %2 = call ptr @memset(ptr %list, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %amsdu) #16
  %3 = call ptr @memset(ptr %amsdu, i32 255, i32 56)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 10, i32 12, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !308

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 3147, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %rx_confused = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 19
  %5 = ptrtoint ptr %rx_confused to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rx_confused, align 8, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool25.not = icmp eq i8 %6, 0
  br i1 %tobool25.not, label %if.end27, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %call28 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #16
  %call29 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 7) #16
  %7 = getelementptr inbounds %struct.htt_resp, ptr %1, i32 0, i32 1
  %peer_id30 = getelementptr inbounds %struct.htt_rx_in_ord_ind, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %peer_id30 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %peer_id30, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %msdu_count31 = getelementptr inbounds %struct.htt_resp, ptr %1, i32 0, i32 1, i32 0, i32 4
  %11 = ptrtoint ptr %msdu_count31 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %msdu_count31, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %vdev_id32 = getelementptr inbounds %struct.htt_resp, ptr %1, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %vdev_id32 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %vdev_id32, align 1
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %7, align 1
  %conv = zext i8 %17 to i32
  %and = and i8 %17, 31
  %and36 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %and44 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45 = icmp ne i32 %and44, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %18 = load i32, ptr @ath10k_debug_mask, align 4
  %and52 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %lor.lhs.false, label %if.end27.if.then56_crit_edge

if.end27.if.then56_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then56

lor.lhs.false:                                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_rx_in_ord_ind, %if.then56)) #16
          to label %do.end67 [label %if.then56], !srcloc !313

if.then56:                                        ; preds = %lor.lhs.false, %if.end27.if.then56_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  %conv57 = zext i8 %15 to i32
  %conv58 = zext i16 %10 to i32
  %conv59 = zext i8 %and to i32
  %and36.lobit = lshr exact i32 %and36, 5
  %and44.lobit = lshr exact i32 %and44, 6
  %conv64 = zext i16 %13 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 8, ptr noundef nonnull @.str.99, i32 noundef %conv57, i32 noundef %conv58, i32 noundef %conv59, i32 noundef %and36.lobit, i32 noundef %and44.lobit, i32 noundef %conv64) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then56, %lor.lhs.false
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %conv68 = zext i16 %13 to i32
  %mul = shl nuw nsw i32 %conv68, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %mul)
  %cmp69 = icmp ult i32 %20, %mul
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.100) #16
  br label %cleanup

if.end72:                                         ; preds = %do.end67
  %21 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.anon.62, ptr %list, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %list, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  %23 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %qlen.i, align 4
  %target_64bit = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 45, i32 29
  %24 = ptrtoint ptr %target_64bit to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %target_64bit, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool73.not = icmp eq i8 %25, 0
  %26 = ptrtoint ptr %htt1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %htt1, align 8
  %28 = getelementptr inbounds %struct.htt_rx_in_ord_ind, ptr %7, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %29 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i145 = icmp eq i32 %29, 0
  br i1 %tobool73.not, label %if.else, label %if.then74

if.then74:                                        ; preds = %if.end72
  br i1 %tobool.not.i145, label %if.then74.if.end.i_crit_edge, label %land.rhs.i

if.then74.if.end.i_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then74
  %dep_map.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 10, i32 12, i32 0, i32 0, i32 4
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !308

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 703, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then74.if.end.i_crit_edge
  %30 = ptrtoint ptr %msdu_count31 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %msdu_count31, align 1
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %7, align 1
  %34 = and i8 %33, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool27.not.i = icmp eq i8 %34, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool32.not130.i = icmp eq i16 %31, 0
  br i1 %tobool32.not130.i, label %if.end.i.if.end82_crit_edge, label %while.body.lr.ph.i

if.end.i.if.end82_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end82

while.body.lr.ph.i:                               ; preds = %if.end.i
  %35 = call i16 @llvm.bswap.i16(i16 %31) #16
  %conv.i = zext i16 %35 to i32
  %monitor_arvif.i = getelementptr inbounds %struct.ath10k, ptr %27, i32 0, i32 61
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec133.in.i = phi i32 [ %conv.i, %while.body.lr.ph.i ], [ %dec133.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %msdu_desc.0131.i = phi ptr [ %28, %while.body.lr.ph.i ], [ %msdu_desc.0.be.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %dec133.i = add i32 %dec133.in.i, -1
  %36 = ptrtoint ptr %msdu_desc.0131.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %msdu_desc.0131.i, align 1
  %38 = call i64 @llvm.bswap.i64(i64 %37) #16
  %call33.i = call fastcc ptr @ath10k_htt_rx_pop_paddr(ptr noundef %htt1, i64 noundef %38) #16
  %tobool34.not.i = icmp eq ptr %call33.i, null
  br i1 %tobool34.not.i, label %if.then35.i, label %if.end36.i

if.then35.i:                                      ; preds = %while.body.i
  %39 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %list, align 4
  %cmp.i.i2.i.i = icmp eq ptr %40, %list
  %tobool.not.i13.i.i = icmp eq ptr %40, null
  %tobool.not.i4.i.i = or i1 %cmp.i.i2.i.i, %tobool.not.i13.i.i
  br i1 %tobool.not.i4.i.i, label %if.then35.i.if.then80_crit_edge, label %if.then35.i.while.body.i.i_crit_edge

if.then35.i.while.body.i.i_crit_edge:             ; preds = %if.then35.i
  br label %while.body.i.i

if.then35.i.if.then80_crit_edge:                  ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then80

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then35.i.while.body.i.i_crit_edge
  %41 = phi ptr [ %51, %while.body.i.i.while.body.i.i_crit_edge ], [ %40, %if.then35.i.while.body.i.i_crit_edge ]
  %42 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %qlen.i, align 4
  %sub.i.i.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i.i.i, ptr %qlen.i, align 4
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %41, align 8
  %prev9.i.i.i.i = getelementptr inbounds %struct.anon.41, ptr %41, i32 0, i32 1
  %46 = ptrtoint ptr %prev9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %41, align 8
  %prev17.i.i.i.i = getelementptr inbounds %struct.anon.41, ptr %45, i32 0, i32 1
  %48 = ptrtoint ptr %prev17.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %47, ptr %prev17.i.i.i.i, align 4
  %49 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %45, ptr %47, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %41, i32 noundef 0) #16
  %50 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %list, align 4
  %cmp.i.i.i.i = icmp eq ptr %51, %list
  %tobool.not.i1.i.i = icmp eq ptr %51, null
  %tobool.not.i.i.i = or i1 %cmp.i.i.i.i, %tobool.not.i1.i.i
  br i1 %tobool.not.i.i.i, label %while.body.i.i.if.then80_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i

while.body.i.i.if.then80_crit_edge:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then80

if.end36.i:                                       ; preds = %while.body.i
  br i1 %tobool27.not.i, label %land.lhs.true.i, label %if.end36.i.while.cond.backedge.sink.split.i_crit_edge

if.end36.i.while.cond.backedge.sink.split.i_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.backedge.sink.split.i

land.lhs.true.i:                                  ; preds = %if.end36.i
  %52 = ptrtoint ptr %monitor_arvif.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %monitor_arvif.i, align 16
  %tobool38.not.i = icmp eq ptr %53, null
  br i1 %tobool38.not.i, label %if.then46.critedge.i, label %if.then39.i

if.then39.i:                                      ; preds = %land.lhs.true.i
  %54 = ptrtoint ptr %htt1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %htt1, align 8
  %msdu_len.i.i = getelementptr inbounds %struct.htt_rx_in_ord_msdu_desc_ext, ptr %msdu_desc.0131.i, i32 0, i32 1
  %56 = ptrtoint ptr %msdu_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %msdu_len.i.i, align 1
  %58 = call i16 @llvm.bswap.i16(i16 %57) #16
  %conv.i.i = zext i16 %58 to i32
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call33.i, i32 0, i32 19
  %59 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data.i.i, align 4
  call fastcc void @trace_ath10k_htt_rx_desc(ptr noundef %55, ptr noundef %60, i32 noundef 360) #16
  %call.i86.i = call ptr @skb_put(ptr noundef nonnull %call33.i, i32 noundef 360) #16
  %call2.i.i = call ptr @skb_pull(ptr noundef nonnull %call33.i, i32 noundef 360) #16
  %61 = call i16 @llvm.umin.i16(i16 %58, i16 1688) #16
  %62 = zext i16 %61 to i32
  %call4.i.i = call ptr @skb_put(ptr noundef nonnull %call33.i, i32 noundef %62) #16
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call33.i, i32 0, i32 6
  %63 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len.i.i, align 4
  %sub.i.i = sub i32 %conv.i.i, %64
  %reserved.i.i = getelementptr inbounds %struct.htt_rx_in_ord_msdu_desc_ext, ptr %msdu_desc.0131.i, i32 0, i32 3
  %65 = ptrtoint ptr %reserved.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %reserved.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i.i = icmp eq i8 %66, 0
  br i1 %tobool.not.i.i, label %if.end9.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %conv.i.i)
  %tobool5.not.i.i = icmp eq i32 %64, %conv.i.i
  br i1 %tobool5.not.i.i, label %if.then.i.i.while.cond.backedge.sink.split.i_crit_edge, label %if.then6.i.i

if.then.i.i.while.cond.backedge.sink.split.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.backedge.sink.split.i

if.then6.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %67 = ptrtoint ptr %msdu_len.i.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %msdu_len.i.i, align 1
  %69 = call i16 @llvm.bswap.i16(i16 %68) #16
  %conv8.i.i = zext i16 %69 to i32
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %55, ptr noundef nonnull @.str.105, i32 noundef %conv8.i.i, i32 noundef %sub.i.i) #16
  br label %while.cond.backedge.sink.split.i

if.end9.i.i:                                      ; preds = %if.then39.i
  %incdec.ptr.i.i = getelementptr %struct.htt_rx_in_ord_msdu_desc_ext, ptr %msdu_desc.0131.i, i32 1
  %70 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 8)
  %71 = load i64, ptr %incdec.ptr.i.i, align 1
  %72 = call i64 @llvm.bswap.i64(i64 %71) #16
  %call10.i.i = call fastcc ptr @ath10k_htt_rx_pop_paddr(ptr noundef %htt1, i64 noundef %72) #16
  %tobool11.not.i.i = icmp eq ptr %call10.i.i, null
  br i1 %tobool11.not.i.i, label %if.then12.i.i, label %if.end13.i.i

if.then12.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %55, ptr noundef nonnull @.str.106, i64 noundef %72) #16
  br label %if.then42.i

if.end13.i.i:                                     ; preds = %if.end9.i.i
  %73 = call i32 @llvm.smin.i32(i32 %sub.i.i, i32 2048) #16
  %call21.i.i = call ptr @skb_put(ptr noundef nonnull %call10.i.i, i32 noundef %73) #16
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call33.i, i32 0, i32 17
  %74 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %end.i.i.i.i, align 4
  %frag_list1.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %75, i32 0, i32 6
  %76 = ptrtoint ptr %frag_list1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call10.i.i, ptr %frag_list1.i.i.i, align 8
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call33.i, i32 0, i32 7
  %77 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %sub.i.i, ptr %data_len.i.i.i, align 8
  %78 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len.i.i, align 4
  %add.i.i.i = add i32 %79, %sub.i.i
  store i32 %add.i.i.i, ptr %len.i.i, align 4
  %len22.i.i = getelementptr inbounds %struct.sk_buff, ptr %call10.i.i, i32 0, i32 6
  %80 = ptrtoint ptr %len22.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len22.i.i, align 4
  %sub23.i.i = sub i32 %sub.i.i, %81
  %reserved24.i.i = getelementptr %struct.htt_rx_in_ord_msdu_desc_ext, ptr %msdu_desc.0131.i, i32 1, i32 3
  %82 = ptrtoint ptr %reserved24.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %reserved24.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool25.not114.i.i = icmp eq i8 %83, 0
  br i1 %tobool25.not114.i.i, label %if.end13.i.i.while.body.i87.i_crit_edge, label %if.end13.i.i.while.end.i.i_crit_edge

if.end13.i.i.while.end.i.i_crit_edge:             ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i.i

if.end13.i.i.while.body.i87.i_crit_edge:          ; preds = %if.end13.i.i
  br label %while.body.i87.i

while.body.i87.i:                                 ; preds = %if.end31.i.i.while.body.i87.i_crit_edge, %if.end13.i.i.while.body.i87.i_crit_edge
  %amsdu_len.0117.i.i = phi i32 [ %sub42.i.i, %if.end31.i.i.while.body.i87.i_crit_edge ], [ %sub23.i.i, %if.end13.i.i.while.body.i87.i_crit_edge ]
  %ind_desc.0116.i.i = phi ptr [ %incdec.ptr26.i.i, %if.end31.i.i.while.body.i87.i_crit_edge ], [ %incdec.ptr.i.i, %if.end13.i.i.while.body.i87.i_crit_edge ]
  %prev_frag_buf.0115.i.i = phi ptr [ %call28.i.i, %if.end31.i.i.while.body.i87.i_crit_edge ], [ %call10.i.i, %if.end13.i.i.while.body.i87.i_crit_edge ]
  %incdec.ptr26.i.i = getelementptr %struct.htt_rx_in_ord_msdu_desc_ext, ptr %ind_desc.0116.i.i, i32 1
  %84 = ptrtoint ptr %incdec.ptr26.i.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 8)
  %85 = load i64, ptr %incdec.ptr26.i.i, align 1
  %86 = call i64 @llvm.bswap.i64(i64 %85) #16
  %call28.i.i = call fastcc ptr @ath10k_htt_rx_pop_paddr(ptr noundef %htt1, i64 noundef %86) #16
  %tobool29.not.i.i = icmp eq ptr %call28.i.i, null
  br i1 %tobool29.not.i.i, label %if.then30.i.i, label %if.end31.i.i

if.then30.i.i:                                    ; preds = %while.body.i87.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %55, ptr noundef nonnull @.str.107, i64 noundef %86) #16
  %87 = ptrtoint ptr %prev_frag_buf.0115.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %prev_frag_buf.0115.i.i, align 8
  br label %if.then42.i

if.end31.i.i:                                     ; preds = %while.body.i87.i
  %88 = call i32 @llvm.smin.i32(i32 %amsdu_len.0117.i.i, i32 2048) #16
  %call39.i.i = call ptr @skb_put(ptr noundef nonnull %call28.i.i, i32 noundef %88) #16
  %reserved40.i.i = getelementptr %struct.htt_rx_in_ord_msdu_desc_ext, ptr %ind_desc.0116.i.i, i32 1, i32 3
  %89 = ptrtoint ptr %reserved40.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %reserved40.i.i, align 1
  %len41.i.i = getelementptr inbounds %struct.sk_buff, ptr %call28.i.i, i32 0, i32 6
  %91 = ptrtoint ptr %len41.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %len41.i.i, align 4
  %sub42.i.i = sub i32 %amsdu_len.0117.i.i, %92
  %93 = ptrtoint ptr %prev_frag_buf.0115.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call28.i.i, ptr %prev_frag_buf.0115.i.i, align 8
  %tobool25.not.i.i = icmp eq i8 %90, 0
  br i1 %tobool25.not.i.i, label %if.end31.i.i.while.body.i87.i_crit_edge, label %if.end31.i.i.while.end.i.i_crit_edge

if.end31.i.i.while.end.i.i_crit_edge:             ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i.i

if.end31.i.i.while.body.i87.i_crit_edge:          ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i87.i

while.end.i.i:                                    ; preds = %if.end31.i.i.while.end.i.i_crit_edge, %if.end13.i.i.while.end.i.i_crit_edge
  %prev_frag_buf.0.lcssa.i.i = phi ptr [ %call10.i.i, %if.end13.i.i.while.end.i.i_crit_edge ], [ %call28.i.i, %if.end31.i.i.while.end.i.i_crit_edge ]
  %ind_desc.0.lcssa.i.i = phi ptr [ %incdec.ptr.i.i, %if.end13.i.i.while.end.i.i_crit_edge ], [ %incdec.ptr26.i.i, %if.end31.i.i.while.end.i.i_crit_edge ]
  %amsdu_len.0.lcssa.i.i = phi i32 [ %sub23.i.i, %if.end13.i.i.while.end.i.i_crit_edge ], [ %sub42.i.i, %if.end31.i.i.while.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %amsdu_len.0.lcssa.i.i)
  %tobool44.not.i.i = icmp eq i32 %amsdu_len.0.lcssa.i.i, 0
  br i1 %tobool44.not.i.i, label %while.end.i.i.if.end48.i.i_crit_edge, label %if.then45.i.i

while.end.i.i.if.end48.i.i_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48.i.i

if.then45.i.i:                                    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %msdu_len46.i.i = getelementptr inbounds %struct.htt_rx_in_ord_msdu_desc_ext, ptr %ind_desc.0.lcssa.i.i, i32 0, i32 1
  %94 = ptrtoint ptr %msdu_len46.i.i to i32
  call void @__asan_loadN_noabort(i32 %94, i32 2)
  %95 = load i16, ptr %msdu_len46.i.i, align 1
  %96 = call i16 @llvm.bswap.i16(i16 %95) #16
  %conv47.i.i = zext i16 %96 to i32
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %55, ptr noundef nonnull @.str.105, i32 noundef %conv47.i.i, i32 noundef %amsdu_len.0.lcssa.i.i) #16
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then45.i.i, %while.end.i.i.if.end48.i.i_crit_edge
  %97 = ptrtoint ptr %prev_frag_buf.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %prev_frag_buf.0.lcssa.i.i, align 8
  br label %while.cond.backedge.sink.split.i

if.then42.i:                                      ; preds = %if.then30.i.i, %if.then12.i.i
  %98 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %list, align 4
  %cmp.i.i2.i88.i = icmp eq ptr %99, %list
  %tobool.not.i13.i89.i = icmp eq ptr %99, null
  %tobool.not.i4.i90.i = or i1 %cmp.i.i2.i88.i, %tobool.not.i13.i89.i
  br i1 %tobool.not.i4.i90.i, label %if.then42.i.if.then80_crit_edge, label %if.then42.i.while.body.i99.i_crit_edge

if.then42.i.while.body.i99.i_crit_edge:           ; preds = %if.then42.i
  br label %while.body.i99.i

if.then42.i.if.then80_crit_edge:                  ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then80

while.body.i99.i:                                 ; preds = %while.body.i99.i.while.body.i99.i_crit_edge, %if.then42.i.while.body.i99.i_crit_edge
  %100 = phi ptr [ %110, %while.body.i99.i.while.body.i99.i_crit_edge ], [ %99, %if.then42.i.while.body.i99.i_crit_edge ]
  %101 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %qlen.i, align 4
  %sub.i.i.i93.i = add i32 %102, -1
  store volatile i32 %sub.i.i.i93.i, ptr %qlen.i, align 4
  %103 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %100, align 8
  %prev9.i.i.i94.i = getelementptr inbounds %struct.anon.41, ptr %100, i32 0, i32 1
  %105 = ptrtoint ptr %prev9.i.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %prev9.i.i.i94.i, align 4
  store ptr null, ptr %prev9.i.i.i94.i, align 4
  store ptr null, ptr %100, align 8
  %prev17.i.i.i95.i = getelementptr inbounds %struct.anon.41, ptr %104, i32 0, i32 1
  %107 = ptrtoint ptr %prev17.i.i.i95.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %106, ptr %prev17.i.i.i95.i, align 4
  %108 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %104, ptr %106, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %100, i32 noundef 0) #16
  %109 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %list, align 4
  %cmp.i.i.i96.i = icmp eq ptr %110, %list
  %tobool.not.i1.i97.i = icmp eq ptr %110, null
  %tobool.not.i.i98.i = or i1 %cmp.i.i.i96.i, %tobool.not.i1.i97.i
  br i1 %tobool.not.i.i98.i, label %while.body.i99.i.if.then80_crit_edge, label %while.body.i99.i.while.body.i99.i_crit_edge

while.body.i99.i.while.body.i99.i_crit_edge:      ; preds = %while.body.i99.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i99.i

while.body.i99.i.if.then80_crit_edge:             ; preds = %while.body.i99.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then80

while.cond.backedge.sink.split.i:                 ; preds = %if.end48.i.i, %if.then6.i.i, %if.then.i.i.while.cond.backedge.sink.split.i_crit_edge, %if.end36.i.while.cond.backedge.sink.split.i_crit_edge
  %msdu_desc.0131.pn.ph.i = phi ptr [ %msdu_desc.0131.i, %if.end36.i.while.cond.backedge.sink.split.i_crit_edge ], [ %msdu_desc.0131.i, %if.then6.i.i ], [ %msdu_desc.0131.i, %if.then.i.i.while.cond.backedge.sink.split.i_crit_edge ], [ %ind_desc.0.lcssa.i.i, %if.end48.i.i ]
  %111 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %prev.i, align 4
  %113 = ptrtoint ptr %call33.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %list, ptr %call33.i, align 8
  %prev10.i.i.i108.i = getelementptr inbounds %struct.anon.41, ptr %call33.i, i32 0, i32 1
  %114 = ptrtoint ptr %prev10.i.i.i108.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %112, ptr %prev10.i.i.i108.i, align 4
  store volatile ptr %call33.i, ptr %prev.i, align 4
  %115 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %call33.i, ptr %112, align 4
  %116 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %qlen.i, align 4
  %add.i.i.i110.i = add i32 %117, 1
  store volatile i32 %add.i.i.i110.i, ptr %qlen.i, align 4
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.then46.critedge.i.while.cond.backedge.i_crit_edge, %while.cond.backedge.sink.split.i
  %msdu_desc.0131.pn.i = phi ptr [ %msdu_desc.0131.i, %if.then46.critedge.i.while.cond.backedge.i_crit_edge ], [ %msdu_desc.0131.pn.ph.i, %while.cond.backedge.sink.split.i ]
  %msdu_desc.0.be.i = getelementptr %struct.htt_rx_in_ord_msdu_desc_ext, ptr %msdu_desc.0131.pn.i, i32 1
  %tobool32.not.i = icmp eq i32 %dec133.i, 0
  br i1 %tobool32.not.i, label %while.cond.backedge.i.if.end82_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

while.cond.backedge.i.if.end82_crit_edge:         ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end82

if.then46.critedge.i:                             ; preds = %land.lhs.true.i
  %118 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %prev.i, align 4
  %120 = ptrtoint ptr %call33.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile ptr %list, ptr %call33.i, align 8
  %prev10.i.i.i104.i = getelementptr inbounds %struct.anon.41, ptr %call33.i, i32 0, i32 1
  %121 = ptrtoint ptr %prev10.i.i.i104.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %119, ptr %prev10.i.i.i104.i, align 4
  store volatile ptr %call33.i, ptr %prev.i, align 4
  %122 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %call33.i, ptr %119, align 4
  %123 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %qlen.i, align 4
  %add.i.i.i106.i = add i32 %124, 1
  store volatile i32 %add.i.i.i106.i, ptr %qlen.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call33.i, i32 0, i32 19
  %125 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %data.i, align 4
  call fastcc void @trace_ath10k_htt_rx_desc(ptr noundef %27, ptr noundef %126, i32 noundef 360) #16
  %call47.i = call ptr @skb_put(ptr noundef nonnull %call33.i, i32 noundef 360) #16
  %call48.i = call ptr @skb_pull(ptr noundef nonnull %call33.i, i32 noundef 360) #16
  %msdu_len.i = getelementptr inbounds %struct.htt_rx_in_ord_msdu_desc_ext, ptr %msdu_desc.0131.i, i32 0, i32 1
  %127 = ptrtoint ptr %msdu_len.i to i32
  call void @__asan_loadN_noabort(i32 %127, i32 2)
  %128 = load i16, ptr %msdu_len.i, align 1
  %129 = call i16 @llvm.bswap.i16(i16 %128) #16
  %conv49.i = zext i16 %129 to i32
  %call50.i = call ptr @skb_put(ptr noundef nonnull %call33.i, i32 noundef %conv49.i) #16
  %130 = getelementptr inbounds %struct.htt_rx_desc, ptr %126, i32 0, i32 1
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_loadN_noabort(i32 %131, i32 4)
  %132 = load i32, ptr %130, align 1
  %.mask.i = and i32 %132, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool52.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool52.not.i, label %if.then46.critedge.i.if.then80.sink.split_crit_edge, label %if.then46.critedge.i.while.cond.backedge.i_crit_edge

if.then46.critedge.i.while.cond.backedge.i_crit_edge: ; preds = %if.then46.critedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.backedge.i

if.then46.critedge.i.if.then80.sink.split_crit_edge: ; preds = %if.then46.critedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then80.sink.split

if.else:                                          ; preds = %if.end72
  br i1 %tobool.not.i145, label %if.else.if.end.i153_crit_edge, label %land.rhs.i149

if.else.if.end.i153_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i153

land.rhs.i149:                                    ; preds = %if.else
  %dep_map.i146 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 10, i32 12, i32 0, i32 0, i32 4
  %call.i.i147 = call i32 @lock_is_held_type(ptr noundef %dep_map.i146, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i147)
  %cmp.not.i148 = icmp eq i32 %call.i.i147, 0
  br i1 %cmp.not.i148, label %do.end.i150, label %land.rhs.i149.if.end.i153_crit_edge, !prof !308

land.rhs.i149.if.end.i153_crit_edge:              ; preds = %land.rhs.i149
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i153

do.end.i150:                                      ; preds = %land.rhs.i149
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 641, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i153

if.end.i153:                                      ; preds = %do.end.i150, %land.rhs.i149.if.end.i153_crit_edge, %if.else.if.end.i153_crit_edge
  %133 = ptrtoint ptr %msdu_count31 to i32
  call void @__asan_loadN_noabort(i32 %133, i32 2)
  %134 = load i16, ptr %msdu_count31, align 1
  %135 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %7, align 1
  %137 = and i8 %136, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool27.not.i152 = icmp eq i8 %137, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %134)
  %tobool32.not131.i = icmp eq i16 %134, 0
  br i1 %tobool32.not131.i, label %if.end.i153.if.end82_crit_edge, label %while.body.lr.ph.i156

if.end.i153.if.end82_crit_edge:                   ; preds = %if.end.i153
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end82

while.body.lr.ph.i156:                            ; preds = %if.end.i153
  %138 = call i16 @llvm.bswap.i16(i16 %134) #16
  %conv.i154 = zext i16 %138 to i32
  %monitor_arvif.i155 = getelementptr inbounds %struct.ath10k, ptr %27, i32 0, i32 61
  br label %while.body.i157

while.body.i157:                                  ; preds = %while.cond.backedge.i195.while.body.i157_crit_edge, %while.body.lr.ph.i156
  %dec134.in.i = phi i32 [ %conv.i154, %while.body.lr.ph.i156 ], [ %dec134.i, %while.cond.backedge.i195.while.body.i157_crit_edge ]
  %msdu_desc.0132.i = phi ptr [ %28, %while.body.lr.ph.i156 ], [ %msdu_desc.0.be.i193, %while.cond.backedge.i195.while.body.i157_crit_edge ]
  %dec134.i = add i32 %dec134.in.i, -1
  %139 = ptrtoint ptr %msdu_desc.0132.i to i32
  call void @__asan_loadN_noabort(i32 %139, i32 4)
  %140 = load i32, ptr %msdu_desc.0132.i, align 1
  %141 = call i32 @llvm.bswap.i32(i32 %140) #16
  %conv33.i = zext i32 %141 to i64
  %call34.i = call fastcc ptr @ath10k_htt_rx_pop_paddr(ptr noundef %htt1, i64 noundef %conv33.i) #16
  %tobool35.not.i = icmp eq ptr %call34.i, null
  br i1 %tobool35.not.i, label %if.then36.i, label %if.end37.i

if.then36.i:                                      ; preds = %while.body.i157
  %142 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %list, align 4
  %cmp.i.i2.i.i158 = icmp eq ptr %143, %list
  %tobool.not.i13.i.i159 = icmp eq ptr %143, null
  %tobool.not.i4.i.i160 = or i1 %cmp.i.i2.i.i158, %tobool.not.i13.i.i159
  br i1 %tobool.not.i4.i.i160, label %if.then36.i.if.then80_crit_edge, label %if.then36.i.while.body.i.i167_crit_edge

if.then36.i.while.body.i.i167_crit_edge:          ; preds = %if.then36.i
  br label %while.body.i.i167

if.then36.i.if.then80_crit_edge:                  ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then80

while.body.i.i167:                                ; preds = %while.body.i.i167.while.body.i.i167_crit_edge, %if.then36.i.while.body.i.i167_crit_edge
  %144 = phi ptr [ %154, %while.body.i.i167.while.body.i.i167_crit_edge ], [ %143, %if.then36.i.while.body.i.i167_crit_edge ]
  %145 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %qlen.i, align 4
  %sub.i.i.i.i161 = add i32 %146, -1
  store volatile i32 %sub.i.i.i.i161, ptr %qlen.i, align 4
  %147 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %144, align 8
  %prev9.i.i.i.i162 = getelementptr inbounds %struct.anon.41, ptr %144, i32 0, i32 1
  %149 = ptrtoint ptr %prev9.i.i.i.i162 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %prev9.i.i.i.i162, align 4
  store ptr null, ptr %prev9.i.i.i.i162, align 4
  store ptr null, ptr %144, align 8
  %prev17.i.i.i.i163 = getelementptr inbounds %struct.anon.41, ptr %148, i32 0, i32 1
  %151 = ptrtoint ptr %prev17.i.i.i.i163 to i32
  call void @__asan_store4_noabort(i32 %151)
  store volatile ptr %150, ptr %prev17.i.i.i.i163, align 4
  %152 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile ptr %148, ptr %150, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %144, i32 noundef 0) #16
  %153 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %list, align 4
  %cmp.i.i.i.i164 = icmp eq ptr %154, %list
  %tobool.not.i1.i.i165 = icmp eq ptr %154, null
  %tobool.not.i.i.i166 = or i1 %cmp.i.i.i.i164, %tobool.not.i1.i.i165
  br i1 %tobool.not.i.i.i166, label %while.body.i.i167.if.then80_crit_edge, label %while.body.i.i167.while.body.i.i167_crit_edge

while.body.i.i167.while.body.i.i167_crit_edge:    ; preds = %while.body.i.i167
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i167

while.body.i.i167.if.then80_crit_edge:            ; preds = %while.body.i.i167
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then80

if.end37.i:                                       ; preds = %while.body.i157
  br i1 %tobool27.not.i152, label %land.lhs.true.i168, label %if.end37.i.while.cond.backedge.sink.split.i192_crit_edge

if.end37.i.while.cond.backedge.sink.split.i192_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.backedge.sink.split.i192

land.lhs.true.i168:                               ; preds = %if.end37.i
  %155 = ptrtoint ptr %monitor_arvif.i155 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %monitor_arvif.i155, align 16
  %tobool39.not.i = icmp eq ptr %156, null
  br i1 %tobool39.not.i, label %if.then47.critedge.i, label %if.then40.i

if.then40.i:                                      ; preds = %land.lhs.true.i168
  %157 = ptrtoint ptr %htt1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %htt1, align 8
  %msdu_len.i.i169 = getelementptr inbounds %struct.htt_rx_in_ord_msdu_desc, ptr %msdu_desc.0132.i, i32 0, i32 1
  %159 = ptrtoint ptr %msdu_len.i.i169 to i32
  call void @__asan_loadN_noabort(i32 %159, i32 2)
  %160 = load i16, ptr %msdu_len.i.i169, align 1
  %161 = call i16 @llvm.bswap.i16(i16 %160) #16
  %conv.i.i170 = zext i16 %161 to i32
  %data.i.i171 = getelementptr inbounds %struct.sk_buff, ptr %call34.i, i32 0, i32 19
  %162 = ptrtoint ptr %data.i.i171 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %data.i.i171, align 4
  call fastcc void @trace_ath10k_htt_rx_desc(ptr noundef %158, ptr noundef %163, i32 noundef 360) #16
  %call.i87.i = call ptr @skb_put(ptr noundef nonnull %call34.i, i32 noundef 360) #16
  %call2.i.i172 = call ptr @skb_pull(ptr noundef nonnull %call34.i, i32 noundef 360) #16
  %164 = call i16 @llvm.umin.i16(i16 %161, i16 1688) #16
  %165 = zext i16 %164 to i32
  %call4.i.i173 = call ptr @skb_put(ptr noundef nonnull %call34.i, i32 noundef %165) #16
  %len.i.i174 = getelementptr inbounds %struct.sk_buff, ptr %call34.i, i32 0, i32 6
  %166 = ptrtoint ptr %len.i.i174 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %len.i.i174, align 4
  %sub.i.i175 = sub i32 %conv.i.i170, %167
  %reserved.i.i176 = getelementptr inbounds %struct.htt_rx_in_ord_msdu_desc, ptr %msdu_desc.0132.i, i32 0, i32 3
  %168 = ptrtoint ptr %reserved.i.i176 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %reserved.i.i176, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool.not.i.i177 = icmp eq i8 %169, 0
  br i1 %tobool.not.i.i177, label %if.end9.i.i183, label %if.then.i.i179

if.then.i.i179:                                   ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_cmp4(i32 %167, i32 %conv.i.i170)
  %tobool5.not.i.i178 = icmp eq i32 %167, %conv.i.i170
  br i1 %tobool5.not.i.i178, label %if.then.i.i179.while.cond.backedge.sink.split.i192_crit_edge, label %if.then6.i.i181

if.then.i.i179.while.cond.backedge.sink.split.i192_crit_edge: ; preds = %if.then.i.i179
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.backedge.sink.split.i192

if.then6.i.i181:                                  ; preds = %if.then.i.i179
  call void @__sanitizer_cov_trace_pc() #18
  %170 = ptrtoint ptr %msdu_len.i.i169 to i32
  call void @__asan_loadN_noabort(i32 %170, i32 2)
  %171 = load i16, ptr %msdu_len.i.i169, align 1
  %172 = call i16 @llvm.bswap.i16(i16 %171) #16
  %conv8.i.i180 = zext i16 %172 to i32
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %158, ptr noundef nonnull @.str.105, i32 noundef %conv8.i.i180, i32 noundef %sub.i.i175) #16
  br label %while.cond.backedge.sink.split.i192

if.end9.i.i183:                                   ; preds = %if.then40.i
  %incdec.ptr.i.i182 = getelementptr %struct.htt_rx_in_ord_msdu_desc, ptr %msdu_desc.0132.i, i32 1
  %173 = ptrtoint ptr %incdec.ptr.i.i182 to i32
  call void @__asan_loadN_noabort(i32 %173, i32 4)
  %174 = load i32, ptr %incdec.ptr.i.i182, align 1
  %175 = call i32 @llvm.bswap.i32(i32 %174) #16
  %conv10.i.i = zext i32 %175 to i64
  %call11.i.i = call fastcc ptr @ath10k_htt_rx_pop_paddr(ptr noundef %htt1, i64 noundef %conv10.i.i) #16
  %tobool12.not.i.i = icmp eq ptr %call11.i.i, null
  br i1 %tobool12.not.i.i, label %if.then13.i.i, label %if.end14.i.i

if.then13.i.i:                                    ; preds = %if.end9.i.i183
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %158, ptr noundef nonnull @.str.108, i32 noundef %175) #16
  br label %if.then43.i

if.end14.i.i:                                     ; preds = %if.end9.i.i183
  %176 = call i32 @llvm.smin.i32(i32 %sub.i.i175, i32 2048) #16
  %call22.i.i = call ptr @skb_put(ptr noundef nonnull %call11.i.i, i32 noundef %176) #16
  %end.i.i.i.i184 = getelementptr inbounds %struct.sk_buff, ptr %call34.i, i32 0, i32 17
  %177 = ptrtoint ptr %end.i.i.i.i184 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %end.i.i.i.i184, align 4
  %frag_list1.i.i.i185 = getelementptr inbounds %struct.skb_shared_info, ptr %178, i32 0, i32 6
  %179 = ptrtoint ptr %frag_list1.i.i.i185 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %call11.i.i, ptr %frag_list1.i.i.i185, align 8
  %data_len.i.i.i186 = getelementptr inbounds %struct.sk_buff, ptr %call34.i, i32 0, i32 7
  %180 = ptrtoint ptr %data_len.i.i.i186 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %sub.i.i175, ptr %data_len.i.i.i186, align 8
  %181 = ptrtoint ptr %len.i.i174 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %len.i.i174, align 4
  %add.i.i.i187 = add i32 %182, %sub.i.i175
  store i32 %add.i.i.i187, ptr %len.i.i174, align 4
  %len23.i.i = getelementptr inbounds %struct.sk_buff, ptr %call11.i.i, i32 0, i32 6
  %183 = ptrtoint ptr %len23.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %len23.i.i, align 4
  %sub24.i.i = sub i32 %sub.i.i175, %184
  %reserved25.i.i = getelementptr %struct.htt_rx_in_ord_msdu_desc, ptr %msdu_desc.0132.i, i32 1, i32 3
  %185 = ptrtoint ptr %reserved25.i.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %reserved25.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool26.not116.i.i = icmp eq i8 %186, 0
  br i1 %tobool26.not116.i.i, label %if.end14.i.i.while.body.i88.i_crit_edge, label %if.end14.i.i.while.end.i.i191_crit_edge

if.end14.i.i.while.end.i.i191_crit_edge:          ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i.i191

if.end14.i.i.while.body.i88.i_crit_edge:          ; preds = %if.end14.i.i
  br label %while.body.i88.i

while.body.i88.i:                                 ; preds = %if.end33.i.i.while.body.i88.i_crit_edge, %if.end14.i.i.while.body.i88.i_crit_edge
  %amsdu_len.0119.i.i = phi i32 [ %sub44.i.i, %if.end33.i.i.while.body.i88.i_crit_edge ], [ %sub24.i.i, %if.end14.i.i.while.body.i88.i_crit_edge ]
  %ind_desc.0118.i.i = phi ptr [ %incdec.ptr27.i.i, %if.end33.i.i.while.body.i88.i_crit_edge ], [ %incdec.ptr.i.i182, %if.end14.i.i.while.body.i88.i_crit_edge ]
  %prev_frag_buf.0117.i.i = phi ptr [ %call30.i.i, %if.end33.i.i.while.body.i88.i_crit_edge ], [ %call11.i.i, %if.end14.i.i.while.body.i88.i_crit_edge ]
  %incdec.ptr27.i.i = getelementptr %struct.htt_rx_in_ord_msdu_desc, ptr %ind_desc.0118.i.i, i32 1
  %187 = ptrtoint ptr %incdec.ptr27.i.i to i32
  call void @__asan_loadN_noabort(i32 %187, i32 4)
  %188 = load i32, ptr %incdec.ptr27.i.i, align 1
  %189 = call i32 @llvm.bswap.i32(i32 %188) #16
  %conv29.i.i = zext i32 %189 to i64
  %call30.i.i = call fastcc ptr @ath10k_htt_rx_pop_paddr(ptr noundef %htt1, i64 noundef %conv29.i.i) #16
  %tobool31.not.i.i = icmp eq ptr %call30.i.i, null
  br i1 %tobool31.not.i.i, label %if.then32.i.i, label %if.end33.i.i

if.then32.i.i:                                    ; preds = %while.body.i88.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %158, ptr noundef nonnull @.str.109, i32 noundef %189) #16
  %190 = ptrtoint ptr %prev_frag_buf.0117.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr null, ptr %prev_frag_buf.0117.i.i, align 8
  br label %if.then43.i

if.end33.i.i:                                     ; preds = %while.body.i88.i
  %191 = call i32 @llvm.smin.i32(i32 %amsdu_len.0119.i.i, i32 2048) #16
  %call41.i.i = call ptr @skb_put(ptr noundef nonnull %call30.i.i, i32 noundef %191) #16
  %reserved42.i.i = getelementptr %struct.htt_rx_in_ord_msdu_desc, ptr %ind_desc.0118.i.i, i32 1, i32 3
  %192 = ptrtoint ptr %reserved42.i.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %reserved42.i.i, align 1
  %len43.i.i = getelementptr inbounds %struct.sk_buff, ptr %call30.i.i, i32 0, i32 6
  %194 = ptrtoint ptr %len43.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %len43.i.i, align 4
  %sub44.i.i = sub i32 %amsdu_len.0119.i.i, %195
  %196 = ptrtoint ptr %prev_frag_buf.0117.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %call30.i.i, ptr %prev_frag_buf.0117.i.i, align 8
  %tobool26.not.i.i = icmp eq i8 %193, 0
  br i1 %tobool26.not.i.i, label %if.end33.i.i.while.body.i88.i_crit_edge, label %if.end33.i.i.while.end.i.i191_crit_edge

if.end33.i.i.while.end.i.i191_crit_edge:          ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i.i191

if.end33.i.i.while.body.i88.i_crit_edge:          ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i88.i

while.end.i.i191:                                 ; preds = %if.end33.i.i.while.end.i.i191_crit_edge, %if.end14.i.i.while.end.i.i191_crit_edge
  %prev_frag_buf.0.lcssa.i.i188 = phi ptr [ %call11.i.i, %if.end14.i.i.while.end.i.i191_crit_edge ], [ %call30.i.i, %if.end33.i.i.while.end.i.i191_crit_edge ]
  %ind_desc.0.lcssa.i.i189 = phi ptr [ %incdec.ptr.i.i182, %if.end14.i.i.while.end.i.i191_crit_edge ], [ %incdec.ptr27.i.i, %if.end33.i.i.while.end.i.i191_crit_edge ]
  %amsdu_len.0.lcssa.i.i190 = phi i32 [ %sub24.i.i, %if.end14.i.i.while.end.i.i191_crit_edge ], [ %sub44.i.i, %if.end33.i.i.while.end.i.i191_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %amsdu_len.0.lcssa.i.i190)
  %tobool46.not.i.i = icmp eq i32 %amsdu_len.0.lcssa.i.i190, 0
  br i1 %tobool46.not.i.i, label %while.end.i.i191.if.end50.i.i_crit_edge, label %if.then47.i.i

while.end.i.i191.if.end50.i.i_crit_edge:          ; preds = %while.end.i.i191
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50.i.i

if.then47.i.i:                                    ; preds = %while.end.i.i191
  call void @__sanitizer_cov_trace_pc() #18
  %msdu_len48.i.i = getelementptr inbounds %struct.htt_rx_in_ord_msdu_desc, ptr %ind_desc.0.lcssa.i.i189, i32 0, i32 1
  %197 = ptrtoint ptr %msdu_len48.i.i to i32
  call void @__asan_loadN_noabort(i32 %197, i32 2)
  %198 = load i16, ptr %msdu_len48.i.i, align 1
  %199 = call i16 @llvm.bswap.i16(i16 %198) #16
  %conv49.i.i = zext i16 %199 to i32
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %158, ptr noundef nonnull @.str.105, i32 noundef %conv49.i.i, i32 noundef %amsdu_len.0.lcssa.i.i190) #16
  br label %if.end50.i.i

if.end50.i.i:                                     ; preds = %if.then47.i.i, %while.end.i.i191.if.end50.i.i_crit_edge
  %200 = ptrtoint ptr %prev_frag_buf.0.lcssa.i.i188 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr null, ptr %prev_frag_buf.0.lcssa.i.i188, align 8
  br label %while.cond.backedge.sink.split.i192

if.then43.i:                                      ; preds = %if.then32.i.i, %if.then13.i.i
  %201 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %list, align 4
  %cmp.i.i2.i89.i = icmp eq ptr %202, %list
  %tobool.not.i13.i90.i = icmp eq ptr %202, null
  %tobool.not.i4.i91.i = or i1 %cmp.i.i2.i89.i, %tobool.not.i13.i90.i
  br i1 %tobool.not.i4.i91.i, label %if.then43.i.if.then80_crit_edge, label %if.then43.i.while.body.i100.i_crit_edge

if.then43.i.while.body.i100.i_crit_edge:          ; preds = %if.then43.i
  br label %while.body.i100.i

if.then43.i.if.then80_crit_edge:                  ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then80

while.body.i100.i:                                ; preds = %while.body.i100.i.while.body.i100.i_crit_edge, %if.then43.i.while.body.i100.i_crit_edge
  %203 = phi ptr [ %213, %while.body.i100.i.while.body.i100.i_crit_edge ], [ %202, %if.then43.i.while.body.i100.i_crit_edge ]
  %204 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %qlen.i, align 4
  %sub.i.i.i94.i = add i32 %205, -1
  store volatile i32 %sub.i.i.i94.i, ptr %qlen.i, align 4
  %206 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %203, align 8
  %prev9.i.i.i95.i = getelementptr inbounds %struct.anon.41, ptr %203, i32 0, i32 1
  %208 = ptrtoint ptr %prev9.i.i.i95.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %prev9.i.i.i95.i, align 4
  store ptr null, ptr %prev9.i.i.i95.i, align 4
  store ptr null, ptr %203, align 8
  %prev17.i.i.i96.i = getelementptr inbounds %struct.anon.41, ptr %207, i32 0, i32 1
  %210 = ptrtoint ptr %prev17.i.i.i96.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store volatile ptr %209, ptr %prev17.i.i.i96.i, align 4
  %211 = ptrtoint ptr %209 to i32
  call void @__asan_store4_noabort(i32 %211)
  store volatile ptr %207, ptr %209, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %203, i32 noundef 0) #16
  %212 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %list, align 4
  %cmp.i.i.i97.i = icmp eq ptr %213, %list
  %tobool.not.i1.i98.i = icmp eq ptr %213, null
  %tobool.not.i.i99.i = or i1 %cmp.i.i.i97.i, %tobool.not.i1.i98.i
  br i1 %tobool.not.i.i99.i, label %while.body.i100.i.if.then80_crit_edge, label %while.body.i100.i.while.body.i100.i_crit_edge

while.body.i100.i.while.body.i100.i_crit_edge:    ; preds = %while.body.i100.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i100.i

while.body.i100.i.if.then80_crit_edge:            ; preds = %while.body.i100.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then80

while.cond.backedge.sink.split.i192:              ; preds = %if.end50.i.i, %if.then6.i.i181, %if.then.i.i179.while.cond.backedge.sink.split.i192_crit_edge, %if.end37.i.while.cond.backedge.sink.split.i192_crit_edge
  %msdu_desc.0132.pn.ph.i = phi ptr [ %msdu_desc.0132.i, %if.end37.i.while.cond.backedge.sink.split.i192_crit_edge ], [ %msdu_desc.0132.i, %if.then6.i.i181 ], [ %msdu_desc.0132.i, %if.then.i.i179.while.cond.backedge.sink.split.i192_crit_edge ], [ %ind_desc.0.lcssa.i.i189, %if.end50.i.i ]
  %214 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %prev.i, align 4
  %216 = ptrtoint ptr %call34.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store volatile ptr %list, ptr %call34.i, align 8
  %prev10.i.i.i109.i = getelementptr inbounds %struct.anon.41, ptr %call34.i, i32 0, i32 1
  %217 = ptrtoint ptr %prev10.i.i.i109.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store volatile ptr %215, ptr %prev10.i.i.i109.i, align 4
  store volatile ptr %call34.i, ptr %prev.i, align 4
  %218 = ptrtoint ptr %215 to i32
  call void @__asan_store4_noabort(i32 %218)
  store volatile ptr %call34.i, ptr %215, align 4
  %219 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %qlen.i, align 4
  %add.i.i.i111.i = add i32 %220, 1
  store volatile i32 %add.i.i.i111.i, ptr %qlen.i, align 4
  br label %while.cond.backedge.i195

while.cond.backedge.i195:                         ; preds = %if.then47.critedge.i.while.cond.backedge.i195_crit_edge, %while.cond.backedge.sink.split.i192
  %msdu_desc.0132.pn.i = phi ptr [ %msdu_desc.0132.i, %if.then47.critedge.i.while.cond.backedge.i195_crit_edge ], [ %msdu_desc.0132.pn.ph.i, %while.cond.backedge.sink.split.i192 ]
  %msdu_desc.0.be.i193 = getelementptr %struct.htt_rx_in_ord_msdu_desc, ptr %msdu_desc.0132.pn.i, i32 1
  %tobool32.not.i194 = icmp eq i32 %dec134.i, 0
  br i1 %tobool32.not.i194, label %while.cond.backedge.i195.if.end82_crit_edge, label %while.cond.backedge.i195.while.body.i157_crit_edge

while.cond.backedge.i195.while.body.i157_crit_edge: ; preds = %while.cond.backedge.i195
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i157

while.cond.backedge.i195.if.end82_crit_edge:      ; preds = %while.cond.backedge.i195
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end82

if.then47.critedge.i:                             ; preds = %land.lhs.true.i168
  %221 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %prev.i, align 4
  %223 = ptrtoint ptr %call34.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store volatile ptr %list, ptr %call34.i, align 8
  %prev10.i.i.i105.i = getelementptr inbounds %struct.anon.41, ptr %call34.i, i32 0, i32 1
  %224 = ptrtoint ptr %prev10.i.i.i105.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store volatile ptr %222, ptr %prev10.i.i.i105.i, align 4
  store volatile ptr %call34.i, ptr %prev.i, align 4
  %225 = ptrtoint ptr %222 to i32
  call void @__asan_store4_noabort(i32 %225)
  store volatile ptr %call34.i, ptr %222, align 4
  %226 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %qlen.i, align 4
  %add.i.i.i107.i = add i32 %227, 1
  store volatile i32 %add.i.i.i107.i, ptr %qlen.i, align 4
  %data.i196 = getelementptr inbounds %struct.sk_buff, ptr %call34.i, i32 0, i32 19
  %228 = ptrtoint ptr %data.i196 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %data.i196, align 4
  call fastcc void @trace_ath10k_htt_rx_desc(ptr noundef %27, ptr noundef %229, i32 noundef 360) #16
  %call48.i197 = call ptr @skb_put(ptr noundef nonnull %call34.i, i32 noundef 360) #16
  %call49.i = call ptr @skb_pull(ptr noundef nonnull %call34.i, i32 noundef 360) #16
  %msdu_len.i198 = getelementptr inbounds %struct.htt_rx_in_ord_msdu_desc, ptr %msdu_desc.0132.i, i32 0, i32 1
  %230 = ptrtoint ptr %msdu_len.i198 to i32
  call void @__asan_loadN_noabort(i32 %230, i32 2)
  %231 = load i16, ptr %msdu_len.i198, align 1
  %232 = call i16 @llvm.bswap.i16(i16 %231) #16
  %conv50.i = zext i16 %232 to i32
  %call51.i = call ptr @skb_put(ptr noundef nonnull %call34.i, i32 noundef %conv50.i) #16
  %233 = getelementptr inbounds %struct.htt_rx_desc, ptr %229, i32 0, i32 1
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_loadN_noabort(i32 %234, i32 4)
  %235 = load i32, ptr %233, align 1
  %.mask.i199 = and i32 %235, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i199)
  %tobool53.not.i = icmp eq i32 %.mask.i199, 0
  br i1 %tobool53.not.i, label %if.then47.critedge.i.if.then80.sink.split_crit_edge, label %if.then47.critedge.i.while.cond.backedge.i195_crit_edge

if.then47.critedge.i.while.cond.backedge.i195_crit_edge: ; preds = %if.then47.critedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.backedge.i195

if.then47.critedge.i.if.then80.sink.split_crit_edge: ; preds = %if.then47.critedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then80.sink.split

if.then80.sink.split:                             ; preds = %if.then47.critedge.i.if.then80.sink.split_crit_edge, %if.then46.critedge.i.if.then80.sink.split_crit_edge
  %236 = ptrtoint ptr %htt1 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %htt1, align 8
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %237, ptr noundef nonnull @.str.103) #16
  br label %if.then80

if.then80:                                        ; preds = %if.then80.sink.split, %while.body.i100.i.if.then80_crit_edge, %if.then43.i.if.then80_crit_edge, %while.body.i.i167.if.then80_crit_edge, %if.then36.i.if.then80_crit_edge, %while.body.i99.i.if.then80_crit_edge, %if.then42.i.if.then80_crit_edge, %while.body.i.i.if.then80_crit_edge, %if.then35.i.if.then80_crit_edge
  %ret.0.ph = phi i32 [ -2, %if.then43.i.if.then80_crit_edge ], [ -2, %if.then36.i.if.then80_crit_edge ], [ -2, %if.then42.i.if.then80_crit_edge ], [ -2, %if.then35.i.if.then80_crit_edge ], [ -5, %if.then80.sink.split ], [ -2, %while.body.i.i167.if.then80_crit_edge ], [ -2, %while.body.i100.i.if.then80_crit_edge ], [ -2, %while.body.i.i.if.then80_crit_edge ], [ -2, %while.body.i99.i.if.then80_crit_edge ]
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.101, i32 noundef %ret.0.ph) #16
  %238 = ptrtoint ptr %rx_confused to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 1, ptr %rx_confused, align 8
  br label %cleanup

if.end82:                                         ; preds = %while.cond.backedge.i195.if.end82_crit_edge, %if.end.i153.if.end82_crit_edge, %while.cond.backedge.i.if.end82_crit_edge, %if.end.i.if.end82_crit_edge
  br i1 %tobool37.not, label %if.end82.if.end85_crit_edge, label %if.then84

if.end82.if.end85_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end85

if.then84:                                        ; preds = %if.end82
  %239 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %list, align 4
  %cmp.i.i41.i = icmp eq ptr %240, %list
  %tobool.not.i4042.i = icmp eq ptr %240, null
  %tobool.not.i43.i = or i1 %cmp.i.i41.i, %tobool.not.i4042.i
  br i1 %tobool.not.i43.i, label %if.then84.if.end85_crit_edge, label %while.body.lr.ph.i201

if.then84.if.end85_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end85

while.body.lr.ph.i201:                            ; preds = %if.then84
  %flag.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 24, i32 4
  %rx_msdus_q.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 21
  br label %while.body.i204

while.body.i204:                                  ; preds = %while.cond.backedge.i207.while.body.i204_crit_edge, %while.body.lr.ph.i201
  %241 = phi ptr [ %240, %while.body.lr.ph.i201 ], [ %262, %while.cond.backedge.i207.while.body.i204_crit_edge ]
  %242 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %qlen.i, align 4
  %sub.i.i.i = add i32 %243, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i, align 4
  %244 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %241, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.41, ptr %241, i32 0, i32 1
  %246 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %241, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.41, ptr %245, i32 0, i32 1
  %248 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store volatile ptr %247, ptr %prev17.i.i.i, align 4
  %249 = ptrtoint ptr %247 to i32
  call void @__asan_store4_noabort(i32 %249)
  store volatile ptr %245, ptr %247, align 8
  %data.i202 = getelementptr inbounds %struct.sk_buff, ptr %241, i32 0, i32 19
  %250 = ptrtoint ptr %data.i202 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %data.i202, align 4
  %call2.i = call ptr @skb_put(ptr noundef nonnull %241, i32 noundef 7) #16
  %call3.i = call ptr @skb_pull(ptr noundef nonnull %241, i32 noundef 7) #16
  %data_len.i.i.i203 = getelementptr inbounds %struct.sk_buff, ptr %241, i32 0, i32 7
  %252 = ptrtoint ptr %data_len.i.i.i203 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %data_len.i.i.i203, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %253)
  %tobool.i.not.i.i = icmp eq i32 %253, 0
  br i1 %tobool.i.not.i.i, label %cond.false.i.i, label %while.body.i204.skb_tailroom.exit.i_crit_edge

while.body.i204.skb_tailroom.exit.i_crit_edge:    ; preds = %while.body.i204
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_tailroom.exit.i

cond.false.i.i:                                   ; preds = %while.body.i204
  call void @__sanitizer_cov_trace_pc() #18
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %241, i32 0, i32 17
  %254 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %241, i32 0, i32 16
  %256 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %255 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %257 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %skb_tailroom.exit.i

skb_tailroom.exit.i:                              ; preds = %cond.false.i.i, %while.body.i204.skb_tailroom.exit.i_crit_edge
  %cond.i.i = phi i32 [ %sub.ptr.sub.i.i, %cond.false.i.i ], [ 0, %while.body.i204.skb_tailroom.exit.i_crit_edge ]
  %258 = ptrtoint ptr %251 to i32
  call void @__asan_loadN_noabort(i32 %258, i32 2)
  %259 = load i16, ptr %251, align 1
  %260 = call i16 @llvm.bswap.i16(i16 %259) #16
  %conv.i205 = zext i16 %260 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %conv.i205)
  %cmp.i = icmp slt i32 %cond.i.i, %conv.i205
  br i1 %cmp.i, label %if.then.i, label %if.end.i208

if.then.i:                                        ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.110) #16
  call void @__dev_kfree_skb_any(ptr noundef nonnull %241, i32 noundef 1) #16
  br label %while.cond.backedge.i207

while.cond.backedge.i207:                         ; preds = %ath10k_htt_rx_h_rx_offload_prot.exit.i, %if.then.i
  %261 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %list, align 4
  %cmp.i.i.i = icmp eq ptr %262, %list
  %tobool.not.i40.i = icmp eq ptr %262, null
  %tobool.not.i.i206 = or i1 %cmp.i.i.i, %tobool.not.i40.i
  br i1 %tobool.not.i.i206, label %while.cond.backedge.i207.if.end85_crit_edge, label %while.cond.backedge.i207.while.body.i204_crit_edge

while.cond.backedge.i207.while.body.i204_crit_edge: ; preds = %while.cond.backedge.i207
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i204

while.cond.backedge.i207.if.end85_crit_edge:      ; preds = %while.cond.backedge.i207
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end85

if.end.i208:                                      ; preds = %skb_tailroom.exit.i
  %call8.i = call ptr @skb_put(ptr noundef nonnull %241, i32 noundef %conv.i205) #16
  %263 = ptrtoint ptr %data.i202 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %data.i202, align 4
  %265 = ptrtoint ptr %264 to i32
  %and.i = and i32 %265, 3
  %sub.i = sub nuw nsw i32 4, %and.i
  %call10.i = call ptr @skb_put(ptr noundef nonnull %241, i32 noundef %sub.i) #16
  %266 = ptrtoint ptr %data.i202 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %data.i202, align 4
  %add.ptr.i = getelementptr i8, ptr %267, i32 %sub.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %241, i32 0, i32 6
  %268 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %len.i, align 4
  %270 = call ptr @memmove(ptr %add.ptr.i, ptr %267, i32 %269)
  %call13.i = call ptr @skb_pull(ptr noundef nonnull %241, i32 noundef %sub.i) #16
  %271 = call ptr @memset(ptr %rx_status, i32 0, i32 48)
  %272 = ptrtoint ptr %flag.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 256, ptr %flag.i, align 8
  %273 = ptrtoint ptr %data.i202 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %data.i202, align 4
  %275 = ptrtoint ptr %274 to i32
  call void @__asan_load2_noabort(i32 %275)
  %276 = load i16, ptr %274, align 2
  %277 = and i16 %276, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %277)
  %cmp.i.not.i.i = icmp eq i16 %277, 0
  br i1 %cmp.i.not.i.i, label %if.end.i208.ath10k_htt_rx_h_rx_offload_prot.exit.i_crit_edge, label %if.end.i.i

if.end.i208.ath10k_htt_rx_h_rx_offload_prot.exit.i_crit_edge: ; preds = %if.end.i208
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_h_rx_offload_prot.exit.i

if.end.i.i:                                       ; preds = %if.end.i208
  call void @__sanitizer_cov_trace_pc() #18
  %278 = and i16 %276, -65
  %279 = ptrtoint ptr %274 to i32
  call void @__asan_store2_noabort(i32 %279)
  store i16 %278, ptr %274, align 2
  %280 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %flag.i, align 8
  %or.i.i = or i32 %281, 26
  store i32 %or.i.i, ptr %flag.i, align 8
  br label %ath10k_htt_rx_h_rx_offload_prot.exit.i

ath10k_htt_rx_h_rx_offload_prot.exit.i:           ; preds = %if.end.i.i, %if.end.i208.ath10k_htt_rx_h_rx_offload_prot.exit.i_crit_edge
  %vdev_id.i = getelementptr inbounds %struct.htt_rx_offload_msdu, ptr %251, i32 0, i32 2
  %282 = ptrtoint ptr %vdev_id.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %vdev_id.i, align 1
  %conv14.i = zext i8 %283 to i32
  call fastcc void @ath10k_htt_rx_h_channel(ptr noundef %ar, ptr noundef %rx_status, ptr noundef null, i32 noundef %conv14.i) #16
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %241, i32 0, i32 3
  %284 = call ptr @memcpy(ptr %cb.i.i.i, ptr %rx_status, i32 48)
  call void @skb_queue_tail(ptr noundef %rx_msdus_q.i.i, ptr noundef nonnull %241) #16
  br label %while.cond.backedge.i207

if.end85:                                         ; preds = %while.cond.backedge.i207.if.end85_crit_edge, %if.then84.if.end85_crit_edge, %if.end82.if.end85_crit_edge
  %285 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %list, align 4
  %cmp.i209292 = icmp eq ptr %286, %list
  br i1 %cmp.i209292, label %if.end85.cleanup_crit_edge, label %while.body.lr.ph

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end85
  %prev.i211 = getelementptr inbounds %struct.anon.62, ptr %amsdu, i32 0, i32 1
  %qlen.i212 = getelementptr inbounds %struct.sk_buff_head, ptr %amsdu, i32 0, i32 1
  %conv91 = zext i8 %15 to i32
  %flag4.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 24, i32 4
  %rx_msdus_q.i.i241 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 21
  br label %while.body

while.body:                                       ; preds = %ath10k_htt_rx_h_enqueue.exit.while.body_crit_edge, %while.body.lr.ph
  %287 = ptrtoint ptr %amsdu to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr %amsdu, ptr %amsdu, align 4
  %288 = ptrtoint ptr %prev.i211 to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr %amsdu, ptr %prev.i211, align 4
  %289 = ptrtoint ptr %qlen.i212 to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 0, ptr %qlen.i212, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i223.while.cond.i_crit_edge, %while.body
  %290 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %list, align 4
  %cmp.i.i.i216 = icmp eq ptr %291, %list
  %tobool.not.i57.i = icmp eq ptr %291, null
  %tobool.not.i.i217 = or i1 %cmp.i.i.i216, %tobool.not.i57.i
  br i1 %tobool.not.i.i217, label %while.cond.i.while.end.i_crit_edge, label %while.body.i223

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.body.i223:                                  ; preds = %while.cond.i
  %292 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %qlen.i, align 4
  %sub.i.i.i218 = add i32 %293, -1
  store volatile i32 %sub.i.i.i218, ptr %qlen.i, align 4
  %294 = ptrtoint ptr %291 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %291, align 8
  %prev9.i.i.i219 = getelementptr inbounds %struct.anon.41, ptr %291, i32 0, i32 1
  %296 = ptrtoint ptr %prev9.i.i.i219 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %prev9.i.i.i219, align 4
  store ptr null, ptr %prev9.i.i.i219, align 4
  store ptr null, ptr %291, align 8
  %prev17.i.i.i220 = getelementptr inbounds %struct.anon.41, ptr %295, i32 0, i32 1
  %298 = ptrtoint ptr %prev17.i.i.i220 to i32
  call void @__asan_store4_noabort(i32 %298)
  store volatile ptr %297, ptr %prev17.i.i.i220, align 4
  %299 = ptrtoint ptr %297 to i32
  call void @__asan_store4_noabort(i32 %299)
  store volatile ptr %295, ptr %297, align 8
  %300 = ptrtoint ptr %prev.i211 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %prev.i211, align 4
  store volatile ptr %amsdu, ptr %291, align 8
  store volatile ptr %301, ptr %prev9.i.i.i219, align 4
  store volatile ptr %291, ptr %prev.i211, align 4
  %302 = ptrtoint ptr %301 to i32
  call void @__asan_store4_noabort(i32 %302)
  store volatile ptr %291, ptr %301, align 4
  %303 = ptrtoint ptr %qlen.i212 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %qlen.i212, align 4
  %add.i.i.i.i = add i32 %304, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i212, align 4
  %data.i221 = getelementptr inbounds %struct.sk_buff, ptr %291, i32 0, i32 19
  %305 = ptrtoint ptr %data.i221 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %data.i221, align 4
  %info0.i = getelementptr i8, ptr %306, i32 -296
  %307 = ptrtoint ptr %info0.i to i32
  call void @__asan_loadN_noabort(i32 %307, i32 4)
  %308 = load i32, ptr %info0.i, align 1
  %and.i222 = and i32 %308, 8388608
  %tobool30.not.i = icmp eq i32 %and.i222, 0
  br i1 %tobool30.not.i, label %while.body.i223.while.cond.i_crit_edge, label %while.body.i223.while.end.i_crit_edge

while.body.i223.while.end.i_crit_edge:            ; preds = %while.body.i223
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.body.i223.while.cond.i_crit_edge:           ; preds = %while.body.i223
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i

while.end.i:                                      ; preds = %while.body.i223.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %309 = ptrtoint ptr %prev.i211 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load volatile ptr, ptr %prev.i211, align 4
  %cmp.i55.i = icmp eq ptr %310, %amsdu
  %spec.store.select.i.i = select i1 %cmp.i55.i, ptr null, ptr %310
  %data34.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 19
  %311 = ptrtoint ptr %data34.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %data34.i, align 4
  %info038.i = getelementptr i8, ptr %312, i32 -296
  %313 = ptrtoint ptr %info038.i to i32
  call void @__asan_loadN_noabort(i32 %313, i32 4)
  %314 = load i32, ptr %info038.i, align 1
  %and39.i = and i32 %314, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.then41.i, label %sw.bb

if.then41.i:                                      ; preds = %while.end.i
  %315 = ptrtoint ptr %amsdu to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %amsdu, align 4
  %cmp.i.not.i.i224 = icmp eq ptr %316, %amsdu
  br i1 %cmp.i.not.i.i224, label %if.then41.i.sw.default_crit_edge, label %if.then.i56.i

if.then41.i.sw.default_crit_edge:                 ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.default

if.then.i56.i:                                    ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #18
  %317 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %list, align 4
  %prev5.i.i.i = getelementptr inbounds %struct.anon.41, ptr %316, i32 0, i32 1
  %319 = ptrtoint ptr %prev5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store volatile ptr %list, ptr %prev5.i.i.i, align 4
  store volatile ptr %316, ptr %list, align 8
  %320 = ptrtoint ptr %310 to i32
  call void @__asan_store4_noabort(i32 %320)
  store volatile ptr %318, ptr %310, align 8
  %prev35.i.i.i = getelementptr inbounds %struct.anon.41, ptr %318, i32 0, i32 1
  %321 = ptrtoint ptr %prev35.i.i.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store volatile ptr %310, ptr %prev35.i.i.i, align 4
  %322 = ptrtoint ptr %qlen.i212 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %qlen.i212, align 4
  %324 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %qlen.i, align 4
  %add.i.i = add i32 %325, %323
  store i32 %add.i.i, ptr %qlen.i, align 4
  %326 = ptrtoint ptr %amsdu to i32
  call void @__asan_store4_noabort(i32 %326)
  store ptr %amsdu, ptr %amsdu, align 4
  %327 = ptrtoint ptr %prev.i211 to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr %amsdu, ptr %prev.i211, align 4
  store i32 0, ptr %qlen.i212, align 4
  br label %sw.default

sw.bb:                                            ; preds = %while.end.i
  call fastcc void @ath10k_htt_rx_h_ppdu(ptr noundef %ar, ptr noundef nonnull %amsdu, ptr noundef %rx_status, i32 noundef %conv91)
  %328 = ptrtoint ptr %amsdu to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %amsdu, align 4
  %cmp.i.not.i226 = icmp eq ptr %329, %amsdu
  br i1 %cmp.i.not.i226, label %sw.bb.ath10k_htt_rx_h_filter.exit_crit_edge, label %if.end.i227

sw.bb.ath10k_htt_rx_h_filter.exit_crit_edge:      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_h_filter.exit

if.end.i227:                                      ; preds = %sw.bb
  %call1.i = call fastcc zeroext i1 @ath10k_htt_rx_amsdu_allowed(ptr noundef %ar, ptr noundef nonnull %amsdu, ptr noundef %rx_status) #16
  br i1 %call1.i, label %if.end.i227.ath10k_htt_rx_h_filter.exit_crit_edge, label %if.end3.i

if.end.i227.ath10k_htt_rx_h_filter.exit_crit_edge: ; preds = %if.end.i227
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_h_filter.exit

if.end3.i:                                        ; preds = %if.end.i227
  %330 = ptrtoint ptr %amsdu to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %amsdu, align 4
  %cmp.i.i2.i.i228 = icmp eq ptr %331, %amsdu
  %tobool.not.i13.i.i229 = icmp eq ptr %331, null
  %tobool.not.i4.i.i230 = or i1 %cmp.i.i2.i.i228, %tobool.not.i13.i.i229
  br i1 %tobool.not.i4.i.i230, label %if.end3.i.ath10k_htt_rx_h_filter.exit_crit_edge, label %if.end3.i.while.body.i.i238_crit_edge

if.end3.i.while.body.i.i238_crit_edge:            ; preds = %if.end3.i
  br label %while.body.i.i238

if.end3.i.ath10k_htt_rx_h_filter.exit_crit_edge:  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_h_filter.exit

while.body.i.i238:                                ; preds = %while.body.i.i238.while.body.i.i238_crit_edge, %if.end3.i.while.body.i.i238_crit_edge
  %332 = phi ptr [ %342, %while.body.i.i238.while.body.i.i238_crit_edge ], [ %331, %if.end3.i.while.body.i.i238_crit_edge ]
  %333 = ptrtoint ptr %qlen.i212 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %qlen.i212, align 4
  %sub.i.i.i.i232 = add i32 %334, -1
  store volatile i32 %sub.i.i.i.i232, ptr %qlen.i212, align 4
  %335 = ptrtoint ptr %332 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %332, align 8
  %prev9.i.i.i.i233 = getelementptr inbounds %struct.anon.41, ptr %332, i32 0, i32 1
  %337 = ptrtoint ptr %prev9.i.i.i.i233 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %prev9.i.i.i.i233, align 4
  store ptr null, ptr %prev9.i.i.i.i233, align 4
  store ptr null, ptr %332, align 8
  %prev17.i.i.i.i234 = getelementptr inbounds %struct.anon.41, ptr %336, i32 0, i32 1
  %339 = ptrtoint ptr %prev17.i.i.i.i234 to i32
  call void @__asan_store4_noabort(i32 %339)
  store volatile ptr %338, ptr %prev17.i.i.i.i234, align 4
  %340 = ptrtoint ptr %338 to i32
  call void @__asan_store4_noabort(i32 %340)
  store volatile ptr %336, ptr %338, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %332, i32 noundef 0) #16
  %341 = ptrtoint ptr %amsdu to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %amsdu, align 4
  %cmp.i.i.i.i235 = icmp eq ptr %342, %amsdu
  %tobool.not.i1.i.i236 = icmp eq ptr %342, null
  %tobool.not.i.i.i237 = or i1 %cmp.i.i.i.i235, %tobool.not.i1.i.i236
  br i1 %tobool.not.i.i.i237, label %while.body.i.i238.ath10k_htt_rx_h_filter.exit_crit_edge, label %while.body.i.i238.while.body.i.i238_crit_edge

while.body.i.i238.while.body.i.i238_crit_edge:    ; preds = %while.body.i.i238
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i238

while.body.i.i238.ath10k_htt_rx_h_filter.exit_crit_edge: ; preds = %while.body.i.i238
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_h_filter.exit

ath10k_htt_rx_h_filter.exit:                      ; preds = %while.body.i.i238.ath10k_htt_rx_h_filter.exit_crit_edge, %if.end3.i.ath10k_htt_rx_h_filter.exit_crit_edge, %if.end.i227.ath10k_htt_rx_h_filter.exit_crit_edge, %sw.bb.ath10k_htt_rx_h_filter.exit_crit_edge
  call fastcc void @ath10k_htt_rx_h_mpdu(ptr noundef %ar, ptr noundef nonnull %amsdu, ptr noundef %rx_status, i1 noundef zeroext false, ptr noundef null, ptr noundef null, i16 noundef zeroext %10, i1 noundef zeroext %tobool45)
  %343 = ptrtoint ptr %amsdu to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %amsdu, align 4
  %cmp.i.i21.i = icmp eq ptr %344, %amsdu
  %tobool.not.i2022.i = icmp eq ptr %344, null
  %tobool.not.i23.i = or i1 %cmp.i.i21.i, %tobool.not.i2022.i
  br i1 %tobool.not.i23.i, label %ath10k_htt_rx_h_filter.exit.ath10k_htt_rx_h_enqueue.exit_crit_edge, label %ath10k_htt_rx_h_filter.exit.while.body.i251_crit_edge

ath10k_htt_rx_h_filter.exit.while.body.i251_crit_edge: ; preds = %ath10k_htt_rx_h_filter.exit
  br label %while.body.i251

ath10k_htt_rx_h_filter.exit.ath10k_htt_rx_h_enqueue.exit_crit_edge: ; preds = %ath10k_htt_rx_h_filter.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_h_enqueue.exit

while.body.i251:                                  ; preds = %while.body.i251.while.body.i251_crit_edge, %ath10k_htt_rx_h_filter.exit.while.body.i251_crit_edge
  %345 = phi ptr [ %360, %while.body.i251.while.body.i251_crit_edge ], [ %344, %ath10k_htt_rx_h_filter.exit.while.body.i251_crit_edge ]
  %first_subframe.024.i = phi ptr [ %first_subframe.1.i, %while.body.i251.while.body.i251_crit_edge ], [ %344, %ath10k_htt_rx_h_filter.exit.while.body.i251_crit_edge ]
  %346 = ptrtoint ptr %qlen.i212 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %qlen.i212, align 4
  %sub.i.i.i243 = add i32 %347, -1
  store volatile i32 %sub.i.i.i243, ptr %qlen.i212, align 4
  %348 = ptrtoint ptr %345 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %345, align 8
  %prev9.i.i.i244 = getelementptr inbounds %struct.anon.41, ptr %345, i32 0, i32 1
  %350 = ptrtoint ptr %prev9.i.i.i244 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %prev9.i.i.i244, align 4
  store ptr null, ptr %prev9.i.i.i244, align 4
  store ptr null, ptr %345, align 8
  %prev17.i.i.i245 = getelementptr inbounds %struct.anon.41, ptr %349, i32 0, i32 1
  %352 = ptrtoint ptr %prev17.i.i.i245 to i32
  call void @__asan_store4_noabort(i32 %352)
  store volatile ptr %351, ptr %prev17.i.i.i245, align 4
  %353 = ptrtoint ptr %351 to i32
  call void @__asan_store4_noabort(i32 %353)
  store volatile ptr %349, ptr %351, align 8
  %354 = ptrtoint ptr %amsdu to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %amsdu, align 4
  %cmp.i19.not.i = icmp eq ptr %355, %amsdu
  %356 = ptrtoint ptr %flag4.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %flag4.i, align 8
  %and.i246 = and i32 %357, -4718593
  %masksel.i = select i1 %cmp.i19.not.i, i32 0, i32 524288
  %cmp.i247 = icmp eq ptr %345, %first_subframe.024.i
  %masksel26.i = select i1 %cmp.i247, i32 0, i32 4194304
  %storemerge.i = or i32 %masksel.i, %masksel26.i
  %storemerge25.i = or i32 %storemerge.i, %and.i246
  %first_subframe.1.i = select i1 %cmp.i247, ptr null, ptr %first_subframe.024.i
  store i32 %storemerge25.i, ptr %flag4.i, align 8
  %cb.i.i.i248 = getelementptr inbounds %struct.sk_buff, ptr %345, i32 0, i32 3
  %358 = call ptr @memcpy(ptr %cb.i.i.i248, ptr %rx_status, i32 48)
  call void @skb_queue_tail(ptr noundef %rx_msdus_q.i.i241, ptr noundef nonnull %345) #16
  %359 = ptrtoint ptr %amsdu to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %amsdu, align 4
  %cmp.i.i.i249 = icmp eq ptr %360, %amsdu
  %tobool.not.i20.i = icmp eq ptr %360, null
  %tobool.not.i.i250 = or i1 %cmp.i.i.i249, %tobool.not.i20.i
  br i1 %tobool.not.i.i250, label %while.body.i251.ath10k_htt_rx_h_enqueue.exit_crit_edge, label %while.body.i251.while.body.i251_crit_edge

while.body.i251.while.body.i251_crit_edge:        ; preds = %while.body.i251
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i251

while.body.i251.ath10k_htt_rx_h_enqueue.exit_crit_edge: ; preds = %while.body.i251
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_h_enqueue.exit

ath10k_htt_rx_h_enqueue.exit:                     ; preds = %while.body.i251.ath10k_htt_rx_h_enqueue.exit_crit_edge, %ath10k_htt_rx_h_filter.exit.ath10k_htt_rx_h_enqueue.exit_crit_edge
  %361 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %list, align 4
  %cmp.i209 = icmp eq ptr %362, %list
  br i1 %cmp.i209, label %ath10k_htt_rx_h_enqueue.exit.cleanup_crit_edge, label %ath10k_htt_rx_h_enqueue.exit.while.body_crit_edge

ath10k_htt_rx_h_enqueue.exit.while.body_crit_edge: ; preds = %ath10k_htt_rx_h_enqueue.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

ath10k_htt_rx_h_enqueue.exit.cleanup_crit_edge:   ; preds = %ath10k_htt_rx_h_enqueue.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.default:                                       ; preds = %if.then.i56.i, %if.then41.i.sw.default_crit_edge
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.102, i32 noundef -11) #16
  %363 = ptrtoint ptr %rx_confused to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 1, ptr %rx_confused, align 8
  %364 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %list, align 4
  %cmp.i.i2.i = icmp eq ptr %365, %list
  %tobool.not.i13.i = icmp eq ptr %365, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %sw.default.cleanup_crit_edge, label %sw.default.while.body.i260_crit_edge

sw.default.while.body.i260_crit_edge:             ; preds = %sw.default
  br label %while.body.i260

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.body.i260:                                  ; preds = %while.body.i260.while.body.i260_crit_edge, %sw.default.while.body.i260_crit_edge
  %366 = phi ptr [ %376, %while.body.i260.while.body.i260_crit_edge ], [ %365, %sw.default.while.body.i260_crit_edge ]
  %367 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %qlen.i, align 4
  %sub.i.i.i255 = add i32 %368, -1
  store volatile i32 %sub.i.i.i255, ptr %qlen.i, align 4
  %369 = ptrtoint ptr %366 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %366, align 8
  %prev9.i.i.i256 = getelementptr inbounds %struct.anon.41, ptr %366, i32 0, i32 1
  %371 = ptrtoint ptr %prev9.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %prev9.i.i.i256, align 4
  store ptr null, ptr %prev9.i.i.i256, align 4
  store ptr null, ptr %366, align 8
  %prev17.i.i.i257 = getelementptr inbounds %struct.anon.41, ptr %370, i32 0, i32 1
  %373 = ptrtoint ptr %prev17.i.i.i257 to i32
  call void @__asan_store4_noabort(i32 %373)
  store volatile ptr %372, ptr %prev17.i.i.i257, align 4
  %374 = ptrtoint ptr %372 to i32
  call void @__asan_store4_noabort(i32 %374)
  store volatile ptr %370, ptr %372, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %366, i32 noundef 0) #16
  %375 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %list, align 4
  %cmp.i.i.i258 = icmp eq ptr %376, %list
  %tobool.not.i1.i = icmp eq ptr %376, null
  %tobool.not.i.i259 = or i1 %cmp.i.i.i258, %tobool.not.i1.i
  br i1 %tobool.not.i.i259, label %while.body.i260.cleanup_crit_edge, label %while.body.i260.while.body.i260_crit_edge

while.body.i260.while.body.i260_crit_edge:        ; preds = %while.body.i260
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i260

while.body.i260.cleanup_crit_edge:                ; preds = %while.body.i260
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %while.body.i260.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %ath10k_htt_rx_h_enqueue.exit.cleanup_crit_edge, %if.end85.cleanup_crit_edge, %if.then80, %if.then71, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then71 ], [ -5, %if.then80 ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %sw.default.cleanup_crit_edge ], [ 0, %if.end85.cleanup_crit_edge ], [ -5, %while.body.i260.cleanup_crit_edge ], [ 0, %ath10k_htt_rx_h_enqueue.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %amsdu) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %list) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_mac_tx_push_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_htt_rx_tx_fetch_ind(ptr noundef %ar, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 1
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %4 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_rx_tx_fetch_ind, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !313

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 8, ptr noundef nonnull @.str.123) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %len2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %6)
  %cmp = icmp ult i32 %6, 12
  br i1 %cmp, label %if.then5, label %if.end6, !prof !308

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.124) #16
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %7 = getelementptr inbounds %struct.htt_resp, ptr %3, i32 0, i32 1
  %num_records7 = getelementptr inbounds %struct.htt_resp, ptr %3, i32 0, i32 1, i32 1, i32 1
  %8 = ptrtoint ptr %num_records7 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %num_records7, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %num_resp_ids8 = getelementptr inbounds %struct.htt_tx_fetch_ind, ptr %7, i32 0, i32 3
  %11 = ptrtoint ptr %num_resp_ids8 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %num_resp_ids8, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv = zext i16 %10 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %add = add nuw nsw i32 %mul, 12
  %conv9 = zext i16 %13 to i32
  %mul10 = shl nuw nsw i32 %conv9, 2
  %add11 = add nuw nsw i32 %add, %mul10
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %add11)
  %cmp13 = icmp ult i32 %6, %add11
  br i1 %cmp13, label %if.then21, label %do.body23, !prof !308

if.then21:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.125) #16
  br label %cleanup

do.body23:                                        ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %14 = load i32, ptr @ath10k_debug_mask, align 4
  %and24 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %lor.lhs.false26, label %do.body23.if.then29_crit_edge

do.body23.if.then29_crit_edge:                    ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then29

lor.lhs.false26:                                  ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_rx_tx_fetch_ind, %if.then29)) #16
          to label %do.end35 [label %if.then29], !srcloc !313

if.then29:                                        ; preds = %lor.lhs.false26, %do.body23.if.then29_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  %fetch_seq_num = getelementptr inbounds %struct.htt_tx_fetch_ind, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %fetch_seq_num to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %fetch_seq_num, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %conv32 = zext i16 %17 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 8, ptr noundef nonnull @.str.126, i32 noundef %conv, i32 noundef %conv9, i32 noundef %conv32) #16
  br label %do.end35

do.end35:                                         ; preds = %if.then29, %lor.lhs.false26
  %tx_q_state = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 27
  %18 = ptrtoint ptr %tx_q_state to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tx_q_state, align 8, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool36.not = icmp eq i8 %19, 0
  br i1 %tobool36.not, label %if.then37, label %if.end38

if.then37:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.127) #16
  br label %cleanup

if.end38:                                         ; preds = %do.end35
  %mode = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 27, i32 6
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp41 = icmp eq i32 %21, 0
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.128) #16
  br label %cleanup

if.end44:                                         ; preds = %if.end38
  %22 = tail call i32 @llvm.read_register.i32(metadata !298) #16
  %and.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %25, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !315
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.end44.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end44.rcu_read_lock.exit_crit_edge:            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end44
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 696, ptr noundef nonnull @.str.27) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end44.rcu_read_lock.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp46270.not = icmp eq i16 %9, 0
  br i1 %cmp46270.not, label %rcu_read_lock.exit.for.end_crit_edge, label %for.body.lr.ph

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %rcu_read_lock.exit
  %records = getelementptr inbounds %struct.htt_resp, ptr %3, i32 0, i32 1, i32 1, i32 3
  %num_peers = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 27, i32 4
  %num_tids = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 27, i32 5
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 82
  %smax = call i32 @llvm.smax.i32(i32 %conv, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0271 = phi i32 [ 0, %for.body.lr.ph ], [ %inc133, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x %struct.htt_tx_fetch_record], ptr %records, i32 0, i32 %i.0271
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %arrayidx, align 1
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  %and49 = and i16 %28, 4095
  %29 = lshr i16 %28, 12
  %conv55 = trunc i16 %29 to i8
  %num_msdus56 = getelementptr [0 x %struct.htt_tx_fetch_record], ptr %records, i32 0, i32 %i.0271, i32 1
  %30 = ptrtoint ptr %num_msdus56 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %num_msdus56, align 1
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %conv57 = zext i16 %32 to i32
  %num_bytes58 = getelementptr [0 x %struct.htt_tx_fetch_record], ptr %records, i32 0, i32 %i.0271, i32 2
  %33 = ptrtoint ptr %num_bytes58 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %num_bytes58, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %36 = load i32, ptr @ath10k_debug_mask, align 4
  %and60 = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %lor.lhs.false62, label %for.body.if.then65_crit_edge

for.body.if.then65_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then65

lor.lhs.false62:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_rx_tx_fetch_ind, %if.then65)) #16
          to label %do.end70 [label %if.then65], !srcloc !313

if.then65:                                        ; preds = %lor.lhs.false62, %for.body.if.then65_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  %conv66 = zext i16 %and49 to i32
  %conv67 = zext i16 %29 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 8, ptr noundef nonnull @.str.129, i32 noundef %i.0271, i32 noundef %conv66, i32 noundef %conv67, i32 noundef %conv57, i32 noundef %35) #16
  br label %do.end70

do.end70:                                         ; preds = %if.then65, %lor.lhs.false62
  %conv71 = zext i16 %and49 to i32
  %37 = ptrtoint ptr %num_peers to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %num_peers, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %and49, i16 %38)
  %cmp75.not = icmp ult i16 %and49, %38
  %conv84 = zext i16 %29 to i32
  br i1 %cmp75.not, label %lor.lhs.false83, label %do.end70.if.then96_crit_edge, !prof !309

do.end70.if.then96_crit_edge:                     ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then96

lor.lhs.false83:                                  ; preds = %do.end70
  %39 = ptrtoint ptr %num_tids to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %num_tids, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %40)
  %cmp88.not = icmp ult i16 %29, %40
  br i1 %cmp88.not, label %if.end99, label %lor.lhs.false83.if.then96_crit_edge, !prof !309

lor.lhs.false83.if.then96_crit_edge:              ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then96

if.then96:                                        ; preds = %lor.lhs.false83.if.then96_crit_edge, %do.end70.if.then96_crit_edge
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.73, i32 noundef %conv71, i32 noundef %conv84) #16
  br label %for.inc

if.end99:                                         ; preds = %lor.lhs.false83
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #16
  %call100 = tail call ptr @ath10k_mac_txq_lookup(ptr noundef %ar, i16 noundef zeroext %and49, i8 noundef zeroext %conv55) #16
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #16
  %tobool102.not = icmp eq ptr %call100, null
  br i1 %tobool102.not, label %if.then111, label %if.end114, !prof !308

if.then111:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.74, i32 noundef %conv71, i32 noundef %conv84) #16
  br label %for.inc

if.end114:                                        ; preds = %if.end99
  %ac = getelementptr inbounds %struct.ieee80211_txq, ptr %call100, i32 0, i32 3
  %41 = ptrtoint ptr %ac to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ac, align 1
  tail call void @ieee80211_txq_schedule_start(ptr noundef %1, i8 noundef zeroext %42) #16
  %call115 = tail call zeroext i1 @ieee80211_txq_may_transmit(ptr noundef %1, ptr noundef nonnull %call100) #16
  %call115.not = xor i1 %call115, true
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp116261 = icmp eq i16 %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp118262 = icmp eq i32 %34, 0
  %or.cond263 = select i1 %cmp116261, i1 true, i1 %cmp118262
  %brmerge264 = select i1 %or.cond263, i1 true, i1 %call115.not
  br i1 %brmerge264, label %if.end114.while.end_crit_edge, label %if.end114.if.end122_crit_edge

if.end114.if.end122_crit_edge:                    ; preds = %if.end114
  br label %if.end122

if.end114.while.end_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

if.end122:                                        ; preds = %if.end127.if.end122_crit_edge, %if.end114.if.end122_crit_edge
  %num_msdus.0266 = phi i32 [ %inc, %if.end127.if.end122_crit_edge ], [ 0, %if.end114.if.end122_crit_edge ]
  %num_bytes.0265 = phi i32 [ %add128, %if.end127.if.end122_crit_edge ], [ 0, %if.end114.if.end122_crit_edge ]
  %call123 = tail call i32 @ath10k_mac_tx_push_txq(ptr noundef %1, ptr noundef nonnull %call100) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp124 = icmp slt i32 %call123, 0
  br i1 %cmp124, label %if.end122.while.end_crit_edge, label %if.end127

if.end122.while.end_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

if.end127:                                        ; preds = %if.end122
  %inc = add nuw nsw i32 %num_msdus.0266, 1
  %add128 = add i32 %call123, %num_bytes.0265
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv57)
  %cmp116 = icmp uge i32 %inc, %conv57
  call void @__sanitizer_cov_trace_cmp4(i32 %add128, i32 %35)
  %cmp118 = icmp uge i32 %add128, %35
  %or.cond = select i1 %cmp116, i1 true, i1 %cmp118
  br i1 %or.cond, label %if.end127.while.end_crit_edge, label %if.end127.if.end122_crit_edge

if.end127.if.end122_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end122

if.end127.while.end_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %if.end127.while.end_crit_edge, %if.end122.while.end_crit_edge, %if.end114.while.end_crit_edge
  %num_bytes.0.lcssa = phi i32 [ 0, %if.end114.while.end_crit_edge ], [ %add128, %if.end127.while.end_crit_edge ], [ %num_bytes.0265, %if.end122.while.end_crit_edge ]
  %num_msdus.0.lcssa = phi i32 [ 0, %if.end114.while.end_crit_edge ], [ %inc, %if.end127.while.end_crit_edge ], [ %num_msdus.0266, %if.end122.while.end_crit_edge ]
  tail call void @ieee80211_return_txq(ptr noundef %1, ptr noundef nonnull %call100, i1 noundef zeroext false) #16
  %conv130 = trunc i32 %num_msdus.0.lcssa to i16
  %43 = tail call i16 @llvm.bswap.i16(i16 %conv130)
  %44 = ptrtoint ptr %num_msdus56 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %43, ptr %num_msdus56, align 1
  %45 = tail call i32 @llvm.bswap.i32(i32 %num_bytes.0.lcssa)
  %46 = ptrtoint ptr %num_bytes58 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %45, ptr %num_bytes58, align 1
  tail call void @ath10k_htt_tx_txq_recalc(ptr noundef %1, ptr noundef nonnull %call100) #16
  br label %for.inc

for.inc:                                          ; preds = %while.end, %if.then111, %if.then96
  %inc133 = add nuw nsw i32 %i.0271, 1
  %exitcond.not = icmp eq i32 %inc133, %smax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i246 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i246, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i249

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i249:                               ; preds = %for.end
  %call1.i247 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i247)
  %tobool.not.i248 = icmp eq i32 %call1.i247, 0
  br i1 %tobool.not.i248, label %land.lhs.true.i249.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i251

land.lhs.true.i249.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i249
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i251:                              ; preds = %land.lhs.true.i249
  %.b4.i250 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i250, label %land.lhs.true2.i251.rcu_read_unlock.exit_crit_edge, label %if.then.i252

land.lhs.true2.i251.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i251
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i252:                                     ; preds = %land.lhs.true2.i251
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 724, ptr noundef nonnull @.str.28) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i252, %land.lhs.true2.i251.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i249.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !316
  %47 = tail call i32 @llvm.read_register.i32(metadata !298) #16
  %and.i.i.i.i.i253 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i253 to ptr
  %preempt_count.i.i.i.i254 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i.i.i254 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i.i.i254, align 4
  %sub.i.i.i = add i32 %50, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i254, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %records.i = getelementptr inbounds %struct.htt_resp, ptr %3, i32 0, i32 1, i32 1, i32 3
  %51 = ptrtoint ptr %num_records7 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %num_records7, align 1
  %53 = tail call i16 @llvm.bswap.i16(i16 %52) #16
  %idxprom.i = zext i16 %53 to i32
  %arrayidx.i = getelementptr [0 x %struct.htt_tx_fetch_record], ptr %records.i, i32 0, i32 %idxprom.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %54 = load i32, ptr @ath10k_debug_mask, align 4
  %and.i = and i32 %54, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i255 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i255, label %lor.lhs.false.i, label %rcu_read_unlock.exit.if.then.i256_crit_edge

rcu_read_unlock.exit.if.then.i256_crit_edge:      ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i256

lor.lhs.false.i:                                  ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_rx_tx_fetch_ind, %if.then.i256)) #16
          to label %do.end.i [label %if.then.i256], !srcloc !313

if.then.i256:                                     ; preds = %lor.lhs.false.i, %rcu_read_unlock.exit.if.then.i256_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 8, ptr noundef nonnull @.str.66, i32 noundef %conv9) #16
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i256, %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp19.i.not = icmp eq i16 %12, 0
  br i1 %cmp19.i.not, label %do.end.i.ath10k_htt_rx_tx_fetch_resp_id_confirm.exit_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.ath10k_htt_rx_tx_fetch_resp_id_confirm.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_tx_fetch_resp_id_confirm.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %i.020.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.end.i.for.body.i_crit_edge ]
  %arrayidx.i257 = getelementptr i32, ptr %arrayidx.i, i32 %i.020.i
  %55 = ptrtoint ptr %arrayidx.i257 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i257, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %58 = load i32, ptr @ath10k_debug_mask, align 4
  %and2.i = and i32 %58, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %for.body.i.if.then6.i_crit_edge

for.body.i.if.then6.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then6.i

lor.lhs.false4.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_rx_tx_fetch_ind, %if.then6.i)) #16
          to label %for.inc.i [label %if.then6.i], !srcloc !313

if.then6.i:                                       ; preds = %lor.lhs.false4.i, %for.body.i.if.then6.i_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 8, ptr noundef nonnull @.str.67, i32 noundef %57) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %lor.lhs.false4.i
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv9
  br i1 %exitcond.not.i, label %for.inc.i.ath10k_htt_rx_tx_fetch_resp_id_confirm.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.ath10k_htt_rx_tx_fetch_resp_id_confirm.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_tx_fetch_resp_id_confirm.exit

ath10k_htt_rx_tx_fetch_resp_id_confirm.exit:      ; preds = %for.inc.i.ath10k_htt_rx_tx_fetch_resp_id_confirm.exit_crit_edge, %do.end.i.ath10k_htt_rx_tx_fetch_resp_id_confirm.exit_crit_edge
  %token = getelementptr inbounds %struct.htt_resp, ptr %3, i32 0, i32 1, i32 0, i32 2
  %59 = ptrtoint ptr %token to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %token, align 1
  %fetch_seq_num136 = getelementptr inbounds %struct.htt_tx_fetch_ind, ptr %7, i32 0, i32 1
  %61 = ptrtoint ptr %fetch_seq_num136 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %62 = load i16, ptr %fetch_seq_num136, align 1
  %call139 = tail call i32 @ath10k_htt_tx_fetch_resp(ptr noundef %ar, i32 noundef %60, i16 noundef zeroext %62, ptr noundef %records.i, i32 noundef %conv) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %ath10k_htt_rx_tx_fetch_resp_id_confirm.exit.if.end149_crit_edge, label %if.then147, !prof !309

ath10k_htt_rx_tx_fetch_resp_id_confirm.exit.if.end149_crit_edge: ; preds = %ath10k_htt_rx_tx_fetch_resp_id_confirm.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end149

if.then147:                                       ; preds = %ath10k_htt_rx_tx_fetch_resp_id_confirm.exit
  call void @__sanitizer_cov_trace_pc() #18
  %63 = ptrtoint ptr %token to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %token, align 1
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.130, i32 noundef %65, i32 noundef %call139) #16
  br label %if.end149

if.end149:                                        ; preds = %if.then147, %ath10k_htt_rx_tx_fetch_resp_id_confirm.exit.if.end149_crit_edge
  tail call void @ath10k_htt_tx_txq_sync(ptr noundef %ar) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end149, %if.then43, %if.then37, %if.then21, %if.then5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath10k_htt_set_rx_ops(ptr nocapture noundef %htt) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  call void @__sanitizer_cov_trace_pc() #18
  %rx_ops = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 30
  %4 = ptrtoint ptr %rx_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @htt_rx_ops_hl, ptr %rx_ops, align 4
  br label %if.end6

if.else:                                          ; preds = %entry
  %target_64bit = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 45, i32 29
  %5 = ptrtoint ptr %target_64bit to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %target_64bit, align 4, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %rx_ops5 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 30
  br i1 %tobool.not, label %if.else4, label %if.then2

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %rx_ops5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @htt_rx_ops_64, ptr %rx_ops5, align 4
  br label %if.end6

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %rx_ops5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @htt_rx_ops_32, ptr %rx_ops5, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else4, %if.then2, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_sta_update_rx_tid_stats_ampdu(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath10k_peer_find_by_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_register_airtime(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ath10k_htt_stats(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath10k_get_arvif(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_manage_rx_ba_offl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ath10k_htt_pktlog(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_update_per_peer_tx_stats(ptr noundef %ar, ptr noundef %sta, ptr noundef readonly %peer_stats) unnamed_addr #0 align 64 {
entry:
  %flags.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 82, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !308

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 3668, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %ratecode = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 3
  %1 = ptrtoint ptr %ratecode to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ratecode, align 4
  %flags25 = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 4
  %3 = ptrtoint ptr %flags25 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flags25, align 1
  %5 = lshr i8 %2, 4
  %and33 = and i8 %5, 3
  %add = add nuw nsw i8 %and33, 1
  %6 = and i8 %2, 15
  %7 = lshr i8 %4, 5
  %and42 = and i8 %7, 1
  %8 = and i8 %4, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool48.not = icmp eq i8 %8, 0
  br i1 %tobool48.not, label %if.end51, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end51:                                         ; preds = %if.end
  %9 = lshr i8 %2, 6
  %conv53 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp54 = icmp eq i8 %9, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %6)
  %cmp58 = icmp ugt i8 %6, 9
  %or.cond = and i1 %cmp54, %cmp58
  br i1 %or.cond, label %if.then60, label %if.end63

if.then60:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  %conv57 = zext i8 %6 to i32
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.41, i32 noundef %conv57) #16
  br label %cleanup

if.end63:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp66 = icmp eq i8 %9, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %6)
  %cmp71 = icmp ugt i8 %6, 7
  %or.cond455 = and i1 %cmp66, %cmp71
  br i1 %or.cond455, label %if.then77, label %if.end82

if.then77:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #18
  %conv70 = zext i8 %6 to i32
  %conv81 = zext i8 %add to i32
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.42, i32 noundef %conv70, i32 noundef %conv81) #16
  br label %cleanup

if.end82:                                         ; preds = %if.end63
  %txrate83 = getelementptr inbounds %struct.ath10k_sta, ptr %drv_priv, i32 0, i32 6
  %10 = call ptr @memset(ptr %txrate83, i32 0, i32 10)
  %tx_info = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3
  %11 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 0, i32 3
  %12 = call ptr @memset(ptr %11, i32 0, i32 40)
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp86 = icmp eq i8 %9, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %2)
  %cmp91 = icmp ult i8 %2, 64
  %or.cond454 = or i1 %cmp91, %cmp86
  br i1 %or.cond454, label %if.then93, label %if.else

if.then93:                                        ; preds = %if.end82
  %13 = ptrtoint ptr %ratecode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ratecode, align 4
  %15 = and i8 %14, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %15)
  %cmp99 = icmp eq i8 %15, 6
  %spec.select = select i1 %cmp86, i8 5, i8 6
  %rate.0 = select i1 %cmp99, i8 %spec.select, i8 %15
  %trunc471 = trunc i8 %rate.0 to i6
  %16 = zext i6 %trunc471 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.138)
  switch i6 %trunc471, label %ath10k_get_legacy_rate_idx.exit [
    i6 1, label %if.then93.if.end113_crit_edge
    i6 2, label %cleanup.fold.split.i
    i6 5, label %cleanup.fold.split13.i
    i6 11, label %cleanup.fold.split14.i
    i6 6, label %cleanup.fold.split15.i
    i6 9, label %cleanup.fold.split16.i
    i6 12, label %cleanup.fold.split17.i
    i6 18, label %cleanup.fold.split18.i
    i6 24, label %cleanup.fold.split19.i
    i6 -28, label %cleanup.fold.split20.i
    i6 -16, label %cleanup.fold.split21.i
    i6 -10, label %cleanup.fold.split22.i
  ]

if.then93.if.end113_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end113

cleanup.fold.split.i:                             ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end113

cleanup.fold.split13.i:                           ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end113

cleanup.fold.split14.i:                           ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end113

cleanup.fold.split15.i:                           ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end113

cleanup.fold.split16.i:                           ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end113

cleanup.fold.split17.i:                           ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end113

cleanup.fold.split18.i:                           ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end113

cleanup.fold.split19.i:                           ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end113

cleanup.fold.split20.i:                           ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end113

cleanup.fold.split21.i:                           ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end113

cleanup.fold.split22.i:                           ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end113

ath10k_get_legacy_rate_idx.exit:                  ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #18
  %conv5.i = zext i8 %rate.0 to i32
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.45, i32 noundef %conv5.i) #16
  br label %cleanup

if.end113:                                        ; preds = %cleanup.fold.split22.i, %cleanup.fold.split21.i, %cleanup.fold.split20.i, %cleanup.fold.split19.i, %cleanup.fold.split18.i, %cleanup.fold.split17.i, %cleanup.fold.split16.i, %cleanup.fold.split15.i, %cleanup.fold.split14.i, %cleanup.fold.split13.i, %cleanup.fold.split.i, %if.then93.if.end113_crit_edge
  %retval.0.i.ph = phi i8 [ 11, %cleanup.fold.split22.i ], [ 10, %cleanup.fold.split21.i ], [ 9, %cleanup.fold.split20.i ], [ 8, %cleanup.fold.split19.i ], [ 7, %cleanup.fold.split18.i ], [ 6, %cleanup.fold.split17.i ], [ 5, %cleanup.fold.split16.i ], [ 4, %cleanup.fold.split15.i ], [ 3, %cleanup.fold.split14.i ], [ 2, %cleanup.fold.split13.i ], [ 1, %cleanup.fold.split.i ], [ 0, %if.then93.if.end113_crit_edge ]
  %conv114 = zext i8 %rate.0 to i16
  %legacy = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 1
  %17 = ptrtoint ptr %legacy to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv114, ptr %legacy, align 2
  br label %if.end138

if.else:                                          ; preds = %if.end82
  br i1 %cmp66, label %if.end138.thread, label %if.else131

if.end138.thread:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %txrate83 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %txrate83, align 2
  %19 = shl nuw nsw i8 %and33, 3
  %narrow453 = add nuw nsw i8 %19, %6
  %mcs130 = getelementptr inbounds %struct.ath10k_sta, ptr %drv_priv, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %mcs130 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %narrow453, ptr %mcs130, align 1
  br label %sw.bb192

if.else131:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %txrate83 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %txrate83, align 2
  %mcs136 = getelementptr inbounds %struct.ath10k_sta, ptr %drv_priv, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %mcs136 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %6, ptr %mcs136, align 1
  br label %if.end138

if.end138:                                        ; preds = %if.else131, %if.end113
  %rate_idx.0 = phi i8 [ %retval.0.i.ph, %if.end113 ], [ 0, %if.else131 ]
  %23 = zext i32 %conv53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %conv53, label %if.end138.unreachabledefault [
    i32 0, label %sw.bb
    i32 1, label %sw.bb176
    i32 2, label %if.end138.sw.bb192_crit_edge
    i32 3, label %sw.bb234
  ]

if.end138.sw.bb192_crit_edge:                     ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #18
  %.pre = shl nuw nsw i8 %and33, 3
  %.pre472 = add nuw nsw i8 %.pre, %6
  br label %sw.bb192

sw.bb:                                            ; preds = %if.end138
  %24 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %drv_priv, align 8
  %tobool141.not = icmp eq ptr %25, null
  br i1 %tobool141.not, label %sw.bb.sw.epilog_crit_edge, label %land.lhs.true142

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true142:                                 ; preds = %sw.bb
  %vif = getelementptr inbounds %struct.ath10k_vif, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vif, align 4
  %tobool144.not = icmp eq ptr %27, null
  br i1 %tobool144.not, label %land.lhs.true142.sw.epilog_crit_edge, label %if.then145

land.lhs.true142.sw.epilog_crit_edge:             ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then145:                                       ; preds = %land.lhs.true142
  %chanctx_conf = getelementptr inbounds %struct.ieee80211_vif, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %chanctx_conf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %chanctx_conf, align 4
  %call153 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %land.lhs.true155, label %if.then145.if.end165_crit_edge

if.then145.if.end165_crit_edge:                   ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end165

land.lhs.true155:                                 ; preds = %if.then145
  %call156 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %land.lhs.true155.if.end165_crit_edge, label %land.lhs.true158

land.lhs.true155.if.end165_crit_edge:             ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end165

land.lhs.true158:                                 ; preds = %land.lhs.true155
  %.b452 = load i1, ptr @ath10k_update_per_peer_tx_stats.__warned, align 1
  br i1 %.b452, label %land.lhs.true158.if.end165_crit_edge, label %if.then160

land.lhs.true158.if.end165_crit_edge:             ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end165

if.then160:                                       ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ath10k_update_per_peer_tx_stats.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 3718, ptr noundef nonnull @.str.31) #16
  br label %if.end165

if.end165:                                        ; preds = %if.then160, %land.lhs.true158.if.end165_crit_edge, %land.lhs.true155.if.end165_crit_edge, %if.then145.if.end165_crit_edge
  %tobool166.not = icmp eq ptr %29, null
  br i1 %tobool166.not, label %if.end165.sw.epilog_crit_edge, label %land.lhs.true167

if.end165.sw.epilog_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

land.lhs.true167:                                 ; preds = %if.end165
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp168 = icmp eq i32 %33, 1
  br i1 %cmp168, label %if.then170, label %land.lhs.true167.sw.epilog_crit_edge

land.lhs.true167.sw.epilog_crit_edge:             ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then170:                                       ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #18
  %sub172 = add nsw i8 %rate_idx.0, -4
  %34 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %sub172, ptr %11, align 8
  br label %sw.epilog

sw.bb176:                                         ; preds = %if.end138
  %35 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %rate_idx.0, ptr %11, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and42)
  %tobool181.not = icmp eq i8 %and42, 0
  br i1 %tobool181.not, label %sw.bb176.sw.epilog_crit_edge, label %if.then182

sw.bb176.sw.epilog_crit_edge:                     ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.then182:                                       ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_pc() #18
  %flags186 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 0, i32 4
  %36 = ptrtoint ptr %flags186 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %bf.load = load i16, ptr %flags186, align 1
  %bf.set = or i16 %bf.load, 132
  store i16 %bf.set, ptr %flags186, align 1
  br label %sw.epilog

sw.bb192:                                         ; preds = %if.end138.sw.bb192_crit_edge, %if.end138.thread
  %narrow.pre-phi = phi i8 [ %.pre472, %if.end138.sw.bb192_crit_edge ], [ %narrow453, %if.end138.thread ]
  %rate_idx.0465 = phi i8 [ %rate_idx.0, %if.end138.sw.bb192_crit_edge ], [ 0, %if.end138.thread ]
  %37 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %narrow.pre-phi, ptr %11, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and42)
  %tobool205.not = icmp eq i8 %and42, 0
  br i1 %tobool205.not, label %sw.bb192.if.end220_crit_edge, label %if.then206

sw.bb192.if.end220_crit_edge:                     ; preds = %sw.bb192
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end220

if.then206:                                       ; preds = %sw.bb192
  call void @__sanitizer_cov_trace_pc() #18
  %flags210 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 0, i32 4
  %38 = ptrtoint ptr %flags210 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %bf.load211 = load i16, ptr %flags210, align 1
  %bf.set219 = or i16 %bf.load211, 128
  store i16 %bf.set219, ptr %flags210, align 1
  br label %if.end220

if.end220:                                        ; preds = %if.then206, %sw.bb192.if.end220_crit_edge
  %flags224 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 0, i32 4
  %39 = ptrtoint ptr %flags224 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %bf.load225 = load i16, ptr %flags224, align 1
  %bf.set233 = or i16 %bf.load225, 8
  store i16 %bf.set233, ptr %flags224, align 1
  br label %sw.epilog

sw.bb234:                                         ; preds = %if.end138
  %urem = and i8 %2, 63
  %40 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %urem, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and42)
  %tobool240.not = icmp eq i8 %and42, 0
  br i1 %tobool240.not, label %sw.bb234.if.end255_crit_edge, label %if.then241

sw.bb234.if.end255_crit_edge:                     ; preds = %sw.bb234
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end255

if.then241:                                       ; preds = %sw.bb234
  call void @__sanitizer_cov_trace_pc() #18
  %flags245 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 0, i32 4
  %41 = ptrtoint ptr %flags245 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %bf.load246 = load i16, ptr %flags245, align 1
  %bf.set254 = or i16 %bf.load246, 128
  store i16 %bf.set254, ptr %flags245, align 1
  br label %if.end255

if.end255:                                        ; preds = %if.then241, %sw.bb234.if.end255_crit_edge
  %flags259 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 0, i32 4
  %42 = ptrtoint ptr %flags259 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %bf.load260 = load i16, ptr %flags259, align 1
  %bf.set268 = or i16 %bf.load260, 256
  store i16 %bf.set268, ptr %flags259, align 1
  br label %sw.epilog

if.end138.unreachabledefault:                     ; preds = %if.end138
  unreachable

sw.epilog:                                        ; preds = %if.end255, %if.end220, %if.then182, %sw.bb176.sw.epilog_crit_edge, %if.then170, %land.lhs.true167.sw.epilog_crit_edge, %if.end165.sw.epilog_crit_edge, %land.lhs.true142.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %rate_idx.0464 = phi i8 [ %rate_idx.0, %sw.bb176.sw.epilog_crit_edge ], [ %rate_idx.0, %if.then182 ], [ %rate_idx.0, %if.end165.sw.epilog_crit_edge ], [ %rate_idx.0, %land.lhs.true167.sw.epilog_crit_edge ], [ %rate_idx.0, %if.then170 ], [ %rate_idx.0, %if.end255 ], [ %rate_idx.0465, %if.end220 ], [ %rate_idx.0, %land.lhs.true142.sw.epilog_crit_edge ], [ %rate_idx.0, %sw.bb.sw.epilog_crit_edge ]
  %nss271 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 1, i32 2
  %43 = ptrtoint ptr %nss271 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %add, ptr %nss271, align 2
  %44 = and i8 %4, 24
  %45 = xor i8 %44, 16
  %switch.shiftamt = zext i8 %45 to i32
  %switch.downshift = lshr i32 50332932, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %bw275 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 1, i32 3
  %46 = ptrtoint ptr %bw275 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %switch.masked, ptr %bw275, align 1
  %call277 = tail call i32 @cfg80211_calculate_bitrate(ptr noundef %txrate83) #16
  %last_tx_bitrate = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 1, i32 9
  %47 = ptrtoint ptr %last_tx_bitrate to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call277, ptr %last_tx_bitrate, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and42)
  %tobool278.not = icmp eq i8 %and42, 0
  br i1 %tobool278.not, label %sw.epilog.if.end285_crit_edge, label %if.then279

sw.epilog.if.end285_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end285

if.then279:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  %48 = ptrtoint ptr %txrate83 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %txrate83, align 2
  %50 = or i8 %49, 4
  store i8 %50, ptr %txrate83, align 2
  br label %if.end285

if.end285:                                        ; preds = %if.then279, %sw.epilog.if.end285_crit_edge
  %51 = ptrtoint ptr %bw275 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bw275, align 1
  %53 = zext i8 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.140)
  switch i8 %52, label %if.end285.sw.epilog317_crit_edge [
    i8 3, label %if.end285.sw.epilog317.sink.split_crit_edge
    i8 4, label %sw.bb303
  ]

if.end285.sw.epilog317.sink.split_crit_edge:      ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog317.sink.split

if.end285.sw.epilog317_crit_edge:                 ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog317

sw.bb303:                                         ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog317.sink.split

sw.epilog317.sink.split:                          ; preds = %sw.bb303, %if.end285.sw.epilog317.sink.split_crit_edge
  %.sink = phi i16 [ 512, %sw.bb303 ], [ 32, %if.end285.sw.epilog317.sink.split_crit_edge ]
  %flags293 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 0, i32 4
  %54 = ptrtoint ptr %flags293 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %bf.load308 = load i16, ptr %flags293, align 1
  %bf.set316 = or i16 %bf.load308, %.sink
  store i16 %bf.set316, ptr %flags293, align 1
  br label %sw.epilog317

sw.epilog317:                                     ; preds = %sw.epilog317.sink.split, %if.end285.sw.epilog317_crit_edge
  %succ_pkts = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 6
  %55 = ptrtoint ptr %succ_pkts to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %succ_pkts, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool318.not = icmp eq i16 %56, 0
  br i1 %tobool318.not, label %sw.epilog317.if.end329_crit_edge, label %if.then319

sw.epilog317.if.end329_crit_edge:                 ; preds = %sw.epilog317
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end329

if.then319:                                       ; preds = %sw.epilog317
  call void @__sanitizer_cov_trace_pc() #18
  %57 = ptrtoint ptr %tx_info to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 512, ptr %tx_info, align 8
  %count = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 0, i32 4
  %58 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %bf.load325 = load i16, ptr %count, align 1
  %bf.clear326 = and i16 %bf.load325, 2047
  %bf.set327 = or i16 %bf.clear326, 2048
  store i16 %bf.set327, ptr %count, align 1
  %hw = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 1
  %59 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_tx_rate_update(ptr noundef %60, ptr noundef %sta, ptr noundef %tx_info) #16
  br label %if.end329

if.end329:                                        ; preds = %if.then319, %sw.epilog317.if.end329_crit_edge
  %disable_tx_comp = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 31
  %61 = ptrtoint ptr %disable_tx_comp to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %disable_tx_comp, align 8, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool330.not = icmp eq i8 %62, 0
  br i1 %tobool330.not, label %if.end329.if.end345_crit_edge, label %if.then331

if.end329.if.end345_crit_edge:                    ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end345

if.then331:                                       ; preds = %if.end329
  %failed_pkts = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 8
  %63 = ptrtoint ptr %failed_pkts to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %failed_pkts, align 4
  %conv332 = zext i16 %64 to i32
  %tx_failed = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 1, i32 5
  %65 = ptrtoint ptr %tx_failed to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tx_failed, align 4
  %add333 = add i32 %66, %conv332
  store i32 %add333, ptr %tx_failed, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %67 = load i32, ptr @ath10k_debug_mask, align 4
  %and335 = and i32 %67, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and335)
  %tobool336.not = icmp eq i32 %and335, 0
  br i1 %tobool336.not, label %lor.lhs.false337, label %if.then331.if.then340_crit_edge

if.then331.if.then340_crit_edge:                  ; preds = %if.then331
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then340

lor.lhs.false337:                                 ; preds = %if.then331
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_update_per_peer_tx_stats, %if.then340)) #16
          to label %if.end345 [label %if.then340], !srcloc !313

if.then340:                                       ; preds = %lor.lhs.false337, %if.then331.if.then340_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  %68 = ptrtoint ptr %tx_failed to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tx_failed, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 8, ptr noundef nonnull @.str.43, i32 noundef %69) #16
  br label %if.end345

if.end345:                                        ; preds = %if.then340, %lor.lhs.false337, %if.end329.if.end345_crit_edge
  %retry_pkts = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 7
  %70 = ptrtoint ptr %retry_pkts to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %retry_pkts, align 2
  %conv346 = zext i16 %71 to i32
  %tx_retries = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 1, i32 1
  %72 = ptrtoint ptr %tx_retries to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tx_retries, align 8
  %add347 = add i32 %73, %conv346
  store i32 %add347, ptr %tx_retries, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %74 = load i32, ptr @ath10k_debug_mask, align 4
  %and349 = and i32 %74, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and349)
  %tobool350.not = icmp eq i32 %and349, 0
  br i1 %tobool350.not, label %lor.lhs.false351, label %if.end345.if.then354_crit_edge

if.end345.if.then354_crit_edge:                   ; preds = %if.end345
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then354

lor.lhs.false351:                                 ; preds = %if.end345
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_update_per_peer_tx_stats, %if.then354)) #16
          to label %do.end358 [label %if.then354], !srcloc !313

if.then354:                                       ; preds = %lor.lhs.false351, %if.end345.if.then354_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  %75 = ptrtoint ptr %tx_retries to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tx_retries, align 8
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 8, ptr noundef nonnull @.str.44, i32 noundef %76) #16
  br label %do.end358

do.end358:                                        ; preds = %if.then354, %lor.lhs.false351
  %enable_extd_tx_stats.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 17
  %77 = ptrtoint ptr %enable_extd_tx_stats.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %enable_extd_tx_stats.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool360.not = icmp eq i32 %78, 0
  br i1 %tobool360.not, label %do.end358.cleanup_crit_edge, label %if.then361

do.end358.cleanup_crit_edge:                      ; preds = %do.end358
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then361:                                       ; preds = %do.end358
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i)
  %tx_stats2.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 25, i32 1
  %79 = ptrtoint ptr %tx_stats2.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tx_stats2.i, align 8
  %tobool.not.i = icmp eq ptr %80, null
  br i1 %tobool.not.i, label %if.then361.ath10k_accumulate_per_peer_tx_stats.exit_crit_edge, label %if.end.i

if.then361.ath10k_accumulate_per_peer_tx_stats.exit_crit_edge: ; preds = %if.then361
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_accumulate_per_peer_tx_stats.exit

if.end.i:                                         ; preds = %if.then361
  %81 = ptrtoint ptr %txrate83 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %txrate83, align 2
  %conv.i = zext i8 %82 to i32
  %83 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv.i, ptr %flags.i, align 4
  %flags.i.0.flags.i.0.flags.0.flags.0..i = load volatile i32, ptr %flags.i, align 4
  %shr.i.i = lshr i32 %flags.i.0.flags.i.0.flags.0.flags.0..i, 2
  %and1.i.i = and i32 %shr.i.i, 1
  %84 = ptrtoint ptr %ratecode to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %ratecode, align 4
  %86 = and i8 %85, 15
  %and.i = zext i8 %86 to i32
  %87 = ptrtoint ptr %bw275 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %bw275, align 1
  %conv7.i = zext i8 %88 to i32
  %89 = ptrtoint ptr %nss271 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %nss271, align 2
  %conv9.i = zext i8 %90 to i32
  %sub.i459 = add nsw i32 %conv9.i, -1
  %mul.i = shl nsw i32 %sub.i459, 3
  %add.i = add nsw i32 %mul.i, %and.i
  %mul10.i = shl nuw nsw i32 %and.i, 3
  %mul12.i = mul nsw i32 %sub.i459, 80
  %mul14.i = shl nuw nsw i32 %conv7.i, 1
  %add13.i = or i32 %mul14.i, %and1.i.i
  %add15.i = add nuw nsw i32 %add13.i, %mul10.i
  %add16.i = add nsw i32 %add15.i, %mul12.i
  %and19.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.else.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %91 = ptrtoint ptr %peer_stats to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %peer_stats, align 4
  %conv22.i = zext i32 %92 to i64
  %vht.i = getelementptr inbounds %struct.ath10k_htt_data_stats, ptr %80, i32 0, i32 2
  %arrayidx24.i = getelementptr [10 x i64], ptr %vht.i, i32 0, i32 %and.i
  %93 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %arrayidx24.i, align 8
  %add25.i = add i64 %94, %conv22.i
  store i64 %add25.i, ptr %arrayidx24.i, align 8
  %95 = ptrtoint ptr %succ_pkts to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %succ_pkts, align 4
  %conv26.i = zext i16 %96 to i64
  %arrayidx31.i = getelementptr %struct.ath10k_htt_data_stats, ptr %80, i32 0, i32 2, i32 1, i32 %and.i
  %97 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %arrayidx31.i, align 8
  %add32.i = add i64 %98, %conv26.i
  store i64 %add32.i, ptr %arrayidx31.i, align 8
  %failed_bytes.i = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 2
  %99 = ptrtoint ptr %failed_bytes.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %failed_bytes.i, align 4
  %conv33.i = zext i32 %100 to i64
  %vht36.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 1, i32 2
  %arrayidx38.i = getelementptr [10 x i64], ptr %vht36.i, i32 0, i32 %and.i
  %101 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %arrayidx38.i, align 8
  %add39.i = add i64 %102, %conv33.i
  store i64 %add39.i, ptr %arrayidx38.i, align 8
  %failed_pkts.i = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 8
  %103 = ptrtoint ptr %failed_pkts.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %failed_pkts.i, align 4
  %conv40.i = zext i16 %104 to i64
  %arrayidx45.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 1, i32 2, i32 1, i32 %and.i
  %105 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %arrayidx45.i, align 8
  %add46.i = add i64 %106, %conv40.i
  store i64 %add46.i, ptr %arrayidx45.i, align 8
  %retry_bytes.i = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 1
  %107 = ptrtoint ptr %retry_bytes.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %retry_bytes.i, align 4
  %conv47.i = zext i32 %108 to i64
  %vht50.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 2, i32 2
  %arrayidx52.i = getelementptr [10 x i64], ptr %vht50.i, i32 0, i32 %and.i
  %109 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %arrayidx52.i, align 8
  %add53.i = add i64 %110, %conv47.i
  store i64 %add53.i, ptr %arrayidx52.i, align 8
  %arrayidx59.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 2, i32 2, i32 1, i32 %and.i
  br label %if.end163.i

if.else.i:                                        ; preds = %if.end.i
  %and63.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.not.i = icmp eq i32 %and63.i, 0
  br i1 %tobool64.not.i, label %if.else113.i, label %if.then65.i

if.then65.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %111 = ptrtoint ptr %peer_stats to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %peer_stats, align 4
  %conv67.i = zext i32 %112 to i64
  %ht.i = getelementptr inbounds %struct.ath10k_htt_data_stats, ptr %80, i32 0, i32 1
  %arrayidx71.i = getelementptr [32 x i64], ptr %ht.i, i32 0, i32 %add.i
  %113 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %arrayidx71.i, align 8
  %add72.i = add i64 %114, %conv67.i
  store i64 %add72.i, ptr %arrayidx71.i, align 8
  %115 = ptrtoint ptr %succ_pkts to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %succ_pkts, align 4
  %conv74.i = zext i16 %116 to i64
  %arrayidx79.i = getelementptr %struct.ath10k_htt_data_stats, ptr %80, i32 0, i32 1, i32 1, i32 %add.i
  %117 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %arrayidx79.i, align 8
  %add80.i = add i64 %118, %conv74.i
  store i64 %add80.i, ptr %arrayidx79.i, align 8
  %failed_bytes81.i = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 2
  %119 = ptrtoint ptr %failed_bytes81.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %failed_bytes81.i, align 4
  %conv82.i = zext i32 %120 to i64
  %ht85.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 1, i32 1
  %arrayidx87.i = getelementptr [32 x i64], ptr %ht85.i, i32 0, i32 %add.i
  %121 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %arrayidx87.i, align 8
  %add88.i = add i64 %122, %conv82.i
  store i64 %add88.i, ptr %arrayidx87.i, align 8
  %failed_pkts89.i = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 8
  %123 = ptrtoint ptr %failed_pkts89.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %failed_pkts89.i, align 4
  %conv90.i = zext i16 %124 to i64
  %arrayidx95.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 1, i32 1, i32 1, i32 %add.i
  %125 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %arrayidx95.i, align 8
  %add96.i = add i64 %126, %conv90.i
  store i64 %add96.i, ptr %arrayidx95.i, align 8
  %retry_bytes97.i = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 1
  %127 = ptrtoint ptr %retry_bytes97.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %retry_bytes97.i, align 4
  %conv98.i = zext i32 %128 to i64
  %ht101.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 2, i32 1
  %arrayidx103.i = getelementptr [32 x i64], ptr %ht101.i, i32 0, i32 %add.i
  %129 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %arrayidx103.i, align 8
  %add104.i = add i64 %130, %conv98.i
  store i64 %add104.i, ptr %arrayidx103.i, align 8
  %arrayidx111.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 2, i32 1, i32 1, i32 %add.i
  br label %if.end163.i

if.else113.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv114.i470 = zext i8 %rate_idx.0464 to i32
  %131 = ptrtoint ptr %peer_stats to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %peer_stats, align 4
  %conv116.i = zext i32 %132 to i64
  %arrayidx120.i = getelementptr [12 x i64], ptr %80, i32 0, i32 %conv114.i470
  %133 = ptrtoint ptr %arrayidx120.i to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %arrayidx120.i, align 8
  %add121.i = add i64 %134, %conv116.i
  store i64 %add121.i, ptr %arrayidx120.i, align 8
  %135 = ptrtoint ptr %succ_pkts to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %succ_pkts, align 4
  %conv123.i = zext i16 %136 to i64
  %arrayidx128.i = getelementptr [2 x [12 x i64]], ptr %80, i32 0, i32 1, i32 %conv114.i470
  %137 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %arrayidx128.i, align 8
  %add129.i = add i64 %138, %conv123.i
  store i64 %add129.i, ptr %arrayidx128.i, align 8
  %failed_bytes130.i = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 2
  %139 = ptrtoint ptr %failed_bytes130.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %failed_bytes130.i, align 4
  %conv131.i = zext i32 %140 to i64
  %arrayidx133.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 1
  %arrayidx136.i = getelementptr [12 x i64], ptr %arrayidx133.i, i32 0, i32 %conv114.i470
  %141 = ptrtoint ptr %arrayidx136.i to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %arrayidx136.i, align 8
  %add137.i = add i64 %142, %conv131.i
  store i64 %add137.i, ptr %arrayidx136.i, align 8
  %failed_pkts138.i = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 8
  %143 = ptrtoint ptr %failed_pkts138.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %failed_pkts138.i, align 4
  %conv139.i = zext i16 %144 to i64
  %arrayidx144.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 1, i32 0, i32 1, i32 %conv114.i470
  %145 = ptrtoint ptr %arrayidx144.i to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %arrayidx144.i, align 8
  %add145.i = add i64 %146, %conv139.i
  store i64 %add145.i, ptr %arrayidx144.i, align 8
  %retry_bytes146.i = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 1
  %147 = ptrtoint ptr %retry_bytes146.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %retry_bytes146.i, align 4
  %conv147.i = zext i32 %148 to i64
  %arrayidx149.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 2
  %arrayidx152.i = getelementptr [12 x i64], ptr %arrayidx149.i, i32 0, i32 %conv114.i470
  %149 = ptrtoint ptr %arrayidx152.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %arrayidx152.i, align 8
  %add153.i = add i64 %150, %conv147.i
  store i64 %add153.i, ptr %arrayidx152.i, align 8
  %arrayidx160.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 2, i32 0, i32 1, i32 %conv114.i470
  br label %if.end163.i

if.end163.i:                                      ; preds = %if.else113.i, %if.then65.i, %if.then21.i
  %arrayidx111.sink1.i = phi ptr [ %arrayidx111.i, %if.then65.i ], [ %arrayidx160.i, %if.else113.i ], [ %arrayidx59.i, %if.then21.i ]
  %mcs.0.i = phi i32 [ %and.i, %if.then65.i ], [ %conv114.i470, %if.else113.i ], [ %and.i, %if.then21.i ]
  %151 = ptrtoint ptr %retry_pkts to i32
  call void @__asan_load2_noabort(i32 %151)
  %conv106.sink.in.i = load i16, ptr %retry_pkts, align 2
  %conv106.sink.i = zext i16 %conv106.sink.in.i to i64
  %152 = ptrtoint ptr %arrayidx111.sink1.i to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %arrayidx111.sink1.i, align 8
  %add112.i = add i64 %153, %conv106.sink.i
  store i64 %add112.i, ptr %arrayidx111.sink1.i, align 8
  %154 = ptrtoint ptr %flags25 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %flags25, align 1
  %conv165.i = zext i8 %155 to i32
  %and166.i = and i32 %conv165.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166.i)
  %tobool167.not.i = icmp eq i32 %and166.i, 0
  %156 = lshr i32 %conv165.i, 1
  %and318.i = and i32 %156, 3
  %157 = zext i32 %and318.i to i64
  br i1 %tobool167.not.i, label %if.else314.i, label %if.then168.i

if.then168.i:                                     ; preds = %if.end163.i
  %ba_fails.i = getelementptr inbounds %struct.ath10k_htt_tx_stats, ptr %80, i32 0, i32 2
  %158 = ptrtoint ptr %ba_fails.i to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %ba_fails.i, align 8
  %add173.i = add i64 %159, %157
  store i64 %add173.i, ptr %ba_fails.i, align 8
  %160 = ptrtoint ptr %txrate83 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %txrate83, align 2
  %162 = and i8 %161, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool177.not.i = icmp eq i8 %162, 0
  %163 = ptrtoint ptr %peer_stats to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %peer_stats, align 4
  %retry_bytes203.i = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 1
  %165 = ptrtoint ptr %retry_bytes203.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %retry_bytes203.i, align 4
  %add204.i = add i32 %166, %164
  %conv205.i = zext i32 %add204.i to i64
  br i1 %tobool177.not.i, label %if.else201.i, label %if.then178.i

if.then178.i:                                     ; preds = %if.then168.i
  call void @__sanitizer_cov_trace_pc() #18
  %ht185.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 3, i32 1
  %arrayidx187.i = getelementptr [32 x i64], ptr %ht185.i, i32 0, i32 %add.i
  %167 = ptrtoint ptr %arrayidx187.i to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %arrayidx187.i, align 8
  %add188.i = add i64 %168, %conv205.i
  store i64 %add188.i, ptr %arrayidx187.i, align 8
  %169 = ptrtoint ptr %succ_pkts to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %succ_pkts, align 4
  %conv190.i = zext i16 %170 to i32
  %171 = ptrtoint ptr %retry_pkts to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %retry_pkts, align 2
  %conv192.i = zext i16 %172 to i32
  %add193.i = add nuw nsw i32 %conv192.i, %conv190.i
  %arrayidx199.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 3, i32 1, i32 1, i32 %add.i
  br label %if.end224.i

if.else201.i:                                     ; preds = %if.then168.i
  call void @__sanitizer_cov_trace_pc() #18
  %vht208.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 3, i32 2
  %arrayidx210.i = getelementptr [10 x i64], ptr %vht208.i, i32 0, i32 %mcs.0.i
  %173 = ptrtoint ptr %arrayidx210.i to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %arrayidx210.i, align 8
  %add211.i = add i64 %174, %conv205.i
  store i64 %add211.i, ptr %arrayidx210.i, align 8
  %175 = ptrtoint ptr %succ_pkts to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %succ_pkts, align 4
  %conv213.i = zext i16 %176 to i32
  %177 = ptrtoint ptr %retry_pkts to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %retry_pkts, align 2
  %conv215.i = zext i16 %178 to i32
  %add216.i = add nuw nsw i32 %conv215.i, %conv213.i
  %arrayidx222.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 3, i32 2, i32 1, i32 %mcs.0.i
  br label %if.end224.i

if.end224.i:                                      ; preds = %if.else201.i, %if.then178.i
  %arrayidx222.sink3.i = phi ptr [ %arrayidx222.i, %if.else201.i ], [ %arrayidx199.i, %if.then178.i ]
  %.sink2.in.i = phi i32 [ %add216.i, %if.else201.i ], [ %add193.i, %if.then178.i ]
  %.sink2.i = zext i32 %.sink2.in.i to i64
  %179 = ptrtoint ptr %arrayidx222.sink3.i to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %arrayidx222.sink3.i, align 8
  %add223.i = add i64 %180, %.sink2.i
  store i64 %add223.i, ptr %arrayidx222.sink3.i, align 8
  %181 = ptrtoint ptr %peer_stats to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %peer_stats, align 4
  %183 = ptrtoint ptr %retry_bytes203.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %retry_bytes203.i, align 4
  %add227.i = add i32 %184, %182
  %conv228.i = zext i32 %add227.i to i64
  %bw231.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 3, i32 3
  %arrayidx233.i = getelementptr [6 x i64], ptr %bw231.i, i32 0, i32 %conv7.i
  %185 = ptrtoint ptr %arrayidx233.i to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %arrayidx233.i, align 8
  %add234.i = add i64 %186, %conv228.i
  store i64 %add234.i, ptr %arrayidx233.i, align 8
  %187 = load i32, ptr %peer_stats, align 4
  %188 = load i32, ptr %retry_bytes203.i, align 4
  %add237.i = add i32 %188, %187
  %conv238.i = zext i32 %add237.i to i64
  %nss241.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 3, i32 4
  %arrayidx244.i = getelementptr [4 x i64], ptr %nss241.i, i32 0, i32 %sub.i459
  %189 = ptrtoint ptr %arrayidx244.i to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %arrayidx244.i, align 8
  %add245.i = add i64 %190, %conv238.i
  store i64 %add245.i, ptr %arrayidx244.i, align 8
  %191 = load i32, ptr %peer_stats, align 4
  %192 = load i32, ptr %retry_bytes203.i, align 4
  %add248.i = add i32 %192, %191
  %conv249.i = zext i32 %add248.i to i64
  %gi252.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 3, i32 5
  %arrayidx254.i = getelementptr [2 x i64], ptr %gi252.i, i32 0, i32 %and1.i.i
  %193 = ptrtoint ptr %arrayidx254.i to i32
  call void @__asan_load8_noabort(i32 %193)
  %194 = load i64, ptr %arrayidx254.i, align 8
  %add255.i = add i64 %194, %conv249.i
  store i64 %add255.i, ptr %arrayidx254.i, align 8
  %195 = load i32, ptr %peer_stats, align 4
  %196 = load i32, ptr %retry_bytes203.i, align 4
  %add258.i = add i32 %196, %195
  %conv259.i = zext i32 %add258.i to i64
  %rate_table.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 3, i32 6
  %arrayidx263.i = getelementptr [320 x i64], ptr %rate_table.i, i32 0, i32 %add16.i
  %197 = ptrtoint ptr %arrayidx263.i to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %arrayidx263.i, align 8
  %add264.i = add i64 %198, %conv259.i
  store i64 %add264.i, ptr %arrayidx263.i, align 8
  %199 = ptrtoint ptr %succ_pkts to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %succ_pkts, align 4
  %conv266.i = zext i16 %200 to i32
  %201 = ptrtoint ptr %retry_pkts to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %retry_pkts, align 2
  %conv268.i = zext i16 %202 to i32
  %add269.i = add nuw nsw i32 %conv268.i, %conv266.i
  %203 = zext i32 %add269.i to i64
  %arrayidx275.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 3, i32 3, i32 1, i32 %conv7.i
  %204 = ptrtoint ptr %arrayidx275.i to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %arrayidx275.i, align 8
  %add276.i = add i64 %205, %203
  store i64 %add276.i, ptr %arrayidx275.i, align 8
  %206 = load i16, ptr %succ_pkts, align 4
  %conv278.i = zext i16 %206 to i32
  %207 = load i16, ptr %retry_pkts, align 2
  %conv280.i = zext i16 %207 to i32
  %add281.i = add nuw nsw i32 %conv280.i, %conv278.i
  %208 = zext i32 %add281.i to i64
  %arrayidx288.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 3, i32 4, i32 1, i32 %sub.i459
  %209 = ptrtoint ptr %arrayidx288.i to i32
  call void @__asan_load8_noabort(i32 %209)
  %210 = load i64, ptr %arrayidx288.i, align 8
  %add289.i = add i64 %210, %208
  store i64 %add289.i, ptr %arrayidx288.i, align 8
  %211 = load i16, ptr %succ_pkts, align 4
  %conv291.i = zext i16 %211 to i32
  %212 = load i16, ptr %retry_pkts, align 2
  %conv293.i = zext i16 %212 to i32
  %add294.i = add nuw nsw i32 %conv293.i, %conv291.i
  %213 = zext i32 %add294.i to i64
  %arrayidx300.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 3, i32 5, i32 1, i32 %and1.i.i
  %214 = ptrtoint ptr %arrayidx300.i to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %arrayidx300.i, align 8
  %add301.i = add i64 %215, %213
  store i64 %add301.i, ptr %arrayidx300.i, align 8
  %216 = load i16, ptr %succ_pkts, align 4
  %conv303.i = zext i16 %216 to i32
  %217 = load i16, ptr %retry_pkts, align 2
  %conv305.i = zext i16 %217 to i32
  %add306.i = add nuw nsw i32 %conv305.i, %conv303.i
  %218 = zext i32 %add306.i to i64
  %arrayidx312.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 3, i32 6, i32 1, i32 %add16.i
  br label %if.end321.i

if.else314.i:                                     ; preds = %if.end163.i
  call void @__sanitizer_cov_trace_pc() #18
  %ack_fails.i = getelementptr inbounds %struct.ath10k_htt_tx_stats, ptr %80, i32 0, i32 3
  br label %if.end321.i

if.end321.i:                                      ; preds = %if.else314.i, %if.end224.i
  %ack_fails.sink5.i = phi ptr [ %ack_fails.i, %if.else314.i ], [ %arrayidx312.i, %if.end224.i ]
  %.sink4.i = phi i64 [ %157, %if.else314.i ], [ %218, %if.end224.i ]
  %219 = ptrtoint ptr %ack_fails.sink5.i to i32
  call void @__asan_load8_noabort(i32 %219)
  %220 = load i64, ptr %ack_fails.sink5.i, align 8
  %add320.i = add i64 %220, %.sink4.i
  store i64 %add320.i, ptr %ack_fails.sink5.i, align 8
  %221 = ptrtoint ptr %peer_stats to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %peer_stats, align 4
  %conv323.i = zext i32 %222 to i64
  %bw326.i = getelementptr inbounds %struct.ath10k_htt_data_stats, ptr %80, i32 0, i32 3
  %arrayidx328.i = getelementptr [6 x i64], ptr %bw326.i, i32 0, i32 %conv7.i
  %223 = ptrtoint ptr %arrayidx328.i to i32
  call void @__asan_load8_noabort(i32 %223)
  %224 = load i64, ptr %arrayidx328.i, align 8
  %add329.i = add i64 %224, %conv323.i
  store i64 %add329.i, ptr %arrayidx328.i, align 8
  %225 = load i32, ptr %peer_stats, align 4
  %conv331.i = zext i32 %225 to i64
  %nss334.i = getelementptr inbounds %struct.ath10k_htt_data_stats, ptr %80, i32 0, i32 4
  %arrayidx337.i = getelementptr [4 x i64], ptr %nss334.i, i32 0, i32 %sub.i459
  %226 = ptrtoint ptr %arrayidx337.i to i32
  call void @__asan_load8_noabort(i32 %226)
  %227 = load i64, ptr %arrayidx337.i, align 8
  %add338.i = add i64 %227, %conv331.i
  store i64 %add338.i, ptr %arrayidx337.i, align 8
  %228 = load i32, ptr %peer_stats, align 4
  %conv340.i = zext i32 %228 to i64
  %gi343.i = getelementptr inbounds %struct.ath10k_htt_data_stats, ptr %80, i32 0, i32 5
  %arrayidx345.i = getelementptr [2 x i64], ptr %gi343.i, i32 0, i32 %and1.i.i
  %229 = ptrtoint ptr %arrayidx345.i to i32
  call void @__asan_load8_noabort(i32 %229)
  %230 = load i64, ptr %arrayidx345.i, align 8
  %add346.i = add i64 %230, %conv340.i
  store i64 %add346.i, ptr %arrayidx345.i, align 8
  %231 = ptrtoint ptr %succ_pkts to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %succ_pkts, align 4
  %conv348.i = zext i16 %232 to i64
  %arrayidx353.i = getelementptr %struct.ath10k_htt_data_stats, ptr %80, i32 0, i32 3, i32 1, i32 %conv7.i
  %233 = ptrtoint ptr %arrayidx353.i to i32
  call void @__asan_load8_noabort(i32 %233)
  %234 = load i64, ptr %arrayidx353.i, align 8
  %add354.i = add i64 %234, %conv348.i
  store i64 %add354.i, ptr %arrayidx353.i, align 8
  %235 = load i16, ptr %succ_pkts, align 4
  %conv356.i = zext i16 %235 to i64
  %arrayidx362.i = getelementptr %struct.ath10k_htt_data_stats, ptr %80, i32 0, i32 4, i32 1, i32 %sub.i459
  %236 = ptrtoint ptr %arrayidx362.i to i32
  call void @__asan_load8_noabort(i32 %236)
  %237 = load i64, ptr %arrayidx362.i, align 8
  %add363.i = add i64 %237, %conv356.i
  store i64 %add363.i, ptr %arrayidx362.i, align 8
  %238 = load i16, ptr %succ_pkts, align 4
  %conv365.i = zext i16 %238 to i64
  %arrayidx370.i = getelementptr %struct.ath10k_htt_data_stats, ptr %80, i32 0, i32 5, i32 1, i32 %and1.i.i
  %239 = ptrtoint ptr %arrayidx370.i to i32
  call void @__asan_load8_noabort(i32 %239)
  %240 = load i64, ptr %arrayidx370.i, align 8
  %add371.i = add i64 %240, %conv365.i
  store i64 %add371.i, ptr %arrayidx370.i, align 8
  %failed_bytes372.i = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 2
  %241 = ptrtoint ptr %failed_bytes372.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %failed_bytes372.i, align 4
  %conv373.i = zext i32 %242 to i64
  %bw376.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 1, i32 3
  %arrayidx378.i = getelementptr [6 x i64], ptr %bw376.i, i32 0, i32 %conv7.i
  %243 = ptrtoint ptr %arrayidx378.i to i32
  call void @__asan_load8_noabort(i32 %243)
  %244 = load i64, ptr %arrayidx378.i, align 8
  %add379.i = add i64 %244, %conv373.i
  store i64 %add379.i, ptr %arrayidx378.i, align 8
  %245 = load i32, ptr %failed_bytes372.i, align 4
  %conv381.i = zext i32 %245 to i64
  %nss384.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 1, i32 4
  %arrayidx387.i = getelementptr [4 x i64], ptr %nss384.i, i32 0, i32 %sub.i459
  %246 = ptrtoint ptr %arrayidx387.i to i32
  call void @__asan_load8_noabort(i32 %246)
  %247 = load i64, ptr %arrayidx387.i, align 8
  %add388.i = add i64 %247, %conv381.i
  store i64 %add388.i, ptr %arrayidx387.i, align 8
  %248 = load i32, ptr %failed_bytes372.i, align 4
  %conv390.i = zext i32 %248 to i64
  %gi393.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 1, i32 5
  %arrayidx395.i = getelementptr [2 x i64], ptr %gi393.i, i32 0, i32 %and1.i.i
  %249 = ptrtoint ptr %arrayidx395.i to i32
  call void @__asan_load8_noabort(i32 %249)
  %250 = load i64, ptr %arrayidx395.i, align 8
  %add396.i = add i64 %250, %conv390.i
  store i64 %add396.i, ptr %arrayidx395.i, align 8
  %failed_pkts397.i = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 8
  %251 = ptrtoint ptr %failed_pkts397.i to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %failed_pkts397.i, align 4
  %conv398.i = zext i16 %252 to i64
  %arrayidx403.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 1, i32 3, i32 1, i32 %conv7.i
  %253 = ptrtoint ptr %arrayidx403.i to i32
  call void @__asan_load8_noabort(i32 %253)
  %254 = load i64, ptr %arrayidx403.i, align 8
  %add404.i = add i64 %254, %conv398.i
  store i64 %add404.i, ptr %arrayidx403.i, align 8
  %255 = load i16, ptr %failed_pkts397.i, align 4
  %conv406.i = zext i16 %255 to i64
  %arrayidx412.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 1, i32 4, i32 1, i32 %sub.i459
  %256 = ptrtoint ptr %arrayidx412.i to i32
  call void @__asan_load8_noabort(i32 %256)
  %257 = load i64, ptr %arrayidx412.i, align 8
  %add413.i = add i64 %257, %conv406.i
  store i64 %add413.i, ptr %arrayidx412.i, align 8
  %258 = load i16, ptr %failed_pkts397.i, align 4
  %conv415.i = zext i16 %258 to i64
  %arrayidx420.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 1, i32 5, i32 1, i32 %and1.i.i
  %259 = ptrtoint ptr %arrayidx420.i to i32
  call void @__asan_load8_noabort(i32 %259)
  %260 = load i64, ptr %arrayidx420.i, align 8
  %add421.i = add i64 %260, %conv415.i
  store i64 %add421.i, ptr %arrayidx420.i, align 8
  %retry_bytes422.i = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 1
  %261 = ptrtoint ptr %retry_bytes422.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %retry_bytes422.i, align 4
  %conv423.i = zext i32 %262 to i64
  %bw426.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 2, i32 3
  %arrayidx428.i = getelementptr [6 x i64], ptr %bw426.i, i32 0, i32 %conv7.i
  %263 = ptrtoint ptr %arrayidx428.i to i32
  call void @__asan_load8_noabort(i32 %263)
  %264 = load i64, ptr %arrayidx428.i, align 8
  %add429.i = add i64 %264, %conv423.i
  store i64 %add429.i, ptr %arrayidx428.i, align 8
  %265 = load i32, ptr %retry_bytes422.i, align 4
  %conv431.i = zext i32 %265 to i64
  %nss434.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 2, i32 4
  %arrayidx437.i = getelementptr [4 x i64], ptr %nss434.i, i32 0, i32 %sub.i459
  %266 = ptrtoint ptr %arrayidx437.i to i32
  call void @__asan_load8_noabort(i32 %266)
  %267 = load i64, ptr %arrayidx437.i, align 8
  %add438.i = add i64 %267, %conv431.i
  store i64 %add438.i, ptr %arrayidx437.i, align 8
  %268 = load i32, ptr %retry_bytes422.i, align 4
  %conv440.i = zext i32 %268 to i64
  %gi443.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 2, i32 5
  %arrayidx445.i = getelementptr [2 x i64], ptr %gi443.i, i32 0, i32 %and1.i.i
  %269 = ptrtoint ptr %arrayidx445.i to i32
  call void @__asan_load8_noabort(i32 %269)
  %270 = load i64, ptr %arrayidx445.i, align 8
  %add446.i = add i64 %270, %conv440.i
  store i64 %add446.i, ptr %arrayidx445.i, align 8
  %271 = ptrtoint ptr %retry_pkts to i32
  call void @__asan_load2_noabort(i32 %271)
  %272 = load i16, ptr %retry_pkts, align 2
  %conv448.i = zext i16 %272 to i64
  %arrayidx453.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 2, i32 3, i32 1, i32 %conv7.i
  %273 = ptrtoint ptr %arrayidx453.i to i32
  call void @__asan_load8_noabort(i32 %273)
  %274 = load i64, ptr %arrayidx453.i, align 8
  %add454.i = add i64 %274, %conv448.i
  store i64 %add454.i, ptr %arrayidx453.i, align 8
  %275 = load i16, ptr %retry_pkts, align 2
  %conv456.i = zext i16 %275 to i64
  %arrayidx462.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 2, i32 4, i32 1, i32 %sub.i459
  %276 = ptrtoint ptr %arrayidx462.i to i32
  call void @__asan_load8_noabort(i32 %276)
  %277 = load i64, ptr %arrayidx462.i, align 8
  %add463.i = add i64 %277, %conv456.i
  store i64 %add463.i, ptr %arrayidx462.i, align 8
  %278 = load i16, ptr %retry_pkts, align 2
  %conv465.i = zext i16 %278 to i64
  %arrayidx470.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 2, i32 5, i32 1, i32 %and1.i.i
  %279 = ptrtoint ptr %arrayidx470.i to i32
  call void @__asan_load8_noabort(i32 %279)
  %280 = load i64, ptr %arrayidx470.i, align 8
  %add471.i = add i64 %280, %conv465.i
  store i64 %add471.i, ptr %arrayidx470.i, align 8
  %281 = ptrtoint ptr %txrate83 to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %txrate83, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %282)
  %cmp.not.i = icmp eq i8 %282, 0
  br i1 %cmp.not.i, label %if.end321.i.if.end524.i_crit_edge, label %if.then475.i

if.end321.i.if.end524.i_crit_edge:                ; preds = %if.end321.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end524.i

if.then475.i:                                     ; preds = %if.end321.i
  call void @__sanitizer_cov_trace_pc() #18
  %283 = ptrtoint ptr %peer_stats to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %peer_stats, align 4
  %conv477.i = zext i32 %284 to i64
  %rate_table480.i = getelementptr inbounds %struct.ath10k_htt_data_stats, ptr %80, i32 0, i32 6
  %arrayidx482.i = getelementptr [320 x i64], ptr %rate_table480.i, i32 0, i32 %add16.i
  %285 = ptrtoint ptr %arrayidx482.i to i32
  call void @__asan_load8_noabort(i32 %285)
  %286 = load i64, ptr %arrayidx482.i, align 8
  %add483.i = add i64 %286, %conv477.i
  store i64 %add483.i, ptr %arrayidx482.i, align 8
  %287 = ptrtoint ptr %succ_pkts to i32
  call void @__asan_load2_noabort(i32 %287)
  %288 = load i16, ptr %succ_pkts, align 4
  %conv485.i = zext i16 %288 to i64
  %arrayidx490.i = getelementptr %struct.ath10k_htt_data_stats, ptr %80, i32 0, i32 6, i32 1, i32 %add16.i
  %289 = ptrtoint ptr %arrayidx490.i to i32
  call void @__asan_load8_noabort(i32 %289)
  %290 = load i64, ptr %arrayidx490.i, align 8
  %add491.i = add i64 %290, %conv485.i
  store i64 %add491.i, ptr %arrayidx490.i, align 8
  %291 = ptrtoint ptr %failed_bytes372.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %failed_bytes372.i, align 4
  %conv493.i = zext i32 %292 to i64
  %rate_table496.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 1, i32 6
  %arrayidx498.i = getelementptr [320 x i64], ptr %rate_table496.i, i32 0, i32 %add16.i
  %293 = ptrtoint ptr %arrayidx498.i to i32
  call void @__asan_load8_noabort(i32 %293)
  %294 = load i64, ptr %arrayidx498.i, align 8
  %add499.i = add i64 %294, %conv493.i
  store i64 %add499.i, ptr %arrayidx498.i, align 8
  %295 = ptrtoint ptr %failed_pkts397.i to i32
  call void @__asan_load2_noabort(i32 %295)
  %296 = load i16, ptr %failed_pkts397.i, align 4
  %conv501.i = zext i16 %296 to i64
  %arrayidx506.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 1, i32 6, i32 1, i32 %add16.i
  %297 = ptrtoint ptr %arrayidx506.i to i32
  call void @__asan_load8_noabort(i32 %297)
  %298 = load i64, ptr %arrayidx506.i, align 8
  %add507.i = add i64 %298, %conv501.i
  store i64 %add507.i, ptr %arrayidx506.i, align 8
  %299 = ptrtoint ptr %retry_bytes422.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %retry_bytes422.i, align 4
  %conv509.i = zext i32 %300 to i64
  %rate_table512.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 2, i32 6
  %arrayidx514.i = getelementptr [320 x i64], ptr %rate_table512.i, i32 0, i32 %add16.i
  %301 = ptrtoint ptr %arrayidx514.i to i32
  call void @__asan_load8_noabort(i32 %301)
  %302 = load i64, ptr %arrayidx514.i, align 8
  %add515.i = add i64 %302, %conv509.i
  store i64 %add515.i, ptr %arrayidx514.i, align 8
  %303 = ptrtoint ptr %retry_pkts to i32
  call void @__asan_load2_noabort(i32 %303)
  %304 = load i16, ptr %retry_pkts, align 2
  %conv517.i = zext i16 %304 to i64
  %arrayidx522.i = getelementptr [4 x %struct.ath10k_htt_data_stats], ptr %80, i32 0, i32 2, i32 6, i32 1, i32 %add16.i
  %305 = ptrtoint ptr %arrayidx522.i to i32
  call void @__asan_load8_noabort(i32 %305)
  %306 = load i64, ptr %arrayidx522.i, align 8
  %add523.i = add i64 %306, %conv517.i
  store i64 %add523.i, ptr %arrayidx522.i, align 8
  br label %if.end524.i

if.end524.i:                                      ; preds = %if.then475.i, %if.end321.i.if.end524.i_crit_edge
  %duration.i = getelementptr inbounds %struct.ath10k_per_peer_tx_stats, ptr %peer_stats, i32 0, i32 9
  %307 = ptrtoint ptr %duration.i to i32
  call void @__asan_load2_noabort(i32 %307)
  %308 = load i16, ptr %duration.i, align 2
  %conv525.i = zext i16 %308 to i64
  %tx_duration.i = getelementptr inbounds %struct.ath10k_htt_tx_stats, ptr %80, i32 0, i32 1
  %309 = ptrtoint ptr %tx_duration.i to i32
  call void @__asan_load8_noabort(i32 %309)
  %310 = load i64, ptr %tx_duration.i, align 8
  %add526.i = add i64 %310, %conv525.i
  store i64 %add526.i, ptr %tx_duration.i, align 8
  br label %ath10k_accumulate_per_peer_tx_stats.exit

ath10k_accumulate_per_peer_tx_stats.exit:         ; preds = %if.end524.i, %if.then361.ath10k_accumulate_per_peer_tx_stats.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i)
  br label %cleanup

cleanup:                                          ; preds = %ath10k_accumulate_per_peer_tx_stats.exit, %do.end358.cleanup_crit_edge, %ath10k_get_legacy_rate_idx.exit, %if.then77, %if.then60, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_calculate_bitrate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_rate_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_channel_khz(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath10k_mac_txq_lookup(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ath10k_htt_rx_pn_check_replay_hl(ptr noundef %ar, ptr noundef %peer, ptr nocapture noundef readonly %rx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 82, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !308

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 2289, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool24.not = icmp eq ptr %peer, null
  br i1 %tobool24.not, label %if.end.cleanup_crit_edge, label %if.end26

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.htt_rx_indication_hl, ptr %rx, i32 0, i32 3, i32 3
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %flags, align 1
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool27.not = icmp eq i8 %3, 0
  br i1 %tobool27.not, label %if.end26.cleanup_crit_edge, label %if.end29

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end29:                                         ; preds = %if.end26
  %info1 = getelementptr inbounds %struct.htt_rx_indication_hdr, ptr %rx, i32 0, i32 2
  %4 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %info1, align 1
  %6 = and i32 %5, 255
  %arrayidx = getelementptr %struct.htt_rx_indication_hl, ptr %rx, i32 0, i32 4, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %arrayidx, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = and i32 %9, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool33.not = icmp eq i32 %10, 0
  br i1 %tobool33.not, label %if.end29.cleanup_crit_edge, label %if.end35

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  %11 = ptrtoint ptr %rx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rx, align 1
  %13 = and i8 %12, 31
  %and38 = zext i8 %13 to i32
  %arrayidx40 = getelementptr %struct.ath10k_peer, ptr %peer, i32 0, i32 9, i32 %and38
  %14 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx40, align 1, !range !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool41.not = icmp eq i8 %15, 0
  %arrayidx42 = getelementptr %struct.ath10k_peer, ptr %peer, i32 0, i32 8, i32 %and38
  %16 = lshr i32 %9, 16
  %.lobit = and i32 %16, 1
  %17 = xor i32 %.lobit, 1
  %arrayidx48 = getelementptr %struct.ath10k_peer, ptr %peer, i32 0, i32 12, i32 %17
  %18 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx48, align 4
  %pn_len = getelementptr %struct.ath10k_peer, ptr %peer, i32 0, i32 12, i32 %17, i32 1
  %20 = ptrtoint ptr %pn_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pn_len, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %21, label %if.end35.ath10k_htt_rx_mpdu_desc_pn_hl.exit_crit_edge [
    i32 48, label %sw.bb.i
    i32 24, label %sw.bb2.i
  ]

if.end35.ath10k_htt_rx_mpdu_desc_pn_hl.exit_crit_edge: ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_mpdu_desc_pn_hl.exit

sw.bb.i:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  %pn_31_0.i = getelementptr inbounds %struct.htt_hl_rx_desc, ptr %arrayidx, i32 0, i32 1
  %23 = ptrtoint ptr %pn_31_0.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %pn_31_0.i, align 1
  %u0.i = getelementptr inbounds %struct.htt_hl_rx_desc, ptr %arrayidx, i32 0, i32 2
  %25 = ptrtoint ptr %u0.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %u0.i, align 1
  %27 = and i32 %26, -65536
  %28 = zext i32 %27 to i64
  %29 = zext i32 %24 to i64
  %30 = shl nuw i64 %29, 32
  %31 = or i64 %30, %28
  %32 = tail call i64 @llvm.bswap.i64(i64 %31) #16
  %new_pn.sroa.0.sroa.0.0.extract.shift = lshr i64 %32, 32
  %new_pn.sroa.0.sroa.0.0.extract.trunc = trunc i64 %new_pn.sroa.0.sroa.0.0.extract.shift to i32
  %new_pn.sroa.0.sroa.7.0.extract.trunc = trunc i64 %32 to i32
  br label %ath10k_htt_rx_mpdu_desc_pn_hl.exit

sw.bb2.i:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  %pn_31_03.i = getelementptr inbounds %struct.htt_hl_rx_desc, ptr %arrayidx, i32 0, i32 1
  %33 = ptrtoint ptr %pn_31_03.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %pn_31_03.i, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #16
  br label %ath10k_htt_rx_mpdu_desc_pn_hl.exit

ath10k_htt_rx_mpdu_desc_pn_hl.exit:               ; preds = %sw.bb2.i, %sw.bb.i, %if.end35.ath10k_htt_rx_mpdu_desc_pn_hl.exit_crit_edge
  %new_pn.sroa.0.sroa.0.0 = phi i32 [ 0, %if.end35.ath10k_htt_rx_mpdu_desc_pn_hl.exit_crit_edge ], [ %35, %sw.bb2.i ], [ %new_pn.sroa.0.sroa.0.0.extract.trunc, %sw.bb.i ]
  %new_pn.sroa.0.sroa.7.0 = phi i32 [ -1, %if.end35.ath10k_htt_rx_mpdu_desc_pn_hl.exit_crit_edge ], [ -1, %sw.bb2.i ], [ %new_pn.sroa.0.sroa.7.0.extract.trunc, %sw.bb.i ]
  %.off = add i32 %19, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.end60, label %ath10k_htt_rx_mpdu_desc_pn_hl.exit.cleanup_crit_edge

ath10k_htt_rx_mpdu_desc_pn_hl.exit.cleanup_crit_edge: ; preds = %ath10k_htt_rx_mpdu_desc_pn_hl.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end60:                                         ; preds = %ath10k_htt_rx_mpdu_desc_pn_hl.exit
  br i1 %tobool41.not, label %if.end68.thread, label %if.end68

if.end68.thread:                                  ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #18
  %36 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %arrayidx40, align 1
  %.pre = zext i32 %new_pn.sroa.0.sroa.7.0 to i64
  %.pre113 = zext i32 %new_pn.sroa.0.sroa.0.0 to i64
  %.pre114 = shl nuw i64 %.pre113, 32
  br label %if.then70

if.end68:                                         ; preds = %if.end60
  %new_pn.sroa.0.sroa.7.0.insert.ext107 = zext i32 %new_pn.sroa.0.sroa.7.0 to i64
  %new_pn.sroa.0.sroa.0.0.insert.ext101 = zext i32 %new_pn.sroa.0.sroa.0.0 to i64
  %new_pn.sroa.0.sroa.0.0.insert.shift102 = shl nuw i64 %new_pn.sroa.0.sroa.0.0.insert.ext101, 32
  %new_pn.sroa.0.sroa.0.0.insert.shift102.masked = and i64 %new_pn.sroa.0.sroa.0.0.insert.shift102, 281470681743360
  %and.i = or i64 %new_pn.sroa.0.sroa.0.0.insert.shift102.masked, %new_pn.sroa.0.sroa.7.0.insert.ext107
  %37 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx42, align 8
  %and1.i = and i64 %38, 281474976710655
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %and1.i)
  %cmp.i.not = icmp ugt i64 %and.i, %and1.i
  br i1 %cmp.i.not, label %if.end68.if.then70_crit_edge, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end68.if.then70_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then70

if.then70:                                        ; preds = %if.end68.if.then70_crit_edge, %if.end68.thread
  %new_pn.sroa.0.sroa.0.0.insert.shift.pre-phi = phi i64 [ %.pre114, %if.end68.thread ], [ %new_pn.sroa.0.sroa.0.0.insert.shift102, %if.end68.if.then70_crit_edge ]
  %new_pn.sroa.0.sroa.7.0.insert.ext.pre-phi = phi i64 [ %.pre, %if.end68.thread ], [ %new_pn.sroa.0.sroa.7.0.insert.ext107, %if.end68.if.then70_crit_edge ]
  %new_pn.sroa.0.sroa.0.0.insert.insert = or i64 %new_pn.sroa.0.sroa.0.0.insert.shift.pre-phi, %new_pn.sroa.0.sroa.7.0.insert.ext.pre-phi
  %39 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %new_pn.sroa.0.sroa.0.0.insert.insert, ptr %arrayidx42, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %if.end68.cleanup_crit_edge, %ath10k_htt_rx_mpdu_desc_pn_hl.exit.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end.cleanup_crit_edge ], [ false, %if.end26.cleanup_crit_edge ], [ false, %if.end29.cleanup_crit_edge ], [ false, %ath10k_htt_rx_mpdu_desc_pn_hl.exit.cleanup_crit_edge ], [ false, %if.then70 ], [ true, %if.end68.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_napi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iter_chan_contexts_atomic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ath10k_htt_rx_h_any_chan_iter(ptr nocapture noundef readnone %hw, ptr nocapture noundef readonly %conf, ptr nocapture noundef writeonly %data) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %data, ptr %conf, i32 28)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_process_rx(ptr noundef %ar, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %tid = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tid) #16
  %filter_flags = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 65
  %2 = call ptr @memset(ptr %tid, i32 255, i32 32)
  %3 = ptrtoint ptr %filter_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %filter_flags, align 32
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %flag = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %5 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flag, align 8
  %and1 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.body_crit_edge, label %if.then

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %stats = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 120
  %7 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stats, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %stats, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #16
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %9 = load i32, ptr @ath10k_debug_mask, align 4
  %and3 = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %do.body.if.then6_crit_edge

do.body.if.then6_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then6

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_process_rx, %if.then6)) #16
          to label %do.end [label %if.then6], !srcloc !313

if.then6:                                         ; preds = %lor.lhs.false, %do.body.if.then6_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 2
  %14 = and i16 %13, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %14)
  %cmp.i.i = icmp eq i16 %14, 3
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  %addr4.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 6
  br label %ieee80211_get_SA.exit

if.end.i:                                         ; preds = %if.then6
  %15 = and i16 %13, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.i11.not.i = icmp eq i16 %15, 0
  br i1 %cmp.i11.not.i, label %if.end5.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %addr3.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 4
  br label %ieee80211_get_SA.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %addr2.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 3
  br label %ieee80211_get_SA.exit

ieee80211_get_SA.exit:                            ; preds = %if.end5.i, %if.then3.i, %if.then.i
  %retval.0.i = phi ptr [ %addr4.i, %if.then.i ], [ %addr3.i, %if.then3.i ], [ %addr2.i, %if.end5.i ]
  %16 = and i16 %13, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %16)
  %cmp.i.i130 = icmp eq i16 %16, -30720
  br i1 %cmp.i.i130, label %if.end.i131, label %ieee80211_get_SA.exit.ath10k_get_tid.exit_crit_edge

ieee80211_get_SA.exit.ath10k_get_tid.exit_crit_edge: ; preds = %ieee80211_get_SA.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_get_tid.exit

if.end.i131:                                      ; preds = %ieee80211_get_SA.exit
  %retval.0.v.i.i = select i1 %cmp.i.i, i32 30, i32 24
  %retval.0.i.i = getelementptr i8, ptr %1, i32 %retval.0.v.i.i
  %17 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %retval.0.i.i, align 1
  %19 = and i8 %18, 15
  %and.i = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %19)
  %cmp.i = icmp ult i8 %19, 8
  br i1 %cmp.i, label %if.then3.i132, label %if.else.i

if.then3.i132:                                    ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr [8 x ptr], ptr @tid_to_ac, i32 0, i32 %and.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %call4.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tid, i32 noundef 32, ptr noundef nonnull @.str.93, i32 noundef %and.i, ptr noundef %21) #16
  br label %ath10k_get_tid.exit

if.else.i:                                        ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #18
  %call5.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tid, i32 noundef 32, ptr noundef nonnull @.str.94, i32 noundef %and.i) #16
  br label %ath10k_get_tid.exit

ath10k_get_tid.exit:                              ; preds = %if.else.i, %if.then3.i132, %ieee80211_get_SA.exit.ath10k_get_tid.exit_crit_edge
  %retval.0.i133 = phi ptr [ @.str.85, %ieee80211_get_SA.exit.ath10k_get_tid.exit_crit_edge ], [ %tid, %if.else.i ], [ %tid, %if.then3.i132 ]
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %1, align 2
  %24 = and i16 %23, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp.i.not.i = icmp eq i16 %24, 0
  %addr3.i134 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 4
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 2
  %retval.0.i135 = select i1 %cmp.i.not.i, ptr %addr1.i, ptr %addr3.i134
  %25 = ptrtoint ptr %retval.0.i135 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %retval.0.i135, align 4
  %27 = and i32 %26, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i.not = icmp eq i32 %27, 0
  %cond = select i1 %tobool.i.not, ptr @.str.83, ptr @.str.82
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %seq_ctrl, align 2
  %30 = and i16 %29, -3841
  %31 = tail call i16 @llvm.bswap.i16(i16 %30)
  %32 = lshr exact i16 %31, 4
  %33 = zext i16 %32 to i32
  %encoding = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 31
  %34 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %bf.load = load i16, ptr %encoding, align 1
  %bf.lshr = lshr i16 %bf.load, 14
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load)
  %cmp = icmp ult i16 %bf.load, 16384
  %cond14 = select i1 %cmp, ptr @.str.84, ptr @.str.85
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %bf.lshr)
  %cmp20 = icmp eq i16 %bf.lshr, 1
  %cond22 = select i1 %cmp20, ptr @.str.86, ptr @.str.85
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %bf.lshr)
  %cmp28 = icmp eq i16 %bf.lshr, 2
  %cond30 = select i1 %cmp28, ptr @.str.87, ptr @.str.85
  %bf.lshr32 = lshr i16 %bf.load, 11
  %35 = and i16 %bf.lshr32, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %35)
  %cmp35 = icmp eq i16 %35, 3
  %cond37 = select i1 %cmp35, ptr @.str.88, ptr @.str.85
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %35)
  %cmp44 = icmp eq i16 %35, 4
  %cond46 = select i1 %cmp44, ptr @.str.89, ptr @.str.85
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %35)
  %cmp53 = icmp eq i16 %35, 5
  %cond55 = select i1 %cmp53, ptr @.str.90, ptr @.str.85
  %enc_flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 30
  %36 = ptrtoint ptr %enc_flags to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %enc_flags, align 2
  %38 = and i8 %37, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool58.not = icmp eq i8 %38, 0
  %cond59 = select i1 %tobool58.not, ptr @.str.85, ptr @.str.91
  %rate_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %39 = ptrtoint ptr %rate_idx to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %rate_idx, align 1
  %conv60 = zext i8 %40 to i32
  %nss = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 34
  %41 = ptrtoint ptr %nss to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %nss, align 2
  %conv61 = zext i8 %42 to i32
  %freq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %43 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load62 = load i16, ptr %freq, align 4
  %bf.lshr63 = lshr i16 %bf.load62, 3
  %conv64 = zext i16 %bf.lshr63 to i32
  %band = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %44 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %band, align 4
  %conv65 = zext i8 %45 to i32
  %flag66 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %46 = ptrtoint ptr %flag66 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flag66, align 8
  %and68 = lshr i32 %47, 5
  %and68.lobit = and i32 %and68, 1
  %and72 = and i32 %47, 1
  %and79 = lshr i32 %47, 19
  %and79.lobit = and i32 %and79, 1
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 512, ptr noundef nonnull @.str.81, ptr noundef %skb, i32 noundef %11, ptr noundef %retval.0.i, ptr noundef nonnull %retval.0.i133, ptr noundef nonnull %cond, i32 noundef %33, ptr noundef nonnull %cond14, ptr noundef nonnull %cond22, ptr noundef nonnull %cond30, ptr noundef nonnull %cond37, ptr noundef nonnull %cond46, ptr noundef nonnull %cond55, ptr noundef nonnull %cond59, i32 noundef %conv60, i32 noundef %conv61, i32 noundef %conv64, i32 noundef %conv65, i32 noundef %47, i32 noundef %and68.lobit, i32 noundef %and72, i32 noundef %and79.lobit) #16
  br label %do.end

do.end:                                           ; preds = %ath10k_get_tid.exit, %lor.lhs.false
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 4
  %len87 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %50 = ptrtoint ptr %len87 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len87, align 4
  call void @ath10k_dbg_dump(ptr noundef %ar, i32 noundef 128, ptr noundef null, ptr noundef nonnull @.str.92, ptr noundef %49, i32 noundef %51) #16
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data, align 4
  %54 = ptrtoint ptr %len87 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len87, align 4
  call fastcc void @trace_ath10k_rx_hdr(ptr noundef %ar, ptr noundef %53, i32 noundef %55)
  %56 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data, align 4
  %58 = ptrtoint ptr %len87 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len87, align 4
  call fastcc void @trace_ath10k_rx_payload(ptr noundef %ar, ptr noundef %57, i32 noundef %59)
  %hw = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 1
  %60 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw, align 4
  %napi = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 126
  call void @ieee80211_rx_napi(ptr noundef %61, ptr noundef null, ptr noundef %skb, ptr noundef %napi) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tid) #16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ath10k_rx_hdr(ptr noundef %ar, ptr noundef %data, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_rx_hdr, i32 0, i32 1), ptr blockaddress(@trace_ath10k_rx_hdr, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !298) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !309

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !298) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !326
  %call42 = tail call i32 @__traceiter_ath10k_rx_hdr(ptr noundef null, ptr noundef %ar, ptr noundef %data, i32 noundef %len) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !327
  %13 = tail call i32 @llvm.read_register.i32(metadata !298) #16
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !298) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !309

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !298) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !320
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_rx_hdr, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_rx_hdr, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ath10k_rx_hdr.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_ath10k_rx_hdr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 423, ptr noundef nonnull @.str.31) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !321
  %31 = tail call i32 @llvm.read_register.i32(metadata !298) #16
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
define internal fastcc void @trace_ath10k_rx_payload(ptr noundef %ar, ptr noundef %data, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_rx_payload, i32 0, i32 1), ptr blockaddress(@trace_ath10k_rx_payload, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !298) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !309

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !298) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !328
  %call42 = tail call i32 @__traceiter_ath10k_rx_payload(ptr noundef null, ptr noundef %ar, ptr noundef %data, i32 noundef %len) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !329
  %13 = tail call i32 @llvm.read_register.i32(metadata !298) #16
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !298) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !309

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !298) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !320
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_rx_payload, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_rx_payload, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ath10k_rx_payload.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_ath10k_rx_payload.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 428, ptr noundef nonnull @.str.31) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !321
  %31 = tail call i32 @llvm.read_register.i32(metadata !298) #16
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

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ath10k_rx_hdr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ath10k_rx_payload(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_htt_rx_h_ppdu(ptr noundef %ar, ptr noundef readonly %amsdu, ptr noundef %status, i32 noundef %vdev_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %amsdu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %amsdu, align 4
  %cmp.i = icmp eq ptr %1, %amsdu
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -360
  %4 = getelementptr i8, ptr %3, i32 -356
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %4, align 1
  %and = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %and6 = and i32 %6, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool2.not, label %if.end.if.end27_crit_edge, label %if.then12

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then12:                                        ; preds = %if.end
  %freq = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 5
  %7 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %freq, align 4
  %bf.clear = and i16 %bf.load, 7
  store i16 %bf.clear, ptr %freq, align 4
  %rate_idx = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 8
  %8 = ptrtoint ptr %rate_idx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %rate_idx, align 1
  %nss = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 9
  %9 = ptrtoint ptr %nss to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %nss, align 2
  %encoding = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 7
  %10 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %bf.load13 = load i16, ptr %encoding, align 1
  %bf.clear17 = and i16 %bf.load13, 2047
  store i16 %bf.clear17, ptr %encoding, align 1
  %flag = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 4
  %11 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flag, align 8
  %and19 = and i32 %12, -78593
  %or24 = or i32 %and19, 4864
  store i32 %or24, ptr %flag, align 8
  %ampdu_reference = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 129
  %13 = ptrtoint ptr %ampdu_reference to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ampdu_reference, align 4
  %ampdu_reference25 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 3
  %15 = ptrtoint ptr %ampdu_reference25 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %ampdu_reference25, align 4
  %chains.i = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 14
  %ppdu_start.i = getelementptr i8, ptr %3, i32 -252
  %16 = ptrtoint ptr %chains.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %chains.i, align 1
  %conv1.i = and i8 %17, -2
  store i8 %conv1.i, ptr %chains.i, align 1
  %18 = ptrtoint ptr %ppdu_start.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ppdu_start.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %19)
  %cmp3.not.i = icmp eq i8 %19, -128
  br i1 %cmp3.not.i, label %if.then12.for.inc.i_crit_edge, label %if.then.i

if.then12.for.inc.i_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  %add.i = add i8 %19, -95
  %arrayidx11.i = getelementptr %struct.ieee80211_rx_status, ptr %status, i32 0, i32 15, i32 0
  %20 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %add.i, ptr %arrayidx11.i, align 1
  %conv15.i = or i8 %17, 1
  %21 = ptrtoint ptr %chains.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv15.i, ptr %chains.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %if.then12.for.inc.i_crit_edge
  %22 = ptrtoint ptr %chains.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %chains.i, align 1
  %conv1.1.i = and i8 %23, -3
  store i8 %conv1.1.i, ptr %chains.i, align 1
  %arrayidx.1.i = getelementptr i8, ptr %3, i32 -248
  %24 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %25)
  %cmp3.not.1.i = icmp eq i8 %25, -128
  br i1 %cmp3.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.1.i = add i8 %25, -95
  %arrayidx11.1.i = getelementptr %struct.ieee80211_rx_status, ptr %status, i32 0, i32 15, i32 1
  %26 = ptrtoint ptr %arrayidx11.1.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %add.1.i, ptr %arrayidx11.1.i, align 1
  %conv15.1.i = or i8 %23, 2
  %27 = ptrtoint ptr %chains.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv15.1.i, ptr %chains.i, align 1
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %28 = ptrtoint ptr %chains.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %chains.i, align 1
  %conv1.2.i = and i8 %29, -5
  store i8 %conv1.2.i, ptr %chains.i, align 1
  %arrayidx.2.i = getelementptr i8, ptr %3, i32 -244
  %30 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %31)
  %cmp3.not.2.i = icmp eq i8 %31, -128
  br i1 %cmp3.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.2.i = add i8 %31, -95
  %arrayidx11.2.i = getelementptr %struct.ieee80211_rx_status, ptr %status, i32 0, i32 15, i32 2
  %32 = ptrtoint ptr %arrayidx11.2.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %add.2.i, ptr %arrayidx11.2.i, align 1
  %conv15.2.i = or i8 %29, 4
  %33 = ptrtoint ptr %chains.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv15.2.i, ptr %chains.i, align 1
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %34 = ptrtoint ptr %chains.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %chains.i, align 1
  %conv1.3.i = and i8 %35, -9
  store i8 %conv1.3.i, ptr %chains.i, align 1
  %arrayidx.3.i = getelementptr i8, ptr %3, i32 -240
  %36 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %37)
  %cmp3.not.3.i = icmp eq i8 %37, -128
  br i1 %cmp3.not.3.i, label %for.inc.2.i.ath10k_htt_rx_h_signal.exit_crit_edge, label %if.then.3.i

for.inc.2.i.ath10k_htt_rx_h_signal.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_h_signal.exit

if.then.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.3.i = add i8 %37, -95
  %arrayidx11.3.i = getelementptr %struct.ieee80211_rx_status, ptr %status, i32 0, i32 15, i32 3
  %38 = ptrtoint ptr %arrayidx11.3.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %add.3.i, ptr %arrayidx11.3.i, align 1
  %conv15.3.i = or i8 %35, 8
  %39 = ptrtoint ptr %chains.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv15.3.i, ptr %chains.i, align 1
  br label %ath10k_htt_rx_h_signal.exit

ath10k_htt_rx_h_signal.exit:                      ; preds = %if.then.3.i, %for.inc.2.i.ath10k_htt_rx_h_signal.exit_crit_edge
  %rssi_comb.i = getelementptr i8, ptr %3, i32 -236
  %40 = ptrtoint ptr %rssi_comb.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %rssi_comb.i, align 1
  %add18.i = add i8 %41, -95
  %signal.i = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 13
  %42 = ptrtoint ptr %signal.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %add18.i, ptr %signal.i, align 2
  %and20.i = or i32 %and19, 4608
  %43 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and20.i, ptr %flag, align 8
  tail call fastcc void @ath10k_htt_rx_h_channel(ptr noundef %ar, ptr noundef %status, ptr noundef %add.ptr, i32 noundef %vdev_id)
  %info11.i = getelementptr i8, ptr %3, i32 -232
  %44 = ptrtoint ptr %info11.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %info11.i, align 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #16
  %info23.i = getelementptr i8, ptr %3, i32 -228
  %47 = ptrtoint ptr %info23.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %info23.i, align 1
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #16
  %info35.i = getelementptr i8, ptr %3, i32 -224
  %50 = ptrtoint ptr %info35.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %info35.i, align 1
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #16
  %shr.i = lshr i32 %46, 24
  %trunc.i = trunc i32 %shr.i to i8
  %53 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.142)
  switch i8 %trunc.i, label %ath10k_htt_rx_h_signal.exit.if.end27_crit_edge [
    i8 4, label %sw.bb.i
    i8 8, label %ath10k_htt_rx_h_signal.exit.sw.bb16.i_crit_edge
    i8 9, label %ath10k_htt_rx_h_signal.exit.sw.bb16.i_crit_edge65
    i8 12, label %ath10k_htt_rx_h_signal.exit.sw.bb42.i_crit_edge
    i8 13, label %ath10k_htt_rx_h_signal.exit.sw.bb42.i_crit_edge66
  ]

ath10k_htt_rx_h_signal.exit.sw.bb42.i_crit_edge66: ; preds = %ath10k_htt_rx_h_signal.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb42.i

ath10k_htt_rx_h_signal.exit.sw.bb42.i_crit_edge:  ; preds = %ath10k_htt_rx_h_signal.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb42.i

ath10k_htt_rx_h_signal.exit.sw.bb16.i_crit_edge65: ; preds = %ath10k_htt_rx_h_signal.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb16.i

ath10k_htt_rx_h_signal.exit.sw.bb16.i_crit_edge:  ; preds = %ath10k_htt_rx_h_signal.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb16.i

ath10k_htt_rx_h_signal.exit.if.end27_crit_edge:   ; preds = %ath10k_htt_rx_h_signal.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

sw.bb.i:                                          ; preds = %ath10k_htt_rx_h_signal.exit
  %54 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %54)
  %bf.load.i = load i16, ptr %freq, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8
  br i1 %tobool.not.i, label %sw.bb.i.if.end27_crit_edge, label %if.end.i

sw.bb.i.if.end27_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  %55 = trunc i32 %46 to i8
  %conv14.i = and i8 %55, 7
  %mac.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 55
  %band.i = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 11
  %56 = ptrtoint ptr %band.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %band.i, align 4
  %idxprom.i = zext i8 %57 to i32
  %arrayidx.i = getelementptr [6 x %struct.ieee80211_supported_band], ptr %mac.i, i32 0, i32 %idxprom.i
  %conv8177.i = and i32 %46, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8177.i)
  %tobool15.i = icmp ne i32 %conv8177.i, 0
  %call.i = tail call zeroext i8 @ath10k_mac_hw_rate_to_idx(ptr noundef %arrayidx.i, i8 noundef zeroext %conv14.i, i1 noundef zeroext %tobool15.i) #16
  %58 = ptrtoint ptr %rate_idx to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %call.i, ptr %rate_idx, align 1
  br label %if.end27

sw.bb16.i:                                        ; preds = %ath10k_htt_rx_h_signal.exit.sw.bb16.i_crit_edge, %ath10k_htt_rx_h_signal.exit.sw.bb16.i_crit_edge65
  %59 = trunc i32 %49 to i8
  %conv18.i = and i8 %59, 31
  %60 = ptrtoint ptr %rate_idx to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv18.i, ptr %rate_idx, align 1
  %61 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %bf.load29.i = load i16, ptr %encoding, align 1
  %bf.clear.i = and i16 %bf.load29.i, 16383
  %bf.set.i = or i16 %bf.clear.i, 16384
  store i16 %bf.set.i, ptr %encoding, align 1
  %62 = and i32 %52, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool30.not.i = icmp eq i32 %62, 0
  br i1 %tobool30.not.i, label %sw.bb16.i.if.end34.i_crit_edge, label %if.then31.i

sw.bb16.i.if.end34.i_crit_edge:                   ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34.i

if.then31.i:                                      ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #18
  %enc_flags.i = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 6
  %63 = ptrtoint ptr %enc_flags.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %enc_flags.i, align 2
  %65 = or i8 %64, 4
  store i8 %65, ptr %enc_flags.i, align 2
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then31.i, %sw.bb16.i.if.end34.i_crit_edge
  %66 = and i32 %49, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool35.not.i = icmp eq i32 %66, 0
  br i1 %tobool35.not.i, label %if.end34.i.if.end27_crit_edge, label %if.then36.i

if.end34.i.if.end27_crit_edge:                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then36.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #18
  %bf.clear39.i = and i16 %bf.set.i, 18431
  %bf.set40.i = or i16 %bf.clear39.i, 6144
  %67 = ptrtoint ptr %encoding to i32
  call void @__asan_storeN_noabort(i32 %67, i32 2)
  store i16 %bf.set40.i, ptr %encoding, align 1
  br label %if.end27

sw.bb42.i:                                        ; preds = %ath10k_htt_rx_h_signal.exit.sw.bb42.i_crit_edge, %ath10k_htt_rx_h_signal.exit.sw.bb42.i_crit_edge66
  %shr49.i = lshr i32 %49, 4
  %conv51.i = and i32 %shr49.i, 63
  %68 = zext i32 %conv51.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %conv51.i, label %sw.bb42.i.if.end96.i_crit_edge [
    i32 0, label %sw.bb42.i.if.then57.i_crit_edge
    i32 63, label %sw.bb42.i.if.then57.i_crit_edge67
  ]

sw.bb42.i.if.then57.i_crit_edge67:                ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then57.i

sw.bb42.i.if.then57.i_crit_edge:                  ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then57.i

sw.bb42.i.if.end96.i_crit_edge:                   ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end96.i

if.then57.i:                                      ; preds = %sw.bb42.i.if.then57.i_crit_edge, %sw.bb42.i.if.then57.i_crit_edge67
  %69 = trunc i32 %52 to i8
  %70 = lshr i8 %69, 4
  %shr61.i = lshr i32 %49, 10
  %and62.i = and i32 %shr61.i, 7
  %71 = and i32 %49, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool63.not.i = icmp eq i32 %71, 0
  %shr65.i = lshr i32 %and62.i, 2
  %nss.0.v.v.i = select i1 %tobool63.not.i, i32 %and62.i, i32 %shr65.i
  %nss.0.v.i = trunc i32 %nss.0.v.v.i to i8
  %nss.0.i = add nuw nsw i8 %nss.0.v.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -97, i8 %69)
  %cmp73.i = icmp ugt i8 %69, -97
  br i1 %cmp73.i, label %if.then75.i, label %if.then57.i.if.end96.i_crit_edge

if.then57.i.if.end96.i_crit_edge:                 ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end96.i

if.then75.i:                                      ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv72.i = zext i8 %70 to i32
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.111, i32 noundef %conv72.i) #16
  %72 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %4, align 1
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #16
  %mpdu_start.i = getelementptr i8, ptr %3, i32 -344
  %75 = ptrtoint ptr %mpdu_start.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %mpdu_start.i, align 1
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #16
  %info178.i = getelementptr i8, ptr %3, i32 -336
  %78 = ptrtoint ptr %info178.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %info178.i, align 1
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #16
  %msdu_start.i = getelementptr i8, ptr %3, i32 -332
  %81 = ptrtoint ptr %msdu_start.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %msdu_start.i, align 1
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #16
  %info182.i = getelementptr i8, ptr %3, i32 -324
  %84 = ptrtoint ptr %info182.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %info182.i, align 1
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #16
  %info084.i = getelementptr i8, ptr %3, i32 -233
  %87 = ptrtoint ptr %info084.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %info084.i, align 1
  %conv85.i = zext i8 %88 to i32
  %89 = ptrtoint ptr %info11.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %info11.i, align 1
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #16
  %92 = ptrtoint ptr %info23.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %info23.i, align 1
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #16
  %95 = ptrtoint ptr %info35.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %info35.i, align 1
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #16
  %info4.i = getelementptr i8, ptr %3, i32 -220
  %98 = ptrtoint ptr %info4.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %info4.i, align 1
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #16
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.112, i32 noundef %74, i32 noundef %77, i32 noundef %80, i32 noundef %83, i32 noundef %86, i32 noundef %conv85.i, i32 noundef %91, i32 noundef %94, i32 noundef %97, i32 noundef %100) #16
  %info094.i = getelementptr i8, ptr %3, i32 -296
  %101 = ptrtoint ptr %info094.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %info094.i, align 1
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #16
  %mpdu_end.i = getelementptr i8, ptr %3, i32 -256
  %104 = ptrtoint ptr %mpdu_end.i to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %mpdu_end.i, align 1
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #16
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.113, i32 noundef %103, i32 noundef %106) #16
  tail call void @ath10k_dbg_dump(ptr noundef %ar, i32 noundef 128, ptr noundef null, ptr noundef nonnull @.str.114, ptr noundef %3, i32 noundef 50) #16
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.then75.i, %if.then57.i.if.end96.i_crit_edge, %sw.bb42.i.if.end96.i_crit_edge
  %nss.0182.i = phi i8 [ %nss.0.i, %if.then75.i ], [ %nss.0.i, %if.then57.i.if.end96.i_crit_edge ], [ 1, %sw.bb42.i.if.end96.i_crit_edge ]
  %mcs.0181.i = phi i8 [ %70, %if.then75.i ], [ %70, %if.then57.i.if.end96.i_crit_edge ], [ 0, %sw.bb42.i.if.end96.i_crit_edge ]
  %107 = ptrtoint ptr %rate_idx to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %mcs.0181.i, ptr %rate_idx, align 1
  %108 = ptrtoint ptr %nss to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %nss.0182.i, ptr %nss, align 2
  %conv46176.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv46176.i)
  %tobool99.not.i = icmp eq i32 %conv46176.i, 0
  br i1 %tobool99.not.i, label %if.end96.i.if.end105.i_crit_edge, label %if.then100.i

if.end96.i.if.end105.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end105.i

if.then100.i:                                     ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #18
  %enc_flags101.i = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 6
  %109 = ptrtoint ptr %enc_flags101.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %enc_flags101.i, align 2
  %111 = or i8 %110, 4
  store i8 %111, ptr %enc_flags101.i, align 2
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.then100.i, %if.end96.i.if.end105.i_crit_edge
  %switch.tableidx = shl i32 %49, 3
  %switch.cast = and i32 %switch.tableidx, 24
  %switch.shiftamt = xor i32 %switch.cast, 16
  %switch.downshift = lshr i32 50332932, %switch.shiftamt
  %112 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %112, i32 2)
  %bf.load108.i = load i16, ptr %encoding, align 1
  %113 = trunc i32 %switch.downshift to i16
  %bf.value.i = shl i16 %113, 11
  %bf.clear109.i = and i16 %bf.load108.i, 2047
  %bf.set110.i = or i16 %bf.clear109.i, %bf.value.i
  %bf.set114.i = or i16 %bf.set110.i, -32768
  store i16 %bf.set114.i, ptr %encoding, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.end105.i, %if.then36.i, %if.end34.i.if.end27_crit_edge, %if.end.i, %sw.bb.i.if.end27_crit_edge, %ath10k_htt_rx_h_signal.exit.if.end27_crit_edge, %if.end.if.end27_crit_edge
  br i1 %tobool7.not, label %if.end27.cleanup_crit_edge, label %if.then29

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  %tsf_timestamp.i = getelementptr i8, ptr %3, i32 -148
  %114 = ptrtoint ptr %tsf_timestamp.i to i32
  call void @__asan_loadN_noabort(i32 %114, i32 4)
  %115 = load i32, ptr %tsf_timestamp.i, align 1
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #16
  %conv.i63 = zext i32 %116 to i64
  %117 = ptrtoint ptr %status to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %conv.i63, ptr %status, align 8
  %flag.i64 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 4
  %118 = ptrtoint ptr %flag.i64 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %flag.i64, align 8
  %or31 = or i32 %119, 73728
  store i32 %or31, ptr %flag.i64, align 8
  %ampdu_reference32 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 129
  %120 = ptrtoint ptr %ampdu_reference32 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %ampdu_reference32, align 4
  %inc = add i32 %121, 1
  store i32 %inc, ptr %ampdu_reference32, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.end27.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_htt_rx_h_mpdu(ptr noundef %ar, ptr noundef %amsdu, ptr nocapture noundef %status, i1 noundef zeroext %fill_crypt_header, ptr noundef writeonly %rx_hdr, ptr noundef writeonly %err, i16 noundef zeroext %peer_id, i1 noundef zeroext %frag) unnamed_addr #0 align 64 {
entry:
  %first_hdr = alloca [64 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %first_hdr) #16
  %0 = call ptr @memset(ptr %first_hdr, i32 255, i32 64)
  %1 = ptrtoint ptr %amsdu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %amsdu, align 4
  %cmp.i = icmp eq ptr %2, %amsdu
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = getelementptr i8, ptr %4, i32 -356
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %5, align 1
  %and = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %mpdu_start = getelementptr i8, ptr %4, i32 -344
  %8 = ptrtoint ptr %mpdu_start to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %mpdu_start, align 1
  %10 = lshr i32 %9, 4
  %shr = and i32 %10, 15
  %rx_hdr_status = getelementptr i8, ptr %4, i32 -64
  %11 = call ptr @memcpy(ptr %first_hdr, ptr %rx_hdr_status, i32 64)
  %tobool9.not = icmp eq ptr %rx_hdr, null
  br i1 %tobool9.not, label %if.end.if.end11_crit_edge, label %if.then10

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %12 = call ptr @memcpy(ptr %rx_hdr, ptr %rx_hdr_status, i32 64)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  %13 = ptrtoint ptr %first_hdr to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %first_hdr, align 2
  %15 = and i16 %14, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %15)
  %cmp.i283 = icmp eq i16 %15, -30720
  br i1 %cmp.i283, label %if.then14, label %if.end11.if.end18_crit_edge

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %16 = and i16 %14, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %16)
  %cmp.i.i = icmp eq i16 %16, 3
  %retval.0.v.i = select i1 %cmp.i.i, i32 30, i32 24
  %retval.0.i = getelementptr i8, ptr %first_hdr, i32 %retval.0.v.i
  %17 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %retval.0.i, align 2
  %19 = and i8 %18, 127
  store i8 %19, ptr %retval.0.i, align 2
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end11.if.end18_crit_edge
  %prev.i = getelementptr inbounds %struct.anon.62, ptr %amsdu, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %prev.i, align 4
  %cmp.i284 = icmp eq ptr %21, %amsdu
  %spec.store.select.i285 = select i1 %cmp.i284, ptr null, ptr %21
  %data20 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i285, i32 0, i32 19
  %22 = ptrtoint ptr %data20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data20, align 4
  %24 = getelementptr i8, ptr %23, i32 -356
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %24, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %and24 = and i32 %27, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %and34 = and i32 %27, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr)
  %cmp.not = icmp ne i32 %shr, 7
  %28 = and i32 %27, 536870920
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %29 = icmp eq i32 %28, 0
  %not.brmerge = select i1 %cmp.not, i1 %tobool25.not, i1 false
  %spec.select281 = select i1 %not.brmerge, i1 %29, i1 false
  %flag = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 4
  %30 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flag, align 8
  %and51 = and i32 %31, -131132
  %32 = lshr exact i32 %and24, 25
  %33 = or i32 %32, %and51
  %34 = lshr exact i32 %and34, 28
  %35 = or i32 %34, %33
  store i32 %35, ptr %flag, align 8
  %tobool61.not = icmp eq ptr %err, null
  br i1 %tobool61.not, label %if.end18.if.end77_crit_edge, label %if.then62

if.end18.if.end77_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end77

if.then62:                                        ; preds = %if.end18
  %and39 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp ne i32 %and39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp ne i32 %and34, 0
  %and29 = and i32 %27, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp ne i32 %and29, 0
  %tobool25.not.not = xor i1 %tobool25.not, true
  %brmerge = select i1 %tobool25.not.not, i1 true, i1 %tobool35.not
  %brmerge316 = select i1 %brmerge, i1 true, i1 %tobool30.not
  %brmerge317 = select i1 %brmerge316, i1 true, i1 %tobool40.not
  br i1 %brmerge317, label %if.end77.sink.split, label %if.then62.if.end77_crit_edge

if.then62.if.end77_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end77

if.end77.sink.split:                              ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #18
  %and24.lobit = lshr exact i32 %and24, 30
  %36 = xor i32 %and24.lobit, 1
  %.mux.mux = select i1 %brmerge, i32 %36, i32 2
  %.mux.mux.mux = select i1 %brmerge316, i32 %.mux.mux, i32 3
  %37 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.mux.mux.mux, ptr %err, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.end77.sink.split, %if.then62.if.end77_crit_edge, %if.end18.if.end77_crit_edge
  br i1 %tobool4.not, label %if.end77.if.end82_crit_edge, label %if.then79

if.end77.if.end82_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end82

if.then79:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #18
  %38 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flag, align 8
  %or81 = or i32 %39, 131072
  store i32 %or81, ptr %flag, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.end77.if.end82_crit_edge
  br i1 %spec.select281, label %if.then84, label %if.end82.if.end104_crit_edge

if.end82.if.end104_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end104

if.then84:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #18
  %40 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flag, align 8
  %spec.select270.v = select i1 %tobool4.not, i32 10, i32 2, !prof !309
  %spec.select270 = or i32 %41, %spec.select270.v
  %. = select i1 %fill_crypt_header, i32 10485760, i32 16
  %or99 = or i32 %spec.select270, %.
  store i32 %or99, ptr %flag, align 8
  br label %if.end104

if.end104:                                        ; preds = %if.then84, %if.end82.if.end104_crit_edge
  %42 = ptrtoint ptr %amsdu to i32
  call void @__asan_load4_noabort(i32 %42)
  %msdu.0292 = load ptr, ptr %amsdu, align 4
  %cmp105.not293 = icmp eq ptr %msdu.0292, %amsdu
  br i1 %cmp105.not293, label %if.end104.cleanup_crit_edge, label %for.body.lr.ph

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end104
  %fill_crypt_header.not = xor i1 %fill_crypt_header, true
  %not.brmerge271 = and i1 %fill_crypt_header.not, %frag
  %brmerge272.not = select i1 %not.brmerge271, i1 %spec.select281, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %shr)
  %cmp115 = icmp eq i32 %shr, 6
  %or.cond = select i1 %brmerge272.not, i1 %cmp115, i1 false
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %amsdu, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr)
  %cmp135 = icmp eq i32 %shr, 4
  %or.cond276 = select i1 %not.brmerge271, i1 %cmp135, i1 false
  %decap_align_bytes.i73.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 45, i32 19
  %hw_ops.i.i74.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 45, i32 18
  %running_fw.i.i.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 47
  %43 = select i1 %spec.select281, i1 %tobool4.not, i1 false
  %brmerge278 = xor i1 %43, true
  %brmerge279 = or i1 %brmerge278, %fill_crypt_header
  %or.cond280 = select i1 %frag, i1 %cmp135, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %shr)
  %44 = icmp ult i32 %shr, 11
  %switch.maskindex337 = trunc i32 %shr to i16
  %switch.shifted338 = lshr i16 2007, %switch.maskindex337
  %45 = and i16 %switch.shifted338, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %switch.lobit339.not = icmp eq i16 %45, 0
  %switch.gep340 = getelementptr inbounds [11 x i32], ptr @switch.table.ath10k_htt_rx_h_mpdu.134, i32 0, i32 %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %shr)
  %46 = icmp ult i32 %shr, 11
  %switch.maskindex = trunc i32 %shr to i16
  %switch.shifted = lshr i16 1879, %switch.maskindex
  %47 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %switch.lobit.not = icmp eq i16 %47, 0
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.ath10k_htt_rx_h_mpdu, i32 0, i32 %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %shr)
  %48 = icmp ult i32 %shr, 11
  %switch.maskindex321 = trunc i32 %shr to i16
  %switch.shifted322 = lshr i16 2007, %switch.maskindex321
  %49 = and i16 %switch.shifted322, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %switch.lobit323.not = icmp eq i16 %49, 0
  %switch.gep324 = getelementptr inbounds [11 x i32], ptr @switch.table.ath10k_htt_rx_h_mpdu.132, i32 0, i32 %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %shr)
  %50 = icmp ult i32 %shr, 11
  %switch.maskindex329 = trunc i32 %shr to i16
  %switch.shifted330 = lshr i16 2007, %switch.maskindex329
  %51 = and i16 %switch.shifted330, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %switch.lobit331.not = icmp eq i16 %51, 0
  %switch.gep332 = getelementptr inbounds [11 x i32], ptr @switch.table.ath10k_htt_rx_h_mpdu.133, i32 0, i32 %shr
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %msdu.0296 = phi ptr [ %msdu.0292, %for.body.lr.ph ], [ %msdu.0, %for.inc.for.body_crit_edge ]
  br i1 %or.cond, label %if.then117, label %for.body.if.end120_crit_edge

for.body.if.end120_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end120

if.then117:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %call118 = tail call fastcc zeroext i1 @ath10k_htt_rx_h_frag_pn_check(ptr noundef %ar, ptr noundef %msdu.0296, i16 noundef zeroext %peer_id)
  br label %if.end120

if.end120:                                        ; preds = %if.then117, %for.body.if.end120_crit_edge
  %frag_pn_check.1.off0 = phi i1 [ %call118, %if.then117 ], [ true, %for.body.if.end120_crit_edge ]
  br i1 %frag, label %if.then122, label %if.end120.if.end125_crit_edge

if.end120.if.end125_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end125

if.then122:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #18
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %msdu.0296, i32 0, i32 19
  %52 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i, align 4
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %addr1.i, align 4
  %56 = and i32 %55, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.i.not.i = icmp eq i32 %56, 0
  br label %if.end125

if.end125:                                        ; preds = %if.then122, %if.end120.if.end125_crit_edge
  %multicast_check.1.off0 = phi i1 [ %tobool.i.not.i, %if.then122 ], [ true, %if.end120.if.end125_crit_edge ]
  %57 = select i1 %frag_pn_check.1.off0, i1 %multicast_check.1.off0, i1 false
  br i1 %57, label %if.end129, label %if.then128

if.then128:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #18
  %prev = getelementptr inbounds %struct.anon.41, ptr %msdu.0296, i32 0, i32 1
  %58 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev, align 4
  %60 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %qlen.i, align 4
  %sub.i = add i32 %61, -1
  store volatile i32 %sub.i, ptr %qlen.i, align 4
  %62 = ptrtoint ptr %msdu.0296 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %msdu.0296, align 8
  %64 = load ptr, ptr %prev, align 4
  store ptr null, ptr %prev, align 4
  store ptr null, ptr %msdu.0296, align 8
  %prev17.i = getelementptr inbounds %struct.anon.41, ptr %63, i32 0, i32 1
  %65 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %64, ptr %prev17.i, align 4
  %66 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %63, ptr %64, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef %msdu.0296, i32 noundef 1) #16
  br label %for.inc

if.end129:                                        ; preds = %if.end125
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %msdu.0296, i32 0, i32 19
  %67 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data.i.i, align 4
  %69 = getelementptr i8, ptr %68, i32 -356
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load i32, ptr %69, align 1
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #16
  %info1.i.i = getelementptr i8, ptr %68, i32 -324
  %73 = ptrtoint ptr %info1.i.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %info1.i.i, align 1
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #16
  %and18.i.i = and i32 %72, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool19.not.i.i = icmp eq i32 %and18.i.i, 0
  %76 = and i32 %75, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %77 = icmp eq i32 %76, 0
  %78 = and i32 %75, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %.not.i.i = icmp eq i32 %78, 0
  %or.cond.i.i = or i1 %77, %.not.i.i
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %msdu.0296, i32 0, i32 15
  %79 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %sh.diff.i = lshr i32 %72, 9
  %tr.sh.diff.i = trunc i32 %sh.diff.i to i16
  %80 = and i16 %tr.sh.diff.i, 512
  %.op2.i = xor i16 %80, 512
  %.op.i = select i1 %tobool19.not.i.i, i16 %.op2.i, i16 0
  %bf.value.i = select i1 %or.cond.i.i, i16 0, i16 %.op.i
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.value.i, %bf.clear.i
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  br i1 %or.cond276, label %if.then137, label %if.end129.if.end140_crit_edge

if.end129.if.end140_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end140

if.then137:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #18
  %81 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flag, align 8
  %and139 = and i32 %82, -9
  store i32 %and139, ptr %flag, align 8
  br label %if.end140

if.end140:                                        ; preds = %if.then137, %if.end129.if.end140_crit_edge
  %83 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data.i.i, align 4
  %info1.i = getelementptr i8, ptr %84, i32 -324
  %85 = ptrtoint ptr %info1.i to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %info1.i, align 1
  %87 = lshr i32 %86, 16
  %and.i = and i32 %87, 3
  %88 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %and.i, label %entry.unreachabledefault.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb3.i
  ]

sw.bb.i:                                          ; preds = %if.end140
  %89 = ptrtoint ptr %decap_align_bytes.i73.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %decap_align_bytes.i73.i, align 4
  %info0.i.i = getelementptr i8, ptr %84, i32 -296
  %91 = ptrtoint ptr %info0.i.i to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %info0.i.i, align 1
  %and.i.i = and i32 %92, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %93 = ptrtoint ptr %hw_ops.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hw_ops.i.i74.i, align 4
  %rx_desc_get_msdu_limit_error.i.i.i = getelementptr inbounds %struct.ath10k_hw_ops, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %rx_desc_get_msdu_limit_error.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rx_desc_get_msdu_limit_error.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %96, null
  br i1 %tobool.not.i.i.i, label %sw.bb.i.ath10k_rx_desc_msdu_limit_error.exit.i.i_crit_edge, label %if.then.i.i.i

sw.bb.i.ath10k_rx_desc_msdu_limit_error.exit.i.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_rx_desc_msdu_limit_error.exit.i.i

if.then.i.i.i:                                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i = getelementptr i8, ptr %84, i32 -360
  %call.i.i.i = tail call zeroext i1 %96(ptr noundef %add.ptr.i.i) #16
  br label %ath10k_rx_desc_msdu_limit_error.exit.i.i

ath10k_rx_desc_msdu_limit_error.exit.i.i:         ; preds = %if.then.i.i.i, %sw.bb.i.ath10k_rx_desc_msdu_limit_error.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i1 [ %call.i.i.i, %if.then.i.i.i ], [ false, %sw.bb.i.ath10k_rx_desc_msdu_limit_error.exit.i.i_crit_edge ]
  %lnot15.i.i = xor i1 %retval.0.i.i.i, true
  %spec.select.i.i = select i1 %tobool.not.i.i, i1 %lnot15.i.i, i1 false
  br i1 %spec.select.i.i, label %land.rhs20.i.i, label %if.end57.i.i

land.rhs20.i.i:                                   ; preds = %ath10k_rx_desc_msdu_limit_error.exit.i.i
  %.b268.i.i = load i1, ptr @ath10k_htt_rx_h_undecap_raw.__already_done, align 1
  br i1 %.b268.i.i, label %land.rhs20.i.i.ath10k_htt_rx_h_undecap.exit_crit_edge, label %if.then.i.i, !prof !309

land.rhs20.i.i.ath10k_htt_rx_h_undecap.exit_crit_edge: ; preds = %land.rhs20.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_h_undecap.exit

if.then.i.i:                                      ; preds = %land.rhs20.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ath10k_htt_rx_h_undecap_raw.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 1396, i32 noundef 9, ptr noundef null) #16
  br label %ath10k_htt_rx_h_undecap.exit

if.end57.i.i:                                     ; preds = %ath10k_rx_desc_msdu_limit_error.exit.i.i
  %97 = and i32 %92, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582912, i32 %97)
  %98 = icmp ne i32 %97, 12582912
  %99 = select i1 %98, i1 %lnot15.i.i, i1 false
  br i1 %99, label %land.rhs72.i.i, label %if.end120.i.i

land.rhs72.i.i:                                   ; preds = %if.end57.i.i
  %.b266267.i.i = load i1, ptr @ath10k_htt_rx_h_undecap_raw.__already_done.120, align 1
  br i1 %.b266267.i.i, label %land.rhs72.i.i.ath10k_htt_rx_h_undecap.exit_crit_edge, label %if.then83.i.i, !prof !309

land.rhs72.i.i.ath10k_htt_rx_h_undecap.exit_crit_edge: ; preds = %land.rhs72.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_h_undecap.exit

if.then83.i.i:                                    ; preds = %land.rhs72.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ath10k_htt_rx_h_undecap_raw.__already_done.120, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 1400, i32 noundef 9, ptr noundef null) #16
  br label %ath10k_htt_rx_h_undecap.exit

if.end120.i.i:                                    ; preds = %if.end57.i.i
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %msdu.0296, i32 0, i32 6
  %100 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %len.i.i, align 4
  %sub.i.i = add i32 %101, -4
  tail call void @skb_trim(ptr noundef %msdu.0296, i32 noundef %sub.i.i) #16
  br i1 %retval.0.i.i.i, label %if.then128.i.i, label %if.end120.i.i.if.end146.i.i_crit_edge, !prof !308

if.end120.i.i.if.end146.i.i_crit_edge:            ; preds = %if.end120.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end146.i.i

if.then128.i.i:                                   ; preds = %if.end120.i.i
  %102 = ptrtoint ptr %first_hdr to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %first_hdr, align 2
  %call129.i.i = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %103) #20
  %call130.i.i = tail call fastcc i32 @ath10k_htt_rx_crypto_param_len(ptr noundef %ar, i32 noundef %shr) #16
  %104 = and i16 %103, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %104)
  %cmp.i.i.i = icmp eq i16 %104, -30720
  br i1 %cmp.i.i.i, label %if.then133.i.i, label %if.then128.i.i.if.end136.i.i_crit_edge

if.then128.i.i.if.end136.i.i_crit_edge:           ; preds = %if.then128.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end136.i.i

if.then133.i.i:                                   ; preds = %if.then128.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %105 = and i16 %103, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %105)
  %cmp.i.i.i.i = icmp eq i16 %105, 3
  %retval.0.v.i.i.i = select i1 %cmp.i.i.i.i, i32 30, i32 24
  %retval.0.i271.i.i = getelementptr i8, ptr %first_hdr, i32 %retval.0.v.i.i.i
  %106 = ptrtoint ptr %retval.0.i271.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %retval.0.i271.i.i, align 2
  %108 = or i8 %107, -128
  store i8 %108, ptr %retval.0.i271.i.i, align 2
  br label %if.end136.i.i

if.end136.i.i:                                    ; preds = %if.then133.i.i, %if.then128.i.i.if.end136.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130.i.i)
  %tobool137.not.i.i = icmp eq i32 %call130.i.i, 0
  br i1 %tobool137.not.i.i, label %if.end136.i.i.if.end144.i.i_crit_edge, label %if.then138.i.i

if.end136.i.i.if.end144.i.i_crit_edge:            ; preds = %if.end136.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end144.i.i

if.then138.i.i:                                   ; preds = %if.end136.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call139.i.i = tail call ptr @skb_push(ptr noundef %msdu.0296, i32 noundef %call130.i.i) #16
  %sub140.i.i = add i32 %call129.i.i, -1
  %sub141.i.i = add i32 %90, -1
  %or142.i.i = or i32 %sub140.i.i, %sub141.i.i
  %add.i.i = add i32 %or142.i.i, 1
  %add.ptr143.i.i = getelementptr i8, ptr %first_hdr, i32 %add.i.i
  %109 = call ptr @memcpy(ptr %call139.i.i, ptr %add.ptr143.i.i, i32 %call130.i.i)
  br label %if.end144.i.i

if.end144.i.i:                                    ; preds = %if.then138.i.i, %if.end136.i.i.if.end144.i.i_crit_edge
  %call145.i.i = tail call ptr @skb_push(ptr noundef %msdu.0296, i32 noundef %call129.i.i) #16
  %110 = call ptr @memcpy(ptr %call145.i.i, ptr %first_hdr, i32 %call129.i.i)
  br label %if.end146.i.i

if.end146.i.i:                                    ; preds = %if.end144.i.i, %if.end120.i.i.if.end146.i.i_crit_edge
  br i1 %spec.select281, label %if.end149.i.i, label %if.end146.i.i.for.inc_crit_edge

if.end146.i.i.for.inc_crit_edge:                  ; preds = %if.end146.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end149.i.i:                                    ; preds = %if.end146.i.i
  %111 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %data.i.i, align 4
  %113 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %flag, align 8
  %and151.i.i = and i32 %114, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151.i.i)
  %tobool152.not.i.i = icmp eq i32 %and151.i.i, 0
  br i1 %tobool152.not.i.i, label %if.else.i.i, label %if.then153.i.i

if.then153.i.i:                                   ; preds = %if.end149.i.i
  %115 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %len.i.i, align 4
  %117 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %shr, label %sw.epilog.i.i.i [
    i32 10, label %if.then153.i.i.sw.bb3.i.i.i_crit_edge
    i32 0, label %if.then153.i.i.ath10k_htt_rx_crypto_mic_len.exit.i.i_crit_edge
    i32 1, label %if.then153.i.i.ath10k_htt_rx_crypto_mic_len.exit.i.i_crit_edge349
    i32 2, label %if.then153.i.i.ath10k_htt_rx_crypto_mic_len.exit.i.i_crit_edge350
    i32 4, label %if.then153.i.i.ath10k_htt_rx_crypto_mic_len.exit.i.i_crit_edge351
    i32 6, label %if.then153.i.i.ath10k_htt_rx_crypto_mic_len.exit.thread.i.i_crit_edge
    i32 8, label %sw.bb2.i.i.i
    i32 9, label %if.then153.i.i.sw.bb3.i.i.i_crit_edge352
  ]

if.then153.i.i.sw.bb3.i.i.i_crit_edge352:         ; preds = %if.then153.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3.i.i.i

if.then153.i.i.ath10k_htt_rx_crypto_mic_len.exit.thread.i.i_crit_edge: ; preds = %if.then153.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_crypto_mic_len.exit.thread.i.i

if.then153.i.i.ath10k_htt_rx_crypto_mic_len.exit.i.i_crit_edge351: ; preds = %if.then153.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_crypto_mic_len.exit.i.i

if.then153.i.i.ath10k_htt_rx_crypto_mic_len.exit.i.i_crit_edge350: ; preds = %if.then153.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_crypto_mic_len.exit.i.i

if.then153.i.i.ath10k_htt_rx_crypto_mic_len.exit.i.i_crit_edge349: ; preds = %if.then153.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_crypto_mic_len.exit.i.i

if.then153.i.i.ath10k_htt_rx_crypto_mic_len.exit.i.i_crit_edge: ; preds = %if.then153.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_crypto_mic_len.exit.i.i

if.then153.i.i.sw.bb3.i.i.i_crit_edge:            ; preds = %if.then153.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3.i.i.i

sw.bb2.i.i.i:                                     ; preds = %if.then153.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_crypto_mic_len.exit.thread.i.i

sw.bb3.i.i.i:                                     ; preds = %if.then153.i.i.sw.bb3.i.i.i_crit_edge, %if.then153.i.i.sw.bb3.i.i.i_crit_edge352
  br label %ath10k_htt_rx_crypto_mic_len.exit.i.i

sw.epilog.i.i.i:                                  ; preds = %if.then153.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.118, i32 noundef %shr) #16
  br label %ath10k_htt_rx_crypto_mic_len.exit.i.i

ath10k_htt_rx_crypto_mic_len.exit.thread.i.i:     ; preds = %sw.bb2.i.i.i, %if.then153.i.i.ath10k_htt_rx_crypto_mic_len.exit.thread.i.i_crit_edge
  %retval.0.i272.ph.neg.i.i = phi i32 [ -16, %sw.bb2.i.i.i ], [ -8, %if.then153.i.i.ath10k_htt_rx_crypto_mic_len.exit.thread.i.i_crit_edge ]
  %sub156295.i.i = add i32 %retval.0.i272.ph.neg.i.i, %116
  tail call void @skb_trim(ptr noundef %msdu.0296, i32 noundef %sub156295.i.i) #16
  %118 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %len.i.i, align 4
  br label %ath10k_htt_rx_crypto_icv_len.exit.i.i

ath10k_htt_rx_crypto_mic_len.exit.i.i:            ; preds = %sw.epilog.i.i.i, %sw.bb3.i.i.i, %if.then153.i.i.ath10k_htt_rx_crypto_mic_len.exit.i.i_crit_edge, %if.then153.i.i.ath10k_htt_rx_crypto_mic_len.exit.i.i_crit_edge349, %if.then153.i.i.ath10k_htt_rx_crypto_mic_len.exit.i.i_crit_edge350, %if.then153.i.i.ath10k_htt_rx_crypto_mic_len.exit.i.i_crit_edge351
  %retval.0.i272.neg.i.i = phi i32 [ 0, %sw.epilog.i.i.i ], [ -16, %sw.bb3.i.i.i ], [ 0, %if.then153.i.i.ath10k_htt_rx_crypto_mic_len.exit.i.i_crit_edge ], [ 0, %if.then153.i.i.ath10k_htt_rx_crypto_mic_len.exit.i.i_crit_edge349 ], [ 0, %if.then153.i.i.ath10k_htt_rx_crypto_mic_len.exit.i.i_crit_edge350 ], [ 0, %if.then153.i.i.ath10k_htt_rx_crypto_mic_len.exit.i.i_crit_edge351 ]
  %sub156.i.i = add i32 %retval.0.i272.neg.i.i, %116
  tail call void @skb_trim(ptr noundef %msdu.0296, i32 noundef %sub156.i.i) #16
  %120 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %len.i.i, align 4
  %122 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %shr, label %sw.epilog.i275.i.i [
    i32 7, label %ath10k_htt_rx_crypto_mic_len.exit.i.i.ath10k_htt_rx_crypto_icv_len.exit.i.i_crit_edge
    i32 6, label %ath10k_htt_rx_crypto_mic_len.exit.i.i.ath10k_htt_rx_crypto_icv_len.exit.i.i_crit_edge353
    i32 8, label %ath10k_htt_rx_crypto_mic_len.exit.i.i.ath10k_htt_rx_crypto_icv_len.exit.i.i_crit_edge354
    i32 9, label %ath10k_htt_rx_crypto_mic_len.exit.i.i.ath10k_htt_rx_crypto_icv_len.exit.i.i_crit_edge355
    i32 10, label %ath10k_htt_rx_crypto_mic_len.exit.i.i.ath10k_htt_rx_crypto_icv_len.exit.i.i_crit_edge356
    i32 0, label %ath10k_htt_rx_crypto_mic_len.exit.i.i.sw.bb1.i273.i.i_crit_edge
    i32 1, label %ath10k_htt_rx_crypto_mic_len.exit.i.i.sw.bb1.i273.i.i_crit_edge357
    i32 2, label %ath10k_htt_rx_crypto_mic_len.exit.i.i.sw.bb2.i274.i.i_crit_edge
    i32 4, label %ath10k_htt_rx_crypto_mic_len.exit.i.i.sw.bb2.i274.i.i_crit_edge358
  ]

ath10k_htt_rx_crypto_mic_len.exit.i.i.sw.bb2.i274.i.i_crit_edge358: ; preds = %ath10k_htt_rx_crypto_mic_len.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb2.i274.i.i

ath10k_htt_rx_crypto_mic_len.exit.i.i.sw.bb2.i274.i.i_crit_edge: ; preds = %ath10k_htt_rx_crypto_mic_len.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb2.i274.i.i

ath10k_htt_rx_crypto_mic_len.exit.i.i.sw.bb1.i273.i.i_crit_edge357: ; preds = %ath10k_htt_rx_crypto_mic_len.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1.i273.i.i

ath10k_htt_rx_crypto_mic_len.exit.i.i.sw.bb1.i273.i.i_crit_edge: ; preds = %ath10k_htt_rx_crypto_mic_len.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1.i273.i.i

ath10k_htt_rx_crypto_mic_len.exit.i.i.ath10k_htt_rx_crypto_icv_len.exit.i.i_crit_edge356: ; preds = %ath10k_htt_rx_crypto_mic_len.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_crypto_icv_len.exit.i.i

ath10k_htt_rx_crypto_mic_len.exit.i.i.ath10k_htt_rx_crypto_icv_len.exit.i.i_crit_edge355: ; preds = %ath10k_htt_rx_crypto_mic_len.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_crypto_icv_len.exit.i.i

ath10k_htt_rx_crypto_mic_len.exit.i.i.ath10k_htt_rx_crypto_icv_len.exit.i.i_crit_edge354: ; preds = %ath10k_htt_rx_crypto_mic_len.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_crypto_icv_len.exit.i.i

ath10k_htt_rx_crypto_mic_len.exit.i.i.ath10k_htt_rx_crypto_icv_len.exit.i.i_crit_edge353: ; preds = %ath10k_htt_rx_crypto_mic_len.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_crypto_icv_len.exit.i.i

ath10k_htt_rx_crypto_mic_len.exit.i.i.ath10k_htt_rx_crypto_icv_len.exit.i.i_crit_edge: ; preds = %ath10k_htt_rx_crypto_mic_len.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_crypto_icv_len.exit.i.i

sw.bb1.i273.i.i:                                  ; preds = %ath10k_htt_rx_crypto_mic_len.exit.i.i.sw.bb1.i273.i.i_crit_edge, %ath10k_htt_rx_crypto_mic_len.exit.i.i.sw.bb1.i273.i.i_crit_edge357
  br label %ath10k_htt_rx_crypto_icv_len.exit.i.i

sw.bb2.i274.i.i:                                  ; preds = %ath10k_htt_rx_crypto_mic_len.exit.i.i.sw.bb2.i274.i.i_crit_edge, %ath10k_htt_rx_crypto_mic_len.exit.i.i.sw.bb2.i274.i.i_crit_edge358
  br label %ath10k_htt_rx_crypto_icv_len.exit.i.i

sw.epilog.i275.i.i:                               ; preds = %ath10k_htt_rx_crypto_mic_len.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.118, i32 noundef %shr) #16
  br label %ath10k_htt_rx_crypto_icv_len.exit.i.i

ath10k_htt_rx_crypto_icv_len.exit.i.i:            ; preds = %sw.epilog.i275.i.i, %sw.bb2.i274.i.i, %sw.bb1.i273.i.i, %ath10k_htt_rx_crypto_mic_len.exit.i.i.ath10k_htt_rx_crypto_icv_len.exit.i.i_crit_edge, %ath10k_htt_rx_crypto_mic_len.exit.i.i.ath10k_htt_rx_crypto_icv_len.exit.i.i_crit_edge353, %ath10k_htt_rx_crypto_mic_len.exit.i.i.ath10k_htt_rx_crypto_icv_len.exit.i.i_crit_edge354, %ath10k_htt_rx_crypto_mic_len.exit.i.i.ath10k_htt_rx_crypto_icv_len.exit.i.i_crit_edge355, %ath10k_htt_rx_crypto_mic_len.exit.i.i.ath10k_htt_rx_crypto_icv_len.exit.i.i_crit_edge356, %ath10k_htt_rx_crypto_mic_len.exit.thread.i.i
  %123 = phi i32 [ %121, %sw.epilog.i275.i.i ], [ %121, %sw.bb2.i274.i.i ], [ %121, %sw.bb1.i273.i.i ], [ %121, %ath10k_htt_rx_crypto_mic_len.exit.i.i.ath10k_htt_rx_crypto_icv_len.exit.i.i_crit_edge ], [ %121, %ath10k_htt_rx_crypto_mic_len.exit.i.i.ath10k_htt_rx_crypto_icv_len.exit.i.i_crit_edge353 ], [ %121, %ath10k_htt_rx_crypto_mic_len.exit.i.i.ath10k_htt_rx_crypto_icv_len.exit.i.i_crit_edge354 ], [ %121, %ath10k_htt_rx_crypto_mic_len.exit.i.i.ath10k_htt_rx_crypto_icv_len.exit.i.i_crit_edge355 ], [ %121, %ath10k_htt_rx_crypto_mic_len.exit.i.i.ath10k_htt_rx_crypto_icv_len.exit.i.i_crit_edge356 ], [ %119, %ath10k_htt_rx_crypto_mic_len.exit.thread.i.i ]
  %retval.0.i276.neg.i.i = phi i32 [ 0, %sw.epilog.i275.i.i ], [ -4, %sw.bb2.i274.i.i ], [ -4, %sw.bb1.i273.i.i ], [ 0, %ath10k_htt_rx_crypto_mic_len.exit.i.i.ath10k_htt_rx_crypto_icv_len.exit.i.i_crit_edge ], [ 0, %ath10k_htt_rx_crypto_mic_len.exit.i.i.ath10k_htt_rx_crypto_icv_len.exit.i.i_crit_edge353 ], [ 0, %ath10k_htt_rx_crypto_mic_len.exit.i.i.ath10k_htt_rx_crypto_icv_len.exit.i.i_crit_edge354 ], [ 0, %ath10k_htt_rx_crypto_mic_len.exit.i.i.ath10k_htt_rx_crypto_icv_len.exit.i.i_crit_edge355 ], [ 0, %ath10k_htt_rx_crypto_mic_len.exit.i.i.ath10k_htt_rx_crypto_icv_len.exit.i.i_crit_edge356 ], [ 0, %ath10k_htt_rx_crypto_mic_len.exit.thread.i.i ]
  %sub159.i.i = add i32 %retval.0.i276.neg.i.i, %123
  br label %if.end176.sink.split.i.i

if.else.i.i:                                      ; preds = %if.end149.i.i
  %and161.i.i = and i32 %114, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161.i.i)
  %tobool162.not.i.i = icmp eq i32 %and161.i.i, 0
  br i1 %tobool162.not.i.i, label %if.else.i.i.if.end167.i.i_crit_edge, label %if.then163.i.i

if.else.i.i.if.end167.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end167.i.i

if.then163.i.i:                                   ; preds = %if.else.i.i
  %124 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %len.i.i, align 4
  %.not = xor i1 %46, true
  %brmerge342 = select i1 %.not, i1 true, i1 %switch.lobit.not
  br i1 %brmerge342, label %sw.epilog.i280.i.i, label %switch.lookup

sw.epilog.i280.i.i:                               ; preds = %if.then163.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.118, i32 noundef %shr) #16
  br label %ath10k_htt_rx_crypto_mic_len.exit282.i.i

switch.lookup:                                    ; preds = %if.then163.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %126 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %126)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ath10k_htt_rx_crypto_mic_len.exit282.i.i

ath10k_htt_rx_crypto_mic_len.exit282.i.i:         ; preds = %switch.lookup, %sw.epilog.i280.i.i
  %retval.0.i281.neg.i.i = phi i32 [ 0, %sw.epilog.i280.i.i ], [ %switch.load, %switch.lookup ]
  %sub166.i.i = add i32 %retval.0.i281.neg.i.i, %125
  tail call void @skb_trim(ptr noundef %msdu.0296, i32 noundef %sub166.i.i) #16
  br label %if.end167.i.i

if.end167.i.i:                                    ; preds = %ath10k_htt_rx_crypto_mic_len.exit282.i.i, %if.else.i.i.if.end167.i.i_crit_edge
  %127 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %flag, align 8
  %and169.i.i = and i32 %128, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169.i.i)
  %tobool170.not.i.i = icmp eq i32 %and169.i.i, 0
  br i1 %tobool170.not.i.i, label %if.end167.i.i.if.end176.i.i_crit_edge, label %if.then171.i.i

if.end167.i.i.if.end176.i.i_crit_edge:            ; preds = %if.end167.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end176.i.i

if.then171.i.i:                                   ; preds = %if.end167.i.i
  %129 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %len.i.i, align 4
  %.not343 = xor i1 %48, true
  %brmerge344 = select i1 %.not343, i1 true, i1 %switch.lobit323.not
  br i1 %brmerge344, label %sw.epilog.i285.i.i, label %switch.lookup320

sw.epilog.i285.i.i:                               ; preds = %if.then171.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.118, i32 noundef %shr) #16
  br label %ath10k_htt_rx_crypto_icv_len.exit287.i.i

switch.lookup320:                                 ; preds = %if.then171.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %131 = ptrtoint ptr %switch.gep324 to i32
  call void @__asan_load4_noabort(i32 %131)
  %switch.load325 = load i32, ptr %switch.gep324, align 4
  br label %ath10k_htt_rx_crypto_icv_len.exit287.i.i

ath10k_htt_rx_crypto_icv_len.exit287.i.i:         ; preds = %switch.lookup320, %sw.epilog.i285.i.i
  %retval.0.i286.neg.i.i = phi i32 [ 0, %sw.epilog.i285.i.i ], [ %switch.load325, %switch.lookup320 ]
  %sub174.i.i = add i32 %retval.0.i286.neg.i.i, %130
  br label %if.end176.sink.split.i.i

if.end176.sink.split.i.i:                         ; preds = %ath10k_htt_rx_crypto_icv_len.exit287.i.i, %ath10k_htt_rx_crypto_icv_len.exit.i.i
  %sub174.sink.i.i = phi i32 [ %sub174.i.i, %ath10k_htt_rx_crypto_icv_len.exit287.i.i ], [ %sub159.i.i, %ath10k_htt_rx_crypto_icv_len.exit.i.i ]
  tail call void @skb_trim(ptr noundef %msdu.0296, i32 noundef %sub174.sink.i.i) #16
  br label %if.end176.i.i

if.end176.i.i:                                    ; preds = %if.end176.sink.split.i.i, %if.end167.i.i.if.end176.i.i_crit_edge
  %132 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %flag, align 8
  %and178.i.i = and i32 %133, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178.i.i)
  %tobool179.not.i.i = icmp eq i32 %and178.i.i, 0
  br i1 %tobool179.not.i.i, label %if.end176.i.i.if.end188.i.i_crit_edge, label %land.lhs.true180.i.i

if.end176.i.i.if.end188.i.i_crit_edge:            ; preds = %if.end176.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end188.i.i

land.lhs.true180.i.i:                             ; preds = %if.end176.i.i
  %134 = ptrtoint ptr %112 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %112, align 2
  %136 = and i16 %135, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %136)
  %cmp.i288.not.i.i = icmp eq i16 %136, 0
  %or.cond.i.i288 = and i1 %cmp135, %cmp.i288.not.i.i
  br i1 %or.cond.i.i288, label %if.then185.i.i, label %land.lhs.true180.i.i.if.end188.i.i_crit_edge

land.lhs.true180.i.i.if.end188.i.i_crit_edge:     ; preds = %land.lhs.true180.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end188.i.i

if.then185.i.i:                                   ; preds = %land.lhs.true180.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %137 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %len.i.i, align 4
  %sub187.i.i = add i32 %138, -8
  tail call void @skb_trim(ptr noundef %msdu.0296, i32 noundef %sub187.i.i) #16
  br label %if.end188.i.i

if.end188.i.i:                                    ; preds = %if.then185.i.i, %land.lhs.true180.i.i.if.end188.i.i_crit_edge, %if.end176.i.i.if.end188.i.i_crit_edge
  %139 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %flag, align 8
  %and190.i.i = and i32 %140, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190.i.i)
  %tobool191.not.i.i = icmp eq i32 %and190.i.i, 0
  br i1 %tobool191.not.i.i, label %if.end188.i.i.ath10k_htt_rx_h_undecap.exit_crit_edge, label %if.then192.i.i

if.end188.i.i.ath10k_htt_rx_h_undecap.exit_crit_edge: ; preds = %if.end188.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_h_undecap.exit

if.then192.i.i:                                   ; preds = %if.end188.i.i
  %141 = ptrtoint ptr %112 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %112, align 2
  %call194.i.i = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %142) #20
  %.not345 = xor i1 %50, true
  %brmerge346 = select i1 %.not345, i1 true, i1 %switch.lobit331.not
  br i1 %brmerge346, label %sw.epilog.i292.i.i, label %switch.lookup328

sw.epilog.i292.i.i:                               ; preds = %if.then192.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.118, i32 noundef %shr) #16
  br label %ath10k_htt_rx_crypto_param_len.exit.i.i

switch.lookup328:                                 ; preds = %if.then192.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %143 = ptrtoint ptr %switch.gep332 to i32
  call void @__asan_load4_noabort(i32 %143)
  %switch.load333 = load i32, ptr %switch.gep332, align 4
  br label %ath10k_htt_rx_crypto_param_len.exit.i.i

ath10k_htt_rx_crypto_param_len.exit.i.i:          ; preds = %switch.lookup328, %sw.epilog.i292.i.i
  %retval.0.i293.i.i = phi i32 [ 0, %sw.epilog.i292.i.i ], [ %switch.load333, %switch.lookup328 ]
  %144 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %data.i.i, align 4
  %add.ptr197.i.i = getelementptr i8, ptr %145, i32 %retval.0.i293.i.i
  %146 = call ptr @memmove(ptr %add.ptr197.i.i, ptr %145, i32 %call194.i.i)
  %call199.i.i = tail call ptr @skb_pull(ptr noundef %msdu.0296, i32 noundef %retval.0.i293.i.i) #16
  br label %ath10k_htt_rx_h_undecap.exit

sw.bb1.i:                                         ; preds = %if.end140
  %147 = ptrtoint ptr %decap_align_bytes.i73.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %decap_align_bytes.i73.i, align 4
  %149 = ptrtoint ptr %hw_ops.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %hw_ops.i.i74.i, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %150, align 4
  %tobool.not.i.i23.i = icmp eq ptr %152, null
  br i1 %tobool.not.i.i23.i, label %sw.bb1.i.ath10k_rx_desc_get_l3_pad_bytes.exit.i.i_crit_edge, label %if.then.i.i26.i

sw.bb1.i.ath10k_rx_desc_get_l3_pad_bytes.exit.i.i_crit_edge: ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_rx_desc_get_l3_pad_bytes.exit.i.i

if.then.i.i26.i:                                  ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i24.i = getelementptr i8, ptr %84, i32 -360
  %call.i.i25.i = tail call i32 %152(ptr noundef %add.ptr.i24.i) #16
  br label %ath10k_rx_desc_get_l3_pad_bytes.exit.i.i

ath10k_rx_desc_get_l3_pad_bytes.exit.i.i:         ; preds = %if.then.i.i26.i, %sw.bb1.i.ath10k_rx_desc_get_l3_pad_bytes.exit.i.i_crit_edge
  %retval.0.i.i27.i = phi i32 [ %call.i.i25.i, %if.then.i.i26.i ], [ 0, %sw.bb1.i.ath10k_rx_desc_get_l3_pad_bytes.exit.i.i_crit_edge ]
  %call2.i.i = tail call ptr @skb_put(ptr noundef %msdu.0296, i32 noundef %retval.0.i.i27.i) #16
  %153 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %data.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %154, i32 %retval.0.i.i27.i
  %155 = ptrtoint ptr %add.ptr4.i.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %add.ptr4.i.i, align 2
  %call.i44.i.i = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %156) #20
  %157 = ptrtoint ptr %running_fw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %running_fw.i.i.i, align 64
  %fw_features.i.i.i = getelementptr inbounds %struct.ath10k_fw_components, ptr %158, i32 0, i32 6, i32 2
  %159 = ptrtoint ptr %fw_features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile i32, ptr %fw_features.i.i.i, align 4
  %161 = and i32 %160, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool.not.i45.i.i = icmp eq i32 %161, 0
  %sub.i.i.i = add i32 %call.i44.i.i, -1
  %or.i.i.i = or i32 %sub.i.i.i, 3
  %add.i.i.i = add i32 %or.i.i.i, 1
  %len.0.i.i.i = select i1 %tobool.not.i45.i.i, i32 %add.i.i.i, i32 %call.i44.i.i
  %162 = and i16 %156, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %162)
  %cmp.i.not.i.i.i = icmp eq i16 %162, 0
  %addr3.i.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr4.i.i, i32 0, i32 4
  %addr1.i.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr4.i.i, i32 0, i32 2
  %retval.0.i46.i.i = select i1 %cmp.i.not.i.i.i, ptr %addr1.i.i.i, ptr %addr3.i.i.i
  %163 = ptrtoint ptr %retval.0.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %retval.0.i46.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %retval.0.i46.i.i, i32 4
  %165 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %add.ptr.i.i.i, align 2
  %167 = and i16 %156, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %167)
  %cmp.i.i.i28.i = icmp eq i16 %167, 3
  br i1 %cmp.i.i.i28.i, label %if.then.i47.i.i, label %if.end.i.i.i

if.then.i47.i.i:                                  ; preds = %ath10k_rx_desc_get_l3_pad_bytes.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %addr4.i.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr4.i.i, i32 0, i32 6
  br label %ieee80211_get_SA.exit.i.i

if.end.i.i.i:                                     ; preds = %ath10k_rx_desc_get_l3_pad_bytes.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %168 = and i16 %156, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %168)
  %cmp.i11.not.i.i.i = icmp eq i16 %168, 0
  %addr2.i.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr4.i.i, i32 0, i32 3
  %spec.select.i29.i = select i1 %cmp.i11.not.i.i.i, ptr %addr2.i.i.i, ptr %addr3.i.i.i
  br label %ieee80211_get_SA.exit.i.i

ieee80211_get_SA.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then.i47.i.i
  %retval.0.i49.i.i = phi ptr [ %addr4.i.i.i, %if.then.i47.i.i ], [ %spec.select.i29.i, %if.end.i.i.i ]
  %169 = ptrtoint ptr %retval.0.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %retval.0.i49.i.i, align 4
  %add.ptr.i50.i.i = getelementptr i8, ptr %retval.0.i49.i.i, i32 4
  %171 = ptrtoint ptr %add.ptr.i50.i.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %add.ptr.i50.i.i, align 2
  %call9.i.i = tail call ptr @skb_pull(ptr noundef %msdu.0296, i32 noundef %len.0.i.i.i) #16
  %173 = ptrtoint ptr %first_hdr to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %first_hdr, align 2
  %call10.i.i = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %174) #20
  %175 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %flag, align 8
  %and.i31.i = and i32 %176, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i32.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i32.i, label %if.then.i33.i, label %ieee80211_get_SA.exit.i.i.if.end.i.i_crit_edge

ieee80211_get_SA.exit.i.i.if.end.i.i_crit_edge:   ; preds = %ieee80211_get_SA.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.then.i33.i:                                    ; preds = %ieee80211_get_SA.exit.i.i
  %177 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %shr, label %sw.epilog.i.i36.i [
    i32 7, label %ath10k_htt_rx_crypto_param_len.exit.thread.i.i
    i32 0, label %if.then.i33.i.ath10k_htt_rx_crypto_param_len.exit.i39.i_crit_edge
    i32 1, label %if.then.i33.i.ath10k_htt_rx_crypto_param_len.exit.i39.i_crit_edge359
    i32 2, label %if.then.i33.i.sw.bb2.i.i34.i_crit_edge
    i32 4, label %if.then.i33.i.sw.bb2.i.i34.i_crit_edge360
    i32 6, label %ath10k_htt_rx_crypto_param_len.exit.thread89.i.i
    i32 8, label %ath10k_htt_rx_crypto_param_len.exit.thread99.i.i
    i32 9, label %if.then.i33.i.sw.bb5.i.i35.i_crit_edge
    i32 10, label %if.then.i33.i.sw.bb5.i.i35.i_crit_edge361
  ]

if.then.i33.i.sw.bb5.i.i35.i_crit_edge361:        ; preds = %if.then.i33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb5.i.i35.i

if.then.i33.i.sw.bb5.i.i35.i_crit_edge:           ; preds = %if.then.i33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb5.i.i35.i

if.then.i33.i.sw.bb2.i.i34.i_crit_edge360:        ; preds = %if.then.i33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb2.i.i34.i

if.then.i33.i.sw.bb2.i.i34.i_crit_edge:           ; preds = %if.then.i33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb2.i.i34.i

if.then.i33.i.ath10k_htt_rx_crypto_param_len.exit.i39.i_crit_edge359: ; preds = %if.then.i33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_crypto_param_len.exit.i39.i

if.then.i33.i.ath10k_htt_rx_crypto_param_len.exit.i39.i_crit_edge: ; preds = %if.then.i33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_crypto_param_len.exit.i39.i

ath10k_htt_rx_crypto_param_len.exit.thread.i.i:   ; preds = %if.then.i33.i
  call void @__sanitizer_cov_trace_pc() #18
  %call1281.i.i = tail call ptr @skb_push(ptr noundef %msdu.0296, i32 noundef 0) #16
  %sub82.i.i = add i32 %call10.i.i, -1
  %sub1383.i.i = add i32 %148, -1
  %or84.i.i = or i32 %sub82.i.i, %sub1383.i.i
  %add85.i.i = add i32 %or84.i.i, 1
  %add.ptr1486.i.i = getelementptr i8, ptr %first_hdr, i32 %add85.i.i
  br label %ath10k_htt_rx_crypto_param_len.exit60.i.i

sw.bb2.i.i34.i:                                   ; preds = %if.then.i33.i.sw.bb2.i.i34.i_crit_edge, %if.then.i33.i.sw.bb2.i.i34.i_crit_edge360
  br label %ath10k_htt_rx_crypto_param_len.exit.i39.i

ath10k_htt_rx_crypto_param_len.exit.thread89.i.i: ; preds = %if.then.i33.i
  call void @__sanitizer_cov_trace_pc() #18
  %call1291.i.i = tail call ptr @skb_push(ptr noundef %msdu.0296, i32 noundef 8) #16
  %sub92.i.i = add i32 %call10.i.i, -1
  %sub1393.i.i = add i32 %148, -1
  %or94.i.i = or i32 %sub92.i.i, %sub1393.i.i
  %add95.i.i = add i32 %or94.i.i, 1
  %add.ptr1496.i.i = getelementptr i8, ptr %first_hdr, i32 %add95.i.i
  br label %sw.bb3.i55.i.i

ath10k_htt_rx_crypto_param_len.exit.thread99.i.i: ; preds = %if.then.i33.i
  call void @__sanitizer_cov_trace_pc() #18
  %call12101.i.i = tail call ptr @skb_push(ptr noundef %msdu.0296, i32 noundef 8) #16
  %sub102.i.i = add i32 %call10.i.i, -1
  %sub13103.i.i = add i32 %148, -1
  %or104.i.i = or i32 %sub102.i.i, %sub13103.i.i
  %add105.i.i = add i32 %or104.i.i, 1
  %add.ptr14106.i.i = getelementptr i8, ptr %first_hdr, i32 %add105.i.i
  br label %sw.bb4.i56.i.i

sw.bb5.i.i35.i:                                   ; preds = %if.then.i33.i.sw.bb5.i.i35.i_crit_edge, %if.then.i33.i.sw.bb5.i.i35.i_crit_edge361
  br label %ath10k_htt_rx_crypto_param_len.exit.i39.i

sw.epilog.i.i36.i:                                ; preds = %if.then.i33.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.118, i32 noundef %shr) #16
  br label %ath10k_htt_rx_crypto_param_len.exit.i39.i

ath10k_htt_rx_crypto_param_len.exit.i39.i:        ; preds = %sw.epilog.i.i36.i, %sw.bb5.i.i35.i, %sw.bb2.i.i34.i, %if.then.i33.i.ath10k_htt_rx_crypto_param_len.exit.i39.i_crit_edge, %if.then.i33.i.ath10k_htt_rx_crypto_param_len.exit.i39.i_crit_edge359
  %retval.0.i52.i.i = phi i32 [ 0, %sw.epilog.i.i36.i ], [ 8, %sw.bb5.i.i35.i ], [ 8, %sw.bb2.i.i34.i ], [ 4, %if.then.i33.i.ath10k_htt_rx_crypto_param_len.exit.i39.i_crit_edge ], [ 4, %if.then.i33.i.ath10k_htt_rx_crypto_param_len.exit.i39.i_crit_edge359 ]
  %call12.i.i = tail call ptr @skb_push(ptr noundef %msdu.0296, i32 noundef %retval.0.i52.i.i) #16
  %sub.i37.i = add i32 %call10.i.i, -1
  %sub13.i.i = add i32 %148, -1
  %or.i.i = or i32 %sub.i37.i, %sub13.i.i
  %add.i38.i = add i32 %or.i.i, 1
  %add.ptr14.i.i = getelementptr i8, ptr %first_hdr, i32 %add.i38.i
  %178 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %178, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %shr, label %sw.epilog.i58.i.i [
    i32 7, label %ath10k_htt_rx_crypto_param_len.exit.i39.i.ath10k_htt_rx_crypto_param_len.exit60.i.i_crit_edge
    i32 0, label %ath10k_htt_rx_crypto_param_len.exit.i39.i.sw.bb1.i53.i.i_crit_edge
    i32 1, label %ath10k_htt_rx_crypto_param_len.exit.i39.i.sw.bb1.i53.i.i_crit_edge362
    i32 2, label %ath10k_htt_rx_crypto_param_len.exit.i39.i.sw.bb2.i54.i.i_crit_edge
    i32 4, label %ath10k_htt_rx_crypto_param_len.exit.i39.i.sw.bb2.i54.i.i_crit_edge363
    i32 6, label %ath10k_htt_rx_crypto_param_len.exit.i39.i.sw.bb3.i55.i.i_crit_edge
    i32 8, label %ath10k_htt_rx_crypto_param_len.exit.i39.i.sw.bb4.i56.i.i_crit_edge
    i32 9, label %ath10k_htt_rx_crypto_param_len.exit.i39.i.sw.bb5.i57.i.i_crit_edge
    i32 10, label %ath10k_htt_rx_crypto_param_len.exit.i39.i.sw.bb5.i57.i.i_crit_edge364
  ]

ath10k_htt_rx_crypto_param_len.exit.i39.i.sw.bb5.i57.i.i_crit_edge364: ; preds = %ath10k_htt_rx_crypto_param_len.exit.i39.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb5.i57.i.i

ath10k_htt_rx_crypto_param_len.exit.i39.i.sw.bb5.i57.i.i_crit_edge: ; preds = %ath10k_htt_rx_crypto_param_len.exit.i39.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb5.i57.i.i

ath10k_htt_rx_crypto_param_len.exit.i39.i.sw.bb4.i56.i.i_crit_edge: ; preds = %ath10k_htt_rx_crypto_param_len.exit.i39.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb4.i56.i.i

ath10k_htt_rx_crypto_param_len.exit.i39.i.sw.bb3.i55.i.i_crit_edge: ; preds = %ath10k_htt_rx_crypto_param_len.exit.i39.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3.i55.i.i

ath10k_htt_rx_crypto_param_len.exit.i39.i.sw.bb2.i54.i.i_crit_edge363: ; preds = %ath10k_htt_rx_crypto_param_len.exit.i39.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb2.i54.i.i

ath10k_htt_rx_crypto_param_len.exit.i39.i.sw.bb2.i54.i.i_crit_edge: ; preds = %ath10k_htt_rx_crypto_param_len.exit.i39.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb2.i54.i.i

ath10k_htt_rx_crypto_param_len.exit.i39.i.sw.bb1.i53.i.i_crit_edge362: ; preds = %ath10k_htt_rx_crypto_param_len.exit.i39.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1.i53.i.i

ath10k_htt_rx_crypto_param_len.exit.i39.i.sw.bb1.i53.i.i_crit_edge: ; preds = %ath10k_htt_rx_crypto_param_len.exit.i39.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1.i53.i.i

ath10k_htt_rx_crypto_param_len.exit.i39.i.ath10k_htt_rx_crypto_param_len.exit60.i.i_crit_edge: ; preds = %ath10k_htt_rx_crypto_param_len.exit.i39.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_crypto_param_len.exit60.i.i

sw.bb1.i53.i.i:                                   ; preds = %ath10k_htt_rx_crypto_param_len.exit.i39.i.sw.bb1.i53.i.i_crit_edge, %ath10k_htt_rx_crypto_param_len.exit.i39.i.sw.bb1.i53.i.i_crit_edge362
  br label %ath10k_htt_rx_crypto_param_len.exit60.i.i

sw.bb2.i54.i.i:                                   ; preds = %ath10k_htt_rx_crypto_param_len.exit.i39.i.sw.bb2.i54.i.i_crit_edge, %ath10k_htt_rx_crypto_param_len.exit.i39.i.sw.bb2.i54.i.i_crit_edge363
  br label %ath10k_htt_rx_crypto_param_len.exit60.i.i

sw.bb3.i55.i.i:                                   ; preds = %ath10k_htt_rx_crypto_param_len.exit.i39.i.sw.bb3.i55.i.i_crit_edge, %ath10k_htt_rx_crypto_param_len.exit.thread89.i.i
  %add.ptr1498.i.i = phi ptr [ %add.ptr1496.i.i, %ath10k_htt_rx_crypto_param_len.exit.thread89.i.i ], [ %add.ptr14.i.i, %ath10k_htt_rx_crypto_param_len.exit.i39.i.sw.bb3.i55.i.i_crit_edge ]
  %call1297.i.i = phi ptr [ %call1291.i.i, %ath10k_htt_rx_crypto_param_len.exit.thread89.i.i ], [ %call12.i.i, %ath10k_htt_rx_crypto_param_len.exit.i39.i.sw.bb3.i55.i.i_crit_edge ]
  br label %ath10k_htt_rx_crypto_param_len.exit60.i.i

sw.bb4.i56.i.i:                                   ; preds = %ath10k_htt_rx_crypto_param_len.exit.i39.i.sw.bb4.i56.i.i_crit_edge, %ath10k_htt_rx_crypto_param_len.exit.thread99.i.i
  %add.ptr14108.i.i = phi ptr [ %add.ptr14106.i.i, %ath10k_htt_rx_crypto_param_len.exit.thread99.i.i ], [ %add.ptr14.i.i, %ath10k_htt_rx_crypto_param_len.exit.i39.i.sw.bb4.i56.i.i_crit_edge ]
  %call12107.i.i = phi ptr [ %call12101.i.i, %ath10k_htt_rx_crypto_param_len.exit.thread99.i.i ], [ %call12.i.i, %ath10k_htt_rx_crypto_param_len.exit.i39.i.sw.bb4.i56.i.i_crit_edge ]
  br label %ath10k_htt_rx_crypto_param_len.exit60.i.i

sw.bb5.i57.i.i:                                   ; preds = %ath10k_htt_rx_crypto_param_len.exit.i39.i.sw.bb5.i57.i.i_crit_edge, %ath10k_htt_rx_crypto_param_len.exit.i39.i.sw.bb5.i57.i.i_crit_edge364
  br label %ath10k_htt_rx_crypto_param_len.exit60.i.i

sw.epilog.i58.i.i:                                ; preds = %ath10k_htt_rx_crypto_param_len.exit.i39.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.118, i32 noundef %shr) #16
  br label %ath10k_htt_rx_crypto_param_len.exit60.i.i

ath10k_htt_rx_crypto_param_len.exit60.i.i:        ; preds = %sw.epilog.i58.i.i, %sw.bb5.i57.i.i, %sw.bb4.i56.i.i, %sw.bb3.i55.i.i, %sw.bb2.i54.i.i, %sw.bb1.i53.i.i, %ath10k_htt_rx_crypto_param_len.exit.i39.i.ath10k_htt_rx_crypto_param_len.exit60.i.i_crit_edge, %ath10k_htt_rx_crypto_param_len.exit.thread.i.i
  %add.ptr1488.i.i = phi ptr [ %add.ptr14.i.i, %sw.epilog.i58.i.i ], [ %add.ptr14.i.i, %sw.bb5.i57.i.i ], [ %add.ptr14108.i.i, %sw.bb4.i56.i.i ], [ %add.ptr1498.i.i, %sw.bb3.i55.i.i ], [ %add.ptr14.i.i, %sw.bb2.i54.i.i ], [ %add.ptr14.i.i, %sw.bb1.i53.i.i ], [ %add.ptr14.i.i, %ath10k_htt_rx_crypto_param_len.exit.i39.i.ath10k_htt_rx_crypto_param_len.exit60.i.i_crit_edge ], [ %add.ptr1486.i.i, %ath10k_htt_rx_crypto_param_len.exit.thread.i.i ]
  %call1287.i.i = phi ptr [ %call12.i.i, %sw.epilog.i58.i.i ], [ %call12.i.i, %sw.bb5.i57.i.i ], [ %call12107.i.i, %sw.bb4.i56.i.i ], [ %call1297.i.i, %sw.bb3.i55.i.i ], [ %call12.i.i, %sw.bb2.i54.i.i ], [ %call12.i.i, %sw.bb1.i53.i.i ], [ %call12.i.i, %ath10k_htt_rx_crypto_param_len.exit.i39.i.ath10k_htt_rx_crypto_param_len.exit60.i.i_crit_edge ], [ %call1281.i.i, %ath10k_htt_rx_crypto_param_len.exit.thread.i.i ]
  %retval.0.i59.i.i = phi i32 [ 0, %sw.epilog.i58.i.i ], [ 8, %sw.bb5.i57.i.i ], [ 8, %sw.bb4.i56.i.i ], [ 8, %sw.bb3.i55.i.i ], [ 8, %sw.bb2.i54.i.i ], [ 4, %sw.bb1.i53.i.i ], [ 0, %ath10k_htt_rx_crypto_param_len.exit.i39.i.ath10k_htt_rx_crypto_param_len.exit60.i.i_crit_edge ], [ 0, %ath10k_htt_rx_crypto_param_len.exit.thread.i.i ]
  %179 = call ptr @memcpy(ptr %call1287.i.i, ptr %add.ptr1488.i.i, i32 %retval.0.i59.i.i)
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %ath10k_htt_rx_crypto_param_len.exit60.i.i, %ieee80211_get_SA.exit.i.i.if.end.i.i_crit_edge
  %call16.i.i = tail call ptr @skb_push(ptr noundef %msdu.0296, i32 noundef %call10.i.i) #16
  %180 = call ptr @memcpy(ptr %call16.i.i, ptr %first_hdr, i32 %call10.i.i)
  %181 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %data.i.i, align 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %182, align 2
  %185 = and i16 %184, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %185)
  %cmp.i.not.i61.i.i = icmp eq i16 %185, 0
  %addr3.i62.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %182, i32 0, i32 4
  %addr1.i63.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %182, i32 0, i32 2
  %retval.0.i64.i.i = select i1 %cmp.i.not.i61.i.i, ptr %addr1.i63.i.i, ptr %addr3.i62.i.i
  %186 = ptrtoint ptr %retval.0.i64.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %164, ptr %retval.0.i64.i.i, align 4
  %add.ptr1.i66.i.i = getelementptr i8, ptr %retval.0.i64.i.i, i32 4
  %187 = ptrtoint ptr %add.ptr1.i66.i.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 %166, ptr %add.ptr1.i66.i.i, align 2
  %188 = ptrtoint ptr %182 to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %182, align 2
  %190 = and i16 %189, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %190)
  %cmp.i.i67.i.i = icmp eq i16 %190, 3
  br i1 %cmp.i.i67.i.i, label %if.then.i69.i.i, label %if.end.i71.i.i

if.then.i69.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %addr4.i68.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %182, i32 0, i32 6
  br label %ath10k_htt_rx_h_undecap_nwifi.exit.i

if.end.i71.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %191 = and i16 %189, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %191)
  %cmp.i11.not.i70.i.i = icmp eq i16 %191, 0
  %addr2.i74.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %182, i32 0, i32 3
  %spec.select109.i.i = select i1 %cmp.i11.not.i70.i.i, ptr %addr2.i74.i.i, ptr %addr3.i62.i.i
  br label %ath10k_htt_rx_h_undecap_nwifi.exit.i

ath10k_htt_rx_h_undecap_nwifi.exit.i:             ; preds = %if.end.i71.i.i, %if.then.i69.i.i
  %retval.0.i76.i.i = phi ptr [ %addr4.i68.i.i, %if.then.i69.i.i ], [ %spec.select109.i.i, %if.end.i71.i.i ]
  %192 = ptrtoint ptr %retval.0.i76.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %170, ptr %retval.0.i76.i.i, align 4
  %add.ptr1.i79.i.i = getelementptr i8, ptr %retval.0.i76.i.i, i32 4
  %193 = ptrtoint ptr %add.ptr1.i79.i.i to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 %172, ptr %add.ptr1.i79.i.i, align 2
  br label %ath10k_htt_rx_h_undecap.exit

sw.bb2.i:                                         ; preds = %if.end140
  %194 = ptrtoint ptr %decap_align_bytes.i73.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %decap_align_bytes.i73.i, align 4
  %rx_hdr_status.i.i.i = getelementptr i8, ptr %84, i32 -64
  %info0.i.i.i = getelementptr i8, ptr %84, i32 -296
  %196 = ptrtoint ptr %info0.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %196, i32 4)
  %197 = load i32, ptr %info0.i.i.i, align 1
  %and.i.i.i = and i32 %197, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i41.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i41.i, label %sw.bb2.i.ath10k_htt_rx_h_find_rfc1042.exit.i.i_crit_edge, label %if.then.i.i43.i

sw.bb2.i.ath10k_htt_rx_h_find_rfc1042.exit.i.i_crit_edge: ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_h_find_rfc1042.exit.i.i

if.then.i.i43.i:                                  ; preds = %sw.bb2.i
  %198 = ptrtoint ptr %rx_hdr_status.i.i.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %rx_hdr_status.i.i.i, align 2
  %call.i.i42.i = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %199) #20
  %.not347 = xor i1 %44, true
  %brmerge348 = select i1 %.not347, i1 true, i1 %switch.lobit339.not
  br i1 %brmerge348, label %sw.epilog.i.i.i.i, label %switch.lookup336

sw.epilog.i.i.i.i:                                ; preds = %if.then.i.i43.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.118, i32 noundef %shr) #16
  br label %ath10k_htt_rx_crypto_param_len.exit.i.i.i

switch.lookup336:                                 ; preds = %if.then.i.i43.i
  call void @__sanitizer_cov_trace_pc() #18
  %200 = ptrtoint ptr %switch.gep340 to i32
  call void @__asan_load4_noabort(i32 %200)
  %switch.load341 = load i32, ptr %switch.gep340, align 4
  br label %ath10k_htt_rx_crypto_param_len.exit.i.i.i

ath10k_htt_rx_crypto_param_len.exit.i.i.i:        ; preds = %switch.lookup336, %sw.epilog.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ -1, %sw.epilog.i.i.i.i ], [ %switch.load341, %switch.lookup336 ]
  %sub.i.i44.i = add i32 %call.i.i42.i, -1
  %sub16.i.i.i = add i32 %195, -1
  %or.i.i45.i = or i32 %sub.i.i44.i, %sub16.i.i.i
  %or19.i.i.i = or i32 %retval.0.i.i.i.i, %sub16.i.i.i
  %add20.i.i.i = add i32 %or.i.i45.i, 2
  %add21.i.i.i = add i32 %add20.i.i.i, %or19.i.i.i
  %add.ptr22.i.i.i = getelementptr i8, ptr %rx_hdr_status.i.i.i, i32 %add21.i.i.i
  br label %ath10k_htt_rx_h_find_rfc1042.exit.i.i

ath10k_htt_rx_h_find_rfc1042.exit.i.i:            ; preds = %ath10k_htt_rx_crypto_param_len.exit.i.i.i, %sw.bb2.i.ath10k_htt_rx_h_find_rfc1042.exit.i.i_crit_edge
  %rfc1042.0.i.i.i = phi ptr [ %add.ptr22.i.i.i, %ath10k_htt_rx_crypto_param_len.exit.i.i.i ], [ %rx_hdr_status.i.i.i, %sw.bb2.i.ath10k_htt_rx_h_find_rfc1042.exit.i.i_crit_edge ]
  %201 = and i32 %197, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582912, i32 %201)
  %.not.i.i.i = icmp eq i32 %201, 12582912
  %spec.select.idx.i.i.i = select i1 %.not.i.i.i, i32 0, i32 14
  %spec.select.i.i.i = getelementptr i8, ptr %rfc1042.0.i.i.i, i32 %spec.select.idx.i.i.i
  %tobool.not.i46.i = icmp eq ptr %spec.select.i.i.i, null
  br i1 %tobool.not.i46.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %ath10k_htt_rx_h_find_rfc1042.exit.i.i
  %.b99.i.i = load i1, ptr @ath10k_htt_rx_h_undecap_eth.__already_done, align 1
  br i1 %.b99.i.i, label %land.rhs.i.i.ath10k_htt_rx_h_undecap.exit_crit_edge, label %if.then.i47.i, !prof !309

land.rhs.i.i.ath10k_htt_rx_h_undecap.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_h_undecap.exit

if.then.i47.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ath10k_htt_rx_h_undecap_eth.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 1593, i32 noundef 9, ptr noundef null) #16
  br label %ath10k_htt_rx_h_undecap.exit

if.end39.i.i:                                     ; preds = %ath10k_htt_rx_h_find_rfc1042.exit.i.i
  %202 = ptrtoint ptr %hw_ops.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %hw_ops.i.i74.i, align 4
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %203, align 4
  %tobool.not.i101.i.i = icmp eq ptr %205, null
  br i1 %tobool.not.i101.i.i, label %if.end39.i.i.ath10k_rx_desc_get_l3_pad_bytes.exit.i54.i_crit_edge, label %if.then.i103.i.i

if.end39.i.i.ath10k_rx_desc_get_l3_pad_bytes.exit.i54.i_crit_edge: ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_rx_desc_get_l3_pad_bytes.exit.i54.i

if.then.i103.i.i:                                 ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %206 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i49.i = getelementptr i8, ptr %207, i32 -360
  %call.i102.i.i = tail call i32 %205(ptr noundef %add.ptr.i49.i) #16
  br label %ath10k_rx_desc_get_l3_pad_bytes.exit.i54.i

ath10k_rx_desc_get_l3_pad_bytes.exit.i54.i:       ; preds = %if.then.i103.i.i, %if.end39.i.i.ath10k_rx_desc_get_l3_pad_bytes.exit.i54.i_crit_edge
  %retval.0.i.i50.i = phi i32 [ %call.i102.i.i, %if.then.i103.i.i ], [ 0, %if.end39.i.i.ath10k_rx_desc_get_l3_pad_bytes.exit.i54.i_crit_edge ]
  %call42.i.i = tail call ptr @skb_put(ptr noundef %msdu.0296, i32 noundef %retval.0.i.i50.i) #16
  %call43.i.i = tail call ptr @skb_pull(ptr noundef %msdu.0296, i32 noundef %retval.0.i.i50.i) #16
  %208 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %data.i.i, align 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %209, align 4
  %add.ptr.i.i51.i = getelementptr i8, ptr %209, i32 4
  %212 = ptrtoint ptr %add.ptr.i.i51.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %add.ptr.i.i51.i, align 2
  %h_source.i.i = getelementptr inbounds %struct.ethhdr, ptr %209, i32 0, i32 1
  %214 = ptrtoint ptr %h_source.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %h_source.i.i, align 4
  %add.ptr.i104.i.i = getelementptr %struct.ethhdr, ptr %209, i32 0, i32 1, i32 4
  %216 = ptrtoint ptr %add.ptr.i104.i.i to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %add.ptr.i104.i.i, align 2
  %call48.i.i = tail call ptr @skb_pull(ptr noundef %msdu.0296, i32 noundef 14) #16
  %call49.i.i = tail call ptr @skb_push(ptr noundef %msdu.0296, i32 noundef 8) #16
  %218 = ptrtoint ptr %spec.select.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %218, i32 8)
  %219 = load i64, ptr %spec.select.i.i.i, align 1
  %220 = ptrtoint ptr %call49.i.i to i32
  call void @__asan_storeN_noabort(i32 %220, i32 8)
  store i64 %219, ptr %call49.i.i, align 1
  %221 = ptrtoint ptr %first_hdr to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %first_hdr, align 2
  %call50.i.i = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %222) #20
  %223 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %flag, align 8
  %and.i53.i = and i32 %224, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53.i)
  %tobool51.not.i.i = icmp eq i32 %and.i53.i, 0
  br i1 %tobool51.not.i.i, label %if.then52.i.i, label %ath10k_rx_desc_get_l3_pad_bytes.exit.i54.i.if.end58.i.i_crit_edge

ath10k_rx_desc_get_l3_pad_bytes.exit.i54.i.if.end58.i.i_crit_edge: ; preds = %ath10k_rx_desc_get_l3_pad_bytes.exit.i54.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end58.i.i

if.then52.i.i:                                    ; preds = %ath10k_rx_desc_get_l3_pad_bytes.exit.i54.i
  %225 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %225, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %shr, label %sw.epilog.i.i58.i [
    i32 7, label %ath10k_htt_rx_crypto_param_len.exit.thread.i55.i
    i32 0, label %if.then52.i.i.ath10k_htt_rx_crypto_param_len.exit.i62.i_crit_edge
    i32 1, label %if.then52.i.i.ath10k_htt_rx_crypto_param_len.exit.i62.i_crit_edge365
    i32 2, label %if.then52.i.i.sw.bb2.i.i56.i_crit_edge
    i32 4, label %if.then52.i.i.sw.bb2.i.i56.i_crit_edge366
    i32 6, label %ath10k_htt_rx_crypto_param_len.exit.thread132.i.i
    i32 8, label %ath10k_htt_rx_crypto_param_len.exit.thread142.i.i
    i32 9, label %if.then52.i.i.sw.bb5.i.i57.i_crit_edge
    i32 10, label %if.then52.i.i.sw.bb5.i.i57.i_crit_edge367
  ]

if.then52.i.i.sw.bb5.i.i57.i_crit_edge367:        ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb5.i.i57.i

if.then52.i.i.sw.bb5.i.i57.i_crit_edge:           ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb5.i.i57.i

if.then52.i.i.sw.bb2.i.i56.i_crit_edge366:        ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb2.i.i56.i

if.then52.i.i.sw.bb2.i.i56.i_crit_edge:           ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb2.i.i56.i

if.then52.i.i.ath10k_htt_rx_crypto_param_len.exit.i62.i_crit_edge365: ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_crypto_param_len.exit.i62.i

if.then52.i.i.ath10k_htt_rx_crypto_param_len.exit.i62.i_crit_edge: ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_crypto_param_len.exit.i62.i

ath10k_htt_rx_crypto_param_len.exit.thread.i55.i: ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call54124.i.i = tail call ptr @skb_push(ptr noundef %msdu.0296, i32 noundef 0) #16
  %sub125.i.i = add i32 %call50.i.i, -1
  %sub55126.i.i = add i32 %195, -1
  %or127.i.i = or i32 %sub125.i.i, %sub55126.i.i
  %add128.i.i = add i32 %or127.i.i, 1
  %add.ptr56129.i.i = getelementptr i8, ptr %first_hdr, i32 %add128.i.i
  br label %ath10k_htt_rx_crypto_param_len.exit114.i.i

sw.bb2.i.i56.i:                                   ; preds = %if.then52.i.i.sw.bb2.i.i56.i_crit_edge, %if.then52.i.i.sw.bb2.i.i56.i_crit_edge366
  br label %ath10k_htt_rx_crypto_param_len.exit.i62.i

ath10k_htt_rx_crypto_param_len.exit.thread132.i.i: ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call54134.i.i = tail call ptr @skb_push(ptr noundef %msdu.0296, i32 noundef 8) #16
  %sub135.i.i = add i32 %call50.i.i, -1
  %sub55136.i.i = add i32 %195, -1
  %or137.i.i = or i32 %sub135.i.i, %sub55136.i.i
  %add138.i.i = add i32 %or137.i.i, 1
  %add.ptr56139.i.i = getelementptr i8, ptr %first_hdr, i32 %add138.i.i
  br label %sw.bb3.i109.i.i

ath10k_htt_rx_crypto_param_len.exit.thread142.i.i: ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call54144.i.i = tail call ptr @skb_push(ptr noundef %msdu.0296, i32 noundef 8) #16
  %sub145.i.i = add i32 %call50.i.i, -1
  %sub55146.i.i = add i32 %195, -1
  %or147.i.i = or i32 %sub145.i.i, %sub55146.i.i
  %add148.i.i = add i32 %or147.i.i, 1
  %add.ptr56149.i.i = getelementptr i8, ptr %first_hdr, i32 %add148.i.i
  br label %sw.bb4.i110.i.i

sw.bb5.i.i57.i:                                   ; preds = %if.then52.i.i.sw.bb5.i.i57.i_crit_edge, %if.then52.i.i.sw.bb5.i.i57.i_crit_edge367
  br label %ath10k_htt_rx_crypto_param_len.exit.i62.i

sw.epilog.i.i58.i:                                ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.118, i32 noundef %shr) #16
  br label %ath10k_htt_rx_crypto_param_len.exit.i62.i

ath10k_htt_rx_crypto_param_len.exit.i62.i:        ; preds = %sw.epilog.i.i58.i, %sw.bb5.i.i57.i, %sw.bb2.i.i56.i, %if.then52.i.i.ath10k_htt_rx_crypto_param_len.exit.i62.i_crit_edge, %if.then52.i.i.ath10k_htt_rx_crypto_param_len.exit.i62.i_crit_edge365
  %retval.0.i106.i.i = phi i32 [ 0, %sw.epilog.i.i58.i ], [ 8, %sw.bb5.i.i57.i ], [ 8, %sw.bb2.i.i56.i ], [ 4, %if.then52.i.i.ath10k_htt_rx_crypto_param_len.exit.i62.i_crit_edge ], [ 4, %if.then52.i.i.ath10k_htt_rx_crypto_param_len.exit.i62.i_crit_edge365 ]
  %call54.i.i = tail call ptr @skb_push(ptr noundef %msdu.0296, i32 noundef %retval.0.i106.i.i) #16
  %sub.i59.i = add i32 %call50.i.i, -1
  %sub55.i.i = add i32 %195, -1
  %or.i60.i = or i32 %sub.i59.i, %sub55.i.i
  %add.i61.i = add i32 %or.i60.i, 1
  %add.ptr56.i.i = getelementptr i8, ptr %first_hdr, i32 %add.i61.i
  %226 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %226, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %shr, label %sw.epilog.i112.i.i [
    i32 7, label %ath10k_htt_rx_crypto_param_len.exit.i62.i.ath10k_htt_rx_crypto_param_len.exit114.i.i_crit_edge
    i32 0, label %ath10k_htt_rx_crypto_param_len.exit.i62.i.sw.bb1.i107.i.i_crit_edge
    i32 1, label %ath10k_htt_rx_crypto_param_len.exit.i62.i.sw.bb1.i107.i.i_crit_edge368
    i32 2, label %ath10k_htt_rx_crypto_param_len.exit.i62.i.sw.bb2.i108.i.i_crit_edge
    i32 4, label %ath10k_htt_rx_crypto_param_len.exit.i62.i.sw.bb2.i108.i.i_crit_edge369
    i32 6, label %ath10k_htt_rx_crypto_param_len.exit.i62.i.sw.bb3.i109.i.i_crit_edge
    i32 8, label %ath10k_htt_rx_crypto_param_len.exit.i62.i.sw.bb4.i110.i.i_crit_edge
    i32 9, label %ath10k_htt_rx_crypto_param_len.exit.i62.i.sw.bb5.i111.i.i_crit_edge
    i32 10, label %ath10k_htt_rx_crypto_param_len.exit.i62.i.sw.bb5.i111.i.i_crit_edge370
  ]

ath10k_htt_rx_crypto_param_len.exit.i62.i.sw.bb5.i111.i.i_crit_edge370: ; preds = %ath10k_htt_rx_crypto_param_len.exit.i62.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb5.i111.i.i

ath10k_htt_rx_crypto_param_len.exit.i62.i.sw.bb5.i111.i.i_crit_edge: ; preds = %ath10k_htt_rx_crypto_param_len.exit.i62.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb5.i111.i.i

ath10k_htt_rx_crypto_param_len.exit.i62.i.sw.bb4.i110.i.i_crit_edge: ; preds = %ath10k_htt_rx_crypto_param_len.exit.i62.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb4.i110.i.i

ath10k_htt_rx_crypto_param_len.exit.i62.i.sw.bb3.i109.i.i_crit_edge: ; preds = %ath10k_htt_rx_crypto_param_len.exit.i62.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3.i109.i.i

ath10k_htt_rx_crypto_param_len.exit.i62.i.sw.bb2.i108.i.i_crit_edge369: ; preds = %ath10k_htt_rx_crypto_param_len.exit.i62.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb2.i108.i.i

ath10k_htt_rx_crypto_param_len.exit.i62.i.sw.bb2.i108.i.i_crit_edge: ; preds = %ath10k_htt_rx_crypto_param_len.exit.i62.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb2.i108.i.i

ath10k_htt_rx_crypto_param_len.exit.i62.i.sw.bb1.i107.i.i_crit_edge368: ; preds = %ath10k_htt_rx_crypto_param_len.exit.i62.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1.i107.i.i

ath10k_htt_rx_crypto_param_len.exit.i62.i.sw.bb1.i107.i.i_crit_edge: ; preds = %ath10k_htt_rx_crypto_param_len.exit.i62.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1.i107.i.i

ath10k_htt_rx_crypto_param_len.exit.i62.i.ath10k_htt_rx_crypto_param_len.exit114.i.i_crit_edge: ; preds = %ath10k_htt_rx_crypto_param_len.exit.i62.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_crypto_param_len.exit114.i.i

sw.bb1.i107.i.i:                                  ; preds = %ath10k_htt_rx_crypto_param_len.exit.i62.i.sw.bb1.i107.i.i_crit_edge, %ath10k_htt_rx_crypto_param_len.exit.i62.i.sw.bb1.i107.i.i_crit_edge368
  br label %ath10k_htt_rx_crypto_param_len.exit114.i.i

sw.bb2.i108.i.i:                                  ; preds = %ath10k_htt_rx_crypto_param_len.exit.i62.i.sw.bb2.i108.i.i_crit_edge, %ath10k_htt_rx_crypto_param_len.exit.i62.i.sw.bb2.i108.i.i_crit_edge369
  br label %ath10k_htt_rx_crypto_param_len.exit114.i.i

sw.bb3.i109.i.i:                                  ; preds = %ath10k_htt_rx_crypto_param_len.exit.i62.i.sw.bb3.i109.i.i_crit_edge, %ath10k_htt_rx_crypto_param_len.exit.thread132.i.i
  %add.ptr56141.i.i = phi ptr [ %add.ptr56139.i.i, %ath10k_htt_rx_crypto_param_len.exit.thread132.i.i ], [ %add.ptr56.i.i, %ath10k_htt_rx_crypto_param_len.exit.i62.i.sw.bb3.i109.i.i_crit_edge ]
  %call54140.i.i = phi ptr [ %call54134.i.i, %ath10k_htt_rx_crypto_param_len.exit.thread132.i.i ], [ %call54.i.i, %ath10k_htt_rx_crypto_param_len.exit.i62.i.sw.bb3.i109.i.i_crit_edge ]
  br label %ath10k_htt_rx_crypto_param_len.exit114.i.i

sw.bb4.i110.i.i:                                  ; preds = %ath10k_htt_rx_crypto_param_len.exit.i62.i.sw.bb4.i110.i.i_crit_edge, %ath10k_htt_rx_crypto_param_len.exit.thread142.i.i
  %add.ptr56151.i.i = phi ptr [ %add.ptr56149.i.i, %ath10k_htt_rx_crypto_param_len.exit.thread142.i.i ], [ %add.ptr56.i.i, %ath10k_htt_rx_crypto_param_len.exit.i62.i.sw.bb4.i110.i.i_crit_edge ]
  %call54150.i.i = phi ptr [ %call54144.i.i, %ath10k_htt_rx_crypto_param_len.exit.thread142.i.i ], [ %call54.i.i, %ath10k_htt_rx_crypto_param_len.exit.i62.i.sw.bb4.i110.i.i_crit_edge ]
  br label %ath10k_htt_rx_crypto_param_len.exit114.i.i

sw.bb5.i111.i.i:                                  ; preds = %ath10k_htt_rx_crypto_param_len.exit.i62.i.sw.bb5.i111.i.i_crit_edge, %ath10k_htt_rx_crypto_param_len.exit.i62.i.sw.bb5.i111.i.i_crit_edge370
  br label %ath10k_htt_rx_crypto_param_len.exit114.i.i

sw.epilog.i112.i.i:                               ; preds = %ath10k_htt_rx_crypto_param_len.exit.i62.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.118, i32 noundef %shr) #16
  br label %ath10k_htt_rx_crypto_param_len.exit114.i.i

ath10k_htt_rx_crypto_param_len.exit114.i.i:       ; preds = %sw.epilog.i112.i.i, %sw.bb5.i111.i.i, %sw.bb4.i110.i.i, %sw.bb3.i109.i.i, %sw.bb2.i108.i.i, %sw.bb1.i107.i.i, %ath10k_htt_rx_crypto_param_len.exit.i62.i.ath10k_htt_rx_crypto_param_len.exit114.i.i_crit_edge, %ath10k_htt_rx_crypto_param_len.exit.thread.i55.i
  %add.ptr56131.i.i = phi ptr [ %add.ptr56.i.i, %sw.epilog.i112.i.i ], [ %add.ptr56.i.i, %sw.bb5.i111.i.i ], [ %add.ptr56151.i.i, %sw.bb4.i110.i.i ], [ %add.ptr56141.i.i, %sw.bb3.i109.i.i ], [ %add.ptr56.i.i, %sw.bb2.i108.i.i ], [ %add.ptr56.i.i, %sw.bb1.i107.i.i ], [ %add.ptr56.i.i, %ath10k_htt_rx_crypto_param_len.exit.i62.i.ath10k_htt_rx_crypto_param_len.exit114.i.i_crit_edge ], [ %add.ptr56129.i.i, %ath10k_htt_rx_crypto_param_len.exit.thread.i55.i ]
  %call54130.i.i = phi ptr [ %call54.i.i, %sw.epilog.i112.i.i ], [ %call54.i.i, %sw.bb5.i111.i.i ], [ %call54150.i.i, %sw.bb4.i110.i.i ], [ %call54140.i.i, %sw.bb3.i109.i.i ], [ %call54.i.i, %sw.bb2.i108.i.i ], [ %call54.i.i, %sw.bb1.i107.i.i ], [ %call54.i.i, %ath10k_htt_rx_crypto_param_len.exit.i62.i.ath10k_htt_rx_crypto_param_len.exit114.i.i_crit_edge ], [ %call54124.i.i, %ath10k_htt_rx_crypto_param_len.exit.thread.i55.i ]
  %retval.0.i113.i.i = phi i32 [ 0, %sw.epilog.i112.i.i ], [ 8, %sw.bb5.i111.i.i ], [ 8, %sw.bb4.i110.i.i ], [ 8, %sw.bb3.i109.i.i ], [ 8, %sw.bb2.i108.i.i ], [ 4, %sw.bb1.i107.i.i ], [ 0, %ath10k_htt_rx_crypto_param_len.exit.i62.i.ath10k_htt_rx_crypto_param_len.exit114.i.i_crit_edge ], [ 0, %ath10k_htt_rx_crypto_param_len.exit.thread.i55.i ]
  %227 = call ptr @memcpy(ptr %call54130.i.i, ptr %add.ptr56131.i.i, i32 %retval.0.i113.i.i)
  br label %if.end58.i.i

if.end58.i.i:                                     ; preds = %ath10k_htt_rx_crypto_param_len.exit114.i.i, %ath10k_rx_desc_get_l3_pad_bytes.exit.i54.i.if.end58.i.i_crit_edge
  %call59.i.i = tail call ptr @skb_push(ptr noundef %msdu.0296, i32 noundef %call50.i.i) #16
  %228 = call ptr @memcpy(ptr %call59.i.i, ptr %first_hdr, i32 %call50.i.i)
  %229 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %data.i.i, align 4
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %230, align 2
  %233 = and i16 %232, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %233)
  %cmp.i.not.i.i63.i = icmp eq i16 %233, 0
  %addr3.i.i64.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %230, i32 0, i32 4
  %addr1.i.i65.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %230, i32 0, i32 2
  %retval.0.i115.i.i = select i1 %cmp.i.not.i.i63.i, ptr %addr1.i.i65.i, ptr %addr3.i.i64.i
  %234 = ptrtoint ptr %retval.0.i115.i.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %211, ptr %retval.0.i115.i.i, align 4
  %add.ptr1.i117.i.i = getelementptr i8, ptr %retval.0.i115.i.i, i32 4
  %235 = ptrtoint ptr %add.ptr1.i117.i.i to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 %213, ptr %add.ptr1.i117.i.i, align 2
  %236 = ptrtoint ptr %230 to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %230, align 2
  %238 = and i16 %237, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %238)
  %cmp.i.i.i66.i = icmp eq i16 %238, 3
  br i1 %cmp.i.i.i66.i, label %if.then.i118.i.i, label %if.end.i.i71.i

if.then.i118.i.i:                                 ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %addr4.i.i67.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %230, i32 0, i32 6
  br label %ieee80211_get_SA.exit.i72.i

if.end.i.i71.i:                                   ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %239 = and i16 %237, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %239)
  %cmp.i11.not.i.i68.i = icmp eq i16 %239, 0
  %addr2.i.i69.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %230, i32 0, i32 3
  %spec.select.i70.i = select i1 %cmp.i11.not.i.i68.i, ptr %addr2.i.i69.i, ptr %addr3.i.i64.i
  br label %ieee80211_get_SA.exit.i72.i

ieee80211_get_SA.exit.i72.i:                      ; preds = %if.end.i.i71.i, %if.then.i118.i.i
  %retval.0.i120.i.i = phi ptr [ %addr4.i.i67.i, %if.then.i118.i.i ], [ %spec.select.i70.i, %if.end.i.i71.i ]
  %240 = ptrtoint ptr %retval.0.i120.i.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %215, ptr %retval.0.i120.i.i, align 4
  %add.ptr1.i122.i.i = getelementptr i8, ptr %retval.0.i120.i.i, i32 4
  %241 = ptrtoint ptr %add.ptr1.i122.i.i to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 %217, ptr %add.ptr1.i122.i.i, align 2
  br label %ath10k_htt_rx_h_undecap.exit

sw.bb3.i:                                         ; preds = %if.end140
  %242 = ptrtoint ptr %decap_align_bytes.i73.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %decap_align_bytes.i73.i, align 4
  %244 = ptrtoint ptr %hw_ops.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %hw_ops.i.i74.i, align 4
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %245, align 4
  %tobool.not.i.i75.i = icmp eq ptr %247, null
  br i1 %tobool.not.i.i75.i, label %sw.bb3.i.ath10k_rx_desc_get_l3_pad_bytes.exit.i86.i_crit_edge, label %if.then.i.i79.i

sw.bb3.i.ath10k_rx_desc_get_l3_pad_bytes.exit.i86.i_crit_edge: ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_rx_desc_get_l3_pad_bytes.exit.i86.i

if.then.i.i79.i:                                  ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i77.i = getelementptr i8, ptr %84, i32 -360
  %call.i.i78.i = tail call i32 %247(ptr noundef %add.ptr.i77.i) #16
  br label %ath10k_rx_desc_get_l3_pad_bytes.exit.i86.i

ath10k_rx_desc_get_l3_pad_bytes.exit.i86.i:       ; preds = %if.then.i.i79.i, %sw.bb3.i.ath10k_rx_desc_get_l3_pad_bytes.exit.i86.i_crit_edge
  %retval.0.i.i80.i = phi i32 [ %call.i.i78.i, %if.then.i.i79.i ], [ 0, %sw.bb3.i.ath10k_rx_desc_get_l3_pad_bytes.exit.i86.i_crit_edge ]
  %call2.i81.i = tail call ptr @skb_put(ptr noundef %msdu.0296, i32 noundef %retval.0.i.i80.i) #16
  %add.i82.i = add i32 %retval.0.i.i80.i, 14
  %call3.i.i = tail call ptr @skb_pull(ptr noundef %msdu.0296, i32 noundef %add.i82.i) #16
  %248 = ptrtoint ptr %first_hdr to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %first_hdr, align 2
  %call4.i.i = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %249) #20
  %250 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %flag, align 8
  %and.i84.i = and i32 %251, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84.i)
  %tobool.not.i85.i = icmp eq i32 %and.i84.i, 0
  br i1 %tobool.not.i85.i, label %if.then.i87.i, label %ath10k_rx_desc_get_l3_pad_bytes.exit.i86.i.ath10k_htt_rx_h_undecap_snap.exit.i_crit_edge

ath10k_rx_desc_get_l3_pad_bytes.exit.i86.i.ath10k_htt_rx_h_undecap_snap.exit.i_crit_edge: ; preds = %ath10k_rx_desc_get_l3_pad_bytes.exit.i86.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_h_undecap_snap.exit.i

if.then.i87.i:                                    ; preds = %ath10k_rx_desc_get_l3_pad_bytes.exit.i86.i
  %252 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %252, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %shr, label %sw.epilog.i.i91.i [
    i32 7, label %ath10k_htt_rx_crypto_param_len.exit.thread.i88.i
    i32 0, label %if.then.i87.i.ath10k_htt_rx_crypto_param_len.exit.i94.i_crit_edge
    i32 1, label %if.then.i87.i.ath10k_htt_rx_crypto_param_len.exit.i94.i_crit_edge371
    i32 2, label %if.then.i87.i.sw.bb2.i.i89.i_crit_edge
    i32 4, label %if.then.i87.i.sw.bb2.i.i89.i_crit_edge372
    i32 6, label %ath10k_htt_rx_crypto_param_len.exit.thread43.i.i
    i32 8, label %ath10k_htt_rx_crypto_param_len.exit.thread53.i.i
    i32 9, label %if.then.i87.i.sw.bb5.i.i90.i_crit_edge
    i32 10, label %if.then.i87.i.sw.bb5.i.i90.i_crit_edge373
  ]

if.then.i87.i.sw.bb5.i.i90.i_crit_edge373:        ; preds = %if.then.i87.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb5.i.i90.i

if.then.i87.i.sw.bb5.i.i90.i_crit_edge:           ; preds = %if.then.i87.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb5.i.i90.i

if.then.i87.i.sw.bb2.i.i89.i_crit_edge372:        ; preds = %if.then.i87.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb2.i.i89.i

if.then.i87.i.sw.bb2.i.i89.i_crit_edge:           ; preds = %if.then.i87.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb2.i.i89.i

if.then.i87.i.ath10k_htt_rx_crypto_param_len.exit.i94.i_crit_edge371: ; preds = %if.then.i87.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_crypto_param_len.exit.i94.i

if.then.i87.i.ath10k_htt_rx_crypto_param_len.exit.i94.i_crit_edge: ; preds = %if.then.i87.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_crypto_param_len.exit.i94.i

ath10k_htt_rx_crypto_param_len.exit.thread.i88.i: ; preds = %if.then.i87.i
  call void @__sanitizer_cov_trace_pc() #18
  %call635.i.i = tail call ptr @skb_push(ptr noundef %msdu.0296, i32 noundef 0) #16
  %sub36.i.i = add i32 %call4.i.i, -1
  %sub737.i.i = add i32 %243, -1
  %or38.i.i = or i32 %sub36.i.i, %sub737.i.i
  %add839.i.i = add i32 %or38.i.i, 1
  %add.ptr940.i.i = getelementptr i8, ptr %first_hdr, i32 %add839.i.i
  br label %ath10k_htt_rx_crypto_param_len.exit33.i.i

sw.bb2.i.i89.i:                                   ; preds = %if.then.i87.i.sw.bb2.i.i89.i_crit_edge, %if.then.i87.i.sw.bb2.i.i89.i_crit_edge372
  br label %ath10k_htt_rx_crypto_param_len.exit.i94.i

ath10k_htt_rx_crypto_param_len.exit.thread43.i.i: ; preds = %if.then.i87.i
  call void @__sanitizer_cov_trace_pc() #18
  %call645.i.i = tail call ptr @skb_push(ptr noundef %msdu.0296, i32 noundef 8) #16
  %sub46.i.i = add i32 %call4.i.i, -1
  %sub747.i.i = add i32 %243, -1
  %or48.i.i = or i32 %sub46.i.i, %sub747.i.i
  %add849.i.i = add i32 %or48.i.i, 1
  %add.ptr950.i.i = getelementptr i8, ptr %first_hdr, i32 %add849.i.i
  br label %sw.bb3.i28.i.i

ath10k_htt_rx_crypto_param_len.exit.thread53.i.i: ; preds = %if.then.i87.i
  call void @__sanitizer_cov_trace_pc() #18
  %call655.i.i = tail call ptr @skb_push(ptr noundef %msdu.0296, i32 noundef 8) #16
  %sub56.i.i = add i32 %call4.i.i, -1
  %sub757.i.i = add i32 %243, -1
  %or58.i.i = or i32 %sub56.i.i, %sub757.i.i
  %add859.i.i = add i32 %or58.i.i, 1
  %add.ptr960.i.i = getelementptr i8, ptr %first_hdr, i32 %add859.i.i
  br label %sw.bb4.i29.i.i

sw.bb5.i.i90.i:                                   ; preds = %if.then.i87.i.sw.bb5.i.i90.i_crit_edge, %if.then.i87.i.sw.bb5.i.i90.i_crit_edge373
  br label %ath10k_htt_rx_crypto_param_len.exit.i94.i

sw.epilog.i.i91.i:                                ; preds = %if.then.i87.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.118, i32 noundef %shr) #16
  br label %ath10k_htt_rx_crypto_param_len.exit.i94.i

ath10k_htt_rx_crypto_param_len.exit.i94.i:        ; preds = %sw.epilog.i.i91.i, %sw.bb5.i.i90.i, %sw.bb2.i.i89.i, %if.then.i87.i.ath10k_htt_rx_crypto_param_len.exit.i94.i_crit_edge, %if.then.i87.i.ath10k_htt_rx_crypto_param_len.exit.i94.i_crit_edge371
  %retval.0.i25.i.i = phi i32 [ 0, %sw.epilog.i.i91.i ], [ 8, %sw.bb5.i.i90.i ], [ 8, %sw.bb2.i.i89.i ], [ 4, %if.then.i87.i.ath10k_htt_rx_crypto_param_len.exit.i94.i_crit_edge ], [ 4, %if.then.i87.i.ath10k_htt_rx_crypto_param_len.exit.i94.i_crit_edge371 ]
  %call6.i.i = tail call ptr @skb_push(ptr noundef %msdu.0296, i32 noundef %retval.0.i25.i.i) #16
  %sub.i92.i = add i32 %call4.i.i, -1
  %sub7.i.i = add i32 %243, -1
  %or.i93.i = or i32 %sub.i92.i, %sub7.i.i
  %add8.i.i = add i32 %or.i93.i, 1
  %add.ptr9.i.i = getelementptr i8, ptr %first_hdr, i32 %add8.i.i
  %253 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %253, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %shr, label %sw.epilog.i31.i.i [
    i32 7, label %ath10k_htt_rx_crypto_param_len.exit.i94.i.ath10k_htt_rx_crypto_param_len.exit33.i.i_crit_edge
    i32 0, label %ath10k_htt_rx_crypto_param_len.exit.i94.i.sw.bb1.i26.i.i_crit_edge
    i32 1, label %ath10k_htt_rx_crypto_param_len.exit.i94.i.sw.bb1.i26.i.i_crit_edge374
    i32 2, label %ath10k_htt_rx_crypto_param_len.exit.i94.i.sw.bb2.i27.i.i_crit_edge
    i32 4, label %ath10k_htt_rx_crypto_param_len.exit.i94.i.sw.bb2.i27.i.i_crit_edge375
    i32 6, label %ath10k_htt_rx_crypto_param_len.exit.i94.i.sw.bb3.i28.i.i_crit_edge
    i32 8, label %ath10k_htt_rx_crypto_param_len.exit.i94.i.sw.bb4.i29.i.i_crit_edge
    i32 9, label %ath10k_htt_rx_crypto_param_len.exit.i94.i.sw.bb5.i30.i.i_crit_edge
    i32 10, label %ath10k_htt_rx_crypto_param_len.exit.i94.i.sw.bb5.i30.i.i_crit_edge376
  ]

ath10k_htt_rx_crypto_param_len.exit.i94.i.sw.bb5.i30.i.i_crit_edge376: ; preds = %ath10k_htt_rx_crypto_param_len.exit.i94.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb5.i30.i.i

ath10k_htt_rx_crypto_param_len.exit.i94.i.sw.bb5.i30.i.i_crit_edge: ; preds = %ath10k_htt_rx_crypto_param_len.exit.i94.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb5.i30.i.i

ath10k_htt_rx_crypto_param_len.exit.i94.i.sw.bb4.i29.i.i_crit_edge: ; preds = %ath10k_htt_rx_crypto_param_len.exit.i94.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb4.i29.i.i

ath10k_htt_rx_crypto_param_len.exit.i94.i.sw.bb3.i28.i.i_crit_edge: ; preds = %ath10k_htt_rx_crypto_param_len.exit.i94.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb3.i28.i.i

ath10k_htt_rx_crypto_param_len.exit.i94.i.sw.bb2.i27.i.i_crit_edge375: ; preds = %ath10k_htt_rx_crypto_param_len.exit.i94.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb2.i27.i.i

ath10k_htt_rx_crypto_param_len.exit.i94.i.sw.bb2.i27.i.i_crit_edge: ; preds = %ath10k_htt_rx_crypto_param_len.exit.i94.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb2.i27.i.i

ath10k_htt_rx_crypto_param_len.exit.i94.i.sw.bb1.i26.i.i_crit_edge374: ; preds = %ath10k_htt_rx_crypto_param_len.exit.i94.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1.i26.i.i

ath10k_htt_rx_crypto_param_len.exit.i94.i.sw.bb1.i26.i.i_crit_edge: ; preds = %ath10k_htt_rx_crypto_param_len.exit.i94.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1.i26.i.i

ath10k_htt_rx_crypto_param_len.exit.i94.i.ath10k_htt_rx_crypto_param_len.exit33.i.i_crit_edge: ; preds = %ath10k_htt_rx_crypto_param_len.exit.i94.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_crypto_param_len.exit33.i.i

sw.bb1.i26.i.i:                                   ; preds = %ath10k_htt_rx_crypto_param_len.exit.i94.i.sw.bb1.i26.i.i_crit_edge, %ath10k_htt_rx_crypto_param_len.exit.i94.i.sw.bb1.i26.i.i_crit_edge374
  br label %ath10k_htt_rx_crypto_param_len.exit33.i.i

sw.bb2.i27.i.i:                                   ; preds = %ath10k_htt_rx_crypto_param_len.exit.i94.i.sw.bb2.i27.i.i_crit_edge, %ath10k_htt_rx_crypto_param_len.exit.i94.i.sw.bb2.i27.i.i_crit_edge375
  br label %ath10k_htt_rx_crypto_param_len.exit33.i.i

sw.bb3.i28.i.i:                                   ; preds = %ath10k_htt_rx_crypto_param_len.exit.i94.i.sw.bb3.i28.i.i_crit_edge, %ath10k_htt_rx_crypto_param_len.exit.thread43.i.i
  %add.ptr952.i.i = phi ptr [ %add.ptr950.i.i, %ath10k_htt_rx_crypto_param_len.exit.thread43.i.i ], [ %add.ptr9.i.i, %ath10k_htt_rx_crypto_param_len.exit.i94.i.sw.bb3.i28.i.i_crit_edge ]
  %call651.i.i = phi ptr [ %call645.i.i, %ath10k_htt_rx_crypto_param_len.exit.thread43.i.i ], [ %call6.i.i, %ath10k_htt_rx_crypto_param_len.exit.i94.i.sw.bb3.i28.i.i_crit_edge ]
  br label %ath10k_htt_rx_crypto_param_len.exit33.i.i

sw.bb4.i29.i.i:                                   ; preds = %ath10k_htt_rx_crypto_param_len.exit.i94.i.sw.bb4.i29.i.i_crit_edge, %ath10k_htt_rx_crypto_param_len.exit.thread53.i.i
  %add.ptr962.i.i = phi ptr [ %add.ptr960.i.i, %ath10k_htt_rx_crypto_param_len.exit.thread53.i.i ], [ %add.ptr9.i.i, %ath10k_htt_rx_crypto_param_len.exit.i94.i.sw.bb4.i29.i.i_crit_edge ]
  %call661.i.i = phi ptr [ %call655.i.i, %ath10k_htt_rx_crypto_param_len.exit.thread53.i.i ], [ %call6.i.i, %ath10k_htt_rx_crypto_param_len.exit.i94.i.sw.bb4.i29.i.i_crit_edge ]
  br label %ath10k_htt_rx_crypto_param_len.exit33.i.i

sw.bb5.i30.i.i:                                   ; preds = %ath10k_htt_rx_crypto_param_len.exit.i94.i.sw.bb5.i30.i.i_crit_edge, %ath10k_htt_rx_crypto_param_len.exit.i94.i.sw.bb5.i30.i.i_crit_edge376
  br label %ath10k_htt_rx_crypto_param_len.exit33.i.i

sw.epilog.i31.i.i:                                ; preds = %ath10k_htt_rx_crypto_param_len.exit.i94.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.118, i32 noundef %shr) #16
  br label %ath10k_htt_rx_crypto_param_len.exit33.i.i

ath10k_htt_rx_crypto_param_len.exit33.i.i:        ; preds = %sw.epilog.i31.i.i, %sw.bb5.i30.i.i, %sw.bb4.i29.i.i, %sw.bb3.i28.i.i, %sw.bb2.i27.i.i, %sw.bb1.i26.i.i, %ath10k_htt_rx_crypto_param_len.exit.i94.i.ath10k_htt_rx_crypto_param_len.exit33.i.i_crit_edge, %ath10k_htt_rx_crypto_param_len.exit.thread.i88.i
  %add.ptr942.i.i = phi ptr [ %add.ptr9.i.i, %sw.epilog.i31.i.i ], [ %add.ptr9.i.i, %sw.bb5.i30.i.i ], [ %add.ptr962.i.i, %sw.bb4.i29.i.i ], [ %add.ptr952.i.i, %sw.bb3.i28.i.i ], [ %add.ptr9.i.i, %sw.bb2.i27.i.i ], [ %add.ptr9.i.i, %sw.bb1.i26.i.i ], [ %add.ptr9.i.i, %ath10k_htt_rx_crypto_param_len.exit.i94.i.ath10k_htt_rx_crypto_param_len.exit33.i.i_crit_edge ], [ %add.ptr940.i.i, %ath10k_htt_rx_crypto_param_len.exit.thread.i88.i ]
  %call641.i.i = phi ptr [ %call6.i.i, %sw.epilog.i31.i.i ], [ %call6.i.i, %sw.bb5.i30.i.i ], [ %call661.i.i, %sw.bb4.i29.i.i ], [ %call651.i.i, %sw.bb3.i28.i.i ], [ %call6.i.i, %sw.bb2.i27.i.i ], [ %call6.i.i, %sw.bb1.i26.i.i ], [ %call6.i.i, %ath10k_htt_rx_crypto_param_len.exit.i94.i.ath10k_htt_rx_crypto_param_len.exit33.i.i_crit_edge ], [ %call635.i.i, %ath10k_htt_rx_crypto_param_len.exit.thread.i88.i ]
  %retval.0.i32.i.i = phi i32 [ 0, %sw.epilog.i31.i.i ], [ 8, %sw.bb5.i30.i.i ], [ 8, %sw.bb4.i29.i.i ], [ 8, %sw.bb3.i28.i.i ], [ 8, %sw.bb2.i27.i.i ], [ 4, %sw.bb1.i26.i.i ], [ 0, %ath10k_htt_rx_crypto_param_len.exit.i94.i.ath10k_htt_rx_crypto_param_len.exit33.i.i_crit_edge ], [ 0, %ath10k_htt_rx_crypto_param_len.exit.thread.i88.i ]
  %254 = call ptr @memcpy(ptr %call641.i.i, ptr %add.ptr942.i.i, i32 %retval.0.i32.i.i)
  br label %ath10k_htt_rx_h_undecap_snap.exit.i

ath10k_htt_rx_h_undecap_snap.exit.i:              ; preds = %ath10k_htt_rx_crypto_param_len.exit33.i.i, %ath10k_rx_desc_get_l3_pad_bytes.exit.i86.i.ath10k_htt_rx_h_undecap_snap.exit.i_crit_edge
  %call11.i.i = tail call ptr @skb_push(ptr noundef %msdu.0296, i32 noundef %call4.i.i) #16
  %255 = call ptr @memcpy(ptr %call11.i.i, ptr %first_hdr, i32 %call4.i.i)
  br label %ath10k_htt_rx_h_undecap.exit

entry.unreachabledefault.i:                       ; preds = %if.end140
  unreachable

ath10k_htt_rx_h_undecap.exit:                     ; preds = %ath10k_htt_rx_h_undecap_snap.exit.i, %ieee80211_get_SA.exit.i72.i, %if.then.i47.i, %land.rhs.i.i.ath10k_htt_rx_h_undecap.exit_crit_edge, %ath10k_htt_rx_h_undecap_nwifi.exit.i, %ath10k_htt_rx_crypto_param_len.exit.i.i, %if.end188.i.i.ath10k_htt_rx_h_undecap.exit_crit_edge, %if.then83.i.i, %land.rhs72.i.i.ath10k_htt_rx_h_undecap.exit_crit_edge, %if.then.i.i, %land.rhs20.i.i.ath10k_htt_rx_h_undecap.exit_crit_edge
  br i1 %brmerge279, label %ath10k_htt_rx_h_undecap.exit.for.inc_crit_edge, label %if.end151

ath10k_htt_rx_h_undecap.exit.for.inc_crit_edge:   ; preds = %ath10k_htt_rx_h_undecap.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end151:                                        ; preds = %ath10k_htt_rx_h_undecap.exit
  %256 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %data.i.i, align 4
  %258 = ptrtoint ptr %257 to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %257, align 2
  %260 = and i16 %259, -65
  store i16 %260, ptr %257, align 2
  br i1 %or.cond280, label %if.then164, label %if.end151.for.inc_crit_edge

if.end151.for.inc_crit_edge:                      ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then164:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #18
  %261 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %flag, align 8
  %and166 = and i32 %262, -25
  store i32 %and166, ptr %flag, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then164, %if.end151.for.inc_crit_edge, %ath10k_htt_rx_h_undecap.exit.for.inc_crit_edge, %if.end146.i.i.for.inc_crit_edge, %if.then128
  %msdu.1 = phi ptr [ %msdu.0296, %if.then164 ], [ %msdu.0296, %if.end151.for.inc_crit_edge ], [ %msdu.0296, %ath10k_htt_rx_h_undecap.exit.for.inc_crit_edge ], [ %59, %if.then128 ], [ %msdu.0296, %if.end146.i.i.for.inc_crit_edge ]
  %263 = ptrtoint ptr %msdu.1 to i32
  call void @__asan_load4_noabort(i32 %263)
  %msdu.0 = load ptr, ptr %msdu.1, align 4
  %cmp105.not = icmp eq ptr %msdu.0, %amsdu
  br i1 %cmp105.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end104.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %first_hdr) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ath10k_htt_rx_pop_paddr(ptr noundef %htt, i64 noundef %paddr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 12, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !308

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 450, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %conv.i = trunc i64 %paddr to i32
  %mul.i.i.i = mul i32 %conv.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 28
  %arrayidx.i = getelementptr %struct.ath10k, ptr %1, i32 0, i32 44, i32 10, i32 2, i32 %shr.i.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  %add.ptr.i = getelementptr i8, ptr %4, i32 -4
  %tobool2.not7073.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not70.i = or i1 %tobool.not.i, %tobool2.not7073.i
  br i1 %tobool2.not70.i, label %if.end.land.end.i_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.land.end.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %rxcb.071.i = phi ptr [ %add.ptr15.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.end.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %rxcb.071.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rxcb.071.i, align 4
  %conv4.i = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv4.i, i64 %paddr)
  %cmp.i = icmp eq i64 %conv4.i, %paddr
  br i1 %cmp.i, label %ath10k_htt_rx_find_skb_paddr.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %hlist.i = getelementptr inbounds %struct.ath10k_skb_rxcb, ptr %rxcb.071.i, i32 0, i32 1
  %7 = ptrtoint ptr %hlist.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hlist.i, align 4
  %tobool11.not.i = icmp eq ptr %8, null
  %add.ptr15.i = getelementptr i8, ptr %8, i32 -4
  %tobool2.not75.i = icmp eq ptr %add.ptr15.i, null
  %tobool2.not.i = or i1 %tobool11.not.i, %tobool2.not75.i
  br i1 %tobool2.not.i, label %for.inc.i.land.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.land.end.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end.i

land.end.i:                                       ; preds = %for.inc.i.land.end.i_crit_edge, %if.end.land.end.i_crit_edge
  %.b65.i = load i1, ptr @ath10k_htt_rx_find_skb_paddr.__already_done, align 1
  br i1 %.b65.i, label %land.end.i.cleanup_crit_edge, label %if.then25.i, !prof !309

land.end.i.cleanup_crit_edge:                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then25.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ath10k_htt_rx_find_skb_paddr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 35, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

ath10k_htt_rx_find_skb_paddr.exit:                ; preds = %for.body.i
  %add.ptr8.i = getelementptr i8, ptr %rxcb.071.i, i32 -24
  %tobool26.not = icmp eq ptr %add.ptr8.i, null
  br i1 %tobool26.not, label %ath10k_htt_rx_find_skb_paddr.exit.cleanup_crit_edge, label %if.end28

ath10k_htt_rx_find_skb_paddr.exit.cleanup_crit_edge: ; preds = %ath10k_htt_rx_find_skb_paddr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end28:                                         ; preds = %ath10k_htt_rx_find_skb_paddr.exit
  %hlist = getelementptr inbounds %struct.ath10k_skb_rxcb, ptr %rxcb.071.i, i32 0, i32 1
  %pprev.i.i.i = getelementptr inbounds %struct.ath10k_skb_rxcb, ptr %rxcb.071.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.not.i.i, label %if.end28.hash_del.exit_crit_edge, label %if.then.i.i

if.end28.hash_del.exit_crit_edge:                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %hash_del.exit

if.then.i.i:                                      ; preds = %if.end28
  %11 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hlist, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %12, ptr %10, align 4
  %tobool.not.i3.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %10, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %15 = ptrtoint ptr %hlist to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %hlist, align 4
  %16 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del.exit

hash_del.exit:                                    ; preds = %__hlist_del.exit.i.i, %if.end28.hash_del.exit_crit_edge
  %fill_cnt = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 8
  %17 = ptrtoint ptr %fill_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fill_cnt, align 4
  %dec = add i32 %18, -1
  store i32 %dec, ptr %fill_cnt, align 4
  %19 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %htt, align 8
  %dev = getelementptr inbounds %struct.ath10k, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %23 = ptrtoint ptr %rxcb.071.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rxcb.071.i, align 4
  %len = getelementptr i8, ptr %rxcb.071.i, i32 60
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %data_len.i.i = getelementptr i8, ptr %rxcb.071.i, i32 64
  %27 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not.i = icmp eq i32 %28, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %hash_del.exit.skb_tailroom.exit_crit_edge

hash_del.exit.skb_tailroom.exit_crit_edge:        ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  %end.i = getelementptr i8, ptr %rxcb.071.i, i32 148
  %29 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr i8, ptr %rxcb.071.i, i32 144
  %31 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %hash_del.exit.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %hash_del.exit.skb_tailroom.exit_crit_edge ]
  %add = add i32 %cond.i, %26
  tail call void @dma_unmap_page_attrs(ptr noundef %22, i32 noundef %24, i32 noundef %add, i32 noundef 2, i32 noundef 0) #16
  %data = getelementptr i8, ptr %rxcb.071.i, i32 156
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len, align 4
  %37 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.i.not.i53 = icmp eq i32 %38, 0
  br i1 %tobool.i.not.i53, label %cond.false.i59, label %skb_tailroom.exit.skb_tailroom.exit61_crit_edge

skb_tailroom.exit.skb_tailroom.exit61_crit_edge:  ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_tailroom.exit61

cond.false.i59:                                   ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #18
  %end.i54 = getelementptr i8, ptr %rxcb.071.i, i32 148
  %39 = ptrtoint ptr %end.i54 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %end.i54, align 4
  %tail.i55 = getelementptr i8, ptr %rxcb.071.i, i32 144
  %41 = ptrtoint ptr %tail.i55 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i55, align 8
  %sub.ptr.lhs.cast.i56 = ptrtoint ptr %40 to i32
  %sub.ptr.rhs.cast.i57 = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i58 = sub i32 %sub.ptr.lhs.cast.i56, %sub.ptr.rhs.cast.i57
  br label %skb_tailroom.exit61

skb_tailroom.exit61:                              ; preds = %cond.false.i59, %skb_tailroom.exit.skb_tailroom.exit61_crit_edge
  %cond.i60 = phi i32 [ %sub.ptr.sub.i58, %cond.false.i59 ], [ 0, %skb_tailroom.exit.skb_tailroom.exit61_crit_edge ]
  %add36 = add i32 %cond.i60, %36
  tail call void @ath10k_dbg_dump(ptr noundef %1, i32 noundef 128, ptr noundef null, ptr noundef nonnull @.str.104, ptr noundef %34, i32 noundef %add36) #16
  br label %cleanup

cleanup:                                          ; preds = %skb_tailroom.exit61, %ath10k_htt_rx_find_skb_paddr.exit.cleanup_crit_edge, %if.then25.i, %land.end.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr8.i, %skb_tailroom.exit61 ], [ null, %ath10k_htt_rx_find_skb_paddr.exit.cleanup_crit_edge ], [ null, %if.then25.i ], [ null, %land.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ath10k_htt_rx_desc(ptr noundef %ar, ptr noundef %data, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_htt_rx_desc, i32 0, i32 1), ptr blockaddress(@trace_ath10k_htt_rx_desc, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !313

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !298) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !309

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !298) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !330
  %call42 = tail call i32 @__traceiter_ath10k_htt_rx_desc(ptr noundef null, ptr noundef %ar, ptr noundef %data, i32 noundef %len) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !331
  %13 = tail call i32 @llvm.read_register.i32(metadata !298) #16
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !298) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !309

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !298) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !320
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_htt_rx_desc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_htt_rx_desc, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ath10k_htt_rx_desc.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_ath10k_htt_rx_desc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 458, ptr noundef nonnull @.str.31) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !321
  %31 = tail call i32 @llvm.read_register.i32(metadata !298) #16
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
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ath10k_htt_rx_desc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_htt_rx_h_channel(ptr noundef %ar, ptr nocapture noundef %status, ptr noundef readonly %rxd, i32 noundef %vdev_id) unnamed_addr #0 align 64 {
entry:
  %def.i11 = alloca %struct.cfg80211_chan_def, align 4
  %def.i1 = alloca %struct.cfg80211_chan_def, align 4
  %def.i = alloca %struct.cfg80211_chan_def, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #16
  %scan_channel = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 57
  %0 = ptrtoint ptr %scan_channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scan_channel, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.if.end14.thread_crit_edge

entry.if.end14.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14.thread

if.end:                                           ; preds = %entry
  %rx_channel = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 56
  %2 = ptrtoint ptr %rx_channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_channel, align 32
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end14.thread_crit_edge

if.end.if.end14.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14.thread

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %def.i) #16
  %4 = call ptr @memset(ptr %def.i, i32 255, i32 28)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %5 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.then2.if.end.i_crit_edge, label %land.rhs.i

if.then2.if.end.i_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then2
  %dep_map.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 82, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !308

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 1067, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then2.if.end.i_crit_edge
  %tobool24.not.i = icmp eq ptr %rxd, null
  br i1 %tobool24.not.i, label %if.end.i.if.end3.thread17_crit_edge, label %if.end26.i

if.end.i.if.end3.thread17_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3.thread17

if.end26.i:                                       ; preds = %if.end.i
  %6 = getelementptr inbounds %struct.htt_rx_desc, ptr %rxd, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %6, align 1
  %and.i = and i32 %8, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool27.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end26.i.if.end3.thread17_crit_edge

if.end26.i.if.end3.thread17_crit_edge:            ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3.thread17

if.end29.i:                                       ; preds = %if.end26.i
  %info0.i = getelementptr inbounds %struct.htt_rx_desc, ptr %rxd, i32 0, i32 1, i32 4, i32 0, i32 5
  %9 = ptrtoint ptr %info0.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %info0.i, align 1
  %and30.i = and i32 %10, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.end29.i.if.end3.thread17_crit_edge, label %if.end33.i

if.end29.i.if.end3.thread17_crit_edge:            ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3.thread17

if.end33.i:                                       ; preds = %if.end29.i
  %mpdu_start.i = getelementptr inbounds %struct.htt_rx_desc, ptr %rxd, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %mpdu_start.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %mpdu_start.i, align 1
  %13 = and i32 %12, -16318464
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #16
  %call37.i = tail call ptr @ath10k_peer_find_by_id(ptr noundef %ar, i32 noundef %14) #16
  %tobool38.not.i = icmp eq ptr %call37.i, null
  br i1 %tobool38.not.i, label %if.end33.i.if.end3.thread17_crit_edge, label %if.end40.i

if.end33.i.if.end3.thread17_crit_edge:            ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3.thread17

if.end40.i:                                       ; preds = %if.end33.i
  %vdev_id.i = getelementptr inbounds %struct.ath10k_peer, ptr %call37.i, i32 0, i32 4
  %15 = ptrtoint ptr %vdev_id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vdev_id.i, align 4
  %call41.i = tail call ptr @ath10k_get_arvif(ptr noundef %ar, i32 noundef %16) #16
  %tobool42.not.i = icmp eq ptr %call41.i, null
  br i1 %tobool42.not.i, label %land.rhs51.i, label %if.end99.i

land.rhs51.i:                                     ; preds = %if.end40.i
  %.b117.i = load i1, ptr @ath10k_htt_rx_h_peer_channel.__already_done, align 1
  br i1 %.b117.i, label %land.rhs51.i.if.end3.thread17_crit_edge, label %if.then62.i, !prof !309

land.rhs51.i.if.end3.thread17_crit_edge:          ; preds = %land.rhs51.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3.thread17

if.then62.i:                                      ; preds = %land.rhs51.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ath10k_htt_rx_h_peer_channel.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 1088, i32 noundef 9, ptr noundef null) #16
  br label %if.end3.thread17

if.end99.i:                                       ; preds = %if.end40.i
  %vif.i = getelementptr inbounds %struct.ath10k_vif, ptr %call41.i, i32 0, i32 13
  %17 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vif.i, align 4
  %call100.i = call i32 @ath10k_mac_vif_chan(ptr noundef %18, ptr noundef nonnull %def.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100.i)
  %tobool101.not.i = icmp eq i32 %call100.i, 0
  br i1 %tobool101.not.i, label %if.end3, label %if.end99.i.if.end3.thread17_crit_edge

if.end99.i.if.end3.thread17_crit_edge:            ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3.thread17

if.end3.thread17:                                 ; preds = %if.end99.i.if.end3.thread17_crit_edge, %if.then62.i, %land.rhs51.i.if.end3.thread17_crit_edge, %if.end33.i.if.end3.thread17_crit_edge, %if.end29.i.if.end3.thread17_crit_edge, %if.end26.i.if.end3.thread17_crit_edge, %if.end.i.if.end3.thread17_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %def.i) #16
  br label %if.then5

if.end3:                                          ; preds = %if.end99.i
  %19 = ptrtoint ptr %def.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %def.i, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %def.i) #16
  %tobool4.not = icmp eq ptr %20, null
  br i1 %tobool4.not, label %if.end3.if.then5_crit_edge, label %if.end3.if.end14.thread_crit_edge

if.end3.if.end14.thread_crit_edge:                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14.thread

if.end3.if.then5_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then5

if.then5:                                         ; preds = %if.end3.if.then5_crit_edge, %if.end3.thread17
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %def.i1) #16
  %21 = call ptr @memset(ptr %def.i1, i32 255, i32 28)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %22 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i2 = icmp eq i32 %22, 0
  br i1 %tobool.not.i2, label %if.then5.if.end.i8_crit_edge, label %land.rhs.i6

if.then5.if.end.i8_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i8

land.rhs.i6:                                      ; preds = %if.then5
  %dep_map.i3 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 82, i32 0, i32 0, i32 4
  %call.i.i4 = call i32 @lock_is_held_type(ptr noundef %dep_map.i3, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4)
  %cmp.not.i5 = icmp eq i32 %call.i.i4, 0
  br i1 %cmp.not.i5, label %do.end.i7, label %land.rhs.i6.if.end.i8_crit_edge, !prof !308

land.rhs.i6.if.end.i8_crit_edge:                  ; preds = %land.rhs.i6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i8

do.end.i7:                                        ; preds = %land.rhs.i6
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 1103, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i8

if.end.i8:                                        ; preds = %do.end.i7, %land.rhs.i6.if.end.i8_crit_edge, %if.then5.if.end.i8_crit_edge
  %arvifs.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 83
  %23 = ptrtoint ptr %arvifs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %arvif.047.i = load ptr, ptr %arvifs.i, align 4
  %cmp26.not48.i = icmp eq ptr %arvif.047.i, %arvifs.i
  br i1 %cmp26.not48.i, label %if.end.i8.if.end7.thread23_crit_edge, label %if.end.i8.for.body.i_crit_edge

if.end.i8.for.body.i_crit_edge:                   ; preds = %if.end.i8
  br label %for.body.i

if.end.i8.if.end7.thread23_crit_edge:             ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.thread23

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i8.for.body.i_crit_edge
  %arvif.049.i = phi ptr [ %arvif.0.i, %for.inc.i.for.body.i_crit_edge ], [ %arvif.047.i, %if.end.i8.for.body.i_crit_edge ]
  %vdev_id29.i = getelementptr inbounds %struct.ath10k_vif, ptr %arvif.049.i, i32 0, i32 1
  %24 = ptrtoint ptr %vdev_id29.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vdev_id29.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %vdev_id)
  %cmp30.i = icmp eq i32 %25, %vdev_id
  br i1 %cmp30.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %vif.i9 = getelementptr inbounds %struct.ath10k_vif, ptr %arvif.049.i, i32 0, i32 13
  %26 = ptrtoint ptr %vif.i9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vif.i9, align 4
  %call31.i = call i32 @ath10k_mac_vif_chan(ptr noundef %27, ptr noundef nonnull %def.i1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp eq i32 %call31.i, 0
  br i1 %cmp32.i, label %if.end7, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %28 = ptrtoint ptr %arvif.049.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %arvif.0.i = load ptr, ptr %arvif.049.i, align 4
  %cmp26.not.i = icmp eq ptr %arvif.0.i, %arvifs.i
  br i1 %cmp26.not.i, label %for.inc.i.if.end7.thread23_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.if.end7.thread23_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.thread23

if.end7.thread23:                                 ; preds = %for.inc.i.if.end7.thread23_crit_edge, %if.end.i8.if.end7.thread23_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %def.i1) #16
  br label %if.end11

if.end7:                                          ; preds = %land.lhs.true.i
  %29 = ptrtoint ptr %def.i1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %def.i1, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %def.i1) #16
  %tobool8.not = icmp eq ptr %30, null
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.end7.if.end14.thread_crit_edge

if.end7.if.end14.thread_crit_edge:                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14.thread

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.end11:                                         ; preds = %if.end7.if.end11_crit_edge, %if.end7.thread23
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %def.i11) #16
  %31 = call ptr @memset(ptr %def.i11, i32 0, i32 28)
  %hw.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 1
  %32 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw.i, align 4
  call void @ieee80211_iter_chan_contexts_atomic(ptr noundef %33, ptr noundef nonnull @ath10k_htt_rx_h_any_chan_iter, ptr noundef nonnull %def.i11) #16
  %34 = ptrtoint ptr %def.i11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %def.i11, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %def.i11) #16
  %tobool12.not = icmp eq ptr %35, null
  br i1 %tobool12.not, label %if.end14, label %if.end11.if.end14.thread_crit_edge

if.end11.if.end14.thread_crit_edge:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14.thread

if.end14.thread:                                  ; preds = %if.end11.if.end14.thread_crit_edge, %if.end7.if.end14.thread_crit_edge, %if.end3.if.end14.thread_crit_edge, %if.end.if.end14.thread_crit_edge, %entry.if.end14.thread_crit_edge
  %ch.4.ph = phi ptr [ %35, %if.end11.if.end14.thread_crit_edge ], [ %30, %if.end7.if.end14.thread_crit_edge ], [ %20, %if.end3.if.end14.thread_crit_edge ], [ %3, %if.end.if.end14.thread_crit_edge ], [ %1, %entry.if.end14.thread_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #16
  br label %if.end18

if.end14:                                         ; preds = %if.end11
  %tgt_oper_chan = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 59
  %36 = ptrtoint ptr %tgt_oper_chan to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tgt_oper_chan, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #16
  %tobool16.not = icmp eq ptr %37, null
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.end14.if.end18_crit_edge

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end18:                                         ; preds = %if.end14.if.end18_crit_edge, %if.end14.thread
  %ch.430 = phi ptr [ %ch.4.ph, %if.end14.thread ], [ %37, %if.end14.if.end18_crit_edge ]
  %38 = ptrtoint ptr %ch.430 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ch.430, align 4
  %conv = trunc i32 %39 to i8
  %band19 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 11
  %40 = ptrtoint ptr %band19 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv, ptr %band19, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %ch.430, i32 0, i32 1
  %41 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %center_freq, align 4
  %conv20 = trunc i32 %42 to i16
  %freq = getelementptr inbounds %struct.ieee80211_rx_status, ptr %status, i32 0, i32 5
  %43 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load = load i16, ptr %freq, align 4
  %bf.shl = shl i16 %conv20, 3
  %bf.clear = and i16 %bf.load, 7
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %freq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end14.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_mac_vif_chan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ath10k_mac_hw_rate_to_idx(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ath10k_htt_rx_amsdu_allowed(ptr noundef %ar, ptr noundef readonly %amsdu, ptr nocapture noundef readonly %rx_status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %freq = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 5
  %0 = ptrtoint ptr %freq to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %freq, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %bf.load)
  %tobool.not = icmp ult i16 %bf.load, 8
  br i1 %tobool.not, label %do.body, label %if.end3

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %1 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %do.body.return.sink.split_crit_edge

do.body.return.sink.split_crit_edge:              ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %return.sink.split

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_rx_amsdu_allowed, %return.sink.split)) #16
          to label %return [label %return.sink.split], !srcloc !313

if.end3:                                          ; preds = %entry
  %dev_flags = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 66
  %2 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %dev_flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  br i1 %tobool5.not, label %if.end15, label %do.body7

do.body7:                                         ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %4 = load i32, ptr @ath10k_debug_mask, align 4
  %and8 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %do.body7.return.sink.split_crit_edge

do.body7.return.sink.split_crit_edge:             ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #18
  br label %return.sink.split

lor.lhs.false10:                                  ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_rx_amsdu_allowed, %return.sink.split)) #16
          to label %return [label %return.sink.split], !srcloc !313

if.end15:                                         ; preds = %if.end3
  %decap_align_bytes.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 45, i32 19
  %5 = ptrtoint ptr %decap_align_bytes.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %decap_align_bytes.i, align 4
  %7 = ptrtoint ptr %amsdu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %amsdu, align 4
  %cmp.i.i = icmp eq ptr %8, %amsdu
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %rx_hdr_status.i = getelementptr i8, ptr %10, i32 -64
  %info0.i = getelementptr i8, ptr %10, i32 -296
  %11 = ptrtoint ptr %info0.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %info0.i, align 1
  %and.i = and i32 %12, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %13 = and i32 %12, 12582912
  call void @__sanitizer_cov_trace_const_cmp4(i32 12582912, i32 %13)
  %.not.i = icmp eq i32 %13, 12582912
  %brmerge.i = or i1 %.not.i, %tobool.not.i
  br i1 %brmerge.i, label %ath10k_htt_rx_validate_amsdu.exit, label %if.end14.i

if.end14.i:                                       ; preds = %if.end15
  %mpdu_start.i = getelementptr i8, ptr %10, i32 -344
  %14 = ptrtoint ptr %mpdu_start.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %mpdu_start.i, align 1
  %16 = lshr i32 %15, 4
  %shr.i = and i32 %16, 15
  %17 = ptrtoint ptr %rx_hdr_status.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %rx_hdr_status.i, align 2
  %call17.i = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %18) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %shr.i)
  %19 = icmp ult i32 %shr.i, 11
  br i1 %19, label %switch.hole_check, label %if.end14.i.sw.epilog.i.i_crit_edge

if.end14.i.sw.epilog.i.i_crit_edge:               ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %switch.hole_check.sw.epilog.i.i_crit_edge, %if.end14.i.sw.epilog.i.i_crit_edge
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.118, i32 noundef %shr.i) #16
  br label %ath10k_htt_rx_crypto_param_len.exit.i

switch.hole_check:                                ; preds = %if.end14.i
  %switch.maskindex = trunc i32 %shr.i to i16
  %switch.shifted = lshr i16 2007, %switch.maskindex
  %20 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %switch.lobit.not = icmp eq i16 %20, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog.i.i_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog.i.i_crit_edge:        ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.i.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #18
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.ath10k_htt_rx_amsdu_allowed, i32 0, i32 %shr.i
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ath10k_htt_rx_crypto_param_len.exit.i

ath10k_htt_rx_crypto_param_len.exit.i:            ; preds = %switch.lookup, %sw.epilog.i.i
  %retval.0.i.i = phi i32 [ 0, %sw.epilog.i.i ], [ %switch.load, %switch.lookup ]
  %sub.i = add i32 %call17.i, -1
  %sub19.i = add i32 %6, -1
  %or.i = or i32 %sub.i, %sub19.i
  %add.i = add i32 %or.i, 1
  %add.ptr20.i = getelementptr i8, ptr %rx_hdr_status.i, i32 %add.i
  %add.ptr21.i = getelementptr i8, ptr %add.ptr20.i, i32 %retval.0.i.i
  %22 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr21.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rfc1042_header to i32))
  %24 = load i32, ptr @rfc1042_header, align 4
  %xor.i.i = xor i32 %24, %23
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr21.i, i32 4
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i.i, align 2
  call void @__asan_load2_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x i8], ptr @rfc1042_header, i32 0, i32 4) to i32))
  %27 = load i16, ptr getelementptr inbounds ([6 x i8], ptr @rfc1042_header, i32 0, i32 4), align 2
  %xor31.i.i = xor i16 %27, %26
  %xor3.i.i = zext i16 %xor31.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i40.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i40.i.not, label %ath10k_htt_rx_crypto_param_len.exit.i.do.body18_crit_edge, label %ath10k_htt_rx_crypto_param_len.exit.i.return_crit_edge

ath10k_htt_rx_crypto_param_len.exit.i.return_crit_edge: ; preds = %ath10k_htt_rx_crypto_param_len.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

ath10k_htt_rx_crypto_param_len.exit.i.do.body18_crit_edge: ; preds = %ath10k_htt_rx_crypto_param_len.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body18

ath10k_htt_rx_validate_amsdu.exit:                ; preds = %if.end15
  br i1 %.not.i, label %ath10k_htt_rx_validate_amsdu.exit.return_crit_edge, label %ath10k_htt_rx_validate_amsdu.exit.do.body18_crit_edge

ath10k_htt_rx_validate_amsdu.exit.do.body18_crit_edge: ; preds = %ath10k_htt_rx_validate_amsdu.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body18

ath10k_htt_rx_validate_amsdu.exit.return_crit_edge: ; preds = %ath10k_htt_rx_validate_amsdu.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

do.body18:                                        ; preds = %ath10k_htt_rx_validate_amsdu.exit.do.body18_crit_edge, %ath10k_htt_rx_crypto_param_len.exit.i.do.body18_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %28 = load i32, ptr @ath10k_debug_mask, align 4
  %and19 = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %lor.lhs.false21, label %do.body18.return.sink.split_crit_edge

do.body18.return.sink.split_crit_edge:            ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #18
  br label %return.sink.split

lor.lhs.false21:                                  ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_rx_amsdu_allowed, %return.sink.split)) #16
          to label %return [label %return.sink.split], !srcloc !313

return.sink.split:                                ; preds = %lor.lhs.false21, %do.body18.return.sink.split_crit_edge, %lor.lhs.false10, %do.body7.return.sink.split_crit_edge, %lor.lhs.false, %do.body.return.sink.split_crit_edge
  %.str.117.sink = phi ptr [ @.str.115, %lor.lhs.false ], [ @.str.115, %do.body.return.sink.split_crit_edge ], [ @.str.116, %lor.lhs.false10 ], [ @.str.116, %do.body7.return.sink.split_crit_edge ], [ @.str.117, %lor.lhs.false21 ], [ @.str.117, %do.body18.return.sink.split_crit_edge ]
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 8, ptr noundef nonnull %.str.117.sink) #16
  br label %return

return:                                           ; preds = %return.sink.split, %lor.lhs.false21, %ath10k_htt_rx_validate_amsdu.exit.return_crit_edge, %ath10k_htt_rx_crypto_param_len.exit.i.return_crit_edge, %lor.lhs.false10, %lor.lhs.false
  %retval.0 = phi i1 [ true, %ath10k_htt_rx_validate_amsdu.exit.return_crit_edge ], [ false, %lor.lhs.false ], [ false, %lor.lhs.false10 ], [ true, %ath10k_htt_rx_crypto_param_len.exit.i.return_crit_edge ], [ false, %lor.lhs.false21 ], [ false, %return.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_htt_rx_crypto_param_len(ptr noundef %ar, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %type)
  %0 = icmp ult i32 %type, 11
  br i1 %0, label %switch.hole_check, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.hole_check.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.118, i32 noundef %type) #16
  br label %return

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %type to i16
  %switch.shifted = lshr i16 2007, %switch.maskindex
  %1 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %switch.lobit.not = icmp eq i16 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #18
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.ath10k_htt_rx_crypto_param_len, i32 0, i32 %type
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %sw.epilog
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ath10k_htt_rx_h_frag_pn_check(ptr noundef %ar, ptr nocapture noundef readonly %skb, i16 noundef zeroext %peer_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %peer_id to i32
  %call = tail call ptr @ath10k_peer_find_by_id(ptr noundef %ar, i32 noundef %conv) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %0 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %do.body.if.then4_crit_edge

do.body.if.then4_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then4

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_rx_h_frag_pn_check, %if.then4)) #16
          to label %cleanup [label %if.then4], !srcloc !313

if.then4:                                         ; preds = %lor.lhs.false, %do.body.if.then4_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 8, ptr noundef nonnull @.str.119) #16
  br label %cleanup

if.end5:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 2
  %5 = and i16 %4, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %5)
  %cmp.i = icmp eq i16 %5, -30720
  br i1 %cmp.i, label %if.then8, label %if.end5.if.end10_crit_edge

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %6 = and i16 %4, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %6)
  %cmp.i.i.i = icmp eq i16 %6, 3
  %retval.0.v.i.i = select i1 %cmp.i.i.i, i32 30, i32 24
  %retval.0.i.i = getelementptr i8, ptr %2, i32 %retval.0.v.i.i
  %7 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %retval.0.i.i, align 1
  %9 = and i8 %8, 15
  %phi.cast = zext i8 %9 to i32
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5.if.end10_crit_edge
  %tid.0 = phi i32 [ %phi.cast, %if.then8 ], [ 16, %if.end5.if.end10_crit_edge ]
  %arrayidx = getelementptr %struct.ath10k_peer, ptr %call, i32 0, i32 10, i32 %tid.0
  %call.i = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %4) #20
  %add.ptr4.i = getelementptr i8, ptr %2, i32 %call.i
  %arrayidx7.i = getelementptr i8, ptr %add.ptr4.i, i32 1
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %11 to i64
  %shl.i = shl nuw nsw i64 %conv8.i, 8
  %12 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr4.i, align 1
  %conv6.i = zext i8 %13 to i64
  %or.i = or i64 %shl.i, %conv6.i
  %arrayidx9.i = getelementptr i8, ptr %add.ptr4.i, i32 4
  %14 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %15 to i64
  %shl11.i = shl nuw nsw i64 %conv10.i, 16
  %or12.i = or i64 %or.i, %shl11.i
  %arrayidx13.i = getelementptr i8, ptr %add.ptr4.i, i32 5
  %16 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %17 to i64
  %shl15.i = shl nuw nsw i64 %conv14.i, 24
  %or16.i = or i64 %or12.i, %shl15.i
  %arrayidx17.i = getelementptr i8, ptr %add.ptr4.i, i32 6
  %18 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx17.i, align 1
  %conv18.i = zext i8 %19 to i64
  %shl19.i = shl nuw nsw i64 %conv18.i, 32
  %or20.i = or i64 %or16.i, %shl19.i
  %arrayidx21.i = getelementptr i8, ptr %add.ptr4.i, i32 7
  %20 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %21 to i64
  %shl23.i = shl nuw nsw i64 %conv22.i, 40
  %or24.i = or i64 %or20.i, %shl23.i
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %2, i32 0, i32 5
  %22 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %seq_ctrl, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %25 = and i16 %24, 15
  %26 = lshr i16 %24, 4
  %27 = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp = icmp eq i16 %25, 0
  br i1 %cmp, label %if.then20, label %if.else23

if.then20:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %or24.i, ptr %arrayidx, align 8
  %arrayidx22 = getelementptr %struct.ath10k_peer, ptr %call, i32 0, i32 11, i32 %tid.0
  %29 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %27, ptr %arrayidx22, align 4
  br label %cleanup

if.else23:                                        ; preds = %if.end10
  %arrayidx26 = getelementptr %struct.ath10k_peer, ptr %call, i32 0, i32 11, i32 %tid.0
  %30 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %27)
  %cmp27.not = icmp eq i32 %31, %27
  br i1 %cmp27.not, label %if.end30, label %if.else23.cleanup_crit_edge

if.else23.cleanup_crit_edge:                      ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end30:                                         ; preds = %if.else23
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx, align 8
  %add = add i64 %33, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %or24.i, i64 %add)
  %cmp31.not = icmp eq i64 %or24.i, %add
  br i1 %cmp31.not, label %if.end34, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %or24.i, ptr %arrayidx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end30.cleanup_crit_edge, %if.else23.cleanup_crit_edge, %if.then20, %if.then4, %lor.lhs.false
  %retval.0 = phi i1 [ false, %if.then4 ], [ false, %if.else23.cleanup_crit_edge ], [ false, %if.end30.cleanup_crit_edge ], [ true, %if.end34 ], [ true, %if.then20 ], [ false, %lor.lhs.false ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_sta_update_rx_tid_stats(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ath10k_htt_rx_netbuf_pop(ptr noundef %htt) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 12, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !308

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 314, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %fill_cnt = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 8
  %3 = ptrtoint ptr %fill_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fill_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp26 = icmp eq i32 %4, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.122) #16
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %rx_ring25 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10
  %sw_rd_idx = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 10
  %5 = ptrtoint ptr %sw_rd_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sw_rd_idx, align 8
  %7 = ptrtoint ptr %rx_ring25 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_ring25, align 8
  %arrayidx = getelementptr ptr, ptr %8, i32 %6
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  store ptr null, ptr %arrayidx, align 4
  %rx_ops.i = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 30
  %11 = ptrtoint ptr %rx_ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_ops.i, align 4
  %htt_reset_paddrs_ring.i = getelementptr inbounds %struct.ath10k_htt_rx_ops, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %htt_reset_paddrs_ring.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %htt_reset_paddrs_ring.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end28.ath10k_htt_reset_paddrs_ring.exit_crit_edge, label %if.then.i

if.end28.ath10k_htt_reset_paddrs_ring.exit_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_reset_paddrs_ring.exit

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %14(ptr noundef %htt, i32 noundef %6) #16
  br label %ath10k_htt_reset_paddrs_ring.exit

ath10k_htt_reset_paddrs_ring.exit:                ; preds = %if.then.i, %if.end28.ath10k_htt_reset_paddrs_ring.exit_crit_edge
  %inc = add i32 %6, 1
  %size_mask = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 6
  %15 = ptrtoint ptr %size_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size_mask, align 4
  %and = and i32 %16, %inc
  %17 = ptrtoint ptr %sw_rd_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and, ptr %sw_rd_idx, align 8
  %18 = ptrtoint ptr %fill_cnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fill_cnt, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %fill_cnt, align 4
  %20 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %htt, align 8
  %dev = getelementptr inbounds %struct.ath10k, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 3
  %24 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cb.i, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 6
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 7
  %28 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not.i = icmp eq i32 %29, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %ath10k_htt_reset_paddrs_ring.exit.skb_tailroom.exit_crit_edge

ath10k_htt_reset_paddrs_ring.exit.skb_tailroom.exit_crit_edge: ; preds = %ath10k_htt_reset_paddrs_ring.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %ath10k_htt_reset_paddrs_ring.exit
  call void @__sanitizer_cov_trace_pc() #18
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 17
  %30 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 16
  %32 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %ath10k_htt_reset_paddrs_ring.exit.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %ath10k_htt_reset_paddrs_ring.exit.skb_tailroom.exit_crit_edge ]
  %add = add i32 %cond.i, %27
  tail call void @dma_unmap_page_attrs(ptr noundef %23, i32 noundef %25, i32 noundef %add, i32 noundef 2, i32 noundef 0) #16
  %data = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 19
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len, align 4
  %38 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.i.not.i72 = icmp eq i32 %39, 0
  br i1 %tobool.i.not.i72, label %cond.false.i78, label %skb_tailroom.exit.skb_tailroom.exit80_crit_edge

skb_tailroom.exit.skb_tailroom.exit80_crit_edge:  ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_tailroom.exit80

cond.false.i78:                                   ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #18
  %end.i73 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 17
  %40 = ptrtoint ptr %end.i73 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %end.i73, align 4
  %tail.i74 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 16
  %42 = ptrtoint ptr %tail.i74 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tail.i74, align 8
  %sub.ptr.lhs.cast.i75 = ptrtoint ptr %41 to i32
  %sub.ptr.rhs.cast.i76 = ptrtoint ptr %43 to i32
  %sub.ptr.sub.i77 = sub i32 %sub.ptr.lhs.cast.i75, %sub.ptr.rhs.cast.i76
  br label %skb_tailroom.exit80

skb_tailroom.exit80:                              ; preds = %cond.false.i78, %skb_tailroom.exit.skb_tailroom.exit80_crit_edge
  %cond.i79 = phi i32 [ %sub.ptr.sub.i77, %cond.false.i78 ], [ 0, %skb_tailroom.exit.skb_tailroom.exit80_crit_edge ]
  %add45 = add i32 %cond.i79, %37
  tail call void @ath10k_dbg_dump(ptr noundef %1, i32 noundef 128, ptr noundef null, ptr noundef nonnull @.str.104, ptr noundef %35, i32 noundef %add45) #16
  br label %cleanup

cleanup:                                          ; preds = %skb_tailroom.exit80, %if.then27
  %retval.0 = phi ptr [ null, %if.then27 ], [ %10, %skb_tailroom.exit80 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_txq_schedule_start(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_txq_may_transmit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_mac_tx_push_txq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_return_txq(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_htt_tx_txq_recalc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_htt_tx_fetch_resp(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_htt_tx_txq_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ath10k_htt_rx_proc_rx_frag_ind_hl(ptr nocapture noundef readonly %htt, ptr nocapture noundef readonly %rx, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htt, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 16) #16
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %sub = add i32 %5, -4
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub) #16
  %peer_id2 = getelementptr inbounds %struct.htt_rx_fragment_indication, ptr %rx, i32 0, i32 1
  %6 = ptrtoint ptr %peer_id2 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %peer_id2, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %9 = getelementptr i8, ptr %3, i32 17
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #16
  %conv = zext i16 %8 to i32
  %call3 = tail call ptr @ath10k_peer_find_by_id(ptr noundef %1, i32 noundef %conv) #16
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %10 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %do.body.if.then7_crit_edge

do.body.if.then7_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htt_rx_proc_rx_frag_ind_hl, %if.then7)) #16
          to label %err [label %if.then7], !srcloc !313

if.then7:                                         ; preds = %lor.lhs.false, %do.body.if.then7_crit_edge
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.131, i32 noundef %conv) #16
  br label %err

if.end9:                                          ; preds = %entry
  %info1 = getelementptr i8, ptr %3, i32 20
  %11 = ptrtoint ptr %info1 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %info1, align 1
  %13 = shl i32 %12, 2
  %mul = and i32 %13, 1020
  %add = add nuw nsw i32 %mul, 52
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %9, align 1
  %16 = and i8 %15, 31
  %and14 = zext i8 %16 to i32
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %add.ptr17 = getelementptr i8, ptr %18, i32 %add
  %19 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %add.ptr17, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %len18 = getelementptr i8, ptr %3, i32 66
  %22 = ptrtoint ptr %len18 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %len18, align 1
  %conv19 = zext i8 %23 to i32
  %add.ptr20 = getelementptr i8, ptr %add.ptr17, i32 %conv19
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr20, i32 0, i32 2
  %24 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr1, align 4
  %26 = and i32 %25, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not = icmp eq i32 %26, 0
  br i1 %tobool.i.not, label %if.end23, label %if.end9.err_crit_edge

if.end9.err_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

if.end23:                                         ; preds = %if.end9
  %27 = and i32 %21, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool26.not = icmp eq i32 %27, 0
  br i1 %tobool26.not, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #16
  %call29 = tail call fastcc zeroext i1 @ath10k_htt_rx_proc_rx_ind_hl(ptr noundef %htt, ptr noundef %9, ptr noundef %skb, i32 noundef 0, i32 noundef 0)
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  %28 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr20, align 2
  %30 = and i16 %29, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp.i.not = icmp eq i16 %30, 0
  br i1 %cmp.i.not, label %if.end33, label %if.end30.err_crit_edge

if.end30.err_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

if.end33:                                         ; preds = %if.end30
  %call35 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %29) #20
  %conv36 = trunc i32 %call35 to i16
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %add.ptr20, i32 0, i32 5
  %31 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %seq_ctrl, align 2
  %33 = tail call i16 @llvm.bswap.i16(i16 %32)
  %conv37 = zext i16 %33 to i32
  %34 = lshr i32 %conv37, 4
  %and41 = and i32 %conv37, 15
  %35 = lshr i32 %21, 16
  %.lobit = and i32 %35, 1
  %36 = xor i32 %.lobit, 1
  %arrayidx = getelementptr %struct.ath10k_peer, ptr %call3, i32 0, i32 12, i32 %36
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx, align 4
  %pn_len = getelementptr %struct.ath10k_peer, ptr %call3, i32 0, i32 12, i32 %36, i32 1
  %39 = ptrtoint ptr %pn_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pn_len, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %40, label %if.end33.ath10k_htt_rx_mpdu_desc_pn_hl.exit_crit_edge [
    i32 48, label %sw.bb.i
    i32 24, label %sw.bb2.i
  ]

if.end33.ath10k_htt_rx_mpdu_desc_pn_hl.exit_crit_edge: ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_htt_rx_mpdu_desc_pn_hl.exit

sw.bb.i:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  %pn_31_0.i = getelementptr inbounds %struct.htt_hl_rx_desc, ptr %add.ptr17, i32 0, i32 1
  %42 = ptrtoint ptr %pn_31_0.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %pn_31_0.i, align 1
  %u0.i = getelementptr inbounds %struct.htt_hl_rx_desc, ptr %add.ptr17, i32 0, i32 2
  %44 = ptrtoint ptr %u0.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %u0.i, align 1
  %46 = and i32 %45, -65536
  %47 = zext i32 %46 to i64
  %48 = zext i32 %43 to i64
  %49 = shl nuw i64 %48, 32
  %50 = or i64 %49, %47
  %51 = tail call i64 @llvm.bswap.i64(i64 %50) #16
  %new_pn.sroa.0.sroa.0.0.extract.shift = lshr i64 %51, 32
  %new_pn.sroa.0.sroa.0.0.extract.trunc = trunc i64 %new_pn.sroa.0.sroa.0.0.extract.shift to i32
  %new_pn.sroa.0.sroa.8.0.extract.trunc = trunc i64 %51 to i32
  br label %ath10k_htt_rx_mpdu_desc_pn_hl.exit

sw.bb2.i:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  %pn_31_03.i = getelementptr inbounds %struct.htt_hl_rx_desc, ptr %add.ptr17, i32 0, i32 1
  %52 = ptrtoint ptr %pn_31_03.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %pn_31_03.i, align 1
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #16
  br label %ath10k_htt_rx_mpdu_desc_pn_hl.exit

ath10k_htt_rx_mpdu_desc_pn_hl.exit:               ; preds = %sw.bb2.i, %sw.bb.i, %if.end33.ath10k_htt_rx_mpdu_desc_pn_hl.exit_crit_edge
  %new_pn.sroa.0.sroa.0.0 = phi i32 [ 0, %if.end33.ath10k_htt_rx_mpdu_desc_pn_hl.exit_crit_edge ], [ %54, %sw.bb2.i ], [ %new_pn.sroa.0.sroa.0.0.extract.trunc, %sw.bb.i ]
  %new_pn.sroa.0.sroa.8.0 = phi i32 [ -1, %if.end33.ath10k_htt_rx_mpdu_desc_pn_hl.exit_crit_edge ], [ -1, %sw.bb2.i ], [ %new_pn.sroa.0.sroa.8.0.extract.trunc, %sw.bb.i ]
  %55 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %38, label %ath10k_htt_rx_mpdu_desc_pn_hl.exit.if.then94_crit_edge [
    i32 4, label %sw.bb
    i32 5, label %sw.bb57
    i32 6, label %sw.bb67
    i32 1, label %ath10k_htt_rx_mpdu_desc_pn_hl.exit.sw.bb77_crit_edge
    i32 2, label %ath10k_htt_rx_mpdu_desc_pn_hl.exit.sw.bb77_crit_edge253
    i32 3, label %ath10k_htt_rx_mpdu_desc_pn_hl.exit.sw.bb77_crit_edge254
  ]

ath10k_htt_rx_mpdu_desc_pn_hl.exit.sw.bb77_crit_edge254: ; preds = %ath10k_htt_rx_mpdu_desc_pn_hl.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb77

ath10k_htt_rx_mpdu_desc_pn_hl.exit.sw.bb77_crit_edge253: ; preds = %ath10k_htt_rx_mpdu_desc_pn_hl.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb77

ath10k_htt_rx_mpdu_desc_pn_hl.exit.sw.bb77_crit_edge: ; preds = %ath10k_htt_rx_mpdu_desc_pn_hl.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb77

ath10k_htt_rx_mpdu_desc_pn_hl.exit.if.then94_crit_edge: ; preds = %ath10k_htt_rx_mpdu_desc_pn_hl.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then94

sw.bb:                                            ; preds = %ath10k_htt_rx_mpdu_desc_pn_hl.exit
  %add51 = add nuw nsw i32 %add, %conv19
  %conv52 = trunc i32 %add51 to i16
  %call53 = tail call fastcc i32 @ath10k_htt_rx_frag_tkip_decap_withmic(ptr noundef %skb, i16 noundef zeroext %conv52, i16 noundef zeroext %conv36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %sw.bb.if.end97_crit_edge, label %sw.bb.err_crit_edge

sw.bb.err_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

sw.bb.if.end97_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end97

sw.bb57:                                          ; preds = %ath10k_htt_rx_mpdu_desc_pn_hl.exit
  %add61 = add nuw nsw i32 %add, %conv19
  %conv62 = trunc i32 %add61 to i16
  %call63 = tail call fastcc i32 @ath10k_htt_rx_frag_tkip_decap_nomic(ptr noundef %skb, i16 noundef zeroext %conv62, i16 noundef zeroext %conv36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %sw.bb57.if.end97_crit_edge, label %sw.bb57.err_crit_edge

sw.bb57.err_crit_edge:                            ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

sw.bb57.if.end97_crit_edge:                       ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end97

sw.bb67:                                          ; preds = %ath10k_htt_rx_mpdu_desc_pn_hl.exit
  %add71 = add nuw nsw i32 %add, %conv19
  %conv72 = trunc i32 %add71 to i16
  %call73 = tail call fastcc i32 @ath10k_htt_rx_frag_ccmp_decap(ptr noundef %skb, i16 noundef zeroext %conv72, i16 noundef zeroext %conv36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end97.thread, label %sw.bb67.err_crit_edge

sw.bb67.err_crit_edge:                            ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

sw.bb77:                                          ; preds = %ath10k_htt_rx_mpdu_desc_pn_hl.exit.sw.bb77_crit_edge, %ath10k_htt_rx_mpdu_desc_pn_hl.exit.sw.bb77_crit_edge253, %ath10k_htt_rx_mpdu_desc_pn_hl.exit.sw.bb77_crit_edge254
  %add81 = add nuw nsw i32 %add, %conv19
  %add.ptr.i = getelementptr i8, ptr %18, i32 4
  %conv1.i = and i32 %call35, 65535
  %add.i = add nuw nsw i32 %add81, %conv1.i
  %56 = call ptr @memmove(ptr %add.ptr.i, ptr %18, i32 %add.i)
  %call.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #16
  %57 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len, align 4
  %sub.i = add i32 %58, -4
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.i) #16
  br label %if.then94

if.then94:                                        ; preds = %sw.bb77, %ath10k_htt_rx_mpdu_desc_pn_hl.exit.if.then94_crit_edge
  %59 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #16
  %61 = getelementptr inbounds %struct.htt_resp, ptr %60, i32 0, i32 1
  %call96 = tail call fastcc zeroext i1 @ath10k_htt_rx_proc_rx_ind_hl(ptr noundef %htt, ptr noundef %61, ptr noundef %skb, i32 noundef 0, i32 noundef 0)
  br label %cleanup

if.end97:                                         ; preds = %sw.bb57.if.end97_crit_edge, %sw.bb.if.end97_crit_edge
  %tkip_mic.0.ph = phi i32 [ 1, %sw.bb.if.end97_crit_edge ], [ 0, %sw.bb57.if.end97_crit_edge ]
  %62 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data, align 4
  %arrayidx98 = getelementptr %struct.ath10k_peer, ptr %call3, i32 0, i32 10, i32 %and14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %cmp99 = icmp eq i32 %and41, 0
  br i1 %cmp99, label %if.end97.if.then101_crit_edge, label %if.end97.if.end122_crit_edge

if.end97.if.end122_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end122

if.end97.if.then101_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then101

if.end97.thread:                                  ; preds = %sw.bb67
  %64 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data, align 4
  %arrayidx98241 = getelementptr %struct.ath10k_peer, ptr %call3, i32 0, i32 10, i32 %and14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %cmp99242 = icmp eq i32 %and41, 0
  br i1 %cmp99242, label %if.end97.thread.if.then101_crit_edge, label %if.then108

if.end97.thread.if.then101_crit_edge:             ; preds = %if.end97.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then101

if.then101:                                       ; preds = %if.end97.thread.if.then101_crit_edge, %if.end97.if.then101_crit_edge
  %arrayidx98247 = phi ptr [ %arrayidx98241, %if.end97.thread.if.then101_crit_edge ], [ %arrayidx98, %if.end97.if.then101_crit_edge ]
  %66 = phi ptr [ %65, %if.end97.thread.if.then101_crit_edge ], [ %63, %if.end97.if.then101_crit_edge ]
  %tkip_mic.0.ph245 = phi i32 [ 0, %if.end97.thread.if.then101_crit_edge ], [ %tkip_mic.0.ph, %if.end97.if.then101_crit_edge ]
  %67 = getelementptr inbounds %struct.htt_resp, ptr %66, i32 0, i32 1
  %call102 = tail call fastcc zeroext i1 @ath10k_htt_rx_pn_check_replay_hl(ptr noundef %1, ptr noundef nonnull %call3, ptr noundef %67)
  br i1 %call102, label %if.then101.err_crit_edge, label %if.end104

if.then101.err_crit_edge:                         ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

if.end104:                                        ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #18
  %new_pn.sroa.0.sroa.8.0.insert.ext = zext i32 %new_pn.sroa.0.sroa.8.0 to i64
  %new_pn.sroa.0.sroa.0.0.insert.ext = zext i32 %new_pn.sroa.0.sroa.0.0 to i64
  %new_pn.sroa.0.sroa.0.0.insert.shift = shl nuw i64 %new_pn.sroa.0.sroa.0.0.insert.ext, 32
  %new_pn.sroa.0.sroa.0.0.insert.insert = or i64 %new_pn.sroa.0.sroa.0.0.insert.shift, %new_pn.sroa.0.sroa.8.0.insert.ext
  %68 = ptrtoint ptr %arrayidx98247 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %new_pn.sroa.0.sroa.0.0.insert.insert, ptr %arrayidx98247, align 8
  %arrayidx105 = getelementptr %struct.ath10k_peer, ptr %call3, i32 0, i32 11, i32 %and14
  %69 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %34, ptr %arrayidx105, align 4
  br label %if.end122

if.then108:                                       ; preds = %if.end97.thread
  %arrayidx110 = getelementptr %struct.ath10k_peer, ptr %call3, i32 0, i32 11, i32 %and14
  %70 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx110, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %71)
  %cmp111.not = icmp eq i32 %34, %71
  br i1 %cmp111.not, label %if.end114, label %if.then108.err_crit_edge

if.then108.err_crit_edge:                         ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

if.end114:                                        ; preds = %if.then108
  %new_pn.sroa.0.sroa.8.0.insert.ext228 = zext i32 %new_pn.sroa.0.sroa.8.0 to i64
  %new_pn.sroa.0.sroa.0.0.insert.ext218 = zext i32 %new_pn.sroa.0.sroa.0.0 to i64
  %new_pn.sroa.0.sroa.0.0.insert.shift219 = shl nuw i64 %new_pn.sroa.0.sroa.0.0.insert.ext218, 32
  %new_pn.sroa.0.sroa.0.0.insert.insert221 = or i64 %new_pn.sroa.0.sroa.0.0.insert.shift219, %new_pn.sroa.0.sroa.8.0.insert.ext228
  %72 = ptrtoint ptr %arrayidx98241 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx98241, align 8
  %add115 = add i64 %73, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %new_pn.sroa.0.sroa.0.0.insert.insert221, i64 %add115)
  %cmp116.not = icmp eq i64 %new_pn.sroa.0.sroa.0.0.insert.insert221, %add115
  br i1 %cmp116.not, label %if.end119, label %if.end114.err_crit_edge

if.end114.err_crit_edge:                          ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

if.end119:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #18
  %74 = ptrtoint ptr %arrayidx98241 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %new_pn.sroa.0.sroa.0.0.insert.insert221, ptr %arrayidx98241, align 8
  %arrayidx120 = getelementptr %struct.ath10k_peer, ptr %call3, i32 0, i32 8, i32 %and14
  %75 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %new_pn.sroa.0.sroa.0.0.insert.insert221, ptr %arrayidx120, align 8
  br label %if.end122

if.end122:                                        ; preds = %if.end119, %if.end104, %if.end97.if.end122_crit_edge
  %tkip_mic.0.ph243 = phi i32 [ 0, %if.end119 ], [ %tkip_mic.0.ph245, %if.end104 ], [ %tkip_mic.0.ph, %if.end97.if.end122_crit_edge ]
  %76 = phi ptr [ %65, %if.end119 ], [ %66, %if.end104 ], [ %63, %if.end97.if.end122_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #16
  %77 = getelementptr inbounds %struct.htt_resp, ptr %76, i32 0, i32 1
  %call124 = tail call fastcc zeroext i1 @ath10k_htt_rx_proc_rx_ind_hl(ptr noundef %htt, ptr noundef %77, ptr noundef %skb, i32 noundef 0, i32 noundef %tkip_mic.0.ph243)
  br label %cleanup

err:                                              ; preds = %if.end114.err_crit_edge, %if.then108.err_crit_edge, %if.then101.err_crit_edge, %sw.bb67.err_crit_edge, %sw.bb57.err_crit_edge, %sw.bb.err_crit_edge, %if.end30.err_crit_edge, %if.end9.err_crit_edge, %if.then7, %lor.lhs.false
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #16
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end122, %if.then94, %if.then27
  %retval.0 = phi i1 [ true, %err ], [ %call96, %if.then94 ], [ %call124, %if.end122 ], [ %call29, %if.then27 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_htt_rx_frag_tkip_decap_withmic(ptr noundef %skb, i16 noundef zeroext %head_len, i16 noundef zeroext %hdr_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %conv = zext i16 %hdr_len to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %conv1 = zext i16 %head_len to i32
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %conv1
  %arrayidx = getelementptr i8, ptr %add.ptr2, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr4 = getelementptr i8, ptr %1, i32 8
  %add = add nuw nsw i32 %conv, %conv1
  %5 = call ptr @memmove(ptr %add.ptr4, ptr %1, i32 %add)
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 8) #16
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %sub = add i32 %7, -4
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_htt_rx_frag_tkip_decap_nomic(ptr noundef %skb, i16 noundef zeroext %head_len, i16 noundef zeroext %hdr_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %conv = zext i16 %hdr_len to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %conv1 = zext i16 %head_len to i32
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %conv1
  %arrayidx = getelementptr i8, ptr %add.ptr2, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr4 = getelementptr i8, ptr %1, i32 8
  %add = add nuw nsw i32 %conv, %conv1
  %5 = call ptr @memmove(ptr %add.ptr4, ptr %1, i32 %add)
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 8) #16
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %sub = add i32 %7, -8
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_htt_rx_frag_ccmp_decap(ptr noundef %skb, i16 noundef zeroext %head_len, i16 noundef zeroext %hdr_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %conv = zext i16 %hdr_len to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %conv1 = zext i16 %head_len to i32
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %conv1
  %arrayidx = getelementptr i8, ptr %add.ptr2, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %sub = add i32 %6, -8
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub) #16
  %add.ptr4 = getelementptr i8, ptr %1, i32 8
  %add = add nuw nsw i32 %conv, %conv1
  %7 = call ptr @memmove(ptr %add.ptr4, ptr %1, i32 %add)
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 8) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath10k_htt_get_rx_ring_size_64(ptr nocapture noundef readonly %htt) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 5
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 8
  %mul = shl i32 %1, 2
  ret i32 %mul
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ath10k_htt_config_paddrs_ring_64(ptr nocapture noundef writeonly %htt, ptr noundef %vaddr) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 3
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %vaddr, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ath10k_htt_set_paddrs_ring_64(ptr nocapture noundef readonly %htt, i32 noundef %paddr, i32 noundef %idx) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %paddr to i64
  %0 = tail call i64 @llvm.bswap.i64(i64 %conv)
  %1 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 3
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %arrayidx = getelementptr i64, ptr %3, i32 %idx
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %0, ptr %arrayidx, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ath10k_htt_get_vaddr_ring_64(ptr nocapture noundef readonly %htt) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 3
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ath10k_htt_reset_paddrs_ring_64(ptr nocapture noundef readonly %htt, i32 noundef %idx) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 3
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %arrayidx = getelementptr i64, ptr %2, i32 %idx
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %arrayidx, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath10k_htt_get_rx_ring_size_32(ptr nocapture noundef readonly %htt) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 5
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 8
  %mul = shl i32 %1, 2
  ret i32 %mul
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ath10k_htt_config_paddrs_ring_32(ptr nocapture noundef writeonly %htt, ptr noundef %vaddr) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 3
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %vaddr, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ath10k_htt_set_paddrs_ring_32(ptr nocapture noundef readonly %htt, i32 noundef %paddr, i32 noundef %idx) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %paddr)
  %1 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 3
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %arrayidx = getelementptr i32, ptr %3, i32 %idx
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %0, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @ath10k_htt_get_vaddr_ring_32(ptr nocapture noundef readonly %htt) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 3
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ath10k_htt_reset_paddrs_ring_32(ptr nocapture noundef readonly %htt, i32 noundef %idx) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ath10k_htt, ptr %htt, i32 0, i32 10, i32 3
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %arrayidx = getelementptr i32, ptr %2, i32 %idx
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 143)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !50, !52, !53, !55, !57, !59, !61, !63, !64, !65, !67, !68, !70, !72, !73, !74, !75, !77, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !212, !214, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296}
!llvm.named.register.sp = !{!298}
!llvm.module.flags = !{!299, !300, !301, !302, !303, !304, !305, !306}
!llvm.ident = !{!307}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 773, i32 19}
!2 = !{ptr @ath10k_htt_rx_alloc.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 804, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ath10k_htt_rx_alloc.__key.2, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 806, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 817, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3949, i32 19}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3951, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3955, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 4044, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 4053, i32 50}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 4072, i32 19}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 4112, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 4120, i32 4}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 4132, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 4143, i32 20}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 4160, i32 19}
!32 = !{ptr @__ksymtab_ath10k_htt_t2h_msg_handler, !33, !"__ksymtab_ath10k_htt_t2h_msg_handler", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 4168, i32 1}
!34 = !{ptr @__ksymtab_ath10k_htt_rx_pktlog_completion_handler, !35, !"__ksymtab_ath10k_htt_rx_pktlog_completion_handler", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 4176, i32 1}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 4220, i32 3}
!38 = !{ptr @__ksymtab_ath10k_htt_rx_hl_indication, !39, !"__ksymtab_ath10k_htt_rx_hl_indication", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 4225, i32 1}
!40 = !{ptr @__ksymtab_ath10k_htt_txrx_compl_task, !41, !"__ksymtab_ath10k_htt_txrx_compl_task", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 4308, i32 1}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 208, i32 2}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 147, i32 23}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @skb_queue_head_init.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 2813, i32 49}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 2854, i32 19}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 2859, i32 2}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 2899, i32 20}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!63 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!67 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3919, i32 19}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/ath10k/trace.h", i32 207, i32 1}
!72 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!73 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!74 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!77 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 2962, i32 2}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 2969, i32 19}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 2977, i32 19}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 2983, i32 2}
!86 = distinct !{null, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../include/net/mac80211.h", i32 6209, i32 6}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3002, i32 2}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3023, i32 2}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/ath10k/trace.h", i32 264, i32 1}
!94 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3865, i32 19}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3684, i32 19}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3690, i32 19}
!101 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3718, i32 11}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3772, i32 3}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3777, i32 2}
!107 = distinct !{null, !108, !"legacy_rates", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3521, i32 18}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3530, i32 18}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 1998, i32 10}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 2000, i32 10}
!115 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 2002, i32 10}
!117 = !{ptr @.str.49, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 2004, i32 10}
!119 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 2006, i32 10}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 2008, i32 10}
!123 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 2010, i32 10}
!125 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 2012, i32 10}
!127 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 2014, i32 10}
!129 = !{ptr @.str.55, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 2016, i32 10}
!131 = !{ptr @.str.56, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 2018, i32 10}
!133 = !{ptr @.str.57, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 2020, i32 10}
!135 = !{ptr @.str.58, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 2022, i32 10}
!137 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 2024, i32 10}
!139 = !{ptr @.str.60, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 2026, i32 10}
!141 = !{ptr @.str.61, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 2028, i32 10}
!143 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 2038, i32 9}
!145 = !{ptr @.str.63, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3385, i32 2}
!147 = !{ptr @.str.64, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3389, i32 19}
!149 = !{ptr @.str.65, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3397, i32 19}
!151 = !{ptr @.str.66, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3232, i32 2}
!153 = !{ptr @.str.67, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3238, i32 3}
!155 = !{ptr @.str.68, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3424, i32 2}
!157 = !{ptr @.str.69, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3428, i32 19}
!159 = !{ptr @.str.70, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3440, i32 2}
!161 = !{ptr @.str.71, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3447, i32 19}
!163 = !{ptr @.str.72, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3456, i32 19}
!165 = !{ptr @.str.73, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3478, i32 20}
!167 = !{ptr @.str.74, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3492, i32 20}
!169 = !{ptr @.str.75, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3799, i32 19}
!171 = !{ptr @.str.76, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3811, i32 19}
!173 = !{ptr @.str.77, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 2365, i32 19}
!175 = !{ptr @.str.78, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 2377, i32 3}
!177 = !{ptr @.str.79, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 2387, i32 8}
!179 = !{ptr @.str.80, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 2394, i32 3}
!181 = !{ptr @.str.81, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 1309, i32 2}
!183 = !{ptr @.str.82, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.83, !182, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.84, !182, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.85, !182, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.86, !182, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.87, !182, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.88, !182, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.89, !182, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.90, !182, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.91, !182, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.92, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 1332, i32 49}
!195 = !{ptr @.str.93, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 1275, i32 23}
!197 = !{ptr @.str.94, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 1277, i32 23}
!199 = !{ptr @.str.95, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 1254, i32 2}
!201 = !{ptr @.str.96, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 1255, i32 2}
!203 = !{ptr @.str.97, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 1258, i32 2}
!205 = !{ptr @.str.98, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 1260, i32 2}
!207 = !{ptr @tid_to_ac, !208, !"tid_to_ac", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 1253, i32 27}
!209 = distinct !{null, !210, !"__already_done", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/ath/ath10k/trace.h", i32 420, i32 1}
!211 = distinct !{null, !210, !"__warned", i1 false, i1 false}
!212 = distinct !{null, !213, !"__already_done", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/ath/ath10k/trace.h", i32 425, i32 1}
!214 = distinct !{null, !213, !"__warned", i1 false, i1 false}
!215 = !{ptr @.str.99, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3163, i32 2}
!217 = !{ptr @.str.100, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3168, i32 19}
!219 = !{ptr @.str.101, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3184, i32 19}
!221 = !{ptr @.str.102, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3216, i32 20}
!223 = !{ptr @.str.103, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 741, i32 26}
!225 = !{ptr @.str.104, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 463, i32 49}
!227 = distinct !{null, !228, !"__already_done", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 35, i32 2}
!229 = !{ptr @.str.105, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 578, i32 20}
!231 = !{ptr @.str.106, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 589, i32 19}
!233 = !{ptr @.str.107, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 604, i32 20}
!235 = distinct !{null, !236, !"__already_done", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/ath/ath10k/trace.h", i32 430, i32 1}
!237 = distinct !{null, !236, !"__warned", i1 false, i1 false}
!238 = !{ptr @.str.108, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 513, i32 19}
!240 = !{ptr @.str.109, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 528, i32 20}
!242 = !{ptr @.str.110, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3102, i32 20}
!244 = distinct !{null, !245, !"__already_done", i1 false, i1 false}
!245 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 1088, i32 6}
!246 = !{ptr @.str.111, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 1023, i32 20}
!248 = !{ptr @.str.112, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 1024, i32 20}
!250 = !{ptr @.str.113, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 1036, i32 20}
!252 = !{ptr @.str.114, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 1041, i32 6}
!254 = !{ptr @.str.115, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 2166, i32 3}
!256 = !{ptr @.str.116, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 2171, i32 3}
!258 = !{ptr @.str.117, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 2176, i32 3}
!260 = !{ptr @.str.118, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 856, i32 18}
!262 = !{ptr @.str.119, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 1795, i32 3}
!264 = distinct !{null, !265, !"__already_done", i1 false, i1 false}
!265 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 1396, i32 6}
!266 = distinct !{null, !267, !"__already_done", i1 false, i1 false}
!267 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 1400, i32 6}
!268 = distinct !{null, !269, !"__already_done", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 1593, i32 6}
!270 = !{ptr @.str.121, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 2224, i32 19}
!272 = !{ptr @.str.122, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 317, i32 19}
!274 = !{ptr @.str.123, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3265, i32 2}
!276 = !{ptr @.str.124, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3269, i32 19}
!278 = !{ptr @.str.125, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3280, i32 19}
!280 = !{ptr @.str.126, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3284, i32 2}
!282 = !{ptr @.str.127, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3289, i32 19}
!284 = !{ptr @.str.128, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3294, i32 19}
!286 = !{ptr @.str.129, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3309, i32 3}
!288 = !{ptr @.str.130, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 3370, i32 19}
!290 = !{ptr @htt_rx_ops_hl, !291, !"htt_rx_ops_hl", i1 false, i1 false}
!291 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 4326, i32 39}
!292 = !{ptr @.str.131, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 2668, i32 3}
!294 = !{ptr @htt_rx_ops_64, !295, !"htt_rx_ops_64", i1 false, i1 false}
!295 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 4318, i32 39}
!296 = !{ptr @htt_rx_ops_32, !297, !"htt_rx_ops_32", i1 false, i1 false}
!297 = !{!"../drivers/net/wireless/ath/ath10k/htt_rx.c", i32 4310, i32 39}
!298 = !{!"sp"}
!299 = !{i32 1, !"wchar_size", i32 2}
!300 = !{i32 1, !"min_enum_size", i32 4}
!301 = !{i32 8, !"branch-target-enforcement", i32 0}
!302 = !{i32 8, !"sign-return-address", i32 0}
!303 = !{i32 8, !"sign-return-address-all", i32 0}
!304 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!305 = !{i32 7, !"uwtable", i32 1}
!306 = !{i32 7, !"frame-pointer", i32 2}
!307 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!308 = !{!"branch_weights", i32 1, i32 2000}
!309 = !{!"branch_weights", i32 2000, i32 1}
!310 = !{i8 0, i8 2}
!311 = !{i64 2159192077}
!312 = !{!"auto-init"}
!313 = !{i64 2148467229, i64 2148467234, i64 2148467247, i64 2148467291, i64 2148467325, i64 2148467346}
!314 = !{i64 2148642631, i64 2148642657, i64 2148642686, i64 2148642720, i64 2148642751, i64 2148642774}
!315 = !{i64 2149813202}
!316 = !{i64 2149813468}
!317 = !{i64 2159250394}
!318 = !{i64 2158915382}
!319 = !{i64 2158915609}
!320 = !{i64 2149821761}
!321 = !{i64 2149822797}
!322 = !{i64 2158953189}
!323 = !{i64 2158953418}
!324 = !{i64 2148645096, i64 2148645122, i64 2148645151, i64 2148645185, i64 2148645216, i64 2148645239}
!325 = !{i64 2159459326}
!326 = !{i64 2159041224}
!327 = !{i64 2159041439}
!328 = !{i64 2159057830}
!329 = !{i64 2159058053}
!330 = !{i64 2159078751}
!331 = !{i64 2159078976}
