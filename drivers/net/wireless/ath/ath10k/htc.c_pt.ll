; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath10k/htc.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath10k/htc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ath10k_htc_notify_tx_completion\22, \22a\22\09"
module asm "\09.weak\09__crc_ath10k_htc_notify_tx_completion\09\09\09\09"
module asm "\09.long\09__crc_ath10k_htc_notify_tx_completion\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath10k_htc_notify_tx_completion:\09\09\09\09\09"
module asm "\09.asciz \09\22ath10k_htc_notify_tx_completion\22\09\09\09\09\09"
module asm "__kstrtabns_ath10k_htc_notify_tx_completion:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath10k_htc_tx_completion_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_ath10k_htc_tx_completion_handler\09\09\09\09"
module asm "\09.long\09__crc_ath10k_htc_tx_completion_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath10k_htc_tx_completion_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22ath10k_htc_tx_completion_handler\22\09\09\09\09\09"
module asm "__kstrtabns_ath10k_htc_tx_completion_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath10k_htc_process_trailer\22, \22a\22\09"
module asm "\09.weak\09__crc_ath10k_htc_process_trailer\09\09\09\09"
module asm "\09.long\09__crc_ath10k_htc_process_trailer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath10k_htc_process_trailer:\09\09\09\09\09"
module asm "\09.asciz \09\22ath10k_htc_process_trailer\22\09\09\09\09\09"
module asm "__kstrtabns_ath10k_htc_process_trailer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath10k_htc_rx_completion_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_ath10k_htc_rx_completion_handler\09\09\09\09"
module asm "\09.long\09__crc_ath10k_htc_rx_completion_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath10k_htc_rx_completion_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22ath10k_htc_rx_completion_handler\22\09\09\09\09\09"
module asm "__kstrtabns_ath10k_htc_rx_completion_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.5 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.85 }
%struct.atomic_t = type { i32 }
%union.anon.85 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ath10k_htc_ep = type { ptr, i32, i32, %struct.ath10k_htc_ep_ops, i32, i32, i8, i8, i8, i32, i32, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head }
%struct.ath10k_htc_ep_ops = type { ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.107, %union.anon.108, [48 x i8], %union.anon.109, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.111, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.107 = type { ptr }
%union.anon.108 = type { i64 }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, ptr }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.113, i32, i32, i32, i16, i16, %union.anon.115, i32, %union.anon.116, %union.anon.117, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.113 = type { i32 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ath10k = type { %struct.ath_common, ptr, ptr, ptr, %struct.msa_region, [6 x i8], i32, i16, i32, i32, i8, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, %struct.anon.136, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.ath10k_bmi, %struct.ath10k_wmi, %struct.ath10k_htc, [4 x i8], %struct.ath10k_htt, %struct.ath10k_hw_params, %struct.ath10k_fw_components, ptr, ptr, ptr, %struct.anon.182, i32, i32, i32, %struct.anon.183, %struct.anon.184, ptr, ptr, %struct.cfg80211_chan_def, ptr, i64, ptr, i8, i32, i8, i32, i32, i8, i8, i32, i8, i8, %struct.completion, i32, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, [2048 x ptr], %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.completion, ptr, %struct.work_struct, %struct.sk_buff_head, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, [41 x %struct.survey_info], i8, %struct.completion, ptr, i32, %struct.ath10k_debug, %struct.anon.189, i32, %struct.anon.190, %struct.anon.191, %struct.anon.192, %struct.ath10k_thermal, %struct.ath10k_wow, %struct.ath10k_per_peer_tx_stats, [36 x i8], %struct.net_device, %struct.napi_struct, %struct.work_struct, %struct.anon.193, i32, ptr, ptr, i32, i32, %struct.ath10k_radar_found_info, %struct.work_struct, %struct.ath10k_bus_params, %struct.completion, i8, i32, i32, i32, [0 x i8], [48 x i8] }
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
%struct.anon.136 = type { i32, ptr }
%struct.ath10k_bmi = type { i8 }
%struct.ath10k_wmi = type { i32, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.wait_queue_head, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.idr, i32, i32, [16 x %struct.ath10k_mem_chunk] }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ath10k_mem_chunk = type { ptr, i32, i32, i32 }
%struct.ath10k_htc = type { ptr, [9 x %struct.ath10k_htc_ep], %struct.spinlock, %struct.ath10k_htc_ops, [256 x i8], i32, %struct.completion, i32, i32, i8, i32 }
%struct.ath10k_htc_ops = type { ptr }
%struct.ath10k_htt = type { ptr, i32, %struct.sk_buff_head, i8, i8, %struct.completion, i8, i8, ptr, i32, %struct.anon.137, i32, %struct.spinlock, i32, i32, i32, %struct.idr, %struct.wait_queue_head, %struct.anon.141, i8, %struct.atomic_t, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.ieee80211_rx_status, %struct.anon.143, %struct.anon.146, %struct.anon.156, i8, ptr, ptr, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head, [4 x i8] }
%struct.anon.137 = type { ptr, i8, [16 x %struct.hlist_head], %union.anon.138, i32, i32, i32, i32, i32, %struct.anon.139, %struct.anon.140, %struct.timer_list, %struct.spinlock }
%struct.hlist_head = type { ptr }
%union.anon.138 = type { ptr }
%struct.anon.139 = type { ptr, i32 }
%struct.anon.140 = type { i32 }
%struct.anon.141 = type { %union.anon.142, [0 x %struct.htt_tx_done] }
%union.anon.142 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.htt_tx_done = type { i16, i16, i8 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.anon.143 = type { i32, %union.anon.144, i32 }
%union.anon.144 = type { ptr }
%struct.anon.146 = type { i32, %union.anon.147, i32 }
%union.anon.147 = type { ptr }
%struct.anon.156 = type { i8, ptr, i32, i16, i16, i16, i32, i32 }
%struct.ath10k_hw_params = type { i32, i16, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, %struct.ath10k_hw_params_fw, i8, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ath10k_hw_params_fw = type { ptr, ptr, i32, ptr, i32, i32 }
%struct.ath10k_fw_components = type { ptr, ptr, i32, ptr, ptr, i32, %struct.ath10k_fw_file }
%struct.ath10k_fw_file = type { ptr, [32 x i8], [1 x i32], i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.anon.182 = type { i32, i32, i32, i32, i8, i8, i32, i32, i8, i8, i8, i8, [32 x i8] }
%struct.anon.183 = type { %struct.completion, %struct.completion, %struct.completion, %struct.delayed_work, i32, i8, i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.anon.184 = type { [6 x %struct.ieee80211_supported_band] }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.ath10k_debug = type { ptr, %struct.ath10k_fw_stats, %struct.completion, i8, i32, i32, %struct.delayed_work, %struct.ath10k_dfs_stats, %struct.ath_dfs_pool_stats, ptr, ptr, %struct.completion, i64, i32, i32, i32, ptr, i32, i8 }
%struct.ath10k_fw_stats = type { i8, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.ath10k_dfs_stats = type { i32, i32, i32, i32, i32 }
%struct.ath_dfs_pool_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.189 = type { ptr, i32, %struct.ath10k_spec_scan }
%struct.ath10k_spec_scan = type { i8, i8 }
%struct.anon.190 = type { ptr }
%struct.anon.191 = type { %struct.ath10k_fw_components, i8 }
%struct.anon.192 = type { i32, i32, i32, i32 }
%struct.ath10k_thermal = type { ptr, %struct.completion, i32, i32, i32 }
%struct.ath10k_wow = type { i32, %struct.completion, %struct.wiphy_wowlan_support }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.ath10k_per_peer_tx_stats = type { i32, i32, i32, i8, i8, i16, i16, i16, i16, i16, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.106, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.106 = type { ptr }
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
%struct.anon.193 = type { i16, i32, i32, i32, i32, i32 }
%struct.ath10k_radar_found_info = type { i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ath10k_bus_params = type { i32, i32, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ath10k_htc_hdr = type { i8, i8, i16, %union.anon.148, %union.anon.149, %union.anon.150 }
%union.anon.148 = type { i8 }
%union.anon.149 = type { i8 }
%union.anon.150 = type { i16 }
%struct.ath10k_hif_sg_item = type { i16, ptr, ptr, i32, i16 }
%struct.page = type { i32, %union.anon.9, %union.anon.83, %struct.atomic_t, i32 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.83 = type { %struct.atomic_t }
%struct.ath10k_ath10k_htc_record_hdr = type { i8, i8, i8, i8 }
%struct.ath10k_htc_record = type { %struct.ath10k_ath10k_htc_record_hdr, %union.anon.198 }
%union.anon.198 = type { [0 x %struct.ath10k_htc_credit_report] }
%struct.ath10k_htc_credit_report = type { i8, i8, i8, i8 }
%struct.ath10k_htc_lookahead_bundle = type { [4 x i8] }
%struct.ath10k_hw_values = type { i32, i8, i8, i8, i16, i8, i32, i32, i8 }
%struct.ath10k_hif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath10k_htc_conn_svc_response = type { i16, i8, i8, i16 }
%struct.ath10k_htc_msg = type { %struct.ath10k_ath10k_htc_msg_hdr, %union.anon.199 }
%struct.ath10k_ath10k_htc_msg_hdr = type { i16 }
%union.anon.199 = type { %struct.ath10k_htc_ready_extended }
%struct.ath10k_htc_ready_extended = type { %struct.ath10k_htc_ready, i8, i8, %union.anon.200 }
%struct.ath10k_htc_ready = type { i16, i16, i8, i8 }
%union.anon.200 = type { i16 }
%struct.ath10k_htc_svc_conn_resp = type { i8, i8, i32, i32, i8 }
%struct.ath10k_htc_svc_conn_req = type { i16, %struct.ath10k_htc_ep_ops, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@ath10k_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: ep %d skb %pK\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.ath10k_htc_notify_tx_completion = private unnamed_addr constant [32 x i8] c"ath10k_htc_notify_tx_completion\00", align 1
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no tx handler for eid %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__kstrtab_ath10k_htc_notify_tx_completion = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath10k_htc_notify_tx_completion = external dso_local constant [0 x i8], align 1
@__ksymtab_ath10k_htc_notify_tx_completion = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath10k_htc_notify_tx_completion to i32), ptr @__kstrtab_ath10k_htc_notify_tx_completion, ptr @__kstrtabns_ath10k_htc_notify_tx_completion }, section "___ksymtab+ath10k_htc_notify_tx_completion", align 4
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid endpoint id: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@ath10k_htc_tx_completion_handler.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ath/ath10k/htc.c\00", [58 x i8] zeroinitializer }, align 32
@__kstrtab_ath10k_htc_tx_completion_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath10k_htc_tx_completion_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_ath10k_htc_tx_completion_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath10k_htc_tx_completion_handler to i32), ptr @__kstrtab_ath10k_htc_tx_completion_handler, ptr @__kstrtabns_ath10k_htc_tx_completion_handler }, section "___ksymtab+ath10k_htc_tx_completion_handler", align 4
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid record length: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Credit report too long\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Lookahead report too long\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unhandled record: id:%d length:%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"htc rx bad trailer\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__kstrtab_ath10k_htc_process_trailer = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath10k_htc_process_trailer = external dso_local constant [0 x i8], align 1
@__ksymtab_ath10k_htc_process_trailer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath10k_htc_process_trailer to i32), ptr @__kstrtab_ath10k_htc_process_trailer, ptr @__kstrtabns_ath10k_htc_process_trailer }, section "___ksymtab+ath10k_htc_process_trailer", align 4
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HTC Rx: invalid eid %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"htc bad header\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"htc rx endpoint %d is not connected\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"HTC rx frame too long, len: %zu\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"htc bad rx pkt len\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"HTC Rx: insufficient length, got %d, expected %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid trailer length: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"htc rx completion ep %d skb %pK\0A\00", [63 x i8] zeroinitializer }, align 32
@__kstrtab_ath10k_htc_rx_completion_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath10k_htc_rx_completion_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_ath10k_htc_rx_completion_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath10k_htc_rx_completion_handler to i32), ptr @__kstrtab_ath10k_htc_rx_completion_handler, ptr @__kstrtabns_ath10k_htc_rx_completion_handler }, section "___ksymtab+ath10k_htc_rx_completion_handler", align 4
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tx exceed max len %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"htc send hl eid %d bundle %d tx count %d len %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"stop tx work eid %d count %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"failed to receive control response completion, polling..\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ctl_resp never came in (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid HTC ready msg len:%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid HTC ready msg: 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Target ready! transmit resources: %d size:%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid credit size received\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Extended ready message RX bundle size %d alt size %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ath10k_htc_wait_target.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&ar->bundle_tx_work)\00", [57 x i8] zeroinitializer }, align 32
@ath10k_htc_wait_target.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&ar->tx_complete_work)\00", [55 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"boot htc service %s does not allocate target credits\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate HTC packet\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Service connect timeout\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid resp message ID 0x%x\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"HTC Service %s connect response: status: 0x%x, assigned ep: 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"HTC Service %s connect request failed: 0x%x)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unsupported HTC service id: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"boot htc service '%s' ul pipe %d dl pipe %d eid %d ready\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"boot htc service '%s' eid %d TX flow control disabled\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unaligned HTC tx skb\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"HTC is using TX credit flow control\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to connect to pktlog: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ath10k_htc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&htc->tx_lock\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"could not connect to htc service (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@__tracepoint_ath10k_log_dbg = external dso_local global %struct.tracepoint, align 4
@.str.45 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"htc insufficient credits ep %d required %d available %d consume %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"htc ep %d consumed %d credits total %d\0A\00", [56 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.49 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"htc ep %d reverted %d credits back total %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Uneven credit report len %d\00", [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"htc ep %d got %d credits (total %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"htc rx lookahead found pre_valid 0x%x post_valid 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid lookahead bundle count: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bundle tx work eid %d count %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bundle skb len %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"bundle tx status %d eid %d req count %d count %d len %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"tx one status %d eid %d len %d pending count %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"bundle tx complete eid %d pending complete count%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Reserved\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Control\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"WMI\00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DATA BE\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DATA BK\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DATA VI\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DATA VO\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"NMI Control\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NMI Data\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HTT Data\00", [23 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RAW\00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PKTLOG\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@ath10k_htc_build_tx_ctrl_skb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unaligned skb\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: skb %pK\0A\00", [19 x i8] zeroinitializer }, align 32
@__func__.ath10k_htc_build_tx_ctrl_skb = private unnamed_addr constant [29 x i8] c"ath10k_htc_build_tx_ctrl_skb\00", align 1
@.str.75 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unsupported HTC pktlog service id: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to connect to PKTLOG service: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@__tracepoint_ath10k_htt_pktlog = external dso_local global %struct.tracepoint, align 4
@.str.77 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/ath/ath10k/trace.h\00", [56 x i8] zeroinitializer }, align 32
@trace_ath10k_htt_pktlog.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.78 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HTC rx ctrl still processing\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ignoring unsolicited htc ep0 event\0A\00", [60 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 256]
@__sancov_gen_cov_switch_values.84 = internal global [16 x i64] [i64 14, i64 16, i64 0, i64 1, i64 256, i64 257, i64 258, i64 259, i64 260, i64 512, i64 513, i64 768, i64 769, i64 770, i64 1536, i64 65024]
@__sancov_gen_cov_switch_values.85 = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 1, i64 256, i64 257, i64 258, i64 259, i64 260, i64 512, i64 513, i64 768, i64 769, i64 770, i64 1536, i64 65024]
@__sancov_gen_cov_switch_values.86 = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 1, i64 256, i64 257, i64 258, i64 259, i64 260, i64 512, i64 513, i64 768, i64 769, i64 770, i64 1536, i64 65024]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 3, i64 6]
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 56, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 63, i32 19 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 169, i32 19 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 221, i32 6 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 363, i32 20 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 373, i32 21 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 385, i32 21 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 406, i32 20 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 420, i32 39 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 420, i32 61 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 445, i32 19 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 446, i32 39 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 453, i32 19 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 460, i32 19 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 462, i32 39 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 468, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 486, i32 20 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 508, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 854, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 858, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 894, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 918, i32 19 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 932, i32 18 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 937, i32 18 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 946, i32 18 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 953, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 960, i32 18 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 975, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 981, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 982, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1028, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1034, i32 18 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1070, i32 18 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1083, i32 18 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1087, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1096, i32 18 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1142, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1147, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1154, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1174, i32 19 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1254, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1265, i32 19 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1281, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1298, i32 18 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 112, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 121, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 326, i32 6 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 144, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 247, i32 19 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 259, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 290, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 315, i32 19 }
@___asan_gen_.260 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1984, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 805, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 640, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 670, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 687, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 833, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 567, i32 10 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 569, i32 10 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 571, i32 10 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 573, i32 10 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 575, i32 10 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 577, i32 10 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 579, i32 10 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 581, i32 10 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 583, i32 10 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 585, i32 10 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 591, i32 10 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 593, i32 10 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 596, i32 9 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 31, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 36, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1220, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1202, i32 19 }
@___asan_gen_.332 = private unnamed_addr constant [43 x i8] c"../drivers/net/wireless/ath/ath10k/trace.h\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 264, i32 1 }
@___asan_gen_.335 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 108, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 533, i32 20 }
@___asan_gen_.341 = private constant [41 x i8] c"../drivers/net/wireless/ath/ath10k/htc.c\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 551, i32 19 }
@___asan_gen_.343 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.346 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.347 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 87, i32 2 }
@llvm.compiler.used = appending global [91 x ptr] [ptr @__ksymtab_ath10k_htc_notify_tx_completion, ptr @__ksymtab_ath10k_htc_process_trailer, ptr @__ksymtab_ath10k_htc_rx_completion_handler, ptr @__ksymtab_ath10k_htc_tx_completion_handler, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @ath10k_htc_wait_target.__key, ptr @.str.28, ptr @ath10k_htc_wait_target.__key.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @ath10k_htc_init.__key, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @skb_queue_head_init.__key, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @init_completion.__key, ptr @.str.82], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_htc_wait_target.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_htc_wait_target.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_htc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_htc_notify_tx_completion(ptr nocapture noundef readonly %ep, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %4 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htc_notify_tx_completion, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !193

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  %eid = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 1
  %5 = ptrtoint ptr %eid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %eid, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ath10k_htc_notify_tx_completion, i32 noundef %6, ptr noundef %skb) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ep, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %dev_type.i = getelementptr inbounds %struct.ath10k, ptr %12, i32 0, i32 136, i32 1
  %13 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 1
  br i1 %cmp.not.i, label %do.end.ath10k_htc_restore_tx_skb.exit_crit_edge, label %if.then.i

