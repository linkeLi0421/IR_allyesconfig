; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtw88/fw.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtw88/fw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rtw_fw_c2h_cmd_rx_irqsafe\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw_fw_c2h_cmd_rx_irqsafe\09\09\09\09"
module asm "\09.long\09__crc_rtw_fw_c2h_cmd_rx_irqsafe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw_fw_c2h_cmd_rx_irqsafe:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw_fw_c2h_cmd_rx_irqsafe\22\09\09\09\09\09"
module asm "__kstrtabns_rtw_fw_c2h_cmd_rx_irqsafe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtw_fw_c2h_cmd_isr\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw_fw_c2h_cmd_isr\09\09\09\09"
module asm "\09.long\09__crc_rtw_fw_c2h_cmd_isr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw_fw_c2h_cmd_isr:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw_fw_c2h_cmd_isr\22\09\09\09\09\09"
module asm "__kstrtabns_rtw_fw_c2h_cmd_isr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtw_fw_do_iqk\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw_fw_do_iqk\09\09\09\09"
module asm "\09.long\09__crc_rtw_fw_do_iqk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw_fw_do_iqk:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw_fw_do_iqk\22\09\09\09\09\09"
module asm "__kstrtabns_rtw_fw_do_iqk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtw_fw_inform_rfk_status\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw_fw_inform_rfk_status\09\09\09\09"
module asm "\09.long\09__crc_rtw_fw_inform_rfk_status\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw_fw_inform_rfk_status:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw_fw_inform_rfk_status\22\09\09\09\09\09"
module asm "__kstrtabns_rtw_fw_inform_rfk_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rtw_fw_iter_ra_data = type { ptr, ptr }
%struct.rtw_beacon_filter_iter_data = type { ptr, ptr }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
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
%struct.rtw_chip_info = type { ptr, i8, ptr, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i16], ptr, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32], [2 x i32], ptr, i8, ptr, ptr, ptr, ptr, [4 x ptr], ptr, ptr, i32, i8, i16, i8, i8, ptr, i8, i8, ptr, i8, i8, ptr, ptr, i8, [3 x i32], i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.rtw_c2h_adaptivity = type { i8, i8, i8, i8, i8, i8 }
%struct.rtw_hw_reg = type { i32, i32 }
%struct.rtw_hci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtw_hw_reg_offset = type { %struct.rtw_hw_reg, i8 }
%struct.rtw_iqk_para = type { i8, i8 }
%struct.rtw_coex_info_req = type { i8, i8, i8, i8, i8 }
%struct.rtw_sta_info = type { ptr, ptr, %struct.ewma_rssi, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, i64, [1 x i32], %struct.rtw_ra_report, i8, ptr }
%struct.ewma_rssi = type { i32 }
%struct.rtw_ra_report = type { %struct.rate_info, i32, i8 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
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
%struct.rtw_vif = type { i32, i16, [6 x i8], [6 x i8], i8, i8, %struct.list_head, [4 x %struct.ieee80211_tx_queue_params], ptr, ptr, ptr, %struct.rtw_traffic_stats, %struct.rtw_bfee }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.rtw_bfee = type { i32, i16, i8, [6 x i8], i8, i8, i16 }
%struct.rtw_rsvd_page = type { %struct.list_head, ptr, %struct.list_head, ptr, i32, i8, i8, ptr, i16 }
%struct.cfg80211_match_set = type { %struct.cfg80211_ssid, [6 x i8], i32, [6 x i32] }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.rtw_tx_pkt_info = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ieee80211_scan_request = type { %struct.ieee80211_scan_ies, %struct.cfg80211_scan_request }
%struct.ieee80211_scan_ies = type { [6 x ptr], [6 x i32], ptr, i32 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.rtw_lps_pg_dpk_hdr = type <{ i16, [2 x i8], [2 x i16], [2 x [20 x i32]], i8 }>
%struct.rtw_lps_pg_info_hdr = type { i8, i8, i8, i8, i8, i8, i16, [8 x i8] }
%struct.rtw_nlo_info_hdr = type { i8, i8, [2 x i8], [4 x i8], [8 x i8], [16 x i8], [16 x i8], [16 x i8], [8 x i8] }

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"C2H 0x%x isn't handled\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"recv C2H, id=0x%02x, seq=0x%02x, len=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_rtw_fw_c2h_cmd_rx_irqsafe = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw_fw_c2h_cmd_rx_irqsafe = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw_fw_c2h_cmd_rx_irqsafe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw_fw_c2h_cmd_rx_irqsafe to i32), ptr @__kstrtab_rtw_fw_c2h_cmd_rx_irqsafe, ptr @__kstrtabns_rtw_fw_c2h_cmd_rx_irqsafe }, section "___ksymtab+rtw_fw_c2h_cmd_rx_irqsafe", align 4
@rtw_fw_c2h_cmd_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 302, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unhandled firmware c2h interrupt\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtw_fw_c2h_cmd_isr\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/realtek/rtw88/fw.c\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtw_fw_c2h_cmd_isr._entry_ptr = internal global ptr @rtw_fw_c2h_cmd_isr._entry, section ".printk_index", align 4
@__kstrtab_rtw_fw_c2h_cmd_isr = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw_fw_c2h_cmd_isr = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw_fw_c2h_cmd_isr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw_fw_c2h_cmd_isr to i32), ptr @__kstrtab_rtw_fw_c2h_cmd_isr, ptr @__kstrtabns_rtw_fw_c2h_cmd_isr }, section "___ksymtab+rtw_fw_c2h_cmd_isr", align 4
@__kstrtab_rtw_fw_do_iqk = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw_fw_do_iqk = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw_fw_do_iqk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw_fw_do_iqk to i32), ptr @__kstrtab_rtw_fw_do_iqk, ptr @__kstrtabns_rtw_fw_do_iqk }, section "___ksymtab+rtw_fw_do_iqk", align 4
@__kstrtab_rtw_fw_inform_rfk_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw_fw_inform_rfk_status = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw_fw_inform_rfk_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw_fw_inform_rfk_status to i32), ptr @__kstrtab_rtw_fw_inform_rfk_status, ptr @__kstrtabns_rtw_fw_inform_rfk_status }, section "___ksymtab+rtw_fw_inform_rfk_status", align 4
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RSVD_PROBE_RESP loc: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RSVD_PS_POLL loc: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RSVD_NULL loc: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RSVD_QOS_NULL loc: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@rtw_add_rsvd_page_bcn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 1220, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Cannot add beacon rsvd page for %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw_add_rsvd_page_bcn\00", [42 x i8] zeroinitializer }, align 32
@rtw_add_rsvd_page_bcn._entry_ptr = internal global ptr @rtw_add_rsvd_page_bcn._entry, section ".printk_index", align 4
@rtw_add_rsvd_page_pno._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 1238, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Cannot add PNO rsvd page for %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw_add_rsvd_page_pno\00", [42 x i8] zeroinitializer }, align 32
@rtw_add_rsvd_page_pno._entry_ptr = internal global ptr @rtw_add_rsvd_page_pno._entry, section ".printk_index", align 4
@rtw_add_rsvd_page_sta._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 1259, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Cannot add sta rsvd page for %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw_add_rsvd_page_sta\00", [42 x i8] zeroinitializer }, align 32
@rtw_add_rsvd_page_sta._entry_ptr = internal global ptr @rtw_add_rsvd_page_sta._entry, section ".printk_index", align 4
@rtw_fw_write_data_rsvd_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 1305, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to write data to rsvd page\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rtw_fw_write_data_rsvd_page\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rtw_fw_write_data_rsvd_page._entry_ptr = internal global ptr @rtw_fw_write_data_rsvd_page._entry, section ".printk_index", align 4
@rtw_fw_write_data_rsvd_page._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.4, i32 1318, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"error beacon valid\0A\00", [44 x i8] zeroinitializer }, align 32
@rtw_fw_write_data_rsvd_page._entry_ptr.22 = internal global ptr @rtw_fw_write_data_rsvd_page._entry.20, section ".printk_index", align 4
@rtw_fw_download_rsvd_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 1558, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to build rsvd page pkt\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtw_fw_download_rsvd_page\00", [38 x i8] zeroinitializer }, align 32
@rtw_fw_download_rsvd_page._entry_ptr = internal global ptr @rtw_fw_download_rsvd_page._entry, section ".printk_index", align 4
@rtw_fw_download_rsvd_page._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.4, i32 1564, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to download drv rsvd page\0A\00", [62 x i8] zeroinitializer }, align 32
@rtw_fw_download_rsvd_page._entry_ptr.27 = internal global ptr @rtw_fw_download_rsvd_page._entry.25, section ".printk_index", align 4
@rtw_fw_download_rsvd_page._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.4, i32 1575, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to download beacon\0A\00", [37 x i8] zeroinitializer }, align 32
@rtw_fw_download_rsvd_page._entry_ptr.30 = internal global ptr @rtw_fw_download_rsvd_page._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"chip not support dump fw fifo\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"not 4byte alignment\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fw fifo dump size overflow\0A\00", [36 x i8] zeroinitializer }, align 32
@rtw_fw_update_pkt_probe_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 1704, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get probe_req rsvd loc\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rtw_fw_update_pkt_probe_req\00", [36 x i8] zeroinitializer }, align 32
@rtw_fw_update_pkt_probe_req._entry_ptr = internal global ptr @rtw_fw_update_pkt_probe_req._entry, section ".printk_index", align 4
@rtw_fw_update_pkt_probe_req._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.4, i32 1710, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to get probe_req rsvd size\0A\00", [61 x i8] zeroinitializer }, align 32
@rtw_fw_update_pkt_probe_req._entry_ptr.38 = internal global ptr @rtw_fw_update_pkt_probe_req._entry.36, section ".printk_index", align 4
@rtw_edcca_enabled = external dso_local local_unnamed_addr global i8, align 1
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"EDCCA disabled by debugfs\0A\00", [37 x i8] zeroinitializer }, align 32
@rtw_hw_scan_status_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 2112, ptr @.str.42, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HW scan aborted with code: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtw_hw_scan_status_report\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rtw_hw_scan_status_report._entry_ptr = internal global ptr @rtw_hw_scan_status_report._entry, section ".printk_index", align 4
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Chan switch: %x, id: %x, status: %x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid ra report c2h length\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"scan.density = %x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Adaptivity: density %x igi %x l2h_th_init %x l2h %x h2l %x option %x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Reg Setting: L2H %x H2L %x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"EDCCA Flag %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Set\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Unset\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"send H2C content %02x%02x%02x%02x %02x%02x%02x%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid h2c mail box number\0A\00", [35 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rtw_fw_send_h2c_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.4, i32 350, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to send h2c command\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtw_fw_send_h2c_command\00", [40 x i8] zeroinitializer }, align 32
@rtw_fw_send_h2c_command._entry_ptr = internal global ptr @rtw_fw_send_h2c_command._entry, section ".printk_index", align 4
@rtw_fw_send_h2c_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.4, i32 380, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to send h2c packet\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtw_fw_send_h2c_packet\00", [41 x i8] zeroinitializer }, align 32
@rtw_fw_send_h2c_packet._entry_ptr = internal global ptr @rtw_fw_send_h2c_packet._entry, section ".printk_index", align 4
@rtw_add_rsvd_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.4, i32 1169, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to alloc rsvd page %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtw_add_rsvd_page\00", [46 x i8] zeroinitializer }, align 32
@rtw_add_rsvd_page._entry_ptr = internal global ptr @rtw_add_rsvd_page._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rtw_add_rsvd_page_probe_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.4, i32 1185, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to alloc probe req rsvd page\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rtw_add_rsvd_page_probe_req\00", [36 x i8] zeroinitializer }, align 32
@rtw_add_rsvd_page_probe_req._entry_ptr = internal global ptr @rtw_add_rsvd_page_probe_req._entry, section ".printk_index", align 4
@rtw_build_rsvd_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.4, i32 1432, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to build rsvd page from vifs, ret %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtw_build_rsvd_page\00", [44 x i8] zeroinitializer }, align 32
@rtw_build_rsvd_page._entry_ptr = internal global ptr @rtw_build_rsvd_page._entry, section ".printk_index", align 4
@rtw_build_rsvd_page._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.4, i32 1439, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to build rsvd packet\0A\00", [35 x i8] zeroinitializer }, align 32
@rtw_build_rsvd_page._entry_ptr.65 = internal global ptr @rtw_build_rsvd_page._entry.63, section ".printk_index", align 4
@rtw_build_rsvd_page._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.4, i32 1463, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"first page should be a beacon\0A\00", [33 x i8] zeroinitializer }, align 32
@rtw_build_rsvd_page._entry_ptr.68 = internal global ptr @rtw_build_rsvd_page._entry.66, section ".printk_index", align 4
@rtw_build_rsvd_page._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.62, ptr @.str.4, i32 1474, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rsvd page over size: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@rtw_build_rsvd_page._entry_ptr.71 = internal global ptr @rtw_build_rsvd_page._entry.69, section ".printk_index", align 4
@.str.72 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Should not have an empty reserved page\0A\00", [56 x i8] zeroinitializer }, align 32
@__rtw_build_rsvd_page_from_vifs._entry = internal constant %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.4, i32 1403, ptr @.str.19, ptr @.str.6 }, align 1
@.str.73 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to alloc dummy rsvd page\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"__rtw_build_rsvd_page_from_vifs\00", [32 x i8] zeroinitializer }, align 32
@__rtw_build_rsvd_page_from_vifs._entry_ptr = internal global ptr @__rtw_build_rsvd_page_from_vifs._entry, section ".printk_index", align 4
@rtw_nlo_info_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.4, i32 925, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get probe req rsvd loc\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtw_nlo_info_get\00", [47 x i8] zeroinitializer }, align 32
@rtw_nlo_info_get._entry_ptr = internal global ptr @rtw_nlo_info_get._entry, section ".printk_index", align 4
@rtw_download_beacon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.4, i32 1524, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to get rsvd page from build list\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtw_download_beacon\00", [44 x i8] zeroinitializer }, align 32
@rtw_download_beacon._entry_ptr = internal global ptr @rtw_download_beacon._entry, section ".printk_index", align 4
@rtw_download_beacon._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.4, i32 1531, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"invalid rsvd page type %d, should be beacon or dummy\0A\00", [42 x i8] zeroinitializer }, align 32
@rtw_download_beacon._entry_ptr.81 = internal global ptr @rtw_download_beacon._entry.79, section ".printk_index", align 4
@rtw_download_beacon._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.4, i32 1537, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get beacon skb\0A\00", [38 x i8] zeroinitializer }, align 32
@rtw_download_beacon._entry_ptr.84 = internal global ptr @rtw_download_beacon._entry.82, section ".printk_index", align 4
@rtw_download_beacon._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.78, ptr @.str.4, i32 1543, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@rtw_download_beacon._entry_ptr.86 = internal global ptr @rtw_download_beacon._entry.85, section ".printk_index", align 4
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wrong fw fifo sel\0A\00", [45 x i8] zeroinitializer }, align 32
@rtw_hw_scan_prehandle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.4, i32 2050, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Update probe request failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw_hw_scan_prehandle\00", [42 x i8] zeroinitializer }, align 32
@rtw_hw_scan_prehandle._entry_ptr = internal global ptr @rtw_hw_scan_prehandle._entry, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@_rtw_hw_scan_update_probe_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.4, i32 1844, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Download probe request to firmware failed\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"_rtw_hw_scan_update_probe_req\00", [34 x i8] zeroinitializer }, align 32
@_rtw_hw_scan_update_probe_req._entry_ptr = internal global ptr @_rtw_hw_scan_update_probe_req._entry, section ".printk_index", align 4
@rtw_add_chan_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.4, i32 1939, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"List exceeds rsvd page total size\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtw_add_chan_list\00", [46 x i8] zeroinitializer }, align 32
@rtw_add_chan_list._entry_ptr = internal global ptr @rtw_add_chan_list._entry, section ".printk_index", align 4
@rtw_add_chan_list._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.94, ptr @.str.4, i32 1946, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Download channel list failed\0A\00", [34 x i8] zeroinitializer }, align 32
@rtw_add_chan_list._entry_ptr.97 = internal global ptr @rtw_add_chan_list._entry.95, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 3, i64 9, i64 12, i64 39, i64 54, i64 255]
@__sancov_gen_cov_switch_values.98 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 15, i64 34]
@__sancov_gen_cov_switch_values.99 = internal global [6 x i64] [i64 4, i64 8, i64 11, i64 50, i64 55, i64 56]
@__sancov_gen_cov_switch_values.100 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.102 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.104 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 249, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 267, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 302, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 869, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 873, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 877, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 881, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1219, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1237, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1258, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1305, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1318, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1558, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1564, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1575, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1654, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1662, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1667, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1704, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1710, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1763, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2112, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2165, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 127, i32 6 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 188, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 198, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 203, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 209, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 315, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 341, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 350, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 380, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1169, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1185, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1431, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1439, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1463, i32 5 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1474, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1393, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1403, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 925, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1524, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1530, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1537, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1543, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1624, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 2050, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.397 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1984, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1844, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1939, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.420 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.421 = private constant [43 x i8] c"../drivers/net/wireless/realtek/rtw88/fw.c\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 1946, i32 3 }
@llvm.compiler.used = appending global [141 x ptr] [ptr @__ksymtab_rtw_fw_c2h_cmd_isr, ptr @__ksymtab_rtw_fw_c2h_cmd_rx_irqsafe, ptr @__ksymtab_rtw_fw_do_iqk, ptr @__ksymtab_rtw_fw_inform_rfk_status, ptr @__rtw_build_rsvd_page_from_vifs._entry, ptr @__rtw_build_rsvd_page_from_vifs._entry_ptr, ptr @_rtw_hw_scan_update_probe_req._entry, ptr @_rtw_hw_scan_update_probe_req._entry_ptr, ptr @rtw_add_chan_list._entry, ptr @rtw_add_chan_list._entry.95, ptr @rtw_add_chan_list._entry_ptr, ptr @rtw_add_chan_list._entry_ptr.97, ptr @rtw_add_rsvd_page._entry, ptr @rtw_add_rsvd_page._entry_ptr, ptr @rtw_add_rsvd_page_bcn._entry, ptr @rtw_add_rsvd_page_bcn._entry_ptr, ptr @rtw_add_rsvd_page_pno._entry, ptr @rtw_add_rsvd_page_pno._entry_ptr, ptr @rtw_add_rsvd_page_probe_req._entry, ptr @rtw_add_rsvd_page_probe_req._entry_ptr, ptr @rtw_add_rsvd_page_sta._entry, ptr @rtw_add_rsvd_page_sta._entry_ptr, ptr @rtw_build_rsvd_page._entry, ptr @rtw_build_rsvd_page._entry.63, ptr @rtw_build_rsvd_page._entry.66, ptr @rtw_build_rsvd_page._entry.69, ptr @rtw_build_rsvd_page._entry_ptr, ptr @rtw_build_rsvd_page._entry_ptr.65, ptr @rtw_build_rsvd_page._entry_ptr.68, ptr @rtw_build_rsvd_page._entry_ptr.71, ptr @rtw_download_beacon._entry, ptr @rtw_download_beacon._entry.79, ptr @rtw_download_beacon._entry.82, ptr @rtw_download_beacon._entry.85, ptr @rtw_download_beacon._entry_ptr, ptr @rtw_download_beacon._entry_ptr.81, ptr @rtw_download_beacon._entry_ptr.84, ptr @rtw_download_beacon._entry_ptr.86, ptr @rtw_fw_c2h_cmd_isr._entry, ptr @rtw_fw_c2h_cmd_isr._entry_ptr, ptr @rtw_fw_download_rsvd_page._entry, ptr @rtw_fw_download_rsvd_page._entry.25, ptr @rtw_fw_download_rsvd_page._entry.28, ptr @rtw_fw_download_rsvd_page._entry_ptr, ptr @rtw_fw_download_rsvd_page._entry_ptr.27, ptr @rtw_fw_download_rsvd_page._entry_ptr.30, ptr @rtw_fw_send_h2c_command._entry, ptr @rtw_fw_send_h2c_command._entry_ptr, ptr @rtw_fw_send_h2c_packet._entry, ptr @rtw_fw_send_h2c_packet._entry_ptr, ptr @rtw_fw_update_pkt_probe_req._entry, ptr @rtw_fw_update_pkt_probe_req._entry.36, ptr @rtw_fw_update_pkt_probe_req._entry_ptr, ptr @rtw_fw_update_pkt_probe_req._entry_ptr.38, ptr @rtw_fw_write_data_rsvd_page._entry, ptr @rtw_fw_write_data_rsvd_page._entry.20, ptr @rtw_fw_write_data_rsvd_page._entry_ptr, ptr @rtw_fw_write_data_rsvd_page._entry_ptr.22, ptr @rtw_hw_scan_prehandle._entry, ptr @rtw_hw_scan_prehandle._entry_ptr, ptr @rtw_hw_scan_status_report._entry, ptr @rtw_hw_scan_status_report._entry_ptr, ptr @rtw_nlo_info_get._entry, ptr @rtw_nlo_info_get._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @skb_queue_head_init.__key, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96], section "llvm.metadata"
@0 = internal global [106 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_fw_c2h_cmd_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_add_rsvd_page_bcn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_add_rsvd_page_pno._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_add_rsvd_page_sta._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_fw_write_data_rsvd_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_fw_write_data_rsvd_page._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_fw_download_rsvd_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_fw_download_rsvd_page._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_fw_download_rsvd_page._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_fw_update_pkt_probe_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_fw_update_pkt_probe_req._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_hw_scan_status_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_fw_send_h2c_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_fw_send_h2c_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_add_rsvd_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_add_rsvd_page_probe_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_build_rsvd_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_build_rsvd_page._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_build_rsvd_page._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_build_rsvd_page._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_nlo_info_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_download_beacon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_download_beacon._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_download_beacon._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_download_beacon._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_hw_scan_prehandle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtw_hw_scan_update_probe_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_add_chan_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_add_chan_list._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_c2h_cmd_handle(ptr noundef %rtwdev, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %ra_data.i = alloca %struct.rtw_fw_iter_ra_data, align 4
  %dev_iter_data.i = alloca %struct.rtw_beacon_filter_iter_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %1
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len1, align 4
  %sub = sub i32 %5, %1
  %6 = trunc i32 %sub to i8
  %conv = add i8 %6, -2
  %mutex = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %flags = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 38
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i8 %10, label %sw.default [
    i8 3, label %sw.bb
    i8 9, label %sw.bb5
    i8 39, label %sw.bb7
    i8 54, label %sw.bb10
    i8 -1, label %sw.bb13
    i8 12, label %sw.bb14
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rtw_tx_report_handle(ptr noundef %rtwdev, ptr noundef %skb, i32 noundef 3) #9
  br label %unlock

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %payload = getelementptr inbounds %struct.rtw_c2h_cmd, ptr %add.ptr, i32 0, i32 2
  tail call void @rtw_coex_bt_info_notify(ptr noundef %rtwdev, ptr noundef %payload, i8 noundef zeroext %conv) #9
  br label %unlock

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %payload8 = getelementptr inbounds %struct.rtw_c2h_cmd, ptr %add.ptr, i32 0, i32 2
  tail call void @rtw_coex_wl_fwdbginfo_notify(ptr noundef %rtwdev, ptr noundef %payload8, i8 noundef zeroext %conv) #9
  br label %unlock

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %payload11 = getelementptr inbounds %struct.rtw_c2h_cmd, ptr %add.ptr, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dev_iter_data.i) #9
  %12 = getelementptr inbounds %struct.rtw_beacon_filter_iter_data, ptr %dev_iter_data.i, i32 0, i32 1
  %13 = ptrtoint ptr %dev_iter_data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %rtwdev, ptr %dev_iter_data.i, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %payload11, ptr %12, align 4
  %15 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rtwdev, align 8
  call void @ieee80211_iterate_interfaces(ptr noundef %16, i32 noundef 2, ptr noundef nonnull @rtw_fw_bcn_filter_notify_vif_iter, ptr noundef nonnull %dev_iter_data.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dev_iter_data.i) #9
  br label %unlock

sw.bb13:                                          ; preds = %if.end
  %17 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cb, align 8
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %18
  %payload.i = getelementptr inbounds %struct.rtw_c2h_cmd, ptr %add.ptr.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %payload.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %payload.i, align 1
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.98)
  switch i8 %22, label %sw.bb13.unlock_crit_edge [
    i8 15, label %sw.bb.i
    i8 3, label %sw.bb1.i
    i8 34, label %sw.bb2.i
  ]

sw.bb13.unlock_crit_edge:                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock

sw.bb.i:                                          ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rtw_tx_report_handle(ptr noundef %rtwdev, ptr noundef %skb, i32 noundef 15) #9
  br label %unlock

sw.bb1.i:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rtw_hw_scan_status_report(ptr noundef %rtwdev, ptr noundef %skb) #9
  br label %unlock

sw.bb2.i:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rtw_hw_scan_chan_switch(ptr noundef %rtwdev, ptr noundef %skb) #9
  br label %unlock

sw.bb14:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ra_data.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %conv)
  %cmp.i = icmp ult i8 %conv, 7
  br i1 %cmp.i, label %do.end.i, label %if.end22.i, !prof !211

do.end.i:                                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 127, i32 noundef 9, ptr noundef nonnull @.str.44) #9
  br label %rtw_fw_ra_report_handle.exit

if.end22.i:                                       ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  %payload15 = getelementptr inbounds %struct.rtw_c2h_cmd, ptr %add.ptr, i32 0, i32 2
  %24 = getelementptr inbounds %struct.rtw_fw_iter_ra_data, ptr %ra_data.i, i32 0, i32 1
  %25 = ptrtoint ptr %payload15 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %payload15, align 1
  %27 = and i8 %26, 127
  %tx_rate.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 25
  %28 = ptrtoint ptr %tx_rate.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %tx_rate.i, align 1
  %29 = ptrtoint ptr %ra_data.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %rtwdev, ptr %ra_data.i, align 4
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %payload15, ptr %24, align 4
  %31 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rtwdev, align 8
  call void @ieee80211_iterate_stations_atomic(ptr noundef %32, ptr noundef nonnull @rtw_fw_ra_report_iter, ptr noundef nonnull %ra_data.i) #9
  br label %rtw_fw_ra_report_handle.exit

rtw_fw_ra_report_handle.exit:                     ; preds = %if.end22.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ra_data.i) #9
  br label %unlock

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv4 = zext i8 %10 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %conv4) #9
  br label %unlock

unlock:                                           ; preds = %sw.default, %rtw_fw_ra_report_handle.exit, %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %sw.bb13.unlock_crit_edge, %sw.bb10, %sw.bb7, %sw.bb5, %sw.bb, %entry.unlock_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_tx_report_handle(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_coex_bt_info_notify(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_coex_wl_fwdbginfo_notify(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rtw_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_c2h_cmd_rx_irqsafe(ptr noundef %rtwdev, i32 noundef %pkt_offset, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %pkt_offset
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1, align 4
  %sub = sub i32 254, %pkt_offset
  %conv = add i32 %sub, %3
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %4 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %pkt_offset, ptr %cb, align 8
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr, align 1
  %conv3 = zext i8 %6 to i32
  %seq = getelementptr inbounds %struct.rtw_c2h_cmd, ptr %add.ptr, i32 0, i32 1
  %7 = ptrtoint ptr %seq to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %seq, align 1
  %conv4 = zext i8 %8 to i32
  %conv5 = and i32 %conv, 255
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.1, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %conv5) #9
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.99)
  switch i8 %10, label %sw.default [
    i8 11, label %sw.bb
    i8 50, label %sw.bb8
    i8 56, label %sw.bb9
    i8 55, label %sw.bb11
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rtw_coex_info_response(ptr noundef %rtwdev, ptr noundef %skb) #9
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lps_leave_check = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 33
  tail call void @complete(ptr noundef %lps_leave_check) #9
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #9
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fw_scan_density = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 44
  tail call void @complete(ptr noundef %fw_scan_density) #9
  %payload = getelementptr inbounds %struct.rtw_c2h_cmd, ptr %add.ptr, i32 0, i32 2
  %12 = ptrtoint ptr %payload to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %payload, align 1
  %scan_density.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 62
  %14 = ptrtoint ptr %scan_density.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %scan_density.i, align 4
  %conv.i = zext i8 %13 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.45, i32 noundef %conv.i) #9
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #9
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %payload12 = getelementptr inbounds %struct.rtw_c2h_cmd, ptr %add.ptr, i32 0, i32 2
  %chip.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %15 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip.i, align 4
  %edcca_th1.i = getelementptr inbounds %struct.rtw_chip_info, ptr %16, i32 0, i32 59
  %17 = ptrtoint ptr %edcca_th1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %edcca_th1.i, align 4
  %19 = ptrtoint ptr %payload12 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %payload12, align 1
  %conv.i41 = zext i8 %20 to i32
  %igi.i = getelementptr inbounds %struct.rtw_c2h_adaptivity, ptr %payload12, i32 0, i32 1
  %21 = ptrtoint ptr %igi.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %igi.i, align 1
  %conv2.i = zext i8 %22 to i32
  %l2h_th_init.i = getelementptr inbounds %struct.rtw_c2h_adaptivity, ptr %payload12, i32 0, i32 2
  %23 = ptrtoint ptr %l2h_th_init.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %l2h_th_init.i, align 1
  %conv3.i = zext i8 %24 to i32
  %l2h.i = getelementptr inbounds %struct.rtw_c2h_adaptivity, ptr %payload12, i32 0, i32 3
  %25 = ptrtoint ptr %l2h.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %l2h.i, align 1
  %conv4.i = zext i8 %26 to i32
  %h2l.i = getelementptr inbounds %struct.rtw_c2h_adaptivity, ptr %payload12, i32 0, i32 4
  %27 = ptrtoint ptr %h2l.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %h2l.i, align 1
  %conv5.i = zext i8 %28 to i32
  %option.i = getelementptr inbounds %struct.rtw_c2h_adaptivity, ptr %payload12, i32 0, i32 5
  %29 = ptrtoint ptr %option.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %option.i, align 1
  %conv6.i = zext i8 %30 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 32768, ptr noundef nonnull @.str.46, i32 noundef %conv.i41, i32 noundef %conv2.i, i32 noundef %conv3.i, i32 noundef %conv4.i, i32 noundef %conv5.i, i32 noundef %conv6.i) #9
  %31 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %18, align 4
  %mask.i = getelementptr inbounds %struct.rtw_hw_reg, ptr %18, i32 0, i32 1
  %33 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mask.i, align 4
  %35 = tail call i32 @llvm.cttz.i32(i32 %34, i1 false) #9, !range !212
  %hci.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %36 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %37, i32 0, i32 13
  %38 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i = tail call i32 %39(ptr noundef %rtwdev, i32 noundef %32) #9
  %and.i.i = and i32 %call.i.i.i, %34
  %shr.i.i = lshr i32 %and.i.i, %35
  %arrayidx9.i = getelementptr %struct.rtw_hw_reg_offset, ptr %18, i32 1
  %40 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx9.i, align 4
  %mask14.i = getelementptr %struct.rtw_hw_reg_offset, ptr %18, i32 1, i32 0, i32 1
  %42 = ptrtoint ptr %mask14.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mask14.i, align 4
  %44 = tail call i32 @llvm.cttz.i32(i32 %43, i1 false) #9, !range !212
  %45 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i2.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %46, i32 0, i32 13
  %47 = ptrtoint ptr %read32.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read32.i.i2.i, align 4
  %call.i.i3.i = tail call i32 %48(ptr noundef %rtwdev, i32 noundef %41) #9
  %and.i4.i = and i32 %call.i.i3.i, %43
  %shr.i5.i = lshr i32 %and.i4.i, %44
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 32768, ptr noundef nonnull @.str.47, i32 noundef %shr.i.i, i32 noundef %shr.i5.i) #9
  %49 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i7.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %50, i32 0, i32 13
  %51 = ptrtoint ptr %read32.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read32.i.i7.i, align 4
  %call.i.i8.i = tail call i32 %52(ptr noundef %rtwdev, i32 noundef 11576) #9
  %53 = and i32 %call.i.i8.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i = icmp eq i32 %53, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.50, ptr @.str.49
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 32768, ptr noundef nonnull @.str.48, ptr noundef nonnull %cond.i) #9
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #9
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %pkt_offset, ptr %cb, align 8
  %c2h_queue = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 20
  tail call void @skb_queue_tail(ptr noundef %c2h_queue, ptr noundef %skb) #9
  %55 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rtwdev, align 8
  %c2h_work = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 21
  tail call void @ieee80211_queue_work(ptr noundef %56, ptr noundef %c2h_work) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb9, %sw.bb8, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_coex_info_response(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_c2h_cmd_isr(ptr noundef %rtwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i, align 8
  %read8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %read8.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read8.i, align 4
  %call.i = tail call zeroext i8 %3(ptr noundef %rtwdev, i32 noundef 132) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call.i)
  %cmp = icmp eq i8 %call.i, 1
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rtw_fw_recovery(ptr noundef %rtwdev) #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.2) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_fw_recovery(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_h2c_cmd_dbg(ptr noundef %rtwdev, ptr nocapture noundef readonly %h2c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @rtw_fw_send_h2c_command(ptr noundef %rtwdev, ptr noundef %h2c)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_fw_send_h2c_command(ptr noundef %rtwdev, ptr nocapture noundef readonly %h2c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %h2c, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %arrayidx1 = getelementptr i8, ptr %h2c, i32 2
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %arrayidx3 = getelementptr i8, ptr %h2c, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %5 to i32
  %6 = ptrtoint ptr %h2c to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %h2c, align 1
  %conv6 = zext i8 %7 to i32
  %arrayidx7 = getelementptr i8, ptr %h2c, i32 7
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %9 to i32
  %arrayidx9 = getelementptr i8, ptr %h2c, i32 6
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %11 to i32
  %arrayidx11 = getelementptr i8, ptr %h2c, i32 5
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %13 to i32
  %arrayidx13 = getelementptr i8, ptr %h2c, i32 4
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %15 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.51, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv4, i32 noundef %conv6, i32 noundef %conv8, i32 noundef %conv10, i32 noundef %conv12, i32 noundef %conv14) #9
  %h2c15 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 29
  %lock = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 29, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %16 = ptrtoint ptr %h2c15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %h2c15, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %17)
  %18 = icmp ult i8 %17, 4
  br i1 %18, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 341, i32 noundef 9, ptr noundef nonnull @.str.52) #9
  br label %out

