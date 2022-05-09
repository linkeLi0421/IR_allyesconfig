; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath10k/debug.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath10k/debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ath10k_info\22, \22a\22\09"
module asm "\09.weak\09__crc_ath10k_info\09\09\09\09"
module asm "\09.long\09__crc_ath10k_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath10k_info:\09\09\09\09\09"
module asm "\09.asciz \09\22ath10k_info\22\09\09\09\09\09"
module asm "__kstrtabns_ath10k_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath10k_print_driver_info\22, \22a\22\09"
module asm "\09.weak\09__crc_ath10k_print_driver_info\09\09\09\09"
module asm "\09.long\09__crc_ath10k_print_driver_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath10k_print_driver_info:\09\09\09\09\09"
module asm "\09.asciz \09\22ath10k_print_driver_info\22\09\09\09\09\09"
module asm "__kstrtabns_ath10k_print_driver_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath10k_err\22, \22a\22\09"
module asm "\09.weak\09__crc_ath10k_err\09\09\09\09"
module asm "\09.long\09__crc_ath10k_err\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath10k_err:\09\09\09\09\09"
module asm "\09.asciz \09\22ath10k_err\22\09\09\09\09\09"
module asm "__kstrtabns_ath10k_err:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath10k_warn\22, \22a\22\09"
module asm "\09.weak\09__crc_ath10k_warn\09\09\09\09"
module asm "\09.long\09__crc_ath10k_warn\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath10k_warn:\09\09\09\09\09"
module asm "\09.asciz \09\22ath10k_warn\22\09\09\09\09\09"
module asm "__kstrtabns_ath10k_warn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__ath10k_dbg\22, \22a\22\09"
module asm "\09.weak\09__crc___ath10k_dbg\09\09\09\09"
module asm "\09.long\09__crc___ath10k_dbg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ath10k_dbg:\09\09\09\09\09"
module asm "\09.asciz \09\22__ath10k_dbg\22\09\09\09\09\09"
module asm "__kstrtabns___ath10k_dbg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath10k_dbg_dump\22, \22a\22\09"
module asm "\09.weak\09__crc_ath10k_dbg_dump\09\09\09\09"
module asm "\09.long\09__crc_ath10k_dbg_dump\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath10k_dbg_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22ath10k_dbg_dump\22\09\09\09\09\09"
module asm "__kstrtabns_ath10k_dbg_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ath10k_fw_stats_pdev = type { %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.91 }
%struct.atomic_t = type { i32 }
%union.anon.91 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.ath10k = type { %struct.ath_common, ptr, ptr, ptr, %struct.msa_region, [6 x i8], i32, i16, i32, i32, i8, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, %struct.anon.140, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.ath10k_bmi, %struct.ath10k_wmi, %struct.ath10k_htc, [4 x i8], %struct.ath10k_htt, %struct.ath10k_hw_params, %struct.ath10k_fw_components, ptr, ptr, ptr, %struct.anon.189, i32, i32, i32, %struct.anon.190, %struct.anon.191, ptr, ptr, %struct.cfg80211_chan_def, ptr, i64, ptr, i8, i32, i8, i32, i32, i8, i8, i32, i8, i8, %struct.completion, i32, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, [2048 x ptr], %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.completion, ptr, %struct.work_struct, %struct.sk_buff_head, i32, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i32, i32, [41 x %struct.survey_info], i8, %struct.completion, ptr, i32, %struct.ath10k_debug, %struct.anon.196, i32, %struct.anon.197, %struct.anon.198, %struct.anon.199, %struct.ath10k_thermal, %struct.ath10k_wow, %struct.ath10k_per_peer_tx_stats, [36 x i8], %struct.net_device, %struct.napi_struct, %struct.work_struct, %struct.anon.200, i32, ptr, ptr, i32, i32, %struct.ath10k_radar_found_info, %struct.work_struct, %struct.ath10k_bus_params, %struct.completion, i8, i32, i32, i32, [0 x i8], [48 x i8] }
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
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.anon.127 = type { i64, i64, i8 }
%struct.wmi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wmi_cmd_map = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wmi_pdev_param_map = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath10k_hif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.93, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.94, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.95, ptr, %struct.address_space, %struct.list_head, %union.anon.98, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.93 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.94 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.95 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.98 = type { ptr }
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
%struct.ath10k_htt_tx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath10k_vif = type { %struct.list_head, i32, i16, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i8, i8, i8, i8, i32, [6 x i8], [4 x ptr], i8, i16, %union.anon.192, i8, i8, i32, i32, i8, %struct.wmi_wmm_params_all_arg, %struct.work_struct, %struct.delayed_work, %struct.cfg80211_bitrate_mask, i32, i8, [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i8], [8 x i32], [8 x i32], i32 }
%union.anon.192 = type { %struct.anon.194 }
%struct.anon.194 = type { [64 x i8], i8, i32, [32 x i8], i8, i32, ptr }
%struct.wmi_wmm_params_all_arg = type { %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg, %struct.wmi_wmm_params_arg }
%struct.wmi_wmm_params_arg = type { i32, i32, i32, i32, i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.131] }
%struct.anon.131 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.dfs_pattern_detector = type { ptr, ptr, ptr, ptr, i32, i8, i64, ptr, ptr, %struct.list_head }
%struct.ath10k_tpc_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i8], [3 x %struct.ath10k_tpc_table] }
%struct.ath10k_tpc_table = type { [260 x i32], [260 x i8], [260 x [40 x i8]] }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }

@ath10k_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 33, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pV\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ath10k_info\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/ath/ath10k/debug.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ath10k_info._entry_ptr = internal global ptr @ath10k_info._entry, section ".printk_index", align 4
@__kstrtab_ath10k_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath10k_info = external dso_local constant [0 x i8], align 1
@__ksymtab_ath10k_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath10k_info to i32), ptr @__kstrtab_ath10k_info, ptr @__kstrtabns_ath10k_info }, section "___ksymtab+ath10k_info", align 4
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s target 0x%08x chip_id 0x%08x sub %04x:%04x\00", [50 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"kconfig debug %d debugfs %d tracing %d dfs %d testmode %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"firmware ver %s api %d features %s crc32 %08x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%d:%d\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"N/A\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"board_file api %d bmi_id %s crc32 %08x\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"htt-ver %d.%d wmi-op %d htt-op %d cal %s max-sta %d raw %d hwcrypto %d\0A\00", [56 x i8] zeroinitializer }, align 32
@__kstrtab_ath10k_print_driver_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath10k_print_driver_info = external dso_local constant [0 x i8], align 1
@__ksymtab_ath10k_print_driver_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath10k_print_driver_info to i32), ptr @__kstrtab_ath10k_print_driver_info, ptr @__kstrtabns_ath10k_print_driver_info }, section "___ksymtab+ath10k_print_driver_info", align 4
@ath10k_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.12, ptr @.str.2, i32 125, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ath10k_err\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ath10k_err._entry_ptr = internal global ptr @ath10k_err._entry, section ".printk_index", align 4
@__kstrtab_ath10k_err = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath10k_err = external dso_local constant [0 x i8], align 1
@__ksymtab_ath10k_err = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath10k_err to i32), ptr @__kstrtab_ath10k_err, ptr @__kstrtabns_ath10k_err }, section "___ksymtab+ath10k_err", align 4
@ath10k_warn._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ath10k_warn = private unnamed_addr constant [12 x i8] c"ath10k_warn\00", align 1
@ath10k_warn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @__func__.ath10k_warn, ptr @.str.2, i32 140, ptr @.str.15, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ath10k_warn._entry_ptr = internal global ptr @ath10k_warn._entry, section ".printk_index", align 4
@__kstrtab_ath10k_warn = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath10k_warn = external dso_local constant [0 x i8], align 1
@__ksymtab_ath10k_warn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath10k_warn to i32), ptr @__kstrtab_ath10k_warn, ptr @__kstrtabns_ath10k_warn }, section "___ksymtab+ath10k_warn", align 4
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to pull fw stats: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"received unsolicited stats update event\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dropping fw peer stats\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dropping fw vdev stats\0A\00", [40 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not request stats (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@ath10k_gstrings_stats = internal constant { [47 x [32 x i8]], [352 x i8] } { [47 x [32 x i8]] [[32 x i8] c"tx_pkts_nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_bytes_nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_pkts_nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_bytes_nic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_noise_floor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_cycle_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_phy_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rts_bad\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rts_good\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_power\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_crc_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_crc_err_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_no_beacon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_mpdus_queued\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_msdu_queued\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_msdu_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_local_enqued\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_local_freed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_ppdu_hw_queued\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_ppdu_reaped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_fifo_underrun\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_ppdu_abort\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_mpdu_requeued\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_excessive_retries\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_hw_rate\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_dropped_sw_retries\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_illegal_rate\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_continuous_xretries\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_timeout\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_tx_mpdu_txop_limit\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_pdev_resets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_mid_ppdu_route_change\00\00\00\00\00\00", [32 x i8] c"d_rx_status\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_extra_frags_ring0\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_extra_frags_ring1\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_extra_frags_ring2\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_extra_frags_ring3\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_msdu_htt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_mpdu_htt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_msdu_stack\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_mpdu_stack\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_phy_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_phy_err_drops\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_rx_mpdu_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_fw_crash_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_fw_warm_reset_count\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"d_fw_cold_reset_count\00\00\00\00\00\00\00\00\00\00\00"], [352 x i8] zeroinitializer }, align 32
@ath10k_debug_get_et_stats.zero_stats = internal constant { %struct.ath10k_fw_stats_pdev, [36 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to get fw stats for ethtool: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to start htt stats workqueue: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to enable dbglog during start: %d\00", [55 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to enable pktlog filter %x: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to disable pktlog: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"cal period cfg failed from debug start: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ath10k\00", [25 x i8] zeroinitializer }, align 32
@ath10k_debug_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"(work_completion)(&(&ar->debug.htt_stats_dwork)->work)\00", [41 x i8] zeroinitializer }, align 32
@ath10k_debug_register.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"&(&ar->debug.htt_stats_dwork)->timer\00", [59 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fw_stats\00", [23 x i8] zeroinitializer }, align 32
@fops_fw_stats = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath10k_fw_stats_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ath10k_fw_stats_open, ptr null, ptr @ath10k_fw_stats_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fw_reset_stats\00", [17 x i8] zeroinitializer }, align 32
@fops_fw_reset_stats = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath10k_debug_fw_reset_stats_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wmi_services\00", [19 x i8] zeroinitializer }, align 32
@fops_wmi_services = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath10k_read_wmi_services, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"simulate_fw_crash\00", [46 x i8] zeroinitializer }, align 32
@fops_simulate_fw_crash = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath10k_read_simulate_fw_crash, ptr @ath10k_write_simulate_fw_crash, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reg_addr\00", [23 x i8] zeroinitializer }, align 32
@fops_reg_addr = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath10k_reg_addr_read, ptr @ath10k_reg_addr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg_value\00", [22 x i8] zeroinitializer }, align 32
@fops_reg_value = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath10k_reg_value_read, ptr @ath10k_reg_value_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mem_value\00", [22 x i8] zeroinitializer }, align 32
@fops_mem_value = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath10k_mem_value_read, ptr @ath10k_mem_value_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"chip_id\00", [24 x i8] zeroinitializer }, align 32
@fops_chip_id = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath10k_read_chip_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"htt_stats_mask\00", [17 x i8] zeroinitializer }, align 32
@fops_htt_stats_mask = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath10k_read_htt_stats_mask, ptr @ath10k_write_htt_stats_mask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"htt_max_amsdu_ampdu\00", [44 x i8] zeroinitializer }, align 32
@fops_htt_max_amsdu_ampdu = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath10k_read_htt_max_amsdu_ampdu, ptr @ath10k_write_htt_max_amsdu_ampdu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fw_dbglog\00", [22 x i8] zeroinitializer }, align 32
@fops_fw_dbglog = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath10k_read_fw_dbglog, ptr @ath10k_write_fw_dbglog, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cal_data\00", [23 x i8] zeroinitializer }, align 32
@fops_cal_data = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath10k_debug_cal_data_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ath10k_debug_cal_data_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nf_cal_period\00", [18 x i8] zeroinitializer }, align 32
@fops_nf_cal_period = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath10k_read_nf_cal_period, ptr @ath10k_write_nf_cal_period, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ani_enable\00", [21 x i8] zeroinitializer }, align 32
@fops_ani_enable = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath10k_read_ani_enable, ptr @ath10k_write_ani_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dfs_simulate_radar\00", [45 x i8] zeroinitializer }, align 32
@fops_simulate_radar = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr @ath10k_write_simulate_radar, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dfs_block_radar_events\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dfs_stats\00", [22 x i8] zeroinitializer }, align 32
@fops_dfs_stats = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath10k_read_dfs_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pktlog_filter\00", [18 x i8] zeroinitializer }, align 32
@fops_pktlog_filter = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @ath10k_read_pktlog_filter, ptr @ath10k_write_pktlog_filter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"quiet_period\00", [19 x i8] zeroinitializer }, align 32
@fops_quiet_period = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @ath10k_read_quiet_period, ptr @ath10k_write_quiet_period, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tpc_stats\00", [22 x i8] zeroinitializer }, align 32
@fops_tpc_stats = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath10k_tpc_stats_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ath10k_tpc_stats_open, ptr null, ptr @ath10k_tpc_stats_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"btcoex\00", [25 x i8] zeroinitializer }, align 32
@fops_btcoex = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @ath10k_read_btcoex, ptr @ath10k_write_btcoex, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"peer_stats\00", [21 x i8] zeroinitializer }, align 32
@fops_peer_stats = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @ath10k_read_peer_stats, ptr @ath10k_write_peer_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"enable_extd_tx_stats\00", [43 x i8] zeroinitializer }, align 32
@fops_enable_extd_tx_stats = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @ath10k_read_enable_extd_tx_stats, ptr @ath10k_write_enable_extd_tx_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fw_checksums\00", [19 x i8] zeroinitializer }, align 32
@fops_fw_checksums = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath10k_debug_fw_checksums_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sta_tid_stats_mask\00", [45 x i8] zeroinitializer }, align 32
@fops_sta_tid_stats_mask = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath10k_sta_tid_stats_mask_read, ptr @ath10k_sta_tid_stats_mask_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tpc_stats_final\00", [16 x i8] zeroinitializer }, align 32
@fops_tpc_stats_final = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath10k_tpc_stats_final_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ath10k_tpc_stats_final_open, ptr null, ptr @ath10k_tpc_stats_final_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"warm_hw_reset\00", [18 x i8] zeroinitializer }, align 32
@fops_warm_hw_reset = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr @ath10k_write_warm_hw_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ps_state_enable\00", [16 x i8] zeroinitializer }, align 32
@fops_ps_state_enable = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @ath10k_read_ps_state_enable, ptr @ath10k_write_ps_state_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reset_htt_stats\00", [16 x i8] zeroinitializer }, align 32
@fops_reset_htt_stats = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr @ath10k_write_reset_htt_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ath10k_debug_mask = external dso_local local_unnamed_addr global i32, align 4
@__ath10k_dbg._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.60, ptr @.str.2, i32 2684, ptr @.str.61, ptr @.str.4 }, align 1
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__ath10k_dbg\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@__ath10k_dbg._entry_ptr = internal global ptr @__ath10k_dbg._entry, section ".printk_index", align 4
@__kstrtab___ath10k_dbg = external dso_local constant [0 x i8], align 1
@__kstrtabns___ath10k_dbg = external dso_local constant [0 x i8], align 1
@__ksymtab___ath10k_dbg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ath10k_dbg to i32), ptr @__kstrtab___ath10k_dbg, ptr @__kstrtabns___ath10k_dbg }, section "___ksymtab+__ath10k_dbg", align 4
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s%08x: \00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@ath10k_dbg_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.65, ptr @.str.2, i32 2715, ptr @.str.61, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ath10k_dbg_dump\00", [16 x i8] zeroinitializer }, align 32
@ath10k_dbg_dump._entry_ptr = internal global ptr @ath10k_dbg_dump._entry, section ".printk_index", align 4
@__kstrtab_ath10k_dbg_dump = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath10k_dbg_dump = external dso_local constant [0 x i8], align 1
@__ksymtab_ath10k_dbg_dump = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath10k_dbg_dump to i32), ptr @__kstrtab_ath10k_dbg_dump, ptr @__kstrtabns_ath10k_dbg_dump }, section "___ksymtab+ath10k_dbg_dump", align 4
@__tracepoint_ath10k_log_info = external dso_local global %struct.tracepoint, align 4
@.str.66 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/ath/ath10k/trace.h\00", [56 x i8] zeroinitializer }, align 32
@trace_ath10k_log_info.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.67 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"file\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"otp\00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"dt\00", [29 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nvmem\00", [26 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pre-cal-file\00", [19 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pre-cal-dt\00", [21 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pre-cal-nvmem\00", [18 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eeprom\00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@__tracepoint_ath10k_log_err = external dso_local global %struct.tracepoint, align 4
@trace_ath10k_log_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ath10k_log_warn = external dso_local global %struct.tracepoint, align 4
@trace_ath10k_log_warn.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.78 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to send htt stats request: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to read hi_board_data address: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to read calibration data: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to request fw stats: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to fill fw stats: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fw_crash_counter\09\09%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fw_warm_reset_counter\09\09%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fw_cold_reset_counter\09\09%d\0A\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%-40s %s (bit %d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%-40s %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"-\00", [30 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WMI_SERVICE_BEACON_OFFLOAD\00", [37 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"WMI_SERVICE_SCAN_OFFLOAD\00", [39 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"WMI_SERVICE_ROAM_OFFLOAD\00", [39 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"WMI_SERVICE_BCN_MISS_OFFLOAD\00", [35 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"WMI_SERVICE_STA_PWRSAVE\00", [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"WMI_SERVICE_STA_ADVANCED_PWRSAVE\00", [63 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WMI_SERVICE_AP_UAPSD\00", [43 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WMI_SERVICE_AP_DFS\00", [45 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"WMI_SERVICE_11AC\00", [47 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WMI_SERVICE_BLOCKACK\00", [43 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WMI_SERVICE_PHYERR\00", [45 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WMI_SERVICE_BCN_FILTER\00", [41 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WMI_SERVICE_RTT\00", [16 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WMI_SERVICE_RATECTRL\00", [43 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WMI_SERVICE_WOW\00", [16 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WMI_SERVICE_RATECTRL_CACHE\00", [37 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"WMI_SERVICE_IRAM_TIDS\00", [42 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"WMI_SERVICE_ARPNS_OFFLOAD\00", [38 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WMI_SERVICE_NLO\00", [16 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"WMI_SERVICE_GTK_OFFLOAD\00", [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WMI_SERVICE_SCAN_SCH\00", [43 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"WMI_SERVICE_CSA_OFFLOAD\00", [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"WMI_SERVICE_CHATTER\00", [44 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WMI_SERVICE_COEX_FREQAVOID\00", [37 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"WMI_SERVICE_PACKET_POWER_SAVE\00", [34 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"WMI_SERVICE_FORCE_FW_HANG\00", [38 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"WMI_SERVICE_GPIO\00", [47 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"WMI_SERVICE_STA_DTIM_PS_MODULATED_DTIM\00", [57 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"WMI_SERVICE_STA_UAPSD_BASIC_AUTO_TRIG\00", [58 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"WMI_SERVICE_STA_UAPSD_VAR_AUTO_TRIG\00", [60 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WMI_SERVICE_STA_KEEP_ALIVE\00", [37 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WMI_SERVICE_TX_ENCAP\00", [43 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"WMI_SERVICE_BURST\00", [46 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"WMI_SERVICE_SMART_ANTENNA_SW_SUPPORT\00", [59 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"WMI_SERVICE_SMART_ANTENNA_HW_SUPPORT\00", [59 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"WMI_SERVICE_ROAM_SCAN_OFFLOAD\00", [34 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"WMI_SERVICE_AP_PS_DETECT_OUT_OF_SYNC\00", [59 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WMI_SERVICE_EARLY_RX\00", [43 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WMI_SERVICE_STA_SMPS\00", [43 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WMI_SERVICE_FWTEST\00", [45 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"WMI_SERVICE_STA_WMMAC\00", [42 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"WMI_SERVICE_TDLS\00", [47 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"WMI_SERVICE_MCC_BCN_INTERVAL_CHANGE\00", [60 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"WMI_SERVICE_ADAPTIVE_OCS\00", [39 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WMI_SERVICE_BA_SSN_SUPPORT\00", [37 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"WMI_SERVICE_FILTER_IPSEC_NATKEEPALIVE\00", [58 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"WMI_SERVICE_WLAN_HB\00", [44 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"WMI_SERVICE_LTE_ANT_SHARE_SUPPORT\00", [62 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WMI_SERVICE_BATCH_SCAN\00", [41 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WMI_SERVICE_QPOWER\00", [45 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WMI_SERVICE_PLMREQ\00", [45 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"WMI_SERVICE_THERMAL_MGMT\00", [39 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WMI_SERVICE_RMC\00", [16 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"WMI_SERVICE_MHF_OFFLOAD\00", [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WMI_SERVICE_COEX_SAR\00", [43 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"WMI_SERVICE_BCN_TXRATE_OVERRIDE\00", [32 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WMI_SERVICE_NAN\00", [16 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"WMI_SERVICE_L1SS_STAT\00", [42 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"WMI_SERVICE_ESTIMATE_LINKSPEED\00", [33 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"WMI_SERVICE_OBSS_SCAN\00", [42 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"WMI_SERVICE_TDLS_OFFCHAN\00", [39 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"WMI_SERVICE_TDLS_UAPSD_BUFFER_STA\00", [62 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"WMI_SERVICE_TDLS_UAPSD_SLEEP_STA\00", [63 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"WMI_SERVICE_IBSS_PWRSAVE\00", [39 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"WMI_SERVICE_LPASS\00", [46 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"WMI_SERVICE_EXTSCAN\00", [44 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"WMI_SERVICE_D0WOW\00", [46 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"WMI_SERVICE_HSOFFLOAD\00", [42 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"WMI_SERVICE_ROAM_HO_OFFLOAD\00", [36 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"WMI_SERVICE_RX_FULL_REORDER\00", [36 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"WMI_SERVICE_DHCP_OFFLOAD\00", [39 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"WMI_SERVICE_STA_RX_IPA_OFFLOAD_SUPPORT\00", [57 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"WMI_SERVICE_MDNS_OFFLOAD\00", [39 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"WMI_SERVICE_SAP_AUTH_OFFLOAD\00", [35 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WMI_SERVICE_ATF\00", [16 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"WMI_SERVICE_COEX_GPIO\00", [42 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"WMI_SERVICE_ENHANCED_PROXY_STA\00", [33 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"WMI_SERVICE_TT\00", [17 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"WMI_SERVICE_PEER_CACHING\00", [39 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"WMI_SERVICE_AUX_SPECTRAL_INTF\00", [34 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"WMI_SERVICE_AUX_CHAN_LOAD_INTF\00", [33 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"WMI_SERVICE_BSS_CHANNEL_INFO_64\00", [32 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"WMI_SERVICE_EXT_RES_CFG_SUPPORT\00", [32 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WMI_SERVICE_MESH_11S\00", [43 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"WMI_SERVICE_MESH_NON_11S\00", [39 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WMI_SERVICE_PEER_STATS\00", [41 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"WMI_SERVICE_RESTRT_CHNL_SUPPORT\00", [32 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"WMI_SERVICE_PERIODIC_CHAN_STAT_SUPPORT\00", [57 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"WMI_SERVICE_TX_MODE_PUSH_ONLY\00", [34 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"WMI_SERVICE_TX_MODE_PUSH_PULL\00", [34 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"WMI_SERVICE_TX_MODE_DYNAMIC\00", [36 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WMI_SERVICE_VDEV_RX_FILTER\00", [37 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WMI_SERVICE_BTCOEX\00", [45 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"WMI_SERVICE_CHECK_CAL_VERSION\00", [34 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"WMI_SERVICE_DBGLOG_WARN2\00", [39 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"WMI_SERVICE_BTCOEX_DUTY_CYCLE\00", [34 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"WMI_SERVICE_4_WIRE_COEX_SUPPORT\00", [32 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"WMI_SERVICE_EXTENDED_NSS_SUPPORT\00", [63 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"WMI_SERVICE_PROG_GPIO_BAND_SELECT\00", [62 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"WMI_SERVICE_SMART_LOGGING_SUPPORT\00", [62 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"WMI_SERVICE_TDLS_CONN_TRACKER_IN_HOST_MODE\00", [53 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"WMI_SERVICE_TDLS_EXPLICIT_MODE_ONLY\00", [60 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"WMI_SERVICE_MGMT_TX_WMI\00", [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"WMI_SERVICE_TDLS_WIDER_BANDWIDTH\00", [63 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"WMI_SERVICE_HTT_MGMT_TX_COMP_VALID_FLAGS\00", [55 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"WMI_SERVICE_HOST_DFS_CHECK_SUPPORT\00", [61 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"WMI_SERVICE_TPC_STATS_FINAL\00", [36 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WMI_SERVICE_RESET_CHIP\00", [41 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"WMI_SERVICE_SPOOF_MAC_SUPPORT\00", [34 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"WMI_SERVICE_TX_DATA_ACK_RSSI\00", [35 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"WMI_SERVICE_VDEV_DIFFERENT_BEACON_INTERVAL_SUPPORT\00", [45 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"WMI_SERVICE_VDEV_DISABLE_4_ADDR_SRC_LRN_SUPPORT\00", [48 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"WMI_SERVICE_BB_TIMING_CONFIG_SUPPORT\00", [59 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"WMI_SERVICE_THERM_THROT\00", [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"WMI_SERVICE_RTT_RESPONDER_ROLE\00", [33 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"WMI_SERVICE_PER_PACKET_SW_ENCRYPT\00", [62 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WMI_SERVICE_REPORT_AIRTIME\00", [37 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"WMI_SERVICE_SYNC_DELETE_CMDS\00", [35 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"WMI_SERVICE_TX_PWR_PER_PEER\00", [36 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"WMI_SERVICE_SUPPORT_EXTEND_ADDRESS\00", [61 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"WMI_SERVICE_PEER_TID_CONFIGS_SUPPORT\00", [59 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"WMI_SERVICE_EXT_PEER_TID_CONFIGS_SUPPORT\00", [55 x i8] zeroinitializer }, align 32
@__const.ath10k_read_simulate_fw_crash.buf = private unnamed_addr constant [431 x i8] c"To simulate firmware crash write one of the keywords to this file:\0A`soft` - this will send WMI_FORCE_FW_HANG_ASSERT to firmware if FW supports that command.\0A`hard` - this will send to firmware command with illegal parameters causing firmware crash.\0A`assert` - this will send special illegal parameter to firmware to cause assert failure and crash.\0A`hw-restart` - this will simply queue hw restart without fw/hw actually crashing.\0A\00", align 1
@.str.213 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"soft\00", [27 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"simulating soft firmware crash\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hard\00", [27 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"simulating hard firmware crash\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"assert\00", [25 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"simulating firmware assert crash\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hw-restart\00", [21 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"user requested hw restart\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to simulate firmware crash: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0x%08x:0x%08x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hif read32 not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hif write32 not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"failed to read address 0x%08x via diagnose window from debugfs: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.227 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"failed to write address 0x%08x via diagnose window from debugfs: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%u %u\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%u %u\00", [26 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"0x%16llx %u\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%llx %u\00", [24 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"dbglog cfg failed from debugfs: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cal period cfg failed from debugfs: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ani_enable failed from debugfs: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DFS not enabled\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Pulse detector statistics:\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%-28s : %10u\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reported phy errors\00", [44 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pulse events reported\00", [42 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DFS pulses detected\00", [44 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DFS pulses discarded\00", [43 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Radars detected\00", [16 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Global Pool statistics:\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Pool references\00", [16 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Pulses allocated\00", [47 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Pulses alloc error\00", [45 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Pulses in use\00", [18 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Seqs. allocated\00", [16 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Seqs. alloc error\00", [46 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Seqs. in use\00", [19 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%08x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Quiet period %u can not be lesser than 25ms\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to request tpc config stats: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to request tpc config: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get tpc stats\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*************************************\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"TPC config for channel %4d mode %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CTL\09\09=  0x%2x Reg. Domain\09\09= %2d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Antenna Gain\09= %2d Reg. Max Antenna Gain\09=  %2d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Power Limit\09= %2d Reg. Max Power\09\09= %2d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Num tx chains\09= %2d Num supported rates\09= %2d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CDD not supported\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"STBC not supported\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"TXBF not supported\0A***************************\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Invalid Type\0A\00", [18 x i8] zeroinitializer }, align 32
@ath10k_tpc_stats_print.table_str = internal constant { [3 x [5 x i8]], [17 x i8] } { [3 x [5 x i8]] [[5 x i8] c"CDD\00\00", [5 x i8] c"STBC\00", [5 x i8] c"TXBF\00"], [17 x i8] zeroinitializer }, align 32
@ath10k_tpc_stats_print.pream_str = internal constant { [8 x [6 x i8]], [48 x i8] } { [8 x [6 x i8]] [[6 x i8] c"CCK\00\00\00", [6 x i8] c"OFDM\00\00", [6 x i8] c"HT20\00\00", [6 x i8] c"HT40\00\00", [6 x i8] c"VHT20\00", [6 x i8] c"VHT40\00", [6 x i8] c"VHT80\00", [6 x i8] c"HTCUP\00"], [48 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"********************************\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"******************* %s POWER TABLE ****************\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No.  Preamble Rate_code \00", [39 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tpc_value%d \00", [19 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%8d %s 0x%2x %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"***********************************\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable btcoex: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"restarting firmware due to btcoex change\00", [55 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"restarting firmware due to Peer stats change\00", [51 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"firmware-N.bin\09\09%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"athwlan\09\09\09%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"otp\09\09\09%08x\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"codeswap\09\09%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"board-N.bin\09\09%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"board\09\09\09%08x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to request tpc stats final: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to request tpc table cmdid: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to enable warm hw reset: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to enable ps_state_enable: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@__tracepoint_ath10k_log_dbg = external dso_local global %struct.tracepoint, align 4
@trace_ath10k_log_dbg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_ath10k_log_dbg_dump = external dso_local global %struct.tracepoint, align 4
@trace_ath10k_log_dbg_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@switch.table.ath10k_debug_print_boot_info = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76], [32 x i8] zeroinitializer }, align 32
@switch.table.ath10k_print_driver_info = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76], [32 x i8] zeroinitializer }, align 32
@switch.table.ath10k_read_wmi_services = internal constant { [122 x ptr], [120 x i8] } { [122 x ptr] [ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212], [120 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.292 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.293 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.294 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.295 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.296 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.297 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.298 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.299 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 33, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 47, i32 18 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 53, i32 18 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 64, i32 18 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 78, i32 43 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 81, i32 43 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 89, i32 18 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 97, i32 18 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 125, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 140, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 270, i32 19 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 290, i32 20 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 320, i32 20 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 326, i32 20 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 371, i32 20 }
@___asan_gen_.375 = private unnamed_addr constant [22 x i8] c"ath10k_gstrings_stats\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1085, i32 19 }
@___asan_gen_.378 = private unnamed_addr constant [11 x i8] c"zero_stats\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1160, i32 43 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1171, i32 9 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1700, i32 19 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1708, i32 20 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1718, i32 9 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1724, i32 20 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1735, i32 20 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2542, i32 45 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2551, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2557, i32 22 }
@___asan_gen_.417 = private unnamed_addr constant [14 x i8] c"fops_fw_stats\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 452, i32 37 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2560, i32 22 }
@___asan_gen_.423 = private unnamed_addr constant [20 x i8] c"fops_fw_reset_stats\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 493, i32 37 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2563, i32 22 }
@___asan_gen_.429 = private unnamed_addr constant [18 x i8] c"fops_wmi_services\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 195, i32 37 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2566, i32 22 }
@___asan_gen_.435 = private unnamed_addr constant [23 x i8] c"fops_simulate_fw_crash\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 605, i32 37 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2569, i32 22 }
@___asan_gen_.441 = private unnamed_addr constant [14 x i8] c"fops_reg_addr\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 672, i32 37 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2572, i32 22 }
@___asan_gen_.447 = private unnamed_addr constant [15 x i8] c"fops_reg_value\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 743, i32 37 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2575, i32 22 }
@___asan_gen_.453 = private unnamed_addr constant [15 x i8] c"fops_mem_value\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 854, i32 37 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2578, i32 22 }
@___asan_gen_.459 = private unnamed_addr constant [13 x i8] c"fops_chip_id\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 625, i32 37 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2581, i32 22 }
@___asan_gen_.465 = private unnamed_addr constant [20 x i8] c"fops_htt_stats_mask\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 948, i32 37 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2584, i32 22 }
@___asan_gen_.471 = private unnamed_addr constant [25 x i8] c"fops_htt_max_amsdu_ampdu\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1010, i32 37 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2587, i32 22 }
@___asan_gen_.477 = private unnamed_addr constant [15 x i8] c"fops_fw_dbglog\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1241, i32 37 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2592, i32 23 }
@___asan_gen_.483 = private unnamed_addr constant [14 x i8] c"fops_cal_data\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1370, i32 37 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2595, i32 23 }
@___asan_gen_.489 = private unnamed_addr constant [19 x i8] c"fops_nf_cal_period\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1435, i32 37 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2599, i32 22 }
@___asan_gen_.495 = private unnamed_addr constant [16 x i8] c"fops_ani_enable\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1362, i32 37 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2603, i32 23 }
@___asan_gen_.501 = private unnamed_addr constant [20 x i8] c"fops_simulate_radar\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1780, i32 37 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2606, i32 23 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2610, i32 23 }
@___asan_gen_.510 = private unnamed_addr constant [15 x i8] c"fops_dfs_stats\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1842, i32 37 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2614, i32 22 }
@___asan_gen_.516 = private unnamed_addr constant [19 x i8] c"fops_pktlog_filter\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1911, i32 37 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2618, i32 23 }
@___asan_gen_.522 = private unnamed_addr constant [18 x i8] c"fops_quiet_period\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1955, i32 37 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2621, i32 22 }
@___asan_gen_.528 = private unnamed_addr constant [15 x i8] c"fops_tpc_stats\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1683, i32 37 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2625, i32 23 }
@___asan_gen_.534 = private unnamed_addr constant [12 x i8] c"fops_btcoex\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2039, i32 37 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2629, i32 23 }
@___asan_gen_.540 = private unnamed_addr constant [16 x i8] c"fops_peer_stats\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2163, i32 37 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2632, i32 23 }
@___asan_gen_.546 = private unnamed_addr constant [26 x i8] c"fops_enable_extd_tx_stats\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2094, i32 37 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2637, i32 22 }
@___asan_gen_.552 = private unnamed_addr constant [18 x i8] c"fops_fw_checksums\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2217, i32 37 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2641, i32 23 }
@___asan_gen_.558 = private unnamed_addr constant [24 x i8] c"fops_sta_tid_stats_mask\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2258, i32 37 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2646, i32 23 }
@___asan_gen_.564 = private unnamed_addr constant [21 x i8] c"fops_tpc_stats_final\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2347, i32 37 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2651, i32 23 }
@___asan_gen_.570 = private unnamed_addr constant [19 x i8] c"fops_warm_hw_reset\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2391, i32 37 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2655, i32 22 }
@___asan_gen_.576 = private unnamed_addr constant [21 x i8] c"fops_ps_state_enable\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2469, i32 37 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2658, i32 22 }
@___asan_gen_.582 = private unnamed_addr constant [21 x i8] c"fops_reset_htt_stats\00", align 1
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2508, i32 37 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2684, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2703, i32 27 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2709, i32 7 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2710, i32 26 }
@___asan_gen_.600 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2715, i32 4 }
@___asan_gen_.610 = private unnamed_addr constant [43 x i8] c"../drivers/net/wireless/ath/ath10k/trace.h\00", align 1
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.610, i32 83, i32 1 }
@___asan_gen_.613 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 108, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 898, i32 10 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 900, i32 10 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 902, i32 10 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 904, i32 10 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 906, i32 10 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 908, i32 10 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 910, i32 10 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 912, i32 10 }
@___asan_gen_.640 = private unnamed_addr constant [42 x i8] c"../drivers/net/wireless/ath/ath10k/core.h\00", align 1
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.640, i32 915, i32 9 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 881, i32 19 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1267, i32 19 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1275, i32 19 }
@___asan_gen_.651 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.655 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.655, i32 87, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 413, i32 19 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 419, i32 19 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 476, i32 5 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 478, i32 5 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 481, i32 5 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 175, i32 8 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 176, i32 19 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 182, i32 6 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 183, i32 34 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 388, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 389, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 390, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 391, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 392, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 393, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 394, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 395, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 396, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 397, i32 2 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 398, i32 2 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 399, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 400, i32 2 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 401, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 402, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 403, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 404, i32 2 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 405, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 406, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 407, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 408, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 409, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 410, i32 2 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 411, i32 2 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 412, i32 2 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 413, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 414, i32 2 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 415, i32 2 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 416, i32 2 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 417, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 418, i32 2 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 419, i32 2 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 420, i32 2 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 421, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 422, i32 2 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 423, i32 2 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 424, i32 2 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 425, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 426, i32 2 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 427, i32 2 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 428, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 429, i32 2 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 430, i32 2 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 431, i32 2 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 432, i32 2 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 433, i32 2 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 434, i32 2 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 435, i32 2 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 436, i32 2 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 437, i32 2 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 438, i32 2 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 439, i32 2 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 440, i32 2 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 441, i32 2 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 442, i32 2 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 443, i32 2 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 444, i32 2 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 445, i32 2 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 446, i32 2 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 447, i32 2 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 448, i32 2 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 449, i32 2 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 450, i32 2 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 451, i32 2 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 452, i32 2 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 453, i32 2 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 454, i32 2 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 455, i32 2 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 456, i32 2 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 457, i32 2 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 458, i32 2 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 459, i32 2 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 460, i32 2 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 461, i32 2 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 462, i32 2 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 463, i32 2 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 464, i32 2 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 465, i32 2 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 466, i32 2 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 467, i32 2 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 468, i32 2 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 469, i32 2 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 470, i32 2 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 471, i32 2 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 472, i32 2 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 473, i32 2 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 474, i32 2 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 475, i32 2 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 476, i32 2 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 477, i32 2 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 478, i32 2 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 479, i32 2 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 480, i32 2 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 481, i32 2 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 482, i32 2 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 483, i32 2 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 484, i32 2 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 485, i32 2 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 486, i32 2 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 487, i32 2 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 488, i32 2 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 489, i32 2 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 490, i32 2 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 491, i32 2 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 492, i32 2 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 493, i32 2 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 494, i32 2 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 495, i32 2 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 496, i32 2 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 497, i32 2 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 498, i32 2 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 499, i32 2 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 500, i32 2 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 501, i32 2 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 502, i32 2 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 503, i32 2 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 504, i32 2 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 505, i32 2 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 506, i32 2 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 507, i32 2 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 508, i32 2 }
@___asan_gen_.1048 = private unnamed_addr constant [41 x i8] c"../drivers/net/wireless/ath/ath10k/wmi.h\00", align 1
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1048, i32 509, i32 2 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 570, i32 19 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 571, i32 19 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 573, i32 26 }
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 574, i32 19 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 581, i32 26 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 582, i32 19 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 584, i32 26 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 585, i32 19 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 594, i32 19 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 645, i32 49 }
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 701, i32 36 }
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1087, i32 213, i32 19 }
@___asan_gen_.1087 = private unnamed_addr constant [41 x i8] c"../drivers/net/wireless/ath/ath10k/hif.h\00", align 1
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1087, i32 224, i32 19 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 781, i32 19 }
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1096, i32 230, i32 6 }
@___asan_gen_.1096 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1096, i32 214, i32 2 }
@___asan_gen_.1099 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1099, i32 174, i32 2 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 839, i32 19 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 620, i32 36 }
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 911, i32 36 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 971, i32 36 }
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 990, i32 20 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1026, i32 36 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1047, i32 20 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1065, i32 20 }
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1385, i32 36 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1422, i32 19 }
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1337, i32 19 }
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1808, i32 43 }
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1815, i32 42 }
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1817, i32 2 }
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1818, i32 2 }
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1819, i32 2 }
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1820, i32 2 }
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1821, i32 2 }
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1823, i32 42 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1824, i32 2 }
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1825, i32 2 }
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1826, i32 2 }
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1827, i32 2 }
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1828, i32 2 }
@___asan_gen_.1178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1829, i32 2 }
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1830, i32 2 }
@___asan_gen_.1184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1904, i32 42 }
@___asan_gen_.1187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1928, i32 19 }
@___asan_gen_.1190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1648, i32 19 }
@___asan_gen_.1193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1456, i32 19 }
@___asan_gen_.1196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1552, i32 19 }
@___asan_gen_.1199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1556, i32 45 }
@___asan_gen_.1202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1558, i32 5 }
@___asan_gen_.1205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1560, i32 5 }
@___asan_gen_.1208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1566, i32 5 }
@___asan_gen_.1211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1570, i32 5 }
@___asan_gen_.1214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1574, i32 5 }
@___asan_gen_.1217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1578, i32 5 }
@___asan_gen_.1220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1587, i32 8 }
@___asan_gen_.1223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1596, i32 8 }
@___asan_gen_.1226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1605, i32 8 }
@___asan_gen_.1229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1613, i32 7 }
@___asan_gen_.1230 = private unnamed_addr constant [10 x i8] c"table_str\00", align 1
@___asan_gen_.1232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1498, i32 20 }
@___asan_gen_.1233 = private unnamed_addr constant [10 x i8] c"pream_str\00", align 1
@___asan_gen_.1235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1501, i32 20 }
@___asan_gen_.1238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1512, i32 6 }
@___asan_gen_.1241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1514, i32 6 }
@___asan_gen_.1244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1519, i32 6 }
@___asan_gen_.1247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1523, i32 7 }
@___asan_gen_.1250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1529, i32 7 }
@___asan_gen_.1253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 1536, i32 6 }
@___asan_gen_.1256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2002, i32 20 }
@___asan_gen_.1259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2007, i32 19 }
@___asan_gen_.1262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2137, i32 18 }
@___asan_gen_.1265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2185, i32 5 }
@___asan_gen_.1268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2189, i32 5 }
@___asan_gen_.1271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2193, i32 5 }
@___asan_gen_.1274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2197, i32 5 }
@___asan_gen_.1277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2201, i32 5 }
@___asan_gen_.1280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2205, i32 5 }
@___asan_gen_.1283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2310, i32 19 }
@___asan_gen_.1286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2277, i32 19 }
@___asan_gen_.1289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2380, i32 19 }
@___asan_gen_.1290 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1291 = private constant [43 x i8] c"../drivers/net/wireless/ath/ath10k/debug.c\00", align 1
@___asan_gen_.1292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1291, i32 2434, i32 19 }
@___asan_gen_.1293 = private unnamed_addr constant [42 x i8] c"switch.table.ath10k_debug_print_boot_info\00", align 1
@___asan_gen_.1294 = private unnamed_addr constant [38 x i8] c"switch.table.ath10k_print_driver_info\00", align 1
@___asan_gen_.1295 = private unnamed_addr constant [38 x i8] c"switch.table.ath10k_read_wmi_services\00", align 1
@llvm.compiler.used = appending global [346 x ptr] [ptr @__ath10k_dbg._entry, ptr @__ath10k_dbg._entry_ptr, ptr @__ksymtab___ath10k_dbg, ptr @__ksymtab_ath10k_dbg_dump, ptr @__ksymtab_ath10k_err, ptr @__ksymtab_ath10k_info, ptr @__ksymtab_ath10k_print_driver_info, ptr @__ksymtab_ath10k_warn, ptr @ath10k_dbg_dump._entry, ptr @ath10k_dbg_dump._entry_ptr, ptr @ath10k_err._entry, ptr @ath10k_err._entry_ptr, ptr @ath10k_info._entry, ptr @ath10k_info._entry_ptr, ptr @ath10k_warn._entry, ptr @ath10k_warn._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @ath10k_warn._rs, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @ath10k_gstrings_stats, ptr @ath10k_debug_get_et_stats.zero_stats, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @ath10k_debug_register.__key, ptr @.str.28, ptr @ath10k_debug_register.__key.29, ptr @.str.30, ptr @.str.31, ptr @fops_fw_stats, ptr @.str.32, ptr @fops_fw_reset_stats, ptr @.str.33, ptr @fops_wmi_services, ptr @.str.34, ptr @fops_simulate_fw_crash, ptr @.str.35, ptr @fops_reg_addr, ptr @.str.36, ptr @fops_reg_value, ptr @.str.37, ptr @fops_mem_value, ptr @.str.38, ptr @fops_chip_id, ptr @.str.39, ptr @fops_htt_stats_mask, ptr @.str.40, ptr @fops_htt_max_amsdu_ampdu, ptr @.str.41, ptr @fops_fw_dbglog, ptr @.str.42, ptr @fops_cal_data, ptr @.str.43, ptr @fops_nf_cal_period, ptr @.str.44, ptr @fops_ani_enable, ptr @.str.45, ptr @fops_simulate_radar, ptr @.str.46, ptr @.str.47, ptr @fops_dfs_stats, ptr @.str.48, ptr @fops_pktlog_filter, ptr @.str.49, ptr @fops_quiet_period, ptr @.str.50, ptr @fops_tpc_stats, ptr @.str.51, ptr @fops_btcoex, ptr @.str.52, ptr @fops_peer_stats, ptr @.str.53, ptr @fops_enable_extd_tx_stats, ptr @.str.54, ptr @fops_fw_checksums, ptr @.str.55, ptr @fops_sta_tid_stats_mask, ptr @.str.56, ptr @fops_tpc_stats_final, ptr @.str.57, ptr @fops_warm_hw_reset, ptr @.str.58, ptr @fops_ps_state_enable, ptr @.str.59, ptr @fops_reset_htt_stats, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @init_completion.__key, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @ath10k_tpc_stats_print.table_str, ptr @ath10k_tpc_stats_print.pream_str, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @switch.table.ath10k_debug_print_boot_info, ptr @switch.table.ath10k_print_driver_info, ptr @switch.table.ath10k_read_wmi_services], section "llvm.metadata"
@0 = internal global [334 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_warn._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_warn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_gstrings_stats to i32), i32 1504, i32 1856, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_debug_get_et_stats.zero_stats to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_debug_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_debug_register.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_fw_stats to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_fw_reset_stats to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_wmi_services to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_simulate_fw_crash to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_reg_addr to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_reg_value to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_mem_value to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_chip_id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_htt_stats_mask to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_htt_max_amsdu_ampdu to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_fw_dbglog to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_cal_data to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_nf_cal_period to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_ani_enable to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_simulate_radar to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_dfs_stats to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_pktlog_filter to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_quiet_period to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_tpc_stats to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_btcoex to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_peer_stats to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_enable_extd_tx_stats to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_fw_checksums to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_sta_tid_stats_mask to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_tpc_stats_final to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_warm_hw_reset to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_ps_state_enable to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_reset_htt_stats to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_dbg_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_tpc_stats_print.table_str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath10k_tpc_stats_print.pream_str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath10k_debug_print_boot_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath10k_print_driver_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath10k_read_wmi_services to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_info(ptr noundef %ar, ptr noundef %fmt, ...) #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #16
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %1 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %fmt, ptr %vaf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #16
  %2 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !689
  call void @llvm.va_start(ptr nonnull %args)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %dev = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull %vaf) #19
  call fastcc void @trace_ath10k_log_info(ptr noundef %ar, ptr noundef nonnull %vaf)
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ath10k_log_info(ptr noundef %ar, ptr noundef %vaf) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_info, i32 0, i32 1), ptr blockaddress(@trace_ath10k_log_info, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !690

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !679) #16
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !691

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !679) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !692
  %call42 = tail call i32 @__traceiter_ath10k_log_info(ptr noundef null, ptr noundef %ar, ptr noundef %vaf) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !693
  %13 = tail call i32 @llvm.read_register.i32(metadata !679) #16
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !679) #16
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !691

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !679) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !694
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_info, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_info, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ath10k_log_info.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_ath10k_log_info.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 86, ptr noundef nonnull @.str.67) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !695
  %31 = tail call i32 @llvm.read_register.i32(metadata !679) #16
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

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_debug_print_hwfw_info(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  %fw_features = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %fw_features) #16
  %0 = call ptr @memset(ptr %fw_features, i32 0, i32 128)
  call void @ath10k_core_get_fw_features_str(ptr noundef %ar, ptr noundef nonnull %fw_features, i32 noundef 128) #16
  %name = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 45, i32 3
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %target_version = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 9
  %3 = ptrtoint ptr %target_version to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %target_version, align 16
  %bus_param = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 136
  %5 = ptrtoint ptr %bus_param to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bus_param, align 4
  %subsystem_vendor = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 50, i32 2
  %7 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %subsystem_vendor, align 4
  %subsystem_device = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 50, i32 3
  %9 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %subsystem_device, align 4
  call void (ptr, ptr, ...) @ath10k_info(ptr noundef %ar, ptr noundef nonnull @.str.5, ptr noundef %2, i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10)
  call void (ptr, ptr, ...) @ath10k_info(ptr noundef %ar, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  %fw_file = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 46, i32 6
  %11 = ptrtoint ptr %fw_file to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw_file, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %data = getelementptr inbounds %struct.firmware, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 4
  %call = call i32 @crc32_le(i32 noundef 0, ptr noundef %14, i32 noundef %16) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %crc.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %hw = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 1
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wiphy, align 8
  %fw_version = getelementptr inbounds %struct.wiphy, ptr %20, i32 0, i32 38
  %fw_api = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 51
  %21 = ptrtoint ptr %fw_api to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fw_api, align 4
  call void (ptr, ptr, ...) @ath10k_info(ptr noundef %ar, ptr noundef nonnull @.str.7, ptr noundef %fw_version, i32 noundef %22, ptr noundef nonnull %fw_features, i32 noundef %crc.0)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %fw_features) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_core_get_fw_features_str(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_debug_print_board_info(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  %boardinfo = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %boardinfo) #16
  %0 = call ptr @memset(ptr %boardinfo, i32 255, i32 100)
  %bmi_ids_valid = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 50, i32 4
  %1 = ptrtoint ptr %bmi_ids_valid to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bmi_ids_valid, align 4, !range !696
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %bmi_chip_id = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 50, i32 10
  %3 = ptrtoint ptr %bmi_chip_id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bmi_chip_id, align 2
  %conv = zext i8 %4 to i32
  %bmi_board_id = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 50, i32 8
  %5 = ptrtoint ptr %bmi_board_id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bmi_board_id, align 4
  %conv3 = zext i8 %6 to i32
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %boardinfo, i32 noundef 100, ptr noundef nonnull @.str.8, i32 noundef %conv, i32 noundef %conv3) #16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call5 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %boardinfo, i32 noundef 100, ptr noundef nonnull @.str.9) #16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %normal_mode_fw = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 46
  %7 = ptrtoint ptr %normal_mode_fw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %normal_mode_fw, align 4
  %tobool.not.i = icmp eq ptr %8, null
  %cmp.i = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %data = getelementptr inbounds %struct.firmware, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  %call9 = call i32 @crc32_le(i32 noundef 0, ptr noundef %10, i32 noundef %12) #20
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %crc.0 = phi i32 [ %call9, %if.then8 ], [ 0, %if.end.if.end11_crit_edge ]
  %bd_api = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 52
  %13 = ptrtoint ptr %bd_api to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bd_api, align 16
  call void (ptr, ptr, ...) @ath10k_info(ptr noundef %ar, ptr noundef nonnull @.str.10, i32 noundef %14, ptr noundef nonnull %boardinfo, i32 noundef %crc.0)
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %boardinfo) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_debug_print_boot_info(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %target_version_major = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 3
  %0 = ptrtoint ptr %target_version_major to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %target_version_major, align 8
  %target_version_minor = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 4
  %2 = ptrtoint ptr %target_version_minor to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %target_version_minor, align 1
  %wmi_op_version = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 46, i32 6, i32 3
  %4 = ptrtoint ptr %wmi_op_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wmi_op_version, align 4
  %htt_op_version = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 46, i32 6, i32 4
  %6 = ptrtoint ptr %htt_op_version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %htt_op_version, align 4
  %cal_mode = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 53
  %8 = ptrtoint ptr %cal_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cal_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %10 = icmp ult i32 %9, 8
  br i1 %10, label %switch.lookup, label %entry.ath10k_cal_mode_str.exit_crit_edge

entry.ath10k_cal_mode_str.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_cal_mode_str.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.ath10k_debug_print_boot_info, i32 0, i32 %9
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %ath10k_cal_mode_str.exit

ath10k_cal_mode_str.exit:                         ; preds = %switch.lookup, %entry.ath10k_cal_mode_str.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.77, %entry.ath10k_cal_mode_str.exit_crit_edge ]
  %conv2 = zext i8 %3 to i32
  %conv = zext i8 %1 to i32
  %max_num_stations = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 90
  %12 = ptrtoint ptr %max_num_stations to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_num_stations, align 8
  %dev_flags = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 66
  %14 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %dev_flags, align 4
  %shr.i = lshr i32 %15, 3
  %and1.i = and i32 %shr.i, 1
  %16 = load volatile i32, ptr %dev_flags, align 4
  %17 = lshr i32 %16, 4
  %.lobit = and i32 %17, 1
  %18 = xor i32 %.lobit, 1
  tail call void (ptr, ptr, ...) @ath10k_info(ptr noundef %ar, ptr noundef nonnull @.str.11, i32 noundef %conv, i32 noundef %conv2, i32 noundef %5, i32 noundef %7, ptr noundef nonnull %retval.0.i, i32 noundef %13, i32 noundef %and1.i, i32 noundef %18)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_print_driver_info(ptr noundef %ar) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ath10k_debug_print_hwfw_info(ptr noundef %ar)
  tail call void @ath10k_debug_print_board_info(ptr noundef %ar)
  %target_version_major.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 3
  %0 = ptrtoint ptr %target_version_major.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %target_version_major.i, align 8
  %target_version_minor.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44, i32 4
  %2 = ptrtoint ptr %target_version_minor.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %target_version_minor.i, align 1
  %wmi_op_version.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 46, i32 6, i32 3
  %4 = ptrtoint ptr %wmi_op_version.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wmi_op_version.i, align 4
  %htt_op_version.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 46, i32 6, i32 4
  %6 = ptrtoint ptr %htt_op_version.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %htt_op_version.i, align 4
  %cal_mode.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 53
  %8 = ptrtoint ptr %cal_mode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cal_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %10 = icmp ult i32 %9, 8
  br i1 %10, label %switch.lookup, label %entry.ath10k_debug_print_boot_info.exit_crit_edge