do.end.ath10k_htc_restore_tx_skb.exit_crit_edge:  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath10k_htc_restore_tx_skb.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %dev.i = getelementptr inbounds %struct.ath10k, ptr %12, i32 0, i32 3
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %15, align 1
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef 1, i32 noundef 0) #8
  br label %ath10k_htc_restore_tx_skb.exit

ath10k_htc_restore_tx_skb.exit:                   ; preds = %if.then.i, %do.end.ath10k_htc_restore_tx_skb.exit_crit_edge
  %call2.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 8) #8
  %ep_ops = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 3
  %22 = ptrtoint ptr %ep_ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ep_ops, align 4
  %tobool3.not = icmp eq ptr %23, null
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %ath10k_htc_restore_tx_skb.exit
  call void @__sanitizer_cov_trace_pc() #10
  %eid5 = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 1
  %24 = ptrtoint ptr %eid5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %eid5, align 4
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %25) #8
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  br label %cleanup

if.end6:                                          ; preds = %ath10k_htc_restore_tx_skb.exit
  %flags = getelementptr inbounds %struct.ath10k_htc_hdr, ptr %8, i32 0, i32 1
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %flags, align 1
  %28 = and i8 %27, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool8.not = icmp eq i8 %28, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ep, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  tail call void %23(ptr noundef %32, ptr noundef %skb) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ath10k_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_htc_send(ptr nocapture noundef %htc, i32 noundef %eid, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %sg_item = alloca %struct.ath10k_hif_sg_item, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htc, align 4
  %arrayidx = getelementptr %struct.ath10k_htc, ptr %htc, i32 0, i32 1, i32 %eid
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg_item) #8
  %3 = call ptr @memset(ptr %sg_item, i32 255, i32 20)
  %dev3 = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3, align 4
  %state = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 103
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp = icmp eq i32 %7, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %eid)
  %cmp5 = icmp sgt i32 %eid, 8
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %eid) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %call9 = tail call fastcc i32 @ath10k_htc_consume_credit(ptr noundef %arrayidx, i32 noundef %9, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %if.end7.err_pull_crit_edge

if.end7.err_pull_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_pull

if.end11:                                         ; preds = %if.end7
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 0, ptr %11, align 4
  %eid.i = getelementptr %struct.ath10k_htc, ptr %htc, i32 0, i32 1, i32 %eid, i32 1
  %13 = ptrtoint ptr %eid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %eid.i, align 4
  %conv.i = trunc i32 %14 to i8
  store i8 %conv.i, ptr %11, align 4
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %17 = trunc i32 %16 to i16
  %conv2.i = add i16 %17, -8
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv2.i) #8
  %len3.i = getelementptr inbounds %struct.ath10k_htc_hdr, ptr %11, i32 0, i32 2
  %19 = ptrtoint ptr %len3.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %len3.i, align 2
  %flags.i = getelementptr inbounds %struct.ath10k_htc_hdr, ptr %11, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %flags.i, align 1
  %tx_credit_flow_enabled.i = getelementptr %struct.ath10k_htc, ptr %htc, i32 0, i32 1, i32 %eid, i32 11
  %21 = ptrtoint ptr %tx_credit_flow_enabled.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tx_credit_flow_enabled.i, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.end11.ath10k_htc_prepare_tx_skb.exit_crit_edge, label %land.lhs.true.i

if.end11.ath10k_htc_prepare_tx_skb.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath10k_htc_prepare_tx_skb.exit

land.lhs.true.i:                                  ; preds = %if.end11
  %bundle_tx.i = getelementptr %struct.ath10k_htc, ptr %htc, i32 0, i32 1, i32 %eid, i32 12
  %23 = ptrtoint ptr %bundle_tx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bundle_tx.i, align 1, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool5.not.i = icmp eq i8 %24, 0
  br i1 %tobool5.not.i, label %if.then.i, label %land.lhs.true.i.ath10k_htc_prepare_tx_skb.exit_crit_edge

land.lhs.true.i.ath10k_htc_prepare_tx_skb.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath10k_htc_prepare_tx_skb.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %flags.i, align 1
  br label %ath10k_htc_prepare_tx_skb.exit

ath10k_htc_prepare_tx_skb.exit:                   ; preds = %if.then.i, %land.lhs.true.i.ath10k_htc_prepare_tx_skb.exit_crit_edge, %if.end11.ath10k_htc_prepare_tx_skb.exit_crit_edge
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %tx_lock.i = getelementptr inbounds %struct.ath10k_htc, ptr %27, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock.i) #8
  %seq_no.i = getelementptr %struct.ath10k_htc, ptr %htc, i32 0, i32 1, i32 %eid, i32 8
  %28 = ptrtoint ptr %seq_no.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %seq_no.i, align 2
  %inc.i = add i8 %29, 1
  store i8 %inc.i, ptr %seq_no.i, align 2
  %30 = getelementptr inbounds %struct.ath10k_htc_hdr, ptr %11, i32 0, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %29, ptr %30, align 1
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %tx_lock10.i = getelementptr inbounds %struct.ath10k_htc, ptr %33, i32 0, i32 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock10.i) #8
  %conv = trunc i32 %eid to i8
  %eid12 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 13
  %34 = ptrtoint ptr %eid12 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv, ptr %eid12, align 1
  %dev_type = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 136, i32 1
  %35 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp13.not = icmp eq i32 %36, 1
  br i1 %cmp13.not, label %ath10k_htc_prepare_tx_skb.exit.if.end23_crit_edge, label %if.then15

ath10k_htc_prepare_tx_skb.exit.if.end23_crit_edge: ; preds = %ath10k_htc_prepare_tx_skb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then15:                                        ; preds = %ath10k_htc_prepare_tx_skb.exit
  %37 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i, align 4
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %38) #8
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.then15
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i85, !prof !195

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.thread

if.then.i85:                                      ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %5) #8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %41 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i85.dev_name.exit.i_crit_edge

if.then.i85.dev_name.exit.i_crit_edge:            ; preds = %if.then.i85
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i85
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %5, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i85.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %44, %if.end.i.i ], [ %42, %if.then.i85.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.48, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %45 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 -1, ptr %2, align 1
  tail call void @debug_dma_mapping_error(ptr noundef %5, i32 noundef -1) #8
  br label %err_credits

dma_map_single_attrs.exit:                        ; preds = %if.then15
  tail call void @debug_dma_map_single(ptr noundef %5, ptr noundef %38, i32 noundef %40) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %46 = load ptr, ptr @mem_map, align 4
  %47 = ptrtoint ptr %38 to i32
  %sub.i = add i32 %47, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %46, i32 %shr.i
  %and.i = and i32 %47, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %5, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %40, i32 noundef 1, i32 noundef 0) #8
  %48 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %call41.i, ptr %2, align 1
  tail call void @debug_dma_mapping_error(ptr noundef %5, i32 noundef %call41.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.err_credits_crit_edge, label %dma_map_single_attrs.exit.if.end23_crit_edge

dma_map_single_attrs.exit.if.end23_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

dma_map_single_attrs.exit.err_credits_crit_edge:  ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_credits

if.end23:                                         ; preds = %dma_map_single_attrs.exit.if.end23_crit_edge, %ath10k_htc_prepare_tx_skb.exit.if.end23_crit_edge
  %49 = ptrtoint ptr %eid.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %eid.i, align 4
  %conv25 = trunc i32 %50 to i16
  %51 = ptrtoint ptr %sg_item to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv25, ptr %sg_item, align 4
  %transfer_context = getelementptr inbounds %struct.ath10k_hif_sg_item, ptr %sg_item, i32 0, i32 1
  %52 = ptrtoint ptr %transfer_context to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %skb, ptr %transfer_context, align 4
  %53 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i, align 4
  %vaddr = getelementptr inbounds %struct.ath10k_hif_sg_item, ptr %sg_item, i32 0, i32 2
  %55 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %vaddr, align 4
  %56 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %2, align 1
  %paddr28 = getelementptr inbounds %struct.ath10k_hif_sg_item, ptr %sg_item, i32 0, i32 3
  %58 = ptrtoint ptr %paddr28 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %paddr28, align 4
  %59 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len, align 4
  %conv30 = trunc i32 %60 to i16
  %len31 = getelementptr inbounds %struct.ath10k_hif_sg_item, ptr %sg_item, i32 0, i32 4
  %61 = ptrtoint ptr %len31 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv30, ptr %len31, align 4
  %62 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %htc, align 4
  %ul_pipe_id = getelementptr %struct.ath10k_htc, ptr %htc, i32 0, i32 1, i32 %eid, i32 6
  %64 = ptrtoint ptr %ul_pipe_id to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %ul_pipe_id, align 4
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %63, i32 0, i32 34, i32 1
  %66 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %call.i86 = call i32 %69(ptr noundef %63, i8 noundef zeroext %65, ptr noundef nonnull %sg_item, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %tobool34.not = icmp eq i32 %call.i86, 0
  br i1 %tobool34.not, label %if.end23.cleanup_crit_edge, label %err_unmap

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_unmap:                                        ; preds = %if.end23
  %70 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp39.not = icmp eq i32 %71, 1
  br i1 %cmp39.not, label %err_unmap.err_credits_crit_edge, label %if.then41

err_unmap.err_credits_crit_edge:                  ; preds = %err_unmap
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_credits

if.then41:                                        ; preds = %err_unmap
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %2, align 1
  %74 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len, align 4
  call void @dma_unmap_page_attrs(ptr noundef %5, i32 noundef %73, i32 noundef %75, i32 noundef 1, i32 noundef 0) #8
  br label %err_credits

err_credits:                                      ; preds = %if.then41, %err_unmap.err_credits_crit_edge, %dma_map_single_attrs.exit.err_credits_crit_edge, %dma_map_single_attrs.exit.thread
  %ret.0 = phi i32 [ %call.i86, %if.then41 ], [ %call.i86, %err_unmap.err_credits_crit_edge ], [ -5, %dma_map_single_attrs.exit.err_credits_crit_edge ], [ -5, %dma_map_single_attrs.exit.thread ]
  call fastcc void @ath10k_htc_release_credit(ptr noundef %arrayidx, i32 noundef %9)
  br label %err_pull

err_pull:                                         ; preds = %err_credits, %if.end7.err_pull_crit_edge
  %ret.1 = phi i32 [ %call9, %if.end7.err_pull_crit_edge ], [ %ret.0, %err_credits ]
  %call45 = call ptr @skb_pull(ptr noundef %skb, i32 noundef 8) #8
  br label %cleanup

cleanup:                                          ; preds = %err_pull, %if.end23.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.then6 ], [ %ret.1, %err_pull ], [ -70, %entry.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg_item) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_htc_consume_credit(ptr nocapture noundef %ep, i32 noundef %len, i1 noundef zeroext %consume) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %eid3 = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 1
  %4 = ptrtoint ptr %eid3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eid3, align 4
  %tx_credit_flow_enabled = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 11
  %6 = ptrtoint ptr %tx_credit_flow_enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_credit_flow_enabled, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_credit_size = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 10
  %8 = ptrtoint ptr %tx_credit_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_credit_size, align 4
  %add = add i32 %len, -1
  %sub = add i32 %add, %9
  %div = udiv i32 %sub, %9
  %tx_lock = getelementptr inbounds %struct.ath10k_htc, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #8
  %tx_credits = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 9
  %10 = ptrtoint ptr %tx_credits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_credits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %div)
  %cmp = icmp slt i32 %11, %div
  br i1 %cmp, label %do.body, label %if.end11

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %12 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %do.body.if.then7_crit_edge

do.body.if.then7_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htc_consume_credit, %if.then7)) #8
          to label %unlock [label %if.then7], !srcloc !193

if.then7:                                         ; preds = %lor.lhs.false, %do.body.if.then7_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %tx_credits to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_credits, align 4
  %conv = zext i1 %consume to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.45, i32 noundef %5, i32 noundef %div, i32 noundef %14, i32 noundef %conv) #8
  br label %unlock

if.end11:                                         ; preds = %if.end
  br i1 %consume, label %if.then13, label %if.end11.unlock_crit_edge

if.end11.unlock_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.then13:                                        ; preds = %if.end11
  %sub15 = sub i32 %11, %div
  %15 = ptrtoint ptr %tx_credits to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub15, ptr %tx_credits, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %16 = load i32, ptr @ath10k_debug_mask, align 4
  %and17 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %lor.lhs.false19, label %if.then13.if.then22_crit_edge

if.then13.if.then22_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

lor.lhs.false19:                                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htc_consume_credit, %if.then22)) #8
          to label %unlock [label %if.then22], !srcloc !193

if.then22:                                        ; preds = %lor.lhs.false19, %if.then13.if.then22_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %tx_credits to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_credits, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.46, i32 noundef %5, i32 noundef %div, i32 noundef %18) #8
  br label %unlock

unlock:                                           ; preds = %if.then22, %lor.lhs.false19, %if.end11.unlock_crit_edge, %if.then7, %lor.lhs.false
  %ret.0 = phi i32 [ 0, %if.then22 ], [ 0, %if.end11.unlock_crit_edge ], [ -11, %if.then7 ], [ -11, %lor.lhs.false ], [ 0, %lor.lhs.false19 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_htc_release_credit(ptr nocapture noundef %ep, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %eid3 = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 1
  %4 = ptrtoint ptr %eid3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eid3, align 4
  %tx_credit_flow_enabled = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 11
  %6 = ptrtoint ptr %tx_credit_flow_enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_credit_flow_enabled, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_credit_size = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 10
  %8 = ptrtoint ptr %tx_credit_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_credit_size, align 4
  %add = add i32 %len, -1
  %sub = add i32 %add, %9
  %div = udiv i32 %sub, %9
  %tx_lock = getelementptr inbounds %struct.ath10k_htc, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #8
  %tx_credits = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 9
  %10 = ptrtoint ptr %tx_credits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_credits, align 4
  %add5 = add i32 %11, %div
  store i32 %add5, ptr %tx_credits, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %12 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.end.if.then7_crit_edge

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htc_release_credit, %if.then7)) #8
          to label %do.end [label %if.then7], !srcloc !193

if.then7:                                         ; preds = %lor.lhs.false, %if.end.if.then7_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %tx_credits to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_credits, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %3, i32 noundef 4, ptr noundef nonnull @.str.49, i32 noundef %5, i32 noundef %div, i32 noundef %14) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %lor.lhs.false
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #8
  %ep_tx_credits = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %ep_tx_credits to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ep_tx_credits, align 4
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %do.end.cleanup_crit_edge, label %if.then12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  tail call void %16(ptr noundef %18) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_htc_tx_completion_handler(ptr nocapture noundef readonly %ar, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b47 = load i1, ptr @ath10k_htc_tx_completion_handler.__already_done, align 1
  br i1 %.b47, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !195

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ath10k_htc_tx_completion_handler.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 221, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end40:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %eid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 13
  %0 = ptrtoint ptr %eid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %eid, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 %idxprom
  tail call void @ath10k_htc_notify_tx_completion(ptr noundef %arrayidx, ptr noundef nonnull %skb)
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_htc_process_trailer(ptr noundef %htc, ptr noundef %buffer, i32 noundef %length, i32 %src_eid, ptr noundef writeonly %next_lookaheads, ptr noundef writeonly %next_lookaheads_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp108 = icmp sgt i32 %length, 0
  br i1 %cmp108, label %while.body.lr.ph, label %entry.if.end58_crit_edge

entry.if.end58_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

while.body.lr.ph:                                 ; preds = %entry
  %max_msgs_per_htc_bundle.i = getelementptr inbounds %struct.ath10k_htc, ptr %htc, i32 0, i32 9
  %tobool3.not.i = icmp eq ptr %next_lookaheads, null
  %tobool4.not.i95 = icmp eq ptr %next_lookaheads_len, null
  %or.cond.i96 = or i1 %tobool3.not.i, %tobool4.not.i95
  br label %while.body

while.body:                                       ; preds = %if.end48.while.body_crit_edge, %while.body.lr.ph
  %buffer.addr.0110 = phi ptr [ %buffer, %while.body.lr.ph ], [ %add.ptr, %if.end48.while.body_crit_edge ]
  %length.addr.0109 = phi i32 [ %length, %while.body.lr.ph ], [ %sub, %if.end48.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %length.addr.0109)
  %cmp2 = icmp ult i32 %length.addr.0109, 4
  br i1 %cmp2, label %while.body.if.then57_crit_edge, label %if.end

while.body.if.then57_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

if.end:                                           ; preds = %while.body
  %len3 = getelementptr inbounds %struct.ath10k_ath10k_htc_record_hdr, ptr %buffer.addr.0110, i32 0, i32 1
  %2 = ptrtoint ptr %len3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %len3, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %length.addr.0109, i32 %conv)
  %cmp4 = icmp ult i32 %length.addr.0109, %conv
  br i1 %cmp4, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv.le = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %conv.le) #8
  br label %if.then57

if.end10:                                         ; preds = %if.end
  %4 = ptrtoint ptr %buffer.addr.0110 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buffer.addr.0110, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb23
    i8 3, label %sw.bb35
  ]

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp16 = icmp ult i8 %3, 4
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.5) #8
  br label %if.then57

if.end19:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %7 = getelementptr inbounds %struct.ath10k_htc_record, ptr %buffer.addr.0110, i32 0, i32 1
  tail call fastcc void @ath10k_htc_process_credit_report(ptr noundef %htc, ptr noundef %7, i32 noundef %conv)
  br label %if.end48

sw.bb23:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %3)
  %cmp27 = icmp ult i8 %3, 12
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.6) #8
  br label %if.then57

