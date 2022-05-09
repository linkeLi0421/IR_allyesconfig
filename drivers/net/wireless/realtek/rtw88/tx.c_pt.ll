; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtw88/tx.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtw88/tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rtw_tx_fill_tx_desc\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw_tx_fill_tx_desc\09\09\09\09"
module asm "\09.long\09__crc_rtw_tx_fill_tx_desc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw_tx_fill_tx_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw_tx_fill_tx_desc\22\09\09\09\09\09"
module asm "__kstrtabns_rtw_tx_fill_tx_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtw_tx_report_enqueue\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw_tx_report_enqueue\09\09\09\09"
module asm "\09.long\09__crc_rtw_tx_report_enqueue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw_tx_report_enqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw_tx_report_enqueue\22\09\09\09\09\09"
module asm "__kstrtabns_rtw_tx_report_enqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtw_tx_write_data_rsvd_page_get\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw_tx_write_data_rsvd_page_get\09\09\09\09"
module asm "\09.long\09__crc_rtw_tx_write_data_rsvd_page_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw_tx_write_data_rsvd_page_get:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw_tx_write_data_rsvd_page_get\22\09\09\09\09\09"
module asm "__kstrtabns_rtw_tx_write_data_rsvd_page_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtw_tx_write_data_h2c_get\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw_tx_write_data_h2c_get\09\09\09\09"
module asm "\09.long\09__crc_rtw_tx_write_data_h2c_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw_tx_write_data_h2c_get:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw_tx_write_data_h2c_get\22\09\09\09\09\09"
module asm "__kstrtabns_rtw_tx_write_data_h2c_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.rtw_tx_pkt_info = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.rtw_dev = type { ptr, ptr, %struct.rtw_hci, %struct.rtw_hw_scan_info, ptr, %struct.rtw_hal, %struct.rtw_fifo_conf, %struct.rtw_fw_state, %struct.rtw_efuse, %struct.rtw_sec_desc, %struct.rtw_traffic_stats, %struct.rtw_regd, %struct.rtw_bf_info, %struct.rtw_dm_info, %struct.rtw_coex, %struct.mutex, %struct.spinlock, %struct.delayed_work, i32, %struct.list_head, %struct.sk_buff_head, %struct.work_struct, %struct.work_struct, %struct.spinlock, %struct.list_head, ptr, %struct.work_struct, %struct.work_struct, %struct.rtw_tx_report, %struct.anon.134, %struct.rtw_lps_conf, i8, i8, %struct.completion, ptr, i8, i32, [1 x i32], [1 x i32], i8, %struct.rtw_path_div, %struct.rtw_fw_state, %struct.rtw_wow_param, i8, %struct.completion, [0 x i8] }
%struct.rtw_hci = type { ptr, i32, i32, i32, i8 }
%struct.rtw_hw_scan_info = type { ptr, i8, i8, i8, i8 }
%struct.rtw_hal = type { i32, i32, i8, i8, i8, %struct.rtw_phy_cond, i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i32, i32, i8, %struct.mutex, [4 x [84 x i8]], [4 x [84 x i8]], [4 x [6 x i8]], [4 x [6 x i8]], [11 x [3 x [6 x [14 x i8]]]], [11 x [3 x [6 x [49 x i8]]]], [4 x [84 x i8]], i32, %struct.rtw_sar }
%struct.rtw_phy_cond = type { i32 }
%struct.rtw_sar = type { i32, [4 x [6 x %union.rtw_sar_cfg]] }
%union.rtw_sar_cfg = type { [4 x i8] }
%struct.rtw_fifo_conf = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.rtw_efuse = type { i32, i32, i32, i32, [6 x i8], i8, [2 x i8], i8, i8, i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.anon.132, [4 x %struct.rtw_txpwr_idx] }
%struct.anon.132 = type { i8, i8, i8, i8, i8 }
%struct.rtw_txpwr_idx = type { %struct.rtw_2g_txpwr_idx, %struct.rtw_5g_txpwr_idx }
%struct.rtw_2g_txpwr_idx = type { [6 x i8], [5 x i8], %struct.rtw_2g_1s_pwr_idx_diff, %struct.rtw_2g_ns_pwr_idx_diff, %struct.rtw_2g_ns_pwr_idx_diff, %struct.rtw_2g_ns_pwr_idx_diff }
%struct.rtw_2g_1s_pwr_idx_diff = type { i8 }
%struct.rtw_2g_ns_pwr_idx_diff = type { i16 }
%struct.rtw_5g_txpwr_idx = type { [14 x i8], %struct.rtw_5g_ht_1s_pwr_idx_diff, %struct.rtw_5g_ht_ns_pwr_idx_diff, %struct.rtw_5g_ht_ns_pwr_idx_diff, %struct.rtw_5g_ht_ns_pwr_idx_diff, %struct.rtw_5g_ofdm_ns_pwr_idx_diff, %struct.rtw_5g_vht_ns_pwr_idx_diff, %struct.rtw_5g_vht_ns_pwr_idx_diff, %struct.rtw_5g_vht_ns_pwr_idx_diff, %struct.rtw_5g_vht_ns_pwr_idx_diff }
%struct.rtw_5g_ht_1s_pwr_idx_diff = type { i8 }
%struct.rtw_5g_ht_ns_pwr_idx_diff = type { i8 }
%struct.rtw_5g_ofdm_ns_pwr_idx_diff = type { i16 }
%struct.rtw_5g_vht_ns_pwr_idx_diff = type { i8 }
%struct.rtw_sec_desc = type { i8, i32, [32 x %struct.rtw_cam_entry], [1 x i32] }
%struct.rtw_cam_entry = type { i8, i8, [6 x i8], i8, ptr }
%struct.rtw_traffic_stats = type { i64, i64, i64, i64, i32, i32, %struct.ewma_tp, %struct.ewma_tp }
%struct.ewma_tp = type { i32 }
%struct.rtw_regd = type { i32, ptr, i32 }
%struct.rtw_bf_info = type { i8, i8, [1 x i32], i8 }
%struct.rtw_dm_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [4 x i16], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, [4 x i8], i8, i8, [4 x i8], [4 x i8], i8, i8, i8, [4 x %struct.ewma_thermal], i8, i8, [4 x i32], [4 x [2 x [15 x i16]]], [4 x [2 x [2 x i8]]], %struct.rtw_dpk_info, %struct.rtw_cfo_track, [2 x [4 x i8]], i32, i8, [4 x i8], [4 x i8], [4 x i16], [4 x i8], i8, %struct.rtw_pkt_count, %struct.rtw_pkt_count, [4 x %struct.ewma_evm], [12 x %struct.ewma_snr], i32, %struct.rtw_iqk_info, %struct.rtw_gapk_info, i8, i8, i32, i8 }
%struct.ewma_thermal = type { i32 }
%struct.rtw_dpk_info = type { i8, i8, [1 x i32], [2 x i8], [2 x %struct.ewma_thermal], i32, i32, [4 x i8], [4 x i8], [4 x [20 x i32]], [4 x i16], [4 x i8], [4 x i8], i8, i8, i8 }
%struct.rtw_cfo_track = type { i8, i8, [4 x i32], [4 x i32], i32, i32 }
%struct.rtw_pkt_count = type { i16, [84 x i16] }
%struct.ewma_evm = type { i32 }
%struct.ewma_snr = type { i32 }
%struct.rtw_iqk_info = type { i8, %struct.anon.133 }
%struct.anon.133 = type { i32, i32, i32, i32 }
%struct.rtw_gapk_info = type { [5 x [11 x [4 x i32]]], [4 x [11 x i32]], i8, [11 x [4 x i8]], [11 x [4 x i8]], i8, i8 }
%struct.rtw_coex = type { %struct.mutex, %struct.sk_buff_head, %struct.wait_queue_head, i8, i8, i8, i8, i8, i8, %struct.rtw_coex_stat, %struct.rtw_coex_dm, %struct.rtw_coex_rfe, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rtw_coex_stat = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, [6 x [10 x i8]], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, [10 x i8], [10 x i8], i8, i8, i8, i8, i8, i8, i8, [6 x i8], i8, i16, i16, [13 x i32], [8 x i32], [6 x i32], i32, i32 }
%struct.rtw_coex_dm = type { i8, i8, i8, i8, [4 x i8], [4 x i8], [3 x i8], i8, i8, [5 x i8], i8, i8, i8, i8, i32, i32, i32, [5 x i8] }
%struct.rtw_coex_rfe = type { i8, i8, i8, i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rtw_tx_report = type { %struct.spinlock, %struct.sk_buff_head, %struct.atomic_t, %struct.timer_list }
%struct.anon.134 = type { i8, %struct.spinlock, i32 }
%struct.rtw_lps_conf = type { i32, i32, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.rtw_path_div = type { i32, i32, i32, i16, i16 }
%struct.rtw_fw_state = type { ptr, ptr, %struct.completion, %struct.rtw_fwcd_desc, i16, i8, i8, i16, i32 }
%struct.rtw_fwcd_desc = type { i32, ptr, ptr }
%struct.rtw_wow_param = type { ptr, [1 x i32], i8, i8, [12 x %struct.rtw_wow_pattern], i8, %struct.rtw_pno_request }
%struct.rtw_wow_pattern = type { i16, i8, i8, [16 x i8] }
%struct.rtw_pno_request = type { i8, i32, ptr, i8, ptr, %struct.cfg80211_sched_scan_plan }
%struct.cfg80211_sched_scan_plan = type { i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rtw_c2h_cmd = type { i8, i8, [0 x i8] }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.129, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
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
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.103, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
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
%struct.possible_net_t = type { ptr }
%struct.anon.103 = type { i64, i64, i8 }
%struct.rtw_sta_info = type { ptr, ptr, %struct.ewma_rssi, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, i64, [1 x i32], %struct.rtw_ra_report, i8, ptr }
%struct.ewma_rssi = type { i32 }
%struct.rtw_ra_report = type { %struct.rate_info, i32, i8 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.rtw_chip_info = type { ptr, i8, ptr, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i16], ptr, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32], [2 x i32], ptr, i8, ptr, ptr, ptr, ptr, [4 x ptr], ptr, ptr, i32, i8, i16, i8, i8, ptr, i8, i8, ptr, i8, i8, ptr, ptr, i8, [3 x i32], i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.rtw_hci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rtw_txq = type { %struct.list_head, i32, i32 }
%struct.ieee80211_txq = type { ptr, ptr, i8, i8, [2 x i8], [0 x i8] }

@__kstrtab_rtw_tx_fill_tx_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw_tx_fill_tx_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw_tx_fill_tx_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw_tx_fill_tx_desc to i32), ptr @__kstrtab_rtw_tx_fill_tx_desc, ptr @__kstrtabns_rtw_tx_fill_tx_desc }, section "___ksymtab+rtw_tx_fill_tx_desc", align 4
@rtw_tx_report_purge_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 165, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to get tx report from firmware\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtw_tx_report_purge_timer\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/realtek/rtw88/tx.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtw_tx_report_purge_timer._entry_ptr = internal global ptr @rtw_tx_report_purge_timer._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab_rtw_tx_report_enqueue = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw_tx_report_enqueue = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw_tx_report_enqueue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw_tx_report_enqueue to i32), ptr @__kstrtab_rtw_tx_report_enqueue, ptr @__kstrtabns_rtw_tx_report_enqueue }, section "___ksymtab+rtw_tx_report_enqueue", align 4
@rtw_tx_write_data_rsvd_page_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 470, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to alloc write data rsvd page skb\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rtw_tx_write_data_rsvd_page_get\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rtw_tx_write_data_rsvd_page_get._entry_ptr = internal global ptr @rtw_tx_write_data_rsvd_page_get._entry, section ".printk_index", align 4
@__kstrtab_rtw_tx_write_data_rsvd_page_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw_tx_write_data_rsvd_page_get = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw_tx_write_data_rsvd_page_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw_tx_write_data_rsvd_page_get to i32), ptr @__kstrtab_rtw_tx_write_data_rsvd_page_get, ptr @__kstrtabns_rtw_tx_write_data_rsvd_page_get }, section "___ksymtab+rtw_tx_write_data_rsvd_page_get", align 4
@rtw_tx_write_data_h2c_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 496, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to alloc write data h2c skb\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtw_tx_write_data_h2c_get\00", [38 x i8] zeroinitializer }, align 32
@rtw_tx_write_data_h2c_get._entry_ptr = internal global ptr @rtw_tx_write_data_h2c_get._entry, section ".printk_index", align 4
@__kstrtab_rtw_tx_write_data_h2c_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw_tx_write_data_h2c_get = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw_tx_write_data_h2c_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw_tx_write_data_h2c_get to i32), ptr @__kstrtab_rtw_tx_write_data_h2c_get, ptr @__kstrtabns_rtw_tx_write_data_h2c_get }, section "___ksymtab+rtw_tx_write_data_h2c_get", align 4
@rtw_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 518, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to write TX skb to HCI\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rtw_tx\00", [25 x i8] zeroinitializer }, align 32
@rtw_tx._entry_ptr = internal global ptr @rtw_tx._entry, section ".printk_index", align 4
@rtw_txq_push._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 613, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to pusk skb, ret %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtw_txq_push\00", [19 x i8] zeroinitializer }, align 32
@rtw_txq_push._entry_ptr = internal global ptr @rtw_txq_push._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rtw_txq_push_skb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.16, ptr @.str.2, i32 575, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtw_txq_push_skb\00", [47 x i8] zeroinitializer }, align 32
@rtw_txq_push_skb._entry_ptr = internal global ptr @rtw_txq_push_skb._entry, section ".printk_index", align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@switch.table.rtw_tx_pkt_info_update = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01\01\00\03\01", [27 x i8] zeroinitializer }, align 32
@switch.table.rtw_tx_rsvd_page_pkt_info_update = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01\01\00\03\01", [27 x i8] zeroinitializer }, align 32
@switch.table.rtw_tx_write_data_rsvd_page_get = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01\01\00\03\01", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 165, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 470, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 496, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 518, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 613, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 695, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.85 = private constant [43 x i8] c"../drivers/net/wireless/realtek/rtw88/tx.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 575, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 723, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [36 x i8] c"switch.table.rtw_tx_pkt_info_update\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [46 x i8] c"switch.table.rtw_tx_rsvd_page_pkt_info_update\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [45 x i8] c"switch.table.rtw_tx_write_data_rsvd_page_get\00", align 1
@llvm.compiler.used = appending global [37 x ptr] [ptr @__ksymtab_rtw_tx_fill_tx_desc, ptr @__ksymtab_rtw_tx_report_enqueue, ptr @__ksymtab_rtw_tx_write_data_h2c_get, ptr @__ksymtab_rtw_tx_write_data_rsvd_page_get, ptr @rtw_tx._entry, ptr @rtw_tx._entry_ptr, ptr @rtw_tx_report_purge_timer._entry, ptr @rtw_tx_report_purge_timer._entry_ptr, ptr @rtw_tx_write_data_h2c_get._entry, ptr @rtw_tx_write_data_h2c_get._entry_ptr, ptr @rtw_tx_write_data_rsvd_page_get._entry, ptr @rtw_tx_write_data_rsvd_page_get._entry_ptr, ptr @rtw_txq_push._entry, ptr @rtw_txq_push._entry_ptr, ptr @rtw_txq_push_skb._entry, ptr @rtw_txq_push_skb._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @switch.table.rtw_tx_pkt_info_update, ptr @switch.table.rtw_tx_rsvd_page_pkt_info_update, ptr @switch.table.rtw_tx_write_data_rsvd_page_get], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_tx_report_purge_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_tx_write_data_rsvd_page_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_tx_write_data_h2c_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_txq_push._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_txq_push_skb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw_tx_pkt_info_update to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw_tx_rsvd_page_pkt_info_update to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw_tx_write_data_rsvd_page_get to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_tx_fill_tx_desc(ptr noundef readonly %pkt_info, ptr nocapture noundef readonly %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = ptrtoint ptr %pkt_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pkt_info, align 4
  %and.i = and i32 %3, 65535
  %6 = and i32 %5, 65535
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  %or.i = or i32 %7, %and.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or.i, ptr %1, align 4
  %offset = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 1
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %offset, align 4
  %and.i134 = and i32 %or.i, -65281
  %conv2.i.i135 = zext i8 %10 to i32
  %11 = shl nuw nsw i32 %conv2.i.i135, 8
  %or.i139 = or i32 %11, %and.i134
  store i32 %or.i139, ptr %1, align 4
  %add.ptr2 = getelementptr i32, ptr %1, i32 1
  %12 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr2, align 4
  %pkt_offset = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 2
  %14 = ptrtoint ptr %pkt_offset to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pkt_offset, align 1
  %and.i151 = and i32 %13, -32
  %16 = and i8 %15, 31
  %and528.i.i153 = zext i8 %16 to i32
  %or.i156 = or i32 %and.i151, %and528.i.i153
  store i32 %or.i156, ptr %add.ptr2, align 4
  %qsel = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 6
  %17 = ptrtoint ptr %qsel to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %qsel, align 1
  %and.i168 = and i32 %or.i156, -2031617
  %19 = and i8 %18, 31
  %and528.i.i170 = zext i8 %19 to i32
  %20 = shl nuw nsw i32 %and528.i.i170, 16
  %or.i173 = or i32 %20, %and.i168
  store i32 %or.i173, ptr %add.ptr2, align 4
  %bmc = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 17
  %21 = ptrtoint ptr %bmc to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bmc, align 1, !range !58
  %23 = load i32, ptr %1, align 4
  %and.i185 = and i32 %23, -2
  %conv2.i.i186 = zext i8 %22 to i32
  %or.i190 = or i32 %and.i185, %conv2.i.i186
  store i32 %or.i190, ptr %1, align 4
  %rate_id = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 4
  %24 = ptrtoint ptr %rate_id to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rate_id, align 1
  %and.i202 = and i32 %or.i173, -7937
  %26 = and i8 %25, 31
  %and528.i.i204 = zext i8 %26 to i32
  %27 = shl nuw nsw i32 %and528.i.i204, 8
  %or.i207 = or i32 %27, %and.i202
  store i32 %or.i207, ptr %add.ptr2, align 4
  %add.ptr10 = getelementptr i32, ptr %1, i32 4
  %28 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr10, align 4
  %rate = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 5
  %30 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rate, align 4
  %and.i219 = and i32 %29, -2130706433
  %32 = and i8 %31, 127
  %conv8.i.i223 = zext i8 %32 to i32
  %33 = shl nuw nsw i32 %conv8.i.i223, 24
  %or.i224 = or i32 %33, %and.i219
  store i32 %or.i224, ptr %add.ptr10, align 4
  %add.ptr12 = getelementptr i32, ptr %1, i32 3
  %dis_rate_fallback = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 16
  %34 = ptrtoint ptr %dis_rate_fallback to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %dis_rate_fallback, align 4, !range !58
  %36 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr12, align 4
  %and.i236 = and i32 %37, -262145
  %conv2.i.i237 = zext i8 %35 to i32
  %mul.i.i239 = shl nuw nsw i32 %conv2.i.i237, 18
  %or.i241 = or i32 %mul.i.i239, %and.i236
  store i32 %or.i241, ptr %add.ptr12, align 4
  %use_rate = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 18
  %38 = ptrtoint ptr %use_rate to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %use_rate, align 2, !range !58
  %and.i253 = and i32 %or.i241, -65537
  %conv2.i.i254 = zext i8 %39 to i32
  %40 = shl nuw nsw i32 %conv2.i.i254, 16
  %or.i258 = or i32 %40, %and.i253
  store i32 %or.i258, ptr %add.ptr12, align 4
  %41 = load i32, ptr %add.ptr2, align 4
  %sec_type = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 8
  %42 = ptrtoint ptr %sec_type to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %sec_type, align 1
  %and.i270 = and i32 %41, -49153
  %44 = and i8 %43, 3
  %and528.i.i272 = zext i8 %44 to i32
  %mul.i.i273 = shl nuw nsw i32 %and528.i.i272, 14
  %or.i275 = or i32 %mul.i.i273, %and.i270
  store i32 %or.i275, ptr %add.ptr2, align 4
  %add.ptr20 = getelementptr i32, ptr %1, i32 5
  %45 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr20, align 4
  %bw = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 7
  %47 = ptrtoint ptr %bw to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bw, align 2
  %and.i287 = and i32 %46, -1610612737
  %49 = shl i8 %48, 5
  %50 = and i8 %49, 96
  %conv8.i.i291 = zext i8 %50 to i32
  %51 = shl nuw nsw i32 %conv8.i.i291, 24
  %or.i292 = or i32 %51, %and.i287
  store i32 %or.i292, ptr %add.ptr20, align 4
  %add.ptr22 = getelementptr i32, ptr %1, i32 9
  %52 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr22, align 4
  %seq = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 13
  %54 = ptrtoint ptr %seq to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %seq, align 4
  %and.i304 = and i32 %53, -15793921
  %56 = and i16 %55, 4095
  %and528.i.i306 = zext i16 %56 to i32
  %mul.i.i307 = shl nuw nsw i32 %and528.i.i306, 12
  %57 = tail call i32 @llvm.bswap.i32(i32 %mul.i.i307) #10
  %or.i309 = or i32 %57, %and.i304
  %58 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or.i309, ptr %add.ptr22, align 4
  %59 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr12, align 4
  %ampdu_factor = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 11
  %61 = ptrtoint ptr %ampdu_factor to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %ampdu_factor, align 2
  %and.i321 = and i32 %60, -15873
  %63 = and i8 %62, 31
  %and528.i.i323 = zext i8 %63 to i32
  %mul.i.i324 = shl nuw nsw i32 %and528.i.i323, 9
  %or.i326 = or i32 %mul.i.i324, %and.i321
  store i32 %or.i326, ptr %add.ptr12, align 4
  %add.ptr26 = getelementptr i32, ptr %1, i32 2
  %64 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr26, align 4
  %ampdu_density = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 12
  %66 = ptrtoint ptr %ampdu_density to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %ampdu_density, align 1
  %and.i338 = and i32 %65, -28673
  %68 = and i8 %67, 7
  %and528.i.i340 = zext i8 %68 to i32
  %mul.i.i341 = shl nuw nsw i32 %and528.i.i340, 12
  %or.i343 = or i32 %mul.i.i341, %and.i338
  store i32 %or.i343, ptr %add.ptr26, align 4
  %stbc = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 14
  %69 = ptrtoint ptr %stbc to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %stbc, align 2, !range !58
  %71 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr20, align 4
  %and.i355 = and i32 %72, -196609
  %conv2.i.i356 = zext i8 %70 to i32
  %73 = shl nuw nsw i32 %conv2.i.i356, 16
  %or.i360 = or i32 %73, %and.i355
  store i32 %or.i360, ptr %add.ptr20, align 4
  %ldpc = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 15
  %74 = ptrtoint ptr %ldpc to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %ldpc, align 1, !range !58
  %and.i372 = and i32 %or.i360, 2147352575
  %76 = shl nuw i8 %75, 7
  %conv8.i.i376 = zext i8 %76 to i32
  %77 = shl nuw i32 %conv8.i.i376, 24
  %or.i377 = or i32 %77, %and.i372
  store i32 %or.i377, ptr %add.ptr20, align 4
  %ampdu_en = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 10
  %78 = ptrtoint ptr %ampdu_en to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %ampdu_en, align 1, !range !58
  %and.i389 = and i32 %or.i343, -1048577
  %conv2.i.i390 = zext i8 %79 to i32
  %mul.i.i392 = shl nuw nsw i32 %conv2.i.i390, 20
  %or.i394 = or i32 %mul.i.i392, %and.i389
  store i32 %or.i394, ptr %add.ptr26, align 4
  %ls = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 19
  %80 = ptrtoint ptr %ls to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %ls, align 1, !range !58
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %1, align 4
  %and.i406 = and i32 %83, -5
  %84 = shl nuw nsw i8 %81, 2
  %mul.i.i409 = zext i8 %84 to i32
  %or.i411 = or i32 %and.i406, %mul.i.i409
  store i32 %or.i411, ptr %1, align 4
  %short_gi = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 21
  %85 = ptrtoint ptr %short_gi to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %short_gi, align 1, !range !58
  %and.i423 = and i32 %or.i377, -268566529
  %87 = shl nuw nsw i8 %86, 4
  %conv8.i.i427 = zext i8 %87 to i32
  %88 = shl nuw nsw i32 %conv8.i.i427, 24
  %or.i428 = or i32 %88, %and.i423
  store i32 %or.i428, ptr %add.ptr20, align 4
  %report = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 22
  %89 = ptrtoint ptr %report to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %report, align 2, !range !58
  %and.i440 = and i32 %or.i394, -2049
  %conv2.i.i441 = zext i8 %90 to i32
  %mul.i.i443 = shl nuw nsw i32 %conv2.i.i441, 11
  %or.i445 = or i32 %mul.i.i443, %and.i440
  store i32 %or.i445, ptr %add.ptr26, align 4
  %add.ptr46 = getelementptr i32, ptr %1, i32 6
  %sn = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 9
  %91 = ptrtoint ptr %sn to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %sn, align 4
  %93 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %add.ptr46, align 4
  %and.i457 = and i32 %94, 15794175
  %conv8.i.i461 = zext i8 %92 to i32
  %95 = shl nuw i32 %conv8.i.i461, 24
  %or.i462 = or i32 %95, %and.i457
  store i32 %or.i462, ptr %add.ptr46, align 4
  %rts = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 23
  %96 = ptrtoint ptr %rts to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %rts, align 1, !range !58
  %98 = load i32, ptr %add.ptr12, align 4
  %and.i474 = and i32 %98, -1048577
  %conv2.i.i475 = zext i8 %97 to i32
  %mul.i.i477 = shl nuw nsw i32 %conv2.i.i475, 20
  %or.i479 = or i32 %mul.i.i477, %and.i474
  store i32 %or.i479, ptr %add.ptr12, align 4
  %99 = load i8, ptr %rts, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool52.not = icmp eq i8 %99, 0
  br i1 %tobool52.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %100 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %add.ptr10, align 4
  %and.i486 = and i32 %101, -32
  %or.i490 = or i32 %and.i486, 8
  store i32 %or.i490, ptr %add.ptr10, align 4
  %102 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %add.ptr20, align 4
  %or.i500 = or i32 %103, 1048576
  store i32 %or.i500, ptr %add.ptr20, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dis_qselseq = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 24
  %104 = ptrtoint ptr %dis_qselseq to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %dis_qselseq, align 4, !range !58
  %106 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %1, align 4
  %and.i511 = and i32 %107, -129
  %108 = shl nuw i8 %105, 7
  %mul.i.i514 = zext i8 %108 to i32
  %or.i516 = or i32 %and.i511, %mul.i.i514
  store i32 %or.i516, ptr %1, align 4
  %add.ptr58 = getelementptr i32, ptr %1, i32 8
  %en_hwseq = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 25
  %109 = ptrtoint ptr %en_hwseq to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %en_hwseq, align 1, !range !58
  %111 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %add.ptr58, align 4
  %and.i528 = and i32 %112, -8388609
  %conv2.i.i529 = zext i8 %110 to i32
  %mul.i.i531 = shl nuw nsw i32 %conv2.i.i529, 23
  %or.i533 = or i32 %mul.i.i531, %and.i528
  store i32 %or.i533, ptr %add.ptr58, align 4
  %113 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %add.ptr12, align 4
  %hw_ssn_sel = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 26
  %115 = ptrtoint ptr %hw_ssn_sel to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %hw_ssn_sel, align 2
  %and.i545 = and i32 %114, 1073741823
  %117 = shl i8 %116, 6
  %conv8.i.i549 = zext i8 %117 to i32
  %118 = shl nuw i32 %conv8.i.i549, 24
  %or.i550 = or i32 %118, %and.i545
  store i32 %or.i550, ptr %add.ptr12, align 4
  %nav_use_hdr = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 27
  %119 = ptrtoint ptr %nav_use_hdr to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %nav_use_hdr, align 1, !range !58
  %and.i562 = and i32 %or.i550, -8388609
  %conv2.i.i563 = zext i8 %120 to i32
  %mul.i.i565 = shl nuw nsw i32 %conv2.i.i563, 23
  %or.i567 = or i32 %mul.i.i565, %and.i562
  store i32 %or.i567, ptr %add.ptr12, align 4
  %bt_null = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 28
  %121 = ptrtoint ptr %bt_null to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %bt_null, align 4, !range !58
  %123 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %add.ptr26, align 4
  %and.i579 = and i32 %124, -32769
  %conv2.i.i580 = zext i8 %122 to i32
  %mul.i.i582 = shl nuw nsw i32 %conv2.i.i580, 15
  %or.i584 = or i32 %mul.i.i582, %and.i579
  store i32 %or.i584, ptr %add.ptr26, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_tx_report_purge_timer(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %qlen.i = getelementptr i8, ptr %t, i32 -52
  %0 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %queue = getelementptr i8, ptr %t, i32 -60
  %tx_report1 = getelementptr i8, ptr %t, i32 -104
  %dev = getelementptr i8, ptr %t, i32 -19212
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str) #13
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_report1) #10
  tail call void @skb_queue_purge(ptr noundef %queue) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_report1, i32 noundef %call7) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_tx_report_enqueue(ptr noundef %rtwdev, ptr noundef %skb, i8 noundef zeroext %sn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_report1 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 28
  %status_driver_data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %0 = ptrtoint ptr %status_driver_data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %sn, ptr %status_driver_data, align 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_report1) #10
  %queue = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 28, i32 1
  %prev.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 28, i32 1, i32 0, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %queue, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 1
  %4 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %2, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %skb, ptr %2, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 28, i32 1, i32 1
  %6 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_report1, i32 noundef %call4) #10
  %purge_timer = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 28, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %8, 50
  %call9 = tail call i32 @mod_timer(ptr noundef %purge_timer, i32 noundef %add) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_tx_report_handle(ptr noundef %rtwdev, ptr nocapture noundef readonly %skb, i32 noundef %src) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_report1 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 28
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb.i, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %src)
  %cmp = icmp eq i32 %src, 3
  %payload = getelementptr inbounds %struct.rtw_c2h_cmd, ptr %add.ptr.i, i32 0, i32 2
  %arrayidx14 = getelementptr %struct.rtw_c2h_cmd, ptr %add.ptr.i, i32 5, i32 1
  %sn.0.in.in.v = select i1 %cmp, i32 4, i32 5
  %sn.0.in.in = getelementptr %struct.rtw_c2h_cmd, ptr %add.ptr.i, i32 %sn.0.in.in.v
  %st.0.in.in = select i1 %cmp, ptr %payload, ptr %arrayidx14
  %4 = ptrtoint ptr %st.0.in.in to i32
  call void @__asan_load1_noabort(i32 %4)
  %st.0.in = load i8, ptr %st.0.in.in, align 1
  %5 = ptrtoint ptr %sn.0.in.in to i32
  call void @__asan_load1_noabort(i32 %5)
  %sn.0.in = load i8, ptr %sn.0.in.in, align 1
  %sn.0 = and i8 %sn.0.in, -4
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_report1) #10
  %queue = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 28, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %cur.0.in = phi ptr [ %queue, %entry ], [ %cur.0, %for.body.for.cond_crit_edge ]
  %6 = ptrtoint ptr %cur.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %cur.0 = load ptr, ptr %cur.0.in, align 4
  %cmp28.not = icmp eq ptr %cur.0, %queue
  br i1 %cmp28.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond
  %status_driver_data = getelementptr inbounds %struct.sk_buff, ptr %cur.0, i32 0, i32 3, i32 32
  %7 = ptrtoint ptr %status_driver_data to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %status_driver_data, align 1
  %cmp33 = icmp eq i8 %8, %sn.0
  br i1 %cmp33, label %if.then35, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then35:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %cb.i56 = getelementptr inbounds %struct.sk_buff, ptr %cur.0, i32 0, i32 3
  %qlen.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 28, i32 1, i32 1
  %9 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qlen.i, align 4
  %sub.i = add i32 %10, -1
  store volatile i32 %sub.i, ptr %qlen.i, align 4
  %11 = ptrtoint ptr %cur.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.0, align 8
  %prev9.i = getelementptr inbounds %struct.anon, ptr %cur.0, i32 0, i32 1
  %13 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %cur.0, align 8
  %prev17.i = getelementptr inbounds %struct.anon, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %14, ptr %prev17.i, align 4
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %12, ptr %14, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %st.0.in)
  %cmp38 = icmp ult i8 %st.0.in, 64
  %count.i.i = getelementptr %struct.sk_buff, ptr %cur.0, i32 0, i32 3, i32 9
  %17 = ptrtoint ptr %count.i.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %bf.load.i.i = load i16, ptr %count.i.i, align 1
  %bf.clear.i.i = and i16 %bf.load.i.i, 2047
  store i16 %bf.clear.i.i, ptr %count.i.i, align 1
  %count.1.i.i = getelementptr %struct.sk_buff, ptr %cur.0, i32 0, i32 3, i32 12
  %18 = ptrtoint ptr %count.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %bf.load.1.i.i = load i16, ptr %count.1.i.i, align 1
  %bf.clear.1.i.i = and i16 %bf.load.1.i.i, 2047
  store i16 %bf.clear.1.i.i, ptr %count.1.i.i, align 1
  %count.2.i.i = getelementptr %struct.sk_buff, ptr %cur.0, i32 0, i32 3, i32 15
  %19 = ptrtoint ptr %count.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %bf.load.2.i.i = load i16, ptr %count.2.i.i, align 1
  %bf.clear.2.i.i = and i16 %bf.load.2.i.i, 2047
  store i16 %bf.clear.2.i.i, ptr %count.2.i.i, align 1
  %count.3.i.i = getelementptr %struct.sk_buff, ptr %cur.0, i32 0, i32 3, i32 18
  %20 = ptrtoint ptr %count.3.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %bf.load.3.i.i = load i16, ptr %count.3.i.i, align 1
  %bf.clear.3.i.i = and i16 %bf.load.3.i.i, 2047
  store i16 %bf.clear.3.i.i, ptr %count.3.i.i, align 1
  %add.ptr.i.i = getelementptr %struct.sk_buff, ptr %cur.0, i32 0, i32 3, i32 20
  %21 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 28)
  %22 = ptrtoint ptr %cb.i56 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cb.i56, align 8
  %and.i = and i32 %23, -513
  %masksel.i = select i1 %cmp38, i32 512, i32 0
  %storemerge.i = or i32 %and.i, %masksel.i
  store i32 %storemerge.i, ptr %cb.i56, align 8
  %24 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rtwdev, align 8
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %25, ptr noundef %cur.0) #10
  br label %for.end