switch.lookup:                                    ; preds = %entry
  %conv17 = zext i8 %17 to i32
  %switch.idx.cast = zext i8 %17 to i32
  %switch.idx.mult = shl nuw nsw i32 %switch.idx.cast, 2
  %switch.offset = add nuw nsw i32 %switch.idx.mult, 464
  %switch.idx.cast151 = zext i8 %17 to i32
  %switch.idx.mult152 = shl nuw nsw i32 %switch.idx.cast151, 2
  %switch.offset153 = add nuw nsw i32 %switch.idx.mult152, 496
  %call = tail call i64 @ktime_get() #9
  %add.i = add i64 %call, 3000000
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %19 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hci.i, align 8
  %read8.i143 = getelementptr inbounds %struct.rtw_hci_ops, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %read8.i143 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read8.i143, align 4
  %call.i144 = tail call zeroext i8 %22(ptr noundef %rtwdev, i32 noundef 460) #9
  %conv37145 = zext i8 %call.i144 to i32
  %23 = shl nuw nsw i32 1, %conv17
  %24 = and i32 %23, %conv37145
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool39.not146 = icmp eq i32 %24, 0
  br i1 %tobool39.not146, label %switch.lookup.for.end_crit_edge, label %switch.lookup.land.lhs.true_crit_edge

switch.lookup.land.lhs.true_crit_edge:            ; preds = %switch.lookup
  br label %land.lhs.true

switch.lookup.for.end_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %switch.lookup.land.lhs.true_crit_edge
  %call43 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call43, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call43, %add.i
  br i1 %cmp3.i, label %if.then46, label %cond.false

if.then46:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hci.i, align 8
  %read8.i134 = getelementptr inbounds %struct.rtw_hci_ops, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %read8.i134 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read8.i134, align 4
  %call.i135 = tail call zeroext i8 %28(ptr noundef %rtwdev, i32 noundef 460) #9
  %.pre = zext i8 %call.i135 to i32
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 21474800) #9
  %30 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hci.i, align 8
  %read8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %read8.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read8.i, align 4
  %call.i = tail call zeroext i8 %33(ptr noundef %rtwdev, i32 noundef 460) #9
  %conv37 = zext i8 %call.i to i32
  %34 = and i32 %23, %conv37
  %tobool39.not = icmp eq i32 %34, 0
  br i1 %tobool39.not, label %cond.false.for.end_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then46, %switch.lookup.for.end_crit_edge
  %conv58.pre-phi = phi i32 [ %conv37145, %switch.lookup.for.end_crit_edge ], [ %.pre, %if.then46 ], [ %conv37, %cond.false.for.end_crit_edge ]
  %35 = and i32 %23, %conv58.pre-phi
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool62.not = icmp eq i32 %35, 0
  br i1 %tobool62.not, label %for.body.preheader, label %do.end69

for.body.preheader:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %h2c to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %h2c, align 1
  %38 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hci.i, align 8
  %write8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %39, i32 0, i32 14
  %40 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write8.i, align 4
  tail call void %41(ptr noundef %rtwdev, i32 noundef %switch.offset, i8 noundef zeroext %37) #9
  %add.1 = or i32 %switch.offset, 1
  %42 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx3, align 1
  %44 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hci.i, align 8
  %write8.i.1 = getelementptr inbounds %struct.rtw_hci_ops, ptr %45, i32 0, i32 14
  %46 = ptrtoint ptr %write8.i.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write8.i.1, align 4
  tail call void %47(ptr noundef %rtwdev, i32 noundef %add.1, i8 noundef zeroext %43) #9
  %add.2 = or i32 %switch.offset, 2
  %48 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx1, align 1
  %50 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hci.i, align 8
  %write8.i.2 = getelementptr inbounds %struct.rtw_hci_ops, ptr %51, i32 0, i32 14
  %52 = ptrtoint ptr %write8.i.2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write8.i.2, align 4
  tail call void %53(ptr noundef %rtwdev, i32 noundef %add.2, i8 noundef zeroext %49) #9
  %add.3 = or i32 %switch.offset, 3
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx, align 1
  %56 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hci.i, align 8
  %write8.i.3 = getelementptr inbounds %struct.rtw_hci_ops, ptr %57, i32 0, i32 14
  %58 = ptrtoint ptr %write8.i.3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write8.i.3, align 4
  tail call void %59(ptr noundef %rtwdev, i32 noundef %add.3, i8 noundef zeroext %55) #9
  %60 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx13, align 1
  %62 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hci.i, align 8
  %write8.i138 = getelementptr inbounds %struct.rtw_hci_ops, ptr %63, i32 0, i32 14
  %64 = ptrtoint ptr %write8.i138 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write8.i138, align 4
  tail call void %65(ptr noundef %rtwdev, i32 noundef %switch.offset153, i8 noundef zeroext %61) #9
  %add80.1 = or i32 %switch.offset153, 1
  %66 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx11, align 1
  %68 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hci.i, align 8
  %write8.i138.1 = getelementptr inbounds %struct.rtw_hci_ops, ptr %69, i32 0, i32 14
  %70 = ptrtoint ptr %write8.i138.1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write8.i138.1, align 4
  tail call void %71(ptr noundef %rtwdev, i32 noundef %add80.1, i8 noundef zeroext %67) #9
  %add80.2 = or i32 %switch.offset153, 2
  %72 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx9, align 1
  %74 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hci.i, align 8
  %write8.i138.2 = getelementptr inbounds %struct.rtw_hci_ops, ptr %75, i32 0, i32 14
  %76 = ptrtoint ptr %write8.i138.2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write8.i138.2, align 4
  tail call void %77(ptr noundef %rtwdev, i32 noundef %add80.2, i8 noundef zeroext %73) #9
  %add80.3 = or i32 %switch.offset153, 3
  %78 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx7, align 1
  %80 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hci.i, align 8
  %write8.i138.3 = getelementptr inbounds %struct.rtw_hci_ops, ptr %81, i32 0, i32 14
  %82 = ptrtoint ptr %write8.i138.3 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write8.i138.3, align 4
  tail call void %83(ptr noundef %rtwdev, i32 noundef %add80.3, i8 noundef zeroext %79) #9
  %84 = ptrtoint ptr %h2c15 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %h2c15, align 8
  %inc88 = add i8 %85, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %inc88)
  %cmp90 = icmp ugt i8 %inc88, 3
  %spec.store.select = select i1 %cmp90, i8 0, i8 %inc88
  %86 = ptrtoint ptr %h2c15 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %spec.store.select, ptr %h2c15, align 8
  br label %out

do.end69:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %87 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.53) #12
  br label %out

out:                                              ; preds = %do.end69, %for.body.preheader, %do.end
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_send_general_info(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  %h2c_pkt = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_pkt) #9
  %0 = call ptr @memset(ptr %h2c_pkt, i32 0, i32 32)
  %chip.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %1 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip.i, align 4
  %wlan_cpu.i = getelementptr inbounds %struct.rtw_chip_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %wlan_cpu.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wlan_cpu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i = icmp eq i32 %4, 1
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %h2c_pkt, align 4
  %or.i13.i = and i32 %6, -2147483648
  %or.i22.i = or i32 %or.i13.i, 33492224
  store i32 %or.i22.i, ptr %h2c_pkt, align 4
  %add.ptr = getelementptr inbounds i32, ptr %h2c_pkt, i32 1
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr, align 4
  %and.i = and i32 %8, 65535
  %or.i = or i32 %and.i, 201326592
  store i32 %or.i, ptr %add.ptr, align 4
  %add.ptr4 = getelementptr inbounds i32, ptr %h2c_pkt, i32 2
  %9 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr4, align 4
  %rsvd_fw_txbuf_addr = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 6, i32 10
  %11 = ptrtoint ptr %rsvd_fw_txbuf_addr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %rsvd_fw_txbuf_addr, align 4
  %conv5 = zext i16 %12 to i32
  %fifo1 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 6
  %13 = ptrtoint ptr %fifo1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %fifo1, align 4
  %conv6 = zext i16 %14 to i32
  %sub = sub nsw i32 %conv5, %conv6
  %and.i17 = and i32 %10, -65281
  %15 = shl nsw i32 %sub, 8
  %16 = and i32 %15, 65280
  %or.i21 = or i32 %16, %and.i17
  store i32 %or.i21, ptr %add.ptr4, align 4
  %lock.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 29, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  %seq.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 29, i32 2
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr, align 4
  %19 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %seq.i, align 8
  %and.i.i22 = and i32 %18, -65536
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  %22 = lshr i32 %21, 16
  %or.i.i = or i32 %22, %and.i.i22
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.i.i, ptr %add.ptr, align 4
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %24 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i.i, align 8
  %write_data_h2c.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %write_data_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_data_h2c.i.i, align 4
  %call.i.i = call i32 %27(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.rtw_fw_send_h2c_packet.exit_crit_edge, label %do.end.i

if.end.rtw_fw_send_h2c_packet.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtw_fw_send_h2c_packet.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.55) #12
  br label %rtw_fw_send_h2c_packet.exit

rtw_fw_send_h2c_packet.exit:                      ; preds = %do.end.i, %if.end.rtw_fw_send_h2c_packet.exit_crit_edge
  %30 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %seq.i, align 8
  %inc.i = add i32 %31, 1
  store i32 %inc.i, ptr %seq.i, align 8
  call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  br label %cleanup

cleanup:                                          ; preds = %rtw_fw_send_h2c_packet.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_pkt) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_send_phydm_info(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  %h2c_pkt = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_pkt) #9
  %0 = call ptr @memset(ptr %h2c_pkt, i32 0, i32 32)
  %chip.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %1 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip.i, align 4
  %wlan_cpu.i = getelementptr inbounds %struct.rtw_chip_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %wlan_cpu.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wlan_cpu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i = icmp eq i32 %4, 1
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %rf_type = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 13
  %5 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rf_type, align 1
  %7 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %h2c_pkt, align 4
  %or.i13.i = and i32 %8, -2147483648
  %or.i22.i = or i32 %or.i13.i, 33493248
  store i32 %or.i22.i, ptr %h2c_pkt, align 4
  %add.ptr = getelementptr inbounds i32, ptr %h2c_pkt, i32 1
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr, align 4
  %and.i = and i32 %10, 65535
  %or.i = or i32 %and.i, 268435456
  store i32 %or.i, ptr %add.ptr, align 4
  %add.ptr15 = getelementptr inbounds i32, ptr %h2c_pkt, i32 2
  %antenna_rx = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 17
  %11 = ptrtoint ptr %antenna_rx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %antenna_rx, align 4
  %antenna_tx = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 16
  %13 = ptrtoint ptr %antenna_tx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %antenna_tx, align 4
  %15 = and i32 %14, 15
  %cut_version = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 2
  %16 = ptrtoint ptr %cut_version to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cut_version, align 4
  %conv2.i.i78 = zext i8 %17 to i32
  %18 = shl nuw nsw i32 %conv2.i.i78, 8
  %rfe_option = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 8
  %19 = ptrtoint ptr %rfe_option to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rfe_option, align 2
  %conv8.i.i48 = zext i8 %20 to i32
  %21 = shl nuw i32 %conv8.i.i48, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %switch.selectcmp39 = icmp eq i8 %6, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %switch.selectcmp = icmp eq i8 %6, 2
  %switch.select = select i1 %switch.selectcmp, i32 131072, i32 0
  %switch.select40 = select i1 %switch.selectcmp39, i32 262144, i32 %switch.select
  %or.i65 = or i32 %21, %switch.select40
  %or.i82 = or i32 %18, %or.i65
  %or.i99 = or i32 %15, %or.i82
  %22 = shl i32 %12, 4
  %23 = and i32 %22, 240
  %or.i116 = or i32 %23, %or.i99
  %24 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or.i116, ptr %add.ptr15, align 4
  %lock.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 29, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  %seq.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 29, i32 2
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr, align 4
  %27 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %seq.i, align 8
  %and.i.i118 = and i32 %26, -65536
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #9
  %30 = lshr i32 %29, 16
  %or.i.i = or i32 %30, %and.i.i118
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or.i.i, ptr %add.ptr, align 4
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %32 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i.i, align 8
  %write_data_h2c.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %write_data_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_data_h2c.i.i, align 4
  %call.i.i = call i32 %35(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.rtw_fw_send_h2c_packet.exit_crit_edge, label %do.end.i

if.end.rtw_fw_send_h2c_packet.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtw_fw_send_h2c_packet.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.55) #12
  br label %rtw_fw_send_h2c_packet.exit

rtw_fw_send_h2c_packet.exit:                      ; preds = %do.end.i, %if.end.rtw_fw_send_h2c_packet.exit_crit_edge
  %38 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %seq.i, align 8
  %inc.i = add i32 %39, 1
  store i32 %inc.i, ptr %seq.i, align 8
  call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  br label %cleanup

cleanup:                                          ; preds = %rtw_fw_send_h2c_packet.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_pkt) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_do_iqk(ptr noundef %rtwdev, ptr nocapture noundef readonly %para) #0 align 64 {
entry:
  %h2c_pkt = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_pkt) #9
  %0 = getelementptr inbounds i8, ptr %h2c_pkt, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  %2 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 33492480, ptr %h2c_pkt, align 4
  %add.ptr = getelementptr inbounds i32, ptr %h2c_pkt, i32 1
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 150994944, ptr %add.ptr, align 4
  %add.ptr3 = getelementptr inbounds i32, ptr %h2c_pkt, i32 2
  %segment_iqk = getelementptr inbounds %struct.rtw_iqk_para, ptr %para, i32 0, i32 1
  %4 = ptrtoint ptr %segment_iqk to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %segment_iqk, align 1
  %6 = ptrtoint ptr %para to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %para, align 1
  %8 = and i8 %7, 1
  %9 = shl i8 %5, 1
  %10 = and i8 %9, 2
  %11 = or i8 %10, %8
  %12 = zext i8 %11 to i32
  %or.i34 = shl nuw nsw i32 %12, 24
  %13 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or.i34, ptr %add.ptr3, align 4
  %lock.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 29, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  %seq.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 29, i32 2
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr, align 4
  %16 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %seq.i, align 8
  %and.i.i36 = and i32 %15, -65536
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  %19 = lshr i32 %18, 16
  %or.i.i = or i32 %19, %and.i.i36
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i.i, ptr %add.ptr, align 4
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %21 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hci.i.i, align 8
  %write_data_h2c.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %write_data_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_data_h2c.i.i, align 4
  %call.i.i = call i32 %24(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %entry.rtw_fw_send_h2c_packet.exit_crit_edge, label %do.end.i

entry.rtw_fw_send_h2c_packet.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtw_fw_send_h2c_packet.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.55) #12
  br label %rtw_fw_send_h2c_packet.exit

rtw_fw_send_h2c_packet.exit:                      ; preds = %do.end.i, %entry.rtw_fw_send_h2c_packet.exit_crit_edge
  %27 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %seq.i, align 8
  %inc.i = add i32 %28, 1
  store i32 %inc.i, ptr %seq.i, align 8
  call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_pkt) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_inform_rfk_status(ptr noundef %rtwdev, i1 noundef zeroext %start) #0 align 64 {
entry:
  %h2c_pkt = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_pkt) #9
  %0 = getelementptr inbounds i8, ptr %h2c_pkt, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %or.i12 = select i1 %start, i32 1828782080, i32 1828716544
  %2 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or.i12, ptr %h2c_pkt, align 4
  call fastcc void @rtw_fw_send_h2c_command(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_pkt) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_query_bt_info(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  %h2c_pkt = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_pkt) #9
  %0 = getelementptr inbounds i8, ptr %h2c_pkt, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %2 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1627455488, ptr %h2c_pkt, align 4
  call fastcc void @rtw_fw_send_h2c_command(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_pkt) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_wl_ch_info(ptr noundef %rtwdev, i8 noundef zeroext %link, i8 noundef zeroext %ch, i8 noundef zeroext %bw) local_unnamed_addr #0 align 64 {
entry:
  %h2c_pkt = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_pkt) #9
  %0 = getelementptr inbounds i8, ptr %h2c_pkt, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %conv2.i.i = zext i8 %link to i32
  %2 = shl nuw nsw i32 %conv2.i.i, 16
  %conv2.i.i30 = zext i8 %ch to i32
  %3 = shl nuw nsw i32 %conv2.i.i30, 8
  %or.i18 = or i32 %2, %3
  %conv2.i.i47 = zext i8 %bw to i32
  %or.i34 = or i32 %or.i18, %conv2.i.i47
  %or.i51 = or i32 %or.i34, 1711276032
  %4 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or.i51, ptr %h2c_pkt, align 4
  call fastcc void @rtw_fw_send_h2c_command(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_pkt) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_query_bt_mp_info(ptr noundef %rtwdev, ptr nocapture noundef readonly %req) local_unnamed_addr #0 align 64 {
entry:
  %h2c_pkt = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_pkt) #9
  %0 = getelementptr inbounds i8, ptr %h2c_pkt, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %req, align 1
  %4 = and i8 %3, 15
  %and528.i.i25 = zext i8 %4 to i32
  %mul.i.i26 = shl nuw nsw i32 %and528.i.i25, 20
  %or.i28 = or i32 %mul.i.i26, 1728053248
  %op_code = getelementptr inbounds %struct.rtw_coex_info_req, ptr %req, i32 0, i32 1
  %5 = ptrtoint ptr %op_code to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %op_code, align 1
  %conv2.i.i40 = zext i8 %6 to i32
  %7 = shl nuw nsw i32 %conv2.i.i40, 8
  %or.i44 = or i32 %7, %or.i28
  %para1 = getelementptr inbounds %struct.rtw_coex_info_req, ptr %req, i32 0, i32 2
  %8 = ptrtoint ptr %para1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %para1, align 1
  %conv2.i.i57 = zext i8 %9 to i32
  %or.i61 = or i32 %or.i44, %conv2.i.i57
  %10 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i61, ptr %h2c_pkt, align 4
  %add.ptr10 = getelementptr inbounds i32, ptr %h2c_pkt, i32 1
  %para2 = getelementptr inbounds %struct.rtw_coex_info_req, ptr %req, i32 0, i32 3
  %11 = ptrtoint ptr %para2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %para2, align 1
  %13 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr10, align 4
  %and.i73 = and i32 %14, 65535
  %conv8.i.i77 = zext i8 %12 to i32
  %15 = shl nuw i32 %conv8.i.i77, 24
  %or.i78 = or i32 %15, %and.i73
  %para3 = getelementptr inbounds %struct.rtw_coex_info_req, ptr %req, i32 0, i32 4
  %16 = ptrtoint ptr %para3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %para3, align 1
  %conv2.i.i91 = zext i8 %17 to i32
  %18 = shl nuw nsw i32 %conv2.i.i91, 16
  %or.i95 = or i32 %18, %or.i78
  store i32 %or.i95, ptr %add.ptr10, align 4
  call fastcc void @rtw_fw_send_h2c_command(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_pkt) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_force_bt_tx_power(ptr noundef %rtwdev, i8 noundef zeroext %bt_pwr_dec_lvl) local_unnamed_addr #0 align 64 {
entry:
  %h2c_pkt = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_pkt) #9
  %0 = getelementptr inbounds i8, ptr %h2c_pkt, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %sub = sub i8 0, %bt_pwr_dec_lvl
  %conv2.i.i = zext i8 %sub to i32
  %2 = shl nuw nsw i32 %conv2.i.i, 16
  %or.i14 = or i32 %2, 1644167168
  %3 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i14, ptr %h2c_pkt, align 4
  call fastcc void @rtw_fw_send_h2c_command(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_pkt) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_bt_ignore_wlan_action(ptr noundef %rtwdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %h2c_pkt = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_pkt) #9
  %0 = getelementptr inbounds i8, ptr %h2c_pkt, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %or.i12 = select i1 %enable, i32 1661009920, i32 1660944384
  %2 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or.i12, ptr %h2c_pkt, align 4
  call fastcc void @rtw_fw_send_h2c_command(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_pkt) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_coex_tdma_type(ptr noundef %rtwdev, i8 noundef zeroext %para1, i8 noundef zeroext %para2, i8 noundef zeroext %para3, i8 noundef zeroext %para4, i8 noundef zeroext %para5) local_unnamed_addr #0 align 64 {
entry:
  %h2c_pkt = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_pkt) #9
  %0 = getelementptr inbounds i8, ptr %h2c_pkt, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  %conv2.i.i = zext i8 %para1 to i32
  %2 = shl nuw nsw i32 %conv2.i.i, 16
  %conv2.i.i36 = zext i8 %para2 to i32
  %3 = shl nuw nsw i32 %conv2.i.i36, 8
  %or.i24 = or i32 %2, %3
  %conv2.i.i53 = zext i8 %para3 to i32
  %or.i40 = or i32 %or.i24, %conv2.i.i53
  %or.i57 = or i32 %or.i40, 1610612736
  %4 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or.i57, ptr %h2c_pkt, align 4
  %add.ptr10 = getelementptr inbounds i32, ptr %h2c_pkt, i32 1
  %conv8.i.i73 = zext i8 %para4 to i32
  %5 = shl nuw i32 %conv8.i.i73, 24
  %conv2.i.i87 = zext i8 %para5 to i32
  %6 = shl nuw nsw i32 %conv2.i.i87, 16
  %or.i91 = or i32 %5, %6
  %7 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i91, ptr %add.ptr10, align 4
  call fastcc void @rtw_fw_send_h2c_command(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_pkt) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_bt_wifi_control(ptr noundef %rtwdev, i8 noundef zeroext %op_code, ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  %h2c_pkt = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_pkt) #9
  %0 = getelementptr inbounds i8, ptr %h2c_pkt, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  %conv2.i.i = zext i8 %op_code to i32
  %2 = shl nuw nsw i32 %conv2.i.i, 16
  %or.i35 = or i32 %2, 1761607680
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 1
  %conv2.i.i47 = zext i8 %4 to i32
  %5 = shl nuw nsw i32 %conv2.i.i47, 8
  %or.i51 = or i32 %5, %or.i35
  %add.ptr8 = getelementptr i8, ptr %data, i32 1
  %6 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr8, align 1
  %conv2.i.i64 = zext i8 %7 to i32
  %or.i68 = or i32 %or.i51, %conv2.i.i64
  %8 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or.i68, ptr %h2c_pkt, align 4
  %add.ptr11 = getelementptr inbounds i32, ptr %h2c_pkt, i32 1
  %add.ptr12 = getelementptr i8, ptr %data, i32 2
  %9 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr12, align 1
  %conv8.i.i84 = zext i8 %10 to i32
  %11 = shl nuw i32 %conv8.i.i84, 24
  %add.ptr16 = getelementptr i8, ptr %data, i32 3
  %12 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr16, align 1
  %conv2.i.i98 = zext i8 %13 to i32
  %14 = shl nuw nsw i32 %conv2.i.i98, 16
  %or.i102 = or i32 %14, %11
  %add.ptr20 = getelementptr i8, ptr %data, i32 4
  %15 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr20, align 1
  %conv2.i.i115 = zext i8 %16 to i32
  %17 = shl nuw nsw i32 %conv2.i.i115, 8
  %or.i119 = or i32 %17, %or.i102
  %18 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i119, ptr %add.ptr11, align 4
  call fastcc void @rtw_fw_send_h2c_command(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_pkt) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_send_rssi_info(ptr noundef %rtwdev, ptr nocapture noundef readonly %si) local_unnamed_addr #0 align 64 {
entry:
  %h2c_pkt = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_pkt) #9
  %0 = getelementptr inbounds i8, ptr %h2c_pkt, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  %avg_rssi = getelementptr inbounds %struct.rtw_sta_info, ptr %si, i32 0, i32 2
  %2 = ptrtoint ptr %avg_rssi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %avg_rssi, align 4
  %shr.i = lshr i32 %3, 10
  %stbc_en1 = getelementptr inbounds %struct.rtw_sta_info, ptr %si, i32 0, i32 9
  %4 = ptrtoint ptr %stbc_en1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %stbc_en1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %bf.load)
  %tobool = icmp ugt i8 %bf.load, 63
  %mac_id = getelementptr inbounds %struct.rtw_sta_info, ptr %si, i32 0, i32 4
  %5 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mac_id, align 1
  %conv2.i.i = zext i8 %6 to i32
  %7 = shl nuw nsw i32 %conv2.i.i, 16
  %8 = and i32 %shr.i, 255
  %or.i25 = or i32 %7, %8
  %or.i41 = or i32 %or.i25, 1107296256
  %9 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i41, ptr %h2c_pkt, align 4
  %add.ptr11 = getelementptr inbounds i32, ptr %h2c_pkt, i32 1
  %conv8.i.i57 = select i1 %tobool, i32 33554432, i32 0
  %10 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv8.i.i57, ptr %add.ptr11, align 4
  call fastcc void @rtw_fw_send_h2c_command(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_pkt) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_send_ra_info(ptr noundef %rtwdev, ptr nocapture noundef %si) local_unnamed_addr #0 align 64 {
entry:
  %h2c_pkt = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_pkt) #9
  %0 = getelementptr inbounds i8, ptr %h2c_pkt, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  %updated = getelementptr inbounds %struct.rtw_sta_info, ptr %si, i32 0, i32 12
  %2 = ptrtoint ptr %updated to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %updated, align 1, !range !213
  %mac_id = getelementptr inbounds %struct.rtw_sta_info, ptr %si, i32 0, i32 4
  %4 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mac_id, align 1
  %rate_id = getelementptr inbounds %struct.rtw_sta_info, ptr %si, i32 0, i32 5
  %6 = ptrtoint ptr %rate_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rate_id, align 2
  %init_ra_lv = getelementptr inbounds %struct.rtw_sta_info, ptr %si, i32 0, i32 13
  %8 = ptrtoint ptr %init_ra_lv to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %init_ra_lv, align 8
  %bw_mode = getelementptr inbounds %struct.rtw_sta_info, ptr %si, i32 0, i32 6
  %10 = ptrtoint ptr %bw_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bw_mode, align 8
  %sgi_enable = getelementptr inbounds %struct.rtw_sta_info, ptr %si, i32 0, i32 10
  %12 = ptrtoint ptr %sgi_enable to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sgi_enable, align 1, !range !213
  %conv2.i.i121 = zext i8 %13 to i32
  %mul.i.i123 = shl nuw nsw i32 %conv2.i.i121, 15
  %14 = and i8 %9, 3
  %and528.i.i105 = zext i8 %14 to i32
  %mul.i.i106 = shl nuw nsw i32 %and528.i.i105, 13
  %15 = and i8 %7, 31
  %and528.i.i88 = zext i8 %15 to i32
  %16 = shl nuw nsw i32 %and528.i.i88, 8
  %conv2.i.i = zext i8 %5 to i32
  %17 = shl nuw nsw i32 %conv2.i.i, 16
  %or.i75 = or i32 %17, 1073741824
  %or.i91 = or i32 %16, %or.i75
  %or.i108 = or i32 %mul.i.i106, %or.i91
  %and.i137 = or i32 %mul.i.i123, %or.i108
  %18 = and i32 %11, 3
  %or.i142 = or i32 %18, %and.i137
  %ldpc_en = getelementptr inbounds %struct.rtw_sta_info, ptr %si, i32 0, i32 9
  %19 = ptrtoint ptr %ldpc_en to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %ldpc_en, align 4
  %20 = and i8 %bf.load, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool17.not = icmp eq i8 %20, 0
  %conv8.i.i158 = select i1 %tobool17.not, i32 0, i32 4
  %or.i159 = or i32 %conv8.i.i158, %or.i142
  %21 = shl nuw nsw i8 %3, 3
  %mul.i.i174 = zext i8 %21 to i32
  %or.i176 = or i32 %or.i159, %mul.i.i174
  %vht_enable = getelementptr inbounds %struct.rtw_sta_info, ptr %si, i32 0, i32 11
  %22 = ptrtoint ptr %vht_enable to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %vht_enable, align 2, !range !213
  %24 = shl nuw nsw i8 %23, 4
  %25 = or i8 %24, 64
  %or.i193 = zext i8 %25 to i32
  %or.i204 = or i32 %or.i176, %or.i193
  %26 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or.i204, ptr %h2c_pkt, align 4
  %add.ptr32 = getelementptr inbounds i32, ptr %h2c_pkt, i32 1
  %ra_mask = getelementptr inbounds %struct.rtw_sta_info, ptr %si, i32 0, i32 14
  %27 = ptrtoint ptr %ra_mask to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %ra_mask, align 8
  %trunc = trunc i64 %28 to i32
  %or.i271 = call i32 @llvm.bswap.i32(i32 %trunc)
  %29 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i271, ptr %add.ptr32, align 4
  %30 = ptrtoint ptr %init_ra_lv to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %init_ra_lv, align 8
  %31 = ptrtoint ptr %updated to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %updated, align 1
  call fastcc void @rtw_fw_send_h2c_command(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_pkt) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_media_status_report(ptr noundef %rtwdev, i8 noundef zeroext %mac_id, i1 noundef zeroext %connect) local_unnamed_addr #0 align 64 {