entry.ath10k_debug_print_boot_info.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_debug_print_boot_info.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.ath10k_print_driver_info, i32 0, i32 %9
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %ath10k_debug_print_boot_info.exit

ath10k_debug_print_boot_info.exit:                ; preds = %switch.lookup, %entry.ath10k_debug_print_boot_info.exit_crit_edge
  %retval.0.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.77, %entry.ath10k_debug_print_boot_info.exit_crit_edge ]
  %conv2.i = zext i8 %3 to i32
  %conv.i = zext i8 %1 to i32
  %max_num_stations.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 90
  %12 = ptrtoint ptr %max_num_stations.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_num_stations.i, align 8
  %dev_flags.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 66
  %14 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %dev_flags.i, align 4
  %shr.i.i = lshr i32 %15, 3
  %and1.i.i = and i32 %shr.i.i, 1
  %16 = load volatile i32, ptr %dev_flags.i, align 4
  %17 = lshr i32 %16, 4
  %.lobit.i = and i32 %17, 1
  %18 = xor i32 %.lobit.i, 1
  tail call void (ptr, ptr, ...) @ath10k_info(ptr noundef %ar, ptr noundef nonnull @.str.11, i32 noundef %conv.i, i32 noundef %conv2.i, i32 noundef %5, i32 noundef %7, ptr noundef nonnull %retval.0.i.i, i32 noundef %13, i32 noundef %and1.i.i, i32 noundef %18) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_err(ptr noundef %ar, ptr noundef %fmt, ...) #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #16
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %1 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %fmt, ptr %vaf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #16
  %2 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !689
  call void @llvm.va_start(ptr nonnull %args)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %dev = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull %vaf) #19
  call fastcc void @trace_ath10k_log_err(ptr noundef %ar, ptr noundef nonnull %vaf)
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ath10k_log_err(ptr noundef %ar, ptr noundef %vaf) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_err, i32 0, i32 1), ptr blockaddress(@trace_ath10k_log_err, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !690

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !679) #16
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !691

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !679) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !697
  %call42 = tail call i32 @__traceiter_ath10k_log_err(ptr noundef null, ptr noundef %ar, ptr noundef %vaf) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !698
  %13 = tail call i32 @llvm.read_register.i32(metadata !679) #16
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !679) #16
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !691

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !679) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !694
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_err, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ath10k_log_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_ath10k_log_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 76, ptr noundef nonnull @.str.67) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !695
  %31 = tail call i32 @llvm.read_register.i32(metadata !679) #16
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
define dso_local void @ath10k_warn(ptr noundef %ar, ptr noundef %fmt, ...) #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #16
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %1 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %fmt, ptr %vaf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #16
  %2 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !689
  call void @llvm.va_start(ptr nonnull %args)
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %call = call i32 @___ratelimit(ptr noundef nonnull @ath10k_warn._rs, ptr noundef nonnull @__func__.ath10k_warn) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull %vaf) #19
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  call fastcc void @trace_ath10k_log_warn(ptr noundef %ar, ptr noundef nonnull %vaf)
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ath10k_log_warn(ptr noundef %ar, ptr noundef %vaf) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_warn, i32 0, i32 1), ptr blockaddress(@trace_ath10k_log_warn, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !690

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !679) #16
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !691

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !679) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !699
  %call42 = tail call i32 @__traceiter_ath10k_log_warn(ptr noundef null, ptr noundef %ar, ptr noundef %vaf) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !700
  %13 = tail call i32 @llvm.read_register.i32(metadata !679) #16
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !679) #16
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !691

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !679) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !694
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_warn, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_warn, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ath10k_log_warn.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_ath10k_log_warn.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 81, ptr noundef nonnull @.str.67) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !695
  %31 = tail call i32 @llvm.read_register.i32(metadata !679) #16
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
define dso_local void @ath10k_debug_fw_stats_process(ptr noundef %ar, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %stats = alloca %struct.ath10k_fw_stats, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %stats) #16
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %stats, align 4
  %pdevs = getelementptr inbounds %struct.ath10k_fw_stats, ptr %stats, i32 0, i32 1
  %1 = ptrtoint ptr %pdevs to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %pdevs, ptr %pdevs, align 4
  %prev.i = getelementptr inbounds %struct.ath10k_fw_stats, ptr %stats, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdevs, ptr %prev.i, align 4
  %vdevs = getelementptr inbounds %struct.ath10k_fw_stats, ptr %stats, i32 0, i32 2
  %3 = ptrtoint ptr %vdevs to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %vdevs, ptr %vdevs, align 4
  %prev.i130 = getelementptr inbounds %struct.ath10k_fw_stats, ptr %stats, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i130 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %vdevs, ptr %prev.i130, align 4
  %peers = getelementptr inbounds %struct.ath10k_fw_stats, ptr %stats, i32 0, i32 3
  %5 = ptrtoint ptr %peers to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %peers, ptr %peers, align 4
  %prev.i131 = getelementptr inbounds %struct.ath10k_fw_stats, ptr %stats, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i131 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %peers, ptr %prev.i131, align 4
  %peers_extd = getelementptr inbounds %struct.ath10k_fw_stats, ptr %stats, i32 0, i32 4
  %7 = ptrtoint ptr %peers_extd to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %peers_extd, ptr %peers_extd, align 4
  %prev.i132 = getelementptr inbounds %struct.ath10k_fw_stats, ptr %stats, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %prev.i132 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %peers_extd, ptr %prev.i132, align 4
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 82
  call void @_raw_spin_lock_bh(ptr noundef %data_lock) #16
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 41, i32 11
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %pull_fw_stats.i = getelementptr inbounds %struct.wmi_ops, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %pull_fw_stats.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pull_fw_stats.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %ath10k_wmi_pull_fw_stats.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

ath10k_wmi_pull_fw_stats.exit:                    ; preds = %entry
  %call.i = call i32 %12(ptr noundef %ar, ptr noundef %skb, ptr noundef nonnull %stats) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %ath10k_wmi_pull_fw_stats.exit.if.then_crit_edge

ath10k_wmi_pull_fw_stats.exit.if.then_crit_edge:  ; preds = %ath10k_wmi_pull_fw_stats.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %ath10k_wmi_pull_fw_stats.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i236 = phi i32 [ %call.i, %ath10k_wmi_pull_fw_stats.exit.if.then_crit_edge ], [ -95, %entry.if.then_crit_edge ]
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.16, i32 noundef %retval.0.i236)
  br label %free

if.end:                                           ; preds = %ath10k_wmi_pull_fw_stats.exit
  %dev_flags.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 66
  %13 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %dev_flags.i, align 4
  %15 = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i133 = icmp eq i32 %15, 0
  br i1 %tobool.not.i133, label %if.end.if.end3_crit_edge, label %land.lhs.true.i

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

land.lhs.true.i:                                  ; preds = %if.end
  %arrayidx.i.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 41, i32 6, i32 2
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.i.i, align 4
  %18 = and i32 %17, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool2.not.i = icmp eq i32 %18, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end3_crit_edge, label %if.then2

land.lhs.true.i.if.end3_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

if.then2:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @ath10k_sta_update_rx_duration(ptr noundef %ar, ptr noundef nonnull %stats) #16
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %land.lhs.true.i.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %fw_stats_done = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 3
  %19 = ptrtoint ptr %fw_stats_done to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fw_stats_done, align 16, !range !696
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool4.not = icmp eq i8 %20, 0
  br i1 %tobool4.not, label %if.end9, label %if.then5

if.then5:                                         ; preds = %if.end3
  %21 = ptrtoint ptr %dev_flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %dev_flags.i, align 4
  %23 = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i137 = icmp eq i32 %23, 0
  br i1 %tobool.not.i137, label %if.then5.if.then7_crit_edge, label %land.lhs.true.i140

if.then5.if.then7_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7

land.lhs.true.i140:                               ; preds = %if.then5
  %arrayidx.i.i138 = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 41, i32 6, i32 2
  %24 = ptrtoint ptr %arrayidx.i.i138 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %arrayidx.i.i138, align 4
  %26 = and i32 %25, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool2.not.i139 = icmp eq i32 %26, 0
  br i1 %tobool2.not.i139, label %land.lhs.true.i140.if.then7_crit_edge, label %land.lhs.true.i140.free_crit_edge

land.lhs.true.i140.free_crit_edge:                ; preds = %land.lhs.true.i140
  call void @__sanitizer_cov_trace_pc() #18
  br label %free

land.lhs.true.i140.if.then7_crit_edge:            ; preds = %land.lhs.true.i140
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7

if.then7:                                         ; preds = %land.lhs.true.i140.if.then7_crit_edge, %if.then5.if.then7_crit_edge
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.17)
  br label %free

if.end9:                                          ; preds = %if.end3
  %fw_stats = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 1
  %peers11 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 1, i32 3
  %call12 = call i32 @ath10k_wmi_fw_stats_num_peers(ptr noundef %peers11) #16
  %vdevs15 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 1, i32 2
  %call16 = call i32 @ath10k_wmi_fw_stats_num_vdevs(ptr noundef %vdevs15) #16
  %pdevs19 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 1, i32 1
  %27 = ptrtoint ptr %pdevs19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %pdevs19, align 4
  %cmp.i.not = icmp eq ptr %28, %pdevs19
  br i1 %cmp.i.not, label %land.rhs, label %if.end9.land.end_crit_edge

if.end9.land.end_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end

land.rhs:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %29 = ptrtoint ptr %pdevs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %pdevs, align 4
  %cmp.i144 = icmp ne ptr %30, %pdevs
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end9.land.end_crit_edge
  %31 = phi i1 [ false, %if.end9.land.end_crit_edge ], [ %cmp.i144, %land.rhs ]
  %32 = ptrtoint ptr %pdevs19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %pdevs19, align 4
  %cmp.i146.not = icmp eq ptr %33, %pdevs19
  br i1 %cmp.i146.not, label %land.end.land.end35_crit_edge, label %land.rhs30

land.end.land.end35_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end35

land.rhs30:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %pdevs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %pdevs, align 4
  %cmp.i148 = icmp ne ptr %35, %pdevs
  br label %land.end35

land.end35:                                       ; preds = %land.rhs30, %land.end.land.end35_crit_edge
  %36 = phi i1 [ false, %land.end.land.end35_crit_edge ], [ %cmp.i148, %land.rhs30 ]
  br i1 %31, label %if.then38, label %land.end35.if.end43_crit_edge

land.end35.if.end43_crit_edge:                    ; preds = %land.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43

if.then38:                                        ; preds = %land.end35
  %37 = ptrtoint ptr %pdevs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %pdevs, align 4
  %cmp.i.not.i = icmp eq ptr %38, %pdevs
  br i1 %cmp.i.not.i, label %if.then38.if.end43_crit_edge, label %if.then.i

if.then38.if.end43_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43

if.then.i:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i150 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 1, i32 1, i32 1
  %39 = ptrtoint ptr %prev.i150 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i150, align 4
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev3.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %38, ptr %40, align 4
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %pdevs19, ptr %42, align 4
  store ptr %42, ptr %prev.i150, align 4
  %46 = ptrtoint ptr %pdevs to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %pdevs, ptr %pdevs, align 4
  store ptr %pdevs, ptr %prev.i, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then.i, %if.then38.if.end43_crit_edge, %land.end35.if.end43_crit_edge
  br i1 %36, label %if.then45, label %if.end43.if.end48_crit_edge

if.end43.if.end48_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  %47 = ptrtoint ptr %fw_stats_done to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %fw_stats_done, align 16
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end43.if.end48_crit_edge
  %48 = ptrtoint ptr %stats to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %stats, align 4, !range !696
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool49.not = icmp eq i8 %49, 0
  br i1 %tobool49.not, label %if.end48.if.end54_crit_edge, label %if.then50

if.end48.if.end54_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end54

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  %50 = ptrtoint ptr %fw_stats to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %fw_stats, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.end48.if.end54_crit_edge
  %51 = ptrtoint ptr %pdevs19 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %pdevs19, align 4
  %cmp.i152.not = icmp eq ptr %52, %pdevs19
  %brmerge = select i1 %cmp.i152.not, i1 true, i1 %36
  br i1 %brmerge, label %if.end54.if.end96_crit_edge, label %if.then64

if.end54.if.end96_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end96

if.then64:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %call12)
  %cmp = icmp ugt i32 %call12, 2047
  br i1 %cmp, label %if.then65, label %if.end72

if.then65:                                        ; preds = %if.then64
  %53 = ptrtoint ptr %peers11 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %peers11, align 4
  %cmp.not18.i = icmp eq ptr %54, %peers11
  br i1 %cmp.not18.i, label %if.then65.ath10k_fw_stats_peers_free.exit_crit_edge, label %if.then65.for.body.i_crit_edge

if.then65.for.body.i_crit_edge:                   ; preds = %if.then65
  br label %for.body.i

if.then65.ath10k_fw_stats_peers_free.exit_crit_edge: ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_fw_stats_peers_free.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.then65.for.body.i_crit_edge
  %i.019.i = phi ptr [ %tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %54, %if.then65.for.body.i_crit_edge ]
  %55 = ptrtoint ptr %i.019.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %tmp.0.i = load ptr, ptr %i.019.i, align 8
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %i.019.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %i.019.i, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i.i, align 4
  %58 = ptrtoint ptr %i.019.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i.019.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev1.i.i.i.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %59, ptr %57, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %62 = ptrtoint ptr %i.019.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 256 to ptr), ptr %i.019.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %i.019.i, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %i.019.i) #16
  %cmp.not.i = icmp eq ptr %tmp.0.i, %peers11
  br i1 %cmp.not.i, label %list_del.exit.i.ath10k_fw_stats_peers_free.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

list_del.exit.i.ath10k_fw_stats_peers_free.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_fw_stats_peers_free.exit

ath10k_fw_stats_peers_free.exit:                  ; preds = %list_del.exit.i.ath10k_fw_stats_peers_free.exit_crit_edge, %if.then65.ath10k_fw_stats_peers_free.exit_crit_edge
  %peers_extd71 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 1, i32 4
  %64 = ptrtoint ptr %peers_extd71 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %peers_extd71, align 4
  %cmp.not18.i154 = icmp eq ptr %65, %peers_extd71
  br i1 %cmp.not18.i154, label %ath10k_fw_stats_peers_free.exit.ath10k_fw_extd_stats_peers_free.exit_crit_edge, label %ath10k_fw_stats_peers_free.exit.for.body.i158_crit_edge

ath10k_fw_stats_peers_free.exit.for.body.i158_crit_edge: ; preds = %ath10k_fw_stats_peers_free.exit
  br label %for.body.i158

ath10k_fw_stats_peers_free.exit.ath10k_fw_extd_stats_peers_free.exit_crit_edge: ; preds = %ath10k_fw_stats_peers_free.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_fw_extd_stats_peers_free.exit

for.body.i158:                                    ; preds = %list_del.exit.i164.for.body.i158_crit_edge, %ath10k_fw_stats_peers_free.exit.for.body.i158_crit_edge
  %i.019.i155 = phi ptr [ %tmp.0.i156, %list_del.exit.i164.for.body.i158_crit_edge ], [ %65, %ath10k_fw_stats_peers_free.exit.for.body.i158_crit_edge ]
  %66 = ptrtoint ptr %i.019.i155 to i32
  call void @__asan_load4_noabort(i32 %66)
  %tmp.0.i156 = load ptr, ptr %i.019.i155, align 8
  %call.i.i.i157 = call zeroext i1 @__list_del_entry_valid(ptr noundef %i.019.i155) #16
  br i1 %call.i.i.i157, label %if.end.i.i.i161, label %for.body.i158.list_del.exit.i164_crit_edge

for.body.i158.list_del.exit.i164_crit_edge:       ; preds = %for.body.i158
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i164