for.end:                                          ; preds = %if.then35, %for.cond.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_report1, i32 noundef %call23) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_tx_pkt_info_update(ptr noundef %rtwdev, ptr noundef writeonly %pkt_info, ptr noundef readonly %sta, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %tobool.not = icmp eq ptr %sta, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vif2 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %vif2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vif2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vif.0 = phi ptr [ %7, %if.then ], [ null, %entry.if.end_crit_edge ]
  %8 = and i16 %5, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp.i = icmp eq i16 %8, 0
  %9 = and i16 %5, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 18432, i16 %9)
  %cmp.i48 = icmp eq i16 %9, 18432
  %or.cond = or i1 %cmp.i, %cmp.i48
  br i1 %or.cond, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %current_band_type.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 10
  %10 = ptrtoint ptr %current_band_type.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %current_band_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp.i.i = icmp eq i8 %11, 1
  %rate_id.i.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 4
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then5
  %12 = ptrtoint ptr %rate_id.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 8, ptr %rate_id.i.i, align 1
  %vif1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %13 = ptrtoint ptr %vif1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vif1.i.i.i, align 8
  %flags.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 38
  %15 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags.i.i.i, align 4
  %tobool4.not.i.i.i = icmp eq ptr %14, null
  br i1 %tobool4.not.i.i.i, label %if.then.i.i.rtw_tx_mgmt_pkt_info_update.exit_crit_edge, label %lor.lhs.false.i.i.i