entry:
  %h2c_pkt = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_pkt) #9
  %0 = getelementptr inbounds i8, ptr %h2c_pkt, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %conv8.i.i14 = select i1 %connect, i32 65536, i32 0
  %conv2.i.i27 = zext i8 %mac_id to i32
  %2 = shl nuw nsw i32 %conv2.i.i27, 8
  %or.i15 = or i32 %conv8.i.i14, %2
  %or.i31 = or i32 %or.i15, 16777216
  %3 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i31, ptr %h2c_pkt, align 4
  call fastcc void @rtw_fw_send_h2c_command(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_pkt) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_update_wl_phy_info(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  %h2c_pkt = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_pkt) #9
  %0 = getelementptr inbounds i8, ptr %h2c_pkt, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %tx_throughput = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 10, i32 4
  %2 = ptrtoint ptr %tx_throughput to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_throughput, align 8
  %rx_throughput = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 10, i32 5
  %4 = ptrtoint ptr %rx_throughput to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_throughput, align 4
  %6 = shl i32 %3, 8
  %7 = and i32 %6, 261888
  %8 = or i32 %7, 88
  %9 = shl i32 %5, 18
  %10 = and i32 %9, 268173312
  %11 = or i32 %10, %8
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %h2c_pkt, align 4
  %add.ptr8 = getelementptr inbounds i32, ptr %h2c_pkt, i32 1
  %tx_rate = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 25
  %14 = ptrtoint ptr %tx_rate to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tx_rate, align 1
  %16 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr8, align 4
  %and.i57 = and i32 %17, 255
  %conv8.i.i61 = zext i8 %15 to i32
  %18 = shl nuw i32 %conv8.i.i61, 24
  %or.i62 = or i32 %18, %and.i57
  %curr_rx_rate = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 51
  %19 = ptrtoint ptr %curr_rx_rate to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %curr_rx_rate, align 2
  %conv2.i.i75 = zext i8 %20 to i32
  %21 = shl nuw nsw i32 %conv2.i.i75, 16
  %or.i79 = or i32 %21, %or.i62
  %rx_evm_dbm = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 48
  %22 = ptrtoint ptr %rx_evm_dbm to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rx_evm_dbm, align 1
  %conv2.i.i92 = zext i8 %23 to i32
  %24 = shl nuw nsw i32 %conv2.i.i92, 8
  %or.i96 = or i32 %24, %or.i79
  store i32 %or.i96, ptr %add.ptr8, align 4
  call fastcc void @rtw_fw_send_h2c_command(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_pkt) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_beacon_filter_config(ptr noundef %rtwdev, i1 noundef zeroext %connect, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  %h2c_pkt = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bss_conf1 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %0 = ptrtoint ptr %bss_conf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bss_conf1, align 8
  %call = tail call ptr @ieee80211_find_sta(ptr noundef %vif, ptr noundef %1) #9
  %tobool.not = icmp eq ptr %call, null
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %call, i32 0, i32 29
  %spec.select = select i1 %tobool.not, ptr null, ptr %drv_priv
  %cqm_rssi_thold = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 28
  %2 = ptrtoint ptr %cqm_rssi_thold to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cqm_rssi_thold, align 4
  %add = add i32 %3, 100
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_pkt) #9
  %4 = call ptr @memset(ptr %h2c_pkt, i32 0, i32 32)
  %feature1.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 7, i32 8
  %5 = ptrtoint ptr %feature1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %feature1.i, align 4
  %and.i180 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i180)
  %tobool.i.not = icmp eq i32 %and.i180, 0
  %tobool3.not = icmp eq ptr %spec.select, null
  %or.cond = select i1 %tobool.i.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %h2c_pkt, align 4
  br i1 %connect, label %if.end11, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %and.i = and i32 %8, 16776959
  %or.i = or i32 %and.i, 1459617792
  %9 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %h2c_pkt, align 4
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %and.i82 = and i32 %8, 16777215
  %or.i86 = or i32 %and.i82, 1442840576
  %10 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i86, ptr %h2c_pkt, align 4
  %arrayidx = getelementptr inbounds [32 x i8], ptr %h2c_pkt, i32 0, i32 1
  %11 = ptrtoint ptr %bss_conf1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bss_conf1, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 4
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr inbounds [32 x i8], ptr %h2c_pkt, i32 0, i32 5
  %18 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %add.ptr1.i, align 2
  call fastcc void @rtw_fw_send_h2c_command(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt)
  %19 = getelementptr inbounds i8, ptr %h2c_pkt, i32 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 24)
  %add.ptr42 = getelementptr inbounds i32, ptr %h2c_pkt, i32 1
  %cqm_rssi_hyst = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 29
  %21 = ptrtoint ptr %cqm_rssi_hyst to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cqm_rssi_hyst, align 8
  %mac_id = getelementptr inbounds %struct.rtw_sta_info, ptr %spec.select, i32 0, i32 4
  %23 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mac_id, align 1
  %conv2.i.i140 = zext i8 %24 to i32
  %25 = shl nuw nsw i32 %conv2.i.i140, 16
  %26 = tail call i32 @llvm.smax.i32(i32 %add, i32 0)
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 100)
  %or.i118 = or i32 %27, 1459618048
  %or.i144 = or i32 %25, %or.i118
  %28 = shl i32 %22, 9
  %29 = and i32 %28, 7680
  %or.i161 = or i32 %29, %or.i144
  %30 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or.i161, ptr %h2c_pkt, align 4
  %beacon_int = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 19
  %31 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %beacon_int, align 2
  %33 = shl i16 %32, 4
  %34 = and i16 %33, 16368
  %35 = or i16 %34, 10
  %36 = zext i16 %35 to i32
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  %38 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %add.ptr42, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end11, %if.then5
  call fastcc void @rtw_fw_send_h2c_command(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_pkt) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_set_pwr_mode(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  %h2c_pkt = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_pkt) #9
  %0 = getelementptr inbounds i8, ptr %h2c_pkt, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %smart_ps = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 30, i32 6
  %2 = ptrtoint ptr %smart_ps to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %smart_ps, align 2
  %rlbm = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 30, i32 5
  %4 = ptrtoint ptr %rlbm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rlbm, align 1
  %6 = and i8 %5, 15
  %and528.i.i44 = zext i8 %6 to i32
  %7 = shl nuw nsw i32 %and528.i.i44, 8
  %lps_conf = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 30
  %8 = ptrtoint ptr %lps_conf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lps_conf, align 4
  %10 = shl i32 %9, 16
  %11 = and i32 %10, 8323072
  %or.i31 = or i32 %11, 536870912
  %or.i47 = or i32 %7, %or.i31
  %12 = and i8 %3, 15
  %and528.i.i61 = zext i8 %12 to i32
  %mul.i.i62 = shl nuw nsw i32 %and528.i.i61, 12
  %or.i64 = or i32 %mul.i.i62, %or.i47
  %awake_interval = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 30, i32 4
  %13 = ptrtoint ptr %awake_interval to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %awake_interval, align 4
  %conv2.i.i77 = zext i8 %14 to i32
  %or.i81 = or i32 %or.i64, %conv2.i.i77
  %15 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i81, ptr %h2c_pkt, align 4
  %add.ptr12 = getelementptr inbounds i32, ptr %h2c_pkt, i32 1
  %port_id = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 30, i32 7
  %16 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %port_id, align 1
  %18 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr12, align 4
  %state = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 30, i32 3
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state, align 4
  %22 = shl i8 %17, 5
  %conv8.i.i97 = zext i8 %22 to i32
  %23 = shl nuw i32 %conv8.i.i97, 24
  %and.i93 = and i32 %19, 520159231
  %or.i98 = or i32 %23, %and.i93
  %24 = shl i32 %21, 16
  %25 = and i32 %24, 16711680
  %or.i115 = or i32 %25, %or.i98
  store i32 %or.i115, ptr %add.ptr12, align 4
  call fastcc void @rtw_fw_send_h2c_command(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_pkt) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_set_keep_alive_cmd(ptr noundef %rtwdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %h2c_pkt = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_pkt) #9
  %0 = getelementptr inbounds i8, ptr %h2c_pkt, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %or.i48 = select i1 %enable, i32 50529536, i32 50464000
  %2 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or.i48, ptr %h2c_pkt, align 4
  call fastcc void @rtw_fw_send_h2c_command(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_pkt) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_set_disconnect_decision_cmd(ptr noundef %rtwdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %h2c_pkt = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_pkt) #9
  %0 = getelementptr inbounds i8, ptr %h2c_pkt, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %2 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 67108864, ptr %h2c_pkt, align 4
  %flags = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or.i55 = select i1 %enable, i32 67313157, i32 67247621
  %6 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or.i55, ptr %h2c_pkt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call fastcc void @rtw_fw_send_h2c_command(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_pkt) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_set_wowlan_ctrl_cmd(ptr noundef %rtwdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %h2c_pkt = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_pkt) #9
  %0 = getelementptr inbounds i8, ptr %h2c_pkt, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %or.i57 = select i1 %enable, i32 -2147418112, i32 -2147483648
  %2 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or.i57, ptr %h2c_pkt, align 4
  %wow.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42
  %3 = ptrtoint ptr %wow.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wow.i, align 8
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %drv_priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp eq i32 %6, 2
  br i1 %cmp.i, label %if.then, label %entry.if.end38_crit_edge

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %le32p_replace_bits.exit74

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

le32p_replace_bits.exit74:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %or.i73 = select i1 %enable, i32 -2147155968, i32 -2147483648
  %9 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i73, ptr %h2c_pkt, align 4
  br label %if.end

if.end:                                           ; preds = %le32p_replace_bits.exit74, %if.then.if.end_crit_edge
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool14.not = icmp eq i32 %12, 0
  br i1 %tobool14.not, label %if.end.if.end20_crit_edge, label %if.then15

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %h2c_pkt, align 4
  %and.i86 = and i32 %14, -8388609
  %conv8.i.i90 = select i1 %enable, i32 8388608, i32 0
  %or.i91 = or i32 %and.i86, %conv8.i.i90
  store i32 %or.i91, ptr %h2c_pkt, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.end.if.end20_crit_edge
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags, align 4
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool24.not = icmp eq i32 %17, 0
  br i1 %tobool24.not, label %if.end20.if.end30_crit_edge, label %if.then25

if.end20.if.end30_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %h2c_pkt, align 4
  %and.i105 = and i32 %19, -4194305
  %conv8.i.i109 = select i1 %enable, i32 4194304, i32 0
  %or.i110 = or i32 %and.i105, %conv8.i.i109
  store i32 %or.i110, ptr %h2c_pkt, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end20.if.end30_crit_edge
  %pattern_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42, i32 3
  %20 = ptrtoint ptr %pattern_cnt to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pattern_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool31.not = icmp eq i8 %21, 0
  br i1 %tobool31.not, label %if.end30.if.end38_crit_edge, label %if.then32

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %h2c_pkt, align 4
  %and.i122 = and i32 %23, -131073
  %conv8.i.i126 = select i1 %enable, i32 131072, i32 0
  %or.i127 = or i32 %and.i122, %conv8.i.i126
  store i32 %or.i127, ptr %h2c_pkt, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then32, %if.end30.if.end38_crit_edge, %entry.if.end38_crit_edge
  call fastcc void @rtw_fw_send_h2c_command(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_pkt) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_set_aoac_global_info_cmd(ptr noundef %rtwdev, i8 noundef zeroext %pairwise_key_enc, i8 noundef zeroext %group_key_enc) local_unnamed_addr #0 align 64 {
entry:
  %h2c_pkt = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_pkt) #9
  %0 = getelementptr inbounds i8, ptr %h2c_pkt, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %conv2.i.i = zext i8 %pairwise_key_enc to i32
  %2 = shl nuw nsw i32 %conv2.i.i, 16
  %conv2.i.i27 = zext i8 %group_key_enc to i32
  %3 = shl nuw nsw i32 %conv2.i.i27, 8
  %or.i15 = or i32 %2, %3
  %or.i31 = or i32 %or.i15, -2113929216
  %4 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or.i31, ptr %h2c_pkt, align 4
  call fastcc void @rtw_fw_send_h2c_command(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_pkt) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_set_remote_wake_ctrl_cmd(ptr noundef %rtwdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %h2c_pkt = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_pkt) #9
  %0 = getelementptr inbounds i8, ptr %h2c_pkt, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %or.i18 = select i1 %enable, i32 -2130640896, i32 -2130706432
  %2 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or.i18, ptr %h2c_pkt, align 4
  %wow.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42
  %3 = ptrtoint ptr %wow.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wow.i, align 8
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %drv_priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  br i1 %cmp.i, label %le32p_replace_bits.exit35, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

le32p_replace_bits.exit35:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or.i34 = select i1 %enable, i32 -2129592320, i32 -2130706432
  %7 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i34, ptr %h2c_pkt, align 4
  br label %if.end

if.end:                                           ; preds = %le32p_replace_bits.exit35, %entry.if.end_crit_edge
  call fastcc void @rtw_fw_send_h2c_command(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_pkt) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_set_nlo_info(ptr noundef %rtwdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %h2c_pkt = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_pkt) #9
  %0 = call ptr @memset(ptr %h2c_pkt, i32 0, i32 32)
  %rsvd_page_list.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 19
  %1 = ptrtoint ptr %rsvd_page_list.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn13.i = load ptr, ptr %rsvd_page_list.i, align 4
  %cmp.not14.i = icmp eq ptr %.pn13.i, %rsvd_page_list.i
  br i1 %cmp.not14.i, label %entry.rtw_get_rsvd_page_location.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.rtw_get_rsvd_page_location.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtw_get_rsvd_page_location.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn16.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn13.i, %entry.for.body.i_crit_edge ]
  %location.015.i = phi i8 [ %location.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %type2.i = getelementptr i8, ptr %.pn16.i, i32 12
  %2 = ptrtoint ptr %type2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %3)
  %cmp3.i = icmp eq i32 %3, 9
  br i1 %cmp3.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %page.i = getelementptr i8, ptr %.pn16.i, i32 16
  %4 = ptrtoint ptr %page.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %page.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %location.1.i = phi i8 [ %5, %if.then.i ], [ %location.015.i, %for.body.i.for.inc.i_crit_edge ]
  %6 = ptrtoint ptr %.pn16.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn16.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %rsvd_page_list.i
  br i1 %cmp.not.i, label %for.inc.i.rtw_get_rsvd_page_location.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.rtw_get_rsvd_page_location.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtw_get_rsvd_page_location.exit

rtw_get_rsvd_page_location.exit:                  ; preds = %for.inc.i.rtw_get_rsvd_page_location.exit_crit_edge, %entry.rtw_get_rsvd_page_location.exit_crit_edge
  %location.0.lcssa.i = phi i8 [ 0, %entry.rtw_get_rsvd_page_location.exit_crit_edge ], [ %location.1.i, %for.inc.i.rtw_get_rsvd_page_location.exit_crit_edge ]
  %7 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %h2c_pkt, align 4
  %or.i = and i32 %8, 16711679
  %conv8.i.i32 = select i1 %enable, i32 65536, i32 0
  %and.i29 = or i32 %or.i, %conv8.i.i32
  %or.i33 = or i32 %and.i29, -1946157056
  store i32 %or.i33, ptr %h2c_pkt, align 4
  br i1 %enable, label %if.then, label %rtw_get_rsvd_page_location.exit.if.end18_crit_edge

rtw_get_rsvd_page_location.exit.if.end18_crit_edge: ; preds = %rtw_get_rsvd_page_location.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then:                                          ; preds = %rtw_get_rsvd_page_location.exit
  %call4 = tail call i32 @rtw_get_lps_deep_mode(ptr noundef %rtwdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 0
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %le32p_replace_bits.exit50

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

le32p_replace_bits.exit50:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %or.i49 = or i32 %and.i29, -1946025984
  %9 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i49, ptr %h2c_pkt, align 4
  br label %if.end

if.end:                                           ; preds = %le32p_replace_bits.exit50, %if.then.if.end_crit_edge
  %10 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %h2c_pkt, align 4
  %and.i61 = and i32 %11, -327425
  %conv2.i.i79 = zext i8 %location.0.lcssa.i to i32
  %12 = shl nuw nsw i32 %conv2.i.i79, 8
  %or.i66 = or i32 %and.i61, %12
  %or.i83 = or i32 %or.i66, 262144
  store i32 %or.i83, ptr %h2c_pkt, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end, %rtw_get_rsvd_page_location.exit.if.end18_crit_edge
  call fastcc void @rtw_fw_send_h2c_command(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_pkt) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_get_lps_deep_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_set_pg_info(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  %h2c_pkt = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_pkt) #9
  %0 = call ptr @memset(ptr %h2c_pkt, i32 0, i32 32)
  %rsvd_page_list.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 19
  %1 = ptrtoint ptr %rsvd_page_list.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn13.i = load ptr, ptr %rsvd_page_list.i, align 4
  %cmp.not14.i = icmp eq ptr %.pn13.i, %rsvd_page_list.i
  br i1 %cmp.not14.i, label %entry.rtw_get_rsvd_page_location.exit94_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.rtw_get_rsvd_page_location.exit94_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtw_get_rsvd_page_location.exit94

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn16.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn13.i, %entry.for.body.i_crit_edge ]
  %location.015.i = phi i8 [ %location.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %type2.i = getelementptr i8, ptr %.pn16.i, i32 12
  %2 = ptrtoint ptr %type2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp3.i = icmp eq i32 %3, 7
  br i1 %cmp3.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %page.i = getelementptr i8, ptr %.pn16.i, i32 16
  %4 = ptrtoint ptr %page.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %page.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %location.1.i = phi i8 [ %5, %if.then.i ], [ %location.015.i, %for.body.i.for.inc.i_crit_edge ]
  %6 = ptrtoint ptr %.pn16.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn16.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %rsvd_page_list.i
  br i1 %cmp.not.i, label %for.inc.i.for.body.i86_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.body.i86_crit_edge:                 ; preds = %for.inc.i
  br label %for.body.i86

for.body.i86:                                     ; preds = %for.inc.i92.for.body.i86_crit_edge, %for.inc.i.for.body.i86_crit_edge
  %.pn16.i82 = phi ptr [ %.pn.i90, %for.inc.i92.for.body.i86_crit_edge ], [ %.pn13.i, %for.inc.i.for.body.i86_crit_edge ]
  %location.015.i83 = phi i8 [ %location.1.i89, %for.inc.i92.for.body.i86_crit_edge ], [ 0, %for.inc.i.for.body.i86_crit_edge ]
  %type2.i84 = getelementptr i8, ptr %.pn16.i82, i32 12
  %7 = ptrtoint ptr %type2.i84 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type2.i84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %8)
  %cmp3.i85 = icmp eq i32 %8, 6
  br i1 %cmp3.i85, label %if.then.i88, label %for.body.i86.for.inc.i92_crit_edge

for.body.i86.for.inc.i92_crit_edge:               ; preds = %for.body.i86
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i92

if.then.i88:                                      ; preds = %for.body.i86
  call void @__sanitizer_cov_trace_pc() #11
  %page.i87 = getelementptr i8, ptr %.pn16.i82, i32 16
  %9 = ptrtoint ptr %page.i87 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %page.i87, align 4
  br label %for.inc.i92

for.inc.i92:                                      ; preds = %if.then.i88, %for.body.i86.for.inc.i92_crit_edge
  %location.1.i89 = phi i8 [ %10, %if.then.i88 ], [ %location.015.i83, %for.body.i86.for.inc.i92_crit_edge ]
  %11 = ptrtoint ptr %.pn16.i82 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i90 = load ptr, ptr %.pn16.i82, align 4
  %cmp.not.i91 = icmp eq ptr %.pn.i90, %rsvd_page_list.i
  br i1 %cmp.not.i91, label %for.inc.i92.rtw_get_rsvd_page_location.exit94_crit_edge, label %for.inc.i92.for.body.i86_crit_edge

for.inc.i92.for.body.i86_crit_edge:               ; preds = %for.inc.i92
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i86

for.inc.i92.rtw_get_rsvd_page_location.exit94_crit_edge: ; preds = %for.inc.i92
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtw_get_rsvd_page_location.exit94

rtw_get_rsvd_page_location.exit94:                ; preds = %for.inc.i92.rtw_get_rsvd_page_location.exit94_crit_edge, %entry.rtw_get_rsvd_page_location.exit94_crit_edge
  %location.0.lcssa.i96 = phi i8 [ 0, %entry.rtw_get_rsvd_page_location.exit94_crit_edge ], [ %location.1.i, %for.inc.i92.rtw_get_rsvd_page_location.exit94_crit_edge ]
  %location.0.lcssa.i93 = phi i8 [ 0, %entry.rtw_get_rsvd_page_location.exit94_crit_edge ], [ %location.1.i89, %for.inc.i92.rtw_get_rsvd_page_location.exit94_crit_edge ]
  %12 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %h2c_pkt, align 4
  %or.i = and i32 %13, 16384000
  %conv2.i.i = zext i8 %location.0.lcssa.i96 to i32
  %14 = shl nuw nsw i32 %conv2.i.i, 8
  %and.i23 = or i32 %or.i, %14
  %conv2.i.i39 = zext i8 %location.0.lcssa.i93 to i32
  %or.i27 = or i32 %and.i23, %conv2.i.i39
  %or.i43 = or i32 %or.i27, 721420288
  %sec_cam_backup = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 30, i32 8
  %15 = ptrtoint ptr %sec_cam_backup to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sec_cam_backup, align 4, !range !213
  %conv2.i.i56 = zext i8 %16 to i32
  %17 = shl nuw nsw i32 %conv2.i.i56, 16
  %pattern_cam_backup = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 30, i32 9
  %18 = ptrtoint ptr %pattern_cam_backup to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pattern_cam_backup, align 1, !range !213
  %and.i72 = or i32 %17, %or.i43
  %conv2.i.i73 = zext i8 %19 to i32
  %mul.i.i75 = shl nuw nsw i32 %conv2.i.i73, 18
  %or.i77 = or i32 %mul.i.i75, %and.i72
  store i32 %or.i77, ptr %h2c_pkt, align 4
  call fastcc void @rtw_fw_send_h2c_command(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_pkt) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_send_rsvd_page_h2c(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  %h2c_pkt = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_pkt) #9
  %rsvd_page_list.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 19
  %0 = call ptr @memset(ptr %h2c_pkt, i32 0, i32 32)
  %1 = ptrtoint ptr %rsvd_page_list.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn13.i = load ptr, ptr %rsvd_page_list.i, align 4
  %cmp.not14.i = icmp eq ptr %.pn13.i, %rsvd_page_list.i
  br i1 %cmp.not14.i, label %entry.rtw_get_rsvd_page_location.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.rtw_get_rsvd_page_location.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtw_get_rsvd_page_location.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn16.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn13.i, %entry.for.body.i_crit_edge ]
  %location.015.i = phi i8 [ %location.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %type2.i = getelementptr i8, ptr %.pn16.i, i32 12
  %2 = ptrtoint ptr %type2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp3.i = icmp eq i32 %3, 3
  br i1 %cmp3.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %page.i = getelementptr i8, ptr %.pn16.i, i32 16
  %4 = ptrtoint ptr %page.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %page.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %location.1.i = phi i8 [ %5, %if.then.i ], [ %location.015.i, %for.body.i.for.inc.i_crit_edge ]
  %6 = ptrtoint ptr %.pn16.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn16.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %rsvd_page_list.i
  br i1 %cmp.not.i, label %for.inc.i.rtw_get_rsvd_page_location.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.rtw_get_rsvd_page_location.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtw_get_rsvd_page_location.exit

rtw_get_rsvd_page_location.exit:                  ; preds = %for.inc.i.rtw_get_rsvd_page_location.exit_crit_edge, %entry.rtw_get_rsvd_page_location.exit_crit_edge
  %location.0.lcssa.i = phi i8 [ 0, %entry.rtw_get_rsvd_page_location.exit_crit_edge ], [ %location.1.i, %for.inc.i.rtw_get_rsvd_page_location.exit_crit_edge ]
  %add.ptr2 = getelementptr inbounds i8, ptr %h2c_pkt, i32 1
  %7 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %location.0.lcssa.i, ptr %add.ptr2, align 1
  %conv = zext i8 %location.0.lcssa.i to i32
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.7, i32 noundef %conv) #9
  %8 = ptrtoint ptr %rsvd_page_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn13.i32 = load ptr, ptr %rsvd_page_list.i, align 4
  %cmp.not14.i33 = icmp eq ptr %.pn13.i32, %rsvd_page_list.i
  br i1 %cmp.not14.i33, label %rtw_get_rsvd_page_location.exit.rtw_get_rsvd_page_location.exit46_crit_edge, label %rtw_get_rsvd_page_location.exit.for.body.i38_crit_edge

rtw_get_rsvd_page_location.exit.for.body.i38_crit_edge: ; preds = %rtw_get_rsvd_page_location.exit
  br label %for.body.i38

rtw_get_rsvd_page_location.exit.rtw_get_rsvd_page_location.exit46_crit_edge: ; preds = %rtw_get_rsvd_page_location.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtw_get_rsvd_page_location.exit46

for.body.i38:                                     ; preds = %for.inc.i44.for.body.i38_crit_edge, %rtw_get_rsvd_page_location.exit.for.body.i38_crit_edge
  %.pn16.i34 = phi ptr [ %.pn.i42, %for.inc.i44.for.body.i38_crit_edge ], [ %.pn13.i32, %rtw_get_rsvd_page_location.exit.for.body.i38_crit_edge ]
  %location.015.i35 = phi i8 [ %location.1.i41, %for.inc.i44.for.body.i38_crit_edge ], [ 0, %rtw_get_rsvd_page_location.exit.for.body.i38_crit_edge ]
  %type2.i36 = getelementptr i8, ptr %.pn16.i34, i32 12
  %9 = ptrtoint ptr %type2.i36 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type2.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp3.i37 = icmp eq i32 %10, 2
  br i1 %cmp3.i37, label %if.then.i40, label %for.body.i38.for.inc.i44_crit_edge

for.body.i38.for.inc.i44_crit_edge:               ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i44

if.then.i40:                                      ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #11
  %page.i39 = getelementptr i8, ptr %.pn16.i34, i32 16
  %11 = ptrtoint ptr %page.i39 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %page.i39, align 4
  br label %for.inc.i44

for.inc.i44:                                      ; preds = %if.then.i40, %for.body.i38.for.inc.i44_crit_edge
  %location.1.i41 = phi i8 [ %12, %if.then.i40 ], [ %location.015.i35, %for.body.i38.for.inc.i44_crit_edge ]
  %13 = ptrtoint ptr %.pn16.i34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i42 = load ptr, ptr %.pn16.i34, align 4
  %cmp.not.i43 = icmp eq ptr %.pn.i42, %rsvd_page_list.i
  br i1 %cmp.not.i43, label %for.inc.i44.rtw_get_rsvd_page_location.exit46_crit_edge, label %for.inc.i44.for.body.i38_crit_edge

for.inc.i44.for.body.i38_crit_edge:               ; preds = %for.inc.i44
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i38

for.inc.i44.rtw_get_rsvd_page_location.exit46_crit_edge: ; preds = %for.inc.i44
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtw_get_rsvd_page_location.exit46

rtw_get_rsvd_page_location.exit46:                ; preds = %for.inc.i44.rtw_get_rsvd_page_location.exit46_crit_edge, %rtw_get_rsvd_page_location.exit.rtw_get_rsvd_page_location.exit46_crit_edge
  %location.0.lcssa.i45 = phi i8 [ 0, %rtw_get_rsvd_page_location.exit.rtw_get_rsvd_page_location.exit46_crit_edge ], [ %location.1.i41, %for.inc.i44.rtw_get_rsvd_page_location.exit46_crit_edge ]
  %add.ptr5 = getelementptr inbounds i8, ptr %h2c_pkt, i32 2
  %14 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %location.0.lcssa.i45, ptr %add.ptr5, align 2
  %conv6 = zext i8 %location.0.lcssa.i45 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %conv6) #9
  %15 = ptrtoint ptr %rsvd_page_list.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn13.i48 = load ptr, ptr %rsvd_page_list.i, align 4
  %cmp.not14.i49 = icmp eq ptr %.pn13.i48, %rsvd_page_list.i
  br i1 %cmp.not14.i49, label %rtw_get_rsvd_page_location.exit46.rtw_get_rsvd_page_location.exit62_crit_edge, label %rtw_get_rsvd_page_location.exit46.for.body.i54_crit_edge

rtw_get_rsvd_page_location.exit46.for.body.i54_crit_edge: ; preds = %rtw_get_rsvd_page_location.exit46
  br label %for.body.i54

rtw_get_rsvd_page_location.exit46.rtw_get_rsvd_page_location.exit62_crit_edge: ; preds = %rtw_get_rsvd_page_location.exit46
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtw_get_rsvd_page_location.exit62

for.body.i54:                                     ; preds = %for.inc.i60.for.body.i54_crit_edge, %rtw_get_rsvd_page_location.exit46.for.body.i54_crit_edge
  %.pn16.i50 = phi ptr [ %.pn.i58, %for.inc.i60.for.body.i54_crit_edge ], [ %.pn13.i48, %rtw_get_rsvd_page_location.exit46.for.body.i54_crit_edge ]
  %location.015.i51 = phi i8 [ %location.1.i57, %for.inc.i60.for.body.i54_crit_edge ], [ 0, %rtw_get_rsvd_page_location.exit46.for.body.i54_crit_edge ]
  %type2.i52 = getelementptr i8, ptr %.pn16.i50, i32 12
  %16 = ptrtoint ptr %type2.i52 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type2.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp3.i53 = icmp eq i32 %17, 4
  br i1 %cmp3.i53, label %if.then.i56, label %for.body.i54.for.inc.i60_crit_edge

for.body.i54.for.inc.i60_crit_edge:               ; preds = %for.body.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i60

if.then.i56:                                      ; preds = %for.body.i54
  call void @__sanitizer_cov_trace_pc() #11
  %page.i55 = getelementptr i8, ptr %.pn16.i50, i32 16
  %18 = ptrtoint ptr %page.i55 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %page.i55, align 4
  br label %for.inc.i60

for.inc.i60:                                      ; preds = %if.then.i56, %for.body.i54.for.inc.i60_crit_edge
  %location.1.i57 = phi i8 [ %19, %if.then.i56 ], [ %location.015.i51, %for.body.i54.for.inc.i60_crit_edge ]
  %20 = ptrtoint ptr %.pn16.i50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn.i58 = load ptr, ptr %.pn16.i50, align 4
  %cmp.not.i59 = icmp eq ptr %.pn.i58, %rsvd_page_list.i
  br i1 %cmp.not.i59, label %for.inc.i60.rtw_get_rsvd_page_location.exit62_crit_edge, label %for.inc.i60.for.body.i54_crit_edge

for.inc.i60.for.body.i54_crit_edge:               ; preds = %for.inc.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i54

for.inc.i60.rtw_get_rsvd_page_location.exit62_crit_edge: ; preds = %for.inc.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtw_get_rsvd_page_location.exit62

rtw_get_rsvd_page_location.exit62:                ; preds = %for.inc.i60.rtw_get_rsvd_page_location.exit62_crit_edge, %rtw_get_rsvd_page_location.exit46.rtw_get_rsvd_page_location.exit62_crit_edge
  %location.0.lcssa.i61 = phi i8 [ 0, %rtw_get_rsvd_page_location.exit46.rtw_get_rsvd_page_location.exit62_crit_edge ], [ %location.1.i57, %for.inc.i60.rtw_get_rsvd_page_location.exit62_crit_edge ]
  %add.ptr9 = getelementptr inbounds i8, ptr %h2c_pkt, i32 3
  %21 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %location.0.lcssa.i61, ptr %add.ptr9, align 1
  %conv10 = zext i8 %location.0.lcssa.i61 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.9, i32 noundef %conv10) #9
  %22 = ptrtoint ptr %rsvd_page_list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn13.i64 = load ptr, ptr %rsvd_page_list.i, align 4
  %cmp.not14.i65 = icmp eq ptr %.pn13.i64, %rsvd_page_list.i
  br i1 %cmp.not14.i65, label %rtw_get_rsvd_page_location.exit62.rtw_get_rsvd_page_location.exit78_crit_edge, label %rtw_get_rsvd_page_location.exit62.for.body.i70_crit_edge

rtw_get_rsvd_page_location.exit62.for.body.i70_crit_edge: ; preds = %rtw_get_rsvd_page_location.exit62
  br label %for.body.i70

rtw_get_rsvd_page_location.exit62.rtw_get_rsvd_page_location.exit78_crit_edge: ; preds = %rtw_get_rsvd_page_location.exit62
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtw_get_rsvd_page_location.exit78

for.body.i70:                                     ; preds = %for.inc.i76.for.body.i70_crit_edge, %rtw_get_rsvd_page_location.exit62.for.body.i70_crit_edge
  %.pn16.i66 = phi ptr [ %.pn.i74, %for.inc.i76.for.body.i70_crit_edge ], [ %.pn13.i64, %rtw_get_rsvd_page_location.exit62.for.body.i70_crit_edge ]
  %location.015.i67 = phi i8 [ %location.1.i73, %for.inc.i76.for.body.i70_crit_edge ], [ 0, %rtw_get_rsvd_page_location.exit62.for.body.i70_crit_edge ]
  %type2.i68 = getelementptr i8, ptr %.pn16.i66, i32 12
  %23 = ptrtoint ptr %type2.i68 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type2.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %24)
  %cmp3.i69 = icmp eq i32 %24, 5
  br i1 %cmp3.i69, label %if.then.i72, label %for.body.i70.for.inc.i76_crit_edge

for.body.i70.for.inc.i76_crit_edge:               ; preds = %for.body.i70
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i76

if.then.i72:                                      ; preds = %for.body.i70
  call void @__sanitizer_cov_trace_pc() #11
  %page.i71 = getelementptr i8, ptr %.pn16.i66, i32 16
  %25 = ptrtoint ptr %page.i71 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %page.i71, align 4
  br label %for.inc.i76

for.inc.i76:                                      ; preds = %if.then.i72, %for.body.i70.for.inc.i76_crit_edge
  %location.1.i73 = phi i8 [ %26, %if.then.i72 ], [ %location.015.i67, %for.body.i70.for.inc.i76_crit_edge ]
  %27 = ptrtoint ptr %.pn16.i66 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn.i74 = load ptr, ptr %.pn16.i66, align 4
  %cmp.not.i75 = icmp eq ptr %.pn.i74, %rsvd_page_list.i
  br i1 %cmp.not.i75, label %for.inc.i76.rtw_get_rsvd_page_location.exit78_crit_edge, label %for.inc.i76.for.body.i70_crit_edge

for.inc.i76.for.body.i70_crit_edge:               ; preds = %for.inc.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i70

for.inc.i76.rtw_get_rsvd_page_location.exit78_crit_edge: ; preds = %for.inc.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtw_get_rsvd_page_location.exit78

rtw_get_rsvd_page_location.exit78:                ; preds = %for.inc.i76.rtw_get_rsvd_page_location.exit78_crit_edge, %rtw_get_rsvd_page_location.exit62.rtw_get_rsvd_page_location.exit78_crit_edge
  %location.0.lcssa.i77 = phi i8 [ 0, %rtw_get_rsvd_page_location.exit62.rtw_get_rsvd_page_location.exit78_crit_edge ], [ %location.1.i73, %for.inc.i76.rtw_get_rsvd_page_location.exit78_crit_edge ]
  %add.ptr13 = getelementptr inbounds i8, ptr %h2c_pkt, i32 4
  %28 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %location.0.lcssa.i77, ptr %add.ptr13, align 4
  %conv14 = zext i8 %location.0.lcssa.i77 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.10, i32 noundef %conv14) #9
  call fastcc void @rtw_fw_send_h2c_command(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_pkt) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_remove_rsvd_page(ptr noundef %rtwdev, ptr noundef readonly %rtwvif) local_unnamed_addr #0 align 64 {
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
  %dep_map = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 15, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !211

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1199, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %rsvd_page_list = getelementptr inbounds %struct.rtw_vif, ptr %rtwvif, i32 0, i32 6
  %1 = ptrtoint ptr %rsvd_page_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rsvd_page_list, align 4
  %cmp32.not61 = icmp eq ptr %2, %rsvd_page_list
  br i1 %cmp32.not61, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end40.for.body_crit_edge, %if.end.for.body_crit_edge
  %rsvd_pkt.062 = phi ptr [ %tmp.065, %if.end40.for.body_crit_edge ], [ %2, %if.end.for.body_crit_edge ]
  %3 = ptrtoint ptr %rsvd_pkt.062 to i32
  call void @__asan_load4_noabort(i32 %3)
  %tmp.065 = load ptr, ptr %rsvd_pkt.062, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rsvd_pkt.062) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %rsvd_pkt.062, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %rsvd_pkt.062 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rsvd_pkt.062, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %10 = ptrtoint ptr %rsvd_pkt.062 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %rsvd_pkt.062, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %rsvd_pkt.062, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %build_list = getelementptr inbounds %struct.rtw_rsvd_page, ptr %rsvd_pkt.062, i32 0, i32 2
  %12 = ptrtoint ptr %build_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %build_list, align 4
  %cmp.i.not = icmp eq ptr %13, %build_list
  br i1 %cmp.i.not, label %list_del.exit.if.end40_crit_edge, label %if.then38

list_del.exit.if.end40_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then38:                                        ; preds = %list_del.exit
  %call.i.i54 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %build_list) #9
  br i1 %call.i.i54, label %if.end.i.i57, label %if.then38.list_del.exit59_crit_edge

if.then38.list_del.exit59_crit_edge:              ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit59

if.end.i.i57:                                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i55 = getelementptr inbounds %struct.rtw_rsvd_page, ptr %rsvd_pkt.062, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %prev.i.i55 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i55, align 4
  %16 = ptrtoint ptr %build_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %build_list, align 4
  %prev1.i.i.i56 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i56 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i56, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit59

list_del.exit59:                                  ; preds = %if.end.i.i57, %if.then38.list_del.exit59_crit_edge
  %20 = ptrtoint ptr %build_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %build_list, align 4
  %prev.i58 = getelementptr inbounds %struct.rtw_rsvd_page, ptr %rsvd_pkt.062, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %prev.i58 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i58, align 4
  br label %if.end40