if.end.i.i.i161:                                  ; preds = %for.body.i158
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i159 = getelementptr inbounds %struct.list_head, ptr %i.019.i155, i32 0, i32 1
  %67 = ptrtoint ptr %prev.i.i.i159 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i.i.i159, align 4
  %69 = ptrtoint ptr %i.019.i155 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %i.019.i155, align 4
  %prev1.i.i.i.i160 = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %prev1.i.i.i.i160 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev1.i.i.i.i160, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %70, ptr %68, align 4
  br label %list_del.exit.i164

list_del.exit.i164:                               ; preds = %if.end.i.i.i161, %for.body.i158.list_del.exit.i164_crit_edge
  %73 = ptrtoint ptr %i.019.i155 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr inttoptr (i32 256 to ptr), ptr %i.019.i155, align 4
  %prev.i.i162 = getelementptr inbounds %struct.list_head, ptr %i.019.i155, i32 0, i32 1
  %74 = ptrtoint ptr %prev.i.i162 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i162, align 4
  call void @kfree(ptr noundef %i.019.i155) #16
  %cmp.not.i163 = icmp eq ptr %tmp.0.i156, %peers_extd71
  br i1 %cmp.not.i163, label %list_del.exit.i164.ath10k_fw_extd_stats_peers_free.exit_crit_edge, label %list_del.exit.i164.for.body.i158_crit_edge

list_del.exit.i164.for.body.i158_crit_edge:       ; preds = %list_del.exit.i164
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i158

list_del.exit.i164.ath10k_fw_extd_stats_peers_free.exit_crit_edge: ; preds = %list_del.exit.i164
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_fw_extd_stats_peers_free.exit

ath10k_fw_extd_stats_peers_free.exit:             ; preds = %list_del.exit.i164.ath10k_fw_extd_stats_peers_free.exit_crit_edge, %ath10k_fw_stats_peers_free.exit.ath10k_fw_extd_stats_peers_free.exit_crit_edge
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.18)
  br label %free

if.end72:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call16)
  %cmp73 = icmp ugt i32 %call16, 31
  br i1 %cmp73, label %if.then74, label %if.end78

if.then74:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @ath10k_fw_stats_vdevs_free(ptr noundef %vdevs15)
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.19)
  br label %free

if.end78:                                         ; preds = %if.end72
  %75 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile ptr, ptr %peers, align 4
  %cmp.i165.not = icmp eq ptr %76, %peers
  br i1 %cmp.i165.not, label %if.end78.if.end87_crit_edge, label %if.then82

if.end78.if.end87_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end87

if.then82:                                        ; preds = %if.end78
  %77 = ptrtoint ptr %peers_extd to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile ptr, ptr %peers_extd, align 4
  %cmp.i.not.i167 = icmp eq ptr %78, %peers_extd
  br i1 %cmp.i.not.i167, label %if.then82.if.end87_crit_edge, label %if.then.i171

if.then82.if.end87_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end87

if.then.i171:                                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #18
  %peers_extd86 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 1, i32 4
  %prev.i168 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 1, i32 4, i32 1
  %79 = ptrtoint ptr %prev.i168 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i168, align 4
  %81 = ptrtoint ptr %prev.i132 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %prev.i132, align 4
  %prev3.i.i170 = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %83 = ptrtoint ptr %prev3.i.i170 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev3.i.i170, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %78, ptr %80, align 4
  %85 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %peers_extd86, ptr %82, align 4
  store ptr %82, ptr %prev.i168, align 4
  %86 = ptrtoint ptr %peers_extd to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %peers_extd, ptr %peers_extd, align 4
  store ptr %peers_extd, ptr %prev.i132, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then.i171, %if.then82.if.end87_crit_edge, %if.end78.if.end87_crit_edge
  %87 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile ptr, ptr %peers, align 4
  %cmp.i.not.i174 = icmp eq ptr %88, %peers
  br i1 %cmp.i.not.i174, label %if.end87.list_splice_tail_init.exit180_crit_edge, label %if.then.i178

if.end87.list_splice_tail_init.exit180_crit_edge: ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_splice_tail_init.exit180

if.then.i178:                                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i175 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 1, i32 3, i32 1
  %89 = ptrtoint ptr %prev.i175 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %prev.i175, align 4
  %91 = ptrtoint ptr %prev.i131 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %prev.i131, align 4
  %prev3.i.i177 = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %93 = ptrtoint ptr %prev3.i.i177 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %prev3.i.i177, align 4
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %88, ptr %90, align 4
  %95 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %peers11, ptr %92, align 4
  store ptr %92, ptr %prev.i175, align 4
  %96 = ptrtoint ptr %peers to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %peers, ptr %peers, align 4
  store ptr %peers, ptr %prev.i131, align 4
  br label %list_splice_tail_init.exit180

list_splice_tail_init.exit180:                    ; preds = %if.then.i178, %if.end87.list_splice_tail_init.exit180_crit_edge
  %97 = ptrtoint ptr %vdevs to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile ptr, ptr %vdevs, align 4
  %cmp.i.not.i181 = icmp eq ptr %98, %vdevs
  br i1 %cmp.i.not.i181, label %list_splice_tail_init.exit180.if.end96_crit_edge, label %if.then.i185

list_splice_tail_init.exit180.if.end96_crit_edge: ; preds = %list_splice_tail_init.exit180
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end96

if.then.i185:                                     ; preds = %list_splice_tail_init.exit180
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i182 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 1, i32 2, i32 1
  %99 = ptrtoint ptr %prev.i182 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %prev.i182, align 4
  %101 = ptrtoint ptr %prev.i130 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %prev.i130, align 4
  %prev3.i.i184 = getelementptr inbounds %struct.list_head, ptr %98, i32 0, i32 1
  %103 = ptrtoint ptr %prev3.i.i184 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %100, ptr %prev3.i.i184, align 4
  %104 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %98, ptr %100, align 4
  %105 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %vdevs15, ptr %102, align 4
  store ptr %102, ptr %prev.i182, align 4
  %106 = ptrtoint ptr %vdevs to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %vdevs, ptr %vdevs, align 4
  store ptr %vdevs, ptr %prev.i130, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then.i185, %list_splice_tail_init.exit180.if.end96_crit_edge, %if.end54.if.end96_crit_edge
  %fw_stats_complete = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 2
  call void @complete(ptr noundef %fw_stats_complete) #16
  br label %free

free:                                             ; preds = %if.end96, %if.then74, %ath10k_fw_extd_stats_peers_free.exit, %if.then7, %land.lhs.true.i140.free_crit_edge, %if.then
  %107 = ptrtoint ptr %pdevs to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pdevs, align 4
  %cmp.not18.i188 = icmp eq ptr %108, %pdevs
  br i1 %cmp.not18.i188, label %free.ath10k_fw_stats_pdevs_free.exit_crit_edge, label %free.for.body.i192_crit_edge

free.for.body.i192_crit_edge:                     ; preds = %free
  br label %for.body.i192

free.ath10k_fw_stats_pdevs_free.exit_crit_edge:   ; preds = %free
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_fw_stats_pdevs_free.exit

for.body.i192:                                    ; preds = %list_del.exit.i198.for.body.i192_crit_edge, %free.for.body.i192_crit_edge
  %i.019.i189 = phi ptr [ %tmp.0.i190, %list_del.exit.i198.for.body.i192_crit_edge ], [ %108, %free.for.body.i192_crit_edge ]
  %109 = ptrtoint ptr %i.019.i189 to i32
  call void @__asan_load4_noabort(i32 %109)
  %tmp.0.i190 = load ptr, ptr %i.019.i189, align 4
  %call.i.i.i191 = call zeroext i1 @__list_del_entry_valid(ptr noundef %i.019.i189) #16
  br i1 %call.i.i.i191, label %if.end.i.i.i195, label %for.body.i192.list_del.exit.i198_crit_edge

for.body.i192.list_del.exit.i198_crit_edge:       ; preds = %for.body.i192
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i198

if.end.i.i.i195:                                  ; preds = %for.body.i192
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i193 = getelementptr inbounds %struct.list_head, ptr %i.019.i189, i32 0, i32 1
  %110 = ptrtoint ptr %prev.i.i.i193 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %prev.i.i.i193, align 4
  %112 = ptrtoint ptr %i.019.i189 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %i.019.i189, align 4
  %prev1.i.i.i.i194 = getelementptr inbounds %struct.list_head, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %prev1.i.i.i.i194 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %111, ptr %prev1.i.i.i.i194, align 4
  %115 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %113, ptr %111, align 4
  br label %list_del.exit.i198

list_del.exit.i198:                               ; preds = %if.end.i.i.i195, %for.body.i192.list_del.exit.i198_crit_edge
  %116 = ptrtoint ptr %i.019.i189 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr inttoptr (i32 256 to ptr), ptr %i.019.i189, align 4
  %prev.i.i196 = getelementptr inbounds %struct.list_head, ptr %i.019.i189, i32 0, i32 1
  %117 = ptrtoint ptr %prev.i.i196 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i196, align 4
  call void @kfree(ptr noundef %i.019.i189) #16
  %cmp.not.i197 = icmp eq ptr %tmp.0.i190, %pdevs
  br i1 %cmp.not.i197, label %list_del.exit.i198.ath10k_fw_stats_pdevs_free.exit_crit_edge, label %list_del.exit.i198.for.body.i192_crit_edge

list_del.exit.i198.for.body.i192_crit_edge:       ; preds = %list_del.exit.i198
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i192

list_del.exit.i198.ath10k_fw_stats_pdevs_free.exit_crit_edge: ; preds = %list_del.exit.i198
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_fw_stats_pdevs_free.exit

ath10k_fw_stats_pdevs_free.exit:                  ; preds = %list_del.exit.i198.ath10k_fw_stats_pdevs_free.exit_crit_edge, %free.ath10k_fw_stats_pdevs_free.exit_crit_edge
  %118 = ptrtoint ptr %vdevs to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %vdevs, align 4
  %cmp.not18.i199 = icmp eq ptr %119, %vdevs
  br i1 %cmp.not18.i199, label %ath10k_fw_stats_pdevs_free.exit.ath10k_fw_stats_vdevs_free.exit_crit_edge, label %ath10k_fw_stats_pdevs_free.exit.for.body.i203_crit_edge

ath10k_fw_stats_pdevs_free.exit.for.body.i203_crit_edge: ; preds = %ath10k_fw_stats_pdevs_free.exit
  br label %for.body.i203

ath10k_fw_stats_pdevs_free.exit.ath10k_fw_stats_vdevs_free.exit_crit_edge: ; preds = %ath10k_fw_stats_pdevs_free.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_fw_stats_vdevs_free.exit

for.body.i203:                                    ; preds = %list_del.exit.i209.for.body.i203_crit_edge, %ath10k_fw_stats_pdevs_free.exit.for.body.i203_crit_edge
  %i.019.i200 = phi ptr [ %tmp.0.i201, %list_del.exit.i209.for.body.i203_crit_edge ], [ %119, %ath10k_fw_stats_pdevs_free.exit.for.body.i203_crit_edge ]
  %120 = ptrtoint ptr %i.019.i200 to i32
  call void @__asan_load4_noabort(i32 %120)
  %tmp.0.i201 = load ptr, ptr %i.019.i200, align 4
  %call.i.i.i202 = call zeroext i1 @__list_del_entry_valid(ptr noundef %i.019.i200) #16
  br i1 %call.i.i.i202, label %if.end.i.i.i206, label %for.body.i203.list_del.exit.i209_crit_edge

for.body.i203.list_del.exit.i209_crit_edge:       ; preds = %for.body.i203
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i209

if.end.i.i.i206:                                  ; preds = %for.body.i203
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i204 = getelementptr inbounds %struct.list_head, ptr %i.019.i200, i32 0, i32 1
  %121 = ptrtoint ptr %prev.i.i.i204 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %prev.i.i.i204, align 4
  %123 = ptrtoint ptr %i.019.i200 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %i.019.i200, align 4
  %prev1.i.i.i.i205 = getelementptr inbounds %struct.list_head, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %prev1.i.i.i.i205 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %122, ptr %prev1.i.i.i.i205, align 4
  %126 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %124, ptr %122, align 4
  br label %list_del.exit.i209

list_del.exit.i209:                               ; preds = %if.end.i.i.i206, %for.body.i203.list_del.exit.i209_crit_edge
  %127 = ptrtoint ptr %i.019.i200 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr inttoptr (i32 256 to ptr), ptr %i.019.i200, align 4
  %prev.i.i207 = getelementptr inbounds %struct.list_head, ptr %i.019.i200, i32 0, i32 1
  %128 = ptrtoint ptr %prev.i.i207 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i207, align 4
  call void @kfree(ptr noundef %i.019.i200) #16
  %cmp.not.i208 = icmp eq ptr %tmp.0.i201, %vdevs
  br i1 %cmp.not.i208, label %list_del.exit.i209.ath10k_fw_stats_vdevs_free.exit_crit_edge, label %list_del.exit.i209.for.body.i203_crit_edge

list_del.exit.i209.for.body.i203_crit_edge:       ; preds = %list_del.exit.i209
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i203

list_del.exit.i209.ath10k_fw_stats_vdevs_free.exit_crit_edge: ; preds = %list_del.exit.i209
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_fw_stats_vdevs_free.exit

ath10k_fw_stats_vdevs_free.exit:                  ; preds = %list_del.exit.i209.ath10k_fw_stats_vdevs_free.exit_crit_edge, %ath10k_fw_stats_pdevs_free.exit.ath10k_fw_stats_vdevs_free.exit_crit_edge
  %129 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %peers, align 4
  %cmp.not18.i210 = icmp eq ptr %130, %peers
  br i1 %cmp.not18.i210, label %ath10k_fw_stats_vdevs_free.exit.ath10k_fw_stats_peers_free.exit221_crit_edge, label %ath10k_fw_stats_vdevs_free.exit.for.body.i214_crit_edge

ath10k_fw_stats_vdevs_free.exit.for.body.i214_crit_edge: ; preds = %ath10k_fw_stats_vdevs_free.exit
  br label %for.body.i214

ath10k_fw_stats_vdevs_free.exit.ath10k_fw_stats_peers_free.exit221_crit_edge: ; preds = %ath10k_fw_stats_vdevs_free.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_fw_stats_peers_free.exit221

for.body.i214:                                    ; preds = %list_del.exit.i220.for.body.i214_crit_edge, %ath10k_fw_stats_vdevs_free.exit.for.body.i214_crit_edge
  %i.019.i211 = phi ptr [ %tmp.0.i212, %list_del.exit.i220.for.body.i214_crit_edge ], [ %130, %ath10k_fw_stats_vdevs_free.exit.for.body.i214_crit_edge ]
  %131 = ptrtoint ptr %i.019.i211 to i32
  call void @__asan_load4_noabort(i32 %131)
  %tmp.0.i212 = load ptr, ptr %i.019.i211, align 8
  %call.i.i.i213 = call zeroext i1 @__list_del_entry_valid(ptr noundef %i.019.i211) #16
  br i1 %call.i.i.i213, label %if.end.i.i.i217, label %for.body.i214.list_del.exit.i220_crit_edge

for.body.i214.list_del.exit.i220_crit_edge:       ; preds = %for.body.i214
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i220

if.end.i.i.i217:                                  ; preds = %for.body.i214
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i215 = getelementptr inbounds %struct.list_head, ptr %i.019.i211, i32 0, i32 1
  %132 = ptrtoint ptr %prev.i.i.i215 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %prev.i.i.i215, align 4
  %134 = ptrtoint ptr %i.019.i211 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %i.019.i211, align 4
  %prev1.i.i.i.i216 = getelementptr inbounds %struct.list_head, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %prev1.i.i.i.i216 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %133, ptr %prev1.i.i.i.i216, align 4
  %137 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %137)
  store volatile ptr %135, ptr %133, align 4
  br label %list_del.exit.i220

list_del.exit.i220:                               ; preds = %if.end.i.i.i217, %for.body.i214.list_del.exit.i220_crit_edge
  %138 = ptrtoint ptr %i.019.i211 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr inttoptr (i32 256 to ptr), ptr %i.019.i211, align 4
  %prev.i.i218 = getelementptr inbounds %struct.list_head, ptr %i.019.i211, i32 0, i32 1
  %139 = ptrtoint ptr %prev.i.i218 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i218, align 4
  call void @kfree(ptr noundef %i.019.i211) #16
  %cmp.not.i219 = icmp eq ptr %tmp.0.i212, %peers
  br i1 %cmp.not.i219, label %list_del.exit.i220.ath10k_fw_stats_peers_free.exit221_crit_edge, label %list_del.exit.i220.for.body.i214_crit_edge

list_del.exit.i220.for.body.i214_crit_edge:       ; preds = %list_del.exit.i220
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i214

list_del.exit.i220.ath10k_fw_stats_peers_free.exit221_crit_edge: ; preds = %list_del.exit.i220
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_fw_stats_peers_free.exit221

ath10k_fw_stats_peers_free.exit221:               ; preds = %list_del.exit.i220.ath10k_fw_stats_peers_free.exit221_crit_edge, %ath10k_fw_stats_vdevs_free.exit.ath10k_fw_stats_peers_free.exit221_crit_edge
  %140 = ptrtoint ptr %peers_extd to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %peers_extd, align 4
  %cmp.not18.i222 = icmp eq ptr %141, %peers_extd
  br i1 %cmp.not18.i222, label %ath10k_fw_stats_peers_free.exit221.ath10k_fw_extd_stats_peers_free.exit233_crit_edge, label %ath10k_fw_stats_peers_free.exit221.for.body.i226_crit_edge

ath10k_fw_stats_peers_free.exit221.for.body.i226_crit_edge: ; preds = %ath10k_fw_stats_peers_free.exit221
  br label %for.body.i226

ath10k_fw_stats_peers_free.exit221.ath10k_fw_extd_stats_peers_free.exit233_crit_edge: ; preds = %ath10k_fw_stats_peers_free.exit221
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_fw_extd_stats_peers_free.exit233

for.body.i226:                                    ; preds = %list_del.exit.i232.for.body.i226_crit_edge, %ath10k_fw_stats_peers_free.exit221.for.body.i226_crit_edge
  %i.019.i223 = phi ptr [ %tmp.0.i224, %list_del.exit.i232.for.body.i226_crit_edge ], [ %141, %ath10k_fw_stats_peers_free.exit221.for.body.i226_crit_edge ]
  %142 = ptrtoint ptr %i.019.i223 to i32
  call void @__asan_load4_noabort(i32 %142)
  %tmp.0.i224 = load ptr, ptr %i.019.i223, align 8
  %call.i.i.i225 = call zeroext i1 @__list_del_entry_valid(ptr noundef %i.019.i223) #16
  br i1 %call.i.i.i225, label %if.end.i.i.i229, label %for.body.i226.list_del.exit.i232_crit_edge

for.body.i226.list_del.exit.i232_crit_edge:       ; preds = %for.body.i226
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i232

if.end.i.i.i229:                                  ; preds = %for.body.i226
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i227 = getelementptr inbounds %struct.list_head, ptr %i.019.i223, i32 0, i32 1
  %143 = ptrtoint ptr %prev.i.i.i227 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %prev.i.i.i227, align 4
  %145 = ptrtoint ptr %i.019.i223 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %i.019.i223, align 4
  %prev1.i.i.i.i228 = getelementptr inbounds %struct.list_head, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %prev1.i.i.i.i228 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %144, ptr %prev1.i.i.i.i228, align 4
  %148 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %148)
  store volatile ptr %146, ptr %144, align 4
  br label %list_del.exit.i232

list_del.exit.i232:                               ; preds = %if.end.i.i.i229, %for.body.i226.list_del.exit.i232_crit_edge
  %149 = ptrtoint ptr %i.019.i223 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr inttoptr (i32 256 to ptr), ptr %i.019.i223, align 4
  %prev.i.i230 = getelementptr inbounds %struct.list_head, ptr %i.019.i223, i32 0, i32 1
  %150 = ptrtoint ptr %prev.i.i230 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i230, align 4
  call void @kfree(ptr noundef %i.019.i223) #16
  %cmp.not.i231 = icmp eq ptr %tmp.0.i224, %peers_extd
  br i1 %cmp.not.i231, label %list_del.exit.i232.ath10k_fw_extd_stats_peers_free.exit233_crit_edge, label %list_del.exit.i232.for.body.i226_crit_edge

list_del.exit.i232.for.body.i226_crit_edge:       ; preds = %list_del.exit.i232
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i226

list_del.exit.i232.ath10k_fw_extd_stats_peers_free.exit233_crit_edge: ; preds = %list_del.exit.i232
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_fw_extd_stats_peers_free.exit233

ath10k_fw_extd_stats_peers_free.exit233:          ; preds = %list_del.exit.i232.ath10k_fw_extd_stats_peers_free.exit233_crit_edge, %ath10k_fw_stats_peers_free.exit221.ath10k_fw_extd_stats_peers_free.exit233_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %stats) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_sta_update_rx_duration(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_wmi_fw_stats_num_peers(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_wmi_fw_stats_num_vdevs(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_fw_stats_vdevs_free(ptr noundef readonly %head) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  %cmp.not18 = icmp eq ptr %1, %head
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.019 = phi ptr [ %tmp.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %i.019 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %i.019, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %i.019) #16
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %i.019, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %i.019 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i.019, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %i.019 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %i.019, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %i.019, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %i.019) #16
  %cmp.not = icmp eq ptr %tmp.0, %head
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_debug_fw_stats_request(ptr noundef %ar) local_unnamed_addr #0 align 64 {
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
  %dep_map = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 80, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !701

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 357, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %1, 10
  tail call fastcc void @ath10k_debug_fw_stats_reset(ptr noundef %ar)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub64 = sub i32 %add, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub64)
  %cmp2565 = icmp slt i32 %sub64, 0
  br i1 %cmp2565, label %if.end.cleanup_crit_edge, label %if.end27.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end27.lr.ph:                                   ; preds = %if.end
  %fw_stats_complete = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 2
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 41, i32 11
  %fw_stats_req_mask = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 14
  %cmd.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 41, i32 7
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 82
  %fw_stats_done = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 3
  br label %if.end27

if.end27:                                         ; preds = %if.end42.if.end27_crit_edge, %if.end27.lr.ph
  %3 = ptrtoint ptr %fw_stats_complete to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %fw_stats_complete, align 4
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %gen_request_stats.i = getelementptr inbounds %struct.wmi_ops, ptr %5, i32 0, i32 53
  %6 = ptrtoint ptr %gen_request_stats.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gen_request_stats.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end27.if.then30_crit_edge, label %if.end.i

if.end27.if.then30_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then30

if.end.i:                                         ; preds = %if.end27
  %8 = ptrtoint ptr %fw_stats_req_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fw_stats_req_mask, align 32
  %call.i59 = tail call ptr %7(ptr noundef %ar, i32 noundef %9) #16
  %cmp.i.i = icmp ugt ptr %call.i59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %call.i59 to i32
  br label %ath10k_wmi_request_stats.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cmd.i, align 4
  %request_stats_cmdid.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %12, i32 0, i32 89
  %13 = ptrtoint ptr %request_stats_cmdid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %request_stats_cmdid.i, align 4
  %call9.i = tail call i32 @ath10k_wmi_cmd_send(ptr noundef %ar, ptr noundef %call.i59, i32 noundef %14) #16
  br label %ath10k_wmi_request_stats.exit

ath10k_wmi_request_stats.exit:                    ; preds = %if.end7.i, %if.then5.i
  %retval.0.i = phi i32 [ %10, %if.then5.i ], [ %call9.i, %if.end7.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool29.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool29.not, label %if.end31, label %ath10k_wmi_request_stats.exit.if.then30_crit_edge

ath10k_wmi_request_stats.exit.if.then30_crit_edge: ; preds = %ath10k_wmi_request_stats.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then30

if.then30:                                        ; preds = %ath10k_wmi_request_stats.exit.if.then30_crit_edge, %if.end27.if.then30_crit_edge
  %retval.0.i62 = phi i32 [ %retval.0.i, %ath10k_wmi_request_stats.exit.if.then30_crit_edge ], [ -95, %if.end27.if.then30_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.20, i32 noundef %retval.0.i62)
  br label %cleanup

if.end31:                                         ; preds = %ath10k_wmi_request_stats.exit
  %call34 = tail call i32 @wait_for_completion_timeout(ptr noundef %fw_stats_complete, i32 noundef 100) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end31.cleanup_crit_edge, label %if.end37

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end37:                                         ; preds = %if.end31
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #16
  %15 = ptrtoint ptr %fw_stats_done to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fw_stats_done, align 16, !range !696
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool39.not = icmp eq i8 %16, 0
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #16
  br i1 %tobool39.not, label %if.end42, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end42:                                         ; preds = %if.end37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %17
  %cmp25 = icmp slt i32 %sub, 0
  br i1 %cmp25, label %if.end42.cleanup_crit_edge, label %if.end42.if.end27_crit_edge

if.end42.if.end27_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %if.end42.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.then30, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i62, %if.then30 ], [ -110, %if.end.cleanup_crit_edge ], [ 0, %if.end37.cleanup_crit_edge ], [ -110, %if.end31.cleanup_crit_edge ], [ -110, %if.end42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_debug_fw_stats_reset(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #16
  %fw_stats_done = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 3
  %0 = ptrtoint ptr %fw_stats_done to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %fw_stats_done, align 16
  %fw_stats = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 1
  %1 = ptrtoint ptr %fw_stats to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %fw_stats, align 4
  %pdevs = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 1, i32 1
  %2 = ptrtoint ptr %pdevs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdevs, align 4
  %cmp.not18.i = icmp eq ptr %3, %pdevs
  br i1 %cmp.not18.i, label %entry.ath10k_fw_stats_pdevs_free.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.ath10k_fw_stats_pdevs_free.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_fw_stats_pdevs_free.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.019.i = phi ptr [ %tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %i.019.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.0.i = load ptr, ptr %i.019.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %i.019.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %i.019.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %i.019.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i.019.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %i.019.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %i.019.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %i.019.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %i.019.i) #16
  %cmp.not.i = icmp eq ptr %tmp.0.i, %pdevs
  br i1 %cmp.not.i, label %list_del.exit.i.ath10k_fw_stats_pdevs_free.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

list_del.exit.i.ath10k_fw_stats_pdevs_free.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_fw_stats_pdevs_free.exit

ath10k_fw_stats_pdevs_free.exit:                  ; preds = %list_del.exit.i.ath10k_fw_stats_pdevs_free.exit_crit_edge, %entry.ath10k_fw_stats_pdevs_free.exit_crit_edge
  %vdevs = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 1, i32 2
  %13 = ptrtoint ptr %vdevs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vdevs, align 4
  %cmp.not18.i18 = icmp eq ptr %14, %vdevs
  br i1 %cmp.not18.i18, label %ath10k_fw_stats_pdevs_free.exit.ath10k_fw_stats_vdevs_free.exit_crit_edge, label %ath10k_fw_stats_pdevs_free.exit.for.body.i22_crit_edge

ath10k_fw_stats_pdevs_free.exit.for.body.i22_crit_edge: ; preds = %ath10k_fw_stats_pdevs_free.exit
  br label %for.body.i22

ath10k_fw_stats_pdevs_free.exit.ath10k_fw_stats_vdevs_free.exit_crit_edge: ; preds = %ath10k_fw_stats_pdevs_free.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_fw_stats_vdevs_free.exit

for.body.i22:                                     ; preds = %list_del.exit.i28.for.body.i22_crit_edge, %ath10k_fw_stats_pdevs_free.exit.for.body.i22_crit_edge
  %i.019.i19 = phi ptr [ %tmp.0.i20, %list_del.exit.i28.for.body.i22_crit_edge ], [ %14, %ath10k_fw_stats_pdevs_free.exit.for.body.i22_crit_edge ]
  %15 = ptrtoint ptr %i.019.i19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %tmp.0.i20 = load ptr, ptr %i.019.i19, align 4
  %call.i.i.i21 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %i.019.i19) #16
  br i1 %call.i.i.i21, label %if.end.i.i.i25, label %for.body.i22.list_del.exit.i28_crit_edge

for.body.i22.list_del.exit.i28_crit_edge:         ; preds = %for.body.i22
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i28

if.end.i.i.i25:                                   ; preds = %for.body.i22
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i23 = getelementptr inbounds %struct.list_head, ptr %i.019.i19, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i23, align 4
  %18 = ptrtoint ptr %i.019.i19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i.019.i19, align 4
  %prev1.i.i.i.i24 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i24 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i24, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit.i28

list_del.exit.i28:                                ; preds = %if.end.i.i.i25, %for.body.i22.list_del.exit.i28_crit_edge
  %22 = ptrtoint ptr %i.019.i19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %i.019.i19, align 4
  %prev.i.i26 = getelementptr inbounds %struct.list_head, ptr %i.019.i19, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i26, align 4
  tail call void @kfree(ptr noundef %i.019.i19) #16
  %cmp.not.i27 = icmp eq ptr %tmp.0.i20, %vdevs
  br i1 %cmp.not.i27, label %list_del.exit.i28.ath10k_fw_stats_vdevs_free.exit_crit_edge, label %list_del.exit.i28.for.body.i22_crit_edge

list_del.exit.i28.for.body.i22_crit_edge:         ; preds = %list_del.exit.i28
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i22

list_del.exit.i28.ath10k_fw_stats_vdevs_free.exit_crit_edge: ; preds = %list_del.exit.i28
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_fw_stats_vdevs_free.exit

ath10k_fw_stats_vdevs_free.exit:                  ; preds = %list_del.exit.i28.ath10k_fw_stats_vdevs_free.exit_crit_edge, %ath10k_fw_stats_pdevs_free.exit.ath10k_fw_stats_vdevs_free.exit_crit_edge
  %peers = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 1, i32 3
  %24 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %peers, align 4
  %cmp.not18.i29 = icmp eq ptr %25, %peers
  br i1 %cmp.not18.i29, label %ath10k_fw_stats_vdevs_free.exit.ath10k_fw_stats_peers_free.exit_crit_edge, label %ath10k_fw_stats_vdevs_free.exit.for.body.i33_crit_edge

ath10k_fw_stats_vdevs_free.exit.for.body.i33_crit_edge: ; preds = %ath10k_fw_stats_vdevs_free.exit
  br label %for.body.i33

ath10k_fw_stats_vdevs_free.exit.ath10k_fw_stats_peers_free.exit_crit_edge: ; preds = %ath10k_fw_stats_vdevs_free.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_fw_stats_peers_free.exit

for.body.i33:                                     ; preds = %list_del.exit.i39.for.body.i33_crit_edge, %ath10k_fw_stats_vdevs_free.exit.for.body.i33_crit_edge
  %i.019.i30 = phi ptr [ %tmp.0.i31, %list_del.exit.i39.for.body.i33_crit_edge ], [ %25, %ath10k_fw_stats_vdevs_free.exit.for.body.i33_crit_edge ]
  %26 = ptrtoint ptr %i.019.i30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %tmp.0.i31 = load ptr, ptr %i.019.i30, align 8
  %call.i.i.i32 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %i.019.i30) #16
  br i1 %call.i.i.i32, label %if.end.i.i.i36, label %for.body.i33.list_del.exit.i39_crit_edge

for.body.i33.list_del.exit.i39_crit_edge:         ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i39

if.end.i.i.i36:                                   ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i34 = getelementptr inbounds %struct.list_head, ptr %i.019.i30, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i34, align 4
  %29 = ptrtoint ptr %i.019.i30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i.019.i30, align 4
  %prev1.i.i.i.i35 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i35, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit.i39

list_del.exit.i39:                                ; preds = %if.end.i.i.i36, %for.body.i33.list_del.exit.i39_crit_edge
  %33 = ptrtoint ptr %i.019.i30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %i.019.i30, align 4
  %prev.i.i37 = getelementptr inbounds %struct.list_head, ptr %i.019.i30, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i37 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i37, align 4
  tail call void @kfree(ptr noundef %i.019.i30) #16
  %cmp.not.i38 = icmp eq ptr %tmp.0.i31, %peers
  br i1 %cmp.not.i38, label %list_del.exit.i39.ath10k_fw_stats_peers_free.exit_crit_edge, label %list_del.exit.i39.for.body.i33_crit_edge

list_del.exit.i39.for.body.i33_crit_edge:         ; preds = %list_del.exit.i39
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i33

list_del.exit.i39.ath10k_fw_stats_peers_free.exit_crit_edge: ; preds = %list_del.exit.i39
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_fw_stats_peers_free.exit

ath10k_fw_stats_peers_free.exit:                  ; preds = %list_del.exit.i39.ath10k_fw_stats_peers_free.exit_crit_edge, %ath10k_fw_stats_vdevs_free.exit.ath10k_fw_stats_peers_free.exit_crit_edge
  %peers_extd = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 1, i32 4
  %35 = ptrtoint ptr %peers_extd to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %peers_extd, align 4
  %cmp.not18.i40 = icmp eq ptr %36, %peers_extd
  br i1 %cmp.not18.i40, label %ath10k_fw_stats_peers_free.exit.ath10k_fw_extd_stats_peers_free.exit_crit_edge, label %ath10k_fw_stats_peers_free.exit.for.body.i44_crit_edge

ath10k_fw_stats_peers_free.exit.for.body.i44_crit_edge: ; preds = %ath10k_fw_stats_peers_free.exit
  br label %for.body.i44

ath10k_fw_stats_peers_free.exit.ath10k_fw_extd_stats_peers_free.exit_crit_edge: ; preds = %ath10k_fw_stats_peers_free.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_fw_extd_stats_peers_free.exit

for.body.i44:                                     ; preds = %list_del.exit.i50.for.body.i44_crit_edge, %ath10k_fw_stats_peers_free.exit.for.body.i44_crit_edge
  %i.019.i41 = phi ptr [ %tmp.0.i42, %list_del.exit.i50.for.body.i44_crit_edge ], [ %36, %ath10k_fw_stats_peers_free.exit.for.body.i44_crit_edge ]
  %37 = ptrtoint ptr %i.019.i41 to i32
  call void @__asan_load4_noabort(i32 %37)
  %tmp.0.i42 = load ptr, ptr %i.019.i41, align 8
  %call.i.i.i43 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %i.019.i41) #16
  br i1 %call.i.i.i43, label %if.end.i.i.i47, label %for.body.i44.list_del.exit.i50_crit_edge

for.body.i44.list_del.exit.i50_crit_edge:         ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i50

if.end.i.i.i47:                                   ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i45 = getelementptr inbounds %struct.list_head, ptr %i.019.i41, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i.i45, align 4
  %40 = ptrtoint ptr %i.019.i41 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i.019.i41, align 4
  %prev1.i.i.i.i46 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i.i46 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i.i46, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del.exit.i50

list_del.exit.i50:                                ; preds = %if.end.i.i.i47, %for.body.i44.list_del.exit.i50_crit_edge
  %44 = ptrtoint ptr %i.019.i41 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 256 to ptr), ptr %i.019.i41, align 4
  %prev.i.i48 = getelementptr inbounds %struct.list_head, ptr %i.019.i41, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i48 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i48, align 4
  tail call void @kfree(ptr noundef %i.019.i41) #16
  %cmp.not.i49 = icmp eq ptr %tmp.0.i42, %peers_extd
  br i1 %cmp.not.i49, label %list_del.exit.i50.ath10k_fw_extd_stats_peers_free.exit_crit_edge, label %list_del.exit.i50.for.body.i44_crit_edge

list_del.exit.i50.for.body.i44_crit_edge:         ; preds = %list_del.exit.i50
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i44

list_del.exit.i50.ath10k_fw_extd_stats_peers_free.exit_crit_edge: ; preds = %list_del.exit.i50
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_fw_extd_stats_peers_free.exit