if.end30:                                         ; preds = %sw.bb23
  %8 = getelementptr inbounds %struct.ath10k_htc_record, ptr %buffer.addr.0110, i32 0, i32 1
  %9 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %htc, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %8, align 1
  %post_valid.i = getelementptr inbounds %struct.ath10k_htc_record, ptr %buffer.addr.0110, i32 3
  %13 = ptrtoint ptr %post_valid.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %post_valid.i, align 1
  %15 = xor i8 %14, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %15)
  %cmp.not.i = icmp ne i8 %12, %15
  %brmerge = or i1 %cmp.not.i, %or.cond.i96
  br i1 %brmerge, label %if.end30.if.end48_crit_edge, label %do.body.i

if.end30.if.end48_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

do.body.i:                                        ; preds = %if.end30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %16 = load i32, ptr @ath10k_debug_mask, align 4
  %and6.i = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %lor.lhs.false.i, label %do.body.i.if.then9.i_crit_edge

do.body.i.if.then9.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i

lor.lhs.false.i:                                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htc_process_trailer, %if.then9.i)) #8
          to label %do.end.i [label %if.then9.i], !srcloc !193

if.then9.i:                                       ; preds = %lor.lhs.false.i, %do.body.i.if.then9.i_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %8, align 1
  %conv11.i = zext i8 %18 to i32
  %19 = ptrtoint ptr %post_valid.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %post_valid.i, align 1
  %conv13.i = zext i8 %20 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %10, i32 noundef 4, ptr noundef nonnull @.str.52, i32 noundef %conv11.i, i32 noundef %conv13.i) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then9.i, %lor.lhs.false.i
  %lookahead.i = getelementptr inbounds %struct.ath10k_htc_record, ptr %buffer.addr.0110, i32 2
  %21 = ptrtoint ptr %lookahead.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %lookahead.i, align 1
  %23 = ptrtoint ptr %next_lookaheads to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %next_lookaheads, align 1
  %24 = ptrtoint ptr %next_lookaheads_len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %next_lookaheads_len, align 4
  br label %if.end48

sw.bb35:                                          ; preds = %if.end10
  %25 = getelementptr %struct.ath10k_htc_record, ptr %buffer.addr.0110, i32 0, i32 1
  %26 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %htc, align 4
  %div1.i = lshr i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %tobool.not.i93 = icmp ult i8 %3, 4
  br i1 %tobool.not.i93, label %sw.bb35.if.then.i_crit_edge, label %lor.lhs.false.i94

sw.bb35.if.then.i_crit_edge:                      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i94:                                ; preds = %sw.bb35
  %28 = ptrtoint ptr %max_msgs_per_htc_bundle.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %max_msgs_per_htc_bundle.i, align 4
  %conv.i = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %conv.i)
  %cmp.i = icmp ugt i32 %div1.i, %conv.i
  br i1 %cmp.i, label %lor.lhs.false.i94.if.then.i_crit_edge, label %if.end.i97

lor.lhs.false.i94.if.then.i_crit_edge:            ; preds = %lor.lhs.false.i94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i94.if.then.i_crit_edge, %sw.bb35.if.then.i_crit_edge
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %27, ptr noundef nonnull @.str.53, i32 noundef %div1.i) #8
  br label %if.then57

if.end.i97:                                       ; preds = %lor.lhs.false.i94
  br i1 %or.cond.i96, label %if.end.i97.if.end48_crit_edge, label %for.body.preheader.i

if.end.i97.if.end48_crit_edge:                    ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

for.body.preheader.i:                             ; preds = %if.end.i97
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div1.i, i32 1) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %report.addr.03.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %25, %for.body.preheader.i ]
  %mul.i = shl i32 %i.04.i, 2
  %add.ptr.i = getelementptr i8, ptr %next_lookaheads, i32 %mul.i
  %30 = ptrtoint ptr %report.addr.03.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %report.addr.03.i, align 1
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %add.ptr.i, align 1
  %incdec.ptr.i = getelementptr %struct.ath10k_htc_lookahead_bundle, ptr %report.addr.03.i, i32 1
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %next_lookaheads_len to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %div1.i, ptr %next_lookaheads_len, align 4
  br label %if.end48

sw.default:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %conv12 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %conv12, i32 noundef %conv) #8
  br label %if.end48

if.end48:                                         ; preds = %sw.default, %for.end.i, %if.end.i97.if.end48_crit_edge, %do.end.i, %if.end30.if.end48_crit_edge, %if.end19
  %34 = ptrtoint ptr %len3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %len3, align 1
  %conv51 = zext i8 %35 to i32
  %add = add nuw nsw i32 %conv51, 4
  %add.ptr = getelementptr i8, ptr %buffer.addr.0110, i32 %add
  %sub = sub i32 %length.addr.0109, %add
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %if.end48.while.body_crit_edge, label %if.end48.if.end58_crit_edge

if.end48.if.end58_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.end48.while.body_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.then57:                                        ; preds = %if.then.i, %if.then29, %if.then18, %if.then6, %while.body.if.then57_crit_edge
  tail call void @ath10k_dbg_dump(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef %buffer, i32 noundef %length) #8
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end48.if.end58_crit_edge, %entry.if.end58_crit_edge
  %status.2103 = phi i32 [ -22, %if.then57 ], [ 0, %entry.if.end58_crit_edge ], [ 0, %if.end48.if.end58_crit_edge ]
  ret i32 %status.2103
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_htc_process_credit_report(ptr noundef %htc, ptr nocapture noundef readonly %report, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htc, align 4
  %rem = and i32 %len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.50, i32 noundef %len) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tx_lock = getelementptr inbounds %struct.ath10k_htc, ptr %htc, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp4.not = icmp ult i32 %len, 4
  br i1 %cmp4.not, label %if.end.for.end_crit_edge, label %for.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %div1 = lshr i32 %len, 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.07 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %report.addr.05 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %report, %for.body.preheader ]
  %2 = ptrtoint ptr %report.addr.05 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %report.addr.05, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %cmp3 = icmp ugt i8 %3, 8
  br i1 %cmp3, label %for.body.for.end_crit_edge, label %if.end6

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end6:                                          ; preds = %for.body
  %conv = zext i8 %3 to i32
  %credits = getelementptr inbounds %struct.ath10k_htc_credit_report, ptr %report.addr.05, i32 0, i32 1
  %4 = ptrtoint ptr %credits to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %credits, align 1
  %conv8 = zext i8 %5 to i32
  %tx_credits = getelementptr %struct.ath10k_htc, ptr %htc, i32 0, i32 1, i32 %conv, i32 9
  %6 = ptrtoint ptr %tx_credits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_credits, align 4
  %add = add i32 %7, %conv8
  store i32 %add, ptr %tx_credits, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %8 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %if.end6.if.then11_crit_edge

if.end6.if.then11_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htc_process_credit_report, %if.then11)) #8
          to label %do.end [label %if.then11], !srcloc !193

if.then11:                                        ; preds = %lor.lhs.false, %if.end6.if.then11_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %report.addr.05 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %report.addr.05, align 1
  %conv13 = zext i8 %10 to i32
  %11 = ptrtoint ptr %credits to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %credits, align 1
  %conv15 = zext i8 %12 to i32
  %13 = ptrtoint ptr %tx_credits to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_credits, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.51, i32 noundef %conv13, i32 noundef %conv15, i32 noundef %14) #8
  br label %do.end

do.end:                                           ; preds = %if.then11, %lor.lhs.false
  %ep_tx_credits = getelementptr %struct.ath10k_htc, ptr %htc, i32 0, i32 1, i32 %conv, i32 3, i32 2
  %15 = ptrtoint ptr %ep_tx_credits to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ep_tx_credits, align 4
  %tobool18.not = icmp eq ptr %16, null
  br i1 %tobool18.not, label %do.end.for.inc_crit_edge, label %if.then19

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then19:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #8
  %17 = ptrtoint ptr %ep_tx_credits to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ep_tx_credits, align 4
  %19 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %htc, align 4
  tail call void %18(ptr noundef %20) #8
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %do.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.07, 1
  %incdec.ptr = getelementptr %struct.ath10k_htc_credit_report, ptr %report.addr.05, i32 1
  %exitcond.not = icmp eq i32 %inc, %div1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_dbg_dump(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_htc_rx_completion_handler(ptr noundef %ar, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %htc1 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 42
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 8) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %cmp = icmp ugt i8 %3, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.10, i32 noundef %conv) #8
  tail call void @ath10k_dbg_dump(ptr noundef %ar, i32 noundef 4, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, ptr noundef %1, i32 noundef 8) #8
  br label %out

if.end:                                           ; preds = %entry
  %service_id = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 %conv, i32 2
  %4 = ptrtoint ptr %service_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %service_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5 = icmp eq i32 %5, 0
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.12, i32 noundef %conv) #8
  br label %out

if.end9:                                          ; preds = %if.end
  %len = getelementptr inbounds %struct.ath10k_htc_hdr, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %len, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv10 = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4088, i16 %8)
  %cmp11 = icmp ugt i16 %8, 4088
  br i1 %cmp11, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nuw nsw i32 %conv10, 8
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.13, i32 noundef %add) #8
  tail call void @ath10k_dbg_dump(ptr noundef %ar, i32 noundef 4, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, ptr noundef %1, i32 noundef 8) #8
  br label %out

if.end16:                                         ; preds = %if.end9
  %len17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv10)
  %cmp19 = icmp ult i32 %10, %conv10
  br i1 %cmp19, label %do.body, label %if.end28

do.body:                                          ; preds = %if.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %11 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %do.body.if.then24_crit_edge

do.body.if.then24_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htc_rx_completion_handler, %if.then24)) #8
          to label %do.end [label %if.then24], !srcloc !193

if.then24:                                        ; preds = %lor.lhs.false, %do.body.if.then24_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %len17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len17, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 4, ptr noundef nonnull @.str.15, i32 noundef %13, i32 noundef %conv10) #8
  br label %do.end

do.end:                                           ; preds = %if.then24, %lor.lhs.false
  tail call void @ath10k_dbg_dump(ptr noundef %ar, i32 noundef 4, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, ptr noundef %1, i32 noundef 8) #8
  br label %out

if.end28:                                         ; preds = %if.end16
  %flags = getelementptr inbounds %struct.ath10k_htc_hdr, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %flags, align 1
  %16 = and i8 %15, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool31.not = icmp eq i8 %16, 0
  br i1 %tobool31.not, label %if.end28.if.end53_crit_edge, label %if.then33

if.end28.if.end53_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then33:                                        ; preds = %if.end28
  %17 = getelementptr inbounds %struct.ath10k_htc_hdr, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 4
  %conv34 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %19)
  %cmp35 = icmp ult i8 %19, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv34, i32 %conv10)
  %cmp39 = icmp ugt i32 %conv34, %conv10
  %or.cond = select i1 %cmp35, i1 true, i1 %cmp39
  br i1 %or.cond, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.16, i32 noundef %conv34) #8
  br label %out

if.end42:                                         ; preds = %if.then33
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %add.ptr44 = getelementptr i8, ptr %add.ptr, i32 %conv10
  %idx.neg = sub nsw i32 0, %conv34
  %add.ptr45 = getelementptr i8, ptr %add.ptr44, i32 %idx.neg
  %call48 = tail call i32 @ath10k_htc_process_trailer(ptr noundef %htc1, ptr noundef %add.ptr45, i32 noundef %conv34, i32 undef, ptr noundef null, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %cleanup, label %if.end42.out_crit_edge

if.end42.out_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

cleanup:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %len17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len17, align 4
  %sub = sub i32 %21, %conv34
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub) #8
  br label %if.end53

if.end53:                                         ; preds = %cleanup, %if.end28.if.end53_crit_edge
  %trailer_len.0 = phi i32 [ %conv34, %cleanup ], [ 0, %if.end28.if.end53_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %trailer_len.0, i32 %conv10)
  %cmp56.not = icmp ult i32 %trailer_len.0, %conv10
  br i1 %cmp56.not, label %do.body60, label %if.end53.out_crit_edge

if.end53.out_crit_edge:                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body60:                                        ; preds = %if.end53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %22 = load i32, ptr @ath10k_debug_mask, align 4
  %and61 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %lor.lhs.false63, label %do.body60.if.then66_crit_edge

do.body60.if.then66_crit_edge:                    ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then66

lor.lhs.false63:                                  ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htc_rx_completion_handler, %if.then66)) #8
          to label %do.end70 [label %if.then66], !srcloc !193

if.then66:                                        ; preds = %lor.lhs.false63, %do.body60.if.then66_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 4, ptr noundef nonnull @.str.17, i32 noundef %conv, ptr noundef %skb) #8
  br label %do.end70

do.end70:                                         ; preds = %if.then66, %lor.lhs.false63
  %ep_rx_complete = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 %conv, i32 3, i32 1
  %23 = ptrtoint ptr %ep_rx_complete to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ep_rx_complete, align 4
  tail call void %24(ptr noundef %ar, ptr noundef %skb) #8
  br label %out

out:                                              ; preds = %do.end70, %if.end53.out_crit_edge, %if.end42.out_crit_edge, %if.then41, %do.end, %if.then13, %if.then7, %if.then
  %skb.addr.0 = phi ptr [ %skb, %if.then ], [ %skb, %if.then7 ], [ %skb, %if.then13 ], [ %skb, %do.end ], [ %skb, %if.end53.out_crit_edge ], [ null, %do.end70 ], [ %skb, %if.then41 ], [ %skb, %if.end42.out_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0, i32 noundef 0) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_htc_send_hl(ptr noundef %htc, i32 noundef %eid, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htc, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %add = add i32 %3, 8
  %tx_credit_size = getelementptr %struct.ath10k_htc, ptr %htc, i32 0, i32 1, i32 %eid, i32 10
  %4 = ptrtoint ptr %tx_credit_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_credit_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp = icmp ugt i32 %add, %5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %6 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %cmp, label %do.body, label %do.body5

do.body:                                          ; preds = %entry
  br i1 %tobool.not, label %lor.lhs.false, label %do.body.if.then2_crit_edge

do.body.if.then2_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htc_send_hl, %if.then2)) #8
          to label %cleanup [label %if.then2], !srcloc !193

if.then2:                                         ; preds = %lor.lhs.false, %do.body.if.then2_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.18, i32 noundef %8) #8
  br label %cleanup

do.body5:                                         ; preds = %entry
  br i1 %tobool.not, label %lor.lhs.false8, label %do.body5.if.then10_crit_edge

do.body5.if.then10_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

lor.lhs.false8:                                   ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htc_send_hl, %if.then10)) #8
          to label %do.end16 [label %if.then10], !srcloc !193

if.then10:                                        ; preds = %lor.lhs.false8, %do.body5.if.then10_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  %bundle_tx = getelementptr %struct.ath10k_htc, ptr %htc, i32 0, i32 1, i32 %eid, i32 12
  %9 = ptrtoint ptr %bundle_tx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bundle_tx, align 1, !range !194
  %11 = zext i8 %10 to i32
  %qlen.i = getelementptr %struct.ath10k_htc, ptr %htc, i32 0, i32 1, i32 %eid, i32 13, i32 1
  %12 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qlen.i, align 4
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %eid, i32 noundef %11, i32 noundef %13, i32 noundef %15) #8
  br label %do.end16

do.end16:                                         ; preds = %if.then10, %lor.lhs.false8
  %bundle_tx17 = getelementptr %struct.ath10k_htc, ptr %htc, i32 0, i32 1, i32 %eid, i32 12
  %16 = ptrtoint ptr %bundle_tx17 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bundle_tx17, align 1, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool18.not = icmp eq i8 %17, 0
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #10
  %tx_req_head20 = getelementptr %struct.ath10k_htc, ptr %htc, i32 0, i32 1, i32 %eid, i32 13
  tail call void @skb_queue_tail(ptr noundef %tx_req_head20, ptr noundef %skb) #8
  %workqueue = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 77
  %18 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %workqueue, align 8
  %bundle_tx_work = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 106
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %bundle_tx_work) #8
  br label %cleanup

if.else:                                          ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = tail call i32 @ath10k_htc_send(ptr noundef %htc, i32 noundef %eid, ptr noundef %skb)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then19, %if.then2, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %if.then19 ], [ %call22, %if.else ], [ -12, %if.then2 ], [ -12, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_htc_setup_tx_req(ptr noundef %ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %max_msgs_per_htc_bundle = getelementptr inbounds %struct.ath10k_htc, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %max_msgs_per_htc_bundle to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_msgs_per_htc_bundle, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp ugt i8 %3, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %bundle_tx = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 12
  %4 = ptrtoint ptr %bundle_tx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bundle_tx, align 1, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %bundle_tx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %bundle_tx, align 1
  %tx_req_head = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 13
  %lock.i = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 13, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %7 = ptrtoint ptr %tx_req_head to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %tx_req_head, ptr %tx_req_head, align 4
  %prev.i.i = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 13, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %tx_req_head, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 13, i32 1
  %9 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %qlen.i.i, align 4
  %tx_complete_head = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 14
  %lock.i7 = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 14, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i7, ptr noundef nonnull @.str.54, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %10 = ptrtoint ptr %tx_complete_head to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %tx_complete_head, ptr %tx_complete_head, align 4
  %prev.i.i8 = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 14, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %tx_complete_head, ptr %prev.i.i8, align 4
  %qlen.i.i9 = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 14, i32 1
  %12 = ptrtoint ptr %qlen.i.i9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %qlen.i.i9, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_htc_stop_hl(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bundle_tx_work = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 106
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %bundle_tx_work) #8
  %tx_complete_work = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 107
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %tx_complete_work) #8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.017 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %bundle_tx = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 %i.017, i32 12
  %0 = ptrtoint ptr %bundle_tx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bundle_tx, align 1, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %do.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %2 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %do.body.if.then4_crit_edge

do.body.if.then4_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htc_stop_hl, %if.then4)) #8
          to label %do.end [label %if.then4], !srcloc !193

if.then4:                                         ; preds = %lor.lhs.false, %do.body.if.then4_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  %eid = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 %i.017, i32 1
  %3 = ptrtoint ptr %eid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %eid, align 4
  %qlen.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 %i.017, i32 13, i32 1
  %5 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qlen.i, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef %4, i32 noundef %6) #8
  br label %do.end