if.end40:                                         ; preds = %list_del.exit59, %list_del.exit.if.end40_crit_edge
  tail call void @kfree(ptr noundef %rsvd_pkt.062) #9
  %cmp32.not = icmp eq ptr %tmp.065, %rsvd_page_list
  br i1 %cmp32.not, label %if.end40.for.end_crit_edge, label %if.end40.for.body_crit_edge

if.end40.for.body_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end40.for.end_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end40.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_add_rsvd_page_bcn(ptr noundef %rtwdev, ptr noundef %rtwvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rtwvif, i32 -848
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %1, label %do.end [
    i32 3, label %entry.if.end_crit_edge
    i32 1, label %entry.if.end_crit_edge12
    i32 7, label %entry.if.end_crit_edge13
  ]

entry.if.end_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.11, i32 noundef %1) #12
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge12, %entry.if.end_crit_edge13
  tail call fastcc void @rtw_add_rsvd_page(ptr noundef %rtwdev, ptr noundef %rtwvif, i32 noundef 0, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_add_rsvd_page(ptr noundef %rtwdev, ptr noundef %rtwvif, i32 noundef %type, i1 noundef zeroext %txdesc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 40) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.57, i32 noundef %type) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %frombool.i = zext i1 %txdesc to i8
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %build_list.i = getelementptr inbounds %struct.rtw_rsvd_page, ptr %call7.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %build_list.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %build_list.i, ptr %build_list.i, align 4
  %prev.i1.i = getelementptr inbounds %struct.rtw_rsvd_page, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %build_list.i, ptr %prev.i1.i, align 8
  %type1.i = getelementptr inbounds %struct.rtw_rsvd_page, ptr %call7.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %type1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %type, ptr %type1.i, align 8
  %add_txdesc.i = getelementptr inbounds %struct.rtw_rsvd_page, ptr %call7.i.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %add_txdesc.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool.i, ptr %add_txdesc.i, align 1
  %rtwvif2 = getelementptr inbounds %struct.rtw_rsvd_page, ptr %call7.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %rtwvif2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %rtwvif, ptr %rtwvif2, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %10 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i9 = icmp eq i32 %10, 0
  br i1 %tobool.not.i9, label %if.end.if.end.i11_crit_edge, label %land.rhs.i

if.end.if.end.i11_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i11

land.rhs.i:                                       ; preds = %if.end
  %dep_map.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 15, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i11_crit_edge, !prof !211

land.rhs.i.if.end.i11_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i11

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1155, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i11

if.end.i11:                                       ; preds = %do.end.i, %land.rhs.i.if.end.i11_crit_edge, %if.end.if.end.i11_crit_edge
  %rsvd_page_list.i = getelementptr inbounds %struct.rtw_vif, ptr %rtwvif, i32 0, i32 6
  %prev.i.i10 = getelementptr inbounds %struct.rtw_vif, ptr %rtwvif, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %prev.i.i10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i10, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %12, ptr noundef %rsvd_page_list.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i11.cleanup_crit_edge

if.end.i11.cleanup_crit_edge:                     ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %prev.i.i10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i.i, ptr %prev.i.i10, align 4
  %14 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %rsvd_page_list.i, ptr %call7.i.i.i, align 8
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %call7.i.i.i, ptr %12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.end.i11.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_add_rsvd_page_pno(ptr noundef %rtwdev, ptr noundef %rtwvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rtwvif, i32 -848
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %entry
  %match_set_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42, i32 6, i32 1
  %2 = ptrtoint ptr %match_set_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %match_set_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp221.not = icmp eq i32 %3, 0
  br i1 %cmp221.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %match_sets = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42, i32 6, i32 2
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.13, i32 noundef %1) #12
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %match_sets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %match_sets, align 4
  %arrayidx = getelementptr %struct.cfg80211_match_set, ptr %7, i32 %i.022
  tail call fastcc void @rtw_add_rsvd_page_probe_req(ptr noundef %rtwdev, ptr noundef %rtwvif, ptr noundef %arrayidx)
  %inc = add nuw i32 %i.022, 1
  %8 = ptrtoint ptr %match_set_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %match_set_cnt, align 4
  %cmp2 = icmp ult i32 %inc, %9
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call fastcc void @rtw_add_rsvd_page_probe_req(ptr noundef %rtwdev, ptr noundef %rtwvif, ptr noundef null)
  tail call fastcc void @rtw_add_rsvd_page(ptr noundef %rtwdev, ptr noundef %rtwvif, i32 noundef 9, i1 noundef zeroext false)
  tail call fastcc void @rtw_add_rsvd_page(ptr noundef %rtwdev, ptr noundef %rtwvif, i32 noundef 10, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_add_rsvd_page_probe_req(ptr noundef %rtwdev, ptr noundef %rtwvif, ptr noundef %ssid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 40) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.59) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %build_list.i = getelementptr inbounds %struct.rtw_rsvd_page, ptr %call7.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %build_list.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %build_list.i, ptr %build_list.i, align 4
  %prev.i1.i = getelementptr inbounds %struct.rtw_rsvd_page, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %build_list.i, ptr %prev.i1.i, align 8
  %type1.i = getelementptr inbounds %struct.rtw_rsvd_page, ptr %call7.i.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %type1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %type1.i, align 8
  %add_txdesc.i = getelementptr inbounds %struct.rtw_rsvd_page, ptr %call7.i.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %add_txdesc.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %add_txdesc.i, align 1
  %rtwvif1 = getelementptr inbounds %struct.rtw_rsvd_page, ptr %call7.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %rtwvif1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %rtwvif, ptr %rtwvif1, align 8
  %ssid2 = getelementptr inbounds %struct.rtw_rsvd_page, ptr %call7.i.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %ssid2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ssid, ptr %ssid2, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %11 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i9 = icmp eq i32 %11, 0
  br i1 %tobool.not.i9, label %if.end.if.end.i11_crit_edge, label %land.rhs.i

if.end.if.end.i11_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i11

land.rhs.i:                                       ; preds = %if.end
  %dep_map.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 15, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i11_crit_edge, !prof !211

land.rhs.i.if.end.i11_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i11

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1155, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i11

if.end.i11:                                       ; preds = %do.end.i, %land.rhs.i.if.end.i11_crit_edge, %if.end.if.end.i11_crit_edge
  %rsvd_page_list.i = getelementptr inbounds %struct.rtw_vif, ptr %rtwvif, i32 0, i32 6
  %prev.i.i10 = getelementptr inbounds %struct.rtw_vif, ptr %rtwvif, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %prev.i.i10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i10, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %13, ptr noundef %rsvd_page_list.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i11.cleanup_crit_edge

if.end.i11.cleanup_crit_edge:                     ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %prev.i.i10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i.i, ptr %prev.i.i10, align 4
  %15 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %rsvd_page_list.i, ptr %call7.i.i.i, align 8
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call7.i.i.i, ptr %13, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.end.i11.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_add_rsvd_page_sta(ptr noundef %rtwdev, ptr noundef %rtwvif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rtwvif, i32 -848
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.15, i32 noundef %1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @rtw_add_rsvd_page(ptr noundef %rtwdev, ptr noundef %rtwvif, i32 noundef 2, i1 noundef zeroext true)
  tail call fastcc void @rtw_add_rsvd_page(ptr noundef %rtwdev, ptr noundef %rtwvif, i32 noundef 5, i1 noundef zeroext true)
  tail call fastcc void @rtw_add_rsvd_page(ptr noundef %rtwdev, ptr noundef %rtwvif, i32 noundef 4, i1 noundef zeroext true)
  tail call fastcc void @rtw_add_rsvd_page(ptr noundef %rtwdev, ptr noundef %rtwvif, i32 noundef 6, i1 noundef zeroext true)
  tail call fastcc void @rtw_add_rsvd_page(ptr noundef %rtwdev, ptr noundef %rtwvif, i32 noundef 7, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_fw_write_data_rsvd_page(ptr noundef %rtwdev, i16 noundef zeroext %pg_addr, ptr noundef %buf, i32 noundef %size) local_unnamed_addr #0 align 64 {
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
  %dep_map = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 15, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !211

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1280, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool24.not = icmp eq i32 %size, 0
  br i1 %tobool24.not, label %if.end.cleanup_crit_edge, label %if.end26

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %chip.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %1 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip.i, align 4
  %wlan_cpu.i = getelementptr inbounds %struct.rtw_chip_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %wlan_cpu.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wlan_cpu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i = icmp eq i32 %4, 1
  br i1 %cmp.i, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %5 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %8(ptr noundef %rtwdev, i32 noundef 520) #9
  %or.i = or i32 %call.i.i, 65536
  %9 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write32.i.i, align 4
  tail call void %12(ptr noundef %rtwdev, i32 noundef 520, i32 noundef %or.i) #9
  br label %if.end32

if.else:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %13 = and i16 %pg_addr, 4095
  %14 = or i16 %13, -32768
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %15 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hci.i, align 8
  %write16.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %16, i32 0, i32 15
  %17 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write16.i, align 4
  tail call void %18(ptr noundef %rtwdev, i32 noundef 516, i16 noundef zeroext %14) #9
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then28
  %hci.i97 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %19 = ptrtoint ptr %hci.i97 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hci.i97, align 8
  %read8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %read8.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read8.i, align 4
  %call.i98 = tail call zeroext i8 %22(ptr noundef %rtwdev, i32 noundef 257) #9
  %23 = or i8 %call.i98, 1
  %24 = ptrtoint ptr %hci.i97 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i97, align 8
  %write8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %25, i32 0, i32 14
  %26 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write8.i, align 4
  tail call void %27(ptr noundef %rtwdev, i32 noundef 257, i8 noundef zeroext %23) #9
  %28 = ptrtoint ptr %hci.i97 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i97, align 8
  %read8.i101 = getelementptr inbounds %struct.rtw_hci_ops, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %read8.i101 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read8.i101, align 4
  %call.i102 = tail call zeroext i8 %31(ptr noundef %rtwdev, i32 noundef 1058) #9
  %32 = and i8 %call.i102, -65
  %33 = ptrtoint ptr %hci.i97 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hci.i97, align 8
  %write8.i104 = getelementptr inbounds %struct.rtw_hci_ops, ptr %34, i32 0, i32 14
  %35 = ptrtoint ptr %write8.i104 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write8.i104, align 4
  tail call void %36(ptr noundef %rtwdev, i32 noundef 1058, i8 noundef zeroext %32) #9
  %37 = ptrtoint ptr %hci.i97 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hci.i97, align 8
  %write_data_rsvd_page.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %38, i32 0, i32 9
  %39 = ptrtoint ptr %write_data_rsvd_page.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_data_rsvd_page.i, align 4
  %call.i106 = tail call i32 %40(ptr noundef %rtwdev, ptr noundef %buf, i32 noundef %size) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %tobool43.not = icmp eq i32 %call.i106, 0
  br i1 %tobool43.not, label %if.end48, label %if.end32.restore.sink.split_crit_edge

if.end32.restore.sink.split_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %restore.sink.split

if.end48:                                         ; preds = %if.end32
  %41 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chip.i, align 4
  %wlan_cpu.i108 = getelementptr inbounds %struct.rtw_chip_info, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %wlan_cpu.i108 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %wlan_cpu.i108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp.i109 = icmp eq i32 %44, 1
  %. = select i1 %cmp.i109, i32 520, i32 516
  %.96 = select i1 %cmp.i109, i32 65536, i32 32768
  %call53 = tail call zeroext i1 @check_hw_ready(ptr noundef %rtwdev, i32 noundef %., i32 noundef %.96, i32 noundef 1) #9
  br i1 %call53, label %if.end48.restore_crit_edge, label %if.end48.restore.sink.split_crit_edge

if.end48.restore.sink.split_crit_edge:            ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %restore.sink.split

if.end48.restore_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %restore

restore.sink.split:                               ; preds = %if.end48.restore.sink.split_crit_edge, %if.end32.restore.sink.split_crit_edge
  %.str.21.sink = phi ptr [ @.str.17, %if.end32.restore.sink.split_crit_edge ], [ @.str.21, %if.end48.restore.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call.i106, %if.end32.restore.sink.split_crit_edge ], [ -16, %if.end48.restore.sink.split_crit_edge ]
  %dev58 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %45 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev58, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull %.str.21.sink) #12
  br label %restore

restore:                                          ; preds = %restore.sink.split, %if.end48.restore_crit_edge
  %ret.0 = phi i32 [ 0, %if.end48.restore_crit_edge ], [ %ret.0.ph, %restore.sink.split ]
  %fifo = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 6
  %47 = ptrtoint ptr %fifo to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %fifo, align 8
  %49 = or i16 %48, -32768
  %50 = ptrtoint ptr %hci.i97 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hci.i97, align 8
  %write16.i111 = getelementptr inbounds %struct.rtw_hci_ops, ptr %51, i32 0, i32 15
  %52 = ptrtoint ptr %write16.i111 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write16.i111, align 4
  tail call void %53(ptr noundef %rtwdev, i32 noundef 516, i16 noundef zeroext %49) #9
  %54 = ptrtoint ptr %hci.i97 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hci.i97, align 8
  %write8.i113 = getelementptr inbounds %struct.rtw_hci_ops, ptr %55, i32 0, i32 14
  %56 = ptrtoint ptr %write8.i113 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write8.i113, align 4
  tail call void %57(ptr noundef %rtwdev, i32 noundef 1058, i8 noundef zeroext %call.i102) #9
  %58 = ptrtoint ptr %hci.i97 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hci.i97, align 8
  %write8.i115 = getelementptr inbounds %struct.rtw_hci_ops, ptr %59, i32 0, i32 14
  %60 = ptrtoint ptr %write8.i115 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write8.i115, align 4
  tail call void %61(ptr noundef %rtwdev, i32 noundef 257, i8 noundef zeroext %call.i98) #9
  br label %cleanup

cleanup:                                          ; preds = %restore, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %restore ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @check_hw_ready(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_fw_download_rsvd_page(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  %pkt_info.i.i = alloca %struct.rtw_tx_pkt_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtwdev, align 8
  %chip2.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %2 = ptrtoint ptr %chip2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip2.i, align 4
  %page_size3.i = getelementptr inbounds %struct.rtw_chip_info, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %page_size3.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %page_size3.i, align 1
  %tx_pkt_desc_sz.i = getelementptr inbounds %struct.rtw_chip_info, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %tx_pkt_desc_sz.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_pkt_desc_sz.i, align 4
  %conv.i = zext i8 %5 to i32
  %conv4.i = zext i8 %7 to i32
  %sub.i = sub i8 %5, %7
  %rsvd_page_list.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 19
  %8 = ptrtoint ptr %rsvd_page_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rsvd_page_list.i.i.i, align 8
  %cmp.not24.i.i.i = icmp eq ptr %9, %rsvd_page_list.i.i.i
  br i1 %cmp.not24.i.i.i, label %entry.__rtw_build_rsvd_page_reset.exit.i.i_crit_edge, label %entry.for.body.i.i.i_crit_edge

entry.for.body.i.i.i_crit_edge:                   ; preds = %entry
  br label %for.body.i.i.i

entry.__rtw_build_rsvd_page_reset.exit.i.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__rtw_build_rsvd_page_reset.exit.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %entry.for.body.i.i.i_crit_edge
  %.pn.in25.i.i.i = phi ptr [ %.pn28.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %9, %entry.for.body.i.i.i_crit_edge ]
  %rsvd_pkt.027.i.i.i = getelementptr i8, ptr %.pn.in25.i.i.i, i32 -12
  %10 = ptrtoint ptr %.pn.in25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn28.i.i.i = load ptr, ptr %.pn.in25.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in25.i.i.i) #9
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %for.body.i.i.i.list_del_init.exit.i.i.i_crit_edge

for.body.i.i.i.list_del_init.exit.i.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %13 = ptrtoint ptr %.pn.in25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %.pn.in25.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_init.exit.i.i.i

list_del_init.exit.i.i.i:                         ; preds = %if.end.i.i.i.i.i, %for.body.i.i.i.list_del_init.exit.i.i.i_crit_edge
  %17 = ptrtoint ptr %.pn.in25.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %.pn.in25.i.i.i, ptr %.pn.in25.i.i.i, align 4
  %prev.i3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %.pn.in25.i.i.i, ptr %prev.i3.i.i.i.i, align 4
  %type.i.i.i = getelementptr i8, ptr %.pn.in25.i.i.i, i32 12
  %19 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp9.i.i.i = icmp eq i32 %20, 1
  br i1 %cmp9.i.i.i, label %if.then.i.i.i, label %list_del_init.exit.i.i.i.for.inc.i.i.i_crit_edge

list_del_init.exit.i.i.i.for.inc.i.i.i_crit_edge: ; preds = %list_del_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %list_del_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef %rsvd_pkt.027.i.i.i) #9
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then.i.i.i, %list_del_init.exit.i.i.i.for.inc.i.i.i_crit_edge
  %cmp.not.i.i.i = icmp eq ptr %.pn28.i.i.i, %rsvd_page_list.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.__rtw_build_rsvd_page_reset.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

for.inc.i.i.i.__rtw_build_rsvd_page_reset.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__rtw_build_rsvd_page_reset.exit.i.i

__rtw_build_rsvd_page_reset.exit.i.i:             ; preds = %for.inc.i.i.i.__rtw_build_rsvd_page_reset.exit.i.i_crit_edge, %entry.__rtw_build_rsvd_page_reset.exit.i.i_crit_edge
  %21 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rtwdev, align 8
  tail call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %22, i32 noundef 0, ptr noundef nonnull @rtw_build_rsvd_page_iter, ptr noundef %rtwdev) #9
  %23 = ptrtoint ptr %rsvd_page_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %rsvd_page_list.i.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %24, %rsvd_page_list.i.i.i
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 -12
  %tobool.not47.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool.not.i.i = or i1 %cmp.not.i.i, %tobool.not47.i.i
  br i1 %tobool.not.i.i, label %do.end10.i.i, label %if.end23.i.i

do.end10.i.i:                                     ; preds = %__rtw_build_rsvd_page_reset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1393, i32 noundef 9, ptr noundef nonnull @.str.72) #9
  br label %do.end.i

if.end23.i.i:                                     ; preds = %__rtw_build_rsvd_page_reset.exit.i.i
  %type.i.i = getelementptr i8, ptr %24, i32 12
  %25 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp24.not.i.i = icmp eq i32 %26, 0
  br i1 %cmp24.not.i.i, label %if.end23.i.i.if.end.i_crit_edge, label %if.then25.i.i

if.end23.i.i.if.end.i_crit_edge:                  ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then25.i.i:                                    ; preds = %if.end23.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 40) #13
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.end30.i.i, label %if.end31.i.i

do.end30.i.i:                                     ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %28 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.73) #12
  br label %do.end.i

if.end31.i.i:                                     ; preds = %if.then25.i.i
  %30 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %call7.i.i.i.i.i, ptr %call7.i.i.i.i.i, align 8
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i.i.i.i, ptr %prev.i.i.i.i, align 4
  %build_list.i.i.i = getelementptr inbounds %struct.rtw_rsvd_page, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %build_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %build_list.i.i.i, ptr %build_list.i.i.i, align 4
  %prev.i1.i.i.i = getelementptr inbounds %struct.rtw_rsvd_page, ptr %call7.i.i.i.i.i, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %prev.i1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %build_list.i.i.i, ptr %prev.i1.i.i.i, align 8
  %type1.i.i.i = getelementptr inbounds %struct.rtw_rsvd_page, ptr %call7.i.i.i.i.i, i32 0, i32 4
  %34 = ptrtoint ptr %type1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %type1.i.i.i, align 8
  %add_txdesc.i.i.i = getelementptr inbounds %struct.rtw_rsvd_page, ptr %call7.i.i.i.i.i, i32 0, i32 6
  %35 = ptrtoint ptr %add_txdesc.i.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %add_txdesc.i.i.i, align 1
  %36 = ptrtoint ptr %rsvd_page_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rsvd_page_list.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %build_list.i.i.i, ptr noundef %rsvd_page_list.i.i.i, ptr noundef %37) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end31.i.i.if.end.i_crit_edge

if.end31.i.i.if.end.i_crit_edge:                  ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i.i.i.i:                                   ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %build_list.i.i.i, ptr %prev1.i.i.i.i, align 4
  %39 = ptrtoint ptr %build_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %37, ptr %build_list.i.i.i, align 4
  %40 = ptrtoint ptr %prev.i1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %rsvd_page_list.i.i.i, ptr %prev.i1.i.i.i, align 8
  %41 = ptrtoint ptr %rsvd_page_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %build_list.i.i.i, ptr %rsvd_page_list.i.i.i, align 4
  br label %if.end.i

do.end.i:                                         ; preds = %do.end30.i.i, %do.end10.i.i
  %retval.1.i.i = phi i32 [ -22, %do.end10.i.i ], [ -12, %do.end30.i.i ]
  %dev.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.61, i32 noundef %retval.1.i.i) #12
  br label %do.end

if.end.i:                                         ; preds = %if.end.i.i.i.i, %if.end31.i.i.if.end.i_crit_edge, %if.end23.i.i.if.end.i_crit_edge
  %44 = ptrtoint ptr %rsvd_page_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn234.i = load ptr, ptr %rsvd_page_list.i.i.i, align 4
  %cmp.not235.i = icmp eq ptr %.pn234.i, %rsvd_page_list.i.i.i
  br i1 %cmp.not235.i, label %if.end.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %add.i208.i = add nsw i32 %conv.i, -1
  %add.i.i = add nsw i32 %add.i208.i, %conv4.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn237.i = phi ptr [ %.pn234.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %total_page.0236.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %total_page.1.i, %for.inc.i.for.body.i_crit_edge ]
  %rsvd_pkt.0.i = getelementptr i8, ptr %.pn237.i, i32 -12
  %call8.i = call fastcc ptr @rtw_get_rsvd_page_skb(ptr noundef %1, ptr noundef %rsvd_pkt.0.i) #9
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %do.end13.i, label %if.end15.i

do.end13.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev14.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %45 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev14.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.64) #12
  br label %release_skb.i

if.end15.i:                                       ; preds = %for.body.i
  %add_txdesc.i = getelementptr i8, ptr %.pn237.i, i32 17
  %47 = ptrtoint ptr %add_txdesc.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %add_txdesc.i, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool16.not.i = icmp eq i8 %48, 0
  br i1 %tobool16.not.i, label %if.end15.i.if.end18.i_crit_edge, label %if.then17.i

if.end15.i.if.end18.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  %type.i = getelementptr i8, ptr %.pn237.i, i32 12
  %49 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %type.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %pkt_info.i.i) #9
  %51 = call ptr @memset(ptr %pkt_info.i.i, i32 0, i32 36)
  %52 = ptrtoint ptr %chip2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chip2.i, align 4
  call void @rtw_tx_rsvd_page_pkt_info_update(ptr noundef %rtwdev, ptr noundef nonnull %pkt_info.i.i, ptr noundef nonnull %call8.i, i32 noundef %50) #9
  %tx_pkt_desc_sz.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %tx_pkt_desc_sz.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %tx_pkt_desc_sz.i.i, align 4
  %conv.i.i = zext i8 %55 to i32
  %call.i.i = call ptr @skb_push(ptr noundef nonnull %call8.i, i32 noundef %conv.i.i) #9
  %56 = ptrtoint ptr %tx_pkt_desc_sz.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %tx_pkt_desc_sz.i.i, align 4
  %conv3.i.i = zext i8 %57 to i32
  %58 = call ptr @memset(ptr %call.i.i, i32 0, i32 %conv3.i.i)
  call void @rtw_tx_fill_tx_desc(ptr noundef nonnull %pkt_info.i.i, ptr noundef nonnull %call8.i) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %pkt_info.i.i) #9
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %if.end15.i.if.end18.i_crit_edge
  %skb.i = getelementptr i8, ptr %.pn237.i, i32 8
  %59 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call8.i, ptr %skb.i, align 4
  %page19.i = getelementptr i8, ptr %.pn237.i, i32 16
  %60 = ptrtoint ptr %page19.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %total_page.0236.i, ptr %page19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %total_page.0236.i)
  %cmp21.i = icmp eq i8 %total_page.0236.i, 0
  br i1 %cmp21.i, label %if.then23.i, label %if.else.i

if.then23.i:                                      ; preds = %if.end18.i
  %type24.i = getelementptr i8, ptr %.pn237.i, i32 12
  %61 = ptrtoint ptr %type24.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %type24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %switch.i = icmp ult i32 %62, 2
  br i1 %switch.i, label %if.end35.i, label %do.end33.i

do.end33.i:                                       ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev34.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %63 = ptrtoint ptr %dev34.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev34.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.67) #12
  br label %release_skb.i

if.end35.i:                                       ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #11
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call8.i, i32 0, i32 6
  %65 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len.i, align 4
  %sub.i.i = add i32 %add.i.i, %66
  %div.i.i = udiv i32 %sub.i.i, %conv.i
  %conv2.i.i = trunc i32 %div.i.i to i8
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  %len42.i = getelementptr inbounds %struct.sk_buff, ptr %call8.i, i32 0, i32 6
  %67 = ptrtoint ptr %len42.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %len42.i, align 4
  %sub.i209.i = add i32 %68, %add.i208.i
  %div.i210.i = udiv i32 %sub.i209.i, %conv.i
  %conv2.i211.i = trunc i32 %div.i210.i to i8
  %add46.i = add i8 %total_page.0236.i, %conv2.i211.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.end35.i
  %total_page.1.i = phi i8 [ %conv2.i.i, %if.end35.i ], [ %add46.i, %if.else.i ]
  %69 = ptrtoint ptr %.pn237.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pn.i = load ptr, ptr %.pn237.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %rsvd_page_list.i.i.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %total_page.0.lcssa.i = phi i8 [ 0, %if.end.i.for.end.i_crit_edge ], [ %total_page.1.i, %for.inc.i.for.end.i_crit_edge ]
  %conv54.i = zext i8 %total_page.0.lcssa.i to i32
  %rsvd_drv_pg_num.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 6, i32 2
  %70 = ptrtoint ptr %rsvd_drv_pg_num.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %rsvd_drv_pg_num.i, align 4
  %72 = zext i8 %total_page.0.lcssa.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %71, i16 %72)
  %cmp56.i = icmp ult i16 %71, %72
  br i1 %cmp56.i, label %do.end61.i, label %if.end64.i

do.end61.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev62.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %73 = ptrtoint ptr %dev62.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev62.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.70, i32 noundef %conv54.i) #12
  br label %release_skb.i

if.end64.i:                                       ; preds = %for.end.i
  %sub66.i = add nsw i32 %conv54.i, -1
  %mul.i = mul nsw i32 %sub66.i, %conv.i
  %conv68.i = zext i8 %sub.i to i32
  %add69.i = add nsw i32 %mul.i, %conv68.i
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add69.i, i32 noundef 3520) #14
  %tobool71.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool71.not.i, label %if.end64.i.release_skb.i_crit_edge, label %for.cond79.preheader.i

if.end64.i.release_skb.i_crit_edge:               ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_skb.i

for.cond79.preheader.i:                           ; preds = %if.end64.i
  %75 = ptrtoint ptr %rsvd_page_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pn205238.i = load ptr, ptr %rsvd_page_list.i.i.i, align 4
  %cmp82.not239.i = icmp eq ptr %.pn205238.i, %rsvd_page_list.i.i.i
  br i1 %cmp82.not239.i, label %for.cond79.preheader.i.if.end_crit_edge, label %for.body85.lr.ph.i

for.cond79.preheader.i.if.end_crit_edge:          ; preds = %for.cond79.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body85.lr.ph.i:                               ; preds = %for.cond79.preheader.i
  %add.ptr.i216.i = getelementptr i8, ptr %call9.i.i.i, i32 %conv68.i
  %add.i225.i = add nsw i32 %conv.i, -1
  br label %for.body85.i

for.body85.i:                                     ; preds = %if.end102.i.for.body85.i_crit_edge, %for.body85.lr.ph.i
  %.pn205241.i = phi ptr [ %.pn205238.i, %for.body85.lr.ph.i ], [ %.pn205.i, %if.end102.i.for.body85.i_crit_edge ]
  %page.0240.i = phi i32 [ 0, %for.body85.lr.ph.i ], [ %page.1.i, %if.end102.i.for.body85.i_crit_edge ]
  %skb1.i.i = getelementptr i8, ptr %.pn205241.i, i32 8
  %76 = ptrtoint ptr %skb1.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %skb1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page.0240.i)
  %cmp.not.i214.i = icmp eq i32 %page.0240.i, 0
  %sub.i218.i = add i32 %page.0240.i, -1
  %mul.i.i = mul i32 %sub.i218.i, %conv.i
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr.i216.i, i32 %mul.i.i
  %buf.sink.i.i = select i1 %cmp.not.i214.i, ptr %call9.i.i.i, ptr %add.ptr3.i.i
  %data4.i.i = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 19
  %78 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data4.i.i, align 4
  %len5.i.i = getelementptr inbounds %struct.sk_buff, ptr %77, i32 0, i32 6
  %80 = ptrtoint ptr %len5.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len5.i.i, align 4
  %82 = call ptr @memcpy(ptr %buf.sink.i.i, ptr %79, i32 %81)
  %83 = ptrtoint ptr %skb1.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %skb1.i.i, align 4
  %len90.i = getelementptr inbounds %struct.sk_buff, ptr %84, i32 0, i32 6
  %85 = ptrtoint ptr %len90.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %len90.i, align 4
  %add.i220.i = add i32 %86, %add.i225.i
  br i1 %cmp.not.i214.i, label %if.then88.i, label %if.else96.i

if.then88.i:                                      ; preds = %for.body85.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i221.i = add i32 %add.i220.i, %conv4.i
  %div.i222.i = udiv i32 %sub.i221.i, %conv.i
  %conv94.i = and i32 %div.i222.i, 255
  br label %if.end102.i

if.else96.i:                                      ; preds = %for.body85.i
  call void @__sanitizer_cov_trace_pc() #11
  %div.i227.i = udiv i32 %add.i220.i, %conv.i
  %conv100.i = and i32 %div.i227.i, 255
  %add101.i = add i32 %conv100.i, %page.0240.i
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.else96.i, %if.then88.i
  %page.1.i = phi i32 [ %conv94.i, %if.then88.i ], [ %add101.i, %if.else96.i ]
  call void @kfree_skb_reason(ptr noundef %84, i32 noundef 0) #9
  %87 = ptrtoint ptr %skb1.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %skb1.i.i, align 4
  %88 = ptrtoint ptr %.pn205241.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pn205.i = load ptr, ptr %.pn205241.i, align 4
  %cmp82.not.i = icmp eq ptr %.pn205.i, %rsvd_page_list.i.i.i
  br i1 %cmp82.not.i, label %if.end102.i.if.end_crit_edge, label %if.end102.i.for.body85.i_crit_edge

if.end102.i.for.body85.i_crit_edge:               ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body85.i

if.end102.i.if.end_crit_edge:                     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

release_skb.i:                                    ; preds = %if.end64.i.release_skb.i_crit_edge, %do.end61.i, %do.end33.i, %do.end13.i
  %89 = ptrtoint ptr %rsvd_page_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %.pn204242.i = load ptr, ptr %rsvd_page_list.i.i.i, align 4
  %cmp120.not243.i = icmp eq ptr %.pn204242.i, %rsvd_page_list.i.i.i
  br i1 %cmp120.not243.i, label %release_skb.i.do.end_crit_edge, label %release_skb.i.for.body123.i_crit_edge

release_skb.i.for.body123.i_crit_edge:            ; preds = %release_skb.i
  br label %for.body123.i

release_skb.i.do.end_crit_edge:                   ; preds = %release_skb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body123.i:                                    ; preds = %for.body123.i.for.body123.i_crit_edge, %release_skb.i.for.body123.i_crit_edge
  %.pn204244.i = phi ptr [ %.pn204.i, %for.body123.i.for.body123.i_crit_edge ], [ %.pn204242.i, %release_skb.i.for.body123.i_crit_edge ]
  %skb124.i = getelementptr i8, ptr %.pn204244.i, i32 8
  %90 = ptrtoint ptr %skb124.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %skb124.i, align 4
  call void @kfree_skb_reason(ptr noundef %91, i32 noundef 0) #9
  %92 = ptrtoint ptr %skb124.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %skb124.i, align 4
  %93 = ptrtoint ptr %.pn204244.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pn204.i = load ptr, ptr %.pn204244.i, align 4
  %cmp120.not.i = icmp eq ptr %.pn204.i, %rsvd_page_list.i.i.i
  br i1 %cmp120.not.i, label %for.body123.i.do.end_crit_edge, label %for.body123.i.for.body123.i_crit_edge

for.body123.i.for.body123.i_crit_edge:            ; preds = %for.body123.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body123.i

for.body123.i.do.end_crit_edge:                   ; preds = %for.body123.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %for.body123.i.do.end_crit_edge, %release_skb.i.do.end_crit_edge, %do.end.i
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %94 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.23) #12
  br label %cleanup

if.end:                                           ; preds = %if.end102.i.if.end_crit_edge, %for.cond79.preheader.i.if.end_crit_edge
  %96 = ptrtoint ptr %chip2.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %chip2.i, align 4
  %page_size.i = getelementptr inbounds %struct.rtw_chip_info, ptr %97, i32 0, i32 15
  %98 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %page_size.i, align 1
  %conv.i28 = zext i8 %99 to i32
  %div.i = udiv i32 %add69.i, %conv.i28
  %sub.i29 = add nsw i32 %conv.i28, -1
  %and.i = and i32 %sub.i29, %add69.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %cond.i = zext i1 %tobool.not.i to i32
  %add.i = add i32 %div.i, %cond.i
  %100 = ptrtoint ptr %rsvd_drv_pg_num.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %rsvd_drv_pg_num.i, align 4
  %conv1.i = zext i16 %101 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv1.i)
  %cmp.i = icmp ugt i32 %add.i, %conv1.i
  br i1 %cmp.i, label %if.end.do.end6_crit_edge, label %rtw_download_drv_rsvd_page.exit