ath10k_fw_extd_stats_peers_free.exit:             ; preds = %list_del.exit.i50.ath10k_fw_extd_stats_peers_free.exit_crit_edge, %ath10k_fw_stats_peers_free.exit.ath10k_fw_extd_stats_peers_free.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath10k_debug_get_et_strings(ptr nocapture noundef readnone %hw, ptr nocapture noundef readnone %vif, i32 noundef %sset, ptr nocapture noundef writeonly %data) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cmp = icmp eq i32 %sset, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = call ptr @memcpy(ptr %data, ptr @ath10k_gstrings_stats, i32 1504)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ath10k_debug_get_et_sset_count(ptr nocapture noundef readnone %hw, ptr nocapture noundef readnone %vif, i32 noundef %sset) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cmp = icmp eq i32 %sset, 1
  %. = select i1 %cmp, i32 47, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_debug_get_et_stats(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, ptr nocapture noundef readnone %stats, ptr noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %state = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end2

if.then:                                          ; preds = %entry
  %call = tail call i32 @ath10k_debug_fw_stats_request(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.if.end2_crit_edge, label %if.then1

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end2

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %call)
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %pdevs = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 1, i32 1
  %4 = ptrtoint ptr %pdevs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %pdevs, align 4
  %cmp4.not = icmp eq ptr %5, %pdevs
  %spec.select = select i1 %cmp4.not, ptr null, ptr %5
  %tobool6.not = icmp eq ptr %spec.select, null
  %spec.store.select = select i1 %tobool6.not, ptr @ath10k_debug_get_et_stats.zero_stats, ptr %spec.select
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #16
  %hw_reaped = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 22
  %6 = ptrtoint ptr %hw_reaped to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_reaped, align 4
  %conv = sext i32 %7 to i64
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %data, align 8
  %arrayidx10 = getelementptr i64, ptr %data, i32 1
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %arrayidx10, align 8
  %htt_mpdus = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 54
  %10 = ptrtoint ptr %htt_mpdus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %htt_mpdus, align 4
  %conv11 = sext i32 %11 to i64
  %arrayidx13 = getelementptr i64, ptr %data, i32 2
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv11, ptr %arrayidx13, align 8
  %arrayidx15 = getelementptr i64, ptr %data, i32 3
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %arrayidx15, align 8
  %ch_noise_floor = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 1
  %14 = ptrtoint ptr %ch_noise_floor to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ch_noise_floor, align 4
  %conv16 = sext i32 %15 to i64
  %arrayidx18 = getelementptr i64, ptr %data, i32 4
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv16, ptr %arrayidx18, align 8
  %cycle_count = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 5
  %17 = ptrtoint ptr %cycle_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cycle_count, align 4
  %conv19 = zext i32 %18 to i64
  %arrayidx21 = getelementptr i64, ptr %data, i32 5
  %19 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv19, ptr %arrayidx21, align 8
  %phy_err_count = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 6
  %20 = ptrtoint ptr %phy_err_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phy_err_count, align 4
  %conv22 = zext i32 %21 to i64
  %arrayidx24 = getelementptr i64, ptr %data, i32 6
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv22, ptr %arrayidx24, align 8
  %rts_bad = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 9
  %23 = ptrtoint ptr %rts_bad to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rts_bad, align 4
  %conv25 = zext i32 %24 to i64
  %arrayidx27 = getelementptr i64, ptr %data, i32 7
  %25 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv25, ptr %arrayidx27, align 8
  %rts_good = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 10
  %26 = ptrtoint ptr %rts_good to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rts_good, align 4
  %conv28 = zext i32 %27 to i64
  %arrayidx30 = getelementptr i64, ptr %data, i32 8
  %28 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv28, ptr %arrayidx30, align 8
  %chan_tx_power = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 7
  %29 = ptrtoint ptr %chan_tx_power to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chan_tx_power, align 4
  %conv31 = zext i32 %30 to i64
  %arrayidx33 = getelementptr i64, ptr %data, i32 9
  %31 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv31, ptr %arrayidx33, align 8
  %fcs_bad = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 11
  %32 = ptrtoint ptr %fcs_bad to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fcs_bad, align 4
  %conv34 = zext i32 %33 to i64
  %arrayidx36 = getelementptr i64, ptr %data, i32 10
  %34 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv34, ptr %arrayidx36, align 8
  %stats37 = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 120
  %35 = ptrtoint ptr %stats37 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %stats37, align 4
  %conv38 = zext i32 %36 to i64
  %arrayidx40 = getelementptr i64, ptr %data, i32 11
  %37 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv38, ptr %arrayidx40, align 8
  %no_beacons = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 12
  %38 = ptrtoint ptr %no_beacons to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %no_beacons, align 4
  %conv41 = zext i32 %39 to i64
  %arrayidx43 = getelementptr i64, ptr %data, i32 12
  %40 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv41, ptr %arrayidx43, align 8
  %mpdu_enqued = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 17
  %41 = ptrtoint ptr %mpdu_enqued to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mpdu_enqued, align 4
  %conv44 = sext i32 %42 to i64
  %arrayidx46 = getelementptr i64, ptr %data, i32 13
  %43 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %conv44, ptr %arrayidx46, align 8
  %msdu_enqued = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 16
  %44 = ptrtoint ptr %msdu_enqued to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %msdu_enqued, align 4
  %conv47 = sext i32 %45 to i64
  %arrayidx49 = getelementptr i64, ptr %data, i32 14
  %46 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv47, ptr %arrayidx49, align 8
  %wmm_drop = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 18
  %47 = ptrtoint ptr %wmm_drop to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %wmm_drop, align 4
  %conv50 = sext i32 %48 to i64
  %arrayidx52 = getelementptr i64, ptr %data, i32 15
  %49 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv50, ptr %arrayidx52, align 8
  %local_enqued = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 19
  %50 = ptrtoint ptr %local_enqued to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %local_enqued, align 4
  %conv53 = sext i32 %51 to i64
  %arrayidx55 = getelementptr i64, ptr %data, i32 16
  %52 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %conv53, ptr %arrayidx55, align 8
  %local_freed = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 20
  %53 = ptrtoint ptr %local_freed to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %local_freed, align 4
  %conv56 = sext i32 %54 to i64
  %arrayidx58 = getelementptr i64, ptr %data, i32 17
  %55 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv56, ptr %arrayidx58, align 8
  %hw_queued = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 21
  %56 = ptrtoint ptr %hw_queued to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hw_queued, align 4
  %conv59 = sext i32 %57 to i64
  %arrayidx61 = getelementptr i64, ptr %data, i32 18
  %58 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %conv59, ptr %arrayidx61, align 8
  %59 = load i32, ptr %hw_reaped, align 4
  %conv63 = sext i32 %59 to i64
  %arrayidx65 = getelementptr i64, ptr %data, i32 19
  %60 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %conv63, ptr %arrayidx65, align 8
  %underrun = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 23
  %61 = ptrtoint ptr %underrun to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %underrun, align 4
  %conv66 = sext i32 %62 to i64
  %arrayidx68 = getelementptr i64, ptr %data, i32 20
  %63 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %conv66, ptr %arrayidx68, align 8
  %tx_abort = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 25
  %64 = ptrtoint ptr %tx_abort to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tx_abort, align 4
  %conv69 = sext i32 %65 to i64
  %arrayidx71 = getelementptr i64, ptr %data, i32 21
  %66 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %conv69, ptr %arrayidx71, align 8
  %mpdus_requeued = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 26
  %67 = ptrtoint ptr %mpdus_requeued to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mpdus_requeued, align 4
  %conv72 = sext i32 %68 to i64
  %arrayidx74 = getelementptr i64, ptr %data, i32 22
  %69 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %conv72, ptr %arrayidx74, align 8
  %tx_ko = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 27
  %70 = ptrtoint ptr %tx_ko to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_ko, align 4
  %conv75 = zext i32 %71 to i64
  %arrayidx77 = getelementptr i64, ptr %data, i32 23
  %72 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %conv75, ptr %arrayidx77, align 8
  %data_rc = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 28
  %73 = ptrtoint ptr %data_rc to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %data_rc, align 4
  %conv78 = zext i32 %74 to i64
  %arrayidx80 = getelementptr i64, ptr %data, i32 24
  %75 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %conv78, ptr %arrayidx80, align 8
  %sw_retry_failure = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 30
  %76 = ptrtoint ptr %sw_retry_failure to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sw_retry_failure, align 4
  %conv81 = zext i32 %77 to i64
  %arrayidx83 = getelementptr i64, ptr %data, i32 25
  %78 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %conv81, ptr %arrayidx83, align 8
  %illgl_rate_phy_err = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 31
  %79 = ptrtoint ptr %illgl_rate_phy_err to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %illgl_rate_phy_err, align 4
  %conv84 = zext i32 %80 to i64
  %arrayidx86 = getelementptr i64, ptr %data, i32 26
  %81 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %conv84, ptr %arrayidx86, align 8
  %pdev_cont_xretry = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 32
  %82 = ptrtoint ptr %pdev_cont_xretry to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pdev_cont_xretry, align 4
  %conv87 = zext i32 %83 to i64
  %arrayidx89 = getelementptr i64, ptr %data, i32 27
  %84 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %conv87, ptr %arrayidx89, align 8
  %pdev_tx_timeout = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 33
  %85 = ptrtoint ptr %pdev_tx_timeout to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pdev_tx_timeout, align 4
  %conv90 = zext i32 %86 to i64
  %arrayidx92 = getelementptr i64, ptr %data, i32 28
  %87 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %conv90, ptr %arrayidx92, align 8
  %txop_ovf = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 36
  %88 = ptrtoint ptr %txop_ovf to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %txop_ovf, align 4
  %conv93 = zext i32 %89 to i64
  %arrayidx95 = getelementptr i64, ptr %data, i32 29
  %90 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %conv93, ptr %arrayidx95, align 8
  %pdev_resets = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 34
  %91 = ptrtoint ptr %pdev_resets to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pdev_resets, align 4
  %conv96 = zext i32 %92 to i64
  %arrayidx98 = getelementptr i64, ptr %data, i32 30
  %93 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %conv96, ptr %arrayidx98, align 8
  %mid_ppdu_route_change = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 47
  %94 = ptrtoint ptr %mid_ppdu_route_change to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %mid_ppdu_route_change, align 4
  %conv99 = sext i32 %95 to i64
  %arrayidx101 = getelementptr i64, ptr %data, i32 31
  %96 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %conv99, ptr %arrayidx101, align 8
  %status_rcvd = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 48
  %97 = ptrtoint ptr %status_rcvd to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %status_rcvd, align 4
  %conv102 = sext i32 %98 to i64
  %arrayidx104 = getelementptr i64, ptr %data, i32 32
  %99 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %conv102, ptr %arrayidx104, align 8
  %r0_frags = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 49
  %100 = ptrtoint ptr %r0_frags to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %r0_frags, align 4
  %conv105 = sext i32 %101 to i64
  %arrayidx107 = getelementptr i64, ptr %data, i32 33
  %102 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %conv105, ptr %arrayidx107, align 8
  %r1_frags = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 50
  %103 = ptrtoint ptr %r1_frags to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %r1_frags, align 4
  %conv108 = sext i32 %104 to i64
  %arrayidx110 = getelementptr i64, ptr %data, i32 34
  %105 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %conv108, ptr %arrayidx110, align 8
  %r2_frags = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 51
  %106 = ptrtoint ptr %r2_frags to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %r2_frags, align 4
  %conv111 = sext i32 %107 to i64
  %arrayidx113 = getelementptr i64, ptr %data, i32 35
  %108 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %conv111, ptr %arrayidx113, align 8
  %r3_frags = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 52
  %109 = ptrtoint ptr %r3_frags to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %r3_frags, align 4
  %conv114 = sext i32 %110 to i64
  %arrayidx116 = getelementptr i64, ptr %data, i32 36
  %111 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %conv114, ptr %arrayidx116, align 8
  %htt_msdus = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 53
  %112 = ptrtoint ptr %htt_msdus to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %htt_msdus, align 4
  %conv117 = sext i32 %113 to i64
  %arrayidx119 = getelementptr i64, ptr %data, i32 37
  %114 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %conv117, ptr %arrayidx119, align 8
  %115 = load i32, ptr %htt_mpdus, align 4
  %conv121 = sext i32 %115 to i64
  %arrayidx123 = getelementptr i64, ptr %data, i32 38
  %116 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %conv121, ptr %arrayidx123, align 8
  %loc_msdus = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 55
  %117 = ptrtoint ptr %loc_msdus to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %loc_msdus, align 4
  %conv124 = sext i32 %118 to i64
  %arrayidx126 = getelementptr i64, ptr %data, i32 39
  %119 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %conv124, ptr %arrayidx126, align 8
  %loc_mpdus = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 56
  %120 = ptrtoint ptr %loc_mpdus to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %loc_mpdus, align 4
  %conv127 = sext i32 %121 to i64
  %arrayidx129 = getelementptr i64, ptr %data, i32 40
  %122 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %conv127, ptr %arrayidx129, align 8
  %phy_errs = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 58
  %123 = ptrtoint ptr %phy_errs to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %phy_errs, align 4
  %conv130 = sext i32 %124 to i64
  %arrayidx132 = getelementptr i64, ptr %data, i32 41
  %125 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %conv130, ptr %arrayidx132, align 8
  %phy_err_drop = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 59
  %126 = ptrtoint ptr %phy_err_drop to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %phy_err_drop, align 4
  %conv133 = sext i32 %127 to i64
  %arrayidx135 = getelementptr i64, ptr %data, i32 42
  %128 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %conv133, ptr %arrayidx135, align 8
  %mpdu_errs = getelementptr inbounds %struct.ath10k_fw_stats_pdev, ptr %spec.store.select, i32 0, i32 60
  %129 = ptrtoint ptr %mpdu_errs to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %mpdu_errs, align 4
  %conv136 = sext i32 %130 to i64
  %arrayidx138 = getelementptr i64, ptr %data, i32 43
  %131 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %conv136, ptr %arrayidx138, align 8
  %fw_crash_counter = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 120, i32 1
  %132 = ptrtoint ptr %fw_crash_counter to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %fw_crash_counter, align 4
  %conv140 = zext i32 %133 to i64
  %arrayidx142 = getelementptr i64, ptr %data, i32 44
  %134 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %conv140, ptr %arrayidx142, align 8
  %fw_warm_reset_counter = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 120, i32 2
  %135 = ptrtoint ptr %fw_warm_reset_counter to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %fw_warm_reset_counter, align 4
  %conv144 = zext i32 %136 to i64
  %arrayidx146 = getelementptr i64, ptr %data, i32 45
  %137 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %conv144, ptr %arrayidx146, align 8
  %fw_cold_reset_counter = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 120, i32 3
  %138 = ptrtoint ptr %fw_cold_reset_counter to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %fw_cold_reset_counter, align 4
  %conv148 = zext i32 %139 to i64
  %arrayidx150 = getelementptr i64, ptr %data, i32 46
  %140 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 %conv148, ptr %arrayidx150, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #16
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_debug_tpc_stats_process(ptr noundef %ar, ptr noundef %tpc_stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #16
  %tpc_stats1 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 9
  %0 = ptrtoint ptr %tpc_stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpc_stats1, align 16
  tail call void @kfree(ptr noundef %1) #16
  %2 = ptrtoint ptr %tpc_stats1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tpc_stats, ptr %tpc_stats1, align 16
  %tpc_complete = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 11
  tail call void @complete(ptr noundef %tpc_complete) #16
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_debug_tpc_stats_final_process(ptr noundef %ar, ptr noundef %tpc_stats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #16
  %tpc_stats_final = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 10
  %0 = ptrtoint ptr %tpc_stats_final to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpc_stats_final, align 4
  tail call void @kfree(ptr noundef %1) #16
  %2 = ptrtoint ptr %tpc_stats_final to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tpc_stats, ptr %tpc_stats_final, align 4
  %tpc_complete = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 11
  tail call void @complete(ptr noundef %tpc_complete) #16
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_debug_start(ptr noundef %ar) local_unnamed_addr #0 align 64 {
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
  %dep_map = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 80, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !701

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1695, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %call24 = tail call fastcc i32 @ath10k_debug_htt_stats_req(ptr noundef %ar)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end.if.end27_crit_edge, label %if.then26

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.22, i32 noundef %call24)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end.if.end27_crit_edge
  %fw_dbglog_mask = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 12
  %1 = ptrtoint ptr %fw_dbglog_mask to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %fw_dbglog_mask, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %tobool28.not = icmp eq i64 %2, 0
  br i1 %tobool28.not, label %if.end27.if.end36_crit_edge, label %if.then29

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

if.then29:                                        ; preds = %if.end27
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 41, i32 11
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %gen_dbglog_cfg.i = getelementptr inbounds %struct.wmi_ops, ptr %4, i32 0, i32 59
  %5 = ptrtoint ptr %gen_dbglog_cfg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gen_dbglog_cfg.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then29.if.then34_crit_edge, label %if.end.i

if.then29.if.then34_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then34

if.end.i:                                         ; preds = %if.then29
  %call.i93 = tail call ptr %6(ptr noundef %ar, i64 noundef %2, i32 noundef 2) #16
  %cmp.i.i = icmp ugt ptr %call.i93, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %call.i93 to i32
  br label %ath10k_wmi_dbglog_cfg.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %cmd.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 41, i32 7
  %8 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd.i, align 4
  %dbglog_cfg_cmdid.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %9, i32 0, i32 104
  %10 = ptrtoint ptr %dbglog_cfg_cmdid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dbglog_cfg_cmdid.i, align 4
  %call9.i = tail call i32 @ath10k_wmi_cmd_send(ptr noundef %ar, ptr noundef %call.i93, i32 noundef %11) #16
  br label %ath10k_wmi_dbglog_cfg.exit

ath10k_wmi_dbglog_cfg.exit:                       ; preds = %if.end7.i, %if.then5.i
  %retval.0.i = phi i32 [ %7, %if.then5.i ], [ %call9.i, %if.end7.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool33.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool33.not, label %ath10k_wmi_dbglog_cfg.exit.if.end36_crit_edge, label %ath10k_wmi_dbglog_cfg.exit.if.then34_crit_edge

ath10k_wmi_dbglog_cfg.exit.if.then34_crit_edge:   ; preds = %ath10k_wmi_dbglog_cfg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then34

ath10k_wmi_dbglog_cfg.exit.if.end36_crit_edge:    ; preds = %ath10k_wmi_dbglog_cfg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

if.then34:                                        ; preds = %ath10k_wmi_dbglog_cfg.exit.if.then34_crit_edge, %if.then29.if.then34_crit_edge
  %retval.0.i126 = phi i32 [ %retval.0.i, %ath10k_wmi_dbglog_cfg.exit.if.then34_crit_edge ], [ -95, %if.then29.if.then34_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.23, i32 noundef %retval.0.i126)
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %ath10k_wmi_dbglog_cfg.exit.if.end36_crit_edge, %if.end27.if.end36_crit_edge
  %pktlog_filter = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 117
  %12 = ptrtoint ptr %pktlog_filter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pktlog_filter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool37.not = icmp eq i32 %13, 0
  %ops.i104 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 41, i32 11
  %14 = ptrtoint ptr %ops.i104 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i104, align 4
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.end36
  %gen_pktlog_enable.i = getelementptr inbounds %struct.wmi_ops, ptr %15, i32 0, i32 60
  %16 = ptrtoint ptr %gen_pktlog_enable.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gen_pktlog_enable.i, align 4
  %tobool.not.i95 = icmp eq ptr %17, null
  br i1 %tobool.not.i95, label %if.then38.if.then42_crit_edge, label %if.end.i98

if.then38.if.then42_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then42

if.end.i98:                                       ; preds = %if.then38
  %call.i96 = tail call ptr %17(ptr noundef %ar, i32 noundef %13) #16
  %cmp.i.i97 = icmp ugt ptr %call.i96, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i97, label %if.then5.i99, label %if.end7.i102

if.then5.i99:                                     ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %call.i96 to i32
  br label %ath10k_wmi_pdev_pktlog_enable.exit

if.end7.i102:                                     ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #18
  %cmd.i100 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 41, i32 7
  %19 = ptrtoint ptr %cmd.i100 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cmd.i100, align 4
  %pdev_pktlog_enable_cmdid.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %pdev_pktlog_enable_cmdid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pdev_pktlog_enable_cmdid.i, align 4
  %call9.i101 = tail call i32 @ath10k_wmi_cmd_send(ptr noundef %ar, ptr noundef %call.i96, i32 noundef %22) #16
  br label %ath10k_wmi_pdev_pktlog_enable.exit

ath10k_wmi_pdev_pktlog_enable.exit:               ; preds = %if.end7.i102, %if.then5.i99
  %retval.0.i103 = phi i32 [ %18, %if.then5.i99 ], [ %call9.i101, %if.end7.i102 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i103)
  %tobool41.not = icmp eq i32 %retval.0.i103, 0
  br i1 %tobool41.not, label %ath10k_wmi_pdev_pktlog_enable.exit.if.end49_crit_edge, label %ath10k_wmi_pdev_pktlog_enable.exit.if.then42_crit_edge

ath10k_wmi_pdev_pktlog_enable.exit.if.then42_crit_edge: ; preds = %ath10k_wmi_pdev_pktlog_enable.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then42

ath10k_wmi_pdev_pktlog_enable.exit.if.end49_crit_edge: ; preds = %ath10k_wmi_pdev_pktlog_enable.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end49

if.then42:                                        ; preds = %ath10k_wmi_pdev_pktlog_enable.exit.if.then42_crit_edge, %if.then38.if.then42_crit_edge
  %retval.0.i103129 = phi i32 [ %retval.0.i103, %ath10k_wmi_pdev_pktlog_enable.exit.if.then42_crit_edge ], [ -95, %if.then38.if.then42_crit_edge ]
  %23 = ptrtoint ptr %pktlog_filter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pktlog_filter, align 4
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.24, i32 noundef %24, i32 noundef %retval.0.i103129)
  br label %if.end49

if.else:                                          ; preds = %if.end36
  %gen_pktlog_disable.i = getelementptr inbounds %struct.wmi_ops, ptr %15, i32 0, i32 61
  %25 = ptrtoint ptr %gen_pktlog_disable.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gen_pktlog_disable.i, align 4
  %tobool.not.i105 = icmp eq ptr %26, null
  br i1 %tobool.not.i105, label %if.else.if.then47_crit_edge, label %if.end.i108

if.else.if.then47_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then47

if.end.i108:                                      ; preds = %if.else
  %call.i106 = tail call ptr %26(ptr noundef %ar) #16
  %cmp.i.i107 = icmp ugt ptr %call.i106, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i107, label %if.then5.i109, label %if.end7.i112

if.then5.i109:                                    ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #18
  %27 = ptrtoint ptr %call.i106 to i32
  br label %ath10k_wmi_pdev_pktlog_disable.exit

if.end7.i112:                                     ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #18
  %cmd.i110 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 41, i32 7
  %28 = ptrtoint ptr %cmd.i110 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cmd.i110, align 4
  %pdev_pktlog_disable_cmdid.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %pdev_pktlog_disable_cmdid.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pdev_pktlog_disable_cmdid.i, align 4
  %call9.i111 = tail call i32 @ath10k_wmi_cmd_send(ptr noundef %ar, ptr noundef %call.i106, i32 noundef %31) #16
  br label %ath10k_wmi_pdev_pktlog_disable.exit

ath10k_wmi_pdev_pktlog_disable.exit:              ; preds = %if.end7.i112, %if.then5.i109
  %retval.0.i113 = phi i32 [ %27, %if.then5.i109 ], [ %call9.i111, %if.end7.i112 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i113)
  %tobool46.not = icmp eq i32 %retval.0.i113, 0
  br i1 %tobool46.not, label %ath10k_wmi_pdev_pktlog_disable.exit.if.end49_crit_edge, label %ath10k_wmi_pdev_pktlog_disable.exit.if.then47_crit_edge

ath10k_wmi_pdev_pktlog_disable.exit.if.then47_crit_edge: ; preds = %ath10k_wmi_pdev_pktlog_disable.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then47

ath10k_wmi_pdev_pktlog_disable.exit.if.end49_crit_edge: ; preds = %ath10k_wmi_pdev_pktlog_disable.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end49

if.then47:                                        ; preds = %ath10k_wmi_pdev_pktlog_disable.exit.if.then47_crit_edge, %if.else.if.then47_crit_edge
  %retval.0.i113132 = phi i32 [ %retval.0.i113, %ath10k_wmi_pdev_pktlog_disable.exit.if.then47_crit_edge ], [ -95, %if.else.if.then47_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.25, i32 noundef %retval.0.i113132)
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %ath10k_wmi_pdev_pktlog_disable.exit.if.end49_crit_edge, %if.then42, %ath10k_wmi_pdev_pktlog_enable.exit.if.end49_crit_edge
  %ret.0 = phi i32 [ %retval.0.i103129, %if.then42 ], [ 0, %ath10k_wmi_pdev_pktlog_enable.exit.if.end49_crit_edge ], [ %retval.0.i113132, %if.then47 ], [ 0, %ath10k_wmi_pdev_pktlog_disable.exit.if.end49_crit_edge ]
  %nf_cal_period = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 15
  %32 = ptrtoint ptr %nf_cal_period to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nf_cal_period, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool51.not = icmp eq i32 %33, 0
  br i1 %tobool51.not, label %if.end49.if.end61_crit_edge, label %land.lhs.true

if.end49.if.end61_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

land.lhs.true:                                    ; preds = %if.end49
  %fw_features = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 46, i32 6, i32 2
  %34 = ptrtoint ptr %fw_features to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %fw_features, align 4
  %36 = and i32 %35, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool53.not = icmp eq i32 %36, 0
  br i1 %tobool53.not, label %if.then54, label %land.lhs.true.if.end61_crit_edge

land.lhs.true.if.end61_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

if.then54:                                        ; preds = %land.lhs.true
  %ops.i114 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 41, i32 11
  %37 = ptrtoint ptr %ops.i114 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i114, align 4
  %gen_pdev_set_param.i = getelementptr inbounds %struct.wmi_ops, ptr %38, i32 0, i32 26
  %39 = ptrtoint ptr %gen_pdev_set_param.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %gen_pdev_set_param.i, align 4
  %tobool.not.i115 = icmp eq ptr %40, null
  br i1 %tobool.not.i115, label %if.then54.if.then59_crit_edge, label %if.end.i118

if.then54.if.then59_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then59

if.end.i118:                                      ; preds = %if.then54
  %pdev_param = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 41, i32 9
  %41 = ptrtoint ptr %pdev_param to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev_param, align 4
  %cal_period = getelementptr inbounds %struct.wmi_pdev_param_map, ptr %42, i32 0, i32 48
  %43 = ptrtoint ptr %cal_period to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cal_period, align 4
  %call.i116 = tail call ptr %40(ptr noundef %ar, i32 noundef %44, i32 noundef %33) #16
  %cmp.i.i117 = icmp ugt ptr %call.i116, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i117, label %if.then5.i119, label %if.end7.i122

if.then5.i119:                                    ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #18
  %45 = ptrtoint ptr %call.i116 to i32
  br label %ath10k_wmi_pdev_set_param.exit

if.end7.i122:                                     ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #18
  %cmd.i120 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 41, i32 7
  %46 = ptrtoint ptr %cmd.i120 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cmd.i120, align 4
  %pdev_set_param_cmdid.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %pdev_set_param_cmdid.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pdev_set_param_cmdid.i, align 4
  %call9.i121 = tail call i32 @ath10k_wmi_cmd_send(ptr noundef %ar, ptr noundef %call.i116, i32 noundef %49) #16
  br label %ath10k_wmi_pdev_set_param.exit

ath10k_wmi_pdev_set_param.exit:                   ; preds = %if.end7.i122, %if.then5.i119
  %retval.0.i123 = phi i32 [ %45, %if.then5.i119 ], [ %call9.i121, %if.end7.i122 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i123)
  %tobool58.not = icmp eq i32 %retval.0.i123, 0
  br i1 %tobool58.not, label %ath10k_wmi_pdev_set_param.exit.if.end61_crit_edge, label %ath10k_wmi_pdev_set_param.exit.if.then59_crit_edge

ath10k_wmi_pdev_set_param.exit.if.then59_crit_edge: ; preds = %ath10k_wmi_pdev_set_param.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then59

ath10k_wmi_pdev_set_param.exit.if.end61_crit_edge: ; preds = %ath10k_wmi_pdev_set_param.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

if.then59:                                        ; preds = %ath10k_wmi_pdev_set_param.exit.if.then59_crit_edge, %if.then54.if.then59_crit_edge
  %retval.0.i123135 = phi i32 [ %retval.0.i123, %ath10k_wmi_pdev_set_param.exit.if.then59_crit_edge ], [ -95, %if.then54.if.then59_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.26, i32 noundef %retval.0.i123135)
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %ath10k_wmi_pdev_set_param.exit.if.end61_crit_edge, %land.lhs.true.if.end61_crit_edge, %if.end49.if.end61_crit_edge
  %ret.1 = phi i32 [ %ret.0, %land.lhs.true.if.end61_crit_edge ], [ %retval.0.i123135, %if.then59 ], [ 0, %ath10k_wmi_pdev_set_param.exit.if.end61_crit_edge ], [ %ret.0, %if.end49.if.end61_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_debug_htt_stats_req(ptr noundef %ar) unnamed_addr #0 align 64 {
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
  %dep_map = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 80, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !701

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 867, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %htt_stats_mask = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 4
  %1 = ptrtoint ptr %htt_stats_mask to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %htt_stats_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp24 = icmp eq i32 %2, 0
  br i1 %cmp24, label %if.end.cleanup_crit_edge, label %if.end26

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %state = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 103
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp27.not = icmp eq i32 %4, 1
  br i1 %cmp27.not, label %if.end29, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end29:                                         ; preds = %if.end26
  %call30 = tail call i64 @get_jiffies_64() #16
  %htt = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 44
  %5 = ptrtoint ptr %htt_stats_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %htt_stats_mask, align 4
  %reset_htt_stats = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 5
  %7 = ptrtoint ptr %reset_htt_stats to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reset_htt_stats, align 8
  %call34 = tail call i32 @ath10k_htt_h2t_stats_req(ptr noundef %htt, i32 noundef %6, i32 noundef %8, i64 noundef %call30) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.78, i32 noundef %call34)
  br label %cleanup

if.end37:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  %workqueue = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 77
  %9 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %workqueue, align 8
  %htt_stats_dwork = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 6
  %call.i53 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %htt_stats_dwork, i32 noundef 100) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then36, %if.end26.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %if.then36 ], [ 0, %if.end37 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath10k_wmi_pdev_set_param(ptr noundef %ar, i32 noundef %id, i32 noundef %value) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %ops = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 41, i32 11
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %gen_pdev_set_param = getelementptr inbounds %struct.wmi_ops, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %gen_pdev_set_param to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gen_pdev_set_param, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr %3(ptr noundef %ar, i32 noundef %id, i32 noundef %value) #16
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %cmd = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 41, i32 7
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd, align 4
  %pdev_set_param_cmdid = getelementptr inbounds %struct.wmi_cmd_map, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %pdev_set_param_cmdid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pdev_set_param_cmdid, align 4
  %call9 = tail call i32 @ath10k_wmi_cmd_send(ptr noundef %ar, ptr noundef %call, i32 noundef %8) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then5 ], [ %call9, %if.end7 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_debug_stop(ptr noundef %ar) local_unnamed_addr #0 align 64 {
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
  %dep_map = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 80, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !701

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1744, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %fw_features = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 46, i32 6, i32 2
  %1 = ptrtoint ptr %fw_features to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %fw_features, align 4
  %3 = and i32 %2, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool25.not = icmp eq i32 %3, 0
  br i1 %tobool25.not, label %if.then26, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @ath10k_debug_cal_data_fetch(ptr noundef %ar)
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end.if.end28_crit_edge
  %htt_stats_mask = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 4
  %4 = ptrtoint ptr %htt_stats_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %htt_stats_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp29.not = icmp eq i32 %5, 0
  br i1 %cmp29.not, label %if.end28.if.end33_crit_edge, label %if.then30

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  %htt_stats_dwork = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 6
  %call32 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %htt_stats_dwork) #16
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end28.if.end33_crit_edge
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 41, i32 11
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %gen_pktlog_disable.i = getelementptr inbounds %struct.wmi_ops, ptr %7, i32 0, i32 61
  %8 = ptrtoint ptr %gen_pktlog_disable.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gen_pktlog_disable.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end33.ath10k_wmi_pdev_pktlog_disable.exit_crit_edge, label %if.end.i

if.end33.ath10k_wmi_pdev_pktlog_disable.exit_crit_edge: ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_wmi_pdev_pktlog_disable.exit

if.end.i:                                         ; preds = %if.end33
  %call.i41 = tail call ptr %9(ptr noundef %ar) #16
  %cmp.i.i = icmp ugt ptr %call.i41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.ath10k_wmi_pdev_pktlog_disable.exit_crit_edge, label %if.end7.i

if.end.i.ath10k_wmi_pdev_pktlog_disable.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ath10k_wmi_pdev_pktlog_disable.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %cmd.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 41, i32 7
  %10 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmd.i, align 4
  %pdev_pktlog_disable_cmdid.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %pdev_pktlog_disable_cmdid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pdev_pktlog_disable_cmdid.i, align 4
  %call9.i = tail call i32 @ath10k_wmi_cmd_send(ptr noundef %ar, ptr noundef %call.i41, i32 noundef %13) #16
  br label %ath10k_wmi_pdev_pktlog_disable.exit

ath10k_wmi_pdev_pktlog_disable.exit:              ; preds = %if.end7.i, %if.end.i.ath10k_wmi_pdev_pktlog_disable.exit_crit_edge, %if.end33.ath10k_wmi_pdev_pktlog_disable.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_debug_cal_data_fetch(ptr noundef %ar) unnamed_addr #0 align 64 {
entry:
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #16
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %addr, align 4, !annotation !689
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 80, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !701

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1255, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %cal_data_len = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 45, i32 15
  %2 = ptrtoint ptr %cal_data_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cal_data_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12064, i32 %3)
  %cmp25 = icmp ugt i32 %3, 12064
  br i1 %cmp25, label %do.end41, label %if.end57, !prof !701

do.end41:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1257, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

if.end57:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp60 = icmp eq i32 %3, 0
  br i1 %cmp60, label %if.end57.cleanup_crit_edge, label %if.end62

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end62:                                         ; preds = %if.end57
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 34, i32 1
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %diag_read.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %diag_read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %diag_read.i, align 4
  %call.i1 = call i32 %7(ptr noundef %ar, i32 noundef 4196436, ptr noundef nonnull %addr, i32 noundef 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool65.not = icmp eq i32 %call.i1, 0
  br i1 %tobool65.not, label %if.end67, label %if.then66

if.then66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.79, i32 noundef %call.i1)
  br label %cleanup