do.end:                                           ; preds = %if.then4, %lor.lhs.false
  %tx_req_head7 = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 %i.017, i32 13
  tail call void @skb_queue_purge(ptr noundef %tx_req_head7) #8
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_htc_wait_target(ptr noundef %htc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htc, align 4
  %ctl_resp = getelementptr inbounds %struct.ath10k_htc, ptr %htc, i32 0, i32 6
  %call = tail call i32 @wait_for_completion_timeout(ptr noundef %ctl_resp, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.21) #8
  %hw_values = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %hw_values to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_values, align 4
  %ce_count153 = getelementptr inbounds %struct.ath10k_hw_values, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ce_count153 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ce_count153, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp155.not = icmp eq i8 %5, 0
  br i1 %cmp155.not, label %if.then.if.end9_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

for.body:                                         ; preds = %ath10k_hif_send_complete_check.exit.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.0156 = phi i32 [ %inc, %ath10k_hif_send_complete_check.exit.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %6 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %htc, align 4
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %7, i32 0, i32 34, i32 1
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %send_complete_check.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %send_complete_check.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %send_complete_check.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %for.body.ath10k_hif_send_complete_check.exit_crit_edge, label %if.then.i

for.body.ath10k_hif_send_complete_check.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath10k_hif_send_complete_check.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv4 = trunc i32 %i.0156 to i8
  tail call void %11(ptr noundef %7, i8 noundef zeroext %conv4, i32 noundef 1) #8
  br label %ath10k_hif_send_complete_check.exit

ath10k_hif_send_complete_check.exit:              ; preds = %if.then.i, %for.body.ath10k_hif_send_complete_check.exit_crit_edge
  %inc = add nuw nsw i32 %i.0156, 1
  %12 = ptrtoint ptr %hw_values to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_values, align 4
  %ce_count = getelementptr inbounds %struct.ath10k_hw_values, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ce_count to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ce_count, align 4
  %conv = zext i8 %15 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %ath10k_hif_send_complete_check.exit.for.body_crit_edge, label %ath10k_hif_send_complete_check.exit.if.end9_crit_edge

ath10k_hif_send_complete_check.exit.if.end9_crit_edge: ; preds = %ath10k_hif_send_complete_check.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

ath10k_hif_send_complete_check.exit.for.body_crit_edge: ; preds = %ath10k_hif_send_complete_check.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end9:                                          ; preds = %ath10k_hif_send_complete_check.exit.if.end9_crit_edge, %if.then.if.end9_crit_edge
  %call6 = tail call i32 @wait_for_completion_timeout(ptr noundef %ctl_resp, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then12, label %if.end9.if.end13_crit_edge

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef -110) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end9.if.end13_crit_edge, %entry.if.end13_crit_edge
  %control_resp_len = getelementptr inbounds %struct.ath10k_htc, ptr %htc, i32 0, i32 5
  %16 = ptrtoint ptr %control_resp_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %control_resp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %17)
  %cmp14 = icmp ult i32 %17, 8
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %17) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %control_resp_buffer = getelementptr inbounds %struct.ath10k_htc, ptr %htc, i32 0, i32 4
  %18 = ptrtoint ptr %control_resp_buffer to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %control_resp_buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %19)
  %cmp21.not = icmp eq i16 %19, 256
  br i1 %cmp21.not, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %conv20 = zext i16 %20 to i32
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef %conv20) #8
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %21 = getelementptr inbounds %struct.ath10k_htc, ptr %htc, i32 0, i32 4, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %21, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %conv26 = zext i16 %24 to i32
  %total_transmit_credits = getelementptr inbounds %struct.ath10k_htc, ptr %htc, i32 0, i32 7
  %25 = ptrtoint ptr %total_transmit_credits to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv26, ptr %total_transmit_credits, align 4
  %credit_size = getelementptr inbounds %struct.ath10k_htc, ptr %htc, i32 0, i32 4, i32 4
  %26 = ptrtoint ptr %credit_size to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %credit_size, align 2
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  %conv27 = zext i16 %28 to i32
  %target_credit_size = getelementptr inbounds %struct.ath10k_htc, ptr %htc, i32 0, i32 8
  %29 = ptrtoint ptr %target_credit_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv27, ptr %target_credit_size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %30 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %lor.lhs.false, label %if.end25.if.then31_crit_edge

if.end25.if.then31_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

lor.lhs.false:                                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htc_wait_target, %if.then31)) #8
          to label %do.end [label %if.then31], !srcloc !193

if.then31:                                        ; preds = %lor.lhs.false, %if.end25.if.then31_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %total_transmit_credits to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %total_transmit_credits, align 4
  %33 = ptrtoint ptr %target_credit_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %target_credit_size, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.25, i32 noundef %32, i32 noundef %34) #8
  br label %do.end

do.end:                                           ; preds = %if.then31, %lor.lhs.false
  %35 = ptrtoint ptr %total_transmit_credits to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %total_transmit_credits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp36 = icmp eq i32 %36, 0
  br i1 %cmp36, label %do.end.if.then42_crit_edge, label %lor.lhs.false38

do.end.if.then42_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

lor.lhs.false38:                                  ; preds = %do.end
  %37 = ptrtoint ptr %target_credit_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %target_credit_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp40 = icmp eq i32 %38, 0
  br i1 %cmp40, label %lor.lhs.false38.if.then42_crit_edge, label %if.end43

lor.lhs.false38.if.then42_crit_edge:              ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

if.then42:                                        ; preds = %lor.lhs.false38.if.then42_crit_edge, %do.end.if.then42_crit_edge
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %1, ptr noundef nonnull @.str.26) #8
  br label %cleanup

if.end43:                                         ; preds = %lor.lhs.false38
  %39 = ptrtoint ptr %control_resp_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %control_resp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %40)
  %cmp45 = icmp ugt i32 %40, 11
  br i1 %cmp45, label %if.then47, label %if.end43.do.body72_crit_edge

if.end43.do.body72_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body72

if.then47:                                        ; preds = %if.end43
  %41 = getelementptr inbounds %struct.ath10k_htc, ptr %htc, i32 0, i32 4, i32 10
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %41, align 2
  %44 = and i16 %43, -241
  %45 = tail call i16 @llvm.bswap.i16(i16 %44)
  %and49 = zext i16 %45 to i32
  %alt_data_credit_size = getelementptr inbounds %struct.ath10k_htc, ptr %htc, i32 0, i32 10
  %46 = ptrtoint ptr %alt_data_credit_size to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and49, ptr %alt_data_credit_size, align 4
  %max_msgs_per_htc_bundle = getelementptr inbounds %struct.ath10k_htc, ptr %htc, i32 0, i32 4, i32 9
  %47 = ptrtoint ptr %max_msgs_per_htc_bundle to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %max_msgs_per_htc_bundle, align 1
  %49 = tail call i8 @llvm.umin.i8(i8 %48, i8 32)
  %max_msgs_per_htc_bundle57 = getelementptr inbounds %struct.ath10k_htc, ptr %htc, i32 0, i32 9
  %50 = ptrtoint ptr %max_msgs_per_htc_bundle57 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %max_msgs_per_htc_bundle57, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %51 = load i32, ptr @ath10k_debug_mask, align 4
  %and59 = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %lor.lhs.false61, label %if.then47.if.then64_crit_edge

if.then47.if.then64_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then64

lor.lhs.false61:                                  ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htc_wait_target, %if.then64)) #8
          to label %do.body72 [label %if.then64], !srcloc !193

if.then64:                                        ; preds = %lor.lhs.false61, %if.then47.if.then64_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %max_msgs_per_htc_bundle57 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %max_msgs_per_htc_bundle57, align 4
  %conv66 = zext i8 %53 to i32
  %54 = ptrtoint ptr %alt_data_credit_size to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %alt_data_credit_size, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.27, i32 noundef %conv66, i32 noundef %55) #8
  br label %do.body72

do.body72:                                        ; preds = %if.then64, %lor.lhs.false61, %if.end43.do.body72_crit_edge
  %bundle_tx_work = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 106
  tail call void @__init_work(ptr noundef %bundle_tx_work, i32 noundef 0) #8
  %56 = ptrtoint ptr %bundle_tx_work to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -64, ptr %bundle_tx_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 106, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.28, ptr noundef nonnull @ath10k_htc_wait_target.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry76 = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 106, i32 1
  %57 = ptrtoint ptr %entry76 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %entry76, ptr %entry76, align 4
  %prev.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 106, i32 1, i32 1
  %58 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %entry76, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 106, i32 2
  %59 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @ath10k_htc_bundle_tx_work, ptr %func, align 4
  %tx_complete_work = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 107
  tail call void @__init_work(ptr noundef %tx_complete_work, i32 noundef 0) #8
  %60 = ptrtoint ptr %tx_complete_work to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -64, ptr %tx_complete_work, align 8
  %lockdep_map86 = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 107, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map86, ptr noundef nonnull @.str.30, ptr noundef nonnull @ath10k_htc_wait_target.__key.29, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry88 = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 107, i32 1
  %61 = ptrtoint ptr %entry88 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %entry88, ptr %entry88, align 4
  %prev.i148 = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 107, i32 1, i32 1
  %62 = ptrtoint ptr %prev.i148 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %entry88, ptr %prev.i148, align 4
  %func90 = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 107, i32 2
  %63 = ptrtoint ptr %func90 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @ath10k_htc_tx_complete_work, ptr %func90, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body72, %if.then42, %if.then23, %if.then16, %if.then12
  %retval.0 = phi i32 [ -110, %if.then12 ], [ -70, %if.then16 ], [ -70, %if.then23 ], [ -70, %if.then42 ], [ 0, %do.body72 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_htc_bundle_tx_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -14972
  %endpoint = getelementptr i8, ptr %work, i32 -13188
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.028 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [9 x %struct.ath10k_htc_ep], ptr %endpoint, i32 0, i32 %i.028
  %bundle_tx = getelementptr inbounds %struct.ath10k_htc_ep, ptr %arrayidx, i32 0, i32 12
  %0 = ptrtoint ptr %bundle_tx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bundle_tx, align 1, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %do.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %2 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %do.body.if.then2_crit_edge

do.body.if.then2_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htc_bundle_tx_work, %if.then2)) #8
          to label %do.end [label %if.then2], !srcloc !193

if.then2:                                         ; preds = %lor.lhs.false, %do.body.if.then2_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  %eid = getelementptr inbounds %struct.ath10k_htc_ep, ptr %arrayidx, i32 0, i32 1
  %3 = ptrtoint ptr %eid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %eid, align 4
  %qlen.i = getelementptr inbounds %struct.ath10k_htc_ep, ptr %arrayidx, i32 0, i32 13, i32 1
  %5 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qlen.i, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %add.ptr, i32 noundef 4, ptr noundef nonnull @.str.55, i32 noundef %4, i32 noundef %6) #8
  br label %do.end

do.end:                                           ; preds = %if.then2, %lor.lhs.false
  %tx_req_head5 = getelementptr inbounds %struct.ath10k_htc_ep, ptr %arrayidx, i32 0, i32 13
  %qlen.i26 = getelementptr inbounds %struct.ath10k_htc_ep, ptr %arrayidx, i32 0, i32 13, i32 1
  %7 = ptrtoint ptr %qlen.i26 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qlen.i26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp7 = icmp ugt i32 %8, 1
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ath10k_htc_send_bundle_skbs(ptr noundef %arrayidx)
  br label %for.inc

if.else:                                          ; preds = %do.end
  %call11 = tail call ptr @skb_dequeue(ptr noundef %tx_req_head5) #8
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.else.for.inc_crit_edge, label %if.end14

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end14:                                         ; preds = %if.else
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %eid.i = getelementptr inbounds %struct.ath10k_htc_ep, ptr %arrayidx, i32 0, i32 1
  %13 = ptrtoint ptr %eid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %eid.i, align 4
  %call.i = tail call i32 @ath10k_htc_send(ptr noundef %10, i32 noundef %14, ptr noundef nonnull %call11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end14.do.body.i_crit_edge, label %if.then.i

if.end14.do.body.i_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_queue_head(ptr noundef %tx_req_head5, ptr noundef nonnull %call11) #8
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.end14.do.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %15 = load i32, ptr @ath10k_debug_mask, align 4
  %and.i = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i, label %do.body.i.if.then5.i_crit_edge

do.body.i.if.then5.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.i

lor.lhs.false.i:                                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htc_bundle_tx_work, %if.then5.i)) #8
          to label %for.inc [label %if.then5.i], !srcloc !193

if.then5.i:                                       ; preds = %lor.lhs.false.i, %do.body.i.if.then5.i_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %eid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %eid.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call11, i32 0, i32 6
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i, align 4
  %20 = ptrtoint ptr %qlen.i26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qlen.i26, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %12, i32 noundef 4, ptr noundef nonnull @.str.58, i32 noundef %call.i, i32 noundef %17, i32 noundef %19, i32 noundef %21) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then5.i, %lor.lhs.false.i, %if.else.for.inc_crit_edge, %if.then8, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_htc_tx_complete_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -15016
  %endpoint = getelementptr i8, ptr %work, i32 -13232
  %eid2 = getelementptr i8, ptr %work, i32 -11404
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.028 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [9 x %struct.ath10k_htc_ep], ptr %endpoint, i32 0, i32 %i.028
  %eid1 = getelementptr inbounds %struct.ath10k_htc_ep, ptr %arrayidx, i32 0, i32 1
  %bundle_tx = getelementptr inbounds %struct.ath10k_htc_ep, ptr %arrayidx, i32 0, i32 12
  %0 = ptrtoint ptr %bundle_tx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bundle_tx, align 1, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %2 = ptrtoint ptr %eid1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eid1, align 4
  %4 = ptrtoint ptr %eid2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eid2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp3 = icmp eq i32 %3, %5
  br i1 %cmp3, label %do.body, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %6 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %do.body.if.then5_crit_edge

do.body.if.then5_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htc_tx_complete_work, %if.then5)) #8
          to label %do.end [label %if.then5], !srcloc !193

if.then5:                                         ; preds = %lor.lhs.false, %do.body.if.then5_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %eid1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %eid1, align 4
  %qlen.i = getelementptr inbounds %struct.ath10k_htc_ep, ptr %arrayidx, i32 0, i32 14, i32 1
  %9 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qlen.i, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %add.ptr, i32 noundef 4, ptr noundef nonnull @.str.59, i32 noundef %8, i32 noundef %10) #8
  br label %do.end

do.end:                                           ; preds = %if.then5, %lor.lhs.false
  %tx_complete_head8 = getelementptr inbounds %struct.ath10k_htc_ep, ptr %arrayidx, i32 0, i32 14
  %call925 = tail call ptr @skb_dequeue(ptr noundef %tx_complete_head8) #8
  %tobool10.not26 = icmp eq ptr %call925, null
  br i1 %tobool10.not26, label %do.end.for.inc_crit_edge, label %do.end.if.end12_crit_edge

do.end.if.end12_crit_edge:                        ; preds = %do.end
  br label %if.end12

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end12:                                         ; preds = %if.end12.if.end12_crit_edge, %do.end.if.end12_crit_edge
  %call927 = phi ptr [ %call9, %if.end12.if.end12_crit_edge ], [ %call925, %do.end.if.end12_crit_edge ]
  tail call void @ath10k_htc_notify_tx_completion(ptr noundef %arrayidx, ptr noundef nonnull %call927)
  %call9 = tail call ptr @skb_dequeue(ptr noundef %tx_complete_head8) #8
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end12.for.inc_crit_edge, label %if.end12.if.end12_crit_edge

if.end12.if.end12_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %if.end12.for.inc_crit_edge, %do.end.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath10k_htc_change_tx_credit_flow(ptr nocapture noundef readonly %htc, i32 noundef %eid, i1 noundef zeroext %enable) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %0 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htc, align 4
  %tx_credit_flow_enabled = getelementptr %struct.ath10k, ptr %1, i32 0, i32 42, i32 1, i32 %eid, i32 11
  %2 = ptrtoint ptr %tx_credit_flow_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %tx_credit_flow_enabled, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_htc_connect_service(ptr noundef %htc, ptr nocapture noundef readonly %conn_req, ptr nocapture noundef writeonly %conn_resp) local_unnamed_addr #0 align 64 {
entry:
  %resp_msg_dummy = alloca %struct.ath10k_htc_conn_svc_response, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htc, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %resp_msg_dummy) #8
  %2 = call ptr @memset(ptr %resp_msg_dummy, i32 255, i32 6)
  %3 = ptrtoint ptr %conn_req to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %conn_req, align 4
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.83)
  switch i16 %4, label %entry.do.body_crit_edge [
    i16 1, label %if.then
    i16 256, label %ath10k_htc_get_credit_allocation.exit
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = call ptr @memset(ptr %resp_msg_dummy, i32 0, i32 6)
  br label %setup

ath10k_htc_get_credit_allocation.exit:            ; preds = %entry
  %total_transmit_credits.i = getelementptr inbounds %struct.ath10k_htc, ptr %htc, i32 0, i32 7
  %7 = ptrtoint ptr %total_transmit_credits.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %total_transmit_credits.i, align 4
  %conv2.i = trunc i32 %8 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv2.i)
  %tobool.not = icmp eq i8 %conv2.i, 0
  br i1 %tobool.not, label %ath10k_htc_get_credit_allocation.exit.do.body_crit_edge, label %ath10k_htc_get_credit_allocation.exit.if.end14_crit_edge

ath10k_htc_get_credit_allocation.exit.if.end14_crit_edge: ; preds = %ath10k_htc_get_credit_allocation.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

ath10k_htc_get_credit_allocation.exit.do.body_crit_edge: ; preds = %ath10k_htc_get_credit_allocation.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %ath10k_htc_get_credit_allocation.exit.do.body_crit_edge, %entry.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %9 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %do.body.if.then9_crit_edge

do.body.if.then9_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htc_connect_service, %if.then9)) #8
          to label %if.end14 [label %if.then9], !srcloc !193

if.then9:                                         ; preds = %lor.lhs.false, %do.body.if.then9_crit_edge
  %10 = ptrtoint ptr %conn_req to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %conn_req, align 4
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.84)
  switch i16 %11, label %sw.epilog.i [
    i16 0, label %if.then9.htc_service_name.exit_crit_edge
    i16 1, label %sw.bb1.i
    i16 256, label %sw.bb2.i
    i16 257, label %sw.bb3.i
    i16 258, label %sw.bb4.i
    i16 259, label %sw.bb5.i
    i16 260, label %sw.bb6.i
    i16 512, label %sw.bb7.i
    i16 513, label %sw.bb8.i
    i16 768, label %sw.bb9.i
    i16 769, label %sw.bb10.i
    i16 770, label %sw.bb11.i
    i16 -512, label %sw.bb12.i
    i16 1536, label %sw.bb13.i
  ]