if.end.do.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

rtw_download_drv_rsvd_page.exit:                  ; preds = %if.end
  %rsvd_drv_addr.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 6, i32 5
  %102 = ptrtoint ptr %rsvd_drv_addr.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %rsvd_drv_addr.i, align 2
  %call.i = call i32 @rtw_fw_write_data_rsvd_page(ptr noundef %rtwdev, i16 noundef zeroext %103, ptr noundef nonnull %call9.i.i.i, i32 noundef %add69.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end8, label %rtw_download_drv_rsvd_page.exit.do.end6_crit_edge

rtw_download_drv_rsvd_page.exit.do.end6_crit_edge: ; preds = %rtw_download_drv_rsvd_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end6:                                          ; preds = %rtw_download_drv_rsvd_page.exit.do.end6_crit_edge, %if.end.do.end6_crit_edge
  %retval.0.i3255 = phi i32 [ %call.i, %rtw_download_drv_rsvd_page.exit.do.end6_crit_edge ], [ -12, %if.end.do.end6_crit_edge ]
  %dev7 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %104 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.26) #12
  br label %free

if.end8:                                          ; preds = %rtw_download_drv_rsvd_page.exit
  %106 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rtwdev, align 8
  %108 = ptrtoint ptr %rsvd_page_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile ptr, ptr %rsvd_page_list.i.i.i, align 4
  %cmp.not.i33 = icmp eq ptr %109, %rsvd_page_list.i.i.i
  %add.ptr.i = getelementptr i8, ptr %109, i32 -12
  %tobool.not56.i = icmp eq ptr %add.ptr.i, null
  %tobool.not.i34 = or i1 %cmp.not.i33, %tobool.not56.i
  br i1 %tobool.not.i34, label %do.end6.i, label %if.end.i38

do.end6.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i35 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %110 = ptrtoint ptr %dev.i35 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev.i35, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.77) #12
  br label %do.end14

if.end.i38:                                       ; preds = %if.end8
  %type.i36 = getelementptr i8, ptr %109, i32 12
  %112 = ptrtoint ptr %type.i36 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %type.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %113)
  %switch.i37 = icmp ult i32 %113, 2
  br i1 %switch.i37, label %if.end16.i, label %do.end13.i40

do.end13.i40:                                     ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #11
  %dev14.i39 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %114 = ptrtoint ptr %dev14.i39 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev14.i39, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.80, i32 noundef %113) #12
  br label %do.end14

if.end16.i:                                       ; preds = %if.end.i38
  %call.i41 = call fastcc ptr @rtw_get_rsvd_page_skb(ptr noundef %107, ptr noundef nonnull %add.ptr.i) #9
  %tobool17.not.i = icmp eq ptr %call.i41, null
  br i1 %tobool17.not.i, label %do.end21.i, label %if.end23.i

do.end21.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev22.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %116 = ptrtoint ptr %dev22.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev22.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.83) #12
  br label %do.end14

if.end23.i:                                       ; preds = %if.end16.i
  %len.i42 = getelementptr inbounds %struct.sk_buff, ptr %call.i41, i32 0, i32 6
  %118 = ptrtoint ptr %len.i42 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %len.i42, align 4
  %120 = ptrtoint ptr %chip2.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %chip2.i, align 4
  %page_size.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %121, i32 0, i32 15
  %122 = ptrtoint ptr %page_size.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %page_size.i.i, align 1
  %conv.i.i43 = zext i8 %123 to i32
  %div.i.i44 = udiv i32 %119, %conv.i.i43
  %sub.i.i45 = add nsw i32 %conv.i.i43, -1
  %and.i.i = and i32 %sub.i.i45, %119
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i46 = icmp ne i32 %and.i.i, 0
  %cond.i.i = zext i1 %tobool.not.i.i46 to i32
  %add.i.i47 = add i32 %div.i.i44, %cond.i.i
  %124 = ptrtoint ptr %rsvd_drv_pg_num.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %rsvd_drv_pg_num.i, align 4
  %conv1.i.i = zext i16 %125 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i47, i32 %conv1.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i47, %conv1.i.i
  br i1 %cmp.i.i, label %if.end23.i.rtw_download_beacon.exit_crit_edge, label %rtw_download_drv_rsvd_page.exit.i

if.end23.i.rtw_download_beacon.exit_crit_edge:    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtw_download_beacon.exit

rtw_download_drv_rsvd_page.exit.i:                ; preds = %if.end23.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i41, i32 0, i32 19
  %126 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %data.i, align 4
  %128 = ptrtoint ptr %rsvd_drv_addr.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %rsvd_drv_addr.i, align 2
  %call.i.i48 = call i32 @rtw_fw_write_data_rsvd_page(ptr noundef %rtwdev, i16 noundef zeroext %129, ptr noundef %127, i32 noundef %119) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i48)
  %tobool25.not.i = icmp eq i32 %call.i.i48, 0
  br i1 %tobool25.not.i, label %rtw_download_beacon.exit.thread59, label %rtw_download_drv_rsvd_page.exit.i.rtw_download_beacon.exit_crit_edge

rtw_download_drv_rsvd_page.exit.i.rtw_download_beacon.exit_crit_edge: ; preds = %rtw_download_drv_rsvd_page.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtw_download_beacon.exit

rtw_download_beacon.exit.thread59:                ; preds = %rtw_download_drv_rsvd_page.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @consume_skb(ptr noundef nonnull %call.i41) #9
  br label %free

rtw_download_beacon.exit:                         ; preds = %rtw_download_drv_rsvd_page.exit.i.rtw_download_beacon.exit_crit_edge, %if.end23.i.rtw_download_beacon.exit_crit_edge
  %retval.0.i54.i = phi i32 [ %call.i.i48, %rtw_download_drv_rsvd_page.exit.i.rtw_download_beacon.exit_crit_edge ], [ -12, %if.end23.i.rtw_download_beacon.exit_crit_edge ]
  %dev30.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %130 = ptrtoint ptr %dev30.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev30.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.26) #12
  call void @consume_skb(ptr noundef nonnull %call.i41) #9
  br label %do.end14

do.end14:                                         ; preds = %rtw_download_beacon.exit, %do.end21.i, %do.end13.i40, %do.end6.i
  %retval.0.i4958 = phi i32 [ %retval.0.i54.i, %rtw_download_beacon.exit ], [ -2, %do.end6.i ], [ -12, %do.end21.i ], [ -22, %do.end13.i40 ]
  %dev15 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %132 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.29) #12
  br label %free

free:                                             ; preds = %do.end14, %rtw_download_beacon.exit.thread59, %do.end6
  %ret.0 = phi i32 [ %retval.0.i3255, %do.end6 ], [ %retval.0.i4958, %do.end14 ], [ 0, %rtw_download_beacon.exit.thread59 ]
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %free, %do.end
  %retval.0 = phi i32 [ %ret.0, %free ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_fw_dump_fifo(ptr noundef %rtwdev, i8 noundef zeroext %fifo_sel, i32 noundef %addr, i32 noundef %size, ptr noundef writeonly %buffer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %fw_fifo_addr = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %fw_fifo_addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fw_fifo_addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.31) #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  %tobool1.not = icmp eq ptr %buffer, null
  %or.cond = or i1 %cmp, %tobool1.not
  br i1 %or.cond, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end3:                                          ; preds = %if.end
  %and = and i32 %size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.32) #9
  br label %return

if.end6:                                          ; preds = %if.end3
  %conv = zext i8 %fifo_sel to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %fifo_sel)
  %switch.i = icmp ult i8 %fifo_sel, 2
  br i1 %switch.i, label %sw.bb.i, label %if.end8

sw.bb.i:                                          ; preds = %if.end6
  %add.i = add i32 %size, %addr
  %arrayidx.i = getelementptr %struct.rtw_chip_info, ptr %1, i32 0, i32 24, i32 %conv
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp.i = icmp ugt i32 %add.i, %conv.i
  br i1 %cmp.i, label %if.then7, label %sw.bb.i.if.end4.i_crit_edge

sw.bb.i.if.end4.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.then7:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.33) #9
  br label %return

if.end8:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %fifo_sel)
  %cmp.i21 = icmp ugt i8 %fifo_sel, 5
  br i1 %cmp.i21, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 16, ptr noundef nonnull @.str.87) #9
  br label %return

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %fifo_sel)
  %cmp2.i = icmp eq i8 %fifo_sel, 2
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %fifo.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 6
  %6 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %fifo.i, align 8
  %conv.i22 = zext i16 %7 to i32
  %shl.i = shl nuw nsw i32 %conv.i22, 7
  %add.i23 = add i32 %shl.i, %addr
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge, %sw.bb.i.if.end4.i_crit_edge
  %offset.addr.0.i = phi i32 [ %add.i23, %if.then3.i ], [ %addr, %if.end.i.if.end4.i_crit_edge ], [ %addr, %sw.bb.i.if.end4.i_crit_edge ]
  %and.i = and i32 %offset.addr.0.i, 4095
  %shr.i = lshr i32 %offset.addr.0.i, 12
  %arrayidx.i24 = getelementptr %struct.rtw_chip_info, ptr %1, i32 0, i32 24, i32 %conv
  %8 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i24, align 2
  %10 = trunc i32 %shr.i to i16
  %conv7.i = add i16 %9, %10
  %hci.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %11 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hci.i.i.i, align 8
  %read16.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %14(ptr noundef %rtwdev, i32 noundef 320) #9
  %15 = and i16 %call.i.i.i, -4096
  %16 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %19(ptr noundef %rtwdev, i32 noundef 1544) #9
  %or.i.i.i = or i32 %call.i.i.i.i, 524288
  %20 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %write32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write32.i.i.i.i, align 4
  tail call void %23(ptr noundef %rtwdev, i32 noundef 1544, i32 noundef %or.i.i.i) #9
  %phi.bo.i.i = or i32 %and.i, 32768
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %for.end.i.i, %if.end4.i
  %size.addr.0.i.i = phi i32 [ %size, %if.end4.i ], [ %sub.i.i, %for.end.i.i ]
  %residue.addr.0.i.i = phi i32 [ %phi.bo.i.i, %if.end4.i ], [ 32768, %for.end.i.i ]
  %start_pg.addr.0.i.i = phi i16 [ %conv7.i, %if.end4.i ], [ %inc10.i.i, %for.end.i.i ]
  %idx.0.i.i = phi i16 [ 0, %if.end4.i ], [ %inc.i.i, %for.end.i.i ]
  %or1.i.i = or i16 %start_pg.addr.0.i.i, %15
  %24 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i.i.i, align 8
  %write16.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %25, i32 0, i32 15
  %26 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %27(ptr noundef %rtwdev, i32 noundef 320, i16 noundef zeroext %or1.i.i) #9
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.body.i.i
  %idx.117.i.i = phi i16 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %idx.0.i.i, %do.body.i.i ]
  %i.016.i.i = phi i32 [ %add9.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %residue.addr.0.i.i, %do.body.i.i ]
  %size.addr.115.i.i = phi i32 [ %sub.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %size.addr.0.i.i, %do.body.i.i ]
  %28 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %29, i32 0, i32 13
  %30 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read32.i.i.i, align 4
  %call.i4.i.i = tail call i32 %31(ptr noundef %rtwdev, i32 noundef %i.016.i.i) #9
  %idxprom.i.i = zext i16 %idx.117.i.i to i32
  %arrayidx.i.i = getelementptr i32, ptr %buffer, i32 %idxprom.i.i
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call.i4.i.i, ptr %arrayidx.i.i, align 4
  %sub.i.i = add i32 %size.addr.115.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp7.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %cmp7.i.i, label %rtw_fw_read_fifo_page.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add i16 %idx.117.i.i, 1
  %add9.i.i = add nuw nsw i32 %i.016.i.i, 4
  %cmp.i.i = icmp ult i32 %i.016.i.i, 36860
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc10.i.i = add i16 %start_pg.addr.0.i.i, 1
  br label %do.body.i.i

rtw_fw_read_fifo_page.exit.i:                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hci.i.i.i, align 8
  %write16.i6.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %34, i32 0, i32 15
  %35 = ptrtoint ptr %write16.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write16.i6.i.i, align 4
  tail call void %36(ptr noundef %rtwdev, i32 noundef 320, i16 noundef zeroext %15) #9
  %37 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hci.i.i.i, align 8
  %read32.i.i8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %38, i32 0, i32 13
  %39 = ptrtoint ptr %read32.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read32.i.i8.i.i, align 4
  %call.i.i9.i.i = tail call i32 %40(ptr noundef %rtwdev, i32 noundef 1544) #9
  %and.i.i.i = and i32 %call.i.i9.i.i, -524289
  %41 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hci.i.i.i, align 8
  %write32.i.i10.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %42, i32 0, i32 16
  %43 = ptrtoint ptr %write32.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write32.i.i10.i.i, align 4
  tail call void %44(ptr noundef %rtwdev, i32 noundef 1544, i32 noundef %and.i.i.i) #9
  br label %return

return:                                           ; preds = %rtw_fw_read_fifo_page.exit.i, %if.then.i, %if.then7, %if.then5, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then5 ], [ -22, %if.then7 ], [ -524, %if.then ], [ -22, %if.end.return_crit_edge ], [ 0, %if.then.i ], [ 0, %rtw_fw_read_fifo_page.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_update_pkt_probe_req(ptr noundef %rtwdev, ptr noundef readonly %ssid) local_unnamed_addr #0 align 64 {
entry:
  %h2c_pkt.i = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rsvd_page_list.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 19
  %0 = ptrtoint ptr %rsvd_page_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn24.i = load ptr, ptr %rsvd_page_list.i, align 4
  %cmp.not25.i = icmp eq ptr %.pn24.i, %rsvd_page_list.i
  br i1 %cmp.not25.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %entry
  %tobool.not.i = icmp eq ptr %ssid, null
  %ssid_len3.i.i = getelementptr inbounds %struct.cfg80211_ssid, ptr %ssid, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn27.i = phi ptr [ %.pn24.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %location.026.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %location.1.i, %for.inc.i.for.body.i_crit_edge ]
  %type.i = getelementptr i8, ptr %.pn27.i, i32 12
  %1 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %cmp2.not.i = icmp eq i32 %2, 8
  br i1 %cmp2.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %ssid3.i = getelementptr i8, ptr %.pn27.i, i32 20
  %3 = ptrtoint ptr %ssid3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ssid3.i, align 4
  %tobool4.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %if.end.i
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.then6.i_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i.if.then6.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  br i1 %tobool4.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i
  %ssid_len.i.i = getelementptr inbounds %struct.cfg80211_ssid, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ssid_len.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ssid_len.i.i, align 1
  %7 = ptrtoint ptr %ssid_len3.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ssid_len3.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %8)
  %cmp.not.i.i = icmp eq i8 %6, %8
  br i1 %cmp.not.i.i, label %rtw_ssid_equal.exit.i, label %lor.lhs.false2.i.i.for.inc.i_crit_edge

lor.lhs.false2.i.i.for.inc.i_crit_edge:           ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

rtw_ssid_equal.exit.i:                            ; preds = %lor.lhs.false2.i.i
  %conv.i.i = zext i8 %6 to i32
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %4, ptr nonnull %ssid, i32 %conv.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool10.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool10.not.i.i, label %rtw_ssid_equal.exit.i.if.then6.i_crit_edge, label %rtw_ssid_equal.exit.i.for.inc.i_crit_edge

rtw_ssid_equal.exit.i.for.inc.i_crit_edge:        ; preds = %rtw_ssid_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

rtw_ssid_equal.exit.i.if.then6.i_crit_edge:       ; preds = %rtw_ssid_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

if.then6.i:                                       ; preds = %rtw_ssid_equal.exit.i.if.then6.i_crit_edge, %land.lhs.true.i.if.then6.i_crit_edge
  %page.i = getelementptr i8, ptr %.pn27.i, i32 16
  %9 = ptrtoint ptr %page.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %page.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %rtw_ssid_equal.exit.i.for.inc.i_crit_edge, %lor.lhs.false2.i.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %location.1.i = phi i8 [ %location.026.i, %for.body.i.for.inc.i_crit_edge ], [ %10, %if.then6.i ], [ %location.026.i, %rtw_ssid_equal.exit.i.for.inc.i_crit_edge ], [ %location.026.i, %lor.lhs.false2.i.i.for.inc.i_crit_edge ], [ %location.026.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %location.026.i, %land.lhs.true.i.for.inc.i_crit_edge ]
  %11 = ptrtoint ptr %.pn27.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn27.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %rsvd_page_list.i
  br i1 %cmp.not.i, label %rtw_get_rsvd_page_probe_req_location.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

rtw_get_rsvd_page_probe_req_location.exit:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %location.1.i)
  %tobool.not = icmp eq i8 %location.1.i, 0
  br i1 %tobool.not, label %rtw_get_rsvd_page_probe_req_location.exit.do.end_crit_edge, label %rtw_get_rsvd_page_probe_req_location.exit.for.body.i26_crit_edge

rtw_get_rsvd_page_probe_req_location.exit.for.body.i26_crit_edge: ; preds = %rtw_get_rsvd_page_probe_req_location.exit
  br label %for.body.i26

rtw_get_rsvd_page_probe_req_location.exit.do.end_crit_edge: ; preds = %rtw_get_rsvd_page_probe_req_location.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %rtw_get_rsvd_page_probe_req_location.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.34) #12
  br label %cleanup

for.body.i26:                                     ; preds = %for.inc.i42.for.body.i26_crit_edge, %rtw_get_rsvd_page_probe_req_location.exit.for.body.i26_crit_edge
  %.pn27.i23 = phi ptr [ %.pn.i40, %for.inc.i42.for.body.i26_crit_edge ], [ %.pn24.i, %rtw_get_rsvd_page_probe_req_location.exit.for.body.i26_crit_edge ]
  %size.026.i = phi i16 [ %size.1.i, %for.inc.i42.for.body.i26_crit_edge ], [ 0, %rtw_get_rsvd_page_probe_req_location.exit.for.body.i26_crit_edge ]
  %type.i24 = getelementptr i8, ptr %.pn27.i23, i32 12
  %14 = ptrtoint ptr %type.i24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %15)
  %cmp2.not.i25 = icmp eq i32 %15, 8
  br i1 %cmp2.not.i25, label %if.end.i29, label %for.body.i26.for.inc.i42_crit_edge

for.body.i26.for.inc.i42_crit_edge:               ; preds = %for.body.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i42

if.end.i29:                                       ; preds = %for.body.i26
  %ssid3.i27 = getelementptr i8, ptr %.pn27.i23, i32 20
  %16 = ptrtoint ptr %ssid3.i27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ssid3.i27, align 4
  %tobool4.not.i28 = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %land.lhs.true.i30, label %lor.lhs.false.i31

land.lhs.true.i30:                                ; preds = %if.end.i29
  br i1 %tobool4.not.i28, label %land.lhs.true.i30.if.then6.i39_crit_edge, label %land.lhs.true.i30.for.inc.i42_crit_edge

land.lhs.true.i30.for.inc.i42_crit_edge:          ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i42

land.lhs.true.i30.if.then6.i39_crit_edge:         ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i39

lor.lhs.false.i31:                                ; preds = %if.end.i29
  br i1 %tobool4.not.i28, label %lor.lhs.false.i31.for.inc.i42_crit_edge, label %lor.lhs.false2.i.i34

lor.lhs.false.i31.for.inc.i42_crit_edge:          ; preds = %lor.lhs.false.i31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i42

lor.lhs.false2.i.i34:                             ; preds = %lor.lhs.false.i31
  %ssid_len.i.i32 = getelementptr inbounds %struct.cfg80211_ssid, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %ssid_len.i.i32 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ssid_len.i.i32, align 1
  %20 = ptrtoint ptr %ssid_len3.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ssid_len3.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp.not.i.i33 = icmp eq i8 %19, %21
  br i1 %cmp.not.i.i33, label %rtw_ssid_equal.exit.i38, label %lor.lhs.false2.i.i34.for.inc.i42_crit_edge

lor.lhs.false2.i.i34.for.inc.i42_crit_edge:       ; preds = %lor.lhs.false2.i.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i42

rtw_ssid_equal.exit.i38:                          ; preds = %lor.lhs.false2.i.i34
  %conv.i.i35 = zext i8 %19 to i32
  %bcmp.i.i36 = tail call i32 @bcmp(ptr nonnull %17, ptr nonnull %ssid, i32 %conv.i.i35) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i36)
  %tobool10.not.i.i37 = icmp eq i32 %bcmp.i.i36, 0
  br i1 %tobool10.not.i.i37, label %rtw_ssid_equal.exit.i38.if.then6.i39_crit_edge, label %rtw_ssid_equal.exit.i38.for.inc.i42_crit_edge

rtw_ssid_equal.exit.i38.for.inc.i42_crit_edge:    ; preds = %rtw_ssid_equal.exit.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i42

rtw_ssid_equal.exit.i38.if.then6.i39_crit_edge:   ; preds = %rtw_ssid_equal.exit.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i39

if.then6.i39:                                     ; preds = %rtw_ssid_equal.exit.i38.if.then6.i39_crit_edge, %land.lhs.true.i30.if.then6.i39_crit_edge
  %probe_req_size.i = getelementptr i8, ptr %.pn27.i23, i32 24
  %22 = ptrtoint ptr %probe_req_size.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %probe_req_size.i, align 4
  br label %for.inc.i42

for.inc.i42:                                      ; preds = %if.then6.i39, %rtw_ssid_equal.exit.i38.for.inc.i42_crit_edge, %lor.lhs.false2.i.i34.for.inc.i42_crit_edge, %lor.lhs.false.i31.for.inc.i42_crit_edge, %land.lhs.true.i30.for.inc.i42_crit_edge, %for.body.i26.for.inc.i42_crit_edge
  %size.1.i = phi i16 [ %size.026.i, %for.body.i26.for.inc.i42_crit_edge ], [ %23, %if.then6.i39 ], [ %size.026.i, %rtw_ssid_equal.exit.i38.for.inc.i42_crit_edge ], [ %size.026.i, %lor.lhs.false2.i.i34.for.inc.i42_crit_edge ], [ %size.026.i, %lor.lhs.false.i31.for.inc.i42_crit_edge ], [ %size.026.i, %land.lhs.true.i30.for.inc.i42_crit_edge ]
  %24 = ptrtoint ptr %.pn27.i23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn.i40 = load ptr, ptr %.pn27.i23, align 4
  %cmp.not.i41 = icmp eq ptr %.pn.i40, %rsvd_page_list.i
  br i1 %cmp.not.i41, label %rtw_get_rsvd_page_probe_req_size.exit, label %for.inc.i42.for.body.i26_crit_edge

for.inc.i42.for.body.i26_crit_edge:               ; preds = %for.inc.i42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i26

rtw_get_rsvd_page_probe_req_size.exit:            ; preds = %for.inc.i42
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %size.1.i)
  %tobool2.not = icmp eq i16 %size.1.i, 0
  br i1 %tobool2.not, label %do.end6, label %if.end8

do.end6:                                          ; preds = %rtw_get_rsvd_page_probe_req_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev7 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %25 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.37) #12
  br label %cleanup

if.end8:                                          ; preds = %rtw_get_rsvd_page_probe_req_size.exit
  %chip1.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %27 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chip1.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_pkt.i) #9
  %29 = getelementptr inbounds i8, ptr %h2c_pkt.i, i32 12
  %30 = call ptr @memset(ptr %29, i32 0, i32 20)
  %31 = ptrtoint ptr %h2c_pkt.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 33491968, ptr %h2c_pkt.i, align 4
  %add.ptr4.i = getelementptr inbounds i32, ptr %h2c_pkt.i, i32 2
  %conv2.i.i.i = zext i8 %location.1.i to i32
  %tx_pkt_desc_sz.i = getelementptr inbounds %struct.rtw_chip_info, ptr %28, i32 0, i32 4
  %32 = ptrtoint ptr %tx_pkt_desc_sz.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %tx_pkt_desc_sz.i, align 4
  %conv9.i = zext i8 %33 to i16
  %add.i = add i16 %size.1.i, %conv9.i
  %conv8.i.i29.i = zext i16 %add.i to i32
  %34 = tail call i32 @llvm.bswap.i32(i32 %conv8.i.i29.i) #9
  %or.i30.i = or i32 %34, %conv2.i.i.i
  %35 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.i30.i, ptr %add.ptr4.i, align 4
  %lock.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 29, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #9
  %seq.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 29, i32 2
  %36 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %seq.i.i, align 8
  %add.ptr.i = getelementptr inbounds i32, ptr %h2c_pkt.i, i32 1
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #9
  %39 = lshr i32 %38, 16
  %or.i.i.i = or i32 %39, 201326592
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or.i.i.i, ptr %add.ptr.i, align 4
  %hci.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %41 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hci.i.i.i, align 8
  %write_data_h2c.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %42, i32 0, i32 10
  %43 = ptrtoint ptr %write_data_h2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write_data_h2c.i.i.i, align 4
  %call.i.i.i = call i32 %44(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt.i, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end8.__rtw_fw_update_pkt.exit_crit_edge, label %do.end.i.i

if.end8.__rtw_fw_update_pkt.exit_crit_edge:       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %__rtw_fw_update_pkt.exit

do.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %45 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.55) #12
  br label %__rtw_fw_update_pkt.exit

__rtw_fw_update_pkt.exit:                         ; preds = %do.end.i.i, %if.end8.__rtw_fw_update_pkt.exit_crit_edge
  %47 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %seq.i.i, align 8
  %inc.i.i = add i32 %48, 1
  store i32 %inc.i.i, ptr %seq.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %lock.i.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_pkt.i) #9
  br label %cleanup

cleanup:                                          ; preds = %__rtw_fw_update_pkt.exit, %do.end6, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_channel_switch(ptr noundef %rtwdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %h2c_pkt = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_pkt) #9
  %0 = getelementptr inbounds i8, ptr %h2c_pkt, i32 16
  %1 = call ptr @memset(ptr %0, i32 0, i32 16)
  %2 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 33489408, ptr %h2c_pkt, align 4
  %add.ptr = getelementptr inbounds i32, ptr %h2c_pkt, i32 1
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 671088640, ptr %add.ptr, align 4
  %add.ptr3 = getelementptr inbounds i32, ptr %h2c_pkt, i32 2
  %add.ptr9 = getelementptr inbounds i32, ptr %h2c_pkt, i32 3
  %4 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 17121546, ptr %add.ptr9, align 4
  %or.i129 = select i1 %enable, i32 318767104, i32 301989888
  %channel_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42, i32 6, i32 3
  %5 = ptrtoint ptr %channel_cnt to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %channel_cnt, align 4
  %conv2.i.i141 = zext i8 %6 to i32
  %7 = shl nuw nsw i32 %conv2.i.i141, 8
  %or.i145 = or i32 %7, %or.i129
  %8 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or.i145, ptr %add.ptr3, align 4
  %add.ptr33 = getelementptr inbounds i32, ptr %h2c_pkt, i32 6
  %mul = shl nuw nsw i32 %conv2.i.i141, 2
  %9 = tail call i32 @llvm.bswap.i32(i32 %mul) #9
  %10 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %add.ptr33, align 4
  %rsvd_page_list.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 19
  %11 = ptrtoint ptr %rsvd_page_list.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn13.i = load ptr, ptr %rsvd_page_list.i, align 4
  %cmp.not14.i = icmp eq ptr %.pn13.i, %rsvd_page_list.i
  br i1 %cmp.not14.i, label %entry.rtw_get_rsvd_page_location.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.rtw_get_rsvd_page_location.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtw_get_rsvd_page_location.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn16.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn13.i, %entry.for.body.i_crit_edge ]
  %location.015.i = phi i8 [ %location.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %type2.i = getelementptr i8, ptr %.pn16.i, i32 12
  %12 = ptrtoint ptr %type2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %13)
  %cmp3.i = icmp eq i32 %13, 10
  br i1 %cmp3.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %page.i = getelementptr i8, ptr %.pn16.i, i32 16
  %14 = ptrtoint ptr %page.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %page.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %location.1.i = phi i8 [ %15, %if.then.i ], [ %location.015.i, %for.body.i.for.inc.i_crit_edge ]
  %16 = ptrtoint ptr %.pn16.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i = load ptr, ptr %.pn16.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %rsvd_page_list.i
  br i1 %cmp.not.i, label %for.inc.i.rtw_get_rsvd_page_location.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.rtw_get_rsvd_page_location.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtw_get_rsvd_page_location.exit

rtw_get_rsvd_page_location.exit:                  ; preds = %for.inc.i.rtw_get_rsvd_page_location.exit_crit_edge, %entry.rtw_get_rsvd_page_location.exit_crit_edge
  %location.0.lcssa.i = phi i8 [ 0, %entry.rtw_get_rsvd_page_location.exit_crit_edge ], [ %location.1.i, %for.inc.i.rtw_get_rsvd_page_location.exit_crit_edge ]
  %17 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr3, align 4
  %and.i174 = and i32 %18, -16711681
  %conv2.i.i175 = zext i8 %location.0.lcssa.i to i32
  %19 = shl nuw nsw i32 %conv2.i.i175, 16
  %or.i179 = or i32 %19, %and.i174
  store i32 %or.i179, ptr %add.ptr3, align 4
  %lock.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 29, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  %seq.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 29, i32 2
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr, align 4
  %22 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %seq.i, align 8
  %and.i.i181 = and i32 %21, -65536
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #9
  %25 = lshr i32 %24, 16
  %or.i.i = or i32 %25, %and.i.i181
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or.i.i, ptr %add.ptr, align 4
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %27 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hci.i.i, align 8
  %write_data_h2c.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %write_data_h2c.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_data_h2c.i.i, align 4
  %call.i.i = call i32 %30(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %rtw_get_rsvd_page_location.exit.rtw_fw_send_h2c_packet.exit_crit_edge, label %do.end.i

rtw_get_rsvd_page_location.exit.rtw_fw_send_h2c_packet.exit_crit_edge: ; preds = %rtw_get_rsvd_page_location.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtw_fw_send_h2c_packet.exit

do.end.i:                                         ; preds = %rtw_get_rsvd_page_location.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.55) #12
  br label %rtw_fw_send_h2c_packet.exit

rtw_fw_send_h2c_packet.exit:                      ; preds = %do.end.i, %rtw_get_rsvd_page_location.exit.rtw_fw_send_h2c_packet.exit_crit_edge
  %33 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %seq.i, align 8
  %inc.i = add i32 %34, 1
  store i32 %inc.i, ptr %seq.i, align 8
  call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_pkt) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_adaptivity(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  %h2c_pkt = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_pkt) #9
  %0 = call ptr @memset(ptr %h2c_pkt, i32 0, i32 32)
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @rtw_edcca_enabled to i32))
  %1 = load i8, ptr @rtw_edcca_enabled, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %edcca_mode = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 61
  %2 = ptrtoint ptr %edcca_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %edcca_mode, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 32768, ptr noundef nonnull @.str.39) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %edcca_mode4 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 61
  %3 = ptrtoint ptr %edcca_mode4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %edcca_mode4, align 4
  %l2h_th_ini = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 60
  %5 = ptrtoint ptr %l2h_th_ini to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %l2h_th_ini, align 1
  %conv1194 = zext i8 %6 to i32
  %igi_history = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 17
  %7 = ptrtoint ptr %igi_history to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %igi_history, align 2
  %conv2.i.i52 = zext i8 %8 to i32
  %9 = shl nuw nsw i32 %conv2.i.i52, 8
  %10 = shl i32 %4, 16
  %and.i51 = and i32 %10, 983040
  %and.i51.masked = or i32 %and.i51, 1512046592
  %and.i68 = or i32 %9, %and.i51.masked
  %or.i73 = or i32 %and.i68, %conv1194
  %11 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i73, ptr %h2c_pkt, align 4
  %add.ptr13 = getelementptr inbounds i32, ptr %h2c_pkt, i32 1
  %scan_density = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 62
  %12 = ptrtoint ptr %scan_density to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %scan_density, align 4
  %14 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr13, align 4
  %and.i85 = and i32 %15, 16777215
  %conv8.i.i89 = zext i8 %13 to i32
  %16 = shl nuw i32 %conv8.i.i89, 24
  %or.i90 = or i32 %16, %and.i85
  store i32 %or.i90, ptr %add.ptr13, align 4
  call fastcc void @rtw_fw_send_h2c_command(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_pkt) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_fw_scan_notify(ptr noundef %rtwdev, i1 noundef zeroext %start) local_unnamed_addr #0 align 64 {
entry:
  %h2c_pkt = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_pkt) #9
  %0 = getelementptr inbounds i8, ptr %h2c_pkt, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %or.i12 = select i1 %start, i32 1493237760, i32 1493172224
  %2 = ptrtoint ptr %h2c_pkt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or.i12, ptr %h2c_pkt, align 4
  call fastcc void @rtw_fw_send_h2c_command(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_pkt) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hw_scan_start(ptr noundef %rtwdev, ptr noundef %vif, ptr noundef %scan_req) local_unnamed_addr #0 align 64 {