if.then.i.i.rtw_tx_mgmt_pkt_info_update.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_tx_mgmt_pkt_info_update.exit

lor.lhs.false.i.i.i:                              ; preds = %if.then.i.i
  %17 = and i32 %16, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i.i = icmp ne i32 %17, 0
  %basic_rates.i.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %14, i32 0, i32 1, i32 24
  %18 = ptrtoint ptr %basic_rates.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %basic_rates.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool5.not.i.i.i = icmp eq i32 %19, 0
  %brmerge20.i.i.i = select i1 %tobool5.not.i.i.i, i1 true, i1 %tobool.not.i.i.i
  br i1 %brmerge20.i.i.i, label %lor.lhs.false.i.i.i.rtw_tx_mgmt_pkt_info_update.exit_crit_edge, label %if.end.i.i.i

lor.lhs.false.i.i.i.rtw_tx_mgmt_pkt_info_update.exit_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_tx_mgmt_pkt_info_update.exit

if.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = tail call i32 @llvm.cttz.i32(i32 %19, i1 false) #10, !range !59
  %21 = trunc i32 %20 to i8
  br label %rtw_tx_mgmt_pkt_info_update.exit

if.else.i.i:                                      ; preds = %if.then5
  %22 = ptrtoint ptr %rate_id.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 7, ptr %rate_id.i.i, align 1
  %vif1.i15.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %23 = ptrtoint ptr %vif1.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vif1.i15.i.i, align 8
  %flags.i16.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 38
  %25 = ptrtoint ptr %flags.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags.i16.i.i, align 4
  %tobool4.not.i17.i.i = icmp eq ptr %24, null
  br i1 %tobool4.not.i17.i.i, label %if.else.i.i.rtw_tx_mgmt_pkt_info_update.exit_crit_edge, label %lor.lhs.false.i23.i.i