if.then9.htc_service_name.exit_crit_edge:         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %htc_service_name.exit

sw.bb1.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %htc_service_name.exit

sw.bb2.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %htc_service_name.exit

sw.bb3.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %htc_service_name.exit

sw.bb4.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %htc_service_name.exit

sw.bb5.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %htc_service_name.exit

sw.bb6.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %htc_service_name.exit

sw.bb7.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %htc_service_name.exit

sw.bb8.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %htc_service_name.exit

sw.bb9.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %htc_service_name.exit

sw.bb10.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %htc_service_name.exit

sw.bb11.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %htc_service_name.exit

sw.bb12.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %htc_service_name.exit

sw.bb13.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %htc_service_name.exit

sw.epilog.i:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %htc_service_name.exit

htc_service_name.exit:                            ; preds = %sw.epilog.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then9.htc_service_name.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.72, %sw.epilog.i ], [ @.str.71, %sw.bb13.i ], [ @.str.70, %sw.bb12.i ], [ @.str.69, %sw.bb11.i ], [ @.str.69, %sw.bb10.i ], [ @.str.69, %sw.bb9.i ], [ @.str.68, %sw.bb8.i ], [ @.str.67, %sw.bb7.i ], [ @.str.66, %sw.bb6.i ], [ @.str.65, %sw.bb5.i ], [ @.str.64, %sw.bb4.i ], [ @.str.63, %sw.bb3.i ], [ @.str.62, %sw.bb2.i ], [ @.str.61, %sw.bb1.i ], [ @.str.60, %if.then9.htc_service_name.exit_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.31, ptr noundef nonnull %retval.0.i) #8
  br label %if.end14

if.end14:                                         ; preds = %htc_service_name.exit, %lor.lhs.false, %ath10k_htc_get_credit_allocation.exit.if.end14_crit_edge
  %allocation.0.i307 = phi i8 [ 0, %htc_service_name.exit ], [ %conv2.i, %ath10k_htc_get_credit_allocation.exit.if.end14_crit_edge ], [ 0, %lor.lhs.false ]
  %13 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %htc, align 4
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 264, i32 noundef 2592) #8
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %if.then18, label %if.end.i

if.end.i:                                         ; preds = %if.end14
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %15 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 20
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %17 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %18, i32 20
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  %and.i = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end31.i_crit_edge, label %land.rhs.i

if.end.i.if.end31.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

land.rhs.i:                                       ; preds = %if.end.i
  %.b56.i = load i1, ptr @ath10k_htc_build_tx_ctrl_skb.__already_done, align 1
  br i1 %.b56.i, label %land.rhs.i.if.end31.i_crit_edge, label %if.then9.i, !prof !195

land.rhs.i.if.end31.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.then9.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ath10k_htc_build_tx_ctrl_skb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 31, i32 noundef 9, ptr noundef nonnull @.str.73) #8
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then9.i, %land.rhs.i.if.end31.i_crit_edge, %if.end.i.if.end31.i_crit_edge
  %20 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 8
  %21 = call ptr @memset(ptr %20, i32 0, i32 22)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %22 = load i32, ptr @ath10k_debug_mask, align 4
  %and41.i = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %lor.lhs.false.i, label %if.end31.i.if.then44.i_crit_edge

if.end31.i.if.then44.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44.i

lor.lhs.false.i:                                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htc_connect_service, %if.then44.i)) #8
          to label %if.end19 [label %if.then44.i], !srcloc !193

if.then44.i:                                      ; preds = %lor.lhs.false.i, %if.end31.i.if.then44.i_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %14, i32 noundef 4, ptr noundef nonnull @.str.74, ptr noundef nonnull @__func__.ath10k_htc_build_tx_ctrl_skb, ptr noundef nonnull %call.i.i.i) #8
  br label %if.end19

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %1, ptr noundef nonnull @.str.32) #8
  br label %cleanup

if.end19:                                         ; preds = %if.then44.i, %lor.lhs.false.i
  %call20 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 8) #8
  %23 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 0, ptr %24, align 1
  %26 = load ptr, ptr %data.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 512, ptr %26, align 4
  %conv23 = zext i8 %allocation.0.i307 to i16
  %shl = shl nuw i16 %conv23, 8
  %28 = ptrtoint ptr %conn_req to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %conn_req, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %29)
  %cmp29.not = icmp eq i16 %29, 256
  %30 = or i16 %shl, 8
  %spec.select = select i1 %cmp29.not, i16 %shl, i16 %30
  %31 = xor i1 %cmp29.not, true
  %32 = getelementptr inbounds %struct.ath10k_htc_msg, ptr %26, i32 0, i32 1
  %33 = tail call i16 @llvm.bswap.i16(i16 %spec.select)
  %flags36 = getelementptr inbounds %struct.ath10k_htc_msg, ptr %26, i32 0, i32 1, i32 0, i32 0, i32 1
  %34 = ptrtoint ptr %flags36 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %33, ptr %flags36, align 1
  %35 = ptrtoint ptr %conn_req to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %conn_req, align 4
  %37 = tail call i16 @llvm.bswap.i16(i16 %36)
  %38 = ptrtoint ptr %32 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %37, ptr %32, align 1
  %ctl_resp = getelementptr inbounds %struct.ath10k_htc, ptr %htc, i32 0, i32 6
  %39 = ptrtoint ptr %ctl_resp to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %ctl_resp, align 4
  %call39 = tail call i32 @ath10k_htc_send(ptr noundef %htc, i32 noundef 0, ptr noundef nonnull %call.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #8
  br label %cleanup

if.end42:                                         ; preds = %if.end19
  %call44 = tail call i32 @wait_for_completion_timeout(ptr noundef %ctl_resp, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %1, ptr noundef nonnull @.str.33) #8
  br label %cleanup

if.end47:                                         ; preds = %if.end42
  %control_resp_buffer = getelementptr inbounds %struct.ath10k_htc, ptr %htc, i32 0, i32 4
  %40 = getelementptr inbounds %struct.ath10k_htc, ptr %htc, i32 0, i32 4, i32 2
  %41 = ptrtoint ptr %control_resp_buffer to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %control_resp_buffer, align 4
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %40, align 1
  %46 = tail call i16 @llvm.bswap.i16(i16 %45)
  %conv51 = zext i16 %43 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %42)
  %cmp52.not = icmp eq i16 %42, 768
  br i1 %cmp52.not, label %lor.lhs.false54, label %if.end47.if.then57_crit_edge

if.end47.if.then57_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

lor.lhs.false54:                                  ; preds = %if.end47
  %control_resp_len = getelementptr inbounds %struct.ath10k_htc, ptr %htc, i32 0, i32 5
  %47 = ptrtoint ptr %control_resp_len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %control_resp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %48)
  %cmp55 = icmp ult i32 %48, 8
  br i1 %cmp55, label %lor.lhs.false54.if.then57_crit_edge, label %do.body60

lor.lhs.false54.if.then57_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

if.then57:                                        ; preds = %lor.lhs.false54.if.then57_crit_edge, %if.end47.if.then57_crit_edge
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %1, ptr noundef nonnull @.str.34, i32 noundef %conv51) #8
  br label %cleanup

do.body60:                                        ; preds = %lor.lhs.false54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %49 = load i32, ptr @ath10k_debug_mask, align 4
  %and61 = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %lor.lhs.false63, label %do.body60.if.then66_crit_edge

do.body60.if.then66_crit_edge:                    ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then66

lor.lhs.false63:                                  ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htc_connect_service, %if.then66)) #8
          to label %do.end74 [label %if.then66], !srcloc !193

if.then66:                                        ; preds = %lor.lhs.false63, %do.body60.if.then66_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  %conv67 = zext i16 %46 to i32
  %call68 = tail call fastcc ptr @htc_service_name(i32 noundef %conv67)
  %status69 = getelementptr inbounds %struct.ath10k_htc, ptr %htc, i32 0, i32 4, i32 4
  %50 = ptrtoint ptr %status69 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %status69, align 1
  %conv70 = zext i8 %51 to i32
  %eid = getelementptr inbounds %struct.ath10k_htc, ptr %htc, i32 0, i32 4, i32 5
  %52 = ptrtoint ptr %eid to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %eid, align 1
  %conv71 = zext i8 %53 to i32
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.35, ptr noundef nonnull %call68, i32 noundef %conv70, i32 noundef %conv71) #8
  br label %do.end74

do.end74:                                         ; preds = %if.then66, %lor.lhs.false63
  %status75 = getelementptr inbounds %struct.ath10k_htc, ptr %htc, i32 0, i32 4, i32 4
  %54 = ptrtoint ptr %status75 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %status75, align 1
  %connect_resp_code = getelementptr inbounds %struct.ath10k_htc_svc_conn_resp, ptr %conn_resp, i32 0, i32 4
  %56 = ptrtoint ptr %connect_resp_code to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %connect_resp_code, align 4
  %57 = load i8, ptr %status75, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp78.not = icmp eq i8 %57, 0
  br i1 %cmp78.not, label %if.end85, label %if.then80

if.then80:                                        ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #10
  %conv81 = zext i16 %46 to i32
  %call82 = tail call fastcc ptr @htc_service_name(i32 noundef %conv81)
  %conv84 = zext i8 %57 to i32
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %1, ptr noundef nonnull @.str.36, ptr noundef nonnull %call82, i32 noundef %conv84) #8
  br label %cleanup

if.end85:                                         ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #10
  %eid86 = getelementptr inbounds %struct.ath10k_htc, ptr %htc, i32 0, i32 4, i32 5
  %58 = ptrtoint ptr %eid86 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %eid86, align 1
  %conv87 = zext i8 %59 to i32
  %max_msg_size88 = getelementptr inbounds %struct.ath10k_htc, ptr %htc, i32 0, i32 4, i32 6
  %60 = ptrtoint ptr %max_msg_size88 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %max_msg_size88, align 1
  %62 = tail call i16 @llvm.bswap.i16(i16 %61)
  %conv89 = zext i16 %62 to i32
  %phi.cast = zext i8 %allocation.0.i307 to i32
  br label %setup

setup:                                            ; preds = %if.end85, %if.then
  %resp_msg.0 = phi ptr [ %resp_msg_dummy, %if.then ], [ %40, %if.end85 ]
  %assigned_eid.0 = phi i32 [ 0, %if.then ], [ %conv87, %if.end85 ]
  %max_msg_size.0 = phi i32 [ 256, %if.then ], [ %conv89, %if.end85 ]
  %disable_credit_flow_ctrl.1.off0 = phi i1 [ true, %if.then ], [ %31, %if.end85 ]
  %tx_alloc.0 = phi i32 [ 0, %if.then ], [ %phi.cast, %if.end85 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %assigned_eid.0)
  %cmp90 = icmp ugt i32 %assigned_eid.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_msg_size.0)
  %cmp94 = icmp eq i32 %max_msg_size.0, 0
  %or.cond = select i1 %cmp90, i1 true, i1 %cmp94
  br i1 %or.cond, label %setup.cleanup_crit_edge, label %if.end97

setup.cleanup_crit_edge:                          ; preds = %setup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end97:                                         ; preds = %setup
  %eid98 = getelementptr %struct.ath10k_htc, ptr %htc, i32 0, i32 1, i32 %assigned_eid.0, i32 1
  %63 = ptrtoint ptr %eid98 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %assigned_eid.0, ptr %eid98, align 4
  %service_id99 = getelementptr %struct.ath10k_htc, ptr %htc, i32 0, i32 1, i32 %assigned_eid.0, i32 2
  %64 = ptrtoint ptr %service_id99 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %service_id99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp100.not = icmp eq i32 %65, 0
  br i1 %cmp100.not, label %if.end103, label %if.end97.cleanup_crit_edge

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end103:                                        ; preds = %if.end97
  %eid104 = getelementptr inbounds %struct.ath10k_htc_svc_conn_resp, ptr %conn_resp, i32 0, i32 2
  %66 = ptrtoint ptr %eid104 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %assigned_eid.0, ptr %eid104, align 4
  %max_msg_size105 = getelementptr inbounds %struct.ath10k_htc_conn_svc_response, ptr %resp_msg.0, i32 0, i32 3
  %67 = ptrtoint ptr %max_msg_size105 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %max_msg_size105, align 1
  %69 = tail call i16 @llvm.bswap.i16(i16 %68)
  %conv106 = zext i16 %69 to i32
  %max_msg_len = getelementptr inbounds %struct.ath10k_htc_svc_conn_resp, ptr %conn_resp, i32 0, i32 3
  %70 = ptrtoint ptr %max_msg_len to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv106, ptr %max_msg_len, align 4
  %71 = ptrtoint ptr %conn_req to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %conn_req, align 4
  %conv108 = zext i16 %72 to i32
  %73 = ptrtoint ptr %service_id99 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv108, ptr %service_id99, align 4
  %max_send_queue_depth = getelementptr inbounds %struct.ath10k_htc_svc_conn_req, ptr %conn_req, i32 0, i32 2
  %74 = ptrtoint ptr %max_send_queue_depth to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %max_send_queue_depth, align 4
  %max_tx_queue_depth = getelementptr %struct.ath10k_htc, ptr %htc, i32 0, i32 1, i32 %assigned_eid.0, i32 4
  %76 = ptrtoint ptr %max_tx_queue_depth to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %max_tx_queue_depth, align 4
  %77 = ptrtoint ptr %max_msg_size105 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %78 = load i16, ptr %max_msg_size105, align 1
  %79 = tail call i16 @llvm.bswap.i16(i16 %78)
  %conv111 = zext i16 %79 to i32
  %max_ep_message_len = getelementptr %struct.ath10k_htc, ptr %htc, i32 0, i32 1, i32 %assigned_eid.0, i32 5
  %80 = ptrtoint ptr %max_ep_message_len to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv111, ptr %max_ep_message_len, align 4
  %tx_credits = getelementptr %struct.ath10k_htc, ptr %htc, i32 0, i32 1, i32 %assigned_eid.0, i32 9
  %81 = ptrtoint ptr %tx_credits to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %tx_alloc.0, ptr %tx_credits, align 4
  %target_credit_size = getelementptr inbounds %struct.ath10k_htc, ptr %htc, i32 0, i32 8
  %82 = ptrtoint ptr %target_credit_size to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %target_credit_size, align 4
  %tx_credit_size = getelementptr %struct.ath10k_htc, ptr %htc, i32 0, i32 1, i32 %assigned_eid.0, i32 10
  %84 = ptrtoint ptr %tx_credit_size to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %tx_credit_size, align 4
  %85 = ptrtoint ptr %conn_req to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %conn_req, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %86)
  %cmp115 = icmp eq i16 %86, 768
  br i1 %cmp115, label %land.lhs.true, label %if.end103.if.end122_crit_edge

if.end103.if.end122_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

land.lhs.true:                                    ; preds = %if.end103
  %alt_data_credit_size = getelementptr inbounds %struct.ath10k_htc, ptr %htc, i32 0, i32 10
  %87 = ptrtoint ptr %alt_data_credit_size to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %alt_data_credit_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp117.not = icmp eq i32 %88, 0
  br i1 %cmp117.not, label %land.lhs.true.if.end122_crit_edge, label %if.then119

land.lhs.true.if.end122_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

if.then119:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %tx_credit_size to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %tx_credit_size, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then119, %land.lhs.true.if.end122_crit_edge, %if.end103.if.end122_crit_edge
  %ep_ops = getelementptr %struct.ath10k_htc, ptr %htc, i32 0, i32 1, i32 %assigned_eid.0, i32 3
  %ep_ops123 = getelementptr inbounds %struct.ath10k_htc_svc_conn_req, ptr %conn_req, i32 0, i32 1
  %90 = call ptr @memcpy(ptr %ep_ops, ptr %ep_ops123, i32 12)
  %91 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %htc, align 4
  %93 = ptrtoint ptr %service_id99 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %service_id99, align 4
  %conv126 = trunc i32 %94 to i16
  %ul_pipe_id = getelementptr %struct.ath10k_htc, ptr %htc, i32 0, i32 1, i32 %assigned_eid.0, i32 6
  %dl_pipe_id = getelementptr %struct.ath10k_htc, ptr %htc, i32 0, i32 1, i32 %assigned_eid.0, i32 7
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %92, i32 0, i32 34, i32 1
  %95 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ops.i, align 4
  %map_service_to_pipe.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %96, i32 0, i32 8
  %97 = ptrtoint ptr %map_service_to_pipe.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %map_service_to_pipe.i, align 4
  %call.i = tail call i32 %98(ptr noundef %92, i16 noundef zeroext %conv126, ptr noundef %ul_pipe_id, ptr noundef %dl_pipe_id) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool128.not = icmp eq i32 %call.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %99 = load i32, ptr @ath10k_debug_mask, align 4
  %and143 = and i32 %99, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool128.not, label %do.body142, label %do.body130

do.body130:                                       ; preds = %if.end122
  br i1 %tobool144.not, label %lor.lhs.false133, label %do.body130.if.then136_crit_edge

do.body130.if.then136_crit_edge:                  ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then136

lor.lhs.false133:                                 ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htc_connect_service, %if.then136)) #8
          to label %cleanup [label %if.then136], !srcloc !193

if.then136:                                       ; preds = %lor.lhs.false133, %do.body130.if.then136_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %service_id99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %service_id99, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.37, i32 noundef %101) #8
  br label %cleanup

do.body142:                                       ; preds = %if.end122
  br i1 %tobool144.not, label %lor.lhs.false145, label %do.body142.if.then148_crit_edge

do.body142.if.then148_crit_edge:                  ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then148

lor.lhs.false145:                                 ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htc_connect_service, %if.then148)) #8
          to label %do.end158 [label %if.then148], !srcloc !193