entry:
  %mac_addr = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %req1 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %scan_req, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_addr) #9
  %0 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 4
  %scan_info = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 3
  %1 = call ptr @memset(ptr %mac_addr, i32 255, i32 6)
  %2 = ptrtoint ptr %scan_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %vif, ptr %scan_info, align 4
  %scan_ies = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 28
  %3 = ptrtoint ptr %scan_ies to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %scan_req, ptr %scan_ies, align 4
  %scan_req2 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 27
  %4 = ptrtoint ptr %scan_req2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %req1, ptr %scan_req2, align 8
  %5 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rtwdev, align 8
  tail call void @ieee80211_stop_queues(ptr noundef %6) #9
  %flags = getelementptr inbounds %struct.ieee80211_scan_request, ptr %scan_req, i32 0, i32 1, i32 8
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 5
  %10 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 3
  %11 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 2
  %12 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 1
  %mac_addr4 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %scan_req, i32 0, i32 1, i32 11
  %mac_addr_mask = getelementptr inbounds %struct.ieee80211_scan_request, ptr %scan_req, i32 0, i32 1, i32 12
  call void @get_random_bytes(ptr noundef nonnull %mac_addr, i32 noundef 6) #9
  %13 = ptrtoint ptr %mac_addr_mask to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mac_addr_mask, align 1
  %neg.i = xor i8 %14, -1
  %15 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mac_addr, align 4
  %and.i = and i8 %16, %neg.i
  %17 = ptrtoint ptr %mac_addr4 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mac_addr4, align 1
  %and821.i = and i8 %18, %14
  %or22.i = or i8 %and821.i, %and.i
  store i8 %or22.i, ptr %mac_addr, align 4
  %arrayidx.1.i = getelementptr %struct.ieee80211_scan_request, ptr %scan_req, i32 0, i32 1, i32 12, i32 1
  %19 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.1.i, align 1
  %neg.1.i = xor i8 %20, -1
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %12, align 1
  %and.1.i = and i8 %22, %neg.1.i
  %arrayidx4.1.i = getelementptr %struct.ieee80211_scan_request, ptr %scan_req, i32 0, i32 1, i32 11, i32 1
  %23 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx4.1.i, align 1
  %and821.1.i = and i8 %24, %20
  %or22.1.i = or i8 %and821.1.i, %and.1.i
  store i8 %or22.1.i, ptr %12, align 1
  %arrayidx.2.i = getelementptr %struct.ieee80211_scan_request, ptr %scan_req, i32 0, i32 1, i32 12, i32 2
  %25 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.2.i, align 1
  %neg.2.i = xor i8 %26, -1
  %27 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %11, align 2
  %and.2.i = and i8 %28, %neg.2.i
  %arrayidx4.2.i = getelementptr %struct.ieee80211_scan_request, ptr %scan_req, i32 0, i32 1, i32 11, i32 2
  %29 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx4.2.i, align 1
  %and821.2.i = and i8 %30, %26
  %or22.2.i = or i8 %and821.2.i, %and.2.i
  store i8 %or22.2.i, ptr %11, align 2
  %arrayidx.3.i = getelementptr %struct.ieee80211_scan_request, ptr %scan_req, i32 0, i32 1, i32 12, i32 3
  %31 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.3.i, align 1
  %neg.3.i = xor i8 %32, -1
  %33 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %10, align 1
  %and.3.i = and i8 %34, %neg.3.i
  %arrayidx4.3.i = getelementptr %struct.ieee80211_scan_request, ptr %scan_req, i32 0, i32 1, i32 11, i32 3
  %35 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx4.3.i, align 1
  %and821.3.i = and i8 %36, %32
  %or22.3.i = or i8 %and821.3.i, %and.3.i
  store i8 %or22.3.i, ptr %10, align 1
  %arrayidx.4.i = getelementptr %struct.ieee80211_scan_request, ptr %scan_req, i32 0, i32 1, i32 12, i32 4
  %37 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.4.i, align 1
  %neg.4.i = xor i8 %38, -1
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %0, align 4
  %and.4.i = and i8 %40, %neg.4.i
  %arrayidx4.4.i = getelementptr %struct.ieee80211_scan_request, ptr %scan_req, i32 0, i32 1, i32 11, i32 4
  %41 = ptrtoint ptr %arrayidx4.4.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx4.4.i, align 1
  %and821.4.i = and i8 %42, %38
  %or22.4.i = or i8 %and821.4.i, %and.4.i
  store i8 %or22.4.i, ptr %0, align 4
  %arrayidx.5.i = getelementptr %struct.ieee80211_scan_request, ptr %scan_req, i32 0, i32 1, i32 12, i32 5
  %43 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.5.i, align 1
  %neg.5.i = xor i8 %44, -1
  %45 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %9, align 1
  %and.5.i = and i8 %46, %neg.5.i
  %arrayidx4.5.i = getelementptr %struct.ieee80211_scan_request, ptr %scan_req, i32 0, i32 1, i32 11, i32 5
  %47 = ptrtoint ptr %arrayidx4.5.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx4.5.i, align 1
  %and821.5.i = and i8 %48, %44
  %or22.5.i = or i8 %and821.5.i, %and.5.i
  store i8 %or22.5.i, ptr %9, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %49 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %addr, align 4
  %51 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %mac_addr, align 4
  %add.ptr.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 0, i32 2, i32 4
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %add.ptr.i, align 2
  %54 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %0, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  call void @rtw_core_scan_start(ptr noundef %rtwdev, ptr noundef %drv_priv, ptr noundef nonnull %mac_addr, i1 noundef zeroext true) #9
  %hal = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5
  %55 = ptrtoint ptr %hal to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hal, align 8
  %and10 = and i32 %56, -129
  store i32 %and10, ptr %hal, align 8
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %57 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hci.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %58, i32 0, i32 16
  %59 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write32.i, align 4
  call void %60(ptr noundef %rtwdev, i32 noundef 1544, i32 noundef %and10) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_addr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_core_scan_start(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hw_scan_complete(ptr noundef %rtwdev, ptr noundef %vif, i1 noundef zeroext %aborted) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %aborted to i8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #9
  %0 = getelementptr inbounds i8, ptr %info, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %aborted1 = getelementptr inbounds %struct.cfg80211_scan_info, ptr %info, i32 0, i32 2
  %2 = call ptr @memset(ptr %info, i32 0, i32 14)
  %3 = ptrtoint ptr %aborted1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %aborted1, align 2
  %tobool3.not = icmp eq ptr %vif, null
  br i1 %tobool3.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hal = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5
  %4 = ptrtoint ptr %hal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hal, align 8
  %or = or i32 %5, 128
  store i32 %or, ptr %hal, align 8
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %6 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write32.i, align 4
  tail call void %9(ptr noundef %rtwdev, i32 noundef 1544, i32 noundef %or) #9
  tail call void @rtw_core_scan_complete(ptr noundef %rtwdev, ptr noundef nonnull %vif) #9
  %10 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rtwdev, align 8
  tail call void @ieee80211_wake_queues(ptr noundef %11) #9
  %12 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rtwdev, align 8
  call void @ieee80211_scan_completed(ptr noundef %13, ptr noundef nonnull %info) #9
  %scan_req = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 27
  %14 = ptrtoint ptr %scan_req to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %scan_req, align 8
  %scan_ies = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 28
  %15 = ptrtoint ptr %scan_ies to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %scan_ies, align 4
  %scan_info = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 3
  %16 = ptrtoint ptr %scan_info to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %scan_info, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_core_scan_complete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_scan_completed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_hw_scan_offload(ptr noundef %rtwdev, ptr noundef %vif, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %h2c_pkt.i = alloca [32 x i8], align 4
  %h2c_pkt.i.i.i.i = alloca [32 x i8], align 4
  %pkt_info.i.i.i.i = alloca %struct.rtw_tx_pkt_info, align 4
  %list.i.i = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i32
  %tobool.not = icmp eq ptr %vif, null
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %tobool1.not53 = icmp eq ptr %drv_priv, null
  %tobool1.not = select i1 %tobool.not, i1 true, i1 %tobool1.not53
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %drv_priv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %enable, label %if.then6, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then6:                                         ; preds = %if.end
  %scan_req.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 27
  %2 = ptrtoint ptr %scan_req.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scan_req.i, align 8
  %n_channels.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_channels.i, align 8
  %mul.i = mul i32 %5, 7
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3264) #14
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.then6.cleanup_crit_edge, label %if.end.i

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then6
  %6 = ptrtoint ptr %scan_req.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scan_req.i, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %list.i.i) #9
  %8 = call ptr @memset(ptr %list.i.i, i32 255, i32 56)
  %n_ssids.i.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %n_ssids.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_ssids.i.i, align 4
  %lock.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %list.i.i, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #9
  %11 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list.i.i, ptr %list.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.anon.62, ptr %list.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %list.i.i, ptr %prev.i.i.i.i, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %list.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %qlen.i.i.i.i, align 4
  %conv2.i.i = and i32 %10, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2.i.i)
  %cmp27.not.i.i = icmp eq i32 %conv2.i.i, 0
  br i1 %cmp27.not.i.i, label %if.end.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.for.end.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %mac_addr.i.i = getelementptr inbounds %struct.rtw_vif, ptr %drv_priv, i32 0, i32 2
  %ie_len.i.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %7, i32 0, i32 5
  %scan_ies.i.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 28
  %chip1.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %rtw_append_probe_req_ie.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %rtw_append_probe_req_ie.exit.i.i.for.body.i.i_crit_edge ]
  %14 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rtwdev, align 8
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %7, align 8
  %arrayidx.i.i = getelementptr %struct.cfg80211_ssid, ptr %17, i32 %indvars.iv.i.i
  %ssid_len.i.i = getelementptr %struct.cfg80211_ssid, ptr %17, i32 %indvars.iv.i.i, i32 1
  %18 = ptrtoint ptr %ssid_len.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ssid_len.i.i, align 1
  %conv8.i.i = zext i8 %19 to i32
  %20 = ptrtoint ptr %ie_len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ie_len.i.i, align 4
  %call.i.i = call ptr @ieee80211_probereq_get(ptr noundef %15, ptr noundef %mac_addr.i.i, ptr noundef %arrayidx.i.i, i32 noundef %conv8.i.i, i32 noundef %21) #9
  %22 = ptrtoint ptr %scan_ies.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %scan_ies.i.i.i, align 4
  %24 = ptrtoint ptr %chip1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip1.i.i.i, align 4
  %band.i.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %25, i32 0, i32 14
  %common_ies.i.i.i = getelementptr inbounds %struct.ieee80211_scan_ies, ptr %23, i32 0, i32 2
  %common_ie_len.i.i.i = getelementptr inbounds %struct.ieee80211_scan_ies, ptr %23, i32 0, i32 3
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i
  %indvars.iv.i.i.i = phi i32 [ 0, %for.body.i.i ], [ %indvars.iv.next.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %shl.i.i.i = shl nuw i32 1, %indvars.iv.i.i.i
  %26 = ptrtoint ptr %band.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %band.i.i.i, align 4
  %conv4.i.i.i = zext i8 %27 to i32
  %and.i.i.i = and i32 %shl.i.i.i, %conv4.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i21.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i21.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.end.i.i22.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

if.end.i.i22.i:                                   ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call ptr @skb_copy(ptr noundef %call.i.i, i32 noundef 3264) #9
  %arrayidx.i.i.i = getelementptr [6 x ptr], ptr %23, i32 0, i32 %indvars.iv.i.i.i
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i.i, align 4
  %arrayidx7.i.i.i = getelementptr %struct.ieee80211_scan_ies, ptr %23, i32 0, i32 1, i32 %indvars.iv.i.i.i
  %30 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx7.i.i.i, align 4
  %call.i.i.i.i = call ptr @skb_put(ptr noundef %call.i.i.i, i32 noundef %31) #9
  %32 = call ptr @memcpy(ptr %call.i.i.i.i, ptr %29, i32 %31)
  %33 = ptrtoint ptr %common_ies.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %common_ies.i.i.i, align 4
  %35 = ptrtoint ptr %common_ie_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %common_ie_len.i.i.i, align 4
  %call.i19.i.i.i = call ptr @skb_put(ptr noundef %call.i.i.i, i32 noundef %36) #9
  %37 = call ptr @memcpy(ptr %call.i19.i.i.i, ptr %34, i32 %36)
  call void @skb_queue_tail(ptr noundef nonnull %list.i.i, ptr noundef %call.i.i.i) #9
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.end.i.i22.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %indvars.iv.next.i.i.i = add nuw nsw i32 %indvars.iv.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %indvars.iv.next.i.i.i, 6
  br i1 %exitcond.not.i.i.i, label %rtw_append_probe_req_ie.exit.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

rtw_append_probe_req_ie.exit.i.i:                 ; preds = %for.inc.i.i.i
  call void @kfree_skb_reason(ptr noundef %call.i.i, i32 noundef 0) #9
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %conv2.i.i
  br i1 %exitcond.not.i.i, label %rtw_append_probe_req_ie.exit.i.i.for.end.i.i_crit_edge, label %rtw_append_probe_req_ie.exit.i.i.for.body.i.i_crit_edge

rtw_append_probe_req_ie.exit.i.i.for.body.i.i_crit_edge: ; preds = %rtw_append_probe_req_ie.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

rtw_append_probe_req_ie.exit.i.i.for.end.i.i_crit_edge: ; preds = %rtw_append_probe_req_ie.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %rtw_append_probe_req_ie.exit.i.i.for.end.i.i_crit_edge, %if.end.i.for.end.i.i_crit_edge
  %chip1.i22.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %38 = ptrtoint ptr %chip1.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chip1.i22.i.i, align 4
  %page_size2.i.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %39, i32 0, i32 15
  %40 = ptrtoint ptr %page_size2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %page_size2.i.i.i, align 1
  %fifo.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 6
  %rsvd_h2c_info_addr.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 6, i32 6
  %42 = ptrtoint ptr %rsvd_h2c_info_addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %rsvd_h2c_info_addr.i.i.i, align 4
  %conv5.i.i.i = zext i8 %41 to i32
  %tx_pkt_desc_sz.i.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %39, i32 0, i32 4
  %44 = ptrtoint ptr %tx_pkt_desc_sz.i.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %tx_pkt_desc_sz.i.i.i, align 4
  %mul.i.i.i = shl i32 %10, 1
  %add.i.i.i = and i32 %mul.i.i.i, 254
  %conv10.i.i.i = or i32 %add.i.i.i, 1
  %mul11.i.i.i = mul nuw nsw i32 %conv10.i.i.i, %conv5.i.i.i
  %call9.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul11.i.i.i, i32 noundef 3520) #14
  %tobool.not.i23.i.i = icmp eq ptr %call9.i.i.i.i.i, null
  br i1 %tobool.not.i23.i.i, label %rtw_hw_scan_update_probe_req.exit.thread.i, label %if.end.i24.i.i

rtw_hw_scan_update_probe_req.exit.thread.i:       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %list.i.i) #9
  br label %out.sink.split.i

if.end.i24.i.i:                                   ; preds = %for.end.i.i
  %conv12.i.i.i = zext i8 %45 to i32
  %sub.i.i.i = sub nsw i32 %conv5.i.i.i, %conv12.i.i.i
  %46 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %list.i.i, align 4
  %cmp.not107.i.i.i = icmp eq ptr %47, %list.i.i
  br i1 %cmp.not107.i.i.i, label %if.end.i24.i.i.for.end.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end.i24.i.i.for.end.i.i.i_crit_edge:           ; preds = %if.end.i24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end.i24.i.i
  %mul18.i.i.i = shl nuw nsw i32 %conv5.i.i.i, 1
  %conv28.i.i.i = trunc i16 %43 to i8
  %48 = getelementptr inbounds i8, ptr %h2c_pkt.i.i.i.i, i32 12
  %add.ptr.i.i.i.i = getelementptr inbounds i32, ptr %h2c_pkt.i.i.i.i, i32 1
  %add.ptr4.i.i.i.i = getelementptr inbounds i32, ptr %h2c_pkt.i.i.i.i, i32 2
  %lock.i.i.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 29, i32 1
  %seq.i.i.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 29, i32 2
  %hci.i.i.i.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %dev.i.i.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  br label %for.body.i26.i.i

for.body.i26.i.i:                                 ; preds = %__rtw_fw_update_pkt.exit.i.i.i.for.body.i26.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %buf_offset.0.in110.i.i.i = phi i32 [ %sub.i.i.i, %for.body.lr.ph.i.i.i ], [ %add40.i.i.i, %__rtw_fw_update_pkt.exit.i.i.i.for.body.i26.i.i_crit_edge ]
  %page_offset.0109.i.i.i = phi i8 [ 1, %for.body.lr.ph.i.i.i ], [ %add43.i.i.i, %__rtw_fw_update_pkt.exit.i.i.i.for.body.i26.i.i_crit_edge ]
  %skb.0108.i.i.i = phi ptr [ %47, %for.body.lr.ph.i.i.i ], [ %tmp.0111.i.i.i, %__rtw_fw_update_pkt.exit.i.i.i.for.body.i26.i.i_crit_edge ]
  %49 = ptrtoint ptr %skb.0108.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %tmp.0111.i.i.i = load ptr, ptr %skb.0108.i.i.i, align 8
  call void @skb_unlink(ptr noundef %skb.0108.i.i.i, ptr noundef nonnull %list.i.i) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %pkt_info.i.i.i.i) #9
  %50 = call ptr @memset(ptr %pkt_info.i.i.i.i, i32 0, i32 36)
  %51 = ptrtoint ptr %chip1.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %chip1.i22.i.i, align 4
  call void @rtw_tx_rsvd_page_pkt_info_update(ptr noundef %rtwdev, ptr noundef nonnull %pkt_info.i.i.i.i, ptr noundef %skb.0108.i.i.i, i32 noundef 8) #9
  %tx_pkt_desc_sz.i.i.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %tx_pkt_desc_sz.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %tx_pkt_desc_sz.i.i.i.i, align 4
  %conv.i.i.i.i = zext i8 %54 to i32
  %call.i.i25.i.i = call ptr @skb_push(ptr noundef %skb.0108.i.i.i, i32 noundef %conv.i.i.i.i) #9
  %55 = ptrtoint ptr %tx_pkt_desc_sz.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %tx_pkt_desc_sz.i.i.i.i, align 4
  %conv3.i.i.i.i = zext i8 %56 to i32
  %57 = call ptr @memset(ptr %call.i.i25.i.i, i32 0, i32 %conv3.i.i.i.i)
  call void @rtw_tx_fill_tx_desc(ptr noundef nonnull %pkt_info.i.i.i.i, ptr noundef %skb.0108.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %pkt_info.i.i.i.i) #9
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0108.i.i.i, i32 0, i32 6
  %58 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %mul18.i.i.i)
  %cmp19.i.i.i = icmp ugt i32 %59, %mul18.i.i.i
  br i1 %cmp19.i.i.i, label %for.body.i26.i.i.rtw_hw_scan_update_probe_req.exit.thread37.i_crit_edge, label %if.end22.i.i.i

for.body.i26.i.i.rtw_hw_scan_update_probe_req.exit.thread37.i_crit_edge: ; preds = %for.body.i26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtw_hw_scan_update_probe_req.exit.thread37.i

if.end22.i.i.i:                                   ; preds = %for.body.i26.i.i
  %conv23.i.i.i = and i32 %buf_offset.0.in110.i.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %call9.i.i.i.i.i, i32 %conv23.i.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0108.i.i.i, i32 0, i32 19
  %60 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i.i.i, align 4
  %62 = call ptr @memcpy(ptr %add.ptr.i.i.i, ptr %61, i32 %59)
  %63 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len.i.i.i, align 4
  %sub27.i.i.i = sub i32 %64, %conv12.i.i.i
  %65 = ptrtoint ptr %fifo.i.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %fifo.i.i.i, align 8
  %conv30.i.i.i = trunc i16 %66 to i8
  %sub31.i.i.i = add i8 %page_offset.0109.i.i.i, %conv28.i.i.i
  %add33.i.i.i = sub i8 %sub31.i.i.i, %conv30.i.i.i
  %67 = ptrtoint ptr %chip1.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %chip1.i22.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_pkt.i.i.i.i) #9
  %69 = call ptr @memset(ptr %48, i32 0, i32 20)
  %70 = ptrtoint ptr %h2c_pkt.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 33491968, ptr %h2c_pkt.i.i.i.i, align 4
  %conv2.i.i.i.i.i.i = zext i8 %add33.i.i.i to i32
  %tx_pkt_desc_sz.i99.i.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %68, i32 0, i32 4
  %71 = ptrtoint ptr %tx_pkt_desc_sz.i99.i.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %tx_pkt_desc_sz.i99.i.i.i, align 4
  %conv9.i.i.i.i = zext i8 %72 to i32
  %add.i.i.i.i = add i32 %sub27.i.i.i, %conv9.i.i.i.i
  %conv8.i.i29.i.i.i.i = and i32 %add.i.i.i.i, 65535
  %73 = call i32 @llvm.bswap.i32(i32 %conv8.i.i29.i.i.i.i) #9
  %or.i30.i.i.i.i = or i32 %73, %conv2.i.i.i.i.i.i
  %74 = ptrtoint ptr %add.ptr4.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or.i30.i.i.i.i, ptr %add.ptr4.i.i.i.i, align 4
  call void @_raw_spin_lock(ptr noundef %lock.i.i.i.i.i) #9
  %75 = ptrtoint ptr %seq.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %seq.i.i.i.i.i, align 8
  %77 = call i32 @llvm.bswap.i32(i32 %76) #9
  %78 = lshr i32 %77, 16
  %or.i.i.i.i.i.i = or i32 %78, 201326592
  %79 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %or.i.i.i.i.i.i, ptr %add.ptr.i.i.i.i, align 4
  %80 = ptrtoint ptr %hci.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hci.i.i.i.i.i.i, align 8
  %write_data_h2c.i.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %81, i32 0, i32 10
  %82 = ptrtoint ptr %write_data_h2c.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write_data_h2c.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = call i32 %83(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt.i.i.i.i, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end22.i.i.i.__rtw_fw_update_pkt.exit.i.i.i_crit_edge, label %do.end.i.i.i.i.i

if.end22.i.i.i.__rtw_fw_update_pkt.exit.i.i.i_crit_edge: ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__rtw_fw_update_pkt.exit.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %if.end22.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %dev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev.i.i.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.55) #12
  br label %__rtw_fw_update_pkt.exit.i.i.i

__rtw_fw_update_pkt.exit.i.i.i:                   ; preds = %do.end.i.i.i.i.i, %if.end22.i.i.i.__rtw_fw_update_pkt.exit.i.i.i_crit_edge
  %86 = ptrtoint ptr %seq.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %seq.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %87, 1
  store i32 %inc.i.i.i.i.i, ptr %seq.i.i.i.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %lock.i.i.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_pkt.i.i.i.i) #9
  %add40.i.i.i = add nuw nsw i32 %conv23.i.i.i, %mul18.i.i.i
  %add43.i.i.i = add i8 %page_offset.0109.i.i.i, 2
  call void @kfree_skb_reason(ptr noundef %skb.0108.i.i.i, i32 noundef 0) #9
  %cmp.not.i.i.i = icmp eq ptr %tmp.0111.i.i.i, %list.i.i
  br i1 %cmp.not.i.i.i, label %__rtw_fw_update_pkt.exit.i.i.i.for.end.i.i.i_crit_edge, label %__rtw_fw_update_pkt.exit.i.i.i.for.body.i26.i.i_crit_edge

__rtw_fw_update_pkt.exit.i.i.i.for.body.i26.i.i_crit_edge: ; preds = %__rtw_fw_update_pkt.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i26.i.i

__rtw_fw_update_pkt.exit.i.i.i.for.end.i.i.i_crit_edge: ; preds = %__rtw_fw_update_pkt.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %__rtw_fw_update_pkt.exit.i.i.i.for.end.i.i.i_crit_edge, %if.end.i24.i.i.for.end.i.i.i_crit_edge
  %page_offset.0.lcssa.i.i.i = phi i8 [ 1, %if.end.i24.i.i.for.end.i.i.i_crit_edge ], [ %add43.i.i.i, %__rtw_fw_update_pkt.exit.i.i.i.for.end.i.i.i_crit_edge ]
  %buf_offset.0.in.lcssa.i.i.i = phi i32 [ %sub.i.i.i, %if.end.i24.i.i.for.end.i.i.i_crit_edge ], [ %add40.i.i.i, %__rtw_fw_update_pkt.exit.i.i.i.for.end.i.i.i_crit_edge ]
  %conv46.i.i.i = and i32 %buf_offset.0.in.lcssa.i.i.i, 65535
  %call47.i.i.i = call i32 @rtw_fw_write_data_rsvd_page(ptr noundef %rtwdev, i16 noundef zeroext %43, ptr noundef nonnull %call9.i.i.i.i.i, i32 noundef %conv46.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i.i)
  %tobool48.not.i.i.i = icmp eq i32 %call47.i.i.i, 0
  br i1 %tobool48.not.i.i.i, label %if.end4.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %88 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.91) #12
  br label %rtw_hw_scan_update_probe_req.exit.thread37.i

rtw_hw_scan_update_probe_req.exit.thread37.i:     ; preds = %do.end.i.i.i, %for.body.i26.i.i.rtw_hw_scan_update_probe_req.exit.thread37.i_crit_edge
  %ret.0.i.i.ph.i = phi i32 [ %call47.i.i.i, %do.end.i.i.i ], [ -22, %for.body.i26.i.i.rtw_hw_scan_update_probe_req.exit.thread37.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %list.i.i) #9
  br label %out.sink.split.i

if.end4.i:                                        ; preds = %for.end.i.i.i
  %probe_pg_size.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 3, i32 1
  %90 = ptrtoint ptr %probe_pg_size.i.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %page_offset.0.lcssa.i.i.i, ptr %probe_pg_size.i.i.i, align 4
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %list.i.i) #9
  %91 = ptrtoint ptr %scan_req.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %scan_req.i, align 8
  %n_channels.i.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %n_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %n_channels.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp74.not.i.i = icmp eq i32 %94, 0
  br i1 %cmp74.not.i.i, label %if.end4.i.if.end27.i.i_crit_edge, label %for.body.lr.ph.i24.i

if.end4.i.if.end27.i.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i.i

for.body.lr.ph.i24.i:                             ; preds = %if.end4.i
  %duration_mandatory.i.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %92, i32 0, i32 7
  %duration.i.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %92, i32 0, i32 6
  br label %for.body.i26.i

for.body.i26.i:                                   ; preds = %for.inc.i.i.for.body.i26.i_crit_edge, %for.body.lr.ph.i24.i
  %chan_list.sroa.5.0 = phi i32 [ 0, %for.body.lr.ph.i24.i ], [ %inc.i.i.i, %for.inc.i.i.for.body.i26.i_crit_edge ]
  %chan_list.sroa.9.0 = phi i32 [ 0, %for.body.lr.ph.i24.i ], [ %add21.i.i.i, %for.inc.i.i.for.body.i26.i_crit_edge ]
  %arrayidx.i25.i = getelementptr %struct.cfg80211_scan_request, ptr %92, i32 0, i32 22, i32 %chan_list.sroa.5.0
  %95 = ptrtoint ptr %arrayidx.i25.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.i25.i, align 4
  %hw_value.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %hw_value.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %hw_value.i.i, align 2
  %conv.i.i = trunc i16 %98 to i8
  %99 = ptrtoint ptr %duration_mandatory.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %duration_mandatory.i.i, align 2, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool.not.i.i = icmp eq i8 %100, 0
  br i1 %tobool.not.i.i, label %for.body.i26.i.cond.end.i.i_crit_edge, label %cond.true.i.i

for.body.i26.i.cond.end.i.i_crit_edge:            ; preds = %for.body.i26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %for.body.i26.i
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %duration.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %duration.i.i, align 8
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %for.body.i26.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i16 [ %102, %cond.true.i.i ], [ 45, %for.body.i26.i.cond.end.i.i_crit_edge ]
  %arrayidx.i.i27.i = getelementptr i8, ptr %call9.i.i, i32 %chan_list.sroa.9.0
  call void @__sanitizer_cov_trace_cmp4(i32 %chan_list.sroa.9.0, i32 %mul.i)
  %cmp.i.i28.i = icmp ugt i32 %chan_list.sroa.9.0, %mul.i
  br i1 %cmp.i.i28.i, label %cond.end.i.i.rtw_hw_scan_prehandle.exit.thread47_crit_edge, label %u8p_replace_bits.exit81.i.i.i

cond.end.i.i.rtw_hw_scan_prehandle.exit.thread47_crit_edge: ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtw_hw_scan_prehandle.exit.thread47

u8p_replace_bits.exit81.i.i.i:                    ; preds = %cond.end.i.i
  %flags.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %96, i32 0, i32 4
  %103 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %104, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool6.not.i.i = icmp eq i32 %and.i.i, 0
  %105 = call i16 @llvm.umax.i16(i16 %cond.i.i, i16 105) #9
  %ch_info.sroa.15.1.i.i = select i1 %tobool6.not.i.i, i16 %cond.i.i, i16 %105
  %106 = ptrtoint ptr %arrayidx.i.i27.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv.i.i, ptr %arrayidx.i.i27.i, align 1
  %add.ptr2.i.i.i = getelementptr i8, ptr %arrayidx.i.i27.i, i32 1
  %107 = ptrtoint ptr %add.ptr2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %add.ptr2.i.i.i, align 1
  %add.ptr5.i.i.i = getelementptr i8, ptr %arrayidx.i.i27.i, i32 2
  %conv8.i.i46.i.i.i = trunc i16 %ch_info.sroa.15.1.i.i to i8
  %108 = ptrtoint ptr %add.ptr5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv8.i.i46.i.i.i, ptr %add.ptr5.i.i.i, align 1
  %add.ptr7.i.i.i = getelementptr i8, ptr %arrayidx.i.i27.i, i32 3
  %or.i80.i.i.i = select i1 %tobool6.not.i.i, i8 1, i8 -126
  %109 = ptrtoint ptr %add.ptr7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %or.i80.i.i.i, ptr %add.ptr7.i.i.i, align 1
  br i1 %tobool6.not.i.i, label %u8p_replace_bits.exit81.i.i.i.for.inc.i.i_crit_edge, label %if.then11.i.i.i

u8p_replace_bits.exit81.i.i.i.for.inc.i.i_crit_edge: ; preds = %u8p_replace_bits.exit81.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then11.i.i.i:                                  ; preds = %u8p_replace_bits.exit81.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr12.i.i.i = getelementptr i8, ptr %arrayidx.i.i27.i, i32 4
  %110 = ptrtoint ptr %add.ptr12.i.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %add.ptr12.i.i.i, align 1
  %add.ptr14.i.i.i = getelementptr i8, ptr %arrayidx.i.i27.i, i32 5
  %111 = ptrtoint ptr %add.ptr14.i.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 1, ptr %add.ptr14.i.i.i, align 1
  %add.ptr15.i.i.i = getelementptr i8, ptr %arrayidx.i.i27.i, i32 6
  %112 = ptrtoint ptr %add.ptr15.i.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 20, ptr %add.ptr15.i.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then11.i.i.i, %u8p_replace_bits.exit81.i.i.i.for.inc.i.i_crit_edge
  %info_size.0.i.i.i = phi i32 [ 7, %if.then11.i.i.i ], [ 4, %u8p_replace_bits.exit81.i.i.i.for.inc.i.i_crit_edge ]
  %add21.i.i.i = add i32 %info_size.0.i.i.i, %chan_list.sroa.9.0
  %inc.i.i.i = add nuw i32 %chan_list.sroa.5.0, 1
  %113 = ptrtoint ptr %n_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %n_channels.i.i, align 8
  %cmp.i29.i = icmp ult i32 %inc.i.i.i, %114
  br i1 %cmp.i29.i, label %for.inc.i.i.for.body.i26.i_crit_edge, label %for.end.i30.i

for.inc.i.i.for.body.i26.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i26.i

for.end.i30.i:                                    ; preds = %for.inc.i.i
  %rsvd_pg_num.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 6, i32 1
  %115 = ptrtoint ptr %rsvd_pg_num.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %rsvd_pg_num.i.i, align 2
  %conv23.i.i = zext i16 %116 to i32
  %shl.i.i = shl nuw nsw i32 %conv23.i.i, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %add21.i.i.i, i32 %shl.i.i)
  %cmp24.i.i = icmp ugt i32 %add21.i.i.i, %shl.i.i
  br i1 %cmp24.i.i, label %for.end.i30.i.out.sink.split.i_crit_edge, label %for.end.i30.i.if.end27.i.i_crit_edge

for.end.i30.i.if.end27.i.i_crit_edge:             ; preds = %for.end.i30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i.i

for.end.i30.i.out.sink.split.i_crit_edge:         ; preds = %for.end.i30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.sink.split.i

if.end27.i.i:                                     ; preds = %for.end.i30.i.if.end27.i.i_crit_edge, %if.end4.i.if.end27.i.i_crit_edge
  %chan_list.sroa.9.141 = phi i32 [ %add21.i.i.i, %for.end.i30.i.if.end27.i.i_crit_edge ], [ 0, %if.end4.i.if.end27.i.i_crit_edge ]
  %chan_list.sroa.5.140 = phi i32 [ %inc.i.i.i, %for.end.i30.i.if.end27.i.i_crit_edge ], [ 0, %if.end4.i.if.end27.i.i_crit_edge ]
  %117 = ptrtoint ptr %rsvd_h2c_info_addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %rsvd_h2c_info_addr.i.i.i, align 4
  %119 = ptrtoint ptr %probe_pg_size.i.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %probe_pg_size.i.i.i, align 4
  %conv29.i.i = zext i8 %120 to i16
  %add.i.i = add i16 %118, %conv29.i.i
  %call33.i.i = call i32 @rtw_fw_write_data_rsvd_page(ptr noundef %rtwdev, i16 noundef zeroext %add.i.i, ptr noundef nonnull %call9.i.i, i32 noundef %chan_list.sroa.9.141) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %tobool34.not.i.i = icmp eq i32 %call33.i.i, 0
  br i1 %tobool34.not.i.i, label %rtw_hw_scan_prehandle.exit, label %if.end27.i.i.out.sink.split.i_crit_edge

if.end27.i.i.out.sink.split.i_crit_edge:          ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.sink.split.i