if.end67:                                         ; preds = %if.end62
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr, align 4
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %cal_data = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 16
  %11 = ptrtoint ptr %cal_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cal_data, align 4
  %13 = ptrtoint ptr %cal_data_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cal_data_len, align 8
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %diag_read.i3 = getelementptr inbounds %struct.ath10k_hif_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %diag_read.i3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %diag_read.i3, align 4
  %call.i4 = call i32 %18(ptr noundef %ar, i32 noundef %10, ptr noundef %12, i32 noundef %14) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %tobool71.not = icmp eq i32 %call.i4, 0
  br i1 %tobool71.not, label %if.end67.cleanup_crit_edge, label %if.then72

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then72:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.80, i32 noundef %call.i4)
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %if.end67.cleanup_crit_edge, %if.then66, %if.end57.cleanup_crit_edge, %do.end41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_debug_create(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @vzalloc(i32 noundef 12064) #21
  %cal_data = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 16
  %0 = ptrtoint ptr %cal_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %cal_data, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %pdevs = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 1, i32 1
  %1 = ptrtoint ptr %pdevs to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %pdevs, ptr %pdevs, align 4
  %prev.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdevs, ptr %prev.i, align 4
  %vdevs = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 1, i32 2
  %3 = ptrtoint ptr %vdevs to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %vdevs, ptr %vdevs, align 4
  %prev.i15 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 1, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i15 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %vdevs, ptr %prev.i15, align 4
  %peers = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 1, i32 3
  %5 = ptrtoint ptr %peers to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %peers, ptr %peers, align 4
  %prev.i16 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 1, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i16 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %peers, ptr %prev.i16, align 4
  %peers_extd = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 1, i32 4
  %7 = ptrtoint ptr %peers_extd to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %peers_extd, ptr %peers_extd, align 4
  %prev.i17 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 1, i32 4, i32 1
  %8 = ptrtoint ptr %prev.i17 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %peers_extd, ptr %prev.i17, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_debug_destroy(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cal_data = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 16
  %0 = ptrtoint ptr %cal_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cal_data, align 4
  tail call void @vfree(ptr noundef %1) #16
  %2 = ptrtoint ptr %cal_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %cal_data, align 4
  tail call fastcc void @ath10k_debug_fw_stats_reset(ptr noundef %ar)
  %tpc_stats = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 9
  %3 = ptrtoint ptr %tpc_stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tpc_stats, align 16
  tail call void @kfree(ptr noundef %4) #16
  %tpc_stats_final = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 10
  %5 = ptrtoint ptr %tpc_stats_final to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tpc_stats_final, align 4
  tail call void @kfree(ptr noundef %6) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath10k_debug_register(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 8
  %debugfsdir = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 58
  %4 = ptrtoint ptr %debugfsdir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfsdir, align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.27, ptr noundef %5) #16
  %debug = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115
  %6 = ptrtoint ptr %debug to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %debug, align 16
  %tobool.not.i = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.then, label %do.body12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %call to i32
  %spec.select = select i1 %cmp.i, i32 %7, i32 -12
  br label %return

do.body12:                                        ; preds = %entry
  %htt_stats_dwork = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 6
  tail call void @__init_work(ptr noundef %htt_stats_dwork, i32 noundef 0) #16
  %8 = ptrtoint ptr %htt_stats_dwork to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %htt_stats_dwork, align 4
  %lockdep_map = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 6, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.28, ptr noundef nonnull @ath10k_debug_register.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry23 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 6, i32 0, i32 1
  %9 = ptrtoint ptr %entry23 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry23, ptr %entry23, align 4
  %prev.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 6, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry23, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 6, i32 0, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ath10k_debug_htt_stats_dwork, ptr %func, align 4
  %timer = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 6, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.30, ptr noundef nonnull @ath10k_debug_register.__key.29) #16
  %tpc_complete = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 11
  %12 = ptrtoint ptr %tpc_complete to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %tpc_complete, align 4
  %wait.i = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 11, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.81, ptr noundef nonnull @init_completion.__key) #16
  %fw_stats_complete = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 2
  %13 = ptrtoint ptr %fw_stats_complete to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %fw_stats_complete, align 4
  %wait.i247 = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i247, ptr noundef nonnull @.str.81, ptr noundef nonnull @init_completion.__key) #16
  %14 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %debug, align 16
  %call36 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.31, i16 noundef zeroext 256, ptr noundef %15, ptr noundef %ar, ptr noundef nonnull @fops_fw_stats) #16
  %16 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %debug, align 16
  %call39 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.32, i16 noundef zeroext 256, ptr noundef %17, ptr noundef %ar, ptr noundef nonnull @fops_fw_reset_stats) #16
  %18 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %debug, align 16
  %call42 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.33, i16 noundef zeroext 256, ptr noundef %19, ptr noundef %ar, ptr noundef nonnull @fops_wmi_services) #16
  %20 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %debug, align 16
  %call45 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.34, i16 noundef zeroext 384, ptr noundef %21, ptr noundef %ar, ptr noundef nonnull @fops_simulate_fw_crash) #16
  %22 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %debug, align 16
  %call48 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.35, i16 noundef zeroext 384, ptr noundef %23, ptr noundef %ar, ptr noundef nonnull @fops_reg_addr) #16
  %24 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %debug, align 16
  %call51 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.36, i16 noundef zeroext 384, ptr noundef %25, ptr noundef %ar, ptr noundef nonnull @fops_reg_value) #16
  %26 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %debug, align 16
  %call54 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.37, i16 noundef zeroext 384, ptr noundef %27, ptr noundef %ar, ptr noundef nonnull @fops_mem_value) #16
  %28 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %debug, align 16
  %call57 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.38, i16 noundef zeroext 256, ptr noundef %29, ptr noundef %ar, ptr noundef nonnull @fops_chip_id) #16
  %30 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %debug, align 16
  %call60 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.39, i16 noundef zeroext 384, ptr noundef %31, ptr noundef %ar, ptr noundef nonnull @fops_htt_stats_mask) #16
  %32 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %debug, align 16
  %call63 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.40, i16 noundef zeroext 384, ptr noundef %33, ptr noundef %ar, ptr noundef nonnull @fops_htt_max_amsdu_ampdu) #16
  %34 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %debug, align 16
  %call66 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.41, i16 noundef zeroext 384, ptr noundef %35, ptr noundef %ar, ptr noundef nonnull @fops_fw_dbglog) #16
  %fw_features = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 46, i32 6, i32 2
  %36 = ptrtoint ptr %fw_features to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %fw_features, align 4
  %38 = and i32 %37, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not = icmp eq i32 %38, 0
  br i1 %tobool.not, label %if.then68, label %do.body12.if.end75_crit_edge

do.body12.if.end75_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end75

if.then68:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #18
  %39 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %debug, align 16
  %call71 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.42, i16 noundef zeroext 256, ptr noundef %40, ptr noundef %ar, ptr noundef nonnull @fops_cal_data) #16
  %41 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %debug, align 16
  %call74 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.43, i16 noundef zeroext 384, ptr noundef %42, ptr noundef %ar, ptr noundef nonnull @fops_nf_cal_period) #16
  br label %if.end75

if.end75:                                         ; preds = %if.then68, %do.body12.if.end75_crit_edge
  %43 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %debug, align 16
  %call78 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.44, i16 noundef zeroext 384, ptr noundef %44, ptr noundef %ar, ptr noundef nonnull @fops_ani_enable) #16
  %45 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %debug, align 16
  %call81 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.45, i16 noundef zeroext 128, ptr noundef %46, ptr noundef %ar, ptr noundef nonnull @fops_simulate_radar) #16
  %47 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %debug, align 16
  %dfs_block_radar_events = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 67
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.46, i16 noundef zeroext 128, ptr noundef %48, ptr noundef %dfs_block_radar_events) #16
  %49 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %debug, align 16
  %call86 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.47, i16 noundef zeroext 256, ptr noundef %50, ptr noundef %ar, ptr noundef nonnull @fops_dfs_stats) #16
  %51 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %debug, align 16
  %call89 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.48, i16 noundef zeroext 420, ptr noundef %52, ptr noundef %ar, ptr noundef nonnull @fops_pktlog_filter) #16
  %arrayidx.i = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 41, i32 6, i32 3
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %arrayidx.i, align 4
  %55 = and i32 %54, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool92.not = icmp eq i32 %55, 0
  br i1 %tobool92.not, label %if.end75.if.end97_crit_edge, label %if.then93

if.end75.if.end97_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end97

if.then93:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #18
  %56 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %debug, align 16
  %call96 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.49, i16 noundef zeroext 420, ptr noundef %57, ptr noundef %ar, ptr noundef nonnull @fops_quiet_period) #16
  br label %if.end97

if.end97:                                         ; preds = %if.then93, %if.end75.if.end97_crit_edge
  %58 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %debug, align 16
  %call100 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.50, i16 noundef zeroext 256, ptr noundef %59, ptr noundef %ar, ptr noundef nonnull @fops_tpc_stats) #16
  %arrayidx.i234 = getelementptr %struct.ath10k, ptr %ar, i32 0, i32 41, i32 6, i32 2
  %60 = ptrtoint ptr %arrayidx.i234 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %arrayidx.i234, align 4
  %62 = and i32 %61, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool105.not = icmp eq i32 %62, 0
  br i1 %tobool105.not, label %if.end97.if.end110_crit_edge, label %if.then106

if.end97.if.end110_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end110

if.then106:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #18
  %63 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %debug, align 16
  %call109 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.51, i16 noundef zeroext 420, ptr noundef %64, ptr noundef %ar, ptr noundef nonnull @fops_btcoex) #16
  br label %if.end110

if.end110:                                        ; preds = %if.then106, %if.end97.if.end110_crit_edge
  %65 = ptrtoint ptr %arrayidx.i234 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %arrayidx.i234, align 4
  %67 = and i32 %66, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool115.not = icmp eq i32 %67, 0
  br i1 %tobool115.not, label %if.end110.if.end123_crit_edge, label %if.then116

if.end110.if.end123_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end123

if.then116:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #18
  %68 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %debug, align 16
  %call119 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.52, i16 noundef zeroext 420, ptr noundef %69, ptr noundef %ar, ptr noundef nonnull @fops_peer_stats) #16
  %70 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %debug, align 16
  %call122 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.53, i16 noundef zeroext 420, ptr noundef %71, ptr noundef %ar, ptr noundef nonnull @fops_enable_extd_tx_stats) #16
  br label %if.end123

if.end123:                                        ; preds = %if.then116, %if.end110.if.end123_crit_edge
  %72 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %debug, align 16
  %call126 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.54, i16 noundef zeroext 256, ptr noundef %73, ptr noundef %ar, ptr noundef nonnull @fops_fw_checksums) #16
  %74 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %debug, align 16
  %call129 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.55, i16 noundef zeroext 384, ptr noundef %75, ptr noundef %ar, ptr noundef nonnull @fops_sta_tid_stats_mask) #16
  %76 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %arrayidx.i, align 4
  %78 = and i32 %77, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool134.not = icmp eq i32 %78, 0
  br i1 %tobool134.not, label %if.end123.if.end139_crit_edge, label %if.then135

if.end123.if.end139_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end139

if.then135:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #18
  %79 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %debug, align 16
  %call138 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.56, i16 noundef zeroext 256, ptr noundef %80, ptr noundef %ar, ptr noundef nonnull @fops_tpc_stats_final) #16
  br label %if.end139

if.end139:                                        ; preds = %if.then135, %if.end123.if.end139_crit_edge
  %81 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %arrayidx.i, align 4
  %83 = and i32 %82, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool144.not = icmp eq i32 %83, 0
  br i1 %tobool144.not, label %if.end139.if.end149_crit_edge, label %if.then145

if.end139.if.end149_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end149

if.then145:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #18
  %84 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %debug, align 16
  %call148 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.57, i16 noundef zeroext 384, ptr noundef %85, ptr noundef %ar, ptr noundef nonnull @fops_warm_hw_reset) #16
  br label %if.end149

if.end149:                                        ; preds = %if.then145, %if.end139.if.end149_crit_edge
  %86 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %debug, align 16
  %call152 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.58, i16 noundef zeroext 384, ptr noundef %87, ptr noundef %ar, ptr noundef nonnull @fops_ps_state_enable) #16
  %88 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %debug, align 16
  %call155 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.59, i16 noundef zeroext 128, ptr noundef %89, ptr noundef %ar, ptr noundef nonnull @fops_reset_htt_stats) #16
  br label %return

return:                                           ; preds = %if.end149, %if.then
  %retval.0 = phi i32 [ 0, %if.end149 ], [ %spec.select, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_debug_htt_stats_dwork(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -18204
  %conf_mutex = getelementptr i8, ptr %work, i32 -12152
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %call = tail call fastcc i32 @ath10k_debug_htt_stats_req(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath10k_debug_unregister(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %htt_stats_dwork = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 115, i32 6
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %htt_stats_dwork) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__ath10k_dbg(ptr noundef %ar, i32 noundef %mask, ptr noundef %fmt, ...) #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #16
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #16
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !689
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %4 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %4, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dev = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 3
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.61, ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull %vaf) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call fastcc void @trace_ath10k_log_dbg(ptr noundef %ar, i32 noundef %mask, ptr noundef nonnull %vaf)
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ath10k_log_dbg(ptr noundef %ar, i32 noundef %level, ptr noundef %vaf) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 1), ptr blockaddress(@trace_ath10k_log_dbg, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !690

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !679) #16
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !691

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !679) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !702
  %call42 = tail call i32 @__traceiter_ath10k_log_dbg(ptr noundef null, ptr noundef %ar, i32 noundef %level, ptr noundef %vaf) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !703
  %13 = tail call i32 @llvm.read_register.i32(metadata !679) #16
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !679) #16
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !691

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !679) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !694
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ath10k_log_dbg.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_ath10k_log_dbg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 112, ptr noundef nonnull @.str.67) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !695
  %31 = tail call i32 @llvm.read_register.i32(metadata !679) #16
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
define dso_local void @ath10k_dbg_dump(ptr noundef %ar, i32 noundef %mask, ptr noundef %msg, ptr noundef %prefix, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %linebuf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %linebuf) #16
  %0 = call ptr @memset(ptr %linebuf, i32 255, i32 256)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath10k_debug_mask to i32))
  %1 = load i32, ptr @ath10k_debug_mask, align 4
  %and = and i32 %1, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

if.then:                                          ; preds = %entry
  %tobool1.not = icmp eq ptr %msg, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, ptr, ...) @__ath10k_dbg(ptr noundef %ar, i32 noundef %mask, ptr noundef nonnull @.str.62, ptr noundef nonnull %msg)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp53.not = icmp eq i32 %len, 0
  br i1 %cmp53.not, label %if.end.if.end17_crit_edge, label %for.body.lr.ph

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

for.body.lr.ph:                                   ; preds = %if.end
  %tobool3.not = icmp eq ptr %prefix, null
  %spec.select = select i1 %tobool3.not, ptr @.str.64, ptr %prefix
  %dev = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %sub.ptr.sub55 = phi i32 [ 0, %for.body.lr.ph ], [ %sub.ptr.sub, %for.body.for.body_crit_edge ]
  %ptr.054 = phi ptr [ %buf, %for.body.lr.ph ], [ %add.ptr16, %for.body.for.body_crit_edge ]
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %linebuf, i32 noundef 256, ptr noundef nonnull @.str.63, ptr noundef nonnull %spec.select, i32 noundef %sub.ptr.sub55) #16
  %sub10 = sub i32 %len, %sub.ptr.sub55
  %add.ptr12 = getelementptr i8, ptr %linebuf, i32 %call
  %sub13 = sub i32 256, %call
  %call14 = call i32 @hex_dump_to_buffer(ptr noundef %ptr.054, i32 noundef %sub10, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr12, i32 noundef %sub13, i1 noundef zeroext true) #16
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.61, ptr noundef %3, ptr noundef nonnull @.str.62, ptr noundef nonnull %linebuf) #19
  %add.ptr16 = getelementptr i8, ptr %ptr.054, i32 16
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr16 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp ult i32 %sub.ptr.sub, %len
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end17_crit_edge

for.body.if.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.end17:                                         ; preds = %for.body.if.end17_crit_edge, %if.end.if.end17_crit_edge, %entry.if.end17_crit_edge
  %tobool18.not = icmp eq ptr %msg, null
  %spec.select51 = select i1 %tobool18.not, ptr @.str.64, ptr %msg
  %tobool23.not = icmp eq ptr %prefix, null
  %cond27 = select i1 %tobool23.not, ptr @.str.64, ptr %prefix
  call fastcc void @trace_ath10k_log_dbg_dump(ptr noundef %ar, ptr noundef nonnull %spec.select51, ptr noundef nonnull %cond27, ptr noundef %buf, i32 noundef %len)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %linebuf) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_dump_to_buffer(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ath10k_log_dbg_dump(ptr noundef %ar, ptr noundef %msg, ptr noundef %prefix, ptr noundef %buf, i32 noundef %buf_len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg_dump, i32 0, i32 1), ptr blockaddress(@trace_ath10k_log_dbg_dump, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !690

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !679) #16
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !691

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !679) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !704
  %call42 = tail call i32 @__traceiter_ath10k_log_dbg_dump(ptr noundef null, ptr noundef %ar, ptr noundef %msg, ptr noundef %prefix, ptr noundef %buf, i32 noundef %buf_len) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !705
  %13 = tail call i32 @llvm.read_register.i32(metadata !679) #16
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !679) #16
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !691

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !679) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !694
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg_dump, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ath10k_log_dbg_dump, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_ath10k_log_dbg_dump.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_ath10k_log_dbg_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 145, ptr noundef nonnull @.str.67) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !695
  %31 = tail call i32 @llvm.read_register.i32(metadata !679) #16
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
declare dso_local i32 @__traceiter_ath10k_log_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ath10k_log_err(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ath10k_log_warn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_wmi_cmd_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_jiffies_64() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath10k_htt_h2t_stats_req(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_fw_stats_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @strlen(ptr noundef %1) #22
  %call1 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef %1, i32 noundef %call) #16
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_fw_stats_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %state = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call noalias ptr @vmalloc(i32 noundef 1048576) #21
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = tail call i32 @ath10k_debug_fw_stats_request(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.82, i32 noundef %call3)
  br label %err_free

if.end6:                                          ; preds = %if.end2
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 11
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %fw_stats_fill.i = getelementptr inbounds %struct.wmi_ops, ptr %5, i32 0, i32 83
  %6 = ptrtoint ptr %fw_stats_fill.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw_stats_fill.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.83, i32 noundef -95)
  br label %err_free

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %fw_stats = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 1
  tail call void %7(ptr noundef %1, ptr noundef %fw_stats, ptr noundef nonnull %call) #16
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %private_data, align 4
  br label %cleanup

err_free:                                         ; preds = %if.then9, %if.then5
  %ret.0 = phi i32 [ %call3, %if.then5 ], [ -95, %if.then9 ]
  tail call void @vfree(ptr noundef nonnull %call) #16
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ %ret.0, %err_free ], [ -100, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_fw_stats_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @vfree(ptr noundef %1) #16
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_debug_fw_reset_stats_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 500) #23
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #16
  %fw_crash_counter = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 120, i32 1
  %3 = ptrtoint ptr %fw_crash_counter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_crash_counter, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i, i32 noundef 500, ptr noundef nonnull @.str.84, i32 noundef %4) #16
  %add.ptr2 = getelementptr i8, ptr %call7.i, i32 %call1
  %sub3 = sub i32 500, %call1
  %fw_warm_reset_counter = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 120, i32 2
  %5 = ptrtoint ptr %fw_warm_reset_counter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_warm_reset_counter, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.85, i32 noundef %6) #16
  %add6 = add i32 %call5, %call1
  %add.ptr7 = getelementptr i8, ptr %call7.i, i32 %add6
  %sub8 = sub i32 500, %add6
  %fw_cold_reset_counter = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 120, i32 3
  %7 = ptrtoint ptr %fw_cold_reset_counter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_cold_reset_counter, align 4
  %call10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7, i32 noundef %sub8, ptr noundef nonnull @.str.86, i32 noundef %8) #16
  %add11 = add i32 %call10, %add6
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #16
  %call13 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i, i32 noundef %add11) #16
  tail call void @kfree(ptr noundef nonnull %call7.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_read_wmi_services(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 8192) #23
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #16
  %svc_map = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.052 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %len.051 = phi i32 [ 0, %if.end ], [ %len.1, %for.inc.for.body_crit_edge ]
  %div3.i = lshr i32 %i.052, 5
  %arrayidx.i = getelementptr i32, ptr %svc_map, i32 %div3.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.052, 31
  %5 = shl nuw i32 1, %and.i
  %6 = and i32 %4, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 122, i32 %i.052)
  %7 = icmp ult i32 %i.052, 122
  br i1 %7, label %switch.lookup, label %if.then5

if.then5:                                         ; preds = %for.body
  br i1 %tobool2.not, label %if.then5.for.inc_crit_edge, label %if.then7

if.then5.for.inc_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 %len.051
  %sub = sub i32 8192, %len.051
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.88, i32 noundef %i.052) #16
  %add = add i32 %call8, %len.051
  br label %for.inc

switch.lookup:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %switch.gep = getelementptr inbounds [122 x ptr], ptr @switch.table.ath10k_read_wmi_services, i32 0, i32 %i.052
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %add.ptr11 = getelementptr i8, ptr %call7.i.i, i32 %len.051
  %sub12 = sub i32 8192, %len.051
  %cond = select i1 %tobool2.not, ptr @.str.90, ptr @.str.88
  %call14 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr11, i32 noundef %sub12, ptr noundef nonnull @.str.89, ptr noundef nonnull %switch.load, ptr noundef nonnull %cond) #16
  %add15 = add i32 %call14, %len.051
  br label %for.inc

for.inc:                                          ; preds = %switch.lookup, %if.then7, %if.then5.for.inc_crit_edge
  %len.1 = phi i32 [ %add15, %switch.lookup ], [ %add, %if.then7 ], [ %len.051, %if.then5.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc, 122
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #16
  %call17 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %len.1) #16
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_read_simulate_fw_crash(ptr nocapture noundef readnone %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [431 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 431, ptr nonnull %buf) #16
  %0 = call ptr @memcpy(ptr %buf, ptr @__const.ath10k_read_simulate_fw_crash.buf, i32 431)
  %call = call i32 @strlen(ptr noundef nonnull %buf) #22
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #16
  call void @llvm.lifetime.end.p0(i64 431, ptr nonnull %buf) #16
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_write_simulate_fw_crash(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #16
  %2 = call ptr @memset(ptr %buf, i32 0, i32 32)
  %3 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp.not = icmp ne i64 %4, 0
  %5 = add i32 %count, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %5)
  %6 = icmp ult i32 %5, -31
  %7 = or i1 %6, %cmp.not
  br i1 %7, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @simple_write_to_buffer(ptr noundef nonnull %buf, i32 noundef 31, ptr noundef %ppos, ptr noundef %user_buf, i32 noundef %count) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %8 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ppos, align 8
  %10 = trunc i64 %9 to i32
  %idxprom = add i32 %10, -1
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %12)
  %cmp7 = icmp eq i8 %12, 10
  br i1 %cmp7, label %if.then9, label %if.end6.if.end13_crit_edge

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end6.if.end13_crit_edge
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %state = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 103
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 32
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %if.end13.exit_crit_edge [
    i32 1, label %if.end13.if.end20_crit_edge
    i32 3, label %if.end13.if.end20_crit_edge99
  ]

if.end13.if.end20_crit_edge99:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.end13.exit_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end20:                                         ; preds = %if.end13.if.end20_crit_edge, %if.end13.if.end20_crit_edge99
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buf, ptr noundef nonnull dereferenceable(5) @.str.213, i32 5) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end20
  call void (ptr, ptr, ...) @ath10k_info(ptr noundef %1, ptr noundef nonnull @.str.214)
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 11
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %gen_force_fw_hang.i = getelementptr inbounds %struct.wmi_ops, ptr %18, i32 0, i32 55
  %19 = ptrtoint ptr %gen_force_fw_hang.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gen_force_fw_hang.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.then23.if.then47_crit_edge, label %if.end.i

if.then23.if.then47_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then47

if.end.i:                                         ; preds = %if.then23
  %call.i = call ptr %20(ptr noundef %1, i32 noundef 1, i32 noundef 0) #16
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %call.i to i32
  br label %if.end45

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %cmd.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 7
  %22 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cmd.i, align 4
  %force_fw_hang_cmdid.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %23, i32 0, i32 109
  %24 = ptrtoint ptr %force_fw_hang_cmdid.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %force_fw_hang_cmdid.i, align 4
  %call9.i = call i32 @ath10k_wmi_cmd_send(ptr noundef %1, ptr noundef %call.i, i32 noundef %25) #16
  br label %if.end45

if.else:                                          ; preds = %if.end20
  %bcmp75 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buf, ptr noundef nonnull dereferenceable(5) @.str.215, i32 5) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp75)
  %tobool27.not = icmp eq i32 %bcmp75, 0
  br i1 %tobool27.not, label %if.then28, label %if.else30

if.then28:                                        ; preds = %if.else
  call void (ptr, ptr, ...) @ath10k_info(ptr noundef %1, ptr noundef nonnull @.str.216)
  %ops.i79 = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 11
  %26 = ptrtoint ptr %ops.i79 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i79, align 4
  %gen_vdev_set_param.i = getelementptr inbounds %struct.wmi_ops, ptr %27, i32 0, i32 36
  %28 = ptrtoint ptr %gen_vdev_set_param.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %gen_vdev_set_param.i, align 4
  %tobool.not.i80 = icmp eq ptr %29, null
  br i1 %tobool.not.i80, label %if.then28.if.then47_crit_edge, label %if.end.i83

if.then28.if.then47_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then47

if.end.i83:                                       ; preds = %if.then28
  %vdev_param = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 8
  %30 = ptrtoint ptr %vdev_param to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vdev_param, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %call.i81 = call ptr %29(ptr noundef %1, i32 noundef 32767, i32 noundef %33, i32 noundef 0) #16
  %cmp.i.i82 = icmp ugt ptr %call.i81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i82, label %if.then5.i84, label %if.end7.i87

if.then5.i84:                                     ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %call.i81 to i32
  br label %if.end45

if.end7.i87:                                      ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #18
  %cmd.i85 = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 7
  %35 = ptrtoint ptr %cmd.i85 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cmd.i85, align 4
  %vdev_set_param_cmdid.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %36, i32 0, i32 26
  %37 = ptrtoint ptr %vdev_set_param_cmdid.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vdev_set_param_cmdid.i, align 4
  %call9.i86 = call i32 @ath10k_wmi_cmd_send(ptr noundef %1, ptr noundef %call.i81, i32 noundef %38) #16
  br label %if.end45

if.else30:                                        ; preds = %if.else
  %bcmp76 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %buf, ptr noundef nonnull dereferenceable(7) @.str.217, i32 7) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp76)
  %tobool33.not = icmp eq i32 %bcmp76, 0
  br i1 %tobool33.not, label %if.then34, label %if.else36

if.then34:                                        ; preds = %if.else30
  call void (ptr, ptr, ...) @ath10k_info(ptr noundef %1, ptr noundef nonnull @.str.218)
  %call.i89 = call ptr @ath10k_wmi_alloc_skb(ptr noundef %1, i32 noundef 108) #16
  %tobool.not.i90 = icmp eq ptr %call.i89, null
  br i1 %tobool.not.i90, label %if.then34.if.then47_crit_edge, label %if.end.i91

if.then34.if.then47_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then47

if.end.i91:                                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #18
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i89, i32 0, i32 19
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i, align 4
  %41 = getelementptr inbounds i8, ptr %40, i32 4
  %42 = call ptr @memset(ptr %41, i32 0, i32 88)
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 -25231360, ptr %40, align 1
  %cmd1.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 7
  %44 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cmd1.i, align 4
  %vdev_install_key_cmdid.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %45, i32 0, i32 27
  %46 = ptrtoint ptr %vdev_install_key_cmdid.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vdev_install_key_cmdid.i, align 4
  %call2.i = call i32 @ath10k_wmi_cmd_send(ptr noundef %1, ptr noundef nonnull %call.i89, i32 noundef %47) #16
  br label %if.end45

if.else36:                                        ; preds = %if.else30
  %bcmp77 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %buf, ptr noundef nonnull dereferenceable(11) @.str.219, i32 11) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp77)
  %tobool39.not = icmp eq i32 %bcmp77, 0
  br i1 %tobool39.not, label %if.end45.thread96, label %if.else36.exit_crit_edge

if.else36.exit_crit_edge:                         ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end45.thread96:                                ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @ath10k_info(ptr noundef %1, ptr noundef nonnull @.str.220)
  call void @ath10k_core_start_recovery(ptr noundef %1) #16
  br label %exit

if.end45:                                         ; preds = %if.end.i91, %if.end7.i87, %if.then5.i84, %if.end7.i, %if.then5.i
  %ret.0 = phi i32 [ %21, %if.then5.i ], [ %call9.i, %if.end7.i ], [ %34, %if.then5.i84 ], [ %call9.i86, %if.end7.i87 ], [ %call2.i, %if.end.i91 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool46.not = icmp eq i32 %ret.0, 0
  br i1 %tobool46.not, label %if.end45.exit_crit_edge, label %if.end45.if.then47_crit_edge

if.end45.if.then47_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then47

if.end45.exit_crit_edge:                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.then47:                                        ; preds = %if.end45.if.then47_crit_edge, %if.then34.if.then47_crit_edge, %if.then28.if.then47_crit_edge, %if.then23.if.then47_crit_edge
  %ret.095 = phi i32 [ %ret.0, %if.end45.if.then47_crit_edge ], [ -12, %if.then34.if.then47_crit_edge ], [ -95, %if.then28.if.then47_crit_edge ], [ -95, %if.then23.if.then47_crit_edge ]
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.221, i32 noundef %ret.095)
  br label %exit

exit:                                             ; preds = %if.then47, %if.end45.exit_crit_edge, %if.end45.thread96, %if.else36.exit_crit_edge, %if.end13.exit_crit_edge
  %ret.1 = phi i32 [ %ret.095, %if.then47 ], [ -100, %if.end13.exit_crit_edge ], [ -22, %if.else36.exit_crit_edge ], [ %count, %if.end45.exit_crit_edge ], [ %count, %if.end45.thread96 ]
  call void @mutex_unlock(ptr noundef %conf_mutex) #16
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %exit ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_write_to_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_core_start_recovery(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath10k_wmi_alloc_skb(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_reg_addr_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #16
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %reg_addr1 = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 14
  %3 = ptrtoint ptr %reg_addr1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_addr1, align 4
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #16
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.222, i32 noundef %4) #16
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #16
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_reg_addr_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %reg_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_addr) #16
  %2 = ptrtoint ptr %reg_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg_addr, align 4, !annotation !689
  %call.i = call i32 @kstrtouint_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %reg_addr) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %reg_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_addr, align 4
  %and = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %5 = ptrtoint ptr %reg_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_addr, align 4
  %reg_addr3 = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 14
  %7 = ptrtoint ptr %reg_addr3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %reg_addr3, align 4
  call void @mutex_unlock(ptr noundef %conf_mutex) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end2 ], [ %call.i, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_addr) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_reg_value_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %buf) #16
  %2 = call ptr @memset(ptr %buf, i32 255, i32 48)
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %state = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 103
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 32
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.292)
  switch i32 %4, label %entry.exit_crit_edge [
    i32 1, label %entry.if.end_crit_edge
    i32 5, label %entry.if.end_crit_edge14
  ]

entry.if.end_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge14
  %reg_addr3 = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 14
  %6 = ptrtoint ptr %reg_addr3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_addr3, align 4
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 34, i32 1
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.224) #16
  br label %ath10k_hif_read32.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call i32 %11(ptr noundef %1, i32 noundef %7) #16
  br label %ath10k_hif_read32.exit

ath10k_hif_read32.exit:                           ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ -559030611, %if.then.i ]
  %call4 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 48, ptr noundef nonnull @.str.223, i32 noundef %7, i32 noundef %retval.0.i) #16
  %call6 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call4) #16
  br label %exit

exit:                                             ; preds = %ath10k_hif_read32.exit, %entry.exit_crit_edge
  %ret.0 = phi i32 [ %call6, %ath10k_hif_read32.exit ], [ -100, %entry.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %conf_mutex) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %buf) #16
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_reg_value_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #16
  %2 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg_val, align 4, !annotation !689
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %state = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 103
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 32
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.293)
  switch i32 %4, label %entry.exit_crit_edge [
    i32 1, label %entry.if.end_crit_edge
    i32 5, label %entry.if.end_crit_edge14
  ]

entry.if.end_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge14
  %reg_addr3 = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 14
  %6 = ptrtoint ptr %reg_addr3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_addr3, align 4
  %call.i = call i32 @kstrtouint_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %reg_val) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end5, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end5:                                          ; preds = %if.end
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 34, i32 1
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %write32.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.225) #16
  br label %exit

if.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_val, align 4
  call void %11(ptr noundef %1, i32 noundef %7, i32 noundef %13) #16
  br label %exit

exit:                                             ; preds = %if.end.i, %if.then.i, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.exit_crit_edge ], [ -100, %entry.exit_crit_edge ], [ %count, %if.then.i ], [ %count, %if.end.i ]
  call void @mutex_unlock(ptr noundef %conf_mutex) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #16
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_mem_value_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp = icmp slt i64 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %call = tail call noalias ptr @vmalloc(i32 noundef %count) #21
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end2.exit_crit_edge, label %if.end5

if.end2.exit_crit_edge:                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end5:                                          ; preds = %if.end2
  %state = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 103
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 32
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.294)
  switch i32 %5, label %if.end5.exit_crit_edge [
    i32 1, label %if.end5.if.end10_crit_edge
    i32 5, label %if.end5.if.end10_crit_edge47
  ]

if.end5.if.end10_crit_edge47:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.end5.exit_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end10:                                         ; preds = %if.end5.if.end10_crit_edge, %if.end5.if.end10_crit_edge47
  %7 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ppos, align 8
  %conv = trunc i64 %8 to i32
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 34, i32 1
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %diag_read.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %diag_read.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %diag_read.i, align 4
  %call.i = tail call i32 %12(ptr noundef %1, i32 noundef %conv, ptr noundef nonnull %call, i32 noundef %count) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.end8.i.i, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ppos, align 8
  %conv14 = trunc i64 %14 to i32
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.226, i32 noundef %conv14, i32 noundef %call.i)
  br label %exit

if.end8.i.i:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp9.i.i = icmp slt i32 %count, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.exit_crit_edge, label %if.then27.i.i, !prof !691

land.rhs16.i.i.exit_crit_edge:                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.227, i32 noundef 230, i32 noundef 9, ptr noundef null) #16
  br label %exit

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  tail call void @__check_object_size(ptr noundef nonnull %call, i32 noundef %count, i1 noundef zeroext true) #16
  tail call void @__might_fault(ptr noundef nonnull @.str.229, i32 noundef 174) #16
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %if.then.i.i.i.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.exit_crit_edge:                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %15 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %count, i32 -1226833920) #24, !srcloc !706
  %asmresult.i.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.exit_crit_edge

if.end.i.i.exit_crit_edge:                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call, i32 noundef %count) #16
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %user_buf, ptr noundef nonnull %call, i32 noundef %count) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool17.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool17.not, label %if.end19, label %copy_to_user.exit.exit_crit_edge

copy_to_user.exit.exit_crit_edge:                 ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end19:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #18
  %conv20 = zext i32 %count to i64
  %16 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ppos, align 8
  %add = add i64 %17, %conv20
  store i64 %add, ptr %ppos, align 8
  br label %exit