if.else.i.i.rtw_tx_mgmt_pkt_info_update.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_tx_mgmt_pkt_info_update.exit

lor.lhs.false.i23.i.i:                            ; preds = %if.else.i.i
  %27 = and i32 %26, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i18.i.i = icmp ne i32 %27, 0
  %basic_rates.i19.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %24, i32 0, i32 1, i32 24
  %28 = ptrtoint ptr %basic_rates.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %basic_rates.i19.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool5.not.i20.i.i = icmp eq i32 %29, 0
  %brmerge20.i22.i.i = select i1 %tobool5.not.i20.i.i, i1 true, i1 %tobool.not.i18.i.i
  br i1 %brmerge20.i22.i.i, label %lor.lhs.false.i23.i.i.rtw_tx_mgmt_pkt_info_update.exit_crit_edge, label %if.end.i24.i.i

lor.lhs.false.i23.i.i.rtw_tx_mgmt_pkt_info_update.exit_crit_edge: ; preds = %lor.lhs.false.i23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_tx_mgmt_pkt_info_update.exit

if.end.i24.i.i:                                   ; preds = %lor.lhs.false.i23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = tail call i32 @llvm.cttz.i32(i32 %29, i1 false) #10, !range !59
  %31 = trunc i32 %30 to i8
  %conv13.i.i.i = add nuw nsw i8 %31, 4
  br label %rtw_tx_mgmt_pkt_info_update.exit

rtw_tx_mgmt_pkt_info_update.exit:                 ; preds = %if.end.i24.i.i, %lor.lhs.false.i23.i.i.rtw_tx_mgmt_pkt_info_update.exit_crit_edge, %if.else.i.i.rtw_tx_mgmt_pkt_info_update.exit_crit_edge, %if.end.i.i.i, %lor.lhs.false.i.i.i.rtw_tx_mgmt_pkt_info_update.exit_crit_edge, %if.then.i.i.rtw_tx_mgmt_pkt_info_update.exit_crit_edge
  %retval.0.i25.sink.i.i = phi i8 [ %21, %if.end.i.i.i ], [ 0, %lor.lhs.false.i.i.i.rtw_tx_mgmt_pkt_info_update.exit_crit_edge ], [ 0, %if.then.i.i.rtw_tx_mgmt_pkt_info_update.exit_crit_edge ], [ %conv13.i.i.i, %if.end.i24.i.i ], [ 4, %lor.lhs.false.i23.i.i.rtw_tx_mgmt_pkt_info_update.exit_crit_edge ], [ 4, %if.else.i.i.rtw_tx_mgmt_pkt_info_update.exit_crit_edge ]
  %rate5.i.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 5
  %32 = ptrtoint ptr %rate5.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %retval.0.i25.sink.i.i, ptr %rate5.i.i, align 4
  %use_rate.i.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 18
  %33 = ptrtoint ptr %use_rate.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %use_rate.i.i, align 2
  %dis_rate_fallback.i.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 16
  %34 = ptrtoint ptr %dis_rate_fallback.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %dis_rate_fallback.i.i, align 4
  %dis_qselseq.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 24
  %35 = ptrtoint ptr %dis_qselseq.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %dis_qselseq.i, align 4
  %en_hwseq.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 25
  %36 = ptrtoint ptr %en_hwseq.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %en_hwseq.i, align 1
  %hw_ssn_sel.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 26
  %37 = ptrtoint ptr %hw_ssn_sel.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %hw_ssn_sel.i, align 2
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %8)
  %cmp.i49 = icmp eq i16 %8, 2048
  br i1 %cmp.i49, label %if.then7, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then7:                                         ; preds = %if.else
  %38 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rtwdev, align 8
  %seq_ctrl.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 5
  %40 = ptrtoint ptr %seq_ctrl.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %seq_ctrl.i, align 2
  %42 = and i16 %41, -3841
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #10
  %44 = lshr exact i16 %43, 4
  br i1 %tobool.not, label %if.then7.out.i_crit_edge, label %if.end.i

if.then7.out.i_crit_edge:                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end.i:                                         ; preds = %if.then7
  %45 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cb.i, align 8
  %and4.i = and i32 %46, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.i = icmp ne i32 %and4.i, 0
  br i1 %tobool5.i, label %if.then6.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %ampdu_factor.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 2
  %47 = ptrtoint ptr %ampdu_factor.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ampdu_factor.i.i, align 1
  %conv.i.i = zext i8 %48 to i32
  %shl.i.i = shl i32 4, %conv.i.i
  %49 = trunc i32 %shl.i.i to i8
  %conv1.i.i = add i8 %49, -1
  %ampdu_density.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 3
  %50 = ptrtoint ptr %ampdu_density.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ampdu_density.i.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.end.i.if.end9.i_crit_edge
  %ampdu_factor.0.i = phi i8 [ %conv1.i.i, %if.then6.i ], [ 0, %if.end.i.if.end9.i_crit_edge ]
  %ampdu_density.0.i = phi i8 [ %51, %if.then6.i ], [ 0, %if.end.i.if.end9.i_crit_edge ]
  %use_rts.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 21
  %52 = ptrtoint ptr %use_rts.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load.i = load i8, ptr %use_rts.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool11.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool11.not.i, label %lor.lhs.false.i, label %if.end9.i.if.then13.i_crit_edge