if.then148:                                       ; preds = %lor.lhs.false145, %do.body142.if.then148_crit_edge
  %102 = ptrtoint ptr %service_id99 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %service_id99, align 4
  %104 = zext i32 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %103, label %sw.epilog.i299 [
    i32 0, label %if.then148.htc_service_name.exit301_crit_edge
    i32 1, label %sw.bb1.i286
    i32 256, label %sw.bb2.i287
    i32 257, label %sw.bb3.i288
    i32 258, label %sw.bb4.i289
    i32 259, label %sw.bb5.i290
    i32 260, label %sw.bb6.i291
    i32 512, label %sw.bb7.i292
    i32 513, label %sw.bb8.i293
    i32 768, label %sw.bb9.i294
    i32 769, label %sw.bb10.i295
    i32 770, label %sw.bb11.i296
    i32 65024, label %sw.bb12.i297
    i32 1536, label %sw.bb13.i298
  ]

if.then148.htc_service_name.exit301_crit_edge:    ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #10
  br label %htc_service_name.exit301

sw.bb1.i286:                                      ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #10
  br label %htc_service_name.exit301

sw.bb2.i287:                                      ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #10
  br label %htc_service_name.exit301

sw.bb3.i288:                                      ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #10
  br label %htc_service_name.exit301

sw.bb4.i289:                                      ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #10
  br label %htc_service_name.exit301

sw.bb5.i290:                                      ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #10
  br label %htc_service_name.exit301

sw.bb6.i291:                                      ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #10
  br label %htc_service_name.exit301

sw.bb7.i292:                                      ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #10
  br label %htc_service_name.exit301

sw.bb8.i293:                                      ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #10
  br label %htc_service_name.exit301

sw.bb9.i294:                                      ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #10
  br label %htc_service_name.exit301

sw.bb10.i295:                                     ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #10
  br label %htc_service_name.exit301

sw.bb11.i296:                                     ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #10
  br label %htc_service_name.exit301

sw.bb12.i297:                                     ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #10
  br label %htc_service_name.exit301

sw.bb13.i298:                                     ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #10
  br label %htc_service_name.exit301

sw.epilog.i299:                                   ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #10
  br label %htc_service_name.exit301

htc_service_name.exit301:                         ; preds = %sw.epilog.i299, %sw.bb13.i298, %sw.bb12.i297, %sw.bb11.i296, %sw.bb10.i295, %sw.bb9.i294, %sw.bb8.i293, %sw.bb7.i292, %sw.bb6.i291, %sw.bb5.i290, %sw.bb4.i289, %sw.bb3.i288, %sw.bb2.i287, %sw.bb1.i286, %if.then148.htc_service_name.exit301_crit_edge
  %retval.0.i300 = phi ptr [ @.str.72, %sw.epilog.i299 ], [ @.str.71, %sw.bb13.i298 ], [ @.str.70, %sw.bb12.i297 ], [ @.str.69, %sw.bb11.i296 ], [ @.str.69, %sw.bb10.i295 ], [ @.str.69, %sw.bb9.i294 ], [ @.str.68, %sw.bb8.i293 ], [ @.str.67, %sw.bb7.i292 ], [ @.str.66, %sw.bb6.i291 ], [ @.str.65, %sw.bb5.i290 ], [ @.str.64, %sw.bb4.i289 ], [ @.str.63, %sw.bb3.i288 ], [ @.str.62, %sw.bb2.i287 ], [ @.str.61, %sw.bb1.i286 ], [ @.str.60, %if.then148.htc_service_name.exit301_crit_edge ]
  %105 = ptrtoint ptr %ul_pipe_id to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %ul_pipe_id, align 4
  %conv152 = zext i8 %106 to i32
  %107 = ptrtoint ptr %dl_pipe_id to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %dl_pipe_id, align 1
  %conv154 = zext i8 %108 to i32
  %109 = ptrtoint ptr %eid98 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %eid98, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.38, ptr noundef nonnull %retval.0.i300, i32 noundef %conv152, i32 noundef %conv154, i32 noundef %110) #8
  br label %do.end158

do.end158:                                        ; preds = %htc_service_name.exit301, %lor.lhs.false145
  br i1 %disable_credit_flow_ctrl.1.off0, label %land.lhs.true161, label %do.end158.cleanup_crit_edge

do.end158.cleanup_crit_edge:                      ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true161:                                 ; preds = %do.end158
  %tx_credit_flow_enabled = getelementptr %struct.ath10k_htc, ptr %htc, i32 0, i32 1, i32 %assigned_eid.0, i32 11
  %111 = ptrtoint ptr %tx_credit_flow_enabled to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %tx_credit_flow_enabled, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool162.not = icmp eq i8 %112, 0
  br i1 %tobool162.not, label %land.lhs.true161.cleanup_crit_edge, label %if.then164

land.lhs.true161.cleanup_crit_edge:               ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then164:                                       ; preds = %land.lhs.true161
  %113 = ptrtoint ptr %tx_credit_flow_enabled to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %tx_credit_flow_enabled, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %114 = load i32, ptr @ath10k_debug_mask, align 4
  %and167 = and i32 %114, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %lor.lhs.false169, label %if.then164.if.then172_crit_edge

if.then164.if.then172_crit_edge:                  ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then172

lor.lhs.false169:                                 ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htc_connect_service, %if.then172)) #8
          to label %cleanup [label %if.then172], !srcloc !193

if.then172:                                       ; preds = %lor.lhs.false169, %if.then164.if.then172_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  %115 = ptrtoint ptr %service_id99 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %service_id99, align 4
  %call174 = tail call fastcc ptr @htc_service_name(i32 noundef %116)
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.39, ptr noundef nonnull %call174, i32 noundef %assigned_eid.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then172, %lor.lhs.false169, %land.lhs.true161.cleanup_crit_edge, %do.end158.cleanup_crit_edge, %if.then136, %lor.lhs.false133, %if.end97.cleanup_crit_edge, %setup.cleanup_crit_edge, %if.then80, %if.then57, %if.then46, %if.then41, %if.then18
  %retval.0 = phi i32 [ %call39, %if.then41 ], [ -71, %if.then57 ], [ -71, %if.then80 ], [ -110, %if.then46 ], [ -12, %if.then18 ], [ -71, %setup.cleanup_crit_edge ], [ -71, %if.end97.cleanup_crit_edge ], [ %call.i, %if.then136 ], [ 0, %if.then172 ], [ 0, %land.lhs.true161.cleanup_crit_edge ], [ 0, %do.end158.cleanup_crit_edge ], [ %call.i, %lor.lhs.false133 ], [ 0, %lor.lhs.false169 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp_msg_dummy) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @htc_service_name(i32 noundef %id) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %id, label %sw.epilog [
    i32 0, label %entry.return_crit_edge
    i32 1, label %sw.bb1
    i32 256, label %sw.bb2
    i32 257, label %sw.bb3
    i32 258, label %sw.bb4
    i32 259, label %sw.bb5
    i32 260, label %sw.bb6
    i32 512, label %sw.bb7
    i32 513, label %sw.bb8
    i32 768, label %sw.bb9
    i32 769, label %sw.bb10
    i32 770, label %sw.bb11
    i32 65024, label %sw.bb12
    i32 1536, label %sw.bb13
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi ptr [ @.str.72, %sw.epilog ], [ @.str.71, %sw.bb13 ], [ @.str.70, %sw.bb12 ], [ @.str.69, %sw.bb11 ], [ @.str.69, %sw.bb10 ], [ @.str.69, %sw.bb9 ], [ @.str.68, %sw.bb8 ], [ @.str.67, %sw.bb7 ], [ @.str.66, %sw.bb6 ], [ @.str.65, %sw.bb5 ], [ @.str.64, %sw.bb4 ], [ @.str.63, %sw.bb3 ], [ @.str.62, %sw.bb2 ], [ @.str.61, %sw.bb1 ], [ @.str.60, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath10k_htc_alloc_skb(ptr noundef %ar, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %size, 8
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add, i32 noundef 2592) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %3, i32 8
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %4 = ptrtoint ptr %add.ptr.i to i32
  %and = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.40) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_htc_start(ptr nocapture noundef %htc) local_unnamed_addr #0 align 64 {
entry:
  %conn_resp.i = alloca %struct.ath10k_htc_svc_conn_resp, align 4
  %conn_req.i = alloca %struct.ath10k_htc_svc_conn_req, align 4
  %ul_pipe_id.i = alloca i8, align 1
  %dl_pipe_id.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htc, align 4
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 264, i32 noundef 2592) #8
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 20
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %5, i32 20
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  %and.i = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end31.i_crit_edge, label %land.rhs.i

if.end.i.if.end31.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

land.rhs.i:                                       ; preds = %if.end.i
  %.b56.i = load i1, ptr @ath10k_htc_build_tx_ctrl_skb.__already_done, align 1
  br i1 %.b56.i, label %land.rhs.i.if.end31.i_crit_edge, label %if.then9.i, !prof !195

land.rhs.i.if.end31.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.then9.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ath10k_htc_build_tx_ctrl_skb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 31, i32 noundef 9, ptr noundef nonnull @.str.73) #8
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then9.i, %land.rhs.i.if.end31.i_crit_edge, %if.end.i.if.end31.i_crit_edge
  %7 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 22)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %9 = load i32, ptr @ath10k_debug_mask, align 4
  %and41.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %lor.lhs.false.i, label %if.end31.i.if.then44.i_crit_edge

if.end31.i.if.then44.i_crit_edge:                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44.i

lor.lhs.false.i:                                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htc_start, %if.then44.i)) #8
          to label %if.end [label %if.then44.i], !srcloc !193

if.then44.i:                                      ; preds = %lor.lhs.false.i, %if.end31.i.if.then44.i_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.74, ptr noundef nonnull @__func__.ath10k_htc_build_tx_ctrl_skb, ptr noundef nonnull %call.i.i.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then44.i, %lor.lhs.false.i
  %call3 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 12) #8
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %14 = call ptr @memset(ptr %11, i32 0, i32 %13)
  %15 = load ptr, ptr %data.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1280, ptr %15, align 4
  %hif = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 34
  %17 = ptrtoint ptr %hif to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hif, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp = icmp eq i32 %18, 2
  br i1 %cmp, label %if.then5, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.ath10k_htc_msg, ptr %15, i32 0, i32 1, i32 0, i32 0, i32 1
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 16777216, ptr %flags, align 2
  %max_msgs_per_htc_bundle = getelementptr inbounds %struct.ath10k_htc, ptr %htc, i32 0, i32 9
  %20 = ptrtoint ptr %max_msgs_per_htc_bundle to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %max_msgs_per_htc_bundle, align 4
  %max_msgs_per_bundled_recv = getelementptr inbounds %struct.ath10k_htc_msg, ptr %15, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %max_msgs_per_bundled_recv to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %max_msgs_per_bundled_recv, align 2
  br label %do.body

do.body:                                          ; preds = %if.then5, %if.end.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %23 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %do.body.if.then9_crit_edge

do.body.if.then9_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

lor.lhs.false:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htc_start, %if.then9)) #8
          to label %do.end [label %if.then9], !srcloc !193

if.then9:                                         ; preds = %lor.lhs.false, %do.body.if.then9_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.41) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %lor.lhs.false
  %call11 = tail call i32 @ath10k_htc_send(ptr noundef %htc, i32 noundef 0, ptr noundef nonnull %call.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #8
  br label %cleanup

if.end14:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ul_pipe_id.i) #8
  %24 = ptrtoint ptr %ul_pipe_id.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %ul_pipe_id.i, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dl_pipe_id.i) #8
  %25 = ptrtoint ptr %dl_pipe_id.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %dl_pipe_id.i, align 1, !annotation !196
  %ops.i.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 34, i32 1
  %26 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i.i, align 4
  %map_service_to_pipe.i.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %map_service_to_pipe.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %map_service_to_pipe.i.i, align 4
  %call.i.i = call i32 %29(ptr noundef %1, i16 noundef zeroext 1536, ptr noundef nonnull %ul_pipe_id.i, ptr noundef nonnull %dl_pipe_id.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i44 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i44, label %if.then16, label %do.body.i

do.body.i:                                        ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %30 = load i32, ptr @ath10k_debug_mask, align 4
  %and.i45 = and i32 %30, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45)
  %tobool1.not.i46 = icmp eq i32 %and.i45, 0
  br i1 %tobool1.not.i46, label %lor.lhs.false.i47, label %do.body.i.if.then3.i_crit_edge

do.body.i.if.then3.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

lor.lhs.false.i47:                                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htc_start, %if.then3.i)) #8
          to label %ath10k_htc_pktlog_svc_supported.exit [label %if.then3.i], !srcloc !193

if.then3.i:                                       ; preds = %lor.lhs.false.i47, %do.body.i.if.then3.i_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.75, i32 noundef 1536) #8
  br label %ath10k_htc_pktlog_svc_supported.exit

ath10k_htc_pktlog_svc_supported.exit:             ; preds = %if.then3.i, %lor.lhs.false.i47
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dl_pipe_id.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ul_pipe_id.i) #8
  br label %cleanup