out.sink.split.i:                                 ; preds = %if.end27.i.i.out.sink.split.i_crit_edge, %for.end.i30.i.out.sink.split.i_crit_edge, %rtw_hw_scan_update_probe_req.exit.thread37.i, %rtw_hw_scan_update_probe_req.exit.thread.i
  %.str.96.sink.i.sink.i = phi ptr [ @.str.88, %rtw_hw_scan_update_probe_req.exit.thread37.i ], [ @.str.88, %rtw_hw_scan_update_probe_req.exit.thread.i ], [ @.str.93, %for.end.i30.i.out.sink.split.i_crit_edge ], [ @.str.96, %if.end27.i.i.out.sink.split.i_crit_edge ]
  %ret.0.ph.i = phi i32 [ %ret.0.i.i.ph.i, %rtw_hw_scan_update_probe_req.exit.thread37.i ], [ -12, %rtw_hw_scan_update_probe_req.exit.thread.i ], [ -22, %for.end.i30.i.out.sink.split.i_crit_edge ], [ %call33.i.i, %if.end27.i.i.out.sink.split.i_crit_edge ]
  %dev39.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %121 = ptrtoint ptr %dev39.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev39.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull %.str.96.sink.i.sink.i) #12
  br label %rtw_hw_scan_prehandle.exit.thread47

rtw_hw_scan_prehandle.exit.thread47:              ; preds = %out.sink.split.i, %cond.end.i.i.rtw_hw_scan_prehandle.exit.thread47_crit_edge
  %ret.0.i.ph = phi i32 [ %ret.0.ph.i, %out.sink.split.i ], [ -12, %cond.end.i.i.rtw_hw_scan_prehandle.exit.thread47_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %cleanup

rtw_hw_scan_prehandle.exit:                       ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call9.i.i) #9
  %phi.cast = zext i16 %add.i.i to i32
  br label %if.end10

if.end10:                                         ; preds = %rtw_hw_scan_prehandle.exit, %if.end.if.end10_crit_edge
  %chan_list.sroa.5.5 = phi i32 [ %chan_list.sroa.5.140, %rtw_hw_scan_prehandle.exit ], [ 0, %if.end.if.end10_crit_edge ]
  %chan_list.sroa.9.5 = phi i32 [ %chan_list.sroa.9.141, %rtw_hw_scan_prehandle.exit ], [ 0, %if.end.if.end10_crit_edge ]
  %chan_list.sroa.15.3 = phi i32 [ %phi.cast, %rtw_hw_scan_prehandle.exit ], [ 0, %if.end.if.end10_crit_edge ]
  %scan_req.i21 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 27
  %123 = ptrtoint ptr %scan_req.i21 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %scan_req.i21, align 8
  %fifo2.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 6
  %rsvd_h2c_info_addr.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 6, i32 6
  %125 = ptrtoint ptr %rsvd_h2c_info_addr.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %rsvd_h2c_info_addr.i, align 4
  %127 = ptrtoint ptr %fifo2.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %fifo2.i, align 4
  %flags.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %124, i32 0, i32 8
  %129 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %flags.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %h2c_pkt.i) #9
  %131 = getelementptr inbounds i8, ptr %h2c_pkt.i, i32 12
  %132 = call ptr @memset(ptr %131, i32 0, i32 20)
  %133 = ptrtoint ptr %h2c_pkt.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 33495296, ptr %h2c_pkt.i, align 4
  %add.ptr.i = getelementptr inbounds i32, ptr %h2c_pkt.i, i32 1
  %134 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 536870912, ptr %add.ptr.i, align 4
  %add.ptr7.i = getelementptr inbounds i32, ptr %h2c_pkt.i, i32 2
  %no_cck.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %124, i32 0, i32 18
  %135 = ptrtoint ptr %no_cck.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %no_cck.i, align 1, !range !213
  %137 = shl nuw nsw i8 %136, 3
  %conv8.i.i128.i = zext i8 %137 to i32
  %138 = shl nuw nsw i32 %conv8.i.i128.i, 24
  %139 = shl i32 %130, 15
  %140 = and i32 %139, 67108864
  %141 = select i1 %cmp, i32 2, i32 0
  %142 = or i32 %141, %frombool
  %or.i95.i = shl nuw nsw i32 %142, 24
  %and.i124.i = or i32 %140, %or.i95.i
  %or.i129.i = or i32 %138, %and.i124.i
  %143 = shl i32 %chan_list.sroa.5.5, 16
  %144 = and i32 %143, 16711680
  %or.i146.i = or i32 %or.i129.i, %144
  %145 = call i32 @llvm.bswap.i32(i32 %chan_list.sroa.9.5) #9
  %146 = lshr i32 %145, 16
  %or.i163.i = or i32 %or.i146.i, %146
  %147 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %or.i163.i, ptr %add.ptr7.i, align 4
  %148 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %131, align 4
  %150 = ptrtoint ptr %fifo2.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %fifo2.i, align 4
  %conv30.i = zext i16 %151 to i32
  %sub31.i = sub nsw i32 %chan_list.sroa.15.3, %conv30.i
  %and.i175.i = and i32 %149, 248
  %152 = shl i32 %sub31.i, 24
  %or.i180.i = or i32 %152, %and.i175.i
  %op_chan.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 3, i32 3
  %153 = ptrtoint ptr %op_chan.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %op_chan.i, align 2
  %conv2.i.i193.i = zext i8 %154 to i32
  %155 = shl nuw nsw i32 %conv2.i.i193.i, 16
  %or.i197.i = or i32 %155, %or.i180.i
  %port.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 5
  %156 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %port.i, align 2
  %op_bw.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 3, i32 4
  %158 = ptrtoint ptr %op_bw.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %op_bw.i, align 1
  %160 = and i8 %159, 15
  %and528.i.i228.i = zext i8 %160 to i32
  %mul.i.i229.i = shl nuw nsw i32 %and528.i.i228.i, 12
  %op_pri_ch_idx.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 3, i32 2
  %161 = ptrtoint ptr %op_pri_ch_idx.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %op_pri_ch_idx.i, align 1
  %conv37.i = zext i8 %162 to i32
  %163 = shl nuw nsw i32 %conv37.i, 8
  %.masked.i = and i32 %163, 3840
  %and.i226.i = or i32 %.masked.i, %or.i197.i
  %or.i231.i = or i32 %mul.i.i229.i, %and.i226.i
  %164 = and i8 %157, 7
  %and528.i.i245.i = zext i8 %164 to i32
  %or.i248.i = or i32 %or.i231.i, %and528.i.i245.i
  store i32 %or.i248.i, ptr %131, align 4
  %duration_mandatory.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %124, i32 0, i32 7
  %165 = ptrtoint ptr %duration_mandatory.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %duration_mandatory.i, align 2, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool46.not.i = icmp eq i8 %166, 0
  br i1 %tobool46.not.i, label %if.end10.cond.end.i_crit_edge, label %cond.true.i

if.end10.cond.end.i_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %duration.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %124, i32 0, i32 6
  %167 = ptrtoint ptr %duration.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %duration.i, align 8
  %conv48.i = zext i16 %168 to i32
  %phi.bo.i = or i32 %conv48.i, 6553600
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end10.cond.end.i_crit_edge
  %cond.i = phi i32 [ %phi.bo.i, %cond.true.i ], [ 6553645, %if.end10.cond.end.i_crit_edge ]
  %add.ptr45.i = getelementptr inbounds i32, ptr %h2c_pkt.i, i32 4
  %169 = call i32 @llvm.bswap.i32(i32 %cond.i) #9
  %170 = ptrtoint ptr %add.ptr45.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %add.ptr45.i, align 4
  %add.ptr52.i = getelementptr inbounds i32, ptr %h2c_pkt.i, i32 5
  %171 = ptrtoint ptr %add.ptr52.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %add.ptr52.i, align 4
  %n_ssids.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %124, i32 0, i32 1
  %173 = ptrtoint ptr %n_ssids.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %n_ssids.i, align 4
  %conv.i = zext i16 %126 to i32
  %conv3.i = zext i16 %128 to i32
  %sub.i = sub nsw i32 %conv.i, %conv3.i
  %and.i287.i = and i32 %172, 251723775
  %175 = shl i32 %174, 28
  %or.i292.i = or i32 %and.i287.i, %175
  %add.i = shl i32 %sub.i, 16
  %176 = add i32 %add.i, 65536
  %177 = and i32 %176, 16711680
  %or.i309.i = or i32 %or.i292.i, %177
  store i32 %or.i309.i, ptr %add.ptr52.i, align 4
  %lock.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 29, i32 1
  call void @_raw_spin_lock(ptr noundef %lock.i.i) #9
  %seq.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 29, i32 2
  %178 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %add.ptr.i, align 4
  %180 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %seq.i.i, align 8
  %and.i.i311.i = and i32 %179, -65536
  %182 = call i32 @llvm.bswap.i32(i32 %181) #9
  %183 = lshr i32 %182, 16
  %or.i.i.i = or i32 %183, %and.i.i311.i
  %184 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %or.i.i.i, ptr %add.ptr.i, align 4
  %hci.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %185 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %hci.i.i.i, align 8
  %write_data_h2c.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %186, i32 0, i32 10
  %187 = ptrtoint ptr %write_data_h2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %write_data_h2c.i.i.i, align 4
  %call.i.i.i23 = call i32 %188(ptr noundef %rtwdev, ptr noundef nonnull %h2c_pkt.i, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i23)
  %tobool.not.i.i24 = icmp eq i32 %call.i.i.i23, 0
  br i1 %tobool.not.i.i24, label %cond.end.i.rtw_fw_set_scan_offload.exit_crit_edge, label %do.end.i.i

cond.end.i.rtw_fw_set_scan_offload.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtw_fw_set_scan_offload.exit

do.end.i.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %189 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %190, ptr noundef nonnull @.str.55) #12
  br label %rtw_fw_set_scan_offload.exit

rtw_fw_set_scan_offload.exit:                     ; preds = %do.end.i.i, %cond.end.i.rtw_fw_set_scan_offload.exit_crit_edge
  %191 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %seq.i.i, align 8
  %inc.i.i25 = add i32 %192, 1
  store i32 %inc.i.i25, ptr %seq.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %lock.i.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %h2c_pkt.i) #9
  br label %cleanup

cleanup:                                          ; preds = %rtw_fw_set_scan_offload.exit, %rtw_hw_scan_prehandle.exit.thread47, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %rtw_fw_set_scan_offload.exit ], [ %ret.0.i.ph, %rtw_hw_scan_prehandle.exit.thread47 ], [ -12, %if.then6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hw_scan_abort(ptr noundef %rtwdev, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  %info.i = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %feature1.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %feature1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %feature1.i, align 4
  %and.i = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @rtw_hw_scan_offload(ptr noundef %rtwdev, ptr noundef %vif, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #9
  %2 = getelementptr inbounds i8, ptr %info.i, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -65025, ptr %2, align 8
  %4 = call ptr @memset(ptr %info.i, i32 0, i32 14)
  %tobool3.not.i = icmp eq ptr %vif, null
  br i1 %tobool3.not.i, label %if.end.rtw_hw_scan_complete.exit_crit_edge, label %if.end.i

if.end.rtw_hw_scan_complete.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtw_hw_scan_complete.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %hal.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5
  %5 = ptrtoint ptr %hal.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hal.i, align 8
  %or.i = or i32 %6, 128
  store i32 %or.i, ptr %hal.i, align 8
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %7 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write32.i.i, align 4
  tail call void %10(ptr noundef %rtwdev, i32 noundef 1544, i32 noundef %or.i) #9
  tail call void @rtw_core_scan_complete(ptr noundef %rtwdev, ptr noundef nonnull %vif) #9
  %11 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rtwdev, align 8
  tail call void @ieee80211_wake_queues(ptr noundef %12) #9
  %13 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rtwdev, align 8
  call void @ieee80211_scan_completed(ptr noundef %14, ptr noundef nonnull %info.i) #9
  %scan_req.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 27
  %15 = ptrtoint ptr %scan_req.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %scan_req.i, align 8
  %scan_ies.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 28
  %16 = ptrtoint ptr %scan_ies.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %scan_ies.i, align 4
  %scan_info.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 3
  %17 = ptrtoint ptr %scan_info.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %scan_info.i, align 4
  br label %rtw_hw_scan_complete.exit

rtw_hw_scan_complete.exit:                        ; preds = %if.end.i, %if.end.rtw_hw_scan_complete.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #9
  br label %return

return:                                           ; preds = %rtw_hw_scan_complete.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hw_scan_status_report(ptr noundef %rtwdev, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  %info.i = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %scan_info = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 3
  %0 = ptrtoint ptr %scan_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scan_info, align 4
  %flags = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 38
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %5 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cb.i, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %6
  %arrayidx = getelementptr %struct.rtw_c2h_cmd, ptr %add.ptr.i, i32 2
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp = icmp ne i8 %10, 0
  %frombool.i = zext i1 %cmp to i8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #9
  %11 = getelementptr inbounds i8, ptr %info.i, i32 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %11, align 8
  %aborted1.i = getelementptr inbounds %struct.cfg80211_scan_info, ptr %info.i, i32 0, i32 2
  %13 = call ptr @memset(ptr %info.i, i32 0, i32 14)
  %14 = ptrtoint ptr %aborted1.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool.i, ptr %aborted1.i, align 2
  %tobool3.not.i = icmp eq ptr %1, null
  br i1 %tobool3.not.i, label %if.end.rtw_hw_scan_complete.exit_crit_edge, label %if.end.i

if.end.rtw_hw_scan_complete.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtw_hw_scan_complete.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %hal.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5
  %15 = ptrtoint ptr %hal.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hal.i, align 8
  %or.i = or i32 %16, 128
  store i32 %or.i, ptr %hal.i, align 8
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %17 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write32.i.i, align 4
  tail call void %20(ptr noundef %rtwdev, i32 noundef 1544, i32 noundef %or.i) #9
  tail call void @rtw_core_scan_complete(ptr noundef %rtwdev, ptr noundef nonnull %1) #9
  %21 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rtwdev, align 8
  tail call void @ieee80211_wake_queues(ptr noundef %22) #9
  %23 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rtwdev, align 8
  call void @ieee80211_scan_completed(ptr noundef %24, ptr noundef nonnull %info.i) #9
  %scan_req.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 27
  %25 = ptrtoint ptr %scan_req.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %scan_req.i, align 8
  %scan_ies.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 1, i32 1, i32 28
  %26 = ptrtoint ptr %scan_ies.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %scan_ies.i, align 4
  %27 = ptrtoint ptr %scan_info to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %scan_info, align 4
  br label %rtw_hw_scan_complete.exit

rtw_hw_scan_complete.exit:                        ; preds = %if.end.i, %if.end.rtw_hw_scan_complete.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #9
  br i1 %cmp, label %do.end, label %rtw_hw_scan_complete.exit.cleanup_crit_edge

rtw_hw_scan_complete.exit.cleanup_crit_edge:      ; preds = %rtw_hw_scan_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %rtw_hw_scan_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv3 = zext i8 %10 to i32
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull @.str.40, i32 noundef %conv3) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %rtw_hw_scan_complete.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtw_store_op_chan(ptr nocapture noundef %rtwdev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_channel = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 7
  %0 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %current_channel, align 1
  %op_chan = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %op_chan to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %op_chan, align 2
  %current_band_width = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 9
  %3 = ptrtoint ptr %current_band_width to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %current_band_width, align 1
  %op_bw = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 3, i32 4
  %5 = ptrtoint ptr %op_bw to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %op_bw, align 1
  %current_primary_channel_index = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 8
  %6 = ptrtoint ptr %current_primary_channel_index to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %current_primary_channel_index, align 2
  %op_pri_ch_idx = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %op_pri_ch_idx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %op_pri_ch_idx, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_hw_scan_chan_switch(ptr noundef %rtwdev, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb.i, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %1
  %arrayidx = getelementptr %struct.rtw_c2h_cmd, ptr %add.ptr.i, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %arrayidx3 = getelementptr %struct.rtw_c2h_cmd, ptr %add.ptr.i, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  %arrayidx5 = getelementptr %struct.rtw_c2h_cmd, ptr %add.ptr.i, i32 3
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5, align 1
  %10 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.101)
  switch i8 %7, label %entry.if.end62_crit_edge [
    i8 1, label %if.then
    i8 0, label %if.then15
  ]

entry.if.end62_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then:                                          ; preds = %entry
  %op_chan.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %op_chan.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %op_chan.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %5)
  %cmp.i = icmp eq i8 %12, %5
  br i1 %cmp.i, label %if.then8, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rtwdev, align 8
  tail call void @ieee80211_wake_queues(ptr noundef %14) #9
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then.if.end_crit_edge
  %current_channel = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 7
  %15 = ptrtoint ptr %current_channel to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %5, ptr %current_channel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %5)
  %cmp10 = icmp ugt i8 %5, 14
  %conv12 = select i1 %cmp10, i8 2, i8 1
  %current_band_type = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 10
  %16 = ptrtoint ptr %current_band_type to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv12, ptr %current_band_type, align 4
  br label %if.end62

if.then15:                                        ; preds = %entry
  %17 = add i8 %5, -36
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %17)
  %18 = icmp ult i8 %17, 13
  %19 = add i8 %5, -52
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %19)
  %20 = icmp ult i8 %19, 13
  %or.cond = or i1 %18, %20
  %21 = add i8 %5, -100
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %21)
  %22 = icmp ult i8 %21, 45
  %or.cond98 = select i1 %or.cond, i1 true, i1 %22
  %23 = add i8 %5, 107
  call void @__sanitizer_cov_trace_const_cmp1(i8 29, i8 %23)
  %24 = icmp ult i8 %23, 29
  %or.cond100 = select i1 %or.cond98, i1 true, i1 %24
  br i1 %or.cond100, label %if.then15.if.end56.sink.split_crit_edge, label %if.else46

if.then15.if.end56.sink.split_crit_edge:          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.sink.split

if.else46:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %5)
  %cmp48 = icmp ult i8 %5, 15
  br i1 %cmp48, label %if.then50, label %if.else46.if.end56_crit_edge

if.else46.if.end56_crit_edge:                     ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then50:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 38
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags, align 4
  %27 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not = icmp eq i32 %27, 0
  %. = select i1 %tobool.not, i8 3, i8 1
  br label %if.end56.sink.split

if.end56.sink.split:                              ; preds = %if.then50, %if.then15.if.end56.sink.split_crit_edge
  %..sink = phi i8 [ %., %if.then50 ], [ 2, %if.then15.if.end56.sink.split_crit_edge ]
  tail call void @rtw_coex_switchband_notify(ptr noundef %rtwdev, i8 noundef zeroext %..sink) #9
  br label %if.end56

if.end56:                                         ; preds = %if.end56.sink.split, %if.else46.if.end56_crit_edge
  %op_chan.i94 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %op_chan.i94 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %op_chan.i94, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %5)
  %cmp.i95 = icmp eq i8 %29, %5
  br i1 %cmp.i95, label %if.then58, label %if.end56.if.end62_crit_edge

if.end56.if.end62_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then58:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rtwdev, align 8
  tail call void @ieee80211_stop_queues(ptr noundef %31) #9
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %if.end56.if.end62_crit_edge, %if.end, %entry.if.end62_crit_edge
  %conv = zext i8 %7 to i32
  %conv63 = zext i8 %5 to i32
  %conv64 = zext i8 %9 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 65536, ptr noundef nonnull @.str.43, i32 noundef %conv63, i32 noundef %conv, i32 noundef %conv64) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_coex_switchband_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_fw_bcn_filter_notify_vif_iter(ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %mac, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %payload2 = getelementptr inbounds %struct.rtw_beacon_filter_iter_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %payload2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %payload2, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %and = and i8 %5, 15
  %conv11 = zext i8 %and to i32
  %6 = zext i32 %conv11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %conv11, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb16
    i32 2, label %sw.bb17
    i32 3, label %sw.bb18
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx8 = getelementptr i8, ptr %3, i32 2
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx8, align 1
  %sub = add i8 %8, -100
  %9 = lshr i8 %5, 4
  %.lobit = and i8 %9, 1
  %conv14 = zext i8 %.lobit to i32
  %conv15 = sext i8 %sub to i32
  tail call void @ieee80211_cqm_rssi_notify(ptr noundef %vif, i32 noundef %conv14, i32 noundef %conv15, i32 noundef 3264) #9
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ieee80211_connection_loss(ptr noundef %vif) #9
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %beacon_loss = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 32
  %10 = ptrtoint ptr %beacon_loss to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %beacon_loss, align 1
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %beacon_loss19 = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 32
  %11 = ptrtoint ptr %beacon_loss19 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %beacon_loss19, align 1
  tail call void @rtw_leave_lps(ptr noundef %1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_interfaces(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_cqm_rssi_notify(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_connection_loss(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_leave_lps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_stations_atomic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_fw_ra_report_iter(ptr nocapture noundef readonly %data, ptr noundef %sta) #0 align 64 {
entry:
  %mcs = alloca i8, align 1
  %nss = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mcs) #9
  %0 = ptrtoint ptr %mcs to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %mcs, align 1, !annotation !214
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %nss) #9
  %1 = ptrtoint ptr %nss to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %nss, align 1, !annotation !214
  %payload = getelementptr inbounds %struct.rtw_fw_iter_ra_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %payload, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %mac_id1 = getelementptr inbounds %struct.rtw_sta_info, ptr %drv_priv, i32 0, i32 4
  %6 = ptrtoint ptr %mac_id1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mac_id1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %5)
  %cmp.not = icmp eq i8 %7, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ra_report = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 3, i32 2
  %8 = ptrtoint ptr %ra_report to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %ra_report, align 4
  %9 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %payload, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %and = and i8 %12, 127
  %arrayidx14 = getelementptr i8, ptr %10, i32 6
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %and)
  %cmp16 = icmp ult i8 %and, 12
  br i1 %cmp16, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call zeroext i16 @rtw_desc_to_bitrate(i8 noundef zeroext %and) #9
  %legacy = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 4
  %15 = ptrtoint ptr %legacy to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %call, ptr %legacy, align 2
  br label %legacy84

if.end21:                                         ; preds = %if.end
  %conv22 = zext i8 %and to i16
  call void @rtw_desc_to_mcsrate(i16 noundef zeroext %conv22, ptr noundef nonnull %mcs, ptr noundef nonnull %nss) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %and)
  %cmp24 = icmp ugt i8 %and, 43
  %16 = ptrtoint ptr %ra_report to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ra_report, align 4
  %. = select i1 %cmp24, i8 2, i8 1
  %18 = or i8 %17, %.
  store i8 %18, ptr %ra_report, align 4
  %19 = ptrtoint ptr %mcs to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mcs, align 1
  %mcs50 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 5
  %21 = ptrtoint ptr %mcs50 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %mcs50, align 1
  %22 = ptrtoint ptr %nss to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %nss, align 1
  %nss53 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 5
  %24 = ptrtoint ptr %nss53 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %nss53, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %tobool.not = icmp sgt i8 %12, -1
  br i1 %tobool.not, label %if.end21.if.end62_crit_edge, label %if.then55

if.end21.if.end62_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then55:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %25 = or i8 %18, 4
  %26 = ptrtoint ptr %ra_report to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %ra_report, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then55, %if.end21.if.end62_crit_edge
  %27 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.103)
  switch i8 %14, label %if.else78 [
    i8 2, label %if.then66
    i8 1, label %if.then74
  ]

if.then66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %bw69 = getelementptr inbounds %struct.rate_info, ptr %ra_report, i32 0, i32 4
  %28 = ptrtoint ptr %bw69 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 4, ptr %bw69, align 1
  br label %legacy84

if.then74:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %bw77 = getelementptr inbounds %struct.rate_info, ptr %ra_report, i32 0, i32 4
  %29 = ptrtoint ptr %bw77 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 3, ptr %bw77, align 1
  br label %legacy84

if.else78:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %bw81 = getelementptr inbounds %struct.rate_info, ptr %ra_report, i32 0, i32 4
  %30 = ptrtoint ptr %bw81 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %bw81, align 1
  br label %legacy84

legacy84:                                         ; preds = %if.else78, %if.then74, %if.then66, %if.then18
  %call87 = call i32 @cfg80211_calculate_bitrate(ptr noundef %ra_report) #9
  %desc_rate = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 5, i32 2, i32 2
  %31 = ptrtoint ptr %desc_rate to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %and, ptr %desc_rate, align 4
  %bit_rate90 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 5, i32 2
  %32 = ptrtoint ptr %bit_rate90 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call87, ptr %bit_rate90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 550, i32 %call87)
  %cmp.i = icmp ult i32 %call87, 550
  br i1 %cmp.i, label %legacy84.get_max_amsdu_len.exit_crit_edge, label %if.end.i

legacy84.get_max_amsdu_len.exit_crit_edge:        ; preds = %legacy84
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_max_amsdu_len.exit

if.end.i:                                         ; preds = %legacy84
  call void @__sanitizer_cov_trace_const_cmp4(i32 1800, i32 %call87)
  %cmp1.i = icmp ult i32 %call87, 1800
  br i1 %cmp1.i, label %if.end.i.get_max_amsdu_len.exit_crit_edge, label %if.end3.i

if.end.i.get_max_amsdu_len.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_max_amsdu_len.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %call87)
  %cmp4.i = icmp ult i32 %call87, 4000
  br i1 %cmp4.i, label %if.end3.i.get_max_amsdu_len.exit_crit_edge, label %if.end6.i

if.end3.i.get_max_amsdu_len.exit_crit_edge:       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_max_amsdu_len.exit

if.end6.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000, i32 %call87)
  %cmp7.i = icmp ult i32 %call87, 7000
  %..i = select i1 %cmp7.i, i16 3500, i16 0
  br label %get_max_amsdu_len.exit