if.end9.i.if.then13.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13.i

lor.lhs.false.i:                                  ; preds = %if.end9.i
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %53 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %39, i32 0, i32 1
  %55 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %wiphy.i, align 8
  %rts_threshold.i = getelementptr inbounds %struct.wiphy, ptr %56, i32 0, i32 36
  %57 = ptrtoint ptr %rts_threshold.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rts_threshold.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %58)
  %cmp.i50 = icmp ugt i32 %54, %58
  br i1 %cmp.i50, label %lor.lhs.false.i.if.then13.i_crit_edge, label %lor.lhs.false.i.if.end14.i_crit_edge

lor.lhs.false.i.if.end14.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

lor.lhs.false.i.if.then13.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13.i

if.then13.i:                                      ; preds = %lor.lhs.false.i.if.then13.i_crit_edge, %if.end9.i.if.then13.i_crit_edge
  %rts.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 23
  %59 = ptrtoint ptr %rts.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %rts.i, align 1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %lor.lhs.false.i.if.end14.i_crit_edge
  %vht_cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5
  %60 = ptrtoint ptr %vht_cap.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %vht_cap.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool15.not.i = icmp eq i8 %61, 0
  br i1 %tobool15.not.i, label %if.else.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end14.i
  %tx_mcs_map2.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 5, i32 2, i32 2
  %62 = ptrtoint ptr %tx_mcs_map2.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %tx_mcs_map2.i.i, align 4
  %64 = tail call i16 @llvm.bswap.i16(i16 %63) #10
  %nss.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 34, i32 3
  %65 = ptrtoint ptr %nss.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %nss.i.i, align 1
  %67 = zext i8 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values)
  switch i8 %66, label %if.then12.i.i [
    i8 1, label %if.then.i.i51
    i8 0, label %if.then16.i.if.end28.i_crit_edge
  ]

if.then16.i.if.end28.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i

if.then.i.i51:                                    ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  %68 = and i16 %64, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %68)
  %switch.selectcmp.i.i = icmp eq i16 %68, 1
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i8 52, i8 53
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %switch.selectcmp24.i.i = icmp eq i16 %68, 0
  %switch.select25.i.i = select i1 %switch.selectcmp24.i.i, i8 51, i8 %switch.select.i.i
  br label %if.end28.i

if.then12.i.i:                                    ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  %69 = lshr i16 %64, 2
  %70 = and i16 %69, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %70)
  %switch.selectcmp26.i.i = icmp eq i16 %70, 1
  %switch.select27.i.i = select i1 %switch.selectcmp26.i.i, i8 62, i8 63
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %switch.selectcmp28.i.i = icmp eq i16 %70, 0
  %switch.select29.i.i = select i1 %switch.selectcmp28.i.i, i8 61, i8 %switch.select27.i.i
  br label %if.end28.i

if.else.i:                                        ; preds = %if.end14.i
  %ht_supported.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %71 = ptrtoint ptr %ht_supported.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %ht_supported.i, align 2, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool18.not.i = icmp eq i8 %72, 0
  br i1 %tobool18.not.i, label %if.else21.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.else.i
  %rf_type.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 13
  %73 = ptrtoint ptr %rf_type.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %rf_type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %74)
  %cmp.i.i52 = icmp eq i8 %74, 2
  br i1 %cmp.i.i52, label %land.lhs.true.i.i, label %if.then19.i.if.else.i.i53_crit_edge

if.then19.i.if.else.i.i53_crit_edge:              ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i53

land.lhs.true.i.i:                                ; preds = %if.then19.i
  %arrayidx.i.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 1
  %75 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %cmp3.not.i.i = icmp eq i8 %76, 0
  br i1 %cmp3.not.i.i, label %land.lhs.true.i.i.if.else.i.i53_crit_edge, label %land.lhs.true.i.i.if.end28.i_crit_edge

land.lhs.true.i.i.if.end28.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i

land.lhs.true.i.i.if.else.i.i53_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i.i53

if.else.i.i53:                                    ; preds = %land.lhs.true.i.i.if.else.i.i53_crit_edge, %if.then19.i.if.else.i.i53_crit_edge
  br label %if.end28.i

if.else21.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %78)
  %cmp22.i = icmp ult i32 %78, 16
  %..i = select i1 %cmp22.i, i8 3, i8 11
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else21.i, %if.else.i.i53, %land.lhs.true.i.i.if.end28.i_crit_edge, %if.then12.i.i, %if.then.i.i51, %if.then16.i.if.end28.i_crit_edge
  %rate.0.i = phi i8 [ %..i, %if.else21.i ], [ %switch.select25.i.i, %if.then.i.i51 ], [ %switch.select29.i.i, %if.then12.i.i ], [ 53, %if.then16.i.if.end28.i_crit_edge ], [ 19, %if.else.i.i53 ], [ 27, %land.lhs.true.i.i.if.end28.i_crit_edge ]
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %bw_mode.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 4
  %79 = ptrtoint ptr %bw_mode.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bw_mode.i, align 8
  %conv29.i = trunc i32 %80 to i8
  %rate_id30.i = getelementptr inbounds %struct.rtw_sta_info, ptr %drv_priv.i, i32 0, i32 5
  %81 = ptrtoint ptr %rate_id30.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %rate_id30.i, align 2
  %stbc_en.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 1, i32 4
  %83 = ptrtoint ptr %stbc_en.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load31.i = load i8, ptr %stbc_en.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %bf.load31.i)
  %tobool33.i = icmp ugt i8 %bf.load31.i, 63
  %84 = and i8 %bf.load31.i, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool36.i = icmp ne i8 %84, 0
  br label %out.i

out.i:                                            ; preds = %if.end28.i, %if.then7.out.i_crit_edge
  %ampdu_factor.1.i = phi i8 [ %ampdu_factor.0.i, %if.end28.i ], [ 0, %if.then7.out.i_crit_edge ]
  %ampdu_density.1.i = phi i8 [ %ampdu_density.0.i, %if.end28.i ], [ 0, %if.then7.out.i_crit_edge ]
  %ampdu_en.1.off0.i = phi i1 [ %tobool5.i, %if.end28.i ], [ false, %if.then7.out.i_crit_edge ]
  %rate.1.i = phi i8 [ %rate.0.i, %if.end28.i ], [ 4, %if.then7.out.i_crit_edge ]
  %rate_id.0.i = phi i8 [ %82, %if.end28.i ], [ 6, %if.then7.out.i_crit_edge ]
  %bw.0.i = phi i8 [ %conv29.i, %if.end28.i ], [ 0, %if.then7.out.i_crit_edge ]
  %stbc.0.off0.i = phi i1 [ %tobool33.i, %if.end28.i ], [ false, %if.then7.out.i_crit_edge ]
  %ldpc.0.off0.i = phi i1 [ %tobool36.i, %if.end28.i ], [ false, %if.then7.out.i_crit_edge ]
  %seq38.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 13
  %85 = ptrtoint ptr %seq38.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %44, ptr %seq38.i, align 4
  %ampdu_factor39.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 11
  %86 = ptrtoint ptr %ampdu_factor39.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %ampdu_factor.1.i, ptr %ampdu_factor39.i, align 2
  %ampdu_density40.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 12
  %87 = ptrtoint ptr %ampdu_density40.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %ampdu_density.1.i, ptr %ampdu_density40.i, align 1
  %ampdu_en42.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 10
  %frombool43.i = zext i1 %ampdu_en.1.off0.i to i8
  %88 = ptrtoint ptr %ampdu_en42.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %frombool43.i, ptr %ampdu_en42.i, align 1
  %rate44.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 5
  %89 = ptrtoint ptr %rate44.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %rate.1.i, ptr %rate44.i, align 4
  %rate_id45.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 4
  %90 = ptrtoint ptr %rate_id45.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %rate_id.0.i, ptr %rate_id45.i, align 1
  %bw46.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 7
  %91 = ptrtoint ptr %bw46.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %bw.0.i, ptr %bw46.i, align 2
  %stbc48.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 14
  %frombool49.i = zext i1 %stbc.0.off0.i to i8
  %92 = ptrtoint ptr %stbc48.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %frombool49.i, ptr %stbc48.i, align 2
  %ldpc51.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 15
  %frombool52.i = zext i1 %ldpc.0.off0.i to i8
  %93 = ptrtoint ptr %ldpc51.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %frombool52.i, ptr %ldpc51.i, align 1
  %fix_rate53.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 24
  %94 = ptrtoint ptr %fix_rate53.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %fix_rate53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 84, i8 %95)
  %cmp55.i = icmp ult i8 %95, 84
  br i1 %cmp55.i, label %if.then57.i, label %out.i.if.end9_crit_edge

out.i.if.end9_crit_edge:                          ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then57.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %rate44.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %rate44.i, align 4
  %dis_rate_fallback.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 16
  %97 = ptrtoint ptr %dis_rate_fallback.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 1, ptr %dis_rate_fallback.i, align 4
  %use_rate.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 18
  %98 = ptrtoint ptr %use_rate.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %use_rate.i, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.then57.i, %out.i.if.end9_crit_edge, %if.else.if.end9_crit_edge, %rtw_tx_mgmt_pkt_info_update.exit
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 2
  %99 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %addr1, align 2
  %add.ptr1.i = getelementptr %struct.ieee80211_hdr, ptr %3, i32 0, i32 2, i32 2
  %101 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %102, %100
  %add.ptr3.i = getelementptr %struct.ieee80211_hdr, ptr %3, i32 0, i32 2, i32 4
  %103 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %104
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i54 = icmp eq i16 %and510.i, -1
  br i1 %cmp.i54, label %if.end9.lor.end_crit_edge, label %lor.rhs

if.end9.lor.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

lor.rhs:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %105 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %addr1, align 4
  %107 = and i32 %106, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.i = icmp ne i32 %107, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end9.lor.end_crit_edge
  %108 = phi i1 [ true, %if.end9.lor.end_crit_edge ], [ %tobool.i, %lor.rhs ]
  %109 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %cb.i, align 8
  %and = and i32 %110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %lor.end.if.end17_crit_edge, label %if.then16

lor.end.if.end17_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then16:                                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  %sn.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 28, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sn.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %sn.i, i32 1, i32 3, i32 1) #10
  %111 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sn.i, ptr %sn.i, i32 1, ptr elementtype(i32) %sn.i) #10, !srcloc !61
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %111, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !62
  %call.tr.i = trunc i32 %asmresult.i.i.i.i.i to i8
  %conv.i = shl i8 %call.tr.i, 2
  %sn2.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 9
  %112 = ptrtoint ptr %sn2.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv.i, ptr %sn2.i, align 4
  %report.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 22
  %113 = ptrtoint ptr %report.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 1, ptr %report.i, align 2
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %lor.end.if.end17_crit_edge
  %frombool = zext i1 %108 to i8
  %bmc19 = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 17
  %114 = ptrtoint ptr %bmc19 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %frombool, ptr %bmc19, align 1
  %hw_key.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %115 = ptrtoint ptr %hw_key.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hw_key.i, align 4
  %tobool1.not.i = icmp eq ptr %116, null
  br i1 %tobool1.not.i, label %if.end17.rtw_tx_pkt_info_update_sec.exit_crit_edge, label %if.then.i