if.then16:                                        ; preds = %if.end14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dl_pipe_id.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ul_pipe_id.i) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %conn_resp.i) #8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %conn_req.i) #8
  %31 = call ptr @memset(ptr %conn_req.i, i32 0, i32 20)
  %ep_rx_complete.i = getelementptr inbounds %struct.ath10k_htc_svc_conn_req, ptr %conn_req.i, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %ep_rx_complete.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @ath10k_htc_pktlog_process_rx, ptr %ep_rx_complete.i, align 4
  %33 = ptrtoint ptr %conn_req.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1536, ptr %conn_req.i, align 4
  %htc.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 42
  %call.i = call i32 @ath10k_htc_connect_service(ptr noundef %htc.i, ptr noundef nonnull %conn_req.i, ptr noundef nonnull %conn_resp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i48 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i48, label %ath10k_htc_pktlog_connect.exit.thread, label %if.then19

ath10k_htc_pktlog_connect.exit.thread:            ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %conn_req.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %conn_resp.i) #8
  br label %cleanup

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.76, i32 noundef %call.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %conn_req.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %conn_resp.i) #8
  call void (ptr, ptr, ...) @ath10k_err(ptr noundef %1, ptr noundef nonnull @.str.42, i32 noundef %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %ath10k_htc_pktlog_connect.exit.thread, %ath10k_htc_pktlog_svc_supported.exit, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.then13 ], [ %call.i, %if.then19 ], [ 0, %ath10k_htc_pktlog_svc_supported.exit ], [ 0, %ath10k_htc_pktlog_connect.exit.thread ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_htc_init(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  %conn_req = alloca %struct.ath10k_htc_svc_conn_req, align 4
  %conn_resp = alloca %struct.ath10k_htc_svc_conn_resp, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %htc1 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 42
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %conn_req) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %conn_resp) #8
  %0 = call ptr @memset(ptr %conn_resp, i32 255, i32 16)
  %tx_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 42, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.43, ptr noundef nonnull @ath10k_htc_init.__key, i16 noundef signext 3) #8
  %arrayidx.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1
  %service_id.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 0, i32 2
  %1 = ptrtoint ptr %service_id.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %service_id.i, align 4
  %max_ep_message_len.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 0, i32 5
  %2 = ptrtoint ptr %max_ep_message_len.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %max_ep_message_len.i, align 4
  %max_tx_queue_depth.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 0, i32 4
  %3 = ptrtoint ptr %max_tx_queue_depth.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %max_tx_queue_depth.i, align 4
  %eid.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %eid.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %eid.i, align 4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %htc1, ptr %arrayidx.i, align 4
  %tx_credit_flow_enabled.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 0, i32 11
  %6 = ptrtoint ptr %tx_credit_flow_enabled.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %tx_credit_flow_enabled.i, align 4
  %arrayidx.1.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 1
  %service_id.1.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 1, i32 2
  %7 = ptrtoint ptr %service_id.1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %service_id.1.i, align 4
  %max_ep_message_len.1.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 1, i32 5
  %8 = ptrtoint ptr %max_ep_message_len.1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %max_ep_message_len.1.i, align 4
  %max_tx_queue_depth.1.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 1, i32 4
  %9 = ptrtoint ptr %max_tx_queue_depth.1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %max_tx_queue_depth.1.i, align 4
  %eid.1.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 1, i32 1
  %10 = ptrtoint ptr %eid.1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %eid.1.i, align 4
  %11 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %htc1, ptr %arrayidx.1.i, align 4
  %tx_credit_flow_enabled.1.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 1, i32 11
  %12 = ptrtoint ptr %tx_credit_flow_enabled.1.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %tx_credit_flow_enabled.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 2
  %service_id.2.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 2, i32 2
  %13 = ptrtoint ptr %service_id.2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %service_id.2.i, align 4
  %max_ep_message_len.2.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 2, i32 5
  %14 = ptrtoint ptr %max_ep_message_len.2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %max_ep_message_len.2.i, align 4
  %max_tx_queue_depth.2.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 2, i32 4
  %15 = ptrtoint ptr %max_tx_queue_depth.2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %max_tx_queue_depth.2.i, align 4
  %eid.2.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 2, i32 1
  %16 = ptrtoint ptr %eid.2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %eid.2.i, align 4
  %17 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %htc1, ptr %arrayidx.2.i, align 4
  %tx_credit_flow_enabled.2.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 2, i32 11
  %18 = ptrtoint ptr %tx_credit_flow_enabled.2.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %tx_credit_flow_enabled.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 3
  %service_id.3.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 3, i32 2
  %19 = ptrtoint ptr %service_id.3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %service_id.3.i, align 4
  %max_ep_message_len.3.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 3, i32 5
  %20 = ptrtoint ptr %max_ep_message_len.3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %max_ep_message_len.3.i, align 4
  %max_tx_queue_depth.3.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 3, i32 4
  %21 = ptrtoint ptr %max_tx_queue_depth.3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %max_tx_queue_depth.3.i, align 4
  %eid.3.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 3, i32 1
  %22 = ptrtoint ptr %eid.3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %eid.3.i, align 4
  %23 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %htc1, ptr %arrayidx.3.i, align 4
  %tx_credit_flow_enabled.3.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 3, i32 11
  %24 = ptrtoint ptr %tx_credit_flow_enabled.3.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %tx_credit_flow_enabled.3.i, align 4
  %arrayidx.4.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 4
  %service_id.4.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 4, i32 2
  %25 = ptrtoint ptr %service_id.4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %service_id.4.i, align 4
  %max_ep_message_len.4.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 4, i32 5
  %26 = ptrtoint ptr %max_ep_message_len.4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %max_ep_message_len.4.i, align 4
  %max_tx_queue_depth.4.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 4, i32 4
  %27 = ptrtoint ptr %max_tx_queue_depth.4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %max_tx_queue_depth.4.i, align 4
  %eid.4.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 4, i32 1
  %28 = ptrtoint ptr %eid.4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4, ptr %eid.4.i, align 4
  %29 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %htc1, ptr %arrayidx.4.i, align 4
  %tx_credit_flow_enabled.4.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 4, i32 11
  %30 = ptrtoint ptr %tx_credit_flow_enabled.4.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %tx_credit_flow_enabled.4.i, align 4
  %arrayidx.5.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 5
  %service_id.5.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 5, i32 2
  %31 = ptrtoint ptr %service_id.5.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %service_id.5.i, align 4
  %max_ep_message_len.5.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 5, i32 5
  %32 = ptrtoint ptr %max_ep_message_len.5.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %max_ep_message_len.5.i, align 4
  %max_tx_queue_depth.5.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 5, i32 4
  %33 = ptrtoint ptr %max_tx_queue_depth.5.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %max_tx_queue_depth.5.i, align 4
  %eid.5.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 5, i32 1
  %34 = ptrtoint ptr %eid.5.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 5, ptr %eid.5.i, align 4
  %35 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %htc1, ptr %arrayidx.5.i, align 4
  %tx_credit_flow_enabled.5.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 5, i32 11
  %36 = ptrtoint ptr %tx_credit_flow_enabled.5.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %tx_credit_flow_enabled.5.i, align 4
  %arrayidx.6.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 6
  %service_id.6.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 6, i32 2
  %37 = ptrtoint ptr %service_id.6.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %service_id.6.i, align 4
  %max_ep_message_len.6.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 6, i32 5
  %38 = ptrtoint ptr %max_ep_message_len.6.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %max_ep_message_len.6.i, align 4
  %max_tx_queue_depth.6.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 6, i32 4
  %39 = ptrtoint ptr %max_tx_queue_depth.6.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %max_tx_queue_depth.6.i, align 4
  %eid.6.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 6, i32 1
  %40 = ptrtoint ptr %eid.6.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 6, ptr %eid.6.i, align 4
  %41 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %htc1, ptr %arrayidx.6.i, align 4
  %tx_credit_flow_enabled.6.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 6, i32 11
  %42 = ptrtoint ptr %tx_credit_flow_enabled.6.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %tx_credit_flow_enabled.6.i, align 4
  %arrayidx.7.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 7
  %service_id.7.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 7, i32 2
  %43 = ptrtoint ptr %service_id.7.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %service_id.7.i, align 4
  %max_ep_message_len.7.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 7, i32 5
  %44 = ptrtoint ptr %max_ep_message_len.7.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %max_ep_message_len.7.i, align 4
  %max_tx_queue_depth.7.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 7, i32 4
  %45 = ptrtoint ptr %max_tx_queue_depth.7.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %max_tx_queue_depth.7.i, align 4
  %eid.7.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 7, i32 1
  %46 = ptrtoint ptr %eid.7.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 7, ptr %eid.7.i, align 4
  %47 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %htc1, ptr %arrayidx.7.i, align 4
  %tx_credit_flow_enabled.7.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 7, i32 11
  %48 = ptrtoint ptr %tx_credit_flow_enabled.7.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %tx_credit_flow_enabled.7.i, align 4
  %arrayidx.8.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 8
  %service_id.8.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 8, i32 2
  %49 = ptrtoint ptr %service_id.8.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %service_id.8.i, align 4
  %max_ep_message_len.8.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 8, i32 5
  %50 = ptrtoint ptr %max_ep_message_len.8.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %max_ep_message_len.8.i, align 4
  %max_tx_queue_depth.8.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 8, i32 4
  %51 = ptrtoint ptr %max_tx_queue_depth.8.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %max_tx_queue_depth.8.i, align 4
  %eid.8.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 8, i32 1
  %52 = ptrtoint ptr %eid.8.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 8, ptr %eid.8.i, align 4
  %53 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %htc1, ptr %arrayidx.8.i, align 4
  %tx_credit_flow_enabled.8.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 42, i32 1, i32 8, i32 11
  %54 = ptrtoint ptr %tx_credit_flow_enabled.8.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %tx_credit_flow_enabled.8.i, align 4
  %55 = ptrtoint ptr %htc1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %ar, ptr %htc1, align 4
  %56 = call ptr @memset(ptr %conn_req, i32 0, i32 16)
  %ep_ops = getelementptr inbounds %struct.ath10k_htc_svc_conn_req, ptr %conn_req, i32 0, i32 1
  %57 = ptrtoint ptr %ep_ops to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @ath10k_htc_control_tx_complete, ptr %ep_ops, align 4
  %ep_rx_complete = getelementptr inbounds %struct.ath10k_htc_svc_conn_req, ptr %conn_req, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %ep_rx_complete to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @ath10k_htc_control_rx_complete, ptr %ep_rx_complete, align 4
  %max_send_queue_depth = getelementptr inbounds %struct.ath10k_htc_svc_conn_req, ptr %conn_req, i32 0, i32 2
  %59 = ptrtoint ptr %max_send_queue_depth to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 2, ptr %max_send_queue_depth, align 4
  %60 = ptrtoint ptr %conn_req to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 1, ptr %conn_req, align 4
  %call4 = call i32 @ath10k_htc_connect_service(ptr noundef %htc1, ptr noundef nonnull %conn_req, ptr noundef nonnull %conn_resp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath10k_err(ptr noundef %ar, ptr noundef nonnull @.str.44, i32 noundef %call4) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ctl_resp = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 42, i32 6
  %61 = ptrtoint ptr %ctl_resp to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %ctl_resp, align 4
  %wait.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 42, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.82, ptr noundef nonnull @init_completion.__key) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %conn_resp) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %conn_req) #8
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_htc_control_tx_complete(ptr nocapture noundef readnone %ar, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_htc_control_rx_complete(ptr noundef %ar, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.87)
  switch i16 %4, label %sw.default [
    i16 1, label %entry.sw.bb_crit_edge
    i16 3, label %entry.sw.bb_crit_edge22
    i16 6, label %sw.bb7
  ]

entry.sw.bb_crit_edge22:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge22
  %ctl_resp = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 42, i32 6
  %call = tail call zeroext i1 @completion_done(ptr noundef %ctl_resp) #8
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.80) #8
  tail call void @complete(ptr noundef %ctl_resp) #8
  br label %out

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 256)
  %control_resp_len = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 42, i32 5
  %9 = ptrtoint ptr %control_resp_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %control_resp_len, align 4
  %control_resp_buffer = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 42, i32 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = call ptr @memcpy(ptr %control_resp_buffer, ptr %11, i32 %8)
  tail call void @complete(ptr noundef %ctl_resp) #8
  br label %out

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %htc_ops = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 42, i32 3
  %13 = ptrtoint ptr %htc_ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %htc_ops, align 4
  tail call void %14(ptr noundef %ar) #8
  br label %out

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.81) #8
  br label %out

out:                                              ; preds = %sw.default, %sw.bb7, %if.end, %if.then
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

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
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_htc_send_bundle_skbs(ptr noundef %ep) unnamed_addr #0 align 64 {
entry:
  %tx_save_head = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tx_save_head) #8
  %2 = call ptr @memset(ptr %tx_save_head, i32 255, i32 56)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %state = getelementptr inbounds %struct.ath10k, ptr %4, i32 0, i32 103
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp = icmp eq i32 %6, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_credit_flow_enabled = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 11
  %7 = ptrtoint ptr %tx_credit_flow_enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tx_credit_flow_enabled, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %tx_credits = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 9
  %9 = ptrtoint ptr %tx_credits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_credits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp2 = icmp slt i32 %10, 2
  br i1 %cmp2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %tx_credit_size = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 10
  %11 = ptrtoint ptr %tx_credit_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_credit_size, align 4
  %mul = shl i32 %12, 5
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %mul, i32 noundef 2592) #8
  %tobool5.not = icmp eq ptr %call.i.i, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %lock.i = getelementptr inbounds %struct.sk_buff_head, ptr %tx_save_head, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %15 = ptrtoint ptr %tx_save_head to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tx_save_head, ptr %tx_save_head, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.52, ptr %tx_save_head, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %tx_save_head, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %tx_save_head, i32 0, i32 1
  %17 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %qlen.i.i, align 4
  %tx_req_head = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 13
  %call861 = call ptr @skb_dequeue(ptr noundef %tx_req_head) #8
  %tobool9.not62 = icmp eq ptr %call861, null
  br i1 %tobool9.not62, label %if.end7.while.end_crit_edge, label %if.end11.lr.ph

if.end7.while.end_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end11.lr.ph:                                   ; preds = %if.end7
  %eid3.i = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 1
  %tx_credits.i = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 9
  %qlen.i = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 13, i32 1
  %bundle_tx.i = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 12
  %seq_no.i = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 8
  br label %if.end11

if.end11:                                         ; preds = %ath10k_htc_prepare_tx_skb.exit.if.end11_crit_edge, %if.end11.lr.ph
  %call868 = phi ptr [ %call861, %if.end11.lr.ph ], [ %call8, %ath10k_htc_prepare_tx_skb.exit.if.end11_crit_edge ]
  %bundles_left.067 = phi i32 [ %mul, %if.end11.lr.ph ], [ %sub64, %ath10k_htc_prepare_tx_skb.exit.if.end11_crit_edge ]
  %bundle_buf.065 = phi ptr [ %14, %if.end11.lr.ph ], [ %add.ptr63, %ath10k_htc_prepare_tx_skb.exit.if.end11_crit_edge ]
  %bundle_skb.063 = phi ptr [ %call.i.i, %if.end11.lr.ph ], [ %bundle_skb.1, %ath10k_htc_prepare_tx_skb.exit.if.end11_crit_edge ]
  %len = getelementptr inbounds %struct.sk_buff, ptr %call868, i32 0, i32 6
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %add = add i32 %19, 8
  %20 = ptrtoint ptr %tx_credit_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_credit_size, align 4
  %rem = srem i32 %add, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp13.not = icmp eq i32 %rem, 0
  %sub = sub i32 %21, %rem
  %add16 = select i1 %cmp13.not, i32 0, i32 %sub
  %trans_len.0 = add i32 %add16, %add
  %data18 = getelementptr inbounds %struct.sk_buff, ptr %bundle_skb.063, i32 0, i32 19
  %22 = ptrtoint ptr %tx_credit_flow_enabled to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tx_credit_flow_enabled, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %if.end11.if.end23_crit_edge, label %if.end.i

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.end.i:                                         ; preds = %if.end11
  %24 = ptrtoint ptr %eid3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %eid3.i, align 4
  %26 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ep, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %add.ptr = getelementptr i8, ptr %bundle_buf.065, i32 %trans_len.0
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %30 = ptrtoint ptr %data18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data18, align 4
  %sub.ptr.rhs.cast = ptrtoint ptr %31 to i32
  %32 = xor i32 %sub.ptr.rhs.cast, -1
  %add.i = add i32 %21, %sub.ptr.lhs.cast
  %sub.i = add i32 %add.i, %32
  %div.i = udiv i32 %sub.i, %21
  %tx_lock.i = getelementptr inbounds %struct.ath10k_htc, ptr %27, i32 0, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %tx_lock.i) #8
  %33 = ptrtoint ptr %tx_credits.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_credits.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %div.i)
  %cmp.i = icmp slt i32 %34, %div.i
  br i1 %cmp.i, label %do.body.i, label %ath10k_htc_consume_credit.exit.thread19

ath10k_htc_consume_credit.exit.thread19:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_bh(ptr noundef %tx_lock.i) #8
  br label %if.end23

do.body.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %35 = load i32, ptr @ath10k_debug_mask, align 4
  %and.i = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i, label %do.body.i.if.then7.i_crit_edge

do.body.i.if.then7.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7.i

lor.lhs.false.i:                                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htc_send_bundle_skbs, %if.then7.i)) #8
          to label %if.then21 [label %if.then7.i], !srcloc !193

if.then7.i:                                       ; preds = %lor.lhs.false.i, %do.body.i.if.then7.i_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %tx_credits.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_credits.i, align 4
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %29, i32 noundef 4, ptr noundef nonnull @.str.45, i32 noundef %25, i32 noundef %div.i, i32 noundef %37, i32 noundef 0) #8
  br label %if.then21

if.then21:                                        ; preds = %if.then7.i, %lor.lhs.false.i
  call void @_raw_spin_unlock_bh(ptr noundef %tx_lock.i) #8
  call void @skb_queue_head(ptr noundef %tx_req_head, ptr noundef nonnull %call868) #8
  br label %while.end

if.end23:                                         ; preds = %ath10k_htc_consume_credit.exit.thread19, %if.end11.if.end23_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %bundles_left.067, i32 %trans_len.0)
  %cmp24 = icmp slt i32 %bundles_left.067, %trans_len.0
  br i1 %cmp24, label %if.then25, label %if.end23.if.end57_crit_edge

if.end23.if.end57_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then25:                                        ; preds = %if.end23
  %38 = ptrtoint ptr %data18 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data18, align 4
  %sub.ptr.lhs.cast27 = ptrtoint ptr %bundle_buf.065 to i32
  %sub.ptr.rhs.cast28 = ptrtoint ptr %39 to i32
  %sub.ptr.sub29 = sub i32 %sub.ptr.lhs.cast27, %sub.ptr.rhs.cast28
  %len30 = getelementptr inbounds %struct.sk_buff, ptr %bundle_skb.063, i32 0, i32 6
  %40 = ptrtoint ptr %len30 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub.ptr.sub29, ptr %len30, align 4
  %call31 = call fastcc i32 @ath10k_htc_send_bundle(ptr noundef %ep, ptr noundef %bundle_skb.063, ptr noundef nonnull %tx_save_head)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end35, label %if.then33

if.then33:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  call void @skb_queue_head(ptr noundef %tx_req_head, ptr noundef nonnull %call868) #8
  br label %cleanup

if.end35:                                         ; preds = %if.then25
  %41 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp38 = icmp eq i32 %42, 0
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end35
  %43 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ep, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %47 = ptrtoint ptr %eid3.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %eid3.i, align 4
  %call.i = call i32 @ath10k_htc_send(ptr noundef %44, i32 noundef %48, ptr noundef nonnull %call868) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i1 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i1, label %if.then39.do.body.i3_crit_edge, label %if.then.i

if.then39.do.body.i3_crit_edge:                   ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i3

if.then.i:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  call void @skb_queue_head(ptr noundef %tx_req_head, ptr noundef nonnull %call868) #8
  br label %do.body.i3

do.body.i3:                                       ; preds = %if.then.i, %if.then39.do.body.i3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %49 = load i32, ptr @ath10k_debug_mask, align 4
  %and.i2 = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2)
  %tobool3.not.i = icmp eq i32 %and.i2, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i4, label %do.body.i3.if.then5.i_crit_edge

do.body.i3.if.then5.i_crit_edge:                  ; preds = %do.body.i3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.i

lor.lhs.false.i4:                                 ; preds = %do.body.i3
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htc_send_bundle_skbs, %if.then5.i)) #8
          to label %cleanup [label %if.then5.i], !srcloc !193

if.then5.i:                                       ; preds = %lor.lhs.false.i4, %do.body.i3.if.then5.i_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %eid3.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %eid3.i, align 4
  %52 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len, align 4
  %54 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %qlen.i, align 4
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %46, i32 noundef 4, ptr noundef nonnull @.str.58, i32 noundef %call.i, i32 noundef %51, i32 noundef %53, i32 noundef %55) #8
  br label %cleanup

if.end40:                                         ; preds = %if.end35
  %56 = ptrtoint ptr %tx_credit_flow_enabled to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %tx_credit_flow_enabled, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool42.not = icmp eq i8 %57, 0
  br i1 %tobool42.not, label %if.end40.if.end48_crit_edge, label %land.lhs.true43

if.end40.if.end48_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

land.lhs.true43:                                  ; preds = %if.end40
  %58 = ptrtoint ptr %tx_credits.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tx_credits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp45 = icmp slt i32 %59, 2
  br i1 %cmp45, label %if.then46, label %land.lhs.true43.if.end48_crit_edge

land.lhs.true43.if.end48_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then46:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #10
  call void @skb_queue_head(ptr noundef %tx_req_head, ptr noundef nonnull %call868) #8
  br label %cleanup

if.end48:                                         ; preds = %land.lhs.true43.if.end48_crit_edge, %if.end40.if.end48_crit_edge
  %60 = ptrtoint ptr %tx_credit_size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tx_credit_size, align 4
  %mul50 = shl i32 %61, 5
  %call.i.i6 = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %mul50, i32 noundef 2592) #8
  %tobool52.not = icmp eq ptr %call.i.i6, null
  br i1 %tobool52.not, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  call void @skb_queue_head(ptr noundef %tx_req_head, ptr noundef nonnull %call868) #8
  br label %cleanup

if.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %data56 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i6, i32 0, i32 19
  %62 = ptrtoint ptr %data56 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data56, align 4
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %64 = ptrtoint ptr %tx_save_head to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %tx_save_head, ptr %tx_save_head, align 4
  %65 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %tx_save_head, ptr %prev.i.i, align 4
  %66 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %qlen.i.i, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.end55, %if.end23.if.end57_crit_edge
  %bundle_skb.1 = phi ptr [ %call.i.i6, %if.end55 ], [ %bundle_skb.063, %if.end23.if.end57_crit_edge ]
  %bundle_buf.1 = phi ptr [ %63, %if.end55 ], [ %bundle_buf.065, %if.end23.if.end57_crit_edge ]
  %bundles_left.1 = phi i32 [ %mul50, %if.end55 ], [ %bundles_left.067, %if.end23.if.end57_crit_edge ]
  %call58 = call ptr @skb_push(ptr noundef nonnull %call868, i32 noundef 8) #8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call868, i32 0, i32 19
  %67 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 8)
  store i64 0, ptr %68, align 4
  %70 = ptrtoint ptr %eid3.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %eid3.i, align 4
  %conv.i = trunc i32 %71 to i8
  store i8 %conv.i, ptr %68, align 4
  %72 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %len, align 4
  %74 = trunc i32 %73 to i16
  %conv2.i = add i16 %74, -8
  %75 = call i16 @llvm.bswap.i16(i16 %conv2.i) #8
  %len3.i = getelementptr inbounds %struct.ath10k_htc_hdr, ptr %68, i32 0, i32 2
  %76 = ptrtoint ptr %len3.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %len3.i, align 2
  %flags.i = getelementptr inbounds %struct.ath10k_htc_hdr, ptr %68, i32 0, i32 1
  %77 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %flags.i, align 1
  %78 = ptrtoint ptr %tx_credit_flow_enabled to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %tx_credit_flow_enabled, align 4, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.i13 = icmp eq i8 %79, 0
  br i1 %tobool.not.i13, label %if.end57.ath10k_htc_prepare_tx_skb.exit_crit_edge, label %land.lhs.true.i