get_max_amsdu_len.exit:                           ; preds = %if.end6.i, %if.end3.i.get_max_amsdu_len.exit_crit_edge, %if.end.i.get_max_amsdu_len.exit_crit_edge, %legacy84.get_max_amsdu_len.exit_crit_edge
  %retval.0.i = phi i16 [ 1, %legacy84.get_max_amsdu_len.exit_crit_edge ], [ 1200, %if.end.i.get_max_amsdu_len.exit_crit_edge ], [ 2600, %if.end3.i.get_max_amsdu_len.exit_crit_edge ], [ %..i, %if.end6.i ]
  %max_rc_amsdu_len = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 24
  %33 = ptrtoint ptr %max_rc_amsdu_len to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %retval.0.i, ptr %max_rc_amsdu_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %get_max_amsdu_len.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %nss) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mcs) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rtw_desc_to_bitrate(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_desc_to_mcsrate(i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_calculate_bitrate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rtw_get_rsvd_page_skb(ptr noundef %hw, ptr nocapture noundef %rsvd_pkt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.rtw_rsvd_page, ptr %rsvd_pkt, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @__alloc_skb(i32 noundef 1, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #9
  br label %cleanup

if.end3:                                          ; preds = %entry
  %rtwvif4 = getelementptr inbounds %struct.rtw_rsvd_page, ptr %rsvd_pkt, i32 0, i32 1
  %2 = ptrtoint ptr %rtwvif4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtwvif4, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %add.ptr.i = getelementptr i8, ptr %3, i32 -848
  %4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %1, label %if.end7.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb11
    i32 3, label %sw.bb13
    i32 4, label %sw.bb15
    i32 5, label %sw.bb17
    i32 6, label %sw.bb19
    i32 7, label %sw.bb21
    i32 8, label %sw.bb23
    i32 9, label %sw.bb38
    i32 10, label %sw.bb40
  ]

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %call.i78 = tail call ptr @ieee80211_beacon_get_tim(ptr noundef %hw, ptr noundef %add.ptr.i, ptr noundef null, ptr noundef null) #9
  br label %cleanup

sw.bb11:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call ptr @ieee80211_pspoll_get(ptr noundef %hw, ptr noundef %add.ptr.i) #9
  br label %cleanup

sw.bb13:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call ptr @ieee80211_proberesp_get(ptr noundef %hw, ptr noundef %add.ptr.i) #9
  br label %cleanup

sw.bb15:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = tail call ptr @ieee80211_nullfunc_get(ptr noundef %hw, ptr noundef %add.ptr.i, i1 noundef zeroext false) #9
  br label %cleanup

sw.bb17:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call ptr @ieee80211_nullfunc_get(ptr noundef %hw, ptr noundef %add.ptr.i, i1 noundef zeroext true) #9
  br label %cleanup

sw.bb19:                                          ; preds = %if.end7
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 8
  %chip1.i = getelementptr inbounds %struct.rtw_dev, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip1.i, align 4
  %tx_pkt_desc_sz.i = getelementptr inbounds %struct.rtw_chip_info, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %tx_pkt_desc_sz.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tx_pkt_desc_sz.i, align 4
  %conv.i = zext i8 %10 to i32
  %add.i = add nuw nsw i32 %conv.i, 169
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %sw.bb19.cleanup_crit_edge, label %if.end.i

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %tx_pkt_desc_sz.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tx_pkt_desc_sz.i, align 4
  %conv4.i = zext i8 %12 to i32
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %13 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %conv4.i
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %15 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %16, i32 %conv4.i
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call.i35.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 169) #9
  %17 = call ptr @memset(ptr %call.i35.i, i32 0, i32 169)
  %dpk_ch.i = getelementptr inbounds %struct.rtw_dev, ptr %6, i32 0, i32 13, i32 42, i32 14
  %18 = ptrtoint ptr %dpk_ch.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dpk_ch.i, align 1
  %dpk_ch6.i = getelementptr inbounds %struct.rtw_lps_pg_dpk_hdr, ptr %call.i35.i, i32 0, i32 4
  %20 = ptrtoint ptr %dpk_ch6.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %dpk_ch6.i, align 1
  %dpk_path_ok.i = getelementptr inbounds %struct.rtw_dev, ptr %6, i32 0, i32 13, i32 42, i32 2
  %21 = ptrtoint ptr %dpk_path_ok.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dpk_path_ok.i, align 4
  %conv7.i = trunc i32 %22 to i16
  %23 = ptrtoint ptr %call.i35.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %conv7.i, ptr %call.i35.i, align 1
  %dpk_txagc.i = getelementptr inbounds %struct.rtw_lps_pg_dpk_hdr, ptr %call.i35.i, i32 0, i32 1
  %dpk_txagc9.i = getelementptr inbounds %struct.rtw_dev, ptr %6, i32 0, i32 13, i32 42, i32 8
  %24 = ptrtoint ptr %dpk_txagc9.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %dpk_txagc9.i, align 4
  %26 = ptrtoint ptr %dpk_txagc.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %25, ptr %dpk_txagc.i, align 1
  %dpk_gs.i = getelementptr inbounds %struct.rtw_lps_pg_dpk_hdr, ptr %call.i35.i, i32 0, i32 2
  %dpk_gs12.i = getelementptr inbounds %struct.rtw_dev, ptr %6, i32 0, i32 13, i32 42, i32 10
  %27 = ptrtoint ptr %dpk_gs12.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dpk_gs12.i, align 4
  %29 = ptrtoint ptr %dpk_gs.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %dpk_gs.i, align 1
  %coef.i = getelementptr inbounds %struct.rtw_lps_pg_dpk_hdr, ptr %call.i35.i, i32 0, i32 3
  %coef15.i = getelementptr inbounds %struct.rtw_dev, ptr %6, i32 0, i32 13, i32 42, i32 9
  %30 = call ptr @memcpy(ptr %coef.i, ptr %coef15.i, i32 160)
  br label %cleanup

sw.bb21:                                          ; preds = %if.end7
  %priv.i79 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %31 = ptrtoint ptr %priv.i79 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv.i79, align 8
  %chip1.i80 = getelementptr inbounds %struct.rtw_dev, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %chip1.i80 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chip1.i80, align 4
  %tx_pkt_desc_sz.i81 = getelementptr inbounds %struct.rtw_chip_info, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %tx_pkt_desc_sz.i81 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %tx_pkt_desc_sz.i81, align 4
  %conv.i82 = zext i8 %36 to i32
  %add.i83 = add nuw nsw i32 %conv.i82, 16
  %call.i.i84 = tail call ptr @__alloc_skb(i32 noundef %add.i83, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #9
  %tobool.not.i85 = icmp eq ptr %call.i.i84, null
  br i1 %tobool.not.i85, label %sw.bb21.cleanup_crit_edge, label %if.end.i91

sw.bb21.cleanup_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i91:                                       ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %tx_pkt_desc_sz.i81 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %tx_pkt_desc_sz.i81, align 4
  %conv3.i = zext i8 %38 to i32
  %data.i.i86 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i84, i32 0, i32 19
  %39 = ptrtoint ptr %data.i.i86 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i.i86, align 4
  %add.ptr.i.i87 = getelementptr i8, ptr %40, i32 %conv3.i
  store ptr %add.ptr.i.i87, ptr %data.i.i86, align 4
  %tail.i.i88 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i84, i32 0, i32 16
  %41 = ptrtoint ptr %tail.i.i88 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i.i88, align 8
  %add.ptr1.i.i89 = getelementptr i8, ptr %42, i32 %conv3.i
  store ptr %add.ptr1.i.i89, ptr %tail.i.i88, align 8
  %call.i40.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i84, i32 noundef 16) #9
  %43 = call ptr @memset(ptr %call.i40.i, i32 0, i32 16)
  %rsvd_drv_pg_num.i = getelementptr inbounds %struct.rtw_dev, ptr %32, i32 0, i32 6, i32 2
  %44 = ptrtoint ptr %rsvd_drv_pg_num.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %rsvd_drv_pg_num.i, align 4
  %conv5.i = trunc i16 %45 to i8
  %tx_bu_page_count.i = getelementptr inbounds %struct.rtw_lps_pg_info_hdr, ptr %call.i40.i, i32 0, i32 5
  %46 = ptrtoint ptr %tx_bu_page_count.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv5.i, ptr %tx_bu_page_count.i, align 1
  %mac_id_map.i = getelementptr inbounds %struct.rtw_dev, ptr %32, i32 0, i32 37
  %call6.i = tail call i32 @_find_first_bit_be(ptr noundef %mac_id_map.i, i32 noundef 32) #9
  %conv7.i90 = trunc i32 %call6.i to i8
  %47 = ptrtoint ptr %call.i40.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv7.i90, ptr %call.i40.i, align 1
  %sec_cam.i = getelementptr inbounds %struct.rtw_lps_pg_info_hdr, ptr %call.i40.i, i32 0, i32 7
  %call9.i = tail call zeroext i8 @rtw_sec_cam_pg_backup(ptr noundef %32, ptr noundef %sec_cam.i) #9
  %sec_cam_count.i = getelementptr inbounds %struct.rtw_lps_pg_info_hdr, ptr %call.i40.i, i32 0, i32 4
  %48 = ptrtoint ptr %sec_cam_count.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %call9.i, ptr %sec_cam_count.i, align 1
  %pattern_cnt.i = getelementptr inbounds %struct.rtw_dev, ptr %32, i32 0, i32 42, i32 3
  %49 = ptrtoint ptr %pattern_cnt.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %pattern_cnt.i, align 1
  %pattern_count.i = getelementptr inbounds %struct.rtw_lps_pg_info_hdr, ptr %call.i40.i, i32 0, i32 2
  %51 = ptrtoint ptr %pattern_count.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %pattern_count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call9.i)
  %cmp.i = icmp ne i8 %call9.i, 0
  %sec_cam_backup.i = getelementptr inbounds %struct.rtw_dev, ptr %32, i32 0, i32 30, i32 8
  %frombool.i = zext i1 %cmp.i to i8
  %52 = ptrtoint ptr %sec_cam_backup.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %frombool.i, ptr %sec_cam_backup.i, align 4
  %53 = ptrtoint ptr %pattern_cnt.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %pattern_cnt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp15.i = icmp ne i8 %54, 0
  %pattern_cam_backup.i = getelementptr inbounds %struct.rtw_dev, ptr %32, i32 0, i32 30, i32 9
  %frombool17.i = zext i1 %cmp15.i to i8
  %55 = ptrtoint ptr %pattern_cam_backup.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %frombool17.i, ptr %pattern_cam_backup.i, align 1
  br label %cleanup

sw.bb23:                                          ; preds = %if.end7
  %ssid24 = getelementptr inbounds %struct.rtw_rsvd_page, ptr %rsvd_pkt, i32 0, i32 7
  %56 = ptrtoint ptr %ssid24 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ssid24, align 4
  %tobool25.not = icmp eq ptr %57, null
  %addr30 = getelementptr i8, ptr %3, i32 -48
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #11
  %ssid_len = getelementptr inbounds %struct.cfg80211_ssid, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ssid_len, align 1
  %conv = zext i8 %59 to i32
  %call29 = tail call ptr @ieee80211_probereq_get(ptr noundef %hw, ptr noundef %addr30, ptr noundef nonnull %57, i32 noundef %conv, i32 noundef 0) #9
  br label %if.end33

if.else:                                          ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #11
  %call32 = tail call ptr @ieee80211_probereq_get(ptr noundef %hw, ptr noundef %addr30, ptr noundef null, i32 noundef 0, i32 noundef 0) #9
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then26
  %skb_new.0 = phi ptr [ %call29, %if.then26 ], [ %call32, %if.else ]
  %tobool34.not = icmp eq ptr %skb_new.0, null
  br i1 %tobool34.not, label %if.end33.cleanup_crit_edge, label %if.then35

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb_new.0, i32 0, i32 6
  %60 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len, align 4
  %conv36 = trunc i32 %61 to i16
  %probe_req_size = getelementptr inbounds %struct.rtw_rsvd_page, ptr %rsvd_pkt, i32 0, i32 8
  %62 = ptrtoint ptr %probe_req_size to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv36, ptr %probe_req_size, align 4
  br label %cleanup

sw.bb38:                                          ; preds = %if.end7
  %priv.i92 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %63 = ptrtoint ptr %priv.i92 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %priv.i92, align 8
  %chip1.i93 = getelementptr inbounds %struct.rtw_dev, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %chip1.i93 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %chip1.i93, align 4
  %pno_req2.i = getelementptr inbounds %struct.rtw_dev, ptr %64, i32 0, i32 42, i32 6
  %67 = ptrtoint ptr %pno_req2.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %pno_req2.i, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i94 = icmp eq i8 %68, 0
  br i1 %tobool.not.i94, label %sw.bb38.cleanup_crit_edge, label %lor.lhs.false.i

sw.bb38.cleanup_crit_edge:                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %sw.bb38
  %match_set_cnt.i = getelementptr inbounds %struct.rtw_dev, ptr %64, i32 0, i32 42, i32 6, i32 1
  %69 = ptrtoint ptr %match_set_cnt.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %match_set_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool3.not.i = icmp eq i32 %70, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i99

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i99:                                       ; preds = %lor.lhs.false.i
  %mul.i = shl i32 %70, 5
  %add.i95 = add i32 %mul.i, 72
  %tx_pkt_desc_sz.i96 = getelementptr inbounds %struct.rtw_chip_info, ptr %66, i32 0, i32 4
  %71 = ptrtoint ptr %tx_pkt_desc_sz.i96 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %tx_pkt_desc_sz.i96, align 4
  %conv.i97 = zext i8 %72 to i32
  %add5.i = add i32 %add.i95, %conv.i97
  %call.i.i98 = tail call ptr @__alloc_skb(i32 noundef %add5.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #9
  %tobool6.not.i = icmp eq ptr %call.i.i98, null
  br i1 %tobool6.not.i, label %if.end.i99.cleanup_crit_edge, label %if.end8.i

if.end.i99.cleanup_crit_edge:                     ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i99
  %73 = ptrtoint ptr %tx_pkt_desc_sz.i96 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %tx_pkt_desc_sz.i96, align 4
  %conv10.i = zext i8 %74 to i32
  %data.i.i100 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i98, i32 0, i32 19
  %75 = ptrtoint ptr %data.i.i100 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data.i.i100, align 4
  %add.ptr.i.i101 = getelementptr i8, ptr %76, i32 %conv10.i
  store ptr %add.ptr.i.i101, ptr %data.i.i100, align 4
  %tail.i.i102 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i98, i32 0, i32 16
  %77 = ptrtoint ptr %tail.i.i102 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tail.i.i102, align 8
  %add.ptr1.i.i103 = getelementptr i8, ptr %78, i32 %conv10.i
  store ptr %add.ptr1.i.i103, ptr %tail.i.i102, align 8
  %call.i101.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i98, i32 noundef 72) #9
  %79 = call ptr @memset(ptr %call.i101.i, i32 0, i32 72)
  %80 = ptrtoint ptr %match_set_cnt.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %match_set_cnt.i, align 4
  %conv13.i = trunc i32 %81 to i8
  %82 = ptrtoint ptr %call.i101.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv13.i, ptr %call.i101.i, align 1
  %83 = load i32, ptr %match_set_cnt.i, align 4
  %conv15.i = trunc i32 %83 to i8
  %hidden_ap_count.i = getelementptr inbounds %struct.rtw_nlo_info_hdr, ptr %call.i101.i, i32 0, i32 1
  %84 = ptrtoint ptr %hidden_ap_count.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv15.i, ptr %hidden_ap_count.i, align 1
  %pattern_check.i = getelementptr inbounds %struct.rtw_nlo_info_hdr, ptr %call.i101.i, i32 0, i32 3
  %85 = ptrtoint ptr %pattern_check.i to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 -1515870811, ptr %pattern_check.i, align 1
  %86 = load i32, ptr %match_set_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp105.not.i = icmp eq i32 %86, 0
  br i1 %cmp105.not.i, label %if.end8.i.cleanup_crit_edge, label %for.body.lr.ph.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end8.i
  %match_sets.i = getelementptr inbounds %struct.rtw_dev, ptr %64, i32 0, i32 42, i32 6, i32 2
  br label %for.body.i

for.cond21.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp23107.not.i = icmp eq i32 %93, 0
  br i1 %cmp23107.not.i, label %for.cond21.preheader.i.cleanup_crit_edge, label %for.body25.lr.ph.i

for.cond21.preheader.i.cleanup_crit_edge:         ; preds = %for.cond21.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body25.lr.ph.i:                               ; preds = %for.cond21.preheader.i
  %rsvd_page_list.i.i = getelementptr inbounds %struct.rtw_dev, ptr %64, i32 0, i32 19
  br label %for.body25.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0106.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %87 = ptrtoint ptr %match_sets.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %match_sets.i, align 4
  %ssid_len.i = getelementptr %struct.cfg80211_match_set, ptr %88, i32 %i.0106.i, i32 0, i32 1
  %89 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %ssid_len.i, align 4
  %arrayidx20.i = getelementptr %struct.rtw_nlo_info_hdr, ptr %call.i101.i, i32 0, i32 5, i32 %i.0106.i
  %91 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %arrayidx20.i, align 1
  %inc.i = add nuw i32 %i.0106.i, 1
  %92 = ptrtoint ptr %match_set_cnt.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %match_set_cnt.i, align 4
  %cmp.i104 = icmp ult i32 %inc.i, %93
  br i1 %cmp.i104, label %for.body.i.for.body.i_crit_edge, label %for.cond21.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond37.preheader.i:                           ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp39109.not.i = icmp eq i32 %112, 0
  br i1 %cmp39109.not.i, label %for.cond37.preheader.i.cleanup_crit_edge, label %for.cond37.preheader.i.for.body41.i_crit_edge

for.cond37.preheader.i.for.body41.i_crit_edge:    ; preds = %for.cond37.preheader.i
  br label %for.body41.i

for.cond37.preheader.i.cleanup_crit_edge:         ; preds = %for.cond37.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body25.i:                                     ; preds = %if.end32.i.for.body25.i_crit_edge, %for.body25.lr.ph.i
  %i.1108.i = phi i32 [ 0, %for.body25.lr.ph.i ], [ %inc35.i, %if.end32.i.for.body25.i_crit_edge ]
  %94 = ptrtoint ptr %match_sets.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %match_sets.i, align 4
  %arrayidx27.i = getelementptr %struct.cfg80211_match_set, ptr %95, i32 %i.1108.i
  %96 = ptrtoint ptr %rsvd_page_list.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %.pn24.i.i = load ptr, ptr %rsvd_page_list.i.i, align 4
  %cmp.not25.i.i = icmp eq ptr %.pn24.i.i, %rsvd_page_list.i.i
  br i1 %cmp.not25.i.i, label %for.body25.i.do.end.i_crit_edge, label %for.body.lr.ph.i.i

for.body25.i.do.end.i_crit_edge:                  ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.body.lr.ph.i.i:                               ; preds = %for.body25.i
  %tobool.not.i.i = icmp eq ptr %arrayidx27.i, null
  %ssid_len3.i.i.i = getelementptr inbounds %struct.cfg80211_ssid, ptr %arrayidx27.i, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn27.i.i = phi ptr [ %.pn24.i.i, %for.body.lr.ph.i.i ], [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %location.026.i.i = phi i8 [ 0, %for.body.lr.ph.i.i ], [ %location.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %type.i.i = getelementptr i8, ptr %.pn27.i.i, i32 12
  %97 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %98)
  %cmp2.not.i.i = icmp eq i32 %98, 8
  br i1 %cmp2.not.i.i, label %if.end.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %ssid3.i.i = getelementptr i8, ptr %.pn27.i.i, i32 20
  %99 = ptrtoint ptr %ssid3.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ssid3.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %100, null
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.if.then6.i.i_crit_edge, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

land.lhs.true.i.i.if.then6.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  br i1 %tobool4.not.i.i, label %lor.lhs.false.i.i.for.inc.i.i_crit_edge, label %lor.lhs.false2.i.i.i

lor.lhs.false.i.i.for.inc.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

lor.lhs.false2.i.i.i:                             ; preds = %lor.lhs.false.i.i
  %ssid_len.i.i.i = getelementptr inbounds %struct.cfg80211_ssid, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %ssid_len.i.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %ssid_len.i.i.i, align 1
  %103 = ptrtoint ptr %ssid_len3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %ssid_len3.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %102, i8 %104)
  %cmp.not.i.i.i = icmp eq i8 %102, %104
  br i1 %cmp.not.i.i.i, label %rtw_ssid_equal.exit.i.i, label %lor.lhs.false2.i.i.i.for.inc.i.i_crit_edge

lor.lhs.false2.i.i.i.for.inc.i.i_crit_edge:       ; preds = %lor.lhs.false2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

rtw_ssid_equal.exit.i.i:                          ; preds = %lor.lhs.false2.i.i.i
  %conv.i.i.i = zext i8 %102 to i32
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %100, ptr nonnull %arrayidx27.i, i32 %conv.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %tobool10.not.i.i.i, label %rtw_ssid_equal.exit.i.i.if.then6.i.i_crit_edge, label %rtw_ssid_equal.exit.i.i.for.inc.i.i_crit_edge

rtw_ssid_equal.exit.i.i.for.inc.i.i_crit_edge:    ; preds = %rtw_ssid_equal.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

rtw_ssid_equal.exit.i.i.if.then6.i.i_crit_edge:   ; preds = %rtw_ssid_equal.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i.i

if.then6.i.i:                                     ; preds = %rtw_ssid_equal.exit.i.i.if.then6.i.i_crit_edge, %land.lhs.true.i.i.if.then6.i.i_crit_edge
  %page.i.i = getelementptr i8, ptr %.pn27.i.i, i32 16
  %105 = ptrtoint ptr %page.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %page.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then6.i.i, %rtw_ssid_equal.exit.i.i.for.inc.i.i_crit_edge, %lor.lhs.false2.i.i.i.for.inc.i.i_crit_edge, %lor.lhs.false.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %location.1.i.i = phi i8 [ %location.026.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %106, %if.then6.i.i ], [ %location.026.i.i, %rtw_ssid_equal.exit.i.i.for.inc.i.i_crit_edge ], [ %location.026.i.i, %lor.lhs.false2.i.i.i.for.inc.i.i_crit_edge ], [ %location.026.i.i, %lor.lhs.false.i.i.for.inc.i.i_crit_edge ], [ %location.026.i.i, %land.lhs.true.i.i.for.inc.i.i_crit_edge ]
  %107 = ptrtoint ptr %.pn27.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %.pn.i.i = load ptr, ptr %.pn27.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %rsvd_page_list.i.i
  br i1 %cmp.not.i.i, label %rtw_get_rsvd_page_probe_req_location.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

rtw_get_rsvd_page_probe_req_location.exit.i:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %location.1.i.i)
  %tobool30.not.i = icmp eq i8 %location.1.i.i, 0
  br i1 %tobool30.not.i, label %rtw_get_rsvd_page_probe_req_location.exit.i.do.end.i_crit_edge, label %if.end32.i

rtw_get_rsvd_page_probe_req_location.exit.i.do.end.i_crit_edge: ; preds = %rtw_get_rsvd_page_probe_req_location.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %rtw_get_rsvd_page_probe_req_location.exit.i.do.end.i_crit_edge, %for.body25.i.do.end.i_crit_edge
  %dev.i = getelementptr inbounds %struct.rtw_dev, ptr %64, i32 0, i32 1
  %108 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.75) #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i98, i32 noundef 0) #9
  br label %cleanup

if.end32.i:                                       ; preds = %rtw_get_rsvd_page_probe_req_location.exit.i
  %arrayidx33.i = getelementptr %struct.rtw_nlo_info_hdr, ptr %call.i101.i, i32 0, i32 8, i32 %i.1108.i
  %110 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %location.1.i.i, ptr %arrayidx33.i, align 1
  %inc35.i = add nuw i32 %i.1108.i, 1
  %111 = ptrtoint ptr %match_set_cnt.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %match_set_cnt.i, align 4
  %cmp23.i = icmp ult i32 %inc35.i, %112
  br i1 %cmp23.i, label %if.end32.i.for.body25.i_crit_edge, label %for.cond37.preheader.i

if.end32.i.for.body25.i_crit_edge:                ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body25.i

for.body41.i:                                     ; preds = %for.body41.i.for.body41.i_crit_edge, %for.cond37.preheader.i.for.body41.i_crit_edge
  %i.2110.i = phi i32 [ %inc54.i, %for.body41.i.for.body41.i_crit_edge ], [ 0, %for.cond37.preheader.i.for.body41.i_crit_edge ]
  %call.i102.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i98, i32 noundef 32) #9
  %113 = call ptr @memset(ptr %call.i102.i, i32 0, i32 32)
  %114 = ptrtoint ptr %match_sets.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %match_sets.i, align 4
  %arrayidx44.i = getelementptr %struct.cfg80211_match_set, ptr %115, i32 %i.2110.i
  %ssid_len51.i = getelementptr inbounds %struct.cfg80211_ssid, ptr %arrayidx44.i, i32 0, i32 1
  %116 = ptrtoint ptr %ssid_len51.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %ssid_len51.i, align 4
  %conv52.i = zext i8 %117 to i32
  %118 = call ptr @memcpy(ptr %call.i102.i, ptr %arrayidx44.i, i32 %conv52.i)
  %inc54.i = add nuw i32 %i.2110.i, 1
  %119 = ptrtoint ptr %match_set_cnt.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %match_set_cnt.i, align 4
  %cmp39.i = icmp ult i32 %inc54.i, %120
  br i1 %cmp39.i, label %for.body41.i.for.body41.i_crit_edge, label %for.body41.i.cleanup_crit_edge

for.body41.i.cleanup_crit_edge:                   ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body41.i.for.body41.i_crit_edge:              ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body41.i

sw.bb40:                                          ; preds = %if.end7
  %priv.i105 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %121 = ptrtoint ptr %priv.i105 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %priv.i105, align 8
  %chip1.i106 = getelementptr inbounds %struct.rtw_dev, ptr %122, i32 0, i32 4
  %123 = ptrtoint ptr %chip1.i106 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %chip1.i106, align 4
  %channels3.i = getelementptr inbounds %struct.rtw_dev, ptr %122, i32 0, i32 42, i32 6, i32 4
  %125 = ptrtoint ptr %channels3.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %channels3.i, align 4
  %channel_cnt.i = getelementptr inbounds %struct.rtw_dev, ptr %122, i32 0, i32 42, i32 6, i32 3
  %127 = ptrtoint ptr %channel_cnt.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %channel_cnt.i, align 4
  %conv.i107 = zext i8 %128 to i32
  %mul.i108 = shl nuw nsw i32 %conv.i107, 2
  %tx_pkt_desc_sz.i109 = getelementptr inbounds %struct.rtw_chip_info, ptr %124, i32 0, i32 4
  %129 = ptrtoint ptr %tx_pkt_desc_sz.i109 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %tx_pkt_desc_sz.i109, align 4
  %conv4.i110 = zext i8 %130 to i32
  %add.i111 = add nuw nsw i32 %mul.i108, %conv4.i110
  %call.i.i112 = tail call ptr @__alloc_skb(i32 noundef %add.i111, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #9
  %tobool.not.i113 = icmp eq ptr %call.i.i112, null
  br i1 %tobool.not.i113, label %sw.bb40.cleanup_crit_edge, label %if.end.i118

sw.bb40.cleanup_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i118:                                      ; preds = %sw.bb40
  %131 = ptrtoint ptr %tx_pkt_desc_sz.i109 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %tx_pkt_desc_sz.i109, align 4
  %conv6.i = zext i8 %132 to i32
  %data.i.i114 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i112, i32 0, i32 19
  %133 = ptrtoint ptr %data.i.i114 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %data.i.i114, align 4
  %add.ptr.i.i115 = getelementptr i8, ptr %134, i32 %conv6.i
  store ptr %add.ptr.i.i115, ptr %data.i.i114, align 4
  %tail.i.i116 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i112, i32 0, i32 16
  %135 = ptrtoint ptr %tail.i.i116 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %tail.i.i116, align 8
  %add.ptr1.i.i117 = getelementptr i8, ptr %136, i32 %conv6.i
  store ptr %add.ptr1.i.i117, ptr %tail.i.i116, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %cmp85.not.i = icmp eq i8 %128, 0
  br i1 %cmp85.not.i, label %if.end.i118.cleanup_crit_edge, label %if.end.i118.for.body.i119_crit_edge

if.end.i118.for.body.i119_crit_edge:              ; preds = %if.end.i118
  br label %for.body.i119

if.end.i118.cleanup_crit_edge:                    ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i119:                                    ; preds = %for.body.i119.for.body.i119_crit_edge, %if.end.i118.for.body.i119_crit_edge
  %i.086.i = phi i32 [ %inc.i120, %for.body.i119.for.body.i119_crit_edge ], [ 0, %if.end.i118.for.body.i119_crit_edge ]
  %call.i84.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i112, i32 noundef 4) #9
  %137 = ptrtoint ptr %call.i84.i to i32
  call void @__asan_storeN_noabort(i32 %137, i32 4)
  store i32 0, ptr %call.i84.i, align 1
  %hw_value.i = getelementptr %struct.ieee80211_channel, ptr %126, i32 %i.086.i, i32 3
  %138 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %hw_value.i, align 2
  %140 = and i16 %139, 255
  %conv8.i.i.i = zext i16 %140 to i32
  %141 = shl nuw i32 %conv8.i.i.i, 24
  store i32 %141, ptr %call.i84.i, align 4
  %flags.i = getelementptr %struct.ieee80211_channel, ptr %126, i32 %i.086.i, i32 4
  %142 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %flags.i, align 4
  %and.i = lshr i32 %143, 3
  %144 = and i32 %and.i, 1
  %145 = or i32 %144, %141
  %or.i77.i = xor i32 %145, 65793
  store i32 %or.i77.i, ptr %call.i84.i, align 4
  %inc.i120 = add nuw nsw i32 %i.086.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i120, %conv.i107
  br i1 %exitcond.not.i, label %for.body.i119.cleanup_crit_edge, label %for.body.i119.for.body.i119_crit_edge

for.body.i119.for.body.i119_crit_edge:            ; preds = %for.body.i119
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i119

for.body.i119.cleanup_crit_edge:                  ; preds = %for.body.i119
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.i119.cleanup_crit_edge, %if.end.i118.cleanup_crit_edge, %sw.bb40.cleanup_crit_edge, %for.body41.i.cleanup_crit_edge, %do.end.i, %for.cond37.preheader.i.cleanup_crit_edge, %for.cond21.preheader.i.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.end.i99.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %sw.bb38.cleanup_crit_edge, %if.then35, %if.end33.cleanup_crit_edge, %if.end.i91, %sw.bb21.cleanup_crit_edge, %if.end.i, %sw.bb19.cleanup_crit_edge, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.end ], [ null, %if.then.cleanup_crit_edge ], [ null, %if.end3.cleanup_crit_edge ], [ null, %if.end7.cleanup_crit_edge ], [ %skb_new.0, %if.then35 ], [ null, %if.end33.cleanup_crit_edge ], [ %call18, %sw.bb17 ], [ %call16, %sw.bb15 ], [ %call14, %sw.bb13 ], [ %call12, %sw.bb11 ], [ %call.i78, %sw.bb ], [ null, %sw.bb19.cleanup_crit_edge ], [ %call.i.i, %if.end.i ], [ null, %sw.bb21.cleanup_crit_edge ], [ %call.i.i84, %if.end.i91 ], [ null, %do.end.i ], [ null, %lor.lhs.false.i.cleanup_crit_edge ], [ null, %sw.bb38.cleanup_crit_edge ], [ null, %if.end.i99.cleanup_crit_edge ], [ %call.i.i98, %for.cond37.preheader.i.cleanup_crit_edge ], [ %call.i.i98, %if.end8.i.cleanup_crit_edge ], [ null, %sw.bb40.cleanup_crit_edge ], [ %call.i.i112, %if.end.i118.cleanup_crit_edge ], [ %call.i.i98, %for.cond21.preheader.i.cleanup_crit_edge ], [ %call.i.i98, %for.body41.i.cleanup_crit_edge ], [ %call.i.i112, %for.body.i119.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_active_interfaces_atomic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_build_rsvd_page_iter(ptr noundef %data, ptr nocapture noundef readnone %mac, ptr noundef readonly %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rsvd_page_list = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 7
  %0 = ptrtoint ptr %rsvd_page_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %rsvd_pkt.020 = load ptr, ptr %rsvd_page_list, align 4
  %cmp.not21 = icmp eq ptr %rsvd_pkt.020, %rsvd_page_list
  br i1 %cmp.not21, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rsvd_page_list5 = getelementptr inbounds %struct.rtw_dev, ptr %data, i32 0, i32 19
  %prev.i = getelementptr inbounds %struct.rtw_dev, ptr %data, i32 0, i32 19, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rsvd_pkt.022 = phi ptr [ %rsvd_pkt.020, %for.body.lr.ph ], [ %rsvd_pkt.0, %for.inc.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.rtw_rsvd_page, ptr %rsvd_pkt.022, i32 0, i32 4
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp2 = icmp eq i32 %2, 0
  %build_list = getelementptr inbounds %struct.rtw_rsvd_page, ptr %rsvd_pkt.022, i32 0, i32 2
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %3 = ptrtoint ptr %rsvd_page_list5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsvd_page_list5, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %build_list, ptr noundef %rsvd_page_list5, ptr noundef %4) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  br label %for.inc.sink.split

if.else:                                          ; preds = %for.body
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i17 = tail call zeroext i1 @__list_add_valid(ptr noundef %build_list, ptr noundef %6, ptr noundef %rsvd_page_list5) #9
  br i1 %call.i.i17, label %if.else.for.inc.sink.split_crit_edge, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else.for.inc.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.else.for.inc.sink.split_crit_edge, %if.end.i.i
  %prev.i.sink = phi ptr [ %prev1.i.i, %if.end.i.i ], [ %prev.i, %if.else.for.inc.sink.split_crit_edge ]
  %rsvd_page_list5.sink = phi ptr [ %4, %if.end.i.i ], [ %rsvd_page_list5, %if.else.for.inc.sink.split_crit_edge ]
  %.sink23 = phi ptr [ %rsvd_page_list5, %if.end.i.i ], [ %6, %if.else.for.inc.sink.split_crit_edge ]
  %7 = ptrtoint ptr %prev.i.sink to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %build_list, ptr %prev.i.sink, align 4
  %8 = ptrtoint ptr %build_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %rsvd_page_list5.sink, ptr %build_list, align 4
  %prev3.i.i18 = getelementptr inbounds %struct.rtw_rsvd_page, ptr %rsvd_pkt.022, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %prev3.i.i18 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %.sink23, ptr %prev3.i.i18, align 4
  %10 = ptrtoint ptr %.sink23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %build_list, ptr %.sink23, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else.for.inc_crit_edge, %if.then.for.inc_crit_edge
  %11 = ptrtoint ptr %rsvd_pkt.022 to i32
  call void @__asan_load4_noabort(i32 %11)
  %rsvd_pkt.0 = load ptr, ptr %rsvd_pkt.022, align 4
  %cmp.not = icmp eq ptr %rsvd_pkt.0, %rsvd_page_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_pspoll_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_proberesp_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_nullfunc_get(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_probereq_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_beacon_get_tim(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtw_sec_cam_pg_backup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_tx_rsvd_page_pkt_info_update(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_tx_fill_tx_desc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !91, !92, !93, !94, !95, !97, !99, !101, !103, !105, !107, !108, !109, !111, !113, !115, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !154, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !180, !182, !183, !184, !185, !187, !188, !190, !191, !192, !193, !195, !196, !197, !198, !200, !201}
!llvm.module.flags = !{!202, !203, !204, !205, !206, !207, !208, !209}
!llvm.ident = !{!210}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 249, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 267, i32 2}
!4 = !{ptr @__ksymtab_rtw_fw_c2h_cmd_rx_irqsafe, !5, !"__ksymtab_rtw_fw_c2h_cmd_rx_irqsafe", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 295, i32 1}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 302, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @rtw_fw_c2h_cmd_isr._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @rtw_fw_c2h_cmd_isr._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_rtw_fw_c2h_cmd_isr, !15, !"__ksymtab_rtw_fw_c2h_cmd_isr", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 304, i32 1}
!16 = !{ptr @__ksymtab_rtw_fw_do_iqk, !17, !"__ksymtab_rtw_fw_do_iqk", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 448, i32 1}
!18 = !{ptr @__ksymtab_rtw_fw_inform_rfk_status, !19, !"__ksymtab_rtw_fw_inform_rfk_status", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 460, i32 1}
!20 = distinct !{null, !21, !"rssi_min", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 632, i32 18}
!22 = distinct !{null, !23, !"rssi_max", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 632, i32 32}
!24 = distinct !{null, !25, !"rssi_offset", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 632, i32 48}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 869, i32 2}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 873, i32 2}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 877, i32 2}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 881, i32 2}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 1219, i32 3}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @rtw_add_rsvd_page_bcn._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @rtw_add_rsvd_page_bcn._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 1237, i32 3}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @rtw_add_rsvd_page_pno._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @rtw_add_rsvd_page_pno._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 1258, i32 3}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @rtw_add_rsvd_page_sta._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @rtw_add_rsvd_page_sta._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 1305, i32 3}
!51 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @rtw_fw_write_data_rsvd_page._entry, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @rtw_fw_write_data_rsvd_page._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 1318, i32 3}
!57 = !{ptr @rtw_fw_write_data_rsvd_page._entry.20, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @rtw_fw_write_data_rsvd_page._entry_ptr.22, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 1558, i32 3}
!61 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @rtw_fw_download_rsvd_page._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @rtw_fw_download_rsvd_page._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 1564, i32 3}
!66 = !{ptr @rtw_fw_download_rsvd_page._entry.25, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @rtw_fw_download_rsvd_page._entry_ptr.27, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 1575, i32 3}
!70 = !{ptr @rtw_fw_download_rsvd_page._entry.28, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @rtw_fw_download_rsvd_page._entry_ptr.30, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 1654, i32 3}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 1662, i32 3}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 1667, i32 3}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 1704, i32 3}
!80 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @rtw_fw_update_pkt_probe_req._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @rtw_fw_update_pkt_probe_req._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 1710, i32 3}
!85 = !{ptr @rtw_fw_update_pkt_probe_req._entry.36, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @rtw_fw_update_pkt_probe_req._entry_ptr.38, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 1763, i32 3}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 2112, i32 3}
!91 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @rtw_hw_scan_status_report._entry, !90, !"_entry", i1 false, i1 false}
!94 = !{ptr @rtw_hw_scan_status_report._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 2165, i32 2}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 127, i32 6}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 188, i32 2}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 198, i32 2}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 203, i32 2}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 209, i32 2}
!107 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 315, i32 2}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 341, i32 3}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 350, i32 3}
!115 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @rtw_fw_send_h2c_command._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @rtw_fw_send_h2c_command._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 380, i32 3}
!120 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @rtw_fw_send_h2c_packet._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @rtw_fw_send_h2c_packet._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 1169, i32 3}
!125 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @rtw_add_rsvd_page._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @rtw_add_rsvd_page._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 1185, i32 3}
!130 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @rtw_add_rsvd_page_probe_req._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @rtw_add_rsvd_page_probe_req._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 1431, i32 3}
!135 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @rtw_build_rsvd_page._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @rtw_build_rsvd_page._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 1439, i32 4}
!140 = !{ptr @rtw_build_rsvd_page._entry.63, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @rtw_build_rsvd_page._entry_ptr.65, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.67, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 1463, i32 5}
!144 = !{ptr @rtw_build_rsvd_page._entry.66, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @rtw_build_rsvd_page._entry_ptr.68, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 1474, i32 3}
!148 = !{ptr @rtw_build_rsvd_page._entry.69, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @rtw_build_rsvd_page._entry_ptr.71, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 1393, i32 3}
!152 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 1403, i32 4}
!154 = !{ptr @.str.74, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @__rtw_build_rsvd_page_from_vifs._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @__rtw_build_rsvd_page_from_vifs._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.75, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 925, i32 4}
!159 = !{ptr @.str.76, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @rtw_nlo_info_get._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @rtw_nlo_info_get._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 1524, i32 3}
!164 = !{ptr @.str.78, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @rtw_download_beacon._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @rtw_download_beacon._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.80, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 1530, i32 3}
!169 = !{ptr @rtw_download_beacon._entry.79, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @rtw_download_beacon._entry_ptr.81, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.83, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 1537, i32 3}
!173 = !{ptr @rtw_download_beacon._entry.82, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @rtw_download_beacon._entry_ptr.84, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @rtw_download_beacon._entry.85, !176, !"_entry", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 1543, i32 3}
!177 = !{ptr @rtw_download_beacon._entry_ptr.86, !176, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.87, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 1624, i32 3}
!180 = !{ptr @.str.88, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 2050, i32 3}
!182 = !{ptr @.str.89, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @rtw_hw_scan_prehandle._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @rtw_hw_scan_prehandle._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @skb_queue_head_init.__key, !186, !"__key", i1 false, i1 false}
!186 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!187 = !{ptr @.str.90, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.91, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 1844, i32 3}
!190 = !{ptr @.str.92, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @_rtw_hw_scan_update_probe_req._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @_rtw_hw_scan_update_probe_req._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.93, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 1939, i32 3}
!195 = !{ptr @.str.94, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @rtw_add_chan_list._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @rtw_add_chan_list._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.96, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/realtek/rtw88/fw.c", i32 1946, i32 3}
!200 = !{ptr @rtw_add_chan_list._entry.95, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @rtw_add_chan_list._entry_ptr.97, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{i32 1, !"wchar_size", i32 2}
!203 = !{i32 1, !"min_enum_size", i32 4}
!204 = !{i32 8, !"branch-target-enforcement", i32 0}
!205 = !{i32 8, !"sign-return-address", i32 0}
!206 = !{i32 8, !"sign-return-address-all", i32 0}
!207 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!208 = !{i32 7, !"uwtable", i32 1}
!209 = !{i32 7, !"frame-pointer", i32 2}
!210 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!211 = !{!"branch_weights", i32 1, i32 2000}
!212 = !{i32 0, i32 33}
!213 = !{i8 0, i8 2}
!214 = !{!"auto-init"}