if.end17.rtw_tx_pkt_info_update_sec.exit_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_tx_pkt_info_update_sec.exit

if.then.i:                                        ; preds = %if.end17
  %cipher.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %cipher.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %cipher.i, align 8
  %switch.tableidx = add i32 %118, -1027073
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %119 = icmp ult i32 %switch.tableidx, 5
  br i1 %119, label %switch.lookup, label %if.then.i.rtw_tx_pkt_info_update_sec.exit_crit_edge

if.then.i.rtw_tx_pkt_info_update_sec.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_tx_pkt_info_update_sec.exit

switch.lookup:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.rtw_tx_pkt_info_update, i32 0, i32 %switch.tableidx
  %120 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %120)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %rtw_tx_pkt_info_update_sec.exit

rtw_tx_pkt_info_update_sec.exit:                  ; preds = %switch.lookup, %if.then.i.rtw_tx_pkt_info_update_sec.exit_crit_edge, %if.end17.rtw_tx_pkt_info_update_sec.exit_crit_edge
  %sec_type.1.i = phi i8 [ 0, %if.end17.rtw_tx_pkt_info_update_sec.exit_crit_edge ], [ 0, %if.then.i.rtw_tx_pkt_info_update_sec.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %sec_type4.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 8
  %121 = ptrtoint ptr %sec_type4.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %sec_type.1.i, ptr %sec_type4.i, align 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %122 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %len, align 4
  %124 = ptrtoint ptr %pkt_info to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %pkt_info, align 4
  %tx_pkt_desc_sz = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 4
  %125 = ptrtoint ptr %tx_pkt_desc_sz to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %tx_pkt_desc_sz, align 4
  %offset = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 1
  %127 = ptrtoint ptr %offset to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %126, ptr %offset, align 4
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %128 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %priority, align 4
  %conv = trunc i32 %129 to i8
  %qsel = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 6
  %130 = ptrtoint ptr %qsel to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv, ptr %qsel, align 1
  %ls = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 19
  %131 = ptrtoint ptr %ls to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 1, ptr %ls, align 1
  %132 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %data, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %133, align 2
  %136 = and i16 %135, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %136)
  %cmp.i.i58 = icmp eq i16 %136, 2048
  br i1 %cmp.i.i58, label %if.end.i59, label %rtw_tx_pkt_info_update_sec.exit.rtw_tx_stats.exit_crit_edge

rtw_tx_pkt_info_update_sec.exit.rtw_tx_stats.exit_crit_edge: ; preds = %rtw_tx_pkt_info_update_sec.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_tx_stats.exit

if.end.i59:                                       ; preds = %rtw_tx_pkt_info_update_sec.exit
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %133, i32 0, i32 2
  %137 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %addr1.i, align 2
  %add.ptr1.i.i = getelementptr %struct.ieee80211_hdr, ptr %133, i32 0, i32 2, i32 2
  %139 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %add.ptr1.i.i, align 2
  %and9.i.i = and i16 %140, %138
  %add.ptr3.i.i = getelementptr %struct.ieee80211_hdr, ptr %133, i32 0, i32 2, i32 4
  %141 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %add.ptr3.i.i, align 2
  %and510.i.i = and i16 %and9.i.i, %142
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i)
  %cmp.i27.i = icmp eq i16 %and510.i.i, -1
  br i1 %cmp.i27.i, label %if.end.i59.rtw_tx_stats.exit_crit_edge, label %land.lhs.true.i

if.end.i59.rtw_tx_stats.exit_crit_edge:           ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_tx_stats.exit

land.lhs.true.i:                                  ; preds = %if.end.i59
  %143 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %addr1.i, align 4
  %145 = and i32 %144, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool.i.not.i = icmp eq i32 %145, 0
  br i1 %tobool.i.not.i, label %if.then5.i, label %land.lhs.true.i.rtw_tx_stats.exit_crit_edge

land.lhs.true.i.rtw_tx_stats.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_tx_stats.exit

if.then5.i:                                       ; preds = %land.lhs.true.i
  %146 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %len, align 4
  %conv.i61 = zext i32 %147 to i64
  %stats.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 10
  %148 = ptrtoint ptr %stats.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %stats.i, align 8
  %add.i = add i64 %149, %conv.i61
  store i64 %add.i, ptr %stats.i, align 8
  %tx_cnt.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 10, i32 2
  %150 = ptrtoint ptr %tx_cnt.i to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %tx_cnt.i, align 8
  %inc.i = add i64 %151, 1
  store i64 %inc.i, ptr %tx_cnt.i, align 8
  %tobool.not.i62 = icmp eq ptr %vif.0, null
  br i1 %tobool.not.i62, label %if.then5.i.rtw_tx_stats.exit_crit_edge, label %if.then7.i

if.then5.i.rtw_tx_stats.exit_crit_edge:           ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_tx_stats.exit

if.then7.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  %152 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %len, align 4
  %conv10.i = zext i32 %153 to i64
  %stats11.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif.0, i32 1, i32 1, i32 29
  %154 = ptrtoint ptr %stats11.i to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %stats11.i, align 8
  %add13.i = add i64 %155, %conv10.i
  store i64 %add13.i, ptr %stats11.i, align 8
  %tx_cnt15.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif.0, i32 1, i32 1, i32 32, i32 1
  %156 = ptrtoint ptr %tx_cnt15.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %tx_cnt15.i, align 8
  %inc16.i = add i64 %157, 1
  store i64 %inc16.i, ptr %tx_cnt15.i, align 8
  br label %rtw_tx_stats.exit

rtw_tx_stats.exit:                                ; preds = %if.then7.i, %if.then5.i.rtw_tx_stats.exit_crit_edge, %land.lhs.true.i.rtw_tx_stats.exit_crit_edge, %if.end.i59.rtw_tx_stats.exit_crit_edge, %rtw_tx_pkt_info_update_sec.exit.rtw_tx_stats.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtw_tx_rsvd_page_pkt_info_update(ptr noundef %rtwdev, ptr nocapture noundef writeonly %pkt_info, ptr nocapture noundef readonly %skb, i32 noundef %type) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %switch = icmp ult i32 %type, 2
  br i1 %switch, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %qsel = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 6
  %4 = ptrtoint ptr %qsel to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 18, ptr %qsel, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %current_band_type.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 10
  %5 = ptrtoint ptr %current_band_type.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %current_band_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.i = icmp eq i8 %6, 1
  %rate_id.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 4
  %. = select i1 %cmp.i, i8 8, i8 7
  %.37 = select i1 %cmp.i, i8 0, i8 4
  %7 = ptrtoint ptr %rate_id.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %., ptr %rate_id.i, align 1
  %flags.i16.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 38
  %8 = ptrtoint ptr %flags.i16.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i16.i, align 4
  %rate5.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 5
  %10 = ptrtoint ptr %rate5.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.37, ptr %rate5.i, align 4
  %use_rate.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 18
  %11 = ptrtoint ptr %use_rate.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %use_rate.i, align 2
  %dis_rate_fallback.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 16
  %12 = ptrtoint ptr %dis_rate_fallback.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %dis_rate_fallback.i, align 4
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr1, align 2
  %add.ptr1.i = getelementptr %struct.ieee80211_hdr, ptr %3, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %16, %14
  %add.ptr3.i = getelementptr %struct.ieee80211_hdr, ptr %3, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %18
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i34 = icmp eq i16 %and510.i, -1
  br i1 %cmp.i34, label %if.end.lor.end_crit_edge, label %lor.rhs

if.end.lor.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

lor.rhs:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr1, align 4
  %21 = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i = icmp ne i32 %21, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.lor.end_crit_edge
  %22 = phi i1 [ true, %if.end.lor.end_crit_edge ], [ %tobool.i, %lor.rhs ]
  %frombool = zext i1 %22 to i8
  %bmc6 = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 17
  %23 = ptrtoint ptr %bmc6 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %frombool, ptr %bmc6, align 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  %26 = ptrtoint ptr %pkt_info to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %pkt_info, align 4
  %tx_pkt_desc_sz = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %tx_pkt_desc_sz to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tx_pkt_desc_sz, align 4
  %offset = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 1
  %29 = ptrtoint ptr %offset to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %offset, align 4
  %ls = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 19
  %30 = ptrtoint ptr %ls to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %ls, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp8 = icmp eq i32 %type, 2
  br i1 %cmp8, label %if.end10.thread, label %if.end10

if.end10.thread:                                  ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  %nav_use_hdr = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 27
  %31 = ptrtoint ptr %nav_use_hdr to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %nav_use_hdr, align 1
  br label %if.end13

if.end10:                                         ; preds = %lor.end
  %dis_qselseq = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 24
  %32 = ptrtoint ptr %dis_qselseq to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %dis_qselseq, align 4
  %en_hwseq = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 25
  %33 = ptrtoint ptr %en_hwseq to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %en_hwseq, align 1
  %hw_ssn_sel = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 26
  %34 = ptrtoint ptr %hw_ssn_sel to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %hw_ssn_sel, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %type)
  %cmp11 = icmp eq i32 %type, 5
  br i1 %cmp11, label %if.then12, label %if.end10.if.end13_crit_edge

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %bt_null = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 28
  %35 = ptrtoint ptr %bt_null to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %bt_null, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge, %if.end10.thread
  %hw_key.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %36 = ptrtoint ptr %hw_key.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw_key.i, align 4
  %tobool1.not.i = icmp eq ptr %37, null
  br i1 %tobool1.not.i, label %if.end13.rtw_tx_pkt_info_update_sec.exit_crit_edge, label %if.then.i35

if.end13.rtw_tx_pkt_info_update_sec.exit_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_tx_pkt_info_update_sec.exit

if.then.i35:                                      ; preds = %if.end13
  %cipher.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %cipher.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cipher.i, align 8
  %switch.tableidx = add i32 %39, -1027073
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %40 = icmp ult i32 %switch.tableidx, 5
  br i1 %40, label %switch.lookup, label %if.then.i35.rtw_tx_pkt_info_update_sec.exit_crit_edge

if.then.i35.rtw_tx_pkt_info_update_sec.exit_crit_edge: ; preds = %if.then.i35
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_tx_pkt_info_update_sec.exit

switch.lookup:                                    ; preds = %if.then.i35
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.rtw_tx_rsvd_page_pkt_info_update, i32 0, i32 %switch.tableidx
  %41 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %41)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %rtw_tx_pkt_info_update_sec.exit