exit:                                             ; preds = %if.end19, %copy_to_user.exit.exit_crit_edge, %if.end.i.i.exit_crit_edge, %if.then.i.i.i.exit_crit_edge, %if.then27.i.i, %land.rhs16.i.i.exit_crit_edge, %if.then13, %if.end5.exit_crit_edge, %if.end2.exit_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.then13 ], [ %count, %if.end19 ], [ -12, %if.end2.exit_crit_edge ], [ -100, %if.end5.exit_crit_edge ], [ -14, %copy_to_user.exit.exit_crit_edge ], [ -14, %if.then.i.i.i.exit_crit_edge ], [ -14, %if.end.i.i.exit_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.exit_crit_edge ]
  tail call void @vfree(ptr noundef %call) #16
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #16
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_mem_value_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp = icmp slt i64 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %call = tail call noalias ptr @vmalloc(i32 noundef %count) #21
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end2.exit_crit_edge, label %if.end5

if.end2.exit_crit_edge:                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end5:                                          ; preds = %if.end2
  %state = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 103
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 32
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.295)
  switch i32 %5, label %if.end5.exit_crit_edge [
    i32 1, label %if.end5.if.end8.i.i_crit_edge
    i32 5, label %if.end5.if.end8.i.i_crit_edge51
  ]

if.end5.if.end8.i.i_crit_edge51:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i.i

if.end5.if.end8.i.i_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i.i

if.end5.exit_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end8.i.i:                                      ; preds = %if.end5.if.end8.i.i_crit_edge, %if.end5.if.end8.i.i_crit_edge51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp9.i.i = icmp slt i32 %count, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.exit_crit_edge, label %if.then27.i.i, !prof !691

land.rhs16.i.i.exit_crit_edge:                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.227, i32 noundef 230, i32 noundef 9, ptr noundef null) #16
  br label %exit

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  tail call void @__check_object_size(ptr noundef nonnull %call, i32 noundef %count, i1 noundef zeroext false) #16
  tail call void @__might_fault(ptr noundef nonnull @.str.229, i32 noundef 156) #16
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %if.then.i.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.then11.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %count, i32 -1226833920) #24, !srcloc !707
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !691

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef %count) #16
  %8 = tail call i32 @llvm.read_register.i32(metadata !679) #16
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !708
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !710
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call, ptr noundef %user_buf, i32 noundef %count) #16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #16, !srcloc !709
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !710
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end14, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !691

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i_crit_edge
  %res.0.i.i45 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %count, %if.then.i.i.i.if.then11.i.i_crit_edge ], [ %count, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %count, %res.0.i.i45
  %add.ptr.i.i = getelementptr i8, ptr %call, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i45)
  br label %exit

if.end14:                                         ; preds = %if.end.i.i
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 34, i32 1
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %diag_write.i = getelementptr inbounds %struct.ath10k_hif_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %diag_write.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %diag_write.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end14.if.then17_crit_edge, label %ath10k_hif_diag_write.exit

if.end14.if.then17_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17

ath10k_hif_diag_write.exit:                       ; preds = %if.end14
  %16 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ppos, align 8
  %conv = trunc i64 %17 to i32
  %call.i = tail call i32 %15(ptr noundef %1, i32 noundef %conv, ptr noundef nonnull %call, i32 noundef %count) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %if.end19, label %ath10k_hif_diag_write.exit.if.then17_crit_edge

ath10k_hif_diag_write.exit.if.then17_crit_edge:   ; preds = %ath10k_hif_diag_write.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17

if.then17:                                        ; preds = %ath10k_hif_diag_write.exit.if.then17_crit_edge, %if.end14.if.then17_crit_edge
  %retval.0.i50 = phi i32 [ %call.i, %ath10k_hif_diag_write.exit.if.then17_crit_edge ], [ -95, %if.end14.if.then17_crit_edge ]
  %18 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %ppos, align 8
  %conv18 = trunc i64 %19 to i32
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.230, i32 noundef %conv18, i32 noundef %retval.0.i50)
  br label %exit

if.end19:                                         ; preds = %ath10k_hif_diag_write.exit
  call void @__sanitizer_cov_trace_pc() #18
  %conv20 = zext i32 %count to i64
  %20 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ppos, align 8
  %add = add i64 %21, %conv20
  store i64 %add, ptr %ppos, align 8
  br label %exit

exit:                                             ; preds = %if.end19, %if.then17, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.exit_crit_edge, %if.end5.exit_crit_edge, %if.end2.exit_crit_edge
  %ret.0 = phi i32 [ %retval.0.i50, %if.then17 ], [ %count, %if.end19 ], [ -12, %if.end2.exit_crit_edge ], [ -100, %if.end5.exit_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.exit_crit_edge ]
  tail call void @vfree(ptr noundef %call) #16
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #16
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_read_chip_id(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [50 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf) #16
  %2 = call ptr @memset(ptr %buf, i32 255, i32 50)
  %bus_param = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 136
  %3 = ptrtoint ptr %bus_param to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bus_param, align 4
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 50, ptr noundef nonnull @.str.231, i32 noundef %4) #16
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #16
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf) #16
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_read_htt_stats_mask(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #16
  %htt_stats_mask = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 4
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %3 = ptrtoint ptr %htt_stats_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %htt_stats_mask, align 4
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.232, i32 noundef %4) #16
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #16
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_write_htt_stats_mask(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #16
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mask, align 4, !annotation !689
  %call = call i32 @kstrtoul_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %mask) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %4)
  %cmp = icmp ugt i32 %4, 131071
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask, align 4
  %htt_stats_mask = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 4
  %7 = ptrtoint ptr %htt_stats_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %htt_stats_mask, align 4
  %call3 = call fastcc i32 @ath10k_debug_htt_stats_req(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %spec.select = select i1 %tobool4.not, i32 %count, i32 %call3
  call void @mutex_unlock(ptr noundef %conf_mutex) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end2 ], [ %call, %entry.cleanup_crit_edge ], [ -7, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoul_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_read_htt_max_amsdu_ampdu(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #16
  %2 = call ptr @memset(ptr %buf, i32 255, i32 64)
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %max_num_amsdu = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 44, i32 6
  %3 = ptrtoint ptr %max_num_amsdu to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %max_num_amsdu, align 4
  %max_num_ampdu = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 44, i32 7
  %5 = ptrtoint ptr %max_num_ampdu to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %max_num_ampdu, align 1
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #16
  %conv = zext i8 %4 to i32
  %conv3 = zext i8 %6 to i32
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 64, ptr noundef nonnull @.str.233, i32 noundef %conv, i32 noundef %conv3) #16
  %call5 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #16
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_write_htt_max_amsdu_ampdu(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  %amsdu = alloca i32, align 4
  %ampdu = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #16
  %2 = call ptr @memset(ptr %buf, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %amsdu) #16
  %3 = ptrtoint ptr %amsdu to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %amsdu, align 4, !annotation !689
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ampdu) #16
  %4 = ptrtoint ptr %ampdu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %ampdu, align 4, !annotation !689
  %call = call i32 @simple_write_to_buffer(ptr noundef nonnull %buf, i32 noundef 63, ptr noundef %ppos, ptr noundef %user_buf, i32 noundef %count) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.234, ptr noundef nonnull %amsdu, ptr noundef nonnull %ampdu)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 2
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %tx_ops.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 44, i32 29
  %5 = ptrtoint ptr %tx_ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx_ops.i, align 8
  %htt_h2t_aggr_cfg_msg.i = getelementptr inbounds %struct.ath10k_htt_tx_ops, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %htt_h2t_aggr_cfg_msg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %htt_h2t_aggr_cfg_msg.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end5.out_crit_edge, label %ath10k_htt_h2t_aggr_cfg_msg.exit

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

ath10k_htt_h2t_aggr_cfg_msg.exit:                 ; preds = %if.end5
  %htt = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 44
  %9 = ptrtoint ptr %amsdu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %amsdu, align 4
  %conv6 = trunc i32 %10 to i8
  %11 = ptrtoint ptr %ampdu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ampdu, align 4
  %conv = trunc i32 %12 to i8
  %call.i = call i32 %8(ptr noundef %htt, i8 noundef zeroext %conv, i8 noundef zeroext %conv6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end9, label %ath10k_htt_h2t_aggr_cfg_msg.exit.out_crit_edge

ath10k_htt_h2t_aggr_cfg_msg.exit.out_crit_edge:   ; preds = %ath10k_htt_h2t_aggr_cfg_msg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end9:                                          ; preds = %ath10k_htt_h2t_aggr_cfg_msg.exit
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %amsdu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %amsdu, align 4
  %conv10 = trunc i32 %14 to i8
  %max_num_amsdu = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 44, i32 6
  %15 = ptrtoint ptr %max_num_amsdu to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv10, ptr %max_num_amsdu, align 4
  %16 = ptrtoint ptr %ampdu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ampdu, align 4
  %conv12 = trunc i32 %17 to i8
  %max_num_ampdu = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 44, i32 7
  %18 = ptrtoint ptr %max_num_ampdu to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv12, ptr %max_num_ampdu, align 1
  br label %out

out:                                              ; preds = %if.end9, %ath10k_htt_h2t_aggr_cfg_msg.exit.out_crit_edge, %if.end5.out_crit_edge
  %res.0 = phi i32 [ %call.i, %ath10k_htt_h2t_aggr_cfg_msg.exit.out_crit_edge ], [ %count, %if.end9 ], [ -95, %if.end5.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %conf_mutex) #16
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.0, %out ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ampdu) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %amsdu) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #16
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_read_fw_dbglog(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [96 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %buf) #16
  %2 = call ptr @memset(ptr %buf, i32 255, i32 96)
  %fw_dbglog_mask = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 12
  %3 = ptrtoint ptr %fw_dbglog_mask to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %fw_dbglog_mask, align 16
  %fw_dbglog_level = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 13
  %5 = ptrtoint ptr %fw_dbglog_level to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_dbglog_level, align 8
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 96, ptr noundef nonnull @.str.235, i64 noundef %4, i32 noundef %6) #16
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %buf) #16
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_write_fw_dbglog(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [96 x i8], align 1
  %log_level = alloca i32, align 4
  %mask = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %buf) #16
  %2 = call ptr @memset(ptr %buf, i32 0, i32 96)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %log_level) #16
  %3 = ptrtoint ptr %log_level to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %log_level, align 4, !annotation !689
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mask) #16
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %mask, align 8, !annotation !689
  %call = call i32 @simple_write_to_buffer(ptr noundef nonnull %buf, i32 noundef 95, ptr noundef %ppos, ptr noundef %user_buf, i32 noundef %count) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.236, ptr noundef nonnull %mask, ptr noundef nonnull %log_level)
  %5 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.296)
  switch i32 %call2, label %if.end.if.end7_crit_edge [
    i32 0, label %if.end.cleanup_crit_edge
    i32 1, label %if.then6
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %log_level to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %log_level, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %mask, align 8
  %fw_dbglog_mask = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 12
  %9 = ptrtoint ptr %fw_dbglog_mask to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %fw_dbglog_mask, align 16
  %10 = ptrtoint ptr %log_level to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %log_level, align 4
  %fw_dbglog_level = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 13
  %12 = ptrtoint ptr %fw_dbglog_level to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %fw_dbglog_level, align 8
  %state = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 103
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp9 = icmp eq i32 %14, 1
  br i1 %cmp9, label %if.then10, label %if.end7.exit_crit_edge

if.end7.exit_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.then10:                                        ; preds = %if.end7
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 11
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %gen_dbglog_cfg.i = getelementptr inbounds %struct.wmi_ops, ptr %16, i32 0, i32 59
  %17 = ptrtoint ptr %gen_dbglog_cfg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gen_dbglog_cfg.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.then10.if.then17_crit_edge, label %if.end.i

if.then10.if.then17_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17

if.end.i:                                         ; preds = %if.then10
  %call.i = call ptr %18(ptr noundef %1, i64 noundef %8, i32 noundef %11) #16
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %19 = ptrtoint ptr %call.i to i32
  br label %ath10k_wmi_dbglog_cfg.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %cmd.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 7
  %20 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cmd.i, align 4
  %dbglog_cfg_cmdid.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %21, i32 0, i32 104
  %22 = ptrtoint ptr %dbglog_cfg_cmdid.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dbglog_cfg_cmdid.i, align 4
  %call9.i = call i32 @ath10k_wmi_cmd_send(ptr noundef %1, ptr noundef %call.i, i32 noundef %23) #16
  br label %ath10k_wmi_dbglog_cfg.exit

ath10k_wmi_dbglog_cfg.exit:                       ; preds = %if.end7.i, %if.then5.i
  %retval.0.i = phi i32 [ %19, %if.then5.i ], [ %call9.i, %if.end7.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool16.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool16.not, label %ath10k_wmi_dbglog_cfg.exit.exit_crit_edge, label %ath10k_wmi_dbglog_cfg.exit.if.then17_crit_edge

ath10k_wmi_dbglog_cfg.exit.if.then17_crit_edge:   ; preds = %ath10k_wmi_dbglog_cfg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17

ath10k_wmi_dbglog_cfg.exit.exit_crit_edge:        ; preds = %ath10k_wmi_dbglog_cfg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.then17:                                        ; preds = %ath10k_wmi_dbglog_cfg.exit.if.then17_crit_edge, %if.then10.if.then17_crit_edge
  %retval.0.i42 = phi i32 [ %retval.0.i, %ath10k_wmi_dbglog_cfg.exit.if.then17_crit_edge ], [ -95, %if.then10.if.then17_crit_edge ]
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.237, i32 noundef %retval.0.i42)
  br label %exit

exit:                                             ; preds = %if.then17, %ath10k_wmi_dbglog_cfg.exit.exit_crit_edge, %if.end7.exit_crit_edge
  %ret.0 = phi i32 [ %retval.0.i42, %if.then17 ], [ %count, %ath10k_wmi_dbglog_cfg.exit.exit_crit_edge ], [ %count, %if.end7.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %conf_mutex) #16
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mask) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %log_level) #16
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %buf) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_debug_cal_data_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %cal_data = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 16
  %2 = ptrtoint ptr %cal_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cal_data, align 4
  %cal_data_len = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 45, i32 15
  %4 = ptrtoint ptr %cal_data_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cal_data_len, align 8
  %call = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef %3, i32 noundef %5) #16
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_debug_cal_data_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %state = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 32
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.297)
  switch i32 %3, label %entry.if.end_crit_edge [
    i32 1, label %entry.if.then_crit_edge
    i32 5, label %entry.if.then_crit_edge9
  ]

entry.if.then_crit_edge9:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge9
  tail call fastcc void @ath10k_debug_cal_data_fetch(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %private_data, align 4
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_read_nf_cal_period(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #16
  %nf_cal_period = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 15
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %3 = ptrtoint ptr %nf_cal_period to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nf_cal_period, align 16
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.238, i32 noundef %4) #16
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #16
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_write_nf_cal_period(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %period = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %period) #16
  %2 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %period, align 4, !annotation !689
  %call = call i32 @kstrtoul_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %period) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %period, align 4
  %5 = add i32 %4, -60001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -60000, i32 %5)
  %6 = icmp ult i32 %5, -60000
  br i1 %6, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %7 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %period, align 4
  %nf_cal_period = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 15
  %9 = ptrtoint ptr %nf_cal_period to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %nf_cal_period, align 16
  %state = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 103
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp6.not = icmp eq i32 %11, 1
  br i1 %cmp6.not, label %if.end8, label %if.end5.exit_crit_edge

if.end5.exit_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end8:                                          ; preds = %if.end5
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 11
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %gen_pdev_set_param.i = getelementptr inbounds %struct.wmi_ops, ptr %13, i32 0, i32 26
  %14 = ptrtoint ptr %gen_pdev_set_param.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gen_pdev_set_param.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end8.if.then13_crit_edge, label %if.end.i

if.end8.if.then13_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then13

if.end.i:                                         ; preds = %if.end8
  %pdev_param = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 9
  %16 = ptrtoint ptr %pdev_param to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev_param, align 4
  %cal_period = getelementptr inbounds %struct.wmi_pdev_param_map, ptr %17, i32 0, i32 48
  %18 = ptrtoint ptr %cal_period to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cal_period, align 4
  %call.i = call ptr %15(ptr noundef %1, i32 noundef %19, i32 noundef %8) #16
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %call.i to i32
  br label %ath10k_wmi_pdev_set_param.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %cmd.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 7
  %21 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cmd.i, align 4
  %pdev_set_param_cmdid.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %pdev_set_param_cmdid.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pdev_set_param_cmdid.i, align 4
  %call9.i = call i32 @ath10k_wmi_cmd_send(ptr noundef %1, ptr noundef %call.i, i32 noundef %24) #16
  br label %ath10k_wmi_pdev_set_param.exit

ath10k_wmi_pdev_set_param.exit:                   ; preds = %if.end7.i, %if.then5.i
  %retval.0.i = phi i32 [ %20, %if.then5.i ], [ %call9.i, %if.end7.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool12.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool12.not, label %ath10k_wmi_pdev_set_param.exit.exit_crit_edge, label %ath10k_wmi_pdev_set_param.exit.if.then13_crit_edge

ath10k_wmi_pdev_set_param.exit.if.then13_crit_edge: ; preds = %ath10k_wmi_pdev_set_param.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then13

ath10k_wmi_pdev_set_param.exit.exit_crit_edge:    ; preds = %ath10k_wmi_pdev_set_param.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.then13:                                        ; preds = %ath10k_wmi_pdev_set_param.exit.if.then13_crit_edge, %if.end8.if.then13_crit_edge
  %retval.0.i33 = phi i32 [ %retval.0.i, %ath10k_wmi_pdev_set_param.exit.if.then13_crit_edge ], [ -95, %if.end8.if.then13_crit_edge ]
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.239, i32 noundef %retval.0.i33)
  br label %exit

exit:                                             ; preds = %if.then13, %ath10k_wmi_pdev_set_param.exit.exit_crit_edge, %if.end5.exit_crit_edge
  %ret.0 = phi i32 [ %retval.0.i33, %if.then13 ], [ %count, %if.end5.exit_crit_edge ], [ %count, %ath10k_wmi_pdev_set_param.exit.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %conf_mutex) #16
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %period) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_read_ani_enable(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #16
  %ani_enabled = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 28
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %3 = ptrtoint ptr %ani_enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ani_enabled, align 8, !range !696
  %5 = zext i8 %4 to i32
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.238, i32 noundef %5) #16
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #16
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_write_ani_enable(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable) #16
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %enable, align 1, !annotation !689
  %call = call i32 @kstrtou8_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %enable) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %ani_enabled = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 28
  %3 = ptrtoint ptr %ani_enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ani_enabled, align 8, !range !696
  %5 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enable, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %6)
  %cmp = icmp eq i8 %4, %6
  br i1 %cmp, label %if.end.exit_crit_edge, label %if.end5

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end5:                                          ; preds = %if.end
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 11
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %gen_pdev_set_param.i = getelementptr inbounds %struct.wmi_ops, ptr %8, i32 0, i32 26
  %9 = ptrtoint ptr %gen_pdev_set_param.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gen_pdev_set_param.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end5.if.then9_crit_edge, label %if.end.i

if.end5.if.then9_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then9

if.end.i:                                         ; preds = %if.end5
  %pdev_param = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 9
  %11 = ptrtoint ptr %pdev_param to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev_param, align 4
  %ani_enable = getelementptr inbounds %struct.wmi_pdev_param_map, ptr %12, i32 0, i32 36
  %13 = ptrtoint ptr %ani_enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ani_enable, align 4
  %conv2 = zext i8 %6 to i32
  %call.i = call ptr %10(ptr noundef %1, i32 noundef %14, i32 noundef %conv2) #16
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %call.i to i32
  br label %ath10k_wmi_pdev_set_param.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %cmd.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 7
  %16 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cmd.i, align 4
  %pdev_set_param_cmdid.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %pdev_set_param_cmdid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pdev_set_param_cmdid.i, align 4
  %call9.i = call i32 @ath10k_wmi_cmd_send(ptr noundef %1, ptr noundef %call.i, i32 noundef %19) #16
  br label %ath10k_wmi_pdev_set_param.exit

ath10k_wmi_pdev_set_param.exit:                   ; preds = %if.end7.i, %if.then5.i
  %retval.0.i = phi i32 [ %15, %if.then5.i ], [ %call9.i, %if.end7.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool8.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool8.not, label %if.end10, label %ath10k_wmi_pdev_set_param.exit.if.then9_crit_edge

ath10k_wmi_pdev_set_param.exit.if.then9_crit_edge: ; preds = %ath10k_wmi_pdev_set_param.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then9

if.then9:                                         ; preds = %ath10k_wmi_pdev_set_param.exit.if.then9_crit_edge, %if.end5.if.then9_crit_edge
  %retval.0.i28 = phi i32 [ %retval.0.i, %ath10k_wmi_pdev_set_param.exit.if.then9_crit_edge ], [ -95, %if.end5.if.then9_crit_edge ]
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.240, i32 noundef %retval.0.i28)
  br label %exit

if.end10:                                         ; preds = %ath10k_wmi_pdev_set_param.exit
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool11 = icmp ne i8 %21, 0
  %frombool = zext i1 %tobool11 to i8
  %22 = ptrtoint ptr %ani_enabled to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool, ptr %ani_enabled, align 8
  br label %exit

exit:                                             ; preds = %if.end10, %if.then9, %if.end.exit_crit_edge
  %ret.0 = phi i32 [ %retval.0.i28, %if.then9 ], [ %count, %if.end10 ], [ %count, %if.end.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %conf_mutex) #16
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_write_simulate_radar(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %arvifs = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 83
  %2 = ptrtoint ptr %arvifs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arvifs, align 8
  %is_started = getelementptr inbounds %struct.ath10k_vif, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %is_started to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_started, align 4, !range !696
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %hw = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_radar_detected(ptr noundef %7) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_radar_detected(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_read_dfs_stats(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %tmp = alloca %struct.ath_dfs_pool_stats, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 8000) #23
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %dfs_detector = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 113
  %3 = ptrtoint ptr %dfs_detector to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dfs_detector, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 8000, ptr noundef nonnull @.str.241) #16
  br label %exit

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %dfs_pool_stats = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tmp) #16
  %get_stats = getelementptr inbounds %struct.dfs_pattern_detector, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %get_stats to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_stats, align 4
  call void %6(ptr nonnull sret(%struct.ath_dfs_pool_stats) align 4 %tmp, ptr noundef nonnull %4) #16
  %7 = call ptr @memcpy(ptr %dfs_pool_stats, ptr %tmp, i32 28)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tmp) #16
  %call9 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 8000, ptr noundef nonnull @.str.242) #16
  %add.ptr11 = getelementptr i8, ptr %call7.i.i, i32 %call9
  %sub12 = sub i32 8000, %call9
  %dfs_stats = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 7
  %8 = ptrtoint ptr %dfs_stats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dfs_stats, align 16
  %call14 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr11, i32 noundef %sub12, ptr noundef nonnull @.str.243, ptr noundef nonnull @.str.244, i32 noundef %9) #16
  %add15 = add i32 %call14, %call9
  %add.ptr16 = getelementptr i8, ptr %call7.i.i, i32 %add15
  %sub17 = sub i32 8000, %add15
  %pulses_total = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 7, i32 1
  %10 = ptrtoint ptr %pulses_total to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pulses_total, align 4
  %call20 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr16, i32 noundef %sub17, ptr noundef nonnull @.str.243, ptr noundef nonnull @.str.245, i32 noundef %11) #16
  %add21 = add i32 %call20, %add15
  %add.ptr22 = getelementptr i8, ptr %call7.i.i, i32 %add21
  %sub23 = sub i32 8000, %add21
  %pulses_detected = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 7, i32 2
  %12 = ptrtoint ptr %pulses_detected to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pulses_detected, align 8
  %call26 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22, i32 noundef %sub23, ptr noundef nonnull @.str.243, ptr noundef nonnull @.str.246, i32 noundef %13) #16
  %add27 = add i32 %call26, %add21
  %add.ptr28 = getelementptr i8, ptr %call7.i.i, i32 %add27
  %sub29 = sub i32 8000, %add27
  %pulses_discarded = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 7, i32 3
  %14 = ptrtoint ptr %pulses_discarded to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pulses_discarded, align 4
  %call32 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr28, i32 noundef %sub29, ptr noundef nonnull @.str.243, ptr noundef nonnull @.str.247, i32 noundef %15) #16
  %add33 = add i32 %call32, %add27
  %add.ptr34 = getelementptr i8, ptr %call7.i.i, i32 %add33
  %sub35 = sub i32 8000, %add33
  %radar_detected = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 7, i32 4
  %16 = ptrtoint ptr %radar_detected to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %radar_detected, align 16
  %call38 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr34, i32 noundef %sub35, ptr noundef nonnull @.str.243, ptr noundef nonnull @.str.248, i32 noundef %17) #16
  %add39 = add i32 %call38, %add33
  %add.ptr40 = getelementptr i8, ptr %call7.i.i, i32 %add39
  %sub41 = sub i32 8000, %add39
  %call42 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40, i32 noundef %sub41, ptr noundef nonnull @.str.249) #16
  %add43 = add i32 %add39, %call42
  %add.ptr44 = getelementptr i8, ptr %call7.i.i, i32 %add43
  %sub45 = sub i32 8000, %add43
  %18 = ptrtoint ptr %dfs_pool_stats to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dfs_pool_stats, align 4
  %call48 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr44, i32 noundef %sub45, ptr noundef nonnull @.str.243, ptr noundef nonnull @.str.250, i32 noundef %19) #16
  %add49 = add i32 %call48, %add43
  %add.ptr50 = getelementptr i8, ptr %call7.i.i, i32 %add49
  %sub51 = sub i32 8000, %add49
  %pulse_allocated = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 8, i32 1
  %20 = ptrtoint ptr %pulse_allocated to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pulse_allocated, align 4
  %call54 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr50, i32 noundef %sub51, ptr noundef nonnull @.str.243, ptr noundef nonnull @.str.251, i32 noundef %21) #16
  %add55 = add i32 %call54, %add49
  %add.ptr56 = getelementptr i8, ptr %call7.i.i, i32 %add55
  %sub57 = sub i32 8000, %add55
  %pulse_alloc_error = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 8, i32 2
  %22 = ptrtoint ptr %pulse_alloc_error to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pulse_alloc_error, align 4
  %call60 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr56, i32 noundef %sub57, ptr noundef nonnull @.str.243, ptr noundef nonnull @.str.252, i32 noundef %23) #16
  %add61 = add i32 %call60, %add55
  %add.ptr62 = getelementptr i8, ptr %call7.i.i, i32 %add61
  %sub63 = sub i32 8000, %add61
  %pulse_used = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 8, i32 3
  %24 = ptrtoint ptr %pulse_used to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pulse_used, align 4
  %call66 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr62, i32 noundef %sub63, ptr noundef nonnull @.str.243, ptr noundef nonnull @.str.253, i32 noundef %25) #16
  %add67 = add i32 %call66, %add61
  %add.ptr68 = getelementptr i8, ptr %call7.i.i, i32 %add67
  %sub69 = sub i32 8000, %add67
  %pseq_allocated = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 8, i32 4
  %26 = ptrtoint ptr %pseq_allocated to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pseq_allocated, align 4
  %call72 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr68, i32 noundef %sub69, ptr noundef nonnull @.str.243, ptr noundef nonnull @.str.254, i32 noundef %27) #16
  %add73 = add i32 %call72, %add67
  %add.ptr74 = getelementptr i8, ptr %call7.i.i, i32 %add73
  %sub75 = sub i32 8000, %add73
  %pseq_alloc_error = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 8, i32 5
  %28 = ptrtoint ptr %pseq_alloc_error to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pseq_alloc_error, align 4
  %call78 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr74, i32 noundef %sub75, ptr noundef nonnull @.str.243, ptr noundef nonnull @.str.255, i32 noundef %29) #16
  %add79 = add i32 %call78, %add73
  %add.ptr80 = getelementptr i8, ptr %call7.i.i, i32 %add79
  %sub81 = sub i32 8000, %add79
  %pseq_used = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 8, i32 6
  %30 = ptrtoint ptr %pseq_used to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pseq_used, align 4
  %call84 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr80, i32 noundef %sub81, ptr noundef nonnull @.str.243, ptr noundef nonnull @.str.256, i32 noundef %31) #16
  %add85 = add i32 %call84, %add79
  br label %exit

exit:                                             ; preds = %if.end4, %if.then2
  %len.0 = phi i32 [ %add85, %if.end4 ], [ %call3, %if.then2 ]
  %32 = call i32 @llvm.smin.i32(i32 %len.0, i32 8000)
  %call89 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %32) #16
  call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call89, %exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_read_pktlog_filter(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #16
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %2, i32 0, i32 80
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %pktlog_filter = getelementptr inbounds %struct.ath10k, ptr %2, i32 0, i32 117
  %3 = ptrtoint ptr %pktlog_filter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pktlog_filter, align 4
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.257, i32 noundef %4) #16
  call void @mutex_unlock(ptr noundef %conf_mutex) #16
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #16
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_write_pktlog_filter(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %filter = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %filter) #16
  %2 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %filter, align 4, !annotation !689
  %call = call i32 @kstrtouint_from_user(ptr noundef %ubuf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %filter) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %state = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 103
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  %5 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %filter, align 4
  %pktlog_filter3 = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 117
  br i1 %cmp.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %pktlog_filter3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %pktlog_filter3, align 4
  br label %out

if.end2:                                          ; preds = %if.end
  %8 = ptrtoint ptr %pktlog_filter3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pktlog_filter3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %9)
  %cmp4 = icmp eq i32 %6, %9
  br i1 %cmp4, label %if.end2.out_crit_edge, label %if.end6

if.end2.out_crit_edge:                            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end6:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not = icmp eq i32 %6, 0
  %ops.i40 = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 11
  %10 = ptrtoint ptr %ops.i40 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i40, align 4
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  %gen_pktlog_enable.i = getelementptr inbounds %struct.wmi_ops, ptr %11, i32 0, i32 60
  %12 = ptrtoint ptr %gen_pktlog_enable.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gen_pktlog_enable.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then8.if.then11_crit_edge, label %if.end.i

if.then8.if.then11_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11

if.end.i:                                         ; preds = %if.then8
  %call.i = call ptr %13(ptr noundef %1, i32 noundef %6) #16
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %call.i to i32
  br label %ath10k_wmi_pdev_pktlog_enable.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %cmd.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 7
  %15 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmd.i, align 4
  %pdev_pktlog_enable_cmdid.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %pdev_pktlog_enable_cmdid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pdev_pktlog_enable_cmdid.i, align 4
  %call9.i = call i32 @ath10k_wmi_cmd_send(ptr noundef %1, ptr noundef %call.i, i32 noundef %18) #16
  br label %ath10k_wmi_pdev_pktlog_enable.exit

ath10k_wmi_pdev_pktlog_enable.exit:               ; preds = %if.end7.i, %if.then5.i
  %retval.0.i = phi i32 [ %14, %if.then5.i ], [ %call9.i, %if.end7.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool10.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool10.not, label %ath10k_wmi_pdev_pktlog_enable.exit.if.end18_crit_edge, label %ath10k_wmi_pdev_pktlog_enable.exit.if.then11_crit_edge

ath10k_wmi_pdev_pktlog_enable.exit.if.then11_crit_edge: ; preds = %ath10k_wmi_pdev_pktlog_enable.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11

ath10k_wmi_pdev_pktlog_enable.exit.if.end18_crit_edge: ; preds = %ath10k_wmi_pdev_pktlog_enable.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then11:                                        ; preds = %ath10k_wmi_pdev_pktlog_enable.exit.if.then11_crit_edge, %if.then8.if.then11_crit_edge
  %retval.0.i52 = phi i32 [ %retval.0.i, %ath10k_wmi_pdev_pktlog_enable.exit.if.then11_crit_edge ], [ -95, %if.then8.if.then11_crit_edge ]
  %19 = ptrtoint ptr %pktlog_filter3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pktlog_filter3, align 4
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef %20, i32 noundef %retval.0.i52)
  br label %out

if.else:                                          ; preds = %if.end6
  %gen_pktlog_disable.i = getelementptr inbounds %struct.wmi_ops, ptr %11, i32 0, i32 61
  %21 = ptrtoint ptr %gen_pktlog_disable.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gen_pktlog_disable.i, align 4
  %tobool.not.i41 = icmp eq ptr %22, null
  br i1 %tobool.not.i41, label %if.else.if.then16_crit_edge, label %if.end.i44

if.else.if.then16_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then16

if.end.i44:                                       ; preds = %if.else
  %call.i42 = call ptr %22(ptr noundef %1) #16
  %cmp.i.i43 = icmp ugt ptr %call.i42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i43, label %if.then5.i45, label %if.end7.i48

if.then5.i45:                                     ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #18
  %23 = ptrtoint ptr %call.i42 to i32
  br label %ath10k_wmi_pdev_pktlog_disable.exit

if.end7.i48:                                      ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #18
  %cmd.i46 = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 7
  %24 = ptrtoint ptr %cmd.i46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmd.i46, align 4
  %pdev_pktlog_disable_cmdid.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %pdev_pktlog_disable_cmdid.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pdev_pktlog_disable_cmdid.i, align 4
  %call9.i47 = call i32 @ath10k_wmi_cmd_send(ptr noundef %1, ptr noundef %call.i42, i32 noundef %27) #16
  br label %ath10k_wmi_pdev_pktlog_disable.exit

ath10k_wmi_pdev_pktlog_disable.exit:              ; preds = %if.end7.i48, %if.then5.i45
  %retval.0.i49 = phi i32 [ %23, %if.then5.i45 ], [ %call9.i47, %if.end7.i48 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i49)
  %tobool15.not = icmp eq i32 %retval.0.i49, 0
  br i1 %tobool15.not, label %ath10k_wmi_pdev_pktlog_disable.exit.if.end18_crit_edge, label %ath10k_wmi_pdev_pktlog_disable.exit.if.then16_crit_edge

ath10k_wmi_pdev_pktlog_disable.exit.if.then16_crit_edge: ; preds = %ath10k_wmi_pdev_pktlog_disable.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then16

ath10k_wmi_pdev_pktlog_disable.exit.if.end18_crit_edge: ; preds = %ath10k_wmi_pdev_pktlog_disable.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then16:                                        ; preds = %ath10k_wmi_pdev_pktlog_disable.exit.if.then16_crit_edge, %if.else.if.then16_crit_edge
  %retval.0.i4955 = phi i32 [ %retval.0.i49, %ath10k_wmi_pdev_pktlog_disable.exit.if.then16_crit_edge ], [ -95, %if.else.if.then16_crit_edge ]
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.25, i32 noundef %retval.0.i4955)
  br label %out

if.end18:                                         ; preds = %ath10k_wmi_pdev_pktlog_disable.exit.if.end18_crit_edge, %ath10k_wmi_pdev_pktlog_enable.exit.if.end18_crit_edge
  %28 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %filter, align 4
  %30 = ptrtoint ptr %pktlog_filter3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %pktlog_filter3, align 4
  br label %out