if.end57.ath10k_htc_prepare_tx_skb.exit_crit_edge: ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath10k_htc_prepare_tx_skb.exit

land.lhs.true.i:                                  ; preds = %if.end57
  %80 = ptrtoint ptr %bundle_tx.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %bundle_tx.i, align 1, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool5.not.i = icmp eq i8 %81, 0
  br i1 %tobool5.not.i, label %if.then.i14, label %land.lhs.true.i.ath10k_htc_prepare_tx_skb.exit_crit_edge

land.lhs.true.i.ath10k_htc_prepare_tx_skb.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath10k_htc_prepare_tx_skb.exit

if.then.i14:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %flags.i, align 1
  br label %ath10k_htc_prepare_tx_skb.exit

ath10k_htc_prepare_tx_skb.exit:                   ; preds = %if.then.i14, %land.lhs.true.i.ath10k_htc_prepare_tx_skb.exit_crit_edge, %if.end57.ath10k_htc_prepare_tx_skb.exit_crit_edge
  %83 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ep, align 4
  %tx_lock.i15 = getelementptr inbounds %struct.ath10k_htc, ptr %84, i32 0, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %tx_lock.i15) #8
  %85 = ptrtoint ptr %seq_no.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %seq_no.i, align 2
  %inc.i = add i8 %86, 1
  store i8 %inc.i, ptr %seq_no.i, align 2
  %87 = getelementptr inbounds %struct.ath10k_htc_hdr, ptr %68, i32 0, i32 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %86, ptr %87, align 1
  %89 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ep, align 4
  %tx_lock10.i = getelementptr inbounds %struct.ath10k_htc, ptr %90, i32 0, i32 2
  call void @_raw_spin_unlock_bh(ptr noundef %tx_lock10.i) #8
  %91 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data.i, align 4
  %93 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %len, align 4
  %95 = call ptr @memcpy(ptr %bundle_buf.1, ptr %92, i32 %94)
  %flags = getelementptr inbounds %struct.ath10k_htc_hdr, ptr %bundle_buf.1, i32 0, i32 1
  %96 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %flags, align 1
  %98 = or i8 %97, 2
  store i8 %98, ptr %flags, align 1
  %99 = trunc i32 %sub to i16
  %conv62 = select i1 %cmp13.not, i16 0, i16 %99
  %100 = call i16 @llvm.bswap.i16(i16 %conv62)
  %101 = getelementptr inbounds %struct.ath10k_htc_hdr, ptr %bundle_buf.1, i32 0, i32 5
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %100, ptr %101, align 2
  %add.ptr63 = getelementptr i8, ptr %bundle_buf.1, i32 %trans_len.0
  %sub64 = sub i32 %bundles_left.1, %trans_len.0
  call void @skb_queue_tail(ptr noundef nonnull %tx_save_head, ptr noundef nonnull %call868) #8
  %call8 = call ptr @skb_dequeue(ptr noundef %tx_req_head) #8
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %ath10k_htc_prepare_tx_skb.exit.while.end_crit_edge, label %ath10k_htc_prepare_tx_skb.exit.if.end11_crit_edge

ath10k_htc_prepare_tx_skb.exit.if.end11_crit_edge: ; preds = %ath10k_htc_prepare_tx_skb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

ath10k_htc_prepare_tx_skb.exit.while.end_crit_edge: ; preds = %ath10k_htc_prepare_tx_skb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %ath10k_htc_prepare_tx_skb.exit.while.end_crit_edge, %if.then21, %if.end7.while.end_crit_edge
  %bundle_skb.043 = phi ptr [ %bundle_skb.063, %if.then21 ], [ %call.i.i, %if.end7.while.end_crit_edge ], [ %bundle_skb.1, %ath10k_htc_prepare_tx_skb.exit.while.end_crit_edge ]
  %bundle_buf.037 = phi ptr [ %bundle_buf.065, %if.then21 ], [ %14, %if.end7.while.end_crit_edge ], [ %add.ptr63, %ath10k_htc_prepare_tx_skb.exit.while.end_crit_edge ]
  %data65 = getelementptr inbounds %struct.sk_buff, ptr %bundle_skb.043, i32 0, i32 19
  %103 = ptrtoint ptr %data65 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %data65, align 4
  %cmp66.not = icmp eq ptr %bundle_buf.037, %104
  br i1 %cmp66.not, label %if.else, label %if.then68

if.then68:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub.ptr.lhs.cast70 = ptrtoint ptr %bundle_buf.037 to i32
  %sub.ptr.rhs.cast71 = ptrtoint ptr %104 to i32
  %sub.ptr.sub72 = sub i32 %sub.ptr.lhs.cast70, %sub.ptr.rhs.cast71
  %len73 = getelementptr inbounds %struct.sk_buff, ptr %bundle_skb.043, i32 0, i32 6
  %105 = ptrtoint ptr %len73 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %sub.ptr.sub72, ptr %len73, align 4
  %call74 = call fastcc i32 @ath10k_htc_send_bundle(ptr noundef %ep, ptr noundef %bundle_skb.043, ptr noundef nonnull %tx_save_head)
  br label %cleanup

if.else:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__dev_kfree_skb_any(ptr noundef %bundle_skb.043, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then68, %if.then53, %if.then46, %if.then5.i, %lor.lhs.false.i4, %if.then33, %if.end4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tx_save_head) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_htc_send_bundle(ptr noundef %ep, ptr noundef %bundle_skb, ptr noundef %tx_save_head) unnamed_addr #0 align 64 {
entry:
  %sg_item = alloca %struct.ath10k_hif_sg_item, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg_item) #8
  %0 = call ptr @memset(ptr %sg_item, i32 255, i32 20)
  %1 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ep, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %5 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htc_send_bundle, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !193

if.then:                                          ; preds = %lor.lhs.false, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  %len = getelementptr inbounds %struct.sk_buff, ptr %bundle_skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str.56, i32 noundef %7) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %lor.lhs.false
  %len3 = getelementptr inbounds %struct.sk_buff, ptr %bundle_skb, i32 0, i32 6
  %8 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len3, align 4
  %call4 = tail call fastcc i32 @ath10k_htc_consume_credit(ptr noundef %ep, i32 noundef %9, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %do.end.if.then17_crit_edge

do.end.if.then17_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.then6:                                         ; preds = %do.end
  %eid = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 1
  %10 = ptrtoint ptr %eid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %eid, align 4
  %conv = trunc i32 %11 to i16
  %12 = ptrtoint ptr %sg_item to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %sg_item, align 4
  %transfer_context = getelementptr inbounds %struct.ath10k_hif_sg_item, ptr %sg_item, i32 0, i32 1
  %13 = ptrtoint ptr %transfer_context to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %bundle_skb, ptr %transfer_context, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %bundle_skb, i32 0, i32 19
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %vaddr = getelementptr inbounds %struct.ath10k_hif_sg_item, ptr %sg_item, i32 0, i32 2
  %16 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %vaddr, align 4
  %17 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len3, align 4
  %conv8 = trunc i32 %18 to i16
  %len9 = getelementptr inbounds %struct.ath10k_hif_sg_item, ptr %sg_item, i32 0, i32 4
  %19 = ptrtoint ptr %len9 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv8, ptr %len9, align 4
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %2, align 4
  %ul_pipe_id = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 6
  %22 = ptrtoint ptr %ul_pipe_id to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ul_pipe_id, align 4
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %21, i32 0, i32 34, i32 1
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %call.i = call i32 %27(ptr noundef %21, i8 noundef zeroext %23, ptr noundef nonnull %sg_item, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.then6.if.end18_crit_edge, label %if.then13

if.then6.if.end18_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then13:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @ath10k_htc_release_credit(ptr noundef %ep, i32 noundef %9)
  br label %if.then17

if.then17:                                        ; preds = %if.then13, %do.end.if.then17_crit_edge
  %ret.0.ph = phi i32 [ %call.i, %if.then13 ], [ %call4, %do.end.if.then17_crit_edge ]
  call void @__dev_kfree_skb_any(ptr noundef %bundle_skb, i32 noundef 1) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.then6.if.end18_crit_edge
  %tobool16.not81 = phi i1 [ false, %if.then17 ], [ true, %if.then6.if.end18_crit_edge ]
  %ret.078 = phi i32 [ %ret.0.ph, %if.then17 ], [ 0, %if.then6.if.end18_crit_edge ]
  %call1983 = call ptr @skb_dequeue_tail(ptr noundef %tx_save_head) #8
  %tobool20.not84 = icmp eq ptr %call1983, null
  br i1 %tobool20.not84, label %if.end18.for.end_crit_edge, label %for.body.lr.ph

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end18
  %tx_req_head = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 13
  %tx_complete_head = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %call1986 = phi ptr [ %call1983, %for.body.lr.ph ], [ %call19, %for.inc.for.body_crit_edge ]
  %cn.085 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %tobool16.not81, label %if.else, label %if.then22

if.then22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = call ptr @skb_pull(ptr noundef nonnull %call1986, i32 noundef 8) #8
  call void @skb_queue_head(ptr noundef %tx_req_head, ptr noundef nonnull %call1986) #8
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @skb_queue_tail(ptr noundef %tx_complete_head, ptr noundef nonnull %call1986) #8
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then22
  %inc = add i32 %cn.085, 1
  %call19 = call ptr @skb_dequeue_tail(ptr noundef %tx_save_head) #8
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end18.for.end_crit_edge
  %cn.0.lcssa = phi i32 [ 0, %if.end18.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  br i1 %tobool16.not81, label %if.then26, label %for.end.do.body29_crit_edge

for.end.do.body29_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body29

if.then26:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %workqueue_tx_complete = getelementptr inbounds %struct.ath10k, ptr %4, i32 0, i32 79
  %28 = ptrtoint ptr %workqueue_tx_complete to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %workqueue_tx_complete, align 32
  %tx_complete_work = getelementptr inbounds %struct.ath10k, ptr %4, i32 0, i32 107
  %call.i70 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %tx_complete_work) #8
  br label %do.body29

do.body29:                                        ; preds = %if.then26, %for.end.do.body29_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %30 = load i32, ptr @ath10k_debug_mask, align 4
  %and30 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %lor.lhs.false32, label %do.body29.if.then35_crit_edge

do.body29.if.then35_crit_edge:                    ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then35

lor.lhs.false32:                                  ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@ath10k_htc_send_bundle, %if.then35)) #8
          to label %do.end41 [label %if.then35], !srcloc !193

if.then35:                                        ; preds = %lor.lhs.false32, %do.body29.if.then35_crit_edge
  call void @__sanitizer_cov_trace_pc() #10
  %eid36 = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 1
  %31 = ptrtoint ptr %eid36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %eid36, align 4
  %qlen.i = getelementptr inbounds %struct.ath10k_htc_ep, ptr %ep, i32 0, i32 13, i32 1
  %33 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %qlen.i, align 4
  call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %4, i32 noundef 4, ptr noundef nonnull @.str.57, i32 noundef %ret.078, i32 noundef %32, i32 noundef %34, i32 noundef %cn.0.lcssa, i32 noundef %9) #8
  br label %do.end41

do.end41:                                         ; preds = %if.then35, %lor.lhs.false32
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg_item) #8
  ret i32 %ret.078
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue_tail(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_htc_pktlog_process_rx(ptr noundef %ar, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ath10k_htt_pktlog(ptr noundef %ar, ptr noundef %buf, i16 noundef zeroext %buf_len) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_htt_pktlog, i32 0, i32 1), ptr blockaddress(@trace_ath10k_htt_pktlog, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !193

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !183) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !195

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.79, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !183) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !197
  %call42 = tail call i32 @__traceiter_ath10k_htt_pktlog(ptr noundef null, ptr noundef %ar, ptr noundef %buf, i16 noundef zeroext %buf_len) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !198
  %13 = tail call i32 @llvm.read_register.i32(metadata !183) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !183) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !195

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.79, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !183) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !199
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_htt_pktlog, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_htt_pktlog, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ath10k_htt_pktlog.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_ath10k_htt_pktlog.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.77, i32 noundef 292, ptr noundef nonnull @.str.78) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !200
  %31 = tail call i32 @llvm.read_register.i32(metadata !183) #8
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
declare dso_local i32 @__traceiter_ath10k_htt_pktlog(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !99, !101, !103, !105, !107, !108, !109, !111, !113, !115, !117, !119, !121, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !161, !163, !164, !166, !168, !170, !171, !172, !173, !175, !176, !178, !180, !182}
!llvm.named.register.sp = !{!183}
!llvm.module.flags = !{!184, !185, !186, !187, !188, !189, !190, !191}
!llvm.ident = !{!192}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 56, i32 2}
!2 = !{ptr @__func__.ath10k_htc_notify_tx_completion, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 63, i32 19}
!5 = !{ptr @__ksymtab_ath10k_htc_notify_tx_completion, !6, !"__ksymtab_ath10k_htc_notify_tx_completion", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 75, i32 1}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 169, i32 19}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 221, i32 6}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__ksymtab_ath10k_htc_tx_completion_handler, !13, !"__ksymtab_ath10k_htc_tx_completion_handler", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 230, i32 1}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 363, i32 20}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 373, i32 21}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 385, i32 21}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 406, i32 20}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 420, i32 39}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 420, i32 61}
!26 = !{ptr @__ksymtab_ath10k_htc_process_trailer, !27, !"__ksymtab_ath10k_htc_process_trailer", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 425, i32 1}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 445, i32 19}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 446, i32 39}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 453, i32 19}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 460, i32 19}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 462, i32 39}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 468, i32 3}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 486, i32 20}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 508, i32 2}
!44 = !{ptr @__ksymtab_ath10k_htc_rx_completion_handler, !45, !"__ksymtab_ath10k_htc_rx_completion_handler", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 517, i32 1}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 854, i32 3}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 858, i32 2}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 894, i32 3}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 918, i32 19}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 932, i32 18}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 937, i32 18}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 946, i32 18}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 953, i32 2}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 960, i32 18}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 975, i32 3}
!66 = !{ptr @ath10k_htc_wait_target.__key, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 981, i32 2}
!68 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @ath10k_htc_wait_target.__key.29, !70, !"__key", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 982, i32 2}
!71 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 1028, i32 3}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 1034, i32 18}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 1070, i32 18}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 1083, i32 18}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 1087, i32 2}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 1096, i32 18}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 1142, i32 3}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 1147, i32 2}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 1154, i32 3}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 1174, i32 19}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 1254, i32 2}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 1265, i32 19}
!96 = !{ptr @ath10k_htc_init.__key, !97, !"__key", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 1281, i32 2}
!98 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 1298, i32 18}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 112, i32 3}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 121, i32 3}
!105 = distinct !{null, !106, !"__already_done", i1 false, i1 false}
!106 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!107 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 144, i32 2}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 247, i32 19}
!113 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 259, i32 3}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 290, i32 3}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 315, i32 19}
!119 = !{ptr @skb_queue_head_init.__key, !120, !"__key", i1 false, i1 false}
!120 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!121 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 805, i32 3}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 640, i32 2}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 670, i32 2}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 687, i32 2}
!130 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 833, i32 4}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 567, i32 10}
!134 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 569, i32 10}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 571, i32 10}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 573, i32 10}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 575, i32 10}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 577, i32 10}
!144 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 579, i32 10}
!146 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 581, i32 10}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 583, i32 10}
!150 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 585, i32 10}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 591, i32 10}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 593, i32 10}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 596, i32 9}
!158 = distinct !{null, !159, !"__already_done", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 31, i32 2}
!160 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.74, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 36, i32 2}
!163 = !{ptr @__func__.ath10k_htc_build_tx_ctrl_skb, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.75, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 1220, i32 3}
!166 = !{ptr @.str.76, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 1202, i32 19}
!168 = distinct !{null, !169, !"__already_done", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/ath/ath10k/trace.h", i32 264, i32 1}
!170 = !{ptr @.str.77, !169, !"<string literal>", i1 false, i1 false}
!171 = distinct !{null, !169, !"__warned", i1 false, i1 false}
!172 = !{ptr @.str.78, !169, !"<string literal>", i1 false, i1 false}
!173 = distinct !{null, !174, !"__already_done", i1 false, i1 false}
!174 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!175 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.80, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 533, i32 20}
!178 = !{ptr @.str.81, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/ath/ath10k/htc.c", i32 551, i32 19}
!180 = !{ptr @init_completion.__key, !181, !"__key", i1 false, i1 false}
!181 = !{!"../include/linux/completion.h", i32 87, i32 2}
!182 = !{ptr @.str.82, !181, !"<string literal>", i1 false, i1 false}
!183 = !{!"sp"}
!184 = !{i32 1, !"wchar_size", i32 2}
!185 = !{i32 1, !"min_enum_size", i32 4}
!186 = !{i32 8, !"branch-target-enforcement", i32 0}
!187 = !{i32 8, !"sign-return-address", i32 0}
!188 = !{i32 8, !"sign-return-address-all", i32 0}
!189 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!190 = !{i32 7, !"uwtable", i32 1}
!191 = !{i32 7, !"frame-pointer", i32 2}
!192 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!193 = !{i64 2148380427, i64 2148380432, i64 2148380445, i64 2148380489, i64 2148380523, i64 2148380544}
!194 = !{i8 0, i8 2}
!195 = !{!"branch_weights", i32 2000, i32 1}
!196 = !{!"auto-init"}
!197 = !{i64 2158879725}
!198 = !{i64 2158879954}
!199 = !{i64 2149734959}
!200 = !{i64 2149735995}