rtw_tx_pkt_info_update_sec.exit:                  ; preds = %switch.lookup, %if.then.i35.rtw_tx_pkt_info_update_sec.exit_crit_edge, %if.end13.rtw_tx_pkt_info_update_sec.exit_crit_edge
  %sec_type.1.i = phi i8 [ 0, %if.end13.rtw_tx_pkt_info_update_sec.exit_crit_edge ], [ 0, %if.then.i35.rtw_tx_pkt_info_update_sec.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %sec_type4.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 8
  %42 = ptrtoint ptr %sec_type4.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %sec_type.1.i, ptr %sec_type4.i, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_tx_write_data_rsvd_page_get(ptr noundef %rtwdev, ptr nocapture noundef writeonly %pkt_info, ptr nocapture noundef readonly %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %tx_pkt_desc_sz2 = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %tx_pkt_desc_sz2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_pkt_desc_sz2, align 4
  %conv = zext i8 %3 to i32
  %add = add i32 %conv, %size
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add, i32 noundef 2592) #10
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %9, i32 %conv
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %size) #10
  %10 = call ptr @memcpy(ptr %call.i, ptr %buf, i32 %size)
  %11 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip1, align 4
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %current_band_type.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 10
  %15 = ptrtoint ptr %current_band_type.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %current_band_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp.i.i = icmp eq i8 %16, 1
  %rate_id.i.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 4
  %..i = select i1 %cmp.i.i, i8 8, i8 7
  %.37.i = select i1 %cmp.i.i, i8 0, i8 4
  %17 = ptrtoint ptr %rate_id.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %..i, ptr %rate_id.i.i, align 1
  %flags.i16.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 38
  %18 = ptrtoint ptr %flags.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags.i16.i.i, align 4
  %rate5.i.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 5
  %20 = ptrtoint ptr %rate5.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.37.i, ptr %rate5.i.i, align 4
  %use_rate.i.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 18
  %21 = ptrtoint ptr %use_rate.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %use_rate.i.i, align 2
  %dis_rate_fallback.i.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 16
  %22 = ptrtoint ptr %dis_rate_fallback.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %dis_rate_fallback.i.i, align 4
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %14, i32 0, i32 2
  %23 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %addr1.i, align 2
  %add.ptr1.i.i = getelementptr %struct.ieee80211_hdr, ptr %14, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr1.i.i, align 2
  %and9.i.i = and i16 %26, %24
  %add.ptr3.i.i = getelementptr %struct.ieee80211_hdr, ptr %14, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr3.i.i, align 2
  %and510.i.i = and i16 %and9.i.i, %28
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i)
  %cmp.i34.i = icmp eq i16 %and510.i.i, -1
  br i1 %cmp.i34.i, label %if.end.lor.end.i_crit_edge, label %lor.rhs.i

if.end.lor.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addr1.i, align 4
  %31 = and i32 %30, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.i.i = icmp ne i32 %31, 0
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %if.end.lor.end.i_crit_edge
  %32 = phi i1 [ true, %if.end.lor.end.i_crit_edge ], [ %tobool.i.i, %lor.rhs.i ]
  %frombool.i = zext i1 %32 to i8
  %bmc6.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 17
  %33 = ptrtoint ptr %bmc6.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool.i, ptr %bmc6.i, align 1
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %34 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len.i, align 4
  %36 = ptrtoint ptr %pkt_info to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %pkt_info, align 4
  %tx_pkt_desc_sz.i = getelementptr inbounds %struct.rtw_chip_info, ptr %12, i32 0, i32 4
  %37 = ptrtoint ptr %tx_pkt_desc_sz.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %tx_pkt_desc_sz.i, align 4
  %offset.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 1
  %39 = ptrtoint ptr %offset.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %offset.i, align 4
  %ls.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 19
  %40 = ptrtoint ptr %ls.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %ls.i, align 1
  %dis_qselseq.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 24
  %41 = ptrtoint ptr %dis_qselseq.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %dis_qselseq.i, align 4
  %en_hwseq.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 25
  %42 = ptrtoint ptr %en_hwseq.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %en_hwseq.i, align 1
  %hw_ssn_sel.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 26
  %43 = ptrtoint ptr %hw_ssn_sel.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %hw_ssn_sel.i, align 2
  %hw_key.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 28
  %44 = ptrtoint ptr %hw_key.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw_key.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %45, null
  br i1 %tobool1.not.i.i, label %lor.end.i.rtw_tx_rsvd_page_pkt_info_update.exit_crit_edge, label %if.then.i35.i

lor.end.i.rtw_tx_rsvd_page_pkt_info_update.exit_crit_edge: ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_tx_rsvd_page_pkt_info_update.exit

if.then.i35.i:                                    ; preds = %lor.end.i
  %cipher.i.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %cipher.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cipher.i.i, align 8
  %switch.tableidx = add i32 %47, -1027073
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %48 = icmp ult i32 %switch.tableidx, 5
  br i1 %48, label %switch.lookup, label %if.then.i35.i.rtw_tx_rsvd_page_pkt_info_update.exit_crit_edge

if.then.i35.i.rtw_tx_rsvd_page_pkt_info_update.exit_crit_edge: ; preds = %if.then.i35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_tx_rsvd_page_pkt_info_update.exit

switch.lookup:                                    ; preds = %if.then.i35.i
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.rtw_tx_write_data_rsvd_page_get, i32 0, i32 %switch.tableidx
  %49 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %49)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %rtw_tx_rsvd_page_pkt_info_update.exit

rtw_tx_rsvd_page_pkt_info_update.exit:            ; preds = %switch.lookup, %if.then.i35.i.rtw_tx_rsvd_page_pkt_info_update.exit_crit_edge, %lor.end.i.rtw_tx_rsvd_page_pkt_info_update.exit_crit_edge
  %sec_type.1.i.i = phi i8 [ 0, %lor.end.i.rtw_tx_rsvd_page_pkt_info_update.exit_crit_edge ], [ 0, %if.then.i35.i.rtw_tx_rsvd_page_pkt_info_update.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %sec_type4.i.i = getelementptr inbounds %struct.rtw_tx_pkt_info, ptr %pkt_info, i32 0, i32 8
  %50 = ptrtoint ptr %sec_type4.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %sec_type.1.i.i, ptr %sec_type4.i.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %rtw_tx_rsvd_page_pkt_info_update.exit, %do.end
  ret ptr %call.i.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtw_tx_write_data_h2c_get(ptr nocapture noundef readonly %rtwdev, ptr nocapture noundef writeonly %pkt_info, ptr nocapture noundef readonly %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %tx_pkt_desc_sz2 = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %tx_pkt_desc_sz2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_pkt_desc_sz2, align 4
  %conv = zext i8 %3 to i32
  %add = add i32 %conv, %size
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add, i32 noundef 2592) #10
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.8) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %9, i32 %conv
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %size) #10
  %10 = call ptr @memcpy(ptr %call.i, ptr %buf, i32 %size)
  %11 = ptrtoint ptr %pkt_info to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %size, ptr %pkt_info, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret ptr %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_tx(ptr noundef %rtwdev, ptr nocapture noundef readonly %control, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %pkt_info = alloca %struct.rtw_tx_pkt_info, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %pkt_info) #10
  %0 = call ptr @memset(ptr %pkt_info, i32 0, i32 36)
  %1 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %control, align 4
  call void @rtw_tx_pkt_info_update(ptr noundef %rtwdev, ptr noundef nonnull %pkt_info, ptr noundef %2, ptr noundef %skb)
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %3 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hci.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call.i = call i32 %6(ptr noundef %rtwdev, ptr noundef nonnull %pkt_info, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.10) #13
  %9 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rtwdev, align 8
  call void @ieee80211_free_txskb(ptr noundef %10, ptr noundef %skb) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hci.i, align 8
  %tx_kick_off.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %tx_kick_off.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_kick_off.i, align 4
  call void %14(ptr noundef %rtwdev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %pkt_info) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_tx_work(ptr noundef %w) local_unnamed_addr #0 align 64 {
entry:
  %pkt_info.i.i = alloca %struct.rtw_tx_pkt_info, align 4
  %frame_cnt = alloca i32, align 4
  %byte_cnt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -19024
  %txq_lock = getelementptr i8, ptr %w, i32 -56
  tail call void @_raw_spin_lock_bh(ptr noundef %txq_lock) #10
  %txqs = getelementptr i8, ptr %w, i32 -12
  %0 = ptrtoint ptr %txqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %txqs, align 4
  %cmp.not29 = icmp eq ptr %1, %txqs
  br i1 %cmp.not29, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ba_work.i.i.i = getelementptr i8, ptr %w, i32 44
  %hci.i.i.i = getelementptr i8, ptr %w, i32 -19016
  %dev.i.i = getelementptr i8, ptr %w, i32 -19020
  br label %for.body

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %for.body.lr.ph
  %rtwtxq.030 = phi ptr [ %1, %for.body.lr.ph ], [ %tmp1.0, %list_del_init.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %rtwtxq.030 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp1.0 = load ptr, ptr %rtwtxq.030, align 4
  %add.ptr.i = getelementptr i8, ptr %rtwtxq.030, i32 -12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frame_cnt) #10
  %3 = ptrtoint ptr %frame_cnt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %frame_cnt, align 4, !annotation !63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %byte_cnt) #10
  %4 = ptrtoint ptr %byte_cnt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %byte_cnt, align 4, !annotation !63
  call void @ieee80211_txq_get_depth(ptr noundef %add.ptr.i, ptr noundef nonnull %frame_cnt, ptr noundef nonnull %byte_cnt) #10
  %5 = ptrtoint ptr %frame_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %frame_cnt, align 4
  %7 = call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !64
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %for.body.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

for.body.rcu_read_lock.exit.i_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %for.body
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %for.body.rcu_read_lock.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp23.not.i = icmp eq i32 %6, 0
  br i1 %cmp23.not.i, label %rcu_read_lock.exit.i.for.end.i_crit_edge, label %for.body.lr.ph.i

rcu_read_lock.exit.i.for.end.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %rcu_read_lock.exit.i
  %flags.i.i.i = getelementptr inbounds %struct.rtw_txq, ptr %rtwtxq.030, i32 0, i32 1
  %sta.i.i.i = getelementptr i8, ptr %rtwtxq.030, i32 -8
  %tid.i.i.i = getelementptr i8, ptr %rtwtxq.030, i32 -4
  %last_push.i.i = getelementptr inbounds %struct.rtw_txq, ptr %rtwtxq.030, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 8
  %call1.i11.i = call ptr @ieee80211_tx_dequeue(ptr noundef %12, ptr noundef %add.ptr.i) #10
  %tobool.not.i = icmp eq ptr %call1.i11.i, null
  br i1 %tobool.not.i, label %for.body.i.for.end.i_crit_edge, label %if.end.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %pkt_info.i.i) #10
  %13 = call ptr @memset(ptr %pkt_info.i.i, i32 0, i32 36)
  %14 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags.i.i.i, align 4
  %and1.i.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1.i11.i, i32 0, i32 3
  %16 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cb.i.i.i.i, align 8
  %or.i.i.i = or i32 %17, 64
  store i32 %or.i.i.i, ptr %cb.i.i.i.i, align 8
  br label %rtw_txq_check_agg.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end.i
  %queue_mapping.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1.i11.i, i32 0, i32 10
  %18 = ptrtoint ptr %queue_mapping.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %queue_mapping.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp.i.i.i = icmp eq i16 %19, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i.rtw_txq_check_agg.exit.i.i_crit_edge, label %if.end7.i.i.i