out:                                              ; preds = %if.end18, %if.then16, %if.then11, %if.end2.out_crit_edge, %if.then1
  %ret.0 = phi i32 [ %count, %if.then1 ], [ %retval.0.i52, %if.then11 ], [ %count, %if.end18 ], [ %retval.0.i4955, %if.then16 ], [ %count, %if.end2.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %conf_mutex) #16
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %filter) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_read_quiet_period(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #16
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %2, i32 0, i32 80
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %quiet_period = getelementptr inbounds %struct.ath10k, ptr %2, i32 0, i32 121, i32 3
  %3 = ptrtoint ptr %quiet_period to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %quiet_period, align 4
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.238, i32 noundef %4) #16
  call void @mutex_unlock(ptr noundef %conf_mutex) #16
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #16
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_write_quiet_period(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %period = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %period) #16
  %2 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %period, align 4, !annotation !689
  %call = call i32 @kstrtouint_from_user(ptr noundef %ubuf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %period) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %4)
  %cmp = icmp ult i32 %4, 25
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.258, i32 noundef %4)
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %5 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %period, align 4
  %quiet_period = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 121, i32 3
  %7 = ptrtoint ptr %quiet_period to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %quiet_period, align 4
  call void @ath10k_thermal_set_throttling(ptr noundef %1) #16
  call void @mutex_unlock(ptr noundef %conf_mutex) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then1 ], [ %count, %if.end2 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %period) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath10k_thermal_set_throttling(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_tpc_stats_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @strlen(ptr noundef %1) #22
  %call1 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef %1, i32 noundef %call) #16
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_tpc_stats_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %state = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call noalias ptr @vmalloc(i32 noundef 1048576) #21
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end2.if.end.i_crit_edge, label %land.rhs.i

if.end2.if.end.i_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end2
  %dep_map.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !701

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1450, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end2.if.end.i_crit_edge
  %tpc_complete.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 11
  %5 = ptrtoint ptr %tpc_complete.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %tpc_complete.i, align 4
  %ops.i.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 11
  %6 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i.i, align 4
  %gen_pdev_get_tpc_config.i.i = getelementptr inbounds %struct.wmi_ops, ptr %7, i32 0, i32 82
  %8 = ptrtoint ptr %gen_pdev_get_tpc_config.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gen_pdev_get_tpc_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.if.then26.i_crit_edge, label %if.end.i.i

if.end.i.if.then26.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26.i

if.end.i.i:                                       ; preds = %if.end.i
  %call.i42.i = tail call ptr %9(ptr noundef %1, i32 noundef 1) #16
  %cmp.i.i.i = icmp ugt ptr %call.i42.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then5.i.i, label %if.end7.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %call.i42.i to i32
  br label %ath10k_wmi_pdev_get_tpc_config.exit.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %cmd.i.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 7
  %11 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cmd.i.i, align 4
  %pdev_get_tpc_config_cmdid.i.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %12, i32 0, i32 17
  %13 = ptrtoint ptr %pdev_get_tpc_config_cmdid.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pdev_get_tpc_config_cmdid.i.i, align 4
  %call9.i.i = tail call i32 @ath10k_wmi_cmd_send(ptr noundef %1, ptr noundef %call.i42.i, i32 noundef %14) #16
  br label %ath10k_wmi_pdev_get_tpc_config.exit.i

ath10k_wmi_pdev_get_tpc_config.exit.i:            ; preds = %if.end7.i.i, %if.then5.i.i
  %retval.0.i.i = phi i32 [ %10, %if.then5.i.i ], [ %call9.i.i, %if.end7.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool25.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %ath10k_wmi_pdev_get_tpc_config.exit.i.if.then26.i_crit_edge

ath10k_wmi_pdev_get_tpc_config.exit.i.if.then26.i_crit_edge: ; preds = %ath10k_wmi_pdev_get_tpc_config.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26.i

if.then26.i:                                      ; preds = %ath10k_wmi_pdev_get_tpc_config.exit.i.if.then26.i_crit_edge, %if.end.i.if.then26.i_crit_edge
  %retval.0.i45.i = phi i32 [ %retval.0.i.i, %ath10k_wmi_pdev_get_tpc_config.exit.i.if.then26.i_crit_edge ], [ -95, %if.end.i.if.then26.i_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.260, i32 noundef %retval.0.i45.i) #16
  br label %if.then5

if.end27.i:                                       ; preds = %ath10k_wmi_pdev_get_tpc_config.exit.i
  %call30.i = tail call i32 @wait_for_completion_timeout(ptr noundef %tpc_complete.i, i32 noundef 100) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp31.i = icmp eq i32 %call30.i, 0
  br i1 %cmp31.i, label %if.end27.i.if.then5_crit_edge, label %if.end6

if.end27.i.if.then5_crit_edge:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then5

if.then5:                                         ; preds = %if.end27.i.if.then5_crit_edge, %if.then26.i
  %retval.0.i.ph = phi i32 [ %retval.0.i45.i, %if.then26.i ], [ -110, %if.end27.i.if.then5_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.259, i32 noundef %retval.0.i.ph)
  tail call void @vfree(ptr noundef nonnull %call) #16
  br label %cleanup

if.end6:                                          ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  %tpc_stats = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 9
  %15 = ptrtoint ptr %tpc_stats to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tpc_stats, align 16
  tail call fastcc void @ath10k_tpc_stats_fill(ptr noundef %1, ptr noundef %16, ptr noundef nonnull %call)
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %17 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %retval.0.i.ph, %if.then5 ], [ -100, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_tpc_stats_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @vfree(ptr noundef %1) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_tpc_stats_fill(ptr noundef %ar, ptr noundef %tpc_stats, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #16
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %len, align 4
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %ar, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #16
  %tobool.not = icmp eq ptr %tpc_stats, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %ar, ptr noundef nonnull @.str.261)
  br label %unlock

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len, align 4
  %add.ptr = getelementptr i8, ptr %buf, i32 %2
  %sub = sub i32 1048576, %2
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.262) #16
  %add = add i32 %2, %call
  %add.ptr1 = getelementptr i8, ptr %buf, i32 %add
  %sub2 = sub i32 1048576, %add
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1, i32 noundef %sub2, ptr noundef nonnull @.str.263) #16
  %add4 = add i32 %add, %call3
  %add.ptr5 = getelementptr i8, ptr %buf, i32 %add4
  %sub6 = sub i32 1048576, %add4
  %chan_freq = getelementptr inbounds %struct.ath10k_tpc_stats, ptr %tpc_stats, i32 0, i32 1
  %3 = ptrtoint ptr %chan_freq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan_freq, align 4
  %phy_mode = getelementptr inbounds %struct.ath10k_tpc_stats, ptr %tpc_stats, i32 0, i32 2
  %5 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phy_mode, align 4
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr5, i32 noundef %sub6, ptr noundef nonnull @.str.264, i32 noundef %4, i32 noundef %6) #16
  %add8 = add i32 %add4, %call7
  %add.ptr9 = getelementptr i8, ptr %buf, i32 %add8
  %sub10 = sub i32 1048576, %add8
  %call11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9, i32 noundef %sub10, ptr noundef nonnull @.str.263) #16
  %add12 = add i32 %add8, %call11
  %add.ptr13 = getelementptr i8, ptr %buf, i32 %add12
  %sub14 = sub i32 1048576, %add12
  %ctl = getelementptr inbounds %struct.ath10k_tpc_stats, ptr %tpc_stats, i32 0, i32 8
  %7 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ctl, align 4
  %9 = ptrtoint ptr %tpc_stats to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tpc_stats, align 4
  %call15 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr13, i32 noundef %sub14, ptr noundef nonnull @.str.265, i32 noundef %8, i32 noundef %10) #16
  %add16 = add i32 %add12, %call15
  %add.ptr17 = getelementptr i8, ptr %buf, i32 %add16
  %sub18 = sub i32 1048576, %add16
  %twice_antenna_gain = getelementptr inbounds %struct.ath10k_tpc_stats, ptr %tpc_stats, i32 0, i32 5
  %11 = ptrtoint ptr %twice_antenna_gain to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %twice_antenna_gain, align 4
  %twice_antenna_reduction = getelementptr inbounds %struct.ath10k_tpc_stats, ptr %tpc_stats, i32 0, i32 3
  %13 = ptrtoint ptr %twice_antenna_reduction to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %twice_antenna_reduction, align 4
  %call19 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17, i32 noundef %sub18, ptr noundef nonnull @.str.266, i32 noundef %12, i32 noundef %14) #16
  %add20 = add i32 %add16, %call19
  %add.ptr21 = getelementptr i8, ptr %buf, i32 %add20
  %sub22 = sub i32 1048576, %add20
  %power_limit = getelementptr inbounds %struct.ath10k_tpc_stats, ptr %tpc_stats, i32 0, i32 6
  %15 = ptrtoint ptr %power_limit to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %power_limit, align 4
  %twice_max_rd_power = getelementptr inbounds %struct.ath10k_tpc_stats, ptr %tpc_stats, i32 0, i32 4
  %17 = ptrtoint ptr %twice_max_rd_power to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %twice_max_rd_power, align 4
  %div127 = lshr i32 %18, 1
  %call23 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr21, i32 noundef %sub22, ptr noundef nonnull @.str.267, i32 noundef %16, i32 noundef %div127) #16
  %add24 = add i32 %add20, %call23
  %add.ptr25 = getelementptr i8, ptr %buf, i32 %add24
  %sub26 = sub i32 1048576, %add24
  %num_tx_chain = getelementptr inbounds %struct.ath10k_tpc_stats, ptr %tpc_stats, i32 0, i32 7
  %19 = ptrtoint ptr %num_tx_chain to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_tx_chain, align 4
  %rate_max = getelementptr inbounds %struct.ath10k_tpc_stats, ptr %tpc_stats, i32 0, i32 9
  %21 = ptrtoint ptr %rate_max to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rate_max, align 4
  %call27 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr25, i32 noundef %sub26, ptr noundef nonnull @.str.268, i32 noundef %20, i32 noundef %22) #16
  %add28 = add i32 %add24, %call27
  %23 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add28, ptr %len, align 4
  %arrayidx39 = getelementptr %struct.ath10k_tpc_stats, ptr %tpc_stats, i32 0, i32 10, i32 1
  %arrayidx = getelementptr %struct.ath10k_tpc_stats, ptr %tpc_stats, i32 0, i32 10, i32 0
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp29 = icmp eq i8 %25, 1
  br i1 %cmp29, label %if.then31, label %if.end36

if.then31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  %add.ptr32 = getelementptr i8, ptr %buf, i32 %27
  %sub33 = sub i32 1048576, %27
  %call34 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr32, i32 noundef %sub33, ptr noundef nonnull @.str.269) #16
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 4
  %add35 = add i32 %29, %call34
  store i32 %add35, ptr %len, align 4
  br label %sw.bb37.1

if.end36:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @ath10k_tpc_stats_print(ptr noundef nonnull %tpc_stats, i32 noundef 0, ptr noundef %buf, ptr noundef nonnull %len)
  br label %sw.bb37.1

if.then55:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 4
  %add.ptr56 = getelementptr i8, ptr %buf, i32 %31
  %sub57 = sub i32 1048576, %31
  %call58 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr56, i32 noundef %sub57, ptr noundef nonnull @.str.271) #16
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len, align 4
  %add59 = add i32 %33, %call58
  store i32 %add59, ptr %len, align 4
  br label %unlock

if.end60:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @ath10k_tpc_stats_print(ptr noundef nonnull %tpc_stats, i32 noundef 2, ptr noundef %buf, ptr noundef nonnull %len)
  br label %unlock

sw.bb37.1:                                        ; preds = %if.end36, %if.then31
  %34 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %35)
  %cmp41.1 = icmp eq i8 %35, 1
  br i1 %cmp41.1, label %if.then43.1, label %if.end48.1

if.end48.1:                                       ; preds = %sw.bb37.1
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @ath10k_tpc_stats_print(ptr noundef nonnull %tpc_stats, i32 noundef 1, ptr noundef %buf, ptr noundef nonnull %len)
  br label %for.inc.1

if.then43.1:                                      ; preds = %sw.bb37.1
  call void @__sanitizer_cov_trace_pc() #18
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len, align 4
  %add.ptr44.1 = getelementptr i8, ptr %buf, i32 %37
  %sub45.1 = sub i32 1048576, %37
  %call46.1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr44.1, i32 noundef %sub45.1, ptr noundef nonnull @.str.270) #16
  %38 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len, align 4
  %add47.1 = add i32 %39, %call46.1
  store i32 %add47.1, ptr %len, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then43.1, %if.end48.1
  %arrayidx51 = getelementptr %struct.ath10k_tpc_stats, ptr %tpc_stats, i32 0, i32 10, i32 2
  %40 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %41)
  %cmp53 = icmp eq i8 %41, 1
  br i1 %cmp53, label %if.then55, label %if.end60

unlock:                                           ; preds = %if.end60, %if.then55, %if.then
  call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #16
  %42 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %43)
  %cmp66 = icmp ugt i32 %43, 1048575
  %sub69 = sext i1 %cmp66 to i32
  %.sink = add i32 %43, %sub69
  %arrayidx71 = getelementptr i8, ptr %buf, i32 %.sink
  %44 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %arrayidx71, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath10k_tpc_stats_print(ptr noundef %tpc_stats, i32 noundef %j, ptr noundef %buf, ptr noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %add.ptr = getelementptr i8, ptr %buf, i32 %1
  %sub = sub i32 1048576, %1
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.273) #16
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %add = add i32 %3, %call
  store i32 %add, ptr %len, align 4
  %add.ptr1 = getelementptr i8, ptr %buf, i32 %add
  %sub2 = sub i32 1048576, %add
  %arrayidx = getelementptr [3 x [5 x i8]], ptr @ath10k_tpc_stats_print.table_str, i32 0, i32 %j
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr1, i32 noundef %sub2, ptr noundef nonnull @.str.274, ptr noundef %arrayidx) #16
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %add4 = add i32 %5, %call3
  store i32 %add4, ptr %len, align 4
  %add.ptr5 = getelementptr i8, ptr %buf, i32 %add4
  %sub6 = sub i32 1048576, %add4
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr5, i32 noundef %sub6, ptr noundef nonnull @.str.273) #16
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %add8 = add i32 %7, %call7
  store i32 %add8, ptr %len, align 4
  %add.ptr9 = getelementptr i8, ptr %buf, i32 %add8
  %sub10 = sub i32 1048576, %add8
  %call11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr9, i32 noundef %sub10, ptr noundef nonnull @.str.275) #16
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %add12 = add i32 %9, %call11
  store i32 %add12, ptr %len, align 4
  %num_tx_chain = getelementptr inbounds %struct.ath10k_tpc_stats, ptr %tpc_stats, i32 0, i32 7
  %10 = ptrtoint ptr %num_tx_chain to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_tx_chain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp98.not = icmp eq i32 %11, 0
  br i1 %cmp98.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.099 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %add.ptr13 = getelementptr i8, ptr %buf, i32 %13
  %sub14 = sub i32 1048576, %13
  %call15 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr13, i32 noundef %sub14, ptr noundef nonnull @.str.276, i32 noundef %i.099) #16
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %add16 = add i32 %15, %call15
  store i32 %add16, ptr %len, align 4
  %inc = add nuw i32 %i.099, 1
  %16 = ptrtoint ptr %num_tx_chain to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_tx_chain, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %add.ptr17 = getelementptr i8, ptr %buf, i32 %19
  %sub18 = sub i32 1048576, %19
  %call19 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17, i32 noundef %sub18, ptr noundef nonnull @.str.262) #16
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %add20 = add i32 %21, %call19
  store i32 %add20, ptr %len, align 4
  %rate_max = getelementptr inbounds %struct.ath10k_tpc_stats, ptr %tpc_stats, i32 0, i32 9
  %22 = ptrtoint ptr %rate_max to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rate_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp22100.not = icmp eq i32 %23, 0
  br i1 %cmp22100.not, label %for.end.for.end41_crit_edge, label %for.body23.lr.ph

for.end.for.end41_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end41

for.body23.lr.ph:                                 ; preds = %for.end
  %arrayidx26 = getelementptr %struct.ath10k_tpc_stats, ptr %tpc_stats, i32 0, i32 11, i32 %j
  br label %for.body23

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %for.body23.lr.ph
  %i.1101 = phi i32 [ 0, %for.body23.lr.ph ], [ %inc40, %for.body23.for.body23_crit_edge ]
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  %add.ptr24 = getelementptr i8, ptr %buf, i32 %25
  %sub25 = sub i32 1048576, %25
  %arrayidx27 = getelementptr [260 x i32], ptr %arrayidx26, i32 0, i32 %i.1101
  %26 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx27, align 4
  %arrayidx28 = getelementptr [8 x [6 x i8]], ptr @ath10k_tpc_stats_print.pream_str, i32 0, i32 %27
  %arrayidx32 = getelementptr %struct.ath10k_tpc_stats, ptr %tpc_stats, i32 0, i32 11, i32 %j, i32 1, i32 %i.1101
  %28 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx32, align 1
  %conv = zext i8 %29 to i32
  %arrayidx35 = getelementptr %struct.ath10k_tpc_stats, ptr %tpc_stats, i32 0, i32 11, i32 %j, i32 2, i32 %i.1101
  %call37 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr24, i32 noundef %sub25, ptr noundef nonnull @.str.277, i32 noundef %i.1101, ptr noundef %arrayidx28, i32 noundef %conv, ptr noundef %arrayidx35) #16
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 4
  %add38 = add i32 %31, %call37
  store i32 %add38, ptr %len, align 4
  %inc40 = add nuw i32 %i.1101, 1
  %32 = ptrtoint ptr %rate_max to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rate_max, align 4
  %cmp22 = icmp ult i32 %inc40, %33
  br i1 %cmp22, label %for.body23.for.body23_crit_edge, label %for.body23.for.end41_crit_edge

for.body23.for.end41_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end41

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body23

for.end41:                                        ; preds = %for.body23.for.end41_crit_edge, %for.end.for.end41_crit_edge
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  %add.ptr42 = getelementptr i8, ptr %buf, i32 %35
  %sub43 = sub i32 1048576, %35
  %call44 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr42, i32 noundef %sub43, ptr noundef nonnull @.str.278) #16
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len, align 4
  %add45 = add i32 %37, %call44
  store i32 %add45, ptr %len, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_read_btcoex(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #16
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %2, i32 0, i32 80
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %dev_flags = getelementptr inbounds %struct.ath10k, ptr %2, i32 0, i32 66
  %3 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %dev_flags, align 4
  %shr.i = lshr i32 %4, 5
  %and1.i = and i32 %shr.i, 1
  %call1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.238, i32 noundef %and1.i) #16
  call void @mutex_unlock(ptr noundef %conf_mutex) #16
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call1) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #16
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_write_btcoex(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #16
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #16
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %val, align 1, !annotation !689
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %4, i1 noundef zeroext false) #16
  call void @__might_fault(ptr noundef nonnull @.str.229, i32 noundef 156) #16
  %call.i.i = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ubuf, i32 %4, i32 -1226833920) #24, !srcloc !707
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !691

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %4) #16
  %6 = call i32 @llvm.read_register.i32(metadata !679) #16
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !708
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !709
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !710
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %ubuf, i32 noundef %4) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #16, !srcloc !709
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !710
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %4, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %4, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !691

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = sub i32 %4, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx, align 1
  %call.i = call i32 @kstrtobool(ptr noundef nonnull %buf, ptr noundef nonnull %val) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.not = icmp eq i32 %call.i, 0
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %coex_support = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 138
  %11 = ptrtoint ptr %coex_support to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %coex_support, align 64, !range !696
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool6.not = icmp eq i8 %12, 0
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %state = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 103
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 32
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.298)
  switch i32 %14, label %if.end8.exit_crit_edge [
    i32 1, label %if.end8.if.end13_crit_edge
    i32 3, label %if.end8.if.end13_crit_edge68
  ]

if.end8.if.end13_crit_edge68:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.end8.exit_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end13:                                         ; preds = %if.end8.if.end13_crit_edge, %if.end8.if.end13_crit_edge68
  %dev_flags = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 66
  %16 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %dev_flags, align 4
  %shr.i = lshr i32 %17, 5
  %and1.i = and i32 %shr.i, 1
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %val, align 1, !range !696
  %20 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i, i32 %20)
  %tobool16.not = icmp eq i32 %and1.i, %20
  br i1 %tobool16.not, label %if.end13.exit_crit_edge, label %if.end18

if.end13.exit_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end18:                                         ; preds = %if.end13
  %pdev_param19 = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 9
  %21 = ptrtoint ptr %pdev_param19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev_param19, align 4
  %enable_btcoex = getelementptr inbounds %struct.wmi_pdev_param_map, ptr %22, i32 0, i32 91
  %23 = ptrtoint ptr %enable_btcoex to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %enable_btcoex, align 4
  %running_fw = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 47
  %25 = ptrtoint ptr %running_fw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %running_fw, align 64
  %fw_features = getelementptr inbounds %struct.ath10k_fw_components, ptr %26, i32 0, i32 6, i32 2
  %27 = ptrtoint ptr %fw_features to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %fw_features, align 4
  %29 = and i32 %28, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool22.not = icmp eq i32 %29, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end18
  %call26 = call fastcc i32 @ath10k_wmi_pdev_set_param(ptr noundef %1, i32 noundef %24, i32 noundef %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then23.if.end30_crit_edge, label %if.then28

if.then23.if.end30_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

if.then28:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.279, i32 noundef %call26)
  br label %exit

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @ath10k_info(ptr noundef %1, ptr noundef nonnull @.str.280)
  call void @ath10k_core_start_recovery(ptr noundef %1) #16
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then23.if.end30_crit_edge
  %30 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %val, align 1, !range !696
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool31.not = icmp eq i8 %31, 0
  br i1 %tobool31.not, label %if.else34, label %if.then32

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  call void @_set_bit(i32 noundef 5, ptr noundef %dev_flags) #16
  br label %exit

if.else34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  call void @_clear_bit(i32 noundef 5, ptr noundef %dev_flags) #16
  br label %exit

exit:                                             ; preds = %if.else34, %if.then32, %if.then28, %if.end13.exit_crit_edge, %if.end8.exit_crit_edge
  %ret.0 = phi i32 [ %count, %if.then28 ], [ -100, %if.end8.exit_crit_edge ], [ %count, %if.end13.exit_crit_edge ], [ %count, %if.else34 ], [ %count, %if.then32 ]
  call void @mutex_unlock(ptr noundef %conf_mutex) #16
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %ret.0, %exit ], [ -22, %if.end.cleanup_crit_edge ], [ -95, %if.end5.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_read_peer_stats(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #16
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %2, i32 0, i32 80
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %dev_flags = getelementptr inbounds %struct.ath10k, ptr %2, i32 0, i32 66
  %3 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %dev_flags, align 4
  %shr.i = lshr i32 %4, 6
  %and1.i = and i32 %shr.i, 1
  %call1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.238, i32 noundef %and1.i) #16
  call void @mutex_unlock(ptr noundef %conf_mutex) #16
  %call4 = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call1) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #16
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_write_peer_stats(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #16
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #16
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %val, align 1, !annotation !689
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %4, i1 noundef zeroext false) #16
  call void @__might_fault(ptr noundef nonnull @.str.229, i32 noundef 156) #16
  %call.i.i = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ubuf, i32 %4, i32 -1226833920) #24, !srcloc !707
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !691

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %4) #16
  %6 = call i32 @llvm.read_register.i32(metadata !679) #16
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !708
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !709
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !710
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %ubuf, i32 noundef %4) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #16, !srcloc !709
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !710
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %4, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %4, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !691

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = sub i32 %4, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx, align 1
  %call.i = call i32 @kstrtobool(ptr noundef nonnull %buf, ptr noundef nonnull %val) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.not = icmp eq i32 %call.i, 0
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %state = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 103
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 32
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.299)
  switch i32 %12, label %if.end5.exit_crit_edge [
    i32 1, label %if.end5.if.end10_crit_edge
    i32 3, label %if.end5.if.end10_crit_edge41
  ]

if.end5.if.end10_crit_edge41:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.end5.exit_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end10:                                         ; preds = %if.end5.if.end10_crit_edge, %if.end5.if.end10_crit_edge41
  %dev_flags = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 66
  %14 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %dev_flags, align 4
  %shr.i = lshr i32 %15, 6
  %and1.i = and i32 %shr.i, 1
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %val, align 1, !range !696
  %18 = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and1.i, i32 %18)
  %tobool13.not = icmp eq i32 %and1.i, %18
  br i1 %tobool13.not, label %if.end10.exit_crit_edge, label %if.end15

if.end10.exit_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool12.not = icmp eq i8 %17, 0
  br i1 %tobool12.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  call void @_set_bit(i32 noundef 6, ptr noundef %dev_flags) #16
  br label %if.end20

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  call void @_clear_bit(i32 noundef 6, ptr noundef %dev_flags) #16
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then17
  call void (ptr, ptr, ...) @ath10k_info(ptr noundef %1, ptr noundef nonnull @.str.281)
  call void @ath10k_core_start_recovery(ptr noundef %1) #16
  br label %exit

exit:                                             ; preds = %if.end20, %if.end10.exit_crit_edge, %if.end5.exit_crit_edge
  %ret.0 = phi i32 [ %count, %if.end20 ], [ -100, %if.end5.exit_crit_edge ], [ %count, %if.end10.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %conf_mutex) #16
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %ret.0, %exit ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_read_enable_extd_tx_stats(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #16
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %2, i32 0, i32 80
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %enable_extd_tx_stats = getelementptr inbounds %struct.ath10k, ptr %2, i32 0, i32 115, i32 17
  %3 = ptrtoint ptr %enable_extd_tx_stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %enable_extd_tx_stats, align 8
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.257, i32 noundef %4) #16
  call void @mutex_unlock(ptr noundef %conf_mutex) #16
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #16
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_write_enable_extd_tx_stats(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %filter = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %filter) #16
  %2 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %filter, align 4, !annotation !689
  %call = call i32 @kstrtouint_from_user(ptr noundef %ubuf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %filter) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %state = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 103
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  %5 = ptrtoint ptr %filter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %filter, align 4
  %enable_extd_tx_stats4 = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 17
  br i1 %cmp.not, label %if.end2, label %if.end.out.sink.split_crit_edge

if.end.out.sink.split_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.sink.split

if.end2:                                          ; preds = %if.end
  %7 = ptrtoint ptr %enable_extd_tx_stats4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %enable_extd_tx_stats4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp5 = icmp eq i32 %6, %8
  br i1 %cmp5, label %if.end2.out_crit_edge, label %if.end2.out.sink.split_crit_edge

if.end2.out.sink.split_crit_edge:                 ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.sink.split

if.end2.out_crit_edge:                            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

out.sink.split:                                   ; preds = %if.end2.out.sink.split_crit_edge, %if.end.out.sink.split_crit_edge
  %9 = ptrtoint ptr %enable_extd_tx_stats4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %enable_extd_tx_stats4, align 8
  br label %out

out:                                              ; preds = %out.sink.split, %if.end2.out_crit_edge
  call void @mutex_unlock(ptr noundef %conf_mutex) #16
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %out ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %filter) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_debug_fw_checksums_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4096) #23
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %normal_mode_fw = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 46
  %fw_file = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 46, i32 6
  %3 = ptrtoint ptr %fw_file to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw_file, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 4
  %call4 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %6, i32 noundef %8) #20
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i.i, i32 noundef 4096, ptr noundef nonnull @.str.282, i32 noundef %call4) #16
  %add.ptr6 = getelementptr i8, ptr %call7.i.i, i32 %call5
  %sub7 = sub i32 4096, %call5
  %firmware_data = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 46, i32 6, i32 5
  %9 = ptrtoint ptr %firmware_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %firmware_data, align 4
  %firmware_len = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 46, i32 6, i32 6
  %11 = ptrtoint ptr %firmware_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %firmware_len, align 4
  %call12 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %10, i32 noundef %12) #20
  %call13 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr6, i32 noundef %sub7, ptr noundef nonnull @.str.283, i32 noundef %call12) #16
  %add14 = add i32 %call13, %call5
  %add.ptr15 = getelementptr i8, ptr %call7.i.i, i32 %add14
  %sub16 = sub i32 4096, %add14
  %otp_data = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 46, i32 6, i32 7
  %13 = ptrtoint ptr %otp_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %otp_data, align 4
  %otp_len = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 46, i32 6, i32 8
  %15 = ptrtoint ptr %otp_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %otp_len, align 4
  %call21 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %14, i32 noundef %16) #20
  %call22 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr15, i32 noundef %sub16, ptr noundef nonnull @.str.284, i32 noundef %call21) #16
  %add23 = add i32 %call22, %add14
  %add.ptr24 = getelementptr i8, ptr %call7.i.i, i32 %add23
  %sub25 = sub i32 4096, %add23
  %codeswap_data = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 46, i32 6, i32 9
  %17 = ptrtoint ptr %codeswap_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %codeswap_data, align 4
  %codeswap_len = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 46, i32 6, i32 10
  %19 = ptrtoint ptr %codeswap_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %codeswap_len, align 4
  %call30 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %18, i32 noundef %20) #20
  %call31 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr24, i32 noundef %sub25, ptr noundef nonnull @.str.285, i32 noundef %call30) #16
  %add32 = add i32 %call31, %add23
  %add.ptr33 = getelementptr i8, ptr %call7.i.i, i32 %add32
  %sub34 = sub i32 4096, %add32
  %21 = ptrtoint ptr %normal_mode_fw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %normal_mode_fw, align 4
  %data36 = getelementptr inbounds %struct.firmware, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %data36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data36, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %22, align 4
  %call40 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %24, i32 noundef %26) #20
  %call41 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr33, i32 noundef %sub34, ptr noundef nonnull @.str.286, i32 noundef %call40) #16
  %add42 = add i32 %call41, %add32
  %add.ptr43 = getelementptr i8, ptr %call7.i.i, i32 %add42
  %sub44 = sub i32 4096, %add42
  %board_data = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 46, i32 1
  %27 = ptrtoint ptr %board_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %board_data, align 4
  %board_len = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 46, i32 2
  %29 = ptrtoint ptr %board_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %board_len, align 4
  %call47 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef %28, i32 noundef %30) #20
  %call48 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr43, i32 noundef %sub44, ptr noundef nonnull @.str.287, i32 noundef %call47) #16
  %add49 = add i32 %call48, %add42
  %call50 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i.i, i32 noundef %add49) #16
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call50, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_sta_tid_stats_mask_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #16
  %sta_tid_stats_mask = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 132
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  %3 = ptrtoint ptr %sta_tid_stats_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sta_tid_stats_mask, align 16
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.231, i32 noundef %4) #16
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #16
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_sta_tid_stats_mask_write(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #16
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #16
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %mask, align 4, !annotation !689
  %4 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %4, i1 noundef zeroext false) #16
  call void @__might_fault(ptr noundef nonnull @.str.229, i32 noundef 156) #16
  %call.i.i = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %4, i32 -1226833920) #24, !srcloc !707
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !691

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %4) #16
  %6 = call i32 @llvm.read_register.i32(metadata !679) #16
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !708
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !709
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !710
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %4) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #16, !srcloc !709
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !710
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %4, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %4, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !691

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = sub i32 %4, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx, align 1
  %call2 = call i32 @kstrtoint(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %mask) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mask, align 4
  %sta_tid_stats_mask = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 132
  %13 = ptrtoint ptr %sta_tid_stats_mask to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %sta_tid_stats_mask, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %4, %if.end5 ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_tpc_stats_final_read(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @strlen(ptr noundef %1) #22
  %call1 = tail call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef %1, i32 noundef %call) #16
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_tpc_stats_final_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %state = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call noalias ptr @vmalloc(i32 noundef 1048576) #21
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end2.if.end.i_crit_edge, label %land.rhs.i

if.end2.if.end.i_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end2
  %dep_map.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !701

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2271, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end2.if.end.i_crit_edge
  %tpc_complete.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 11
  %5 = ptrtoint ptr %tpc_complete.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %tpc_complete.i, align 4
  %ops.i.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 11
  %6 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i.i, align 4
  %gen_pdev_get_tpc_table_cmdid.i.i = getelementptr inbounds %struct.wmi_ops, ptr %7, i32 0, i32 90
  %8 = ptrtoint ptr %gen_pdev_get_tpc_table_cmdid.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gen_pdev_get_tpc_table_cmdid.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.if.then26.i_crit_edge, label %if.end.i.i

if.end.i.if.then26.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26.i

if.end.i.i:                                       ; preds = %if.end.i
  %call.i42.i = tail call ptr %9(ptr noundef %1, i32 noundef 1) #16
  %cmp.i.i.i = icmp ugt ptr %call.i42.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then5.i.i, label %if.end7.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %call.i42.i to i32
  br label %ath10k_wmi_pdev_get_tpc_table_cmdid.exit.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %cmd.i.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 7
  %11 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cmd.i.i, align 4
  %pdev_get_tpc_table_cmdid.i.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %12, i32 0, i32 180
  %13 = ptrtoint ptr %pdev_get_tpc_table_cmdid.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pdev_get_tpc_table_cmdid.i.i, align 4
  %call9.i.i = tail call i32 @ath10k_wmi_cmd_send(ptr noundef %1, ptr noundef %call.i42.i, i32 noundef %14) #16
  br label %ath10k_wmi_pdev_get_tpc_table_cmdid.exit.i

ath10k_wmi_pdev_get_tpc_table_cmdid.exit.i:       ; preds = %if.end7.i.i, %if.then5.i.i
  %retval.0.i.i = phi i32 [ %10, %if.then5.i.i ], [ %call9.i.i, %if.end7.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool25.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %ath10k_wmi_pdev_get_tpc_table_cmdid.exit.i.if.then26.i_crit_edge

ath10k_wmi_pdev_get_tpc_table_cmdid.exit.i.if.then26.i_crit_edge: ; preds = %ath10k_wmi_pdev_get_tpc_table_cmdid.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26.i

if.then26.i:                                      ; preds = %ath10k_wmi_pdev_get_tpc_table_cmdid.exit.i.if.then26.i_crit_edge, %if.end.i.if.then26.i_crit_edge
  %retval.0.i45.i = phi i32 [ %retval.0.i.i, %ath10k_wmi_pdev_get_tpc_table_cmdid.exit.i.if.then26.i_crit_edge ], [ -95, %if.end.i.if.then26.i_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.289, i32 noundef %retval.0.i45.i) #16
  br label %if.then5

if.end27.i:                                       ; preds = %ath10k_wmi_pdev_get_tpc_table_cmdid.exit.i
  %call30.i = tail call i32 @wait_for_completion_timeout(ptr noundef %tpc_complete.i, i32 noundef 100) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp31.i = icmp eq i32 %call30.i, 0
  br i1 %cmp31.i, label %if.end27.i.if.then5_crit_edge, label %if.end6

if.end27.i.if.then5_crit_edge:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then5

if.then5:                                         ; preds = %if.end27.i.if.then5_crit_edge, %if.then26.i
  %retval.0.i.ph = phi i32 [ %retval.0.i45.i, %if.then26.i ], [ -110, %if.end27.i.if.then5_crit_edge ]
  tail call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.288, i32 noundef %retval.0.i.ph)
  tail call void @vfree(ptr noundef nonnull %call) #16
  br label %cleanup

if.end6:                                          ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  %tpc_stats = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 9
  %15 = ptrtoint ptr %tpc_stats to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tpc_stats, align 16
  tail call fastcc void @ath10k_tpc_stats_fill(ptr noundef %1, ptr noundef %16, ptr noundef nonnull %call)
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %17 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %retval.0.i.ph, %if.then5 ], [ -100, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_tpc_stats_final_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @vfree(ptr noundef %1) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_write_warm_hw_reset(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #16
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !689
  %call = call i32 @kstrtobool_from_user(ptr noundef %user_buf, i32 noundef %count, ptr noundef nonnull %val) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1, !range !696
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %state = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 103
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %if.end5, label %if.end3.exit_crit_edge

if.end3.exit_crit_edge:                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end5:                                          ; preds = %if.end3
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 11
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %gen_pdev_set_param.i = getelementptr inbounds %struct.wmi_ops, ptr %8, i32 0, i32 26
  %9 = ptrtoint ptr %gen_pdev_set_param.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gen_pdev_set_param.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end5.if.then8_crit_edge, label %if.end.i

if.end5.if.then8_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then8

if.end.i:                                         ; preds = %if.end5
  %pdev_param = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 9
  %11 = ptrtoint ptr %pdev_param to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev_param, align 4
  %pdev_reset = getelementptr inbounds %struct.wmi_pdev_param_map, ptr %12, i32 0, i32 87
  %13 = ptrtoint ptr %pdev_reset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pdev_reset, align 4
  %call.i = call ptr %10(ptr noundef %1, i32 noundef %14, i32 noundef 2) #16
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %call.i to i32
  br label %ath10k_wmi_pdev_set_param.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %cmd.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 7
  %16 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cmd.i, align 4
  %pdev_set_param_cmdid.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %pdev_set_param_cmdid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pdev_set_param_cmdid.i, align 4
  %call9.i = call i32 @ath10k_wmi_cmd_send(ptr noundef %1, ptr noundef %call.i, i32 noundef %19) #16
  br label %ath10k_wmi_pdev_set_param.exit

ath10k_wmi_pdev_set_param.exit:                   ; preds = %if.end7.i, %if.then5.i
  %retval.0.i = phi i32 [ %15, %if.then5.i ], [ %call9.i, %if.end7.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool7.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool7.not, label %ath10k_wmi_pdev_set_param.exit.exit_crit_edge, label %ath10k_wmi_pdev_set_param.exit.if.then8_crit_edge

ath10k_wmi_pdev_set_param.exit.if.then8_crit_edge: ; preds = %ath10k_wmi_pdev_set_param.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then8

ath10k_wmi_pdev_set_param.exit.exit_crit_edge:    ; preds = %ath10k_wmi_pdev_set_param.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.then8:                                         ; preds = %ath10k_wmi_pdev_set_param.exit.if.then8_crit_edge, %if.end5.if.then8_crit_edge
  %retval.0.i23 = phi i32 [ %retval.0.i, %ath10k_wmi_pdev_set_param.exit.if.then8_crit_edge ], [ -95, %if.end5.if.then8_crit_edge ]
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.290, i32 noundef %retval.0.i23)
  br label %exit

exit:                                             ; preds = %if.then8, %ath10k_wmi_pdev_set_param.exit.exit_crit_edge, %if.end3.exit_crit_edge
  %ret.0 = phi i32 [ %retval.0.i23, %if.then8 ], [ -100, %if.end3.exit_crit_edge ], [ %count, %ath10k_wmi_pdev_set_param.exit.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %conf_mutex) #16
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit ], [ -14, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool_from_user(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_read_ps_state_enable(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #16
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %ps_state_enable = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 31
  %3 = ptrtoint ptr %ps_state_enable to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ps_state_enable, align 1
  %conv = zext i8 %4 to i32
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 32, ptr noundef nonnull @.str.238, i32 noundef %conv) #16
  call void @mutex_unlock(ptr noundef %conf_mutex) #16
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #16
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_write_ps_state_enable(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %ps_state_enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ps_state_enable) #16
  %2 = ptrtoint ptr %ps_state_enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %ps_state_enable, align 1, !annotation !689
  %call = call i32 @kstrtou8_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %ps_state_enable) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %ps_state_enable to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ps_state_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp = icmp ugt i8 %4, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %ps_state_enable4 = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 31
  %5 = ptrtoint ptr %ps_state_enable4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ps_state_enable4, align 1
  %7 = ptrtoint ptr %ps_state_enable to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ps_state_enable, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %8)
  %cmp7 = icmp eq i8 %6, %8
  br i1 %cmp7, label %if.end3.exit_crit_edge, label %if.end10

if.end3.exit_crit_edge:                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.end10:                                         ; preds = %if.end3
  %ops.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 11
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %gen_pdev_set_param.i = getelementptr inbounds %struct.wmi_ops, ptr %10, i32 0, i32 26
  %11 = ptrtoint ptr %gen_pdev_set_param.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gen_pdev_set_param.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end10.if.then14_crit_edge, label %if.end.i

if.end10.if.then14_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then14

if.end.i:                                         ; preds = %if.end10
  %pdev_param = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 9
  %13 = ptrtoint ptr %pdev_param to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev_param, align 4
  %peer_sta_ps_statechg_enable = getelementptr inbounds %struct.wmi_pdev_param_map, ptr %14, i32 0, i32 61
  %15 = ptrtoint ptr %peer_sta_ps_statechg_enable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %peer_sta_ps_statechg_enable, align 4
  %conv6 = zext i8 %8 to i32
  %call.i = call ptr %12(ptr noundef %1, i32 noundef %16, i32 noundef %conv6) #16
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %call.i to i32
  br label %ath10k_wmi_pdev_set_param.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %cmd.i = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 41, i32 7
  %18 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmd.i, align 4
  %pdev_set_param_cmdid.i = getelementptr inbounds %struct.wmi_cmd_map, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %pdev_set_param_cmdid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pdev_set_param_cmdid.i, align 4
  %call9.i = call i32 @ath10k_wmi_cmd_send(ptr noundef %1, ptr noundef %call.i, i32 noundef %21) #16
  br label %ath10k_wmi_pdev_set_param.exit

ath10k_wmi_pdev_set_param.exit:                   ; preds = %if.end7.i, %if.then5.i
  %retval.0.i = phi i32 [ %17, %if.then5.i ], [ %call9.i, %if.end7.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool13.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool13.not, label %if.end15, label %ath10k_wmi_pdev_set_param.exit.if.then14_crit_edge

ath10k_wmi_pdev_set_param.exit.if.then14_crit_edge: ; preds = %ath10k_wmi_pdev_set_param.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then14

if.then14:                                        ; preds = %ath10k_wmi_pdev_set_param.exit.if.then14_crit_edge, %if.end10.if.then14_crit_edge
  %retval.0.i40 = phi i32 [ %retval.0.i, %ath10k_wmi_pdev_set_param.exit.if.then14_crit_edge ], [ -95, %if.end10.if.then14_crit_edge ]
  call void (ptr, ptr, ...) @ath10k_warn(ptr noundef %1, ptr noundef nonnull @.str.291, i32 noundef %retval.0.i40)
  br label %exit

if.end15:                                         ; preds = %ath10k_wmi_pdev_set_param.exit
  %22 = ptrtoint ptr %ps_state_enable to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ps_state_enable, align 1
  %24 = ptrtoint ptr %ps_state_enable4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %ps_state_enable4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool18.not = icmp eq i8 %23, 0
  br i1 %tobool18.not, label %if.then19, label %if.end15.exit_crit_edge

if.end15.exit_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %exit

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  %hw = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  call void @ieee80211_iterate_stations_atomic(ptr noundef %26, ptr noundef nonnull @ath10k_peer_ps_state_disable, ptr noundef %1) #16
  br label %exit

exit:                                             ; preds = %if.then19, %if.end15.exit_crit_edge, %if.then14, %if.end3.exit_crit_edge
  %ret.0 = phi i32 [ %retval.0.i40, %if.then14 ], [ %count, %if.end3.exit_crit_edge ], [ %count, %if.then19 ], [ %count, %if.end15.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %conf_mutex) #16
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ps_state_enable) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_stations_atomic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath10k_peer_ps_state_disable(ptr noundef %data, ptr nocapture noundef writeonly %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %data_lock = getelementptr inbounds %struct.ath10k, ptr %data, i32 0, i32 82
  tail call void @_raw_spin_lock_bh(ptr noundef %data_lock) #16
  %peer_ps_state = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 6, i32 28, i32 15
  %0 = ptrtoint ptr %peer_ps_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %peer_ps_state, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %data_lock) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath10k_write_reset_htt_stats(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %reset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reset) #16
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reset, align 4, !annotation !689
  %call = call i32 @kstrtoul_from_user(ptr noundef %user_buf, i32 noundef %count, i32 noundef 0, ptr noundef nonnull %reset) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reset, align 4
  %5 = add i32 %4, -131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 -131071, i32 %5)
  %6 = icmp ult i32 %5, -131071
  br i1 %6, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %conf_mutex = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 80
  call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #16
  %7 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reset, align 4
  %reset_htt_stats = getelementptr inbounds %struct.ath10k, ptr %1, i32 0, i32 115, i32 5
  %9 = ptrtoint ptr %reset_htt_stats to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %reset_htt_stats, align 8
  %call4 = call fastcc i32 @ath10k_debug_htt_stats_req(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %reset_htt_stats to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %reset_htt_stats, align 8
  br label %out

out:                                              ; preds = %if.end7, %if.end3.out_crit_edge
  %ret.0 = phi i32 [ %call4, %if.end3.out_crit_edge ], [ %count, %if.end7 ]
  call void @mutex_unlock(ptr noundef %conf_mutex) #16
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reset) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ath10k_log_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ath10k_log_dbg_dump(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 334)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 334)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nobuiltin }
attributes #23 = { nounwind allocsize(2) }
attributes #24 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !33, !35, !36, !37, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !134, !135, !136, !138, !140, !142, !144, !146, !147, !148, !150, !152, !153, !154, !155, !157, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !179, !181, !182, !184, !186, !188, !190, !192, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !551, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !605, !607, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !633, !635, !637, !639, !641, !643, !645, !647, !649, !651, !653, !655, !657, !659, !661, !663, !665, !667, !669, !671, !673, !675, !676, !678}
!llvm.named.register.sp = !{!679}
!llvm.module.flags = !{!680, !681, !682, !683, !684, !685, !686, !687}
!llvm.ident = !{!688}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 33, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ath10k_info._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ath10k_info._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_ath10k_info, !9, !"__ksymtab_ath10k_info", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 37, i32 1}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 47, i32 18}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 53, i32 18}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 64, i32 18}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 78, i32 43}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 81, i32 43}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 89, i32 18}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 97, i32 18}
!24 = !{ptr @__ksymtab_ath10k_print_driver_info, !25, !"__ksymtab_ath10k_print_driver_info", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 114, i32 1}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 125, i32 2}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ath10k_err._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @ath10k_err._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @__ksymtab_ath10k_err, !32, !"__ksymtab_ath10k_err", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 129, i32 1}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 140, i32 2}
!35 = !{ptr @ath10k_warn._rs, !34, !"_rs", i1 false, i1 false}
!36 = !{ptr @__func__.ath10k_warn, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ath10k_warn._entry, !34, !"_entry", i1 false, i1 false}
!39 = !{ptr @ath10k_warn._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @__ksymtab_ath10k_warn, !41, !"__ksymtab_ath10k_warn", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 145, i32 1}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 270, i32 19}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 290, i32 20}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 320, i32 20}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 326, i32 20}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 371, i32 20}
!52 = !{ptr @ath10k_debug_get_et_stats.zero_stats, !53, !"zero_stats", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1160, i32 43}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1171, i32 9}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1700, i32 19}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1708, i32 20}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1718, i32 9}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1724, i32 20}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1735, i32 20}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2542, i32 45}
!68 = !{ptr @ath10k_debug_register.__key, !69, !"__key", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2551, i32 2}
!70 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ath10k_debug_register.__key.29, !69, !"__key", i1 false, i1 false}
!72 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2557, i32 22}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2560, i32 22}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2563, i32 22}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2566, i32 22}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2569, i32 22}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2572, i32 22}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2575, i32 22}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2578, i32 22}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2581, i32 22}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2584, i32 22}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2587, i32 22}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2592, i32 23}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2595, i32 23}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2599, i32 22}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2603, i32 23}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2606, i32 23}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2610, i32 23}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2614, i32 22}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2618, i32 23}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2621, i32 22}
!113 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2625, i32 23}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2629, i32 23}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2632, i32 23}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2637, i32 22}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2641, i32 23}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2646, i32 23}
!125 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2651, i32 23}
!127 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2655, i32 22}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2658, i32 22}
!131 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2684, i32 3}
!133 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @__ath10k_dbg._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @__ath10k_dbg._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @__ksymtab___ath10k_dbg, !137, !"__ksymtab___ath10k_dbg", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2690, i32 1}
!138 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2703, i32 27}
!140 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2709, i32 7}
!142 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2710, i32 26}
!144 = !{ptr @.str.65, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2715, i32 4}
!146 = !{ptr @ath10k_dbg_dump._entry, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @ath10k_dbg_dump._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @__ksymtab_ath10k_dbg_dump, !149, !"__ksymtab_ath10k_dbg_dump", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2723, i32 1}
!150 = distinct !{null, !151, !"__already_done", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/ath/ath10k/trace.h", i32 83, i32 1}
!152 = !{ptr @.str.66, !151, !"<string literal>", i1 false, i1 false}
!153 = distinct !{null, !151, !"__warned", i1 false, i1 false}
!154 = !{ptr @.str.67, !151, !"<string literal>", i1 false, i1 false}
!155 = distinct !{null, !156, !"__already_done", i1 false, i1 false}
!156 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!157 = !{ptr @.str.68, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.69, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/ath/ath10k/core.h", i32 898, i32 10}
!160 = !{ptr @.str.70, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/ath/ath10k/core.h", i32 900, i32 10}
!162 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/ath/ath10k/core.h", i32 902, i32 10}
!164 = !{ptr @.str.72, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/ath/ath10k/core.h", i32 904, i32 10}
!166 = !{ptr @.str.73, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/ath/ath10k/core.h", i32 906, i32 10}
!168 = !{ptr @.str.74, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/ath/ath10k/core.h", i32 908, i32 10}
!170 = !{ptr @.str.75, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/ath/ath10k/core.h", i32 910, i32 10}
!172 = !{ptr @.str.76, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/ath/ath10k/core.h", i32 912, i32 10}
!174 = !{ptr @.str.77, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/ath/ath10k/core.h", i32 915, i32 9}
!176 = distinct !{null, !177, !"__already_done", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/ath/ath10k/trace.h", i32 73, i32 1}
!178 = distinct !{null, !177, !"__warned", i1 false, i1 false}
!179 = distinct !{null, !180, !"__already_done", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/ath/ath10k/trace.h", i32 78, i32 1}
!181 = distinct !{null, !180, !"__warned", i1 false, i1 false}
!182 = !{ptr @ath10k_gstrings_stats, !183, !"ath10k_gstrings_stats", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1085, i32 19}
!184 = !{ptr @.str.78, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 881, i32 19}
!186 = !{ptr @.str.79, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1267, i32 19}
!188 = !{ptr @.str.80, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1275, i32 19}
!190 = !{ptr @init_completion.__key, !191, !"__key", i1 false, i1 false}
!191 = !{!"../include/linux/completion.h", i32 87, i32 2}
!192 = !{ptr @.str.81, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @fops_fw_stats, !194, !"fops_fw_stats", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 452, i32 37}
!195 = !{ptr @.str.82, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 413, i32 19}
!197 = !{ptr @.str.83, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 419, i32 19}
!199 = !{ptr @fops_fw_reset_stats, !200, !"fops_fw_reset_stats", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 493, i32 37}
!201 = !{ptr @.str.84, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 476, i32 5}
!203 = !{ptr @.str.85, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 478, i32 5}
!205 = !{ptr @.str.86, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 481, i32 5}
!207 = !{ptr @fops_wmi_services, !208, !"fops_wmi_services", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 195, i32 37}
!209 = !{ptr @.str.87, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 175, i32 8}
!211 = !{ptr @.str.88, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 176, i32 19}
!213 = !{ptr @.str.89, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 182, i32 6}
!215 = !{ptr @.str.90, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 183, i32 34}
!217 = !{ptr @.str.91, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 388, i32 2}
!219 = !{ptr @.str.92, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 389, i32 2}
!221 = !{ptr @.str.93, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 390, i32 2}
!223 = !{ptr @.str.94, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 391, i32 2}
!225 = !{ptr @.str.95, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 392, i32 2}
!227 = !{ptr @.str.96, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 393, i32 2}
!229 = !{ptr @.str.97, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 394, i32 2}
!231 = !{ptr @.str.98, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 395, i32 2}
!233 = !{ptr @.str.99, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 396, i32 2}
!235 = !{ptr @.str.100, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 397, i32 2}
!237 = !{ptr @.str.101, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 398, i32 2}
!239 = !{ptr @.str.102, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 399, i32 2}
!241 = !{ptr @.str.103, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 400, i32 2}
!243 = !{ptr @.str.104, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 401, i32 2}
!245 = !{ptr @.str.105, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 402, i32 2}
!247 = !{ptr @.str.106, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 403, i32 2}
!249 = !{ptr @.str.107, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 404, i32 2}
!251 = !{ptr @.str.108, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 405, i32 2}
!253 = !{ptr @.str.109, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 406, i32 2}
!255 = !{ptr @.str.110, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 407, i32 2}
!257 = !{ptr @.str.111, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 408, i32 2}
!259 = !{ptr @.str.112, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 409, i32 2}
!261 = !{ptr @.str.113, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 410, i32 2}
!263 = !{ptr @.str.114, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 411, i32 2}
!265 = !{ptr @.str.115, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 412, i32 2}
!267 = !{ptr @.str.116, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 413, i32 2}
!269 = !{ptr @.str.117, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 414, i32 2}
!271 = !{ptr @.str.118, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 415, i32 2}
!273 = !{ptr @.str.119, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 416, i32 2}
!275 = !{ptr @.str.120, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 417, i32 2}
!277 = !{ptr @.str.121, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 418, i32 2}
!279 = !{ptr @.str.122, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 419, i32 2}
!281 = !{ptr @.str.123, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 420, i32 2}
!283 = !{ptr @.str.124, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 421, i32 2}
!285 = !{ptr @.str.125, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 422, i32 2}
!287 = !{ptr @.str.126, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 423, i32 2}
!289 = !{ptr @.str.127, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 424, i32 2}
!291 = !{ptr @.str.128, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 425, i32 2}
!293 = !{ptr @.str.129, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 426, i32 2}
!295 = !{ptr @.str.130, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 427, i32 2}
!297 = !{ptr @.str.131, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 428, i32 2}
!299 = !{ptr @.str.132, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 429, i32 2}
!301 = !{ptr @.str.133, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 430, i32 2}
!303 = !{ptr @.str.134, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 431, i32 2}
!305 = !{ptr @.str.135, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 432, i32 2}
!307 = !{ptr @.str.136, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 433, i32 2}
!309 = !{ptr @.str.137, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 434, i32 2}
!311 = !{ptr @.str.138, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 435, i32 2}
!313 = !{ptr @.str.139, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 436, i32 2}
!315 = !{ptr @.str.140, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 437, i32 2}
!317 = !{ptr @.str.141, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 438, i32 2}
!319 = !{ptr @.str.142, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 439, i32 2}
!321 = !{ptr @.str.143, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 440, i32 2}
!323 = !{ptr @.str.144, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 441, i32 2}
!325 = !{ptr @.str.145, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 442, i32 2}
!327 = !{ptr @.str.146, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 443, i32 2}
!329 = !{ptr @.str.147, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 444, i32 2}
!331 = !{ptr @.str.148, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 445, i32 2}
!333 = !{ptr @.str.149, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 446, i32 2}
!335 = !{ptr @.str.150, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 447, i32 2}
!337 = !{ptr @.str.151, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 448, i32 2}
!339 = !{ptr @.str.152, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 449, i32 2}
!341 = !{ptr @.str.153, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 450, i32 2}
!343 = !{ptr @.str.154, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 451, i32 2}
!345 = !{ptr @.str.155, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 452, i32 2}
!347 = !{ptr @.str.156, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 453, i32 2}
!349 = !{ptr @.str.157, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 454, i32 2}
!351 = !{ptr @.str.158, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 455, i32 2}
!353 = !{ptr @.str.159, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 456, i32 2}
!355 = !{ptr @.str.160, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 457, i32 2}
!357 = !{ptr @.str.161, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 458, i32 2}
!359 = !{ptr @.str.162, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 459, i32 2}
!361 = !{ptr @.str.163, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 460, i32 2}
!363 = !{ptr @.str.164, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 461, i32 2}
!365 = !{ptr @.str.165, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 462, i32 2}
!367 = !{ptr @.str.166, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 463, i32 2}
!369 = !{ptr @.str.167, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 464, i32 2}
!371 = !{ptr @.str.168, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 465, i32 2}
!373 = !{ptr @.str.169, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 466, i32 2}
!375 = !{ptr @.str.170, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 467, i32 2}
!377 = !{ptr @.str.171, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 468, i32 2}
!379 = !{ptr @.str.172, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 469, i32 2}
!381 = !{ptr @.str.173, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 470, i32 2}
!383 = !{ptr @.str.174, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 471, i32 2}
!385 = !{ptr @.str.175, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 472, i32 2}
!387 = !{ptr @.str.176, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 473, i32 2}
!389 = !{ptr @.str.177, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 474, i32 2}
!391 = !{ptr @.str.178, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 475, i32 2}
!393 = !{ptr @.str.179, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 476, i32 2}
!395 = !{ptr @.str.180, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 477, i32 2}
!397 = !{ptr @.str.181, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 478, i32 2}
!399 = !{ptr @.str.182, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 479, i32 2}
!401 = !{ptr @.str.183, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 480, i32 2}
!403 = !{ptr @.str.184, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 481, i32 2}
!405 = !{ptr @.str.185, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 482, i32 2}
!407 = !{ptr @.str.186, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 483, i32 2}
!409 = !{ptr @.str.187, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 484, i32 2}
!411 = !{ptr @.str.188, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 485, i32 2}
!413 = !{ptr @.str.189, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 486, i32 2}
!415 = !{ptr @.str.190, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 487, i32 2}
!417 = !{ptr @.str.191, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 488, i32 2}
!419 = !{ptr @.str.192, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 489, i32 2}
!421 = !{ptr @.str.193, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 490, i32 2}
!423 = !{ptr @.str.194, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 491, i32 2}
!425 = !{ptr @.str.195, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 492, i32 2}
!427 = !{ptr @.str.196, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 493, i32 2}
!429 = !{ptr @.str.197, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 494, i32 2}
!431 = !{ptr @.str.198, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 495, i32 2}
!433 = !{ptr @.str.199, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 496, i32 2}
!435 = !{ptr @.str.200, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 497, i32 2}
!437 = !{ptr @.str.201, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 498, i32 2}
!439 = !{ptr @.str.202, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 499, i32 2}
!441 = !{ptr @.str.203, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 500, i32 2}
!443 = !{ptr @.str.204, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 501, i32 2}
!445 = !{ptr @.str.205, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 502, i32 2}
!447 = !{ptr @.str.206, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 503, i32 2}
!449 = !{ptr @.str.207, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 504, i32 2}
!451 = !{ptr @.str.208, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 505, i32 2}
!453 = !{ptr @.str.209, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 506, i32 2}
!455 = !{ptr @.str.210, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 507, i32 2}
!457 = !{ptr @.str.211, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 508, i32 2}
!459 = !{ptr @.str.212, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/net/wireless/ath/ath10k/wmi.h", i32 509, i32 2}
!461 = !{ptr @fops_simulate_fw_crash, !462, !"fops_simulate_fw_crash", i1 false, i1 false}
!462 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 605, i32 37}
!463 = !{ptr @.str.213, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 570, i32 19}
!465 = !{ptr @.str.214, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 571, i32 19}
!467 = !{ptr @.str.215, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 573, i32 26}
!469 = !{ptr @.str.216, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 574, i32 19}
!471 = !{ptr @.str.217, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 581, i32 26}
!473 = !{ptr @.str.218, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 582, i32 19}
!475 = !{ptr @.str.219, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 584, i32 26}
!477 = !{ptr @.str.220, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 585, i32 19}
!479 = !{ptr @.str.221, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 594, i32 19}
!481 = !{ptr @fops_reg_addr, !482, !"fops_reg_addr", i1 false, i1 false}
!482 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 672, i32 37}
!483 = !{ptr @.str.222, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 645, i32 49}
!485 = !{ptr @fops_reg_value, !486, !"fops_reg_value", i1 false, i1 false}
!486 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 743, i32 37}
!487 = !{ptr @.str.223, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 701, i32 36}
!489 = !{ptr @.str.224, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/net/wireless/ath/ath10k/hif.h", i32 213, i32 19}
!491 = !{ptr @.str.225, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/net/wireless/ath/ath10k/hif.h", i32 224, i32 19}
!493 = !{ptr @fops_mem_value, !494, !"fops_mem_value", i1 false, i1 false}
!494 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 854, i32 37}
!495 = !{ptr @.str.226, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 781, i32 19}
!497 = distinct !{null, !498, !"__already_done", i1 false, i1 false}
!498 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!499 = !{ptr @.str.227, !498, !"<string literal>", i1 false, i1 false}
!500 = !{ptr @.str.228, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!502 = !{ptr @.str.229, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!504 = !{ptr @.str.230, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 839, i32 19}
!506 = !{ptr @fops_chip_id, !507, !"fops_chip_id", i1 false, i1 false}
!507 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 625, i32 37}
!508 = !{ptr @.str.231, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 620, i32 36}
!510 = !{ptr @fops_htt_stats_mask, !511, !"fops_htt_stats_mask", i1 false, i1 false}
!511 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 948, i32 37}
!512 = !{ptr @.str.232, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 911, i32 36}
!514 = !{ptr @fops_htt_max_amsdu_ampdu, !515, !"fops_htt_max_amsdu_ampdu", i1 false, i1 false}
!515 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1010, i32 37}
!516 = !{ptr @.str.233, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 971, i32 36}
!518 = !{ptr @.str.234, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 990, i32 20}
!520 = !{ptr @fops_fw_dbglog, !521, !"fops_fw_dbglog", i1 false, i1 false}
!521 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1241, i32 37}
!522 = !{ptr @.str.235, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1026, i32 36}
!524 = !{ptr @.str.236, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1047, i32 20}
!526 = !{ptr @.str.237, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1065, i32 20}
!528 = !{ptr @fops_cal_data, !529, !"fops_cal_data", i1 false, i1 false}
!529 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1370, i32 37}
!530 = !{ptr @fops_nf_cal_period, !531, !"fops_nf_cal_period", i1 false, i1 false}
!531 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1435, i32 37}
!532 = !{ptr @.str.238, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1385, i32 36}
!534 = !{ptr @.str.239, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1422, i32 19}
!536 = !{ptr @fops_ani_enable, !537, !"fops_ani_enable", i1 false, i1 false}
!537 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1362, i32 37}
!538 = !{ptr @.str.240, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1337, i32 19}
!540 = !{ptr @fops_simulate_radar, !541, !"fops_simulate_radar", i1 false, i1 false}
!541 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1780, i32 37}
!542 = !{ptr @fops_dfs_stats, !543, !"fops_dfs_stats", i1 false, i1 false}
!543 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1842, i32 37}
!544 = !{ptr @.str.241, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1808, i32 43}
!546 = !{ptr @.str.242, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1815, i32 42}
!548 = !{ptr @.str.243, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1817, i32 2}
!550 = !{ptr @.str.244, !549, !"<string literal>", i1 false, i1 false}
!551 = !{ptr @.str.245, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1818, i32 2}
!553 = !{ptr @.str.246, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1819, i32 2}
!555 = !{ptr @.str.247, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1820, i32 2}
!557 = !{ptr @.str.248, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1821, i32 2}
!559 = !{ptr @.str.249, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1823, i32 42}
!561 = !{ptr @.str.250, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1824, i32 2}
!563 = !{ptr @.str.251, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1825, i32 2}
!565 = !{ptr @.str.252, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1826, i32 2}
!567 = !{ptr @.str.253, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1827, i32 2}
!569 = !{ptr @.str.254, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1828, i32 2}
!571 = !{ptr @.str.255, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1829, i32 2}
!573 = !{ptr @.str.256, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1830, i32 2}
!575 = !{ptr @fops_pktlog_filter, !576, !"fops_pktlog_filter", i1 false, i1 false}
!576 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1911, i32 37}
!577 = !{ptr @.str.257, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1904, i32 42}
!579 = !{ptr @fops_quiet_period, !580, !"fops_quiet_period", i1 false, i1 false}
!580 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1955, i32 37}
!581 = !{ptr @.str.258, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1928, i32 19}
!583 = !{ptr @fops_tpc_stats, !584, !"fops_tpc_stats", i1 false, i1 false}
!584 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1683, i32 37}
!585 = !{ptr @.str.259, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1648, i32 19}
!587 = !{ptr @.str.260, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1456, i32 19}
!589 = !{ptr @.str.261, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1552, i32 19}
!591 = !{ptr @.str.262, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1556, i32 45}
!593 = !{ptr @.str.263, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1558, i32 5}
!595 = !{ptr @.str.264, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1560, i32 5}
!597 = !{ptr @.str.265, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1566, i32 5}
!599 = !{ptr @.str.266, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1570, i32 5}
!601 = !{ptr @.str.267, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1574, i32 5}
!603 = !{ptr @.str.268, !604, !"<string literal>", i1 false, i1 false}
!604 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1578, i32 5}
!605 = !{ptr @.str.269, !606, !"<string literal>", i1 false, i1 false}
!606 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1587, i32 8}
!607 = !{ptr @.str.270, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1596, i32 8}
!609 = !{ptr @.str.271, !610, !"<string literal>", i1 false, i1 false}
!610 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1605, i32 8}
!611 = !{ptr @.str.272, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1613, i32 7}
!613 = !{ptr @ath10k_tpc_stats_print.table_str, !614, !"table_str", i1 false, i1 false}
!614 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1498, i32 20}
!615 = !{ptr @ath10k_tpc_stats_print.pream_str, !616, !"pream_str", i1 false, i1 false}
!616 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1501, i32 20}
!617 = !{ptr @.str.273, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1512, i32 6}
!619 = !{ptr @.str.274, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1514, i32 6}
!621 = !{ptr @.str.275, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1519, i32 6}
!623 = !{ptr @.str.276, !624, !"<string literal>", i1 false, i1 false}
!624 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1523, i32 7}
!625 = !{ptr @.str.277, !626, !"<string literal>", i1 false, i1 false}
!626 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1529, i32 7}
!627 = !{ptr @.str.278, !628, !"<string literal>", i1 false, i1 false}
!628 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 1536, i32 6}
!629 = !{ptr @fops_btcoex, !630, !"fops_btcoex", i1 false, i1 false}
!630 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2039, i32 37}
!631 = !{ptr @.str.279, !632, !"<string literal>", i1 false, i1 false}
!632 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2002, i32 20}
!633 = !{ptr @.str.280, !634, !"<string literal>", i1 false, i1 false}
!634 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2007, i32 19}
!635 = !{ptr @fops_peer_stats, !636, !"fops_peer_stats", i1 false, i1 false}
!636 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2163, i32 37}
!637 = !{ptr @.str.281, !638, !"<string literal>", i1 false, i1 false}
!638 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2137, i32 18}
!639 = !{ptr @fops_enable_extd_tx_stats, !640, !"fops_enable_extd_tx_stats", i1 false, i1 false}
!640 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2094, i32 37}
!641 = !{ptr @fops_fw_checksums, !642, !"fops_fw_checksums", i1 false, i1 false}
!642 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2217, i32 37}
!643 = !{ptr @.str.282, !644, !"<string literal>", i1 false, i1 false}
!644 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2185, i32 5}
!645 = !{ptr @.str.283, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2189, i32 5}
!647 = !{ptr @.str.284, !648, !"<string literal>", i1 false, i1 false}
!648 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2193, i32 5}
!649 = !{ptr @.str.285, !650, !"<string literal>", i1 false, i1 false}
!650 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2197, i32 5}
!651 = !{ptr @.str.286, !652, !"<string literal>", i1 false, i1 false}
!652 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2201, i32 5}
!653 = !{ptr @.str.287, !654, !"<string literal>", i1 false, i1 false}
!654 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2205, i32 5}
!655 = !{ptr @fops_sta_tid_stats_mask, !656, !"fops_sta_tid_stats_mask", i1 false, i1 false}
!656 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2258, i32 37}
!657 = !{ptr @fops_tpc_stats_final, !658, !"fops_tpc_stats_final", i1 false, i1 false}
!658 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2347, i32 37}
!659 = !{ptr @.str.288, !660, !"<string literal>", i1 false, i1 false}
!660 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2310, i32 19}
!661 = !{ptr @.str.289, !662, !"<string literal>", i1 false, i1 false}
!662 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2277, i32 19}
!663 = !{ptr @fops_warm_hw_reset, !664, !"fops_warm_hw_reset", i1 false, i1 false}
!664 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2391, i32 37}
!665 = !{ptr @.str.290, !666, !"<string literal>", i1 false, i1 false}
!666 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2380, i32 19}
!667 = !{ptr @fops_ps_state_enable, !668, !"fops_ps_state_enable", i1 false, i1 false}
!668 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2469, i32 37}
!669 = !{ptr @.str.291, !670, !"<string literal>", i1 false, i1 false}
!670 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2434, i32 19}
!671 = !{ptr @fops_reset_htt_stats, !672, !"fops_reset_htt_stats", i1 false, i1 false}
!672 = !{!"../drivers/net/wireless/ath/ath10k/debug.c", i32 2508, i32 37}
!673 = distinct !{null, !674, !"__already_done", i1 false, i1 false}
!674 = !{!"../drivers/net/wireless/ath/ath10k/trace.h", i32 88, i32 1}
!675 = distinct !{null, !674, !"__warned", i1 false, i1 false}
!676 = distinct !{null, !677, !"__already_done", i1 false, i1 false}
!677 = !{!"../drivers/net/wireless/ath/ath10k/trace.h", i32 114, i32 1}
!678 = distinct !{null, !677, !"__warned", i1 false, i1 false}
!679 = !{!"sp"}
!680 = !{i32 1, !"wchar_size", i32 2}
!681 = !{i32 1, !"min_enum_size", i32 4}
!682 = !{i32 8, !"branch-target-enforcement", i32 0}
!683 = !{i32 8, !"sign-return-address", i32 0}
!684 = !{i32 8, !"sign-return-address-all", i32 0}
!685 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!686 = !{i32 7, !"uwtable", i32 1}
!687 = !{i32 7, !"frame-pointer", i32 2}
!688 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!689 = !{!"auto-init"}
!690 = !{i64 2149017162, i64 2149017167, i64 2149017180, i64 2149017224, i64 2149017258, i64 2149017279}
!691 = !{!"branch_weights", i32 2000, i32 1}
!692 = !{i64 2158773163}
!693 = !{i64 2158773370}
!694 = !{i64 2149428503}
!695 = !{i64 2149429539}
!696 = !{i8 0, i8 2}
!697 = !{i64 2158740375}
!698 = !{i64 2158740580}
!699 = !{i64 2158756742}
!700 = !{i64 2158756949}
!701 = !{!"branch_weights", i32 1, i32 2000}
!702 = !{i64 2158793951}
!703 = !{i64 2158794170}
!704 = !{i64 2158811467}
!705 = !{i64 2158811726}
!706 = !{i64 2152480569, i64 2152480594}
!707 = !{i64 2152479888, i64 2152479913}
!708 = !{i64 4975443}
!709 = !{i64 4975640}
!710 = !{i64 2152460873}