if.end.i.i.i.rtw_txq_check_agg.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_txq_check_agg.exit.i.i

if.end7.i.i.i:                                    ; preds = %if.end.i.i.i
  %20 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags.i.i.i, align 4
  %22 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool10.not.i.i.i = icmp eq i32 %22, 0
  br i1 %tobool10.not.i.i.i, label %if.end12.i.i.i, label %if.end7.i.i.i.rtw_txq_check_agg.exit.i.i_crit_edge

if.end7.i.i.i.rtw_txq_check_agg.exit.i.i_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_txq_check_agg.exit.i.i

if.end12.i.i.i:                                   ; preds = %if.end7.i.i.i
  %protocol.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1.i11.i, i32 0, i32 15, i32 0, i32 18
  %23 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %protocol.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %24)
  %cmp14.i.i.i = icmp eq i16 %24, -30578
  br i1 %cmp14.i.i.i, label %if.end12.i.i.i.rtw_txq_check_agg.exit.i.i_crit_edge, label %if.end19.i.i.i, !prof !65

if.end12.i.i.i.rtw_txq_check_agg.exit.i.i_crit_edge: ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_txq_check_agg.exit.i.i

if.end19.i.i.i:                                   ; preds = %if.end12.i.i.i
  %25 = ptrtoint ptr %sta.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sta.i.i.i, align 4
  %tobool20.not.i.i.i = icmp eq ptr %26, null
  br i1 %tobool20.not.i.i.i, label %if.end19.i.i.i.rtw_txq_check_agg.exit.i.i_crit_edge, label %if.end22.i.i.i

if.end19.i.i.i.rtw_txq_check_agg.exit.i.i_crit_edge: ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_txq_check_agg.exit.i.i

if.end22.i.i.i:                                   ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %drv_priv.i.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %26, i32 0, i32 29
  %27 = ptrtoint ptr %tid.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tid.i.i.i, align 4
  %conv24.i.i.i = zext i8 %28 to i32
  %tid_ba.i.i.i = getelementptr inbounds %struct.rtw_sta_info, ptr %drv_priv.i.i.i, i32 0, i32 15
  call void @_set_bit(i32 noundef %conv24.i.i.i, ptr noundef %tid_ba.i.i.i) #10
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 8
  call void @ieee80211_queue_work(ptr noundef %30, ptr noundef %ba_work.i.i.i) #10
  br label %rtw_txq_check_agg.exit.i.i

rtw_txq_check_agg.exit.i.i:                       ; preds = %if.end22.i.i.i, %if.end19.i.i.i.rtw_txq_check_agg.exit.i.i_crit_edge, %if.end12.i.i.i.rtw_txq_check_agg.exit.i.i_crit_edge, %if.end7.i.i.i.rtw_txq_check_agg.exit.i.i_crit_edge, %if.end.i.i.i.rtw_txq_check_agg.exit.i.i_crit_edge, %if.then.i.i.i
  %31 = ptrtoint ptr %sta.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sta.i.i.i, align 4
  call void @rtw_tx_pkt_info_update(ptr noundef %add.ptr, ptr noundef nonnull %pkt_info.i.i, ptr noundef %32, ptr noundef nonnull %call1.i11.i) #10
  %33 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hci.i.i.i, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %call.i.i.i = call i32 %36(ptr noundef %add.ptr, ptr noundef nonnull %pkt_info.i.i, ptr noundef nonnull %call1.i11.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i12.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i12.i, label %for.inc.i, label %do.end.i

do.end.i:                                         ; preds = %rtw_txq_check_agg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.10) #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %pkt_info.i.i) #10
  %39 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.12, i32 noundef %call.i.i.i) #13
  br label %for.end.i

for.inc.i:                                        ; preds = %rtw_txq_check_agg.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %42 = ptrtoint ptr %last_push.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %last_push.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %pkt_info.i.i) #10
  %inc.i = add nuw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end.i, %for.body.i.for.end.i_crit_edge, %rcu_read_lock.exit.i.for.end.i_crit_edge
  %call.i13.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i13.i, label %for.end.i.rtw_txq_push.exit_crit_edge, label %land.lhs.true.i16.i

for.end.i.rtw_txq_push.exit_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_txq_push.exit

land.lhs.true.i16.i:                              ; preds = %for.end.i
  %call1.i14.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14.i)
  %tobool.not.i15.i = icmp eq i32 %call1.i14.i, 0
  br i1 %tobool.not.i15.i, label %land.lhs.true.i16.i.rtw_txq_push.exit_crit_edge, label %land.lhs.true2.i18.i

land.lhs.true.i16.i.rtw_txq_push.exit_crit_edge:  ; preds = %land.lhs.true.i16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_txq_push.exit

land.lhs.true2.i18.i:                             ; preds = %land.lhs.true.i16.i
  %.b4.i17.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i17.i, label %land.lhs.true2.i18.i.rtw_txq_push.exit_crit_edge, label %if.then.i19.i

land.lhs.true2.i18.i.rtw_txq_push.exit_crit_edge: ; preds = %land.lhs.true2.i18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtw_txq_push.exit

if.then.i19.i:                                    ; preds = %land.lhs.true2.i18.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.17) #10
  br label %rtw_txq_push.exit

rtw_txq_push.exit:                                ; preds = %if.then.i19.i, %land.lhs.true2.i18.i.rtw_txq_push.exit_crit_edge, %land.lhs.true.i16.i.rtw_txq_push.exit_crit_edge, %for.end.i.rtw_txq_push.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !66
  %43 = call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i.i.i.i.i20.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i20.i to ptr
  %preempt_count.i.i.i.i21.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i21.i, align 4
  %sub.i.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i21.i, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i28 = call zeroext i1 @__list_del_entry_valid(ptr noundef %rtwtxq.030) #10
  br i1 %call.i.i28, label %if.end.i.i, label %rtw_txq_push.exit.list_del_init.exit_crit_edge

rtw_txq_push.exit.list_del_init.exit_crit_edge:   ; preds = %rtw_txq_push.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %rtw_txq_push.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %rtwtxq.030, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i, align 4
  %49 = ptrtoint ptr %rtwtxq.030 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rtwtxq.030, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev1.i.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %48, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %rtw_txq_push.exit.list_del_init.exit_crit_edge
  %53 = ptrtoint ptr %rtwtxq.030 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %rtwtxq.030, ptr %rtwtxq.030, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %rtwtxq.030, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %rtwtxq.030, ptr %prev.i3.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %byte_cnt) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame_cnt) #10
  %cmp.not = icmp eq ptr %tmp1.0, %txqs
  br i1 %cmp.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %hci.i = getelementptr i8, ptr %w, i32 -19016
  %55 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hci.i, align 8
  %tx_kick_off.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %tx_kick_off.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tx_kick_off.i, align 4
  call void %58(ptr noundef %add.ptr) #10
  call void @_raw_spin_unlock_bh(ptr noundef %txq_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_txq_get_depth(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_txq_init(ptr nocapture noundef readnone %rtwdev, ptr noundef %txq) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %txq, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %drv_priv = getelementptr inbounds %struct.ieee80211_txq, ptr %txq, i32 0, i32 5
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %drv_priv, ptr %drv_priv, align 4
  %prev.i = getelementptr inbounds %struct.ieee80211_txq, ptr %txq, i32 1, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %drv_priv, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_txq_cleanup(ptr noundef %rtwdev, ptr noundef %txq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %txq, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %drv_priv = getelementptr inbounds %struct.ieee80211_txq, ptr %txq, i32 0, i32 5
  %txq_lock = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 23
  tail call void @_raw_spin_lock_bh(ptr noundef %txq_lock) #10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %drv_priv, align 4
  %cmp.i.not = icmp eq ptr %1, %drv_priv
  br i1 %cmp.i.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then2:                                         ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %drv_priv) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then2.list_del_init.exit_crit_edge

if.then2.list_del_init.exit_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.ieee80211_txq, ptr %txq, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_priv, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then2.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %drv_priv, ptr %drv_priv, align 4
  %prev.i3.i = getelementptr inbounds %struct.ieee80211_txq, ptr %txq, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %drv_priv, ptr %prev.i3.i, align 4
  br label %if.end4

if.end4:                                          ; preds = %list_del_init.exit, %if.end.if.end4_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %txq_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_tx_dequeue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !15, !16, !17, !18, !20, !22, !23, !24, !25, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47}
!llvm.named.register.sp = !{!48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__ksymtab_rtw_tx_fill_tx_desc, !1, !"__ksymtab_rtw_tx_fill_tx_desc", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtw88/tx.c", i32 71, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtw88/tx.c", i32 165, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @rtw_tx_report_purge_timer._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @rtw_tx_report_purge_timer._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_rtw_tx_report_enqueue, !11, !"__ksymtab_rtw_tx_report_enqueue", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtw88/tx.c", i32 188, i32 1}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtw88/tx.c", i32 470, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @rtw_tx_write_data_rsvd_page_get._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @rtw_tx_write_data_rsvd_page_get._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__ksymtab_rtw_tx_write_data_rsvd_page_get, !19, !"__ksymtab_rtw_tx_write_data_rsvd_page_get", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtw88/tx.c", i32 480, i32 1}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtw88/tx.c", i32 496, i32 3}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rtw_tx_write_data_h2c_get._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @rtw_tx_write_data_h2c_get._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @__ksymtab_rtw_tx_write_data_h2c_get, !26, !"__ksymtab_rtw_tx_write_data_h2c_get", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/realtek/rtw88/tx.c", i32 506, i32 1}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/realtek/rtw88/tx.c", i32 518, i32 3}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @rtw_tx._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @rtw_tx._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtw88/tx.c", i32 613, i32 4}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @rtw_txq_push._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @rtw_txq_push._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/realtek/rtw88/tx.c", i32 575, i32 3}
!43 = !{ptr @rtw_txq_push_skb._entry, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @rtw_txq_push_skb._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{!"sp"}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i8 0, i8 2}
!59 = !{i32 0, i32 33}
!60 = !{i64 2148748910}
!61 = !{i64 2148664219, i64 2148664251, i64 2148664280, i64 2148664314, i64 2148664345, i64 2148664368}
!62 = !{i64 2148749139}
!63 = !{!"auto-init"}
!64 = !{i64 2149982836}
!65 = !{!"branch_weights", i32 1, i32 2000}
!66 = !{i64 2149983102}
