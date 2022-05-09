; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtw88/coex.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtw88/coex.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rtw_coex_write_scbd\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw_coex_write_scbd\09\09\09\09"
module asm "\09.long\09__crc_rtw_coex_write_scbd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw_coex_write_scbd:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw_coex_write_scbd\22\09\09\09\09\09"
module asm "__kstrtabns_rtw_coex_write_scbd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtw_coex_read_indirect_reg\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw_coex_read_indirect_reg\09\09\09\09"
module asm "\09.long\09__crc_rtw_coex_read_indirect_reg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw_coex_read_indirect_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw_coex_read_indirect_reg\22\09\09\09\09\09"
module asm "__kstrtabns_rtw_coex_read_indirect_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtw_coex_write_indirect_reg\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw_coex_write_indirect_reg\09\09\09\09"
module asm "\09.long\09__crc_rtw_coex_write_indirect_reg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw_coex_write_indirect_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw_coex_write_indirect_reg\22\09\09\09\09\09"
module asm "__kstrtabns_rtw_coex_write_indirect_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.rtw_chip_info = type { ptr, i8, ptr, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i16], ptr, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32], [2 x i32], ptr, i8, ptr, ptr, ptr, ptr, [4 x ptr], ptr, ptr, i32, i8, i16, i8, i8, ptr, i8, i8, ptr, i8, i8, ptr, ptr, i8, [3 x i32], i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.rtw_hci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.rtw_c2h_cmd = type { i8, i8, [0 x i8] }
%struct.rtw_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtw_hw_reg = type { i32, i32 }
%struct.coex_table_para = type { i32, i32 }
%struct.coex_5g_afh_map = type { i32, i8, i8 }
%struct.rtw_coex_info_req = type { i8, i8, i8, i8, i8 }
%struct.rtw_coex_vif_stat_iter_data = type { ptr, ptr }
%struct.coex_tdma_para = type { [5 x i8] }
%struct.rtw_reg_domain = type { i32, i32, i8 }
%struct.rtw_coex_sta_stat_iter_data = type { ptr, ptr }
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
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.coex_rf_para = type { i8, i8, i8, i8 }
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
%struct.rtw_sta_info = type { ptr, ptr, %struct.ewma_rssi, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, i64, [1 x i32], %struct.rtw_ra_report, i8, ptr }
%struct.ewma_rssi = type { i32 }
%struct.rtw_ra_report = type { %struct.rate_info, i32, i8 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }

@__kstrtab_rtw_coex_write_scbd = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw_coex_write_scbd = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw_coex_write_scbd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw_coex_write_scbd to i32), ptr @__kstrtab_rtw_coex_write_scbd, ptr @__kstrtabns_rtw_coex_write_scbd }, section "___ksymtab+rtw_coex_write_scbd", align 4
@rtw_coex_read_indirect_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 881, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to read indirect register\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rtw_coex_read_indirect_reg\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/wireless/realtek/rtw88/coex.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtw_coex_read_indirect_reg._entry_ptr = internal global ptr @rtw_coex_read_indirect_reg._entry, section ".printk_index", align 4
@__kstrtab_rtw_coex_read_indirect_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw_coex_read_indirect_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw_coex_read_indirect_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw_coex_read_indirect_reg to i32), ptr @__kstrtab_rtw_coex_read_indirect_reg, ptr @__kstrtabns_rtw_coex_read_indirect_reg }, section "___ksymtab+rtw_coex_read_indirect_reg", align 4
@rtw_coex_write_indirect_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 899, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to write indirect register\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rtw_coex_write_indirect_reg\00", [36 x i8] zeroinitializer }, align 32
@rtw_coex_write_indirect_reg._entry_ptr = internal global ptr @rtw_coex_write_indirect_reg._entry, section ".printk_index", align 4
@__kstrtab_rtw_coex_write_indirect_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw_coex_write_indirect_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw_coex_write_indirect_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw_coex_write_indirect_reg to i32), ptr @__kstrtab_rtw_coex_write_indirect_reg, ptr @__kstrtabns_rtw_coex_write_indirect_reg }, section "___ksymtab+rtw_coex_write_indirect_reg", align 4
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"[BTCoex], %s()\0A\00", [16 x i8] zeroinitializer }, align 32
@__func__.rtw_coex_power_on_setting = private unnamed_addr constant [26 x i8] c"rtw_coex_power_on_setting\00", align 1
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[BTCoex], IPS ENTER notify\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[BTCoex], IPS LEAVE notify\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[BTCoex], LPS ENABLE notify\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[BTCoex], LPS DISABLE notify\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[BTCoex], SCAN START notify (5G)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[BTCoex], SCAN START notify (2G)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[BTCoex], SCAN FINISH notify (Scan-AP = %d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[BTCoex], %s(): TO_5G\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.rtw_coex_switchband_notify = private unnamed_addr constant [27 x i8] c"rtw_coex_switchband_notify\00", align 1
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[BTCoex], %s(): TO_24G_NOFORSCAN\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[BTCoex], %s(): TO_2G\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[BTCoex], %s(): 5G start\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.rtw_coex_connect_notify = private unnamed_addr constant [24 x i8] c"rtw_coex_connect_notify\00", align 1
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[BTCoex], %s(): 5G finish\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[BTCoex], %s(): 2G start\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[BTCoex], %s(): 2G finish\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[BTCoex], %s(): 5G\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.rtw_coex_media_status_notify = private unnamed_addr constant [29 x i8] c"rtw_coex_media_status_notify\00", align 1
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[BTCoex], %s(): 2G\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[BTCoex], %s(): disconnect!!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[BTCoex], BT IQK by bt_info, data0 = 0x%02x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"[BTCoex], BT Scoreboard change notify by WL FW c2h, 0xaa = 0x%02x, 0xab = 0x%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"[BTCoex], H2C 0x60 content replied by WL FW: H2C_0x60 = [%02x %02x %02x %02x %02x]\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[BTCoex], bt_info reply by WL FW\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[BTCoex], BT enable detected by bt_info\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[BTCoex], Bt_info length = %d invalid!!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"[BTCoex], Bt_info[%d], len=%d, data=[%02x %02x %02x %02x %02x %02x]\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[BTCoex], Return because Btinfo duplicate!!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[BTCoex], Re-Link start in BT info!!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[BTCoex], BT Re-init, send wifi BW & Chnl to BT!!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"[BTCoex], BT ext info bit3 check, set BT NOT to ignore Wlan active!!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[BTCoex], WiFi Fw Dbg info = %8ph (len = %d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid wl info c2h length\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], WL connecting stop!!\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.rtw_coex_display_coex_info = private unnamed_addr constant [27 x i8] c"rtw_coex_display_coex_info\00", align 1
@.str.39 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"**********************************************\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\09\09BT Coexist info %x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"============[Under Manual Control]============\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"==========================================\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"============[Coex is STOPPED]============\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"============[coex_freeze]============\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%-40s = %s/ %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Mech/ RFE\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Shared\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Non-Shared\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%-40s = %08x/ 0x%02x/ 0x%08x %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Coex Ver/ BT Dez/ BT Rpt\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(BT disabled)\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"(Match)\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"(Mismatch)\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%-40s = %s/ %u/ %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Role/ RoleSwCnt/ IgnWL/ Feature\00", [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Slave\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Master\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%-40s = %u.%u/ 0x%x/ 0x%x/ %c\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"WL FW/ BT FW/ BT FW Desired/ KT\00", [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%-40s = %u/ %u/ %u/ ch-(%u)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AFH Map\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\09\09BT Status\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%-40s = %s/ %ddBm/ %u/ %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"BT status/ rssi/ retry/ pop\00", [36 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"non-conn\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"conn-idle\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"busy\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%-40s = %s%s%s%s%s (multi-link %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Profiles\00", [23 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"A2DP sink,\00", [21 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"A2DP,\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HFP,\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HID(RCU),\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HID(4/18)\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HID(BLE)\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HID(2/18),\00", [21 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OPP,\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PAN,\00", [27 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Voice,\00", [25 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%-40s = %u/ %u/ %u/ 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Reinit/ Relink/ IgnWl/ Feature\00", [33 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%-40s = %u/ %u/ %u/ %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Page/ Inq/ iqk/ iqk fail\00", [39 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%-40s = 0x%04x/ 0x%04x/ 0x%04x/ 0x%04x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"0xae/ 0xac/ score board (W->B)/ (B->W)\00", [57 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%-40s = %u/%u, %u/%u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Hi-Pri TX/RX, Lo-Pri TX/RX\00", [37 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%-40s = %7ph\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\09\09WiFi Status\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%-40s = %d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Scanning\00", [23 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%-40s = %u/ TX %d Mbps/ RX %d Mbps\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"G_busy/ TX/ RX\00", [17 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%-40s = %u/ %u/ %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IPS/ Low Power/ PS mode\00", [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\09\09Mechanism (Under Manual)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%-40s = %5ph (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TDMA Now\00", [23 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\09\09Mechanism\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%-40s = %5ph (case-%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TDMA\00", [27 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%-40s = %s/ %s/ %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Coex Mode/Free Run/Timer base\00", [34 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Yes\00", [28 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"No\00", [29 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%-40s = %d(%d)/ 0x%08x/ 0x%08x/ 0x%08x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Table/ 0x6c0/ 0x6c4/ 0x6c8\00", [37 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%-40s = 0x%08x/ 0x%08x/ %d/ reason (%s)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"0x778/ 0x6cc/ Run Count/ Reason\00", [32 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%-40s = %3ph\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AFH Map to BT\00", [18 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"AntDiv/ BtCtrlLPS/ g_busy\00", [38 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"On\00", [29 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%-40s = %u/ %u/ %u/ %u/ %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Null All/ Retry/ Ack/ BT Empty/ BT Late\00", [56 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%-40s = %u/ %u/ %s/ %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Cnt TDMA Toggle/ Lk 5ms/ Lk 5ms on/ FW\00", [57 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%-40s = %d/ %d/ %s/ %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"WL_TxPw/ BT_TxPw/ WL_Rx/ BT_LNA_Lvl\00", [60 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\09\09HW setting\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%-40s = %s/ %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"LTE Coex/ Path Owner\00", [43 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"WL\00", [29 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"BT\00", [29 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%-40s = RF:%s_BB:%s/ RF:%s_BB:%s/ %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"GNT_WL_CTRL/ GNT_BT_CTRL/ Dbg\00", [34 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SW\00", [29 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HW\00", [29 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%-40s = %lu/ %lu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GNT_WL/ GNT_BT\00", [17 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CRC OK CCK/ OFDM/ HT/ VHT\00", [38 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CRC ERR CCK/ OFDM/ HT/ VHT\00", [37 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%-40s = %s/ %s/ %s/ %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HiPr/ Locking/ Locked/ Noisy\00", [35 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"Y\00", [30 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"N\00", [30 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%-40s = %d/ %d/ %d/ %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"EVM A/ EVM B/ SNR A/ SNR B\00", [37 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CCK-CCA/CCK-FA/OFDM-CCA/OFDM-FA\00", [32 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CRC OK CCK/11g/11n/11ac\00", [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CRC Err CCK/11g/11n/11ac\00", [39 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[BTCoex], BT state changed (%d) -> (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex],  coex_stat->bt_disabled = 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[BTCoex], %s() - PHASE_COEX_POWERON\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.rtw_coex_set_ant_path = private unnamed_addr constant [22 x i8] c"rtw_coex_set_ant_path\00", align 1
@.str.149 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[BTCoex], %s() - PHASE_COEX_INIT\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[BTCoex], %s() - PHASE_WLANONLY_INIT\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], %s() - PHASE_WLAN_OFF\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[BTCoex], %s() - PHASE_2G_RUNTIME\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[BTCoex], %s() - PHASE_5G_RUNTIME\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[BTCoex], %s() - PHASE_2G_FREERUN\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[BTCoex], %s() - PHASE_2G_WLBT\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unknown phase when setting antenna path\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[BTCoex], (Before Ant Setup) Delay by IQK\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[BTCoex], (Before Ant Setup) wlk = %d, btk = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.159 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[BTCoex], Coex_Table - %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[BTCoex], %s(): 0x6c0 = %x, 0x6c4 = %x\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.rtw_coex_set_table = private unnamed_addr constant [19 x i8] c"rtw_coex_set_table\00", align 1
@.str.161 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[BTCoex], %s(): H2C = [%02x %02x %02x %02x %02x %02x]\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.rtw_btc_wltoggle_table_a = private unnamed_addr constant [25 x i8] c"rtw_btc_wltoggle_table_a\00", align 1
@__func__.__rtw_coex_init_hw_config = private unnamed_addr constant [26 x i8] c"__rtw_coex_init_hw_config\00", align 1
@.str.162 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[BTCoex], %s(): RF Off\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[BTCoex], Skip TDMA because no change TDMA(%s, %d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[BTCoex], coex tdma type(%s, %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[BTCoex], tbtt_interval = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], %s(): h2c_0x69 = 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.rtw_coex_tdma_timer_base = private unnamed_addr constant [25 x i8] c"rtw_coex_tdma_timer_base\00", align 1
@__func__.rtw_coex_set_tdma = private unnamed_addr constant [18 x i8] c"rtw_coex_set_tdma\00", align 1
@.str.170 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex], %s(): Force LPS (byte1 = 0x%x)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[BTCoex], %s(): native power save (byte1 = 0x%x)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[BTCoex], %s(): COEX_PS_WIFI_NATIVE\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.rtw_coex_power_save_state = private unnamed_addr constant [26 x i8] c"rtw_coex_power_save_state\00", align 1
@.str.173 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[BTCoex], %s(): COEX_PS_LPS_OFF\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.rtw_coex_action_coex_all_off = private unnamed_addr constant [29 x i8] c"rtw_coex_action_coex_all_off\00", align 1
@.str.174 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[BTCoex], %s(): bt_rx_LNA_level = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.rtw_coex_set_bt_rx_gain = private unnamed_addr constant [24 x i8] c"rtw_coex_set_bt_rx_gain\00", align 1
@rtw_coex_info_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.176, ptr @.str.2, i32 615, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"coex request time out\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw_coex_info_request\00", [42 x i8] zeroinitializer }, align 32
@rtw_coex_info_request._entry_ptr = internal global ptr @rtw_coex_info_request._entry, section ".printk_index", align 4
@rtw_coex_info_request._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.176, ptr @.str.2, i32 621, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get coex info response\0A\00", [62 x i8] zeroinitializer }, align 32
@rtw_coex_info_request._entry_ptr.179 = internal global ptr @rtw_coex_info_request._entry.177, section ".printk_index", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.180 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[BTCoex], %s(): reason = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.rtw_coex_run_coex = private unnamed_addr constant [18 x i8] c"rtw_coex_run_coex\00", align 1
@.str.181 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[BTCoex], return for Manual CTRL!!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[BTCoex], return for Stop Coex DM!!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex], return for wifi is under IPS!!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[BTCoex], return for coex_freeze!!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[BTCoex], WiFi is single-port 2G!!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[BTCoex], wl_noisy_level = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.rtw_coex_action_wl_under5g = private unnamed_addr constant [27 x i8] c"rtw_coex_action_wl_under5g\00", align 1
@__func__.rtw_coex_action_wl_not_connected = private unnamed_addr constant [33 x i8] c"rtw_coex_action_wl_not_connected\00", align 1
@__func__.rtw_coex_action_wl_only = private unnamed_addr constant [24 x i8] c"rtw_coex_action_wl_only\00", align 1
@__func__.rtw_coex_action_wl_native_lps = private unnamed_addr constant [30 x i8] c"rtw_coex_action_wl_native_lps\00", align 1
@__func__.rtw_coex_action_bt_whql_test = private unnamed_addr constant [29 x i8] c"rtw_coex_action_bt_whql_test\00", align 1
@__func__.rtw_coex_action_bt_relink = private unnamed_addr constant [26 x i8] c"rtw_coex_action_bt_relink\00", align 1
@__func__.rtw_coex_action_bt_inquiry = private unnamed_addr constant [27 x i8] c"rtw_coex_action_bt_inquiry\00", align 1
@.str.187 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[BTCoex], bt inq/page +  wifi hi-pri task\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[BTCoex], bt inq/page + wifi busy\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[BTCoex], bt inq/page + wifi connected\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[BTCoex], bt inq/page + wifi not-connected\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[BTCoex], bt inq/page +  wifi connected\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[BTCoex], bt inq/page +  wifi not-connected\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[BTCoex], wifi hi(%d), bt page(%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.rtw_coex_action_bt_idle = private unnamed_addr constant [24 x i8] c"rtw_coex_action_bt_idle\00", align 1
@__func__.rtw_coex_action_wl_linkscan = private unnamed_addr constant [28 x i8] c"rtw_coex_action_wl_linkscan\00", align 1
@__func__.rtw_coex_action_wl_connected = private unnamed_addr constant [29 x i8] c"rtw_coex_action_wl_connected\00", align 1
@.str.194 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[BTCoex], BT Profile = %s => Algorithm = %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NOPROFILE\00", [22 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HFP\00", [28 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HID\00", [28 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A2DP\00", [27 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PAN\00", [28 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HID_HFP\00", [24 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"A2DP_HFP\00", [23 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"A2DP_HID\00", [23 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"A2DP_HID_HFP\00", [19 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PAN_HFP\00", [24 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PAN_HID\00", [24 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PAN_HID_HFP\00", [20 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PAN_A2DP\00", [23 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PAN_A2DP_HFP\00", [19 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PAN_A2DP_HID\00", [19 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PAN_A2DP_HID_HFP\00", [47 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"A2DP_PAN\00", [23 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"A2DP_PAN_HID\00", [19 x i8] zeroinitializer }, align 32
@__func__.rtw_coex_action_bt_hfp = private unnamed_addr constant [23 x i8] c"rtw_coex_action_bt_hfp\00", align 1
@__func__.rtw_coex_action_freerun = private unnamed_addr constant [24 x i8] c"rtw_coex_action_freerun\00", align 1
@__func__.rtw_coex_action_bt_hid = private unnamed_addr constant [23 x i8] c"rtw_coex_action_bt_hid\00", align 1
@__func__.rtw_btc_wltoggle_table_b = private unnamed_addr constant [25 x i8] c"rtw_btc_wltoggle_table_b\00", align 1
@__func__.rtw_coex_action_bt_a2dpsink = private unnamed_addr constant [28 x i8] c"rtw_coex_action_bt_a2dpsink\00", align 1
@__func__.rtw_coex_action_bt_a2dp = private unnamed_addr constant [24 x i8] c"rtw_coex_action_bt_a2dp\00", align 1
@__func__.rtw_coex_action_bt_pan = private unnamed_addr constant [23 x i8] c"rtw_coex_action_bt_pan\00", align 1
@__func__.rtw_coex_action_bt_a2dp_hid = private unnamed_addr constant [28 x i8] c"rtw_coex_action_bt_a2dp_hid\00", align 1
@__func__.rtw_coex_action_bt_a2dp_pan = private unnamed_addr constant [28 x i8] c"rtw_coex_action_bt_a2dp_pan\00", align 1
@__func__.rtw_coex_action_bt_pan_hid = private unnamed_addr constant [27 x i8] c"rtw_coex_action_bt_pan_hid\00", align 1
@__func__.rtw_coex_action_bt_a2dp_pan_hid = private unnamed_addr constant [32 x i8] c"rtw_coex_action_bt_a2dp_pan_hid\00", align 1
@__func__.rtw_coex_query_bt_info = private unnamed_addr constant [23 x i8] c"rtw_coex_query_bt_info\00", align 1
@.str.214 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[BTCoex], %s: para[0:2] = 0x%x 0x%x 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.rtw_coex_update_wl_ch_info = private unnamed_addr constant [27 x i8] c"rtw_coex_update_wl_ch_info\00", align 1
@.str.215 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[BTCoex], %s(), %s!!!\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.rtw_coex_update_bt_link_info = private unnamed_addr constant [29 x i8] c"rtw_coex_update_bt_link_info\00", align 1
@.str.216 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NCON_IDLE\00", [22 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CON_IDLE\00", [23 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"INQ_PAGE\00", [23 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ACL_BUSY\00", [23 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SCO_BUSY\00", [23 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ACL_SCO_BUSY\00", [19 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"[BTCoex], set h2c 0x69 opcode 12 to turn off 5ms WL slot extend!!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[BTCoex], 5ms WL slot extend cnt = %d!!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"[BTCoex], set h2c 0x69 opcode 12 to turn on 5ms WL slot extend!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[BTCoex], cck locking...\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[BTCoex], cck unlock...\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WL_FW\00", [26 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BT_RSP\00", [25 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BT_ACT\00", [25 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Iface on Port (%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\09%-32s = %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Beacon interval\00", [16 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Network Type\00", [19 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\09Peer %3d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\09\09%-24s = %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RSSI\00", [27 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BW mode\00", [24 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"2G1PORT\00", [24 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"5G\00", [29 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"2GSCANSTART\00", [20 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"5GSCANSTART\00", [20 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SCANFINISH\00", [21 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"2GSWITCHBAND\00", [19 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"5GSWITCHBAND\00", [19 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2GCONSTART\00", [21 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"5GCONSTART\00", [21 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"2GCONFINISH\00", [20 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"5GCONFINISH\00", [20 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"2GMEDIA\00", [24 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"5GMEDIA\00", [24 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MEDIADISCON\00", [20 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BTINFO\00", [25 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LPS\00", [28 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"WLSTATUS\00", [23 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%-40s = %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"/ \00", [29 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RF_\00", [28 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s%s%x\00", [25 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s%s%x[%d]\00", [21 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s%s%x[%d:%d]\00", [18 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s0x%x\00", [25 x i8] zeroinitializer }, align 32
@switch.table.rtw_coex_run_coex = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01\00\00\01\00\01", [26 x i8] zeroinitializer }, align 32
@switch.table.rtw_coex_update_bt_link_info = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221], [40 x i8] zeroinitializer }, align 32
@switch.table.rtw_coex_display_coex_info = internal constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254], [36 x i8] zeroinitializer }, align 32
@switch.table.rtw_coex_display_coex_info.262 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.72, ptr @.str.72, ptr @.str.72, ptr @.str.257, ptr @.str.257], [44 x i8] zeroinitializer }, align 32
@switch.table.rtw_coex_display_coex_info.263 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 31, i32 15, i32 7, i32 19, i32 19], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.264 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.265 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.266 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.267 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.268 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.269 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.270 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.271 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.272 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.273 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.274 = internal global [8 x i64] [i64 6, i64 4, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.275 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.276 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.277 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.278 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.279 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 5]
@__sancov_gen_cov_switch_values.280 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.281 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.282 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.283 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.284 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.285 = internal global [17 x i64] [i64 15, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.286 = internal global [16 x i64] [i64 14, i64 8, i64 0, i64 2, i64 3, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.287 = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.288 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.289 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.290 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.291 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.292 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.293 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.294 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.295 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.296 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.297 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.298 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.299 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.300 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.301 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.302 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.303 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.304 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 881, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 899, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2624, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2664, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2674, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2693, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2708, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2734, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2740, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2751, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2768, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2771, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2774, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2797, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2803, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2816, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2834, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2849, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2856, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2869, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2900, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2908, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2921, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2931, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2946, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2952, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2958, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2972, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3075, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3100, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3113, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3149, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3152, i32 6 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3247, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3701, i32 16 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3702, i32 16 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3706, i32 15 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3707, i32 15 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3710, i32 15 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3714, i32 15 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3718, i32 16 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3719, i32 6 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3720, i32 25 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3720, i32 36 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3722, i32 16 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3723, i32 6 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3726, i32 31 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3728, i32 6 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3728, i32 18 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3729, i32 16 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3730, i32 6 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3731, i32 28 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3731, i32 38 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3734, i32 16 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3735, i32 6 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3739, i32 16 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3740, i32 6 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3746, i32 16 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3748, i32 16 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3749, i32 6 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3750, i32 54 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3751, i32 53 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3751, i32 67 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3755, i32 16 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3756, i32 6 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3758, i32 13 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3758, i32 28 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3758, i32 39 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3759, i32 32 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3761, i32 33 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3762, i32 37 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3763, i32 37 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3764, i32 7 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3766, i32 6 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3766, i32 15 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3767, i32 32 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3769, i32 16 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3770, i32 6 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3775, i32 16 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3776, i32 6 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3781, i32 16 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3782, i32 6 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3786, i32 16 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3787, i32 6 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3791, i32 17 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3796, i32 16 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3798, i32 16 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3799, i32 6 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3800, i32 16 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3801, i32 6 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3804, i32 16 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3805, i32 6 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3816, i32 17 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3818, i32 17 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3819, i32 7 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3825, i32 17 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3827, i32 17 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3828, i32 7 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3831, i32 16 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3832, i32 6 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3834, i32 22 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3834, i32 30 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3836, i32 16 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3837, i32 6 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3841, i32 16 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3842, i32 6 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3846, i32 16 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3847, i32 6 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3850, i32 6 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3851, i32 37 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3851, i32 44 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3853, i32 16 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3854, i32 6 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3858, i32 16 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3859, i32 6 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3864, i32 16 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3865, i32 6 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3872, i32 16 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3874, i32 16 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3875, i32 6 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3876, i32 26 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3876, i32 33 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3877, i32 25 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3877, i32 32 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3878, i32 16 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3879, i32 6 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3880, i32 27 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3880, i32 34 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3885, i32 16 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3886, i32 6 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3889, i32 6 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3893, i32 6 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3896, i32 16 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3897, i32 6 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3898, i32 35 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3898, i32 41 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3904, i32 16 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3905, i32 6 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3911, i32 6 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3914, i32 44 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3917, i32 44 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 478, i32 3 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1228, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1234, i32 3 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1246, i32 3 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1269, i32 3 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1284, i32 3 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1293, i32 3 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1308, i32 3 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1324, i32 3 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1340, i32 3 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1355, i32 3 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 419, i32 3 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 433, i32 4 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1028, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1013, i32 2 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 961, i32 2 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2598, i32 3 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1167, i32 3 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1207, i32 2 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 319, i32 2 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 343, i32 2 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1110, i32 3 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1120, i32 3 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1069, i32 3 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1079, i32 3 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 856, i32 2 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 615, i32 3 }
@___asan_gen_.842 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 621, i32 3 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2436, i32 2 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2445, i32 3 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2451, i32 3 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2457, i32 3 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2464, i32 3 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 2479, i32 2 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 299, i32 3 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1726, i32 4 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1739, i32 4 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1755, i32 4 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1760, i32 4 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1786, i32 4 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1791, i32 4 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1798, i32 2 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1471, i32 2 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1390, i32 2 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1391, i32 2 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1392, i32 2 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1393, i32 2 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1394, i32 2 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1395, i32 2 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1396, i32 2 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1397, i32 2 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1398, i32 2 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1399, i32 2 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1400, i32 2 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1401, i32 2 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1402, i32 2 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1403, i32 2 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1404, i32 2 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1405, i32 2 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1407, i32 10 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1376, i32 2 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 1378, i32 2 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 821, i32 2 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 776, i32 2 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 669, i32 2 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 670, i32 2 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 671, i32 2 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 672, i32 2 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 673, i32 2 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 674, i32 2 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 176, i32 3 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 189, i32 3 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 199, i32 3 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 233, i32 4 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 239, i32 4 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3283, i32 2 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3284, i32 2 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3285, i32 2 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3620, i32 16 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3621, i32 16 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3622, i32 6 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3624, i32 6 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3600, i32 16 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3601, i32 16 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3601, i32 36 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3602, i32 36 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3638, i32 2 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3639, i32 2 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3297, i32 2 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3298, i32 2 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3299, i32 2 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3300, i32 2 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3301, i32 2 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3302, i32 2 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3303, i32 2 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3304, i32 2 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3305, i32 2 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3306, i32 2 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3307, i32 2 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3308, i32 2 }
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3309, i32 2 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3310, i32 2 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3311, i32 2 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3489, i32 18 }
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3397, i32 34 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3416, i32 15 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3427, i32 50 }
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3430, i32 50 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3433, i32 50 }
@___asan_gen_.1091 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1092 = private constant [45 x i8] c"../drivers/net/wireless/realtek/rtw88/coex.c\00", align 1
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1092, i32 3449, i32 49 }
@___asan_gen_.1094 = private unnamed_addr constant [31 x i8] c"switch.table.rtw_coex_run_coex\00", align 1
@___asan_gen_.1095 = private unnamed_addr constant [42 x i8] c"switch.table.rtw_coex_update_bt_link_info\00", align 1
@___asan_gen_.1096 = private unnamed_addr constant [40 x i8] c"switch.table.rtw_coex_display_coex_info\00", align 1
@___asan_gen_.1097 = private unnamed_addr constant [44 x i8] c"switch.table.rtw_coex_display_coex_info.262\00", align 1
@___asan_gen_.1098 = private unnamed_addr constant [44 x i8] c"switch.table.rtw_coex_display_coex_info.263\00", align 1
@llvm.compiler.used = appending global [275 x ptr] [ptr @__ksymtab_rtw_coex_read_indirect_reg, ptr @__ksymtab_rtw_coex_write_indirect_reg, ptr @__ksymtab_rtw_coex_write_scbd, ptr @rtw_coex_info_request._entry, ptr @rtw_coex_info_request._entry.177, ptr @rtw_coex_info_request._entry_ptr, ptr @rtw_coex_info_request._entry_ptr.179, ptr @rtw_coex_read_indirect_reg._entry, ptr @rtw_coex_read_indirect_reg._entry_ptr, ptr @rtw_coex_write_indirect_reg._entry, ptr @rtw_coex_write_indirect_reg._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.178, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @switch.table.rtw_coex_run_coex, ptr @switch.table.rtw_coex_update_bt_link_info, ptr @switch.table.rtw_coex_display_coex_info, ptr @switch.table.rtw_coex_display_coex_info.262, ptr @switch.table.rtw_coex_display_coex_info.263], section "llvm.metadata"
@0 = internal global [268 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_coex_read_indirect_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_coex_write_indirect_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_coex_info_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_coex_info_request._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw_coex_run_coex to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw_coex_update_bt_link_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw_coex_display_coex_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw_coex_display_coex_info.262 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtw_coex_display_coex_info.263 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_coex_write_scbd(ptr noundef %rtwdev, i16 noundef zeroext %bitpos, i1 noundef zeroext %set) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %scbd_support = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 68
  %2 = ptrtoint ptr %scbd_support to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %scbd_support, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %score_board = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 87
  %4 = ptrtoint ptr %score_board to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %score_board, align 2
  %6 = or i16 %5, 2
  %new_scbd10_def = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 69
  %7 = ptrtoint ptr %new_scbd10_def to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %new_scbd10_def, align 2, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp ne i8 %8, 0
  %9 = and i16 %bitpos, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool7.not = icmp eq i16 %9, 0
  %or.cond = or i1 %tobool7.not, %tobool5.not
  br i1 %or.cond, label %if.else18, label %if.then8

if.then8:                                         ; preds = %if.end
  br i1 %set, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  %10 = and i16 %6, -1025
  br label %if.end31

if.else:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  %11 = or i16 %5, 1026
  br label %if.end31

if.else18:                                        ; preds = %if.end
  br i1 %set, label %if.then20, label %if.else25

if.then20:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #7
  %or2361 = or i16 %6, %bitpos
  br label %if.end31

if.else25:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #7
  %neg = xor i16 %bitpos, -1
  %and28 = and i16 %6, %neg
  br label %if.end31

if.end31:                                         ; preds = %if.else25, %if.then20, %if.else, %if.then10
  %val.0 = phi i16 [ %or2361, %if.then20 ], [ %and28, %if.else25 ], [ %10, %if.then10 ], [ %11, %if.else ]
  call void @__sanitizer_cov_trace_cmp2(i16 %val.0, i16 %5)
  %cmp.not = icmp eq i16 %val.0, %5
  br i1 %cmp.not, label %if.end31.cleanup_crit_edge, label %if.then36

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %score_board to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %val.0, ptr %score_board, align 2
  %13 = or i16 %val.0, -32768
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %14 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hci.i, align 8
  %write16.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write16.i, align 4
  tail call void %17(ptr noundef %rtwdev, i32 noundef 170, i16 noundef zeroext %13) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %if.end31.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_coex_info_response(ptr noundef %rtwdev, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %payload.i = getelementptr inbounds %struct.rtw_c2h_cmd, ptr %add.ptr.i, i32 0, i32 2
  %4 = ptrtoint ptr %payload.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %payload.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.not = icmp eq i8 %5, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %queue = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 1
  tail call void @skb_queue_tail(ptr noundef %queue, ptr noundef %skb) #5
  %wait = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 2
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_coex_read_indirect_reg(ptr noundef %rtwdev, i16 noundef zeroext %addr) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !602
  %call = call zeroext i1 @ltecoex_read_reg(ptr noundef %rtwdev, i16 noundef zeroext %addr, ptr noundef nonnull %val) #5
  br i1 %call, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %4, %if.end ], [ 0, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ltecoex_read_reg(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_coex_write_indirect_reg(ptr noundef %rtwdev, i16 noundef zeroext %addr, i32 noundef %mask, i32 noundef %val) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.cttz.i32(i32 %mask, i1 false) #5, !range !603
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val.i, align 4, !annotation !602
  %call.i = call zeroext i1 @ltecoex_read_reg(ptr noundef %rtwdev, i16 noundef zeroext %addr, ptr noundef nonnull %val.i) #5
  br i1 %call.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str) #8
  br label %rtw_coex_read_indirect_reg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val.i, align 4
  br label %rtw_coex_read_indirect_reg.exit

rtw_coex_read_indirect_reg.exit:                  ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %5, %if.end.i ], [ 0, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %neg = xor i32 %mask, -1
  %and = and i32 %retval.0.i, %neg
  %shl = shl i32 %val, %0
  %and2 = and i32 %shl, %mask
  %or = or i32 %and, %and2
  %call3 = call zeroext i1 @ltecoex_reg_write(ptr noundef %rtwdev, i16 noundef zeroext %addr, i32 noundef %or) #5
  br i1 %call3, label %rtw_coex_read_indirect_reg.exit.if.end_crit_edge, label %do.end

rtw_coex_read_indirect_reg.exit.if.end_crit_edge: ; preds = %rtw_coex_read_indirect_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %rtw_coex_read_indirect_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.5) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %rtw_coex_read_indirect_reg.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ltecoex_reg_write(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_coex_power_on_setting(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rtw_coex_power_on_setting) #5
  %stop_dm = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 4
  %0 = ptrtoint ptr %stop_dm to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %stop_dm, align 1
  %wl_rf_off = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 7
  %1 = ptrtoint ptr %wl_rf_off to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %wl_rf_off, align 4
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %2 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %read8.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read8.i.i, align 4
  %call.i.i = tail call zeroext i8 %5(ptr noundef %rtwdev, i32 noundef 2) #5
  %or5.i = or i8 %call.i.i, 3
  %6 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %write8.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write8.i.i, align 4
  tail call void %9(ptr noundef %rtwdev, i32 noundef 2, i8 noundef zeroext %or5.i) #5
  %chip1.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %10 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip1.i, align 4
  %stat.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9
  %scbd_support.i = getelementptr inbounds %struct.rtw_chip_info, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %scbd_support.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %scbd_support.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %rtw_coex_read_scbd.exit.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

rtw_coex_read_scbd.exit.i:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hci.i.i, align 8
  %read16.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %17(ptr noundef %rtwdev, i32 noundef 170) #5
  %18 = and i16 %call.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool3.not.i = icmp eq i16 %18, 0
  br label %if.end.i

if.end.i:                                         ; preds = %rtw_coex_read_scbd.exit.i, %entry.if.end.i_crit_edge
  %bt_disabled.0.off0.i = phi i1 [ %tobool3.not.i, %rtw_coex_read_scbd.exit.i ], [ false, %entry.if.end.i_crit_edge ]
  %19 = ptrtoint ptr %stat.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %stat.i, align 4, !range !601
  %21 = zext i8 %20 to i32
  %conv8.i = zext i1 %bt_disabled.0.off0.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv8.i)
  %cmp.not.i = icmp eq i32 %21, %conv8.i
  br i1 %cmp.not.i, label %if.end.i.rtw_coex_monitor_bt_enable.exit_crit_edge, label %if.then10.i

if.end.i.rtw_coex_monitor_bt_enable.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_monitor_bt_enable.exit

if.then10.i:                                      ; preds = %if.end.i
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.146, i32 noundef %21, i32 noundef %conv8.i) #5
  %frombool18.i = zext i1 %bt_disabled.0.off0.i to i8
  %22 = ptrtoint ptr %stat.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool18.i, ptr %stat.i, align 4
  %bt_ble_scan_type.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 69
  %23 = ptrtoint ptr %bt_ble_scan_type.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %bt_ble_scan_type.i, align 1
  %cur_bt_lna_lvl.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 11
  %24 = ptrtoint ptr %cur_bt_lna_lvl.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %cur_bt_lna_lvl.i, align 1
  br i1 %bt_disabled.0.off0.i, label %if.else.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  %bt_reenable.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 23
  %25 = ptrtoint ptr %bt_reenable.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %bt_reenable.i, align 1
  %26 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rtwdev, align 8
  %bt_reenable_work.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 13
  tail call void @ieee80211_queue_delayed_work(ptr noundef %27, ptr noundef %bt_reenable_work.i, i32 noundef 1500) #5
  br label %rtw_coex_monitor_bt_enable.exit

if.else.i:                                        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  %bt_mailbox_reply.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 29
  %28 = ptrtoint ptr %bt_mailbox_reply.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %bt_mailbox_reply.i, align 1
  %bt_reenable22.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 23
  %29 = ptrtoint ptr %bt_reenable22.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %bt_reenable22.i, align 1
  br label %rtw_coex_monitor_bt_enable.exit

rtw_coex_monitor_bt_enable.exit:                  ; preds = %if.else.i, %if.then21.i, %if.end.i.rtw_coex_monitor_bt_enable.exit_crit_edge
  %30 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chip1.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %coex_set_rfe_type.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %33, i32 0, i32 31
  %34 = ptrtoint ptr %coex_set_rfe_type.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %coex_set_rfe_type.i, align 4
  tail call void %35(ptr noundef %rtwdev) #5
  tail call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext true, i8 noundef zeroext 5)
  tail call fastcc void @rtw_coex_table(ptr noundef %rtwdev, i1 noundef zeroext true, i8 noundef zeroext 1)
  %36 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i.i, align 8
  %write8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %37, i32 0, i32 14
  %38 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write8.i, align 4
  tail call void %39(ptr noundef %rtwdev, i32 noundef 65306, i8 noundef zeroext 0) #5
  %40 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chip1.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %coex_set_gnt_debug.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %43, i32 0, i32 30
  %44 = ptrtoint ptr %coex_set_gnt_debug.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %coex_set_gnt_debug.i, align 4
  tail call void %45(ptr noundef %rtwdev) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rtw_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext %force, i8 noundef zeroext %phase) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %stat = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9
  %rfe = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 11
  br i1 %force, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %.pre = zext i8 %phase to i32
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %cur_ant_pos_type = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 14
  %0 = ptrtoint ptr %cur_ant_pos_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_ant_pos_type, align 4
  %conv = zext i8 %phase to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp = icmp eq i32 %1, %conv
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %conv3.pre-phi = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %conv, %land.lhs.true.if.end_crit_edge ]
  %cur_ant_pos_type4 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 14
  %2 = ptrtoint ptr %cur_ant_pos_type4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv3.pre-phi, ptr %cur_ant_pos_type4, align 4
  %wlg_at_btg.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 11, i32 5
  %3 = ptrtoint ptr %wlg_at_btg.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %wlg_at_btg.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end.rtw_coex_check_rfk.exit_crit_edge, label %land.lhs.true.i

if.end.rtw_coex_check_rfk.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_check_rfk.exit

land.lhs.true.i:                                  ; preds = %if.end
  %chip1.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %5 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip1.i, align 4
  %scbd_support.i = getelementptr inbounds %struct.rtw_chip_info, ptr %6, i32 0, i32 68
  %7 = ptrtoint ptr %scbd_support.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %scbd_support.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not.i = icmp eq i8 %8, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.rtw_coex_check_rfk.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.rtw_coex_check_rfk.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_check_rfk.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %bt_iqk_state.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 73
  %9 = ptrtoint ptr %bt_iqk_state.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bt_iqk_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %cmp.not.i = icmp eq i8 %10, -1
  br i1 %cmp.not.i, label %land.lhs.true4.i.rtw_coex_check_rfk.exit_crit_edge, label %if.then.i

land.lhs.true4.i.rtw_coex_check_rfk.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_check_rfk.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.157) #5
  %hci.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.then.i
  %cnt.0.i = phi i8 [ 0, %if.then.i ], [ %inc.i, %if.end.i.do.body.i_crit_edge ]
  %11 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip1.i, align 4
  %scbd_support.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %12, i32 0, i32 68
  %13 = ptrtoint ptr %scbd_support.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %scbd_support.i.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i.i, label %do.body.i.rtw_coex_read_scbd.exit.i_crit_edge, label %if.end.i.i

do.body.i.rtw_coex_read_scbd.exit.i_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_read_scbd.exit.i

if.end.i.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hci.i.i.i, align 8
  %read16.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %18(ptr noundef %rtwdev, i32 noundef 170) #5
  %19 = and i16 %call.i.i.i, 32767
  br label %rtw_coex_read_scbd.exit.i

rtw_coex_read_scbd.exit.i:                        ; preds = %if.end.i.i, %do.body.i.rtw_coex_read_scbd.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ %19, %if.end.i.i ], [ 0, %do.body.i.rtw_coex_read_scbd.exit.i_crit_edge ]
  %20 = and i16 %retval.0.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool7.not.i = icmp eq i16 %20, 0
  %21 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hci.i.i.i, align 8
  %read8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %read8.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read8.i.i, align 4
  %call.i.i = tail call zeroext i8 %24(ptr noundef %rtwdev, i32 noundef 1180) #5
  %25 = and i8 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool12.not.i = icmp eq i8 %25, 0
  %or.cond.i = select i1 %tobool7.not.i, i1 %tobool12.not.i, i1 false
  br i1 %or.cond.i, label %rtw_coex_read_scbd.exit.i.rtw_coex_check_rfk.exit_crit_edge, label %if.end.i

rtw_coex_read_scbd.exit.i.rtw_coex_check_rfk.exit_crit_edge: ; preds = %rtw_coex_read_scbd.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_check_rfk.exit

if.end.i:                                         ; preds = %rtw_coex_read_scbd.exit.i
  %26 = zext i8 %25 to i32
  %.lobit.i = lshr exact i16 %20, 5
  %27 = zext i16 %.lobit.i to i32
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.158, i32 noundef %26, i32 noundef %27) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #5
  %inc.i = add nuw nsw i8 %cnt.0.i, 1
  %cmp26.i = icmp ult i8 %cnt.0.i, 59
  br i1 %cmp26.i, label %if.end.i.do.body.i_crit_edge, label %if.then31.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.then31.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %bt_iqk_state.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %bt_iqk_state.i, align 1
  br label %rtw_coex_check_rfk.exit

rtw_coex_check_rfk.exit:                          ; preds = %if.then31.i, %rtw_coex_read_scbd.exit.i.rtw_coex_check_rfk.exit_crit_edge, %land.lhs.true4.i.rtw_coex_check_rfk.exit_crit_edge, %land.lhs.true.i.rtw_coex_check_rfk.exit_crit_edge, %if.end.rtw_coex_check_rfk.exit_crit_edge
  %39 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %stat, align 4, !range !601
  %41 = zext i8 %40 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.147, i32 noundef %41) #5
  %42 = zext i8 %phase to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i8 %phase, label %do.end [
    i8 5, label %sw.bb
    i8 0, label %sw.bb12
    i8 1, label %sw.bb18
    i8 2, label %sw.bb19
    i8 3, label %sw.bb20
    i8 4, label %sw.bb21
    i8 7, label %sw.bb22
    i8 6, label %sw.bb23
  ]

sw.bb:                                            ; preds = %rtw_coex_check_rfk.exit
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.148, ptr noundef nonnull @__func__.rtw_coex_set_ant_path) #5
  %43 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %stat, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool9.not = icmp eq i8 %44, 0
  %chip1.i107 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %45 = ptrtoint ptr %chip1.i107 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chip1.i107, align 4
  %btg_reg2.i108 = getelementptr inbounds %struct.rtw_chip_info, ptr %46, i32 0, i32 93
  %47 = ptrtoint ptr %btg_reg2.i108 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %btg_reg2.i108, align 4
  %hci.i.i.i109 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %49 = ptrtoint ptr %hci.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hci.i.i.i109, align 8
  %read8.i.i.i110 = getelementptr inbounds %struct.rtw_hci_ops, ptr %50, i32 0, i32 11
  %51 = ptrtoint ptr %read8.i.i.i110 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read8.i.i.i110, align 4
  %call.i.i.i111 = tail call zeroext i8 %52(ptr noundef %rtwdev, i32 noundef 115) #5
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %sw.bb
  %or5.i.i = or i8 %call.i.i.i111, 4
  %53 = ptrtoint ptr %hci.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hci.i.i.i109, align 8
  %write8.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %54, i32 0, i32 14
  %55 = ptrtoint ptr %write8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write8.i.i.i, align 4
  tail call void %56(ptr noundef %rtwdev, i32 noundef 115, i8 noundef zeroext %or5.i.i) #5
  %tobool3.not.i105 = icmp eq ptr %48, null
  br i1 %tobool3.not.i105, label %if.then10.land.lhs.true48_crit_edge, label %if.then4.i

if.then10.land.lhs.true48_crit_edge:              ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true48

if.then4.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %48, align 4
  %mask.i = getelementptr inbounds %struct.rtw_hw_reg, ptr %48, i32 0, i32 1
  %59 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mask.i, align 4
  %conv.i = trunc i32 %60 to i8
  %61 = ptrtoint ptr %hci.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hci.i.i.i109, align 8
  %read8.i.i22.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %62, i32 0, i32 11
  %63 = ptrtoint ptr %read8.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %read8.i.i22.i, align 4
  %call.i.i23.i = tail call zeroext i8 %64(ptr noundef %rtwdev, i32 noundef %58) #5
  %or5.i24.i = or i8 %call.i.i23.i, %conv.i
  %65 = ptrtoint ptr %hci.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hci.i.i.i109, align 8
  %write8.i.i25.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %66, i32 0, i32 14
  %67 = ptrtoint ptr %write8.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write8.i.i25.i, align 4
  tail call void %68(ptr noundef %rtwdev, i32 noundef %58, i8 noundef zeroext %or5.i24.i) #5
  br label %land.lhs.true48

if.else:                                          ; preds = %sw.bb
  %and.i.i = and i8 %call.i.i.i111, -5
  %69 = ptrtoint ptr %hci.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hci.i.i.i109, align 8
  %write8.i.i29.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %70, i32 0, i32 14
  %71 = ptrtoint ptr %write8.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %write8.i.i29.i, align 4
  tail call void %72(ptr noundef %rtwdev, i32 noundef 115, i8 noundef zeroext %and.i.i) #5
  %tobool5.not.i = icmp eq ptr %48, null
  br i1 %tobool5.not.i, label %if.else.land.lhs.true48_crit_edge, label %if.then6.i

if.else.land.lhs.true48_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true48

if.then6.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %48, align 4
  %mask8.i = getelementptr inbounds %struct.rtw_hw_reg, ptr %48, i32 0, i32 1
  %75 = ptrtoint ptr %mask8.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %mask8.i, align 4
  %conv9.i = trunc i32 %76 to i8
  %77 = ptrtoint ptr %hci.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hci.i.i.i109, align 8
  %read8.i.i31.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %78, i32 0, i32 11
  %79 = ptrtoint ptr %read8.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %read8.i.i31.i, align 4
  %call.i.i32.i = tail call zeroext i8 %80(ptr noundef %rtwdev, i32 noundef %74) #5
  %neg.i.i = xor i8 %conv9.i, -1
  %and.i33.i = and i8 %call.i.i32.i, %neg.i.i
  %81 = ptrtoint ptr %hci.i.i.i109 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hci.i.i.i109, align 8
  %write8.i.i34.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %82, i32 0, i32 14
  %83 = ptrtoint ptr %write8.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %write8.i.i34.i, align 4
  tail call void %84(ptr noundef %rtwdev, i32 noundef %74, i8 noundef zeroext %and.i33.i) #5
  br label %land.lhs.true48

sw.bb12:                                          ; preds = %rtw_coex_check_rfk.exit
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.149, ptr noundef nonnull @__func__.rtw_coex_set_ant_path) #5
  %85 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %stat, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool14.not = icmp eq i8 %86, 0
  %. = select i1 %tobool14.not, i8 3, i8 1
  %.236 = select i1 %tobool14.not, i8 1, i8 3
  tail call fastcc void @rtw_coex_set_gnt_bt(ptr noundef %rtwdev, i8 noundef zeroext %.)
  tail call fastcc void @rtw_coex_set_gnt_wl(ptr noundef %rtwdev, i8 noundef zeroext %.236)
  %chip1.i113 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %87 = ptrtoint ptr %chip1.i113 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %chip1.i113, align 4
  %btg_reg2.i114 = getelementptr inbounds %struct.rtw_chip_info, ptr %88, i32 0, i32 93
  %89 = ptrtoint ptr %btg_reg2.i114 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %btg_reg2.i114, align 4
  %hci.i.i.i115 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %91 = ptrtoint ptr %hci.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hci.i.i.i115, align 8
  %read8.i.i.i116 = getelementptr inbounds %struct.rtw_hci_ops, ptr %92, i32 0, i32 11
  %93 = ptrtoint ptr %read8.i.i.i116 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %read8.i.i.i116, align 4
  %call.i.i.i117 = tail call zeroext i8 %94(ptr noundef %rtwdev, i32 noundef 115) #5
  %or5.i.i118 = or i8 %call.i.i.i117, 4
  %95 = ptrtoint ptr %hci.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hci.i.i.i115, align 8
  %write8.i.i.i119 = getelementptr inbounds %struct.rtw_hci_ops, ptr %96, i32 0, i32 14
  %97 = ptrtoint ptr %write8.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %write8.i.i.i119, align 4
  tail call void %98(ptr noundef %rtwdev, i32 noundef 115, i8 noundef zeroext %or5.i.i118) #5
  %tobool3.not.i120 = icmp eq ptr %90, null
  br i1 %tobool3.not.i120, label %sw.bb12.land.lhs.true48_crit_edge, label %if.then4.i128

sw.bb12.land.lhs.true48_crit_edge:                ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true48

if.then4.i128:                                    ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  %99 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %90, align 4
  %mask.i122 = getelementptr inbounds %struct.rtw_hw_reg, ptr %90, i32 0, i32 1
  %101 = ptrtoint ptr %mask.i122 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %mask.i122, align 4
  %conv.i123 = trunc i32 %102 to i8
  %103 = ptrtoint ptr %hci.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hci.i.i.i115, align 8
  %read8.i.i22.i124 = getelementptr inbounds %struct.rtw_hci_ops, ptr %104, i32 0, i32 11
  %105 = ptrtoint ptr %read8.i.i22.i124 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %read8.i.i22.i124, align 4
  %call.i.i23.i125 = tail call zeroext i8 %106(ptr noundef %rtwdev, i32 noundef %100) #5
  %or5.i24.i126 = or i8 %call.i.i23.i125, %conv.i123
  %107 = ptrtoint ptr %hci.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hci.i.i.i115, align 8
  %write8.i.i25.i127 = getelementptr inbounds %struct.rtw_hci_ops, ptr %108, i32 0, i32 14
  %109 = ptrtoint ptr %write8.i.i25.i127 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %write8.i.i25.i127, align 4
  tail call void %110(ptr noundef %rtwdev, i32 noundef %100, i8 noundef zeroext %or5.i24.i126) #5
  br label %land.lhs.true48

sw.bb18:                                          ; preds = %rtw_coex_check_rfk.exit
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.150, ptr noundef nonnull @__func__.rtw_coex_set_ant_path) #5
  tail call fastcc void @rtw_coex_set_gnt_bt(ptr noundef %rtwdev, i8 noundef zeroext 1)
  tail call fastcc void @rtw_coex_set_gnt_wl(ptr noundef %rtwdev, i8 noundef zeroext 3)
  %chip1.i130 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %111 = ptrtoint ptr %chip1.i130 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %chip1.i130, align 4
  %btg_reg2.i131 = getelementptr inbounds %struct.rtw_chip_info, ptr %112, i32 0, i32 93
  %113 = ptrtoint ptr %btg_reg2.i131 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %btg_reg2.i131, align 4
  %hci.i.i.i132 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %115 = ptrtoint ptr %hci.i.i.i132 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hci.i.i.i132, align 8
  %read8.i.i.i133 = getelementptr inbounds %struct.rtw_hci_ops, ptr %116, i32 0, i32 11
  %117 = ptrtoint ptr %read8.i.i.i133 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %read8.i.i.i133, align 4
  %call.i.i.i134 = tail call zeroext i8 %118(ptr noundef %rtwdev, i32 noundef 115) #5
  %or5.i.i135 = or i8 %call.i.i.i134, 4
  %119 = ptrtoint ptr %hci.i.i.i132 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %hci.i.i.i132, align 8
  %write8.i.i.i136 = getelementptr inbounds %struct.rtw_hci_ops, ptr %120, i32 0, i32 14
  %121 = ptrtoint ptr %write8.i.i.i136 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %write8.i.i.i136, align 4
  tail call void %122(ptr noundef %rtwdev, i32 noundef 115, i8 noundef zeroext %or5.i.i135) #5
  %tobool3.not.i137 = icmp eq ptr %114, null
  br i1 %tobool3.not.i137, label %sw.bb18.land.lhs.true48_crit_edge, label %if.then4.i145

sw.bb18.land.lhs.true48_crit_edge:                ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true48

if.then4.i145:                                    ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #7
  %123 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %114, align 4
  %mask.i139 = getelementptr inbounds %struct.rtw_hw_reg, ptr %114, i32 0, i32 1
  %125 = ptrtoint ptr %mask.i139 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %mask.i139, align 4
  %conv.i140 = trunc i32 %126 to i8
  %127 = ptrtoint ptr %hci.i.i.i132 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %hci.i.i.i132, align 8
  %read8.i.i22.i141 = getelementptr inbounds %struct.rtw_hci_ops, ptr %128, i32 0, i32 11
  %129 = ptrtoint ptr %read8.i.i22.i141 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %read8.i.i22.i141, align 4
  %call.i.i23.i142 = tail call zeroext i8 %130(ptr noundef %rtwdev, i32 noundef %124) #5
  %or5.i24.i143 = or i8 %call.i.i23.i142, %conv.i140
  %131 = ptrtoint ptr %hci.i.i.i132 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %hci.i.i.i132, align 8
  %write8.i.i25.i144 = getelementptr inbounds %struct.rtw_hci_ops, ptr %132, i32 0, i32 14
  %133 = ptrtoint ptr %write8.i.i25.i144 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %write8.i.i25.i144, align 4
  tail call void %134(ptr noundef %rtwdev, i32 noundef %124, i8 noundef zeroext %or5.i24.i143) #5
  br label %land.lhs.true48

sw.bb19:                                          ; preds = %rtw_coex_check_rfk.exit
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.151, ptr noundef nonnull @__func__.rtw_coex_set_ant_path) #5
  %chip1.i147 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %135 = ptrtoint ptr %chip1.i147 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %chip1.i147, align 4
  %btg_reg2.i148 = getelementptr inbounds %struct.rtw_chip_info, ptr %136, i32 0, i32 93
  %137 = ptrtoint ptr %btg_reg2.i148 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %btg_reg2.i148, align 4
  %hci.i.i.i149 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %139 = ptrtoint ptr %hci.i.i.i149 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %hci.i.i.i149, align 8
  %read8.i.i.i150 = getelementptr inbounds %struct.rtw_hci_ops, ptr %140, i32 0, i32 11
  %141 = ptrtoint ptr %read8.i.i.i150 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %read8.i.i.i150, align 4
  %call.i.i.i151 = tail call zeroext i8 %142(ptr noundef %rtwdev, i32 noundef 115) #5
  %and.i.i152 = and i8 %call.i.i.i151, -5
  %143 = ptrtoint ptr %hci.i.i.i149 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %hci.i.i.i149, align 8
  %write8.i.i29.i153 = getelementptr inbounds %struct.rtw_hci_ops, ptr %144, i32 0, i32 14
  %145 = ptrtoint ptr %write8.i.i29.i153 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %write8.i.i29.i153, align 4
  tail call void %146(ptr noundef %rtwdev, i32 noundef 115, i8 noundef zeroext %and.i.i152) #5
  %tobool5.not.i154 = icmp eq ptr %138, null
  br i1 %tobool5.not.i154, label %sw.bb19.land.lhs.true48_crit_edge, label %if.then6.i162

sw.bb19.land.lhs.true48_crit_edge:                ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true48

if.then6.i162:                                    ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #7
  %147 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %138, align 4
  %mask8.i155 = getelementptr inbounds %struct.rtw_hw_reg, ptr %138, i32 0, i32 1
  %149 = ptrtoint ptr %mask8.i155 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %mask8.i155, align 4
  %conv9.i156 = trunc i32 %150 to i8
  %151 = ptrtoint ptr %hci.i.i.i149 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %hci.i.i.i149, align 8
  %read8.i.i31.i157 = getelementptr inbounds %struct.rtw_hci_ops, ptr %152, i32 0, i32 11
  %153 = ptrtoint ptr %read8.i.i31.i157 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %read8.i.i31.i157, align 4
  %call.i.i32.i158 = tail call zeroext i8 %154(ptr noundef %rtwdev, i32 noundef %148) #5
  %neg.i.i159 = xor i8 %conv9.i156, -1
  %and.i33.i160 = and i8 %call.i.i32.i158, %neg.i.i159
  %155 = ptrtoint ptr %hci.i.i.i149 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %hci.i.i.i149, align 8
  %write8.i.i34.i161 = getelementptr inbounds %struct.rtw_hci_ops, ptr %156, i32 0, i32 14
  %157 = ptrtoint ptr %write8.i.i34.i161 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %write8.i.i34.i161, align 4
  tail call void %158(ptr noundef %rtwdev, i32 noundef %148, i8 noundef zeroext %and.i33.i160) #5
  br label %land.lhs.true48

sw.bb20:                                          ; preds = %rtw_coex_check_rfk.exit
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.152, ptr noundef nonnull @__func__.rtw_coex_set_ant_path) #5
  tail call fastcc void @rtw_coex_set_gnt_bt(ptr noundef %rtwdev, i8 noundef zeroext 0)
  tail call fastcc void @rtw_coex_set_gnt_wl(ptr noundef %rtwdev, i8 noundef zeroext 0)
  %chip1.i164 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %159 = ptrtoint ptr %chip1.i164 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %chip1.i164, align 4
  %btg_reg2.i165 = getelementptr inbounds %struct.rtw_chip_info, ptr %160, i32 0, i32 93
  %161 = ptrtoint ptr %btg_reg2.i165 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %btg_reg2.i165, align 4
  %hci.i.i.i166 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %163 = ptrtoint ptr %hci.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %hci.i.i.i166, align 8
  %read8.i.i.i167 = getelementptr inbounds %struct.rtw_hci_ops, ptr %164, i32 0, i32 11
  %165 = ptrtoint ptr %read8.i.i.i167 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %read8.i.i.i167, align 4
  %call.i.i.i168 = tail call zeroext i8 %166(ptr noundef %rtwdev, i32 noundef 115) #5
  %or5.i.i169 = or i8 %call.i.i.i168, 4
  %167 = ptrtoint ptr %hci.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %hci.i.i.i166, align 8
  %write8.i.i.i170 = getelementptr inbounds %struct.rtw_hci_ops, ptr %168, i32 0, i32 14
  %169 = ptrtoint ptr %write8.i.i.i170 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %write8.i.i.i170, align 4
  tail call void %170(ptr noundef %rtwdev, i32 noundef 115, i8 noundef zeroext %or5.i.i169) #5
  %tobool3.not.i171 = icmp eq ptr %162, null
  br i1 %tobool3.not.i171, label %sw.bb20.land.lhs.true48_crit_edge, label %if.then4.i179

sw.bb20.land.lhs.true48_crit_edge:                ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true48

if.then4.i179:                                    ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #7
  %171 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %162, align 4
  %mask.i173 = getelementptr inbounds %struct.rtw_hw_reg, ptr %162, i32 0, i32 1
  %173 = ptrtoint ptr %mask.i173 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %mask.i173, align 4
  %conv.i174 = trunc i32 %174 to i8
  %175 = ptrtoint ptr %hci.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %hci.i.i.i166, align 8
  %read8.i.i22.i175 = getelementptr inbounds %struct.rtw_hci_ops, ptr %176, i32 0, i32 11
  %177 = ptrtoint ptr %read8.i.i22.i175 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %read8.i.i22.i175, align 4
  %call.i.i23.i176 = tail call zeroext i8 %178(ptr noundef %rtwdev, i32 noundef %172) #5
  %or5.i24.i177 = or i8 %call.i.i23.i176, %conv.i174
  %179 = ptrtoint ptr %hci.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %hci.i.i.i166, align 8
  %write8.i.i25.i178 = getelementptr inbounds %struct.rtw_hci_ops, ptr %180, i32 0, i32 14
  %181 = ptrtoint ptr %write8.i.i25.i178 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %write8.i.i25.i178, align 4
  tail call void %182(ptr noundef %rtwdev, i32 noundef %172, i8 noundef zeroext %or5.i24.i177) #5
  br label %land.lhs.true48

sw.bb21:                                          ; preds = %rtw_coex_check_rfk.exit
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.153, ptr noundef nonnull @__func__.rtw_coex_set_ant_path) #5
  tail call fastcc void @rtw_coex_set_gnt_bt(ptr noundef %rtwdev, i8 noundef zeroext 0)
  tail call fastcc void @rtw_coex_set_gnt_wl(ptr noundef %rtwdev, i8 noundef zeroext 3)
  %chip1.i181 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %183 = ptrtoint ptr %chip1.i181 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %chip1.i181, align 4
  %btg_reg2.i182 = getelementptr inbounds %struct.rtw_chip_info, ptr %184, i32 0, i32 93
  %185 = ptrtoint ptr %btg_reg2.i182 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %btg_reg2.i182, align 4
  %hci.i.i.i183 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %187 = ptrtoint ptr %hci.i.i.i183 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %hci.i.i.i183, align 8
  %read8.i.i.i184 = getelementptr inbounds %struct.rtw_hci_ops, ptr %188, i32 0, i32 11
  %189 = ptrtoint ptr %read8.i.i.i184 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %read8.i.i.i184, align 4
  %call.i.i.i185 = tail call zeroext i8 %190(ptr noundef %rtwdev, i32 noundef 115) #5
  %or5.i.i186 = or i8 %call.i.i.i185, 4
  %191 = ptrtoint ptr %hci.i.i.i183 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %hci.i.i.i183, align 8
  %write8.i.i.i187 = getelementptr inbounds %struct.rtw_hci_ops, ptr %192, i32 0, i32 14
  %193 = ptrtoint ptr %write8.i.i.i187 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %write8.i.i.i187, align 4
  tail call void %194(ptr noundef %rtwdev, i32 noundef 115, i8 noundef zeroext %or5.i.i186) #5
  %tobool3.not.i188 = icmp eq ptr %186, null
  br i1 %tobool3.not.i188, label %sw.bb21.land.lhs.true48_crit_edge, label %if.then4.i196

sw.bb21.land.lhs.true48_crit_edge:                ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true48

if.then4.i196:                                    ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #7
  %195 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %186, align 4
  %mask.i190 = getelementptr inbounds %struct.rtw_hw_reg, ptr %186, i32 0, i32 1
  %197 = ptrtoint ptr %mask.i190 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %mask.i190, align 4
  %conv.i191 = trunc i32 %198 to i8
  %199 = ptrtoint ptr %hci.i.i.i183 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %hci.i.i.i183, align 8
  %read8.i.i22.i192 = getelementptr inbounds %struct.rtw_hci_ops, ptr %200, i32 0, i32 11
  %201 = ptrtoint ptr %read8.i.i22.i192 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %read8.i.i22.i192, align 4
  %call.i.i23.i193 = tail call zeroext i8 %202(ptr noundef %rtwdev, i32 noundef %196) #5
  %or5.i24.i194 = or i8 %call.i.i23.i193, %conv.i191
  %203 = ptrtoint ptr %hci.i.i.i183 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %hci.i.i.i183, align 8
  %write8.i.i25.i195 = getelementptr inbounds %struct.rtw_hci_ops, ptr %204, i32 0, i32 14
  %205 = ptrtoint ptr %write8.i.i25.i195 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %write8.i.i25.i195, align 4
  tail call void %206(ptr noundef %rtwdev, i32 noundef %196, i8 noundef zeroext %or5.i24.i194) #5
  br label %land.lhs.true48

sw.bb22:                                          ; preds = %rtw_coex_check_rfk.exit
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.154, ptr noundef nonnull @__func__.rtw_coex_set_ant_path) #5
  tail call fastcc void @rtw_coex_set_gnt_bt(ptr noundef %rtwdev, i8 noundef zeroext 0)
  tail call fastcc void @rtw_coex_set_gnt_wl(ptr noundef %rtwdev, i8 noundef zeroext 3)
  %chip1.i198 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %207 = ptrtoint ptr %chip1.i198 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %chip1.i198, align 4
  %btg_reg2.i199 = getelementptr inbounds %struct.rtw_chip_info, ptr %208, i32 0, i32 93
  %209 = ptrtoint ptr %btg_reg2.i199 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %btg_reg2.i199, align 4
  %hci.i.i.i200 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %211 = ptrtoint ptr %hci.i.i.i200 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %hci.i.i.i200, align 8
  %read8.i.i.i201 = getelementptr inbounds %struct.rtw_hci_ops, ptr %212, i32 0, i32 11
  %213 = ptrtoint ptr %read8.i.i.i201 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %read8.i.i.i201, align 4
  %call.i.i.i202 = tail call zeroext i8 %214(ptr noundef %rtwdev, i32 noundef 115) #5
  %or5.i.i203 = or i8 %call.i.i.i202, 4
  %215 = ptrtoint ptr %hci.i.i.i200 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %hci.i.i.i200, align 8
  %write8.i.i.i204 = getelementptr inbounds %struct.rtw_hci_ops, ptr %216, i32 0, i32 14
  %217 = ptrtoint ptr %write8.i.i.i204 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %write8.i.i.i204, align 4
  tail call void %218(ptr noundef %rtwdev, i32 noundef 115, i8 noundef zeroext %or5.i.i203) #5
  %tobool3.not.i205 = icmp eq ptr %210, null
  br i1 %tobool3.not.i205, label %sw.bb22.land.lhs.true48_crit_edge, label %if.then4.i213

sw.bb22.land.lhs.true48_crit_edge:                ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true48

if.then4.i213:                                    ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #7
  %219 = ptrtoint ptr %210 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %210, align 4
  %mask.i207 = getelementptr inbounds %struct.rtw_hw_reg, ptr %210, i32 0, i32 1
  %221 = ptrtoint ptr %mask.i207 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %mask.i207, align 4
  %conv.i208 = trunc i32 %222 to i8
  %223 = ptrtoint ptr %hci.i.i.i200 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %hci.i.i.i200, align 8
  %read8.i.i22.i209 = getelementptr inbounds %struct.rtw_hci_ops, ptr %224, i32 0, i32 11
  %225 = ptrtoint ptr %read8.i.i22.i209 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %read8.i.i22.i209, align 4
  %call.i.i23.i210 = tail call zeroext i8 %226(ptr noundef %rtwdev, i32 noundef %220) #5
  %or5.i24.i211 = or i8 %call.i.i23.i210, %conv.i208
  %227 = ptrtoint ptr %hci.i.i.i200 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %hci.i.i.i200, align 8
  %write8.i.i25.i212 = getelementptr inbounds %struct.rtw_hci_ops, ptr %228, i32 0, i32 14
  %229 = ptrtoint ptr %write8.i.i25.i212 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %write8.i.i25.i212, align 4
  tail call void %230(ptr noundef %rtwdev, i32 noundef %220, i8 noundef zeroext %or5.i24.i211) #5
  br label %land.lhs.true48

sw.bb23:                                          ; preds = %rtw_coex_check_rfk.exit
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.155, ptr noundef nonnull @__func__.rtw_coex_set_ant_path) #5
  tail call fastcc void @rtw_coex_set_gnt_bt(ptr noundef %rtwdev, i8 noundef zeroext 0)
  tail call fastcc void @rtw_coex_set_gnt_wl(ptr noundef %rtwdev, i8 noundef zeroext 0)
  %chip1.i215 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %231 = ptrtoint ptr %chip1.i215 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %chip1.i215, align 4
  %btg_reg2.i216 = getelementptr inbounds %struct.rtw_chip_info, ptr %232, i32 0, i32 93
  %233 = ptrtoint ptr %btg_reg2.i216 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %btg_reg2.i216, align 4
  %hci.i.i.i217 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %235 = ptrtoint ptr %hci.i.i.i217 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %hci.i.i.i217, align 8
  %read8.i.i.i218 = getelementptr inbounds %struct.rtw_hci_ops, ptr %236, i32 0, i32 11
  %237 = ptrtoint ptr %read8.i.i.i218 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %read8.i.i.i218, align 4
  %call.i.i.i219 = tail call zeroext i8 %238(ptr noundef %rtwdev, i32 noundef 115) #5
  %or5.i.i220 = or i8 %call.i.i.i219, 4
  %239 = ptrtoint ptr %hci.i.i.i217 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %hci.i.i.i217, align 8
  %write8.i.i.i221 = getelementptr inbounds %struct.rtw_hci_ops, ptr %240, i32 0, i32 14
  %241 = ptrtoint ptr %write8.i.i.i221 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %write8.i.i.i221, align 4
  tail call void %242(ptr noundef %rtwdev, i32 noundef 115, i8 noundef zeroext %or5.i.i220) #5
  %tobool3.not.i222 = icmp eq ptr %234, null
  br i1 %tobool3.not.i222, label %sw.bb23.land.lhs.true48_crit_edge, label %if.then4.i230

sw.bb23.land.lhs.true48_crit_edge:                ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true48

if.then4.i230:                                    ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #7
  %243 = ptrtoint ptr %234 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %234, align 4
  %mask.i224 = getelementptr inbounds %struct.rtw_hw_reg, ptr %234, i32 0, i32 1
  %245 = ptrtoint ptr %mask.i224 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %mask.i224, align 4
  %conv.i225 = trunc i32 %246 to i8
  %247 = ptrtoint ptr %hci.i.i.i217 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %hci.i.i.i217, align 8
  %read8.i.i22.i226 = getelementptr inbounds %struct.rtw_hci_ops, ptr %248, i32 0, i32 11
  %249 = ptrtoint ptr %read8.i.i22.i226 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %read8.i.i22.i226, align 4
  %call.i.i23.i227 = tail call zeroext i8 %250(ptr noundef %rtwdev, i32 noundef %244) #5
  %or5.i24.i228 = or i8 %call.i.i23.i227, %conv.i225
  %251 = ptrtoint ptr %hci.i.i.i217 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %hci.i.i.i217, align 8
  %write8.i.i25.i229 = getelementptr inbounds %struct.rtw_hci_ops, ptr %252, i32 0, i32 14
  %253 = ptrtoint ptr %write8.i.i25.i229 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %write8.i.i25.i229, align 4
  tail call void %254(ptr noundef %rtwdev, i32 noundef %244, i8 noundef zeroext %or5.i24.i228) #5
  br label %land.lhs.true48

do.end:                                           ; preds = %rtw_coex_check_rfk.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1355, i32 noundef 9, ptr noundef nonnull @.str.156) #5
  br label %cleanup

land.lhs.true48:                                  ; preds = %if.then4.i230, %sw.bb23.land.lhs.true48_crit_edge, %if.then4.i213, %sw.bb22.land.lhs.true48_crit_edge, %if.then4.i196, %sw.bb21.land.lhs.true48_crit_edge, %if.then4.i179, %sw.bb20.land.lhs.true48_crit_edge, %if.then6.i162, %sw.bb19.land.lhs.true48_crit_edge, %if.then4.i145, %sw.bb18.land.lhs.true48_crit_edge, %if.then4.i128, %sw.bb12.land.lhs.true48_crit_edge, %if.then6.i, %if.else.land.lhs.true48_crit_edge, %if.then4.i, %if.then10.land.lhs.true48_crit_edge
  %ctrl_type.0 = phi i8 [ 0, %if.then10.land.lhs.true48_crit_edge ], [ 0, %if.then4.i ], [ 0, %if.else.land.lhs.true48_crit_edge ], [ 0, %if.then6.i ], [ 0, %sw.bb12.land.lhs.true48_crit_edge ], [ 0, %if.then4.i128 ], [ 0, %sw.bb18.land.lhs.true48_crit_edge ], [ 0, %if.then4.i145 ], [ 4, %sw.bb19.land.lhs.true48_crit_edge ], [ 4, %if.then6.i162 ], [ 1, %sw.bb20.land.lhs.true48_crit_edge ], [ 1, %if.then4.i179 ], [ 0, %sw.bb21.land.lhs.true48_crit_edge ], [ 0, %if.then4.i196 ], [ 0, %sw.bb22.land.lhs.true48_crit_edge ], [ 0, %if.then4.i213 ], [ 0, %sw.bb23.land.lhs.true48_crit_edge ], [ 0, %if.then4.i230 ]
  %pos_type.0 = phi i8 [ 0, %if.then10.land.lhs.true48_crit_edge ], [ 0, %if.then4.i ], [ 0, %if.else.land.lhs.true48_crit_edge ], [ 0, %if.then6.i ], [ 0, %sw.bb12.land.lhs.true48_crit_edge ], [ 0, %if.then4.i128 ], [ 1, %sw.bb18.land.lhs.true48_crit_edge ], [ 1, %if.then4.i145 ], [ 3, %sw.bb19.land.lhs.true48_crit_edge ], [ 3, %if.then6.i162 ], [ 3, %sw.bb20.land.lhs.true48_crit_edge ], [ 3, %if.then4.i179 ], [ 2, %sw.bb21.land.lhs.true48_crit_edge ], [ 2, %if.then4.i196 ], [ 4, %sw.bb22.land.lhs.true48_crit_edge ], [ 4, %if.then4.i213 ], [ 4, %sw.bb23.land.lhs.true48_crit_edge ], [ 4, %if.then4.i230 ]
  %255 = ptrtoint ptr %rfe to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %rfe, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %256)
  %tobool49.not = icmp eq i8 %256, 0
  br i1 %tobool49.not, label %land.lhs.true48.cleanup_crit_edge, label %if.then51

land.lhs.true48.cleanup_crit_edge:                ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then51:                                        ; preds = %land.lhs.true48
  %chip1.i232 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %257 = ptrtoint ptr %chip1.i232 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %chip1.i232, align 4
  %259 = ptrtoint ptr %258 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %258, align 4
  %coex_set_ant_switch.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %260, i32 0, i32 28
  %261 = ptrtoint ptr %coex_set_ant_switch.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %coex_set_ant_switch.i, align 4
  %tobool.not.i233 = icmp eq ptr %262, null
  br i1 %tobool.not.i233, label %if.then51.cleanup_crit_edge, label %if.end.i234

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i234:                                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %262(ptr noundef %rtwdev, i8 noundef zeroext %ctrl_type.0, i8 noundef zeroext %pos_type.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i234, %if.then51.cleanup_crit_edge, %land.lhs.true48.cleanup_crit_edge, %do.end, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_coex_table(ptr noundef %rtwdev, i1 noundef zeroext %force, i8 noundef zeroext %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip2 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip2, align 4
  %cur_table = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 8
  %2 = ptrtoint ptr %cur_table to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %type, ptr %cur_table, align 4
  %conv = zext i8 %type to i32
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.159, i32 noundef %conv) #5
  %share_ant = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %3 = ptrtoint ptr %share_ant to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %share_ant, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %table_sant_num = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 75
  %5 = ptrtoint ptr %table_sant_num to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %table_sant_num, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %type)
  %cmp = icmp ugt i8 %6, %type
  br i1 %cmp, label %if.then7, label %if.then.if.end28_crit_edge

if.then.if.end28_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then7:                                         ; preds = %if.then
  %table_sant = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 87
  %7 = ptrtoint ptr %table_sant to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %table_sant, align 4
  %arrayidx = getelementptr %struct.coex_table_para, ptr %8, i32 %conv
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %wl = getelementptr %struct.coex_table_para, ptr %8, i32 %conv, i32 1
  %11 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wl, align 4
  br i1 %force, label %if.then7.if.end10.i_crit_edge, label %land.lhs.true.i

if.then7.if.end10.i_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %if.then7
  %reason.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 3
  %13 = ptrtoint ptr %reason.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %reason.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %14)
  %cmp.not.i = icmp eq i8 %14, 13
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end10.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %15 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %18(ptr noundef %rtwdev, i32 noundef 1728) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %10)
  %cmp3.i = icmp eq i32 %call.i.i, %10
  br i1 %cmp3.i, label %land.lhs.true5.i, label %if.then.i.if.end10.i_crit_edge

if.then.i.if.end10.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

land.lhs.true5.i:                                 ; preds = %if.then.i
  %19 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hci.i.i, align 8
  %read32.i23.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %read32.i23.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read32.i23.i, align 4
  %call.i24.i = tail call i32 %22(ptr noundef %rtwdev, i32 noundef 1732) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i24.i, i32 %12)
  %cmp7.i = icmp eq i32 %call.i24.i, %12
  br i1 %cmp7.i, label %land.lhs.true5.i.if.end28_crit_edge, label %land.lhs.true5.i.if.end10.i_crit_edge

land.lhs.true5.i.if.end10.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

land.lhs.true5.i.if.end28_crit_edge:              ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.end10.i:                                       ; preds = %land.lhs.true5.i.if.end10.i_crit_edge, %if.then.i.if.end10.i_crit_edge, %land.lhs.true.i.if.end10.i_crit_edge, %if.then7.if.end10.i_crit_edge
  %hci.i25.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %23 = ptrtoint ptr %hci.i25.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hci.i25.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %24, i32 0, i32 16
  %25 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write32.i.i, align 4
  tail call void %26(ptr noundef %rtwdev, i32 noundef 1728, i32 noundef %10) #5
  %27 = ptrtoint ptr %hci.i25.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hci.i25.i, align 8
  %write32.i27.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %28, i32 0, i32 16
  %29 = ptrtoint ptr %write32.i27.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write32.i27.i, align 4
  tail call void %30(ptr noundef %rtwdev, i32 noundef 1732, i32 noundef %12) #5
  %31 = ptrtoint ptr %hci.i25.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hci.i25.i, align 8
  %write32.i29.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %32, i32 0, i32 16
  %33 = ptrtoint ptr %write32.i29.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write32.i29.i, align 4
  tail call void %34(ptr noundef %rtwdev, i32 noundef 1736, i32 noundef -251658241) #5
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.160, ptr noundef nonnull @__func__.rtw_coex_set_table, i32 noundef %10, i32 noundef %12) #5
  br label %if.end28

if.else:                                          ; preds = %entry
  %sub = add i8 %type, -100
  %table_nsant_num = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 76
  %35 = ptrtoint ptr %table_nsant_num to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %table_nsant_num, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %sub, i8 %36)
  %cmp16 = icmp ult i8 %sub, %36
  br i1 %cmp16, label %if.then18, label %if.else.if.end28_crit_edge

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then18:                                        ; preds = %if.else
  %conv14 = zext i8 %sub to i32
  %table_nsant = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 86
  %37 = ptrtoint ptr %table_nsant to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %table_nsant, align 4
  %arrayidx21 = getelementptr %struct.coex_table_para, ptr %38, i32 %conv14
  %39 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx21, align 4
  %wl26 = getelementptr %struct.coex_table_para, ptr %38, i32 %conv14, i32 1
  %41 = ptrtoint ptr %wl26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %wl26, align 4
  br i1 %force, label %if.then18.if.end10.i70_crit_edge, label %land.lhs.true.i56

if.then18.if.end10.i70_crit_edge:                 ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i70

land.lhs.true.i56:                                ; preds = %if.then18
  %reason.i54 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 3
  %43 = ptrtoint ptr %reason.i54 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %reason.i54, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %44)
  %cmp.not.i55 = icmp eq i8 %44, 13
  br i1 %cmp.not.i55, label %land.lhs.true.i56.if.end10.i70_crit_edge, label %if.then.i61

land.lhs.true.i56.if.end10.i70_crit_edge:         ; preds = %land.lhs.true.i56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i70

if.then.i61:                                      ; preds = %land.lhs.true.i56
  %hci.i.i57 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %45 = ptrtoint ptr %hci.i.i57 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hci.i.i57, align 8
  %read32.i.i58 = getelementptr inbounds %struct.rtw_hci_ops, ptr %46, i32 0, i32 13
  %47 = ptrtoint ptr %read32.i.i58 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read32.i.i58, align 4
  %call.i.i59 = tail call i32 %48(ptr noundef %rtwdev, i32 noundef 1728) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i59, i32 %40)
  %cmp3.i60 = icmp eq i32 %call.i.i59, %40
  br i1 %cmp3.i60, label %land.lhs.true5.i65, label %if.then.i61.if.end10.i70_crit_edge

if.then.i61.if.end10.i70_crit_edge:               ; preds = %if.then.i61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i70

land.lhs.true5.i65:                               ; preds = %if.then.i61
  %49 = ptrtoint ptr %hci.i.i57 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hci.i.i57, align 8
  %read32.i23.i62 = getelementptr inbounds %struct.rtw_hci_ops, ptr %50, i32 0, i32 13
  %51 = ptrtoint ptr %read32.i23.i62 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read32.i23.i62, align 4
  %call.i24.i63 = tail call i32 %52(ptr noundef %rtwdev, i32 noundef 1732) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i24.i63, i32 %42)
  %cmp7.i64 = icmp eq i32 %call.i24.i63, %42
  br i1 %cmp7.i64, label %land.lhs.true5.i65.if.end28_crit_edge, label %land.lhs.true5.i65.if.end10.i70_crit_edge

land.lhs.true5.i65.if.end10.i70_crit_edge:        ; preds = %land.lhs.true5.i65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i70

land.lhs.true5.i65.if.end28_crit_edge:            ; preds = %land.lhs.true5.i65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.end10.i70:                                     ; preds = %land.lhs.true5.i65.if.end10.i70_crit_edge, %if.then.i61.if.end10.i70_crit_edge, %land.lhs.true.i56.if.end10.i70_crit_edge, %if.then18.if.end10.i70_crit_edge
  %hci.i25.i66 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %53 = ptrtoint ptr %hci.i25.i66 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hci.i25.i66, align 8
  %write32.i.i67 = getelementptr inbounds %struct.rtw_hci_ops, ptr %54, i32 0, i32 16
  %55 = ptrtoint ptr %write32.i.i67 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write32.i.i67, align 4
  tail call void %56(ptr noundef %rtwdev, i32 noundef 1728, i32 noundef %40) #5
  %57 = ptrtoint ptr %hci.i25.i66 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hci.i25.i66, align 8
  %write32.i27.i68 = getelementptr inbounds %struct.rtw_hci_ops, ptr %58, i32 0, i32 16
  %59 = ptrtoint ptr %write32.i27.i68 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write32.i27.i68, align 4
  tail call void %60(ptr noundef %rtwdev, i32 noundef 1732, i32 noundef %42) #5
  %61 = ptrtoint ptr %hci.i25.i66 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hci.i25.i66, align 8
  %write32.i29.i69 = getelementptr inbounds %struct.rtw_hci_ops, ptr %62, i32 0, i32 16
  %63 = ptrtoint ptr %write32.i29.i69 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write32.i29.i69, align 4
  tail call void %64(ptr noundef %rtwdev, i32 noundef 1736, i32 noundef -251658241) #5
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.160, ptr noundef nonnull @__func__.rtw_coex_set_table, i32 noundef %40, i32 noundef %42) #5
  br label %if.end28

if.end28:                                         ; preds = %if.end10.i70, %land.lhs.true5.i65.if.end28_crit_edge, %if.else.if.end28_crit_edge, %if.end10.i, %land.lhs.true5.i.if.end28_crit_edge, %if.then.if.end28_crit_edge
  %type.addr.0 = phi i8 [ %type, %if.then.if.end28_crit_edge ], [ %sub, %if.else.if.end28_crit_edge ], [ %type, %land.lhs.true5.i.if.end28_crit_edge ], [ %type, %if.end10.i ], [ %sub, %land.lhs.true5.i65.if.end28_crit_edge ], [ %sub, %if.end10.i70 ]
  %wl_slot_toggle_change = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 47
  %65 = ptrtoint ptr %wl_slot_toggle_change to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %wl_slot_toggle_change, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool29.not = icmp eq i8 %66, 0
  br i1 %tobool29.not, label %if.end28.if.end31_crit_edge, label %if.then30

if.end28.if.end31_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @rtw_btc_wltoggle_table_a(ptr noundef %rtwdev, i8 noundef zeroext %type.addr.0)
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end28.if.end31_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_coex_power_off_setting(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i, align 8
  %write16.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %write16.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write16.i, align 4
  tail call void %3(ptr noundef %rtwdev, i32 noundef 170, i16 noundef zeroext -32768) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_coex_init_hw_config(ptr noundef %rtwdev, i1 noundef zeroext %wifi_only) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__rtw_coex_init_hw_config(ptr noundef %rtwdev, i1 noundef zeroext %wifi_only)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__rtw_coex_init_hw_config(ptr noundef %rtwdev, i1 noundef zeroext %wifi_only) unnamed_addr #0 align 64 {
entry:
  %para.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__rtw_coex_init_hw_config) #5
  %stat.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9
  %uglygep57.i = getelementptr i8, ptr %rtwdev, i32 17724
  %0 = call ptr @memset(ptr %stat.i, i32 0, i32 364)
  %1 = ptrtoint ptr %uglygep57.i to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 33686018, ptr %uglygep57.i, align 1
  %uglygep58.i = getelementptr i8, ptr %rtwdev, i32 17728
  %2 = ptrtoint ptr %uglygep58.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 33686018, ptr %uglygep58.i, align 1
  %wl_coex_mode.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 81
  %3 = ptrtoint ptr %wl_coex_mode.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 4, ptr %wl_coex_mode.i, align 2
  %wl_rx_rate.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 78
  %4 = ptrtoint ptr %wl_rx_rate.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %wl_rx_rate.i, align 1
  %wl_rts_rx_rate.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 80
  %5 = ptrtoint ptr %wl_rts_rx_rate.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %wl_rts_rx_rate.i, align 1
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %6 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hci.i, align 8
  %read8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %read8.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read8.i, align 4
  %call.i = tail call zeroext i8 %9(ptr noundef %rtwdev, i32 noundef 241) #5
  %div12.i = lshr i8 %call.i, 4
  %kt_ver = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 58
  %10 = ptrtoint ptr %kt_ver to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %div12.i, ptr %kt_ver, align 1
  %chip1.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %11 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip1.i, align 4
  %scbd_support.i = getelementptr inbounds %struct.rtw_chip_info, ptr %12, i32 0, i32 68
  %13 = ptrtoint ptr %scbd_support.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %scbd_support.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %rtw_coex_read_scbd.exit.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

rtw_coex_read_scbd.exit.i:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hci.i, align 8
  %read16.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %18(ptr noundef %rtwdev, i32 noundef 170) #5
  %19 = and i16 %call.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool3.not.i = icmp eq i16 %19, 0
  br label %if.end.i

if.end.i:                                         ; preds = %rtw_coex_read_scbd.exit.i, %entry.if.end.i_crit_edge
  %bt_disabled.0.off0.i = phi i1 [ %tobool3.not.i, %rtw_coex_read_scbd.exit.i ], [ false, %entry.if.end.i_crit_edge ]
  %20 = ptrtoint ptr %stat.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %stat.i, align 4, !range !601
  %22 = zext i8 %21 to i32
  %conv8.i = zext i1 %bt_disabled.0.off0.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv8.i)
  %cmp.not.i = icmp eq i32 %22, %conv8.i
  br i1 %cmp.not.i, label %if.end.i.rtw_coex_monitor_bt_enable.exit_crit_edge, label %if.then10.i

if.end.i.rtw_coex_monitor_bt_enable.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_monitor_bt_enable.exit

if.then10.i:                                      ; preds = %if.end.i
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.146, i32 noundef %22, i32 noundef %conv8.i) #5
  %frombool18.i = zext i1 %bt_disabled.0.off0.i to i8
  %23 = ptrtoint ptr %stat.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %frombool18.i, ptr %stat.i, align 4
  %bt_ble_scan_type.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 69
  %24 = ptrtoint ptr %bt_ble_scan_type.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %bt_ble_scan_type.i, align 1
  %cur_bt_lna_lvl.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 11
  %25 = ptrtoint ptr %cur_bt_lna_lvl.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %cur_bt_lna_lvl.i, align 1
  br i1 %bt_disabled.0.off0.i, label %if.else.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  %bt_reenable.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 23
  %26 = ptrtoint ptr %bt_reenable.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %bt_reenable.i, align 1
  %27 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rtwdev, align 8
  %bt_reenable_work.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 13
  tail call void @ieee80211_queue_delayed_work(ptr noundef %28, ptr noundef %bt_reenable_work.i, i32 noundef 1500) #5
  br label %rtw_coex_monitor_bt_enable.exit

if.else.i:                                        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  %bt_mailbox_reply.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 29
  %29 = ptrtoint ptr %bt_mailbox_reply.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %bt_mailbox_reply.i, align 1
  %bt_reenable22.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 23
  %30 = ptrtoint ptr %bt_reenable22.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %bt_reenable22.i, align 1
  br label %rtw_coex_monitor_bt_enable.exit

rtw_coex_monitor_bt_enable.exit:                  ; preds = %if.else.i, %if.then21.i, %if.end.i.rtw_coex_monitor_bt_enable.exit_crit_edge
  %wl_slot_extend = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 41
  %31 = ptrtoint ptr %wl_slot_extend to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %wl_slot_extend, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not = icmp eq i8 %32, 0
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %para.i) #5
  %33 = getelementptr inbounds i8, ptr %para.i, i32 2
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 0, ptr %33, align 1
  %35 = ptrtoint ptr %para.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 12, ptr %para.i, align 1
  %arrayidx2.i = getelementptr inbounds [6 x i8], ptr %para.i, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %arrayidx2.i, align 1
  br i1 %tobool.not, label %if.else.i38, label %if.then.i

if.then.i:                                        ; preds = %rtw_coex_monitor_bt_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %arrayidx2.i, align 1
  br label %rtw_coex_wl_slot_extend.exit

if.else.i38:                                      ; preds = %rtw_coex_monitor_bt_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx4.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 90, i32 6
  %38 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %arrayidx4.i, align 4
  br label %rtw_coex_wl_slot_extend.exit

rtw_coex_wl_slot_extend.exit:                     ; preds = %if.else.i38, %if.then.i
  %39 = ptrtoint ptr %wl_slot_extend to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %32, ptr %wl_slot_extend, align 1
  call void @rtw_fw_bt_wifi_control(ptr noundef %rtwdev, i8 noundef zeroext 12, ptr noundef %arrayidx2.i) #5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %para.i) #5
  %40 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hci.i, align 8
  %read8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %read8.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read8.i.i, align 4
  %call.i.i = call zeroext i8 %43(ptr noundef %rtwdev, i32 noundef 1360) #5
  %or5.i = or i8 %call.i.i, 8
  %44 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hci.i, align 8
  %write8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %45, i32 0, i32 14
  %46 = ptrtoint ptr %write8.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write8.i.i, align 4
  call void %47(ptr noundef %rtwdev, i32 noundef 1360, i8 noundef zeroext %or5.i) #5
  %48 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %chip1.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %coex_set_rfe_type.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %51, i32 0, i32 31
  %52 = ptrtoint ptr %coex_set_rfe_type.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %coex_set_rfe_type.i, align 4
  call void %53(ptr noundef %rtwdev) #5
  %54 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %chip1.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %coex_set_init.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %57, i32 0, i32 27
  %58 = ptrtoint ptr %coex_set_init.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %coex_set_init.i, align 4
  call void %59(ptr noundef %rtwdev) #5
  %60 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hci.i, align 8
  %read8.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %61, i32 0, i32 11
  %62 = ptrtoint ptr %read8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read8.i.i.i, align 4
  %call.i.i.i43 = call zeroext i8 %63(ptr noundef %rtwdev, i32 noundef 1740) #5
  %64 = or i8 %call.i.i.i43, 8
  %65 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hci.i, align 8
  %write8.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %66, i32 0, i32 14
  %67 = ptrtoint ptr %write8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write8.i.i.i, align 4
  call void %68(ptr noundef %rtwdev, i32 noundef 1740, i8 noundef zeroext %64) #5
  %69 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hci.i, align 8
  %read8.i.i.i45 = getelementptr inbounds %struct.rtw_hci_ops, ptr %70, i32 0, i32 11
  %71 = ptrtoint ptr %read8.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %read8.i.i.i45, align 4
  %call.i.i.i46 = call zeroext i8 %72(ptr noundef %rtwdev, i32 noundef 1740) #5
  %73 = or i8 %call.i.i.i46, 16
  %74 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hci.i, align 8
  %write8.i.i.i51 = getelementptr inbounds %struct.rtw_hci_ops, ptr %75, i32 0, i32 14
  %76 = ptrtoint ptr %write8.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write8.i.i.i51, align 4
  call void %77(ptr noundef %rtwdev, i32 noundef 1740, i8 noundef zeroext %73) #5
  %78 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hci.i, align 8
  %read8.i.i.i53 = getelementptr inbounds %struct.rtw_hci_ops, ptr %79, i32 0, i32 11
  %80 = ptrtoint ptr %read8.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %read8.i.i.i53, align 4
  %call.i.i.i54 = call zeroext i8 %81(ptr noundef %rtwdev, i32 noundef 1743) #5
  %82 = or i8 %call.i.i.i54, 8
  %83 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hci.i, align 8
  %write8.i.i.i59 = getelementptr inbounds %struct.rtw_hci_ops, ptr %84, i32 0, i32 14
  %85 = ptrtoint ptr %write8.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write8.i.i.i59, align 4
  call void %86(ptr noundef %rtwdev, i32 noundef 1743, i8 noundef zeroext %82) #5
  %wl_rf_off = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 7
  %87 = ptrtoint ptr %wl_rf_off to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %wl_rf_off, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool3.not = icmp eq i8 %88, 0
  br i1 %tobool3.not, label %if.else, label %if.then

if.then:                                          ; preds = %rtw_coex_wl_slot_extend.exit
  call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext true, i8 noundef zeroext 2)
  %89 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %chip1.i, align 4
  %scbd_support.i61 = getelementptr inbounds %struct.rtw_chip_info, ptr %90, i32 0, i32 68
  %91 = ptrtoint ptr %scbd_support.i61 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %scbd_support.i61, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i62 = icmp eq i8 %92, 0
  br i1 %tobool.not.i62, label %if.then.rtw_coex_write_scbd.exit_crit_edge, label %if.end.i63

if.then.rtw_coex_write_scbd.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_write_scbd.exit

if.end.i63:                                       ; preds = %if.then
  %score_board.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 87
  %93 = ptrtoint ptr %score_board.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %score_board.i, align 2
  %new_scbd10_def.i = getelementptr inbounds %struct.rtw_chip_info, ptr %90, i32 0, i32 69
  %95 = ptrtoint ptr %new_scbd10_def.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %new_scbd10_def.i, align 2, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool5.not.i.not = icmp eq i8 %96, 0
  %97 = or i16 %94, 1026
  %spec.select = select i1 %tobool5.not.i.not, i16 %97, i16 0
  call void @__sanitizer_cov_trace_cmp2(i16 %spec.select, i16 %94)
  %cmp.not.i65 = icmp eq i16 %spec.select, %94
  br i1 %cmp.not.i65, label %if.end.i63.rtw_coex_write_scbd.exit_crit_edge, label %if.then36.i

if.end.i63.rtw_coex_write_scbd.exit_crit_edge:    ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_write_scbd.exit

if.then36.i:                                      ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #7
  %98 = ptrtoint ptr %score_board.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %spec.select, ptr %score_board.i, align 2
  %99 = or i16 %spec.select, -32768
  %100 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hci.i, align 8
  %write16.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %101, i32 0, i32 15
  %102 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %write16.i.i, align 4
  call void %103(ptr noundef %rtwdev, i32 noundef 170, i16 noundef zeroext %99) #5
  br label %rtw_coex_write_scbd.exit

rtw_coex_write_scbd.exit:                         ; preds = %if.then36.i, %if.end.i63.rtw_coex_write_scbd.exit_crit_edge, %if.then.rtw_coex_write_scbd.exit_crit_edge
  %stop_dm = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 4
  %104 = ptrtoint ptr %stop_dm to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %stop_dm, align 1
  call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.162, ptr noundef nonnull @__func__.__rtw_coex_init_hw_config) #5
  br label %if.end9

if.else:                                          ; preds = %rtw_coex_wl_slot_extend.exit
  br i1 %wifi_only, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.else
  call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext true, i8 noundef zeroext 1)
  %105 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %chip1.i, align 4
  %scbd_support.i68 = getelementptr inbounds %struct.rtw_chip_info, ptr %106, i32 0, i32 68
  %107 = ptrtoint ptr %scbd_support.i68 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %scbd_support.i68, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool.not.i69 = icmp eq i8 %108, 0
  br i1 %tobool.not.i69, label %if.then5.rtw_coex_write_scbd.exit81_crit_edge, label %if.end.i73

if.then5.rtw_coex_write_scbd.exit81_crit_edge:    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_write_scbd.exit81

if.end.i73:                                       ; preds = %if.then5
  %score_board.i70 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 87
  %109 = ptrtoint ptr %score_board.i70 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %score_board.i70, align 2
  %or2361.i = or i16 %110, 3
  call void @__sanitizer_cov_trace_cmp2(i16 %or2361.i, i16 %110)
  %cmp.not.i76 = icmp eq i16 %or2361.i, %110
  br i1 %cmp.not.i76, label %if.end.i73.rtw_coex_write_scbd.exit81_crit_edge, label %if.then36.i80

if.end.i73.rtw_coex_write_scbd.exit81_crit_edge:  ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_write_scbd.exit81

if.then36.i80:                                    ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #7
  %111 = ptrtoint ptr %score_board.i70 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %or2361.i, ptr %score_board.i70, align 2
  %112 = or i16 %110, -32765
  %113 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %hci.i, align 8
  %write16.i.i79 = getelementptr inbounds %struct.rtw_hci_ops, ptr %114, i32 0, i32 15
  %115 = ptrtoint ptr %write16.i.i79 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %write16.i.i79, align 4
  call void %116(ptr noundef %rtwdev, i32 noundef 170, i16 noundef zeroext %112) #5
  br label %rtw_coex_write_scbd.exit81

rtw_coex_write_scbd.exit81:                       ; preds = %if.then36.i80, %if.end.i73.rtw_coex_write_scbd.exit81_crit_edge, %if.then5.rtw_coex_write_scbd.exit81_crit_edge
  %stop_dm6 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 4
  %117 = ptrtoint ptr %stop_dm6 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %stop_dm6, align 1
  br label %if.end9

if.else7:                                         ; preds = %if.else
  call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext true, i8 noundef zeroext 0)
  %118 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %chip1.i, align 4
  %scbd_support.i83 = getelementptr inbounds %struct.rtw_chip_info, ptr %119, i32 0, i32 68
  %120 = ptrtoint ptr %scbd_support.i83 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %scbd_support.i83, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool.not.i84 = icmp eq i8 %121, 0
  br i1 %tobool.not.i84, label %if.else7.rtw_coex_write_scbd.exit97_crit_edge, label %if.end.i88

if.else7.rtw_coex_write_scbd.exit97_crit_edge:    ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_write_scbd.exit97

if.end.i88:                                       ; preds = %if.else7
  %score_board.i85 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 87
  %122 = ptrtoint ptr %score_board.i85 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %score_board.i85, align 2
  %or2361.i90 = or i16 %123, 3
  call void @__sanitizer_cov_trace_cmp2(i16 %or2361.i90, i16 %123)
  %cmp.not.i92 = icmp eq i16 %or2361.i90, %123
  br i1 %cmp.not.i92, label %if.end.i88.rtw_coex_write_scbd.exit97_crit_edge, label %if.then36.i96

if.end.i88.rtw_coex_write_scbd.exit97_crit_edge:  ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_write_scbd.exit97

if.then36.i96:                                    ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #7
  %124 = ptrtoint ptr %score_board.i85 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %or2361.i90, ptr %score_board.i85, align 2
  %125 = or i16 %123, -32765
  %126 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hci.i, align 8
  %write16.i.i95 = getelementptr inbounds %struct.rtw_hci_ops, ptr %127, i32 0, i32 15
  %128 = ptrtoint ptr %write16.i.i95 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %write16.i.i95, align 4
  call void %129(ptr noundef %rtwdev, i32 noundef 170, i16 noundef zeroext %125) #5
  br label %rtw_coex_write_scbd.exit97

rtw_coex_write_scbd.exit97:                       ; preds = %if.then36.i96, %if.end.i88.rtw_coex_write_scbd.exit97_crit_edge, %if.else7.rtw_coex_write_scbd.exit97_crit_edge
  %stop_dm8 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 4
  %130 = ptrtoint ptr %stop_dm8 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %stop_dm8, align 1
  %freeze = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 5
  %131 = ptrtoint ptr %freeze to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 1, ptr %freeze, align 2
  br label %if.end9

if.end9:                                          ; preds = %rtw_coex_write_scbd.exit97, %rtw_coex_write_scbd.exit81, %rtw_coex_write_scbd.exit
  call fastcc void @rtw_coex_table(ptr noundef %rtwdev, i1 noundef zeroext true, i8 noundef zeroext 1)
  call fastcc void @rtw_coex_tdma(ptr noundef %rtwdev, i1 noundef zeroext true, i32 noundef 0)
  %132 = ptrtoint ptr %stat.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %stat.i, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool.not.i99 = icmp eq i8 %133, 0
  br i1 %tobool.not.i99, label %if.end.i100, label %if.end9.rtw_coex_query_bt_info.exit_crit_edge

if.end9.rtw_coex_query_bt_info.exit_crit_edge:    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_query_bt_info.exit

if.end.i100:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rtw_coex_query_bt_info) #5
  call void @rtw_fw_query_bt_info(ptr noundef %rtwdev) #5
  br label %rtw_coex_query_bt_info.exit

rtw_coex_query_bt_info.exit:                      ; preds = %if.end.i100, %if.end9.rtw_coex_query_bt_info.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_coex_ips_notify(ptr noundef %rtwdev, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %manual_control = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 8
  %0 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %manual_control, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %stop_dm = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 4
  %2 = ptrtoint ptr %stop_dm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stop_dm, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.264)
  switch i8 %type, label %if.end.cleanup_crit_edge [
    i8 1, label %if.then4
    i8 0, label %if.then8
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %if.end
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.8) #5
  %wl_under_ips = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 31
  %5 = ptrtoint ptr %wl_under_ips to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %wl_under_ips, align 1
  %chip1.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %6 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip1.i, align 4
  %scbd_support.i = getelementptr inbounds %struct.rtw_chip_info, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %scbd_support.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %scbd_support.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then4.rtw_coex_write_scbd.exit_crit_edge, label %if.end.i

if.then4.rtw_coex_write_scbd.exit_crit_edge:      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_write_scbd.exit

if.end.i:                                         ; preds = %if.then4
  %score_board.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 87
  %10 = ptrtoint ptr %score_board.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %score_board.i, align 2
  %new_scbd10_def.i = getelementptr inbounds %struct.rtw_chip_info, ptr %7, i32 0, i32 69
  %12 = ptrtoint ptr %new_scbd10_def.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %new_scbd10_def.i, align 2, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not.i.not = icmp eq i8 %13, 0
  %14 = or i16 %11, 1026
  %spec.select = select i1 %tobool5.not.i.not, i16 %14, i16 0
  call void @__sanitizer_cov_trace_cmp2(i16 %spec.select, i16 %11)
  %cmp.not.i = icmp eq i16 %spec.select, %11
  br i1 %cmp.not.i, label %if.end.i.rtw_coex_write_scbd.exit_crit_edge, label %if.then36.i

if.end.i.rtw_coex_write_scbd.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_write_scbd.exit

if.then36.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %score_board.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %spec.select, ptr %score_board.i, align 2
  %16 = or i16 %spec.select, -32768
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %17 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hci.i.i, align 8
  %write16.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write16.i.i, align 4
  tail call void %20(ptr noundef %rtwdev, i32 noundef 170, i16 noundef zeroext %16) #5
  br label %rtw_coex_write_scbd.exit

rtw_coex_write_scbd.exit:                         ; preds = %if.then36.i, %if.end.i.rtw_coex_write_scbd.exit_crit_edge, %if.then4.rtw_coex_write_scbd.exit_crit_edge
  tail call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext true, i8 noundef zeroext 2)
  %21 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip1.i, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rtw_coex_action_coex_all_off) #5
  %wl_rf_para_rx.i = getelementptr inbounds %struct.rtw_chip_info, ptr %22, i32 0, i32 91
  %23 = ptrtoint ptr %wl_rf_para_rx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wl_rf_para_rx.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %.unpack.i = load i32, ptr %24, align 1
  %26 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  tail call fastcc void @rtw_coex_set_rf_para(ptr noundef %rtwdev, [1 x i32] %26) #5
  %share_ant.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %27 = ptrtoint ptr %share_ant.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %share_ant.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i24 = icmp eq i8 %28, 0
  %..i = select i1 %tobool.not.i24, i8 100, i8 2
  %.8.i = select i1 %tobool.not.i24, i32 100, i32 0
  tail call fastcc void @rtw_coex_table(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext %..i) #5
  tail call fastcc void @rtw_coex_tdma(ptr noundef %rtwdev, i1 noundef zeroext false, i32 noundef %.8.i) #5
  br label %cleanup

if.then8:                                         ; preds = %if.end
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.9) #5
  %chip1.i25 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %29 = ptrtoint ptr %chip1.i25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip1.i25, align 4
  %scbd_support.i26 = getelementptr inbounds %struct.rtw_chip_info, ptr %30, i32 0, i32 68
  %31 = ptrtoint ptr %scbd_support.i26 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %scbd_support.i26, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i27 = icmp eq i8 %32, 0
  br i1 %tobool.not.i27, label %if.then8.rtw_coex_write_scbd.exit39_crit_edge, label %if.end.i31

if.then8.rtw_coex_write_scbd.exit39_crit_edge:    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_write_scbd.exit39

if.end.i31:                                       ; preds = %if.then8
  %score_board.i28 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 87
  %33 = ptrtoint ptr %score_board.i28 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %score_board.i28, align 2
  %or2361.i = or i16 %34, 3
  call void @__sanitizer_cov_trace_cmp2(i16 %or2361.i, i16 %34)
  %cmp.not.i34 = icmp eq i16 %or2361.i, %34
  br i1 %cmp.not.i34, label %if.end.i31.rtw_coex_write_scbd.exit39_crit_edge, label %if.then36.i38

if.end.i31.rtw_coex_write_scbd.exit39_crit_edge:  ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_write_scbd.exit39

if.then36.i38:                                    ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %score_board.i28 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %or2361.i, ptr %score_board.i28, align 2
  %36 = or i16 %34, -32765
  %hci.i.i36 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %37 = ptrtoint ptr %hci.i.i36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hci.i.i36, align 8
  %write16.i.i37 = getelementptr inbounds %struct.rtw_hci_ops, ptr %38, i32 0, i32 15
  %39 = ptrtoint ptr %write16.i.i37 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write16.i.i37, align 4
  tail call void %40(ptr noundef %rtwdev, i32 noundef 170, i16 noundef zeroext %36) #5
  br label %rtw_coex_write_scbd.exit39

rtw_coex_write_scbd.exit39:                       ; preds = %if.then36.i38, %if.end.i31.rtw_coex_write_scbd.exit39_crit_edge, %if.then8.rtw_coex_write_scbd.exit39_crit_edge
  tail call fastcc void @__rtw_coex_init_hw_config(ptr noundef %rtwdev, i1 noundef zeroext false)
  %wl_under_ips9 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 31
  %41 = ptrtoint ptr %wl_under_ips9 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %wl_under_ips9, align 1
  br label %cleanup

cleanup:                                          ; preds = %rtw_coex_write_scbd.exit39, %rtw_coex_write_scbd.exit, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_coex_lps_notify(ptr noundef %rtwdev, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %manual_control = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 8
  %0 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %manual_control, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %stop_dm = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 4
  %2 = ptrtoint ptr %stop_dm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stop_dm, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.265)
  switch i8 %type, label %if.end.cleanup_crit_edge [
    i8 1, label %if.then4
    i8 0, label %if.then12
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %if.end
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.10) #5
  %wl_under_lps = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 30
  %5 = ptrtoint ptr %wl_under_lps to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %wl_under_lps, align 2
  %wl_force_lps_ctrl = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 34
  %6 = ptrtoint ptr %wl_force_lps_ctrl to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %wl_force_lps_ctrl, align 2, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then4
  %chip1.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %8 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip1.i, align 4
  %scbd_support.i = getelementptr inbounds %struct.rtw_chip_info, ptr %9, i32 0, i32 68
  %10 = ptrtoint ptr %scbd_support.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %scbd_support.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.then6.cleanup_crit_edge, label %if.end.i

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then6
  %score_board.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 87
  %12 = ptrtoint ptr %score_board.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %score_board.i, align 2
  %or2361.i = or i16 %13, 3
  call void @__sanitizer_cov_trace_cmp2(i16 %or2361.i, i16 %13)
  %cmp.not.i = icmp eq i16 %or2361.i, %13
  br i1 %cmp.not.i, label %if.end.i.cleanup_crit_edge, label %if.then36.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then36.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %score_board.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %or2361.i, ptr %score_board.i, align 2
  %15 = or i16 %13, -32765
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %16 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i, align 8
  %write16.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write16.i.i, align 4
  tail call void %19(ptr noundef %rtwdev, i32 noundef 170, i16 noundef zeroext %15) #5
  br label %cleanup

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtw_coex_write_scbd(ptr noundef %rtwdev, i16 noundef zeroext 1, i1 noundef zeroext false)
  tail call void @rtw_coex_write_scbd(ptr noundef %rtwdev, i16 noundef zeroext 64, i1 noundef zeroext false)
  tail call fastcc void @rtw_coex_run_coex(ptr noundef %rtwdev, i8 noundef zeroext 13)
  br label %cleanup

if.then12:                                        ; preds = %if.end
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.11) #5
  %wl_under_lps13 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 30
  %20 = ptrtoint ptr %wl_under_lps13 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %wl_under_lps13, align 2
  %chip1.i36 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %21 = ptrtoint ptr %chip1.i36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip1.i36, align 4
  %scbd_support.i37 = getelementptr inbounds %struct.rtw_chip_info, ptr %22, i32 0, i32 68
  %23 = ptrtoint ptr %scbd_support.i37 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %scbd_support.i37, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i38 = icmp eq i8 %24, 0
  br i1 %tobool.not.i38, label %if.then12.rtw_coex_write_scbd.exit48_crit_edge, label %if.end.i42

if.then12.rtw_coex_write_scbd.exit48_crit_edge:   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_write_scbd.exit48

if.end.i42:                                       ; preds = %if.then12
  %score_board.i39 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 87
  %25 = ptrtoint ptr %score_board.i39 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %score_board.i39, align 2
  %or2361.i43 = or i16 %26, 3
  call void @__sanitizer_cov_trace_cmp2(i16 %or2361.i43, i16 %26)
  %cmp.not.i44 = icmp eq i16 %or2361.i43, %26
  br i1 %cmp.not.i44, label %if.end.i42.rtw_coex_write_scbd.exit48_crit_edge, label %if.then36.i47

if.end.i42.rtw_coex_write_scbd.exit48_crit_edge:  ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_write_scbd.exit48

if.then36.i47:                                    ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %score_board.i39 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %or2361.i43, ptr %score_board.i39, align 2
  %28 = or i16 %26, -32765
  %hci.i.i45 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %29 = ptrtoint ptr %hci.i.i45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hci.i.i45, align 8
  %write16.i.i46 = getelementptr inbounds %struct.rtw_hci_ops, ptr %30, i32 0, i32 15
  %31 = ptrtoint ptr %write16.i.i46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write16.i.i46, align 4
  tail call void %32(ptr noundef %rtwdev, i32 noundef 170, i16 noundef zeroext %28) #5
  br label %rtw_coex_write_scbd.exit48

rtw_coex_write_scbd.exit48:                       ; preds = %if.then36.i47, %if.end.i42.rtw_coex_write_scbd.exit48_crit_edge, %if.then12.rtw_coex_write_scbd.exit48_crit_edge
  %wl_force_lps_ctrl14 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 34
  %33 = ptrtoint ptr %wl_force_lps_ctrl14 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %wl_force_lps_ctrl14, align 2, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool15.not = icmp eq i8 %34, 0
  br i1 %tobool15.not, label %if.then16, label %rtw_coex_write_scbd.exit48.if.end17_crit_edge

rtw_coex_write_scbd.exit48.if.end17_crit_edge:    ; preds = %rtw_coex_write_scbd.exit48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then16:                                        ; preds = %rtw_coex_write_scbd.exit48
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @rtw_coex_query_bt_info(ptr noundef %rtwdev)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %rtw_coex_write_scbd.exit48.if.end17_crit_edge
  tail call fastcc void @rtw_coex_run_coex(ptr noundef %rtwdev, i8 noundef zeroext 13)
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.else, %if.then36.i, %if.end.i.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_coex_run_coex(ptr noundef %rtwdev, i8 noundef zeroext %reason) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %stat = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 15, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !604

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2429, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 38
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool26.not = icmp eq i32 %and1.i, 0
  br i1 %tobool26.not, label %if.end.cleanup_crit_edge, label %if.end28

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %reason29 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 3
  %3 = ptrtoint ptr %reason29 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %reason, ptr %reason29, align 1
  %conv = zext i8 %reason to i32
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.180, ptr noundef nonnull @__func__.rtw_coex_run_coex, i32 noundef %conv) #5
  %chip2.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %4 = ptrtoint ptr %chip2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip2.i, align 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %.fr135.i = freeze i32 %7
  %8 = and i32 %.fr135.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.not.i = icmp eq i32 %8, 0
  %sta_cnt.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 35
  %9 = ptrtoint ptr %sta_cnt.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sta_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.i = icmp ne i8 %10, 0
  %wl_connected.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 40
  %frombool6.i = zext i1 %tobool4.i to i8
  %11 = ptrtoint ptr %wl_connected.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool6.i, ptr %wl_connected.i, align 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 128
  %wl_gl_busy.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 35
  %15 = ptrtoint ptr %wl_gl_busy.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %wl_gl_busy.i, align 1, !range !601
  %.lobit.i = lshr exact i32 %14, 7
  %17 = trunc i32 %.lobit.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %17)
  %cmp.not.i = icmp eq i8 %16, %17
  br i1 %cmp.not.i, label %if.end28.if.end19.i_crit_edge, label %if.then.i

if.end28.if.end19.i_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.i

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool10.not.i = icmp eq i32 %14, 0
  br i1 %tobool10.not.i, label %if.else.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %wl_gl_busy.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %wl_gl_busy.i, align 1
  br label %if.end19.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rtwdev, align 8
  %wl_remain_work.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 15
  tail call void @ieee80211_queue_delayed_work(ptr noundef %20, ptr noundef %wl_remain_work.i, i32 noundef 1200) #5
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else.i, %if.then17.i, %if.end28.if.end19.i_crit_edge
  %tx_throughput.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 10, i32 4
  %21 = ptrtoint ptr %tx_throughput.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_throughput.i, align 8
  %rx_throughput.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 10, i32 5
  %23 = ptrtoint ptr %rx_throughput.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_throughput.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp20.i = icmp ule i32 %22, %24
  %spec.select.i = zext i1 %cmp20.i to i8
  %25 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 84
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %spec.select.i, ptr %25, align 1
  br i1 %tobool.not.not.i, label %switch.early.test.i, label %if.end19.i.if.end45.i_crit_edge

if.end19.i.if.end45.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.i

switch.early.test.i:                              ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %reason)
  %27 = icmp ult i8 %reason, 6
  br i1 %27, label %switch.lookup, label %switch.early.test.i.if.end45.i_crit_edge

switch.early.test.i.if.end45.i_crit_edge:         ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.i

switch.lookup:                                    ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #7
  %28 = sext i8 %reason to i32
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.rtw_coex_run_coex, i32 0, i32 %28
  %29 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %29)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %if.end45.i

if.end45.i:                                       ; preds = %switch.lookup, %switch.early.test.i.if.end45.i_crit_edge, %if.end19.i.if.end45.i_crit_edge
  %.sink.i = phi i8 [ 1, %if.end19.i.if.end45.i_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %switch.early.test.i.if.end45.i_crit_edge ]
  %wl_linkscan_proc44.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 36
  %30 = ptrtoint ptr %wl_linkscan_proc44.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %.sink.i, ptr %wl_linkscan_proc44.i, align 4
  %cck_ok_cnt.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 6
  %31 = ptrtoint ptr %cck_ok_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cck_ok_cnt.i.i, align 4
  %cck_err_cnt.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 7
  %33 = ptrtoint ptr %cck_err_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cck_err_cnt.i.i, align 4
  %add.i.i = add i32 %34, %32
  %35 = ptrtoint ptr %wl_gl_busy.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %wl_gl_busy.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end45.i.rtw_coex_wl_noisy_detect.exit.i_crit_edge

if.end45.i.rtw_coex_wl_noisy_detect.exit.i_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_wl_noisy_detect.exit.i

if.then.i.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 250, i32 %add.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i, 250
  br i1 %cmp.i.i, label %if.then4.i.i, label %if.else.i.i

if.then4.i.i:                                     ; preds = %if.then.i.i
  %arrayidx.i.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 90, i32 5
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %38)
  %cmp5.i.i = icmp ult i32 %38, 5
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.then4.i.i.if.end.i.i_crit_edge

if.then4.i.i.if.end.i.i_crit_edge:                ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then6.i.i:                                     ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i = add nuw nsw i32 %38, 1
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %inc.i.i, ptr %arrayidx.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then6.i.i, %if.then4.i.i.if.end.i.i_crit_edge
  %40 = phi i32 [ %inc.i.i, %if.then6.i.i ], [ %38, %if.then4.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %40)
  %cmp11.i.i = icmp eq i32 %40, 5
  br i1 %cmp11.i.i, label %if.then12.i.i, label %if.end.i.i.if.end56.i.i_crit_edge

if.end.i.i.if.end56.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.i.i

if.then12.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx14.i.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 90, i32 3
  %41 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %arrayidx14.i.i, align 4
  %arrayidx16.i.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 90, i32 4
  br label %if.end56.sink.split.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %add.i.i)
  %cmp18.i.i = icmp ult i32 %add.i.i, 100
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.else37.i.i

if.then19.i.i:                                    ; preds = %if.else.i.i
  %arrayidx21.i.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 90, i32 3
  %42 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx21.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %43)
  %cmp22.i.i = icmp ult i32 %43, 5
  br i1 %cmp22.i.i, label %if.then23.i.i, label %if.then19.i.i.if.end27.i.i_crit_edge

if.then19.i.i.if.end27.i.i_crit_edge:             ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.i.i

if.then23.i.i:                                    ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc26.i.i = add nuw nsw i32 %43, 1
  %44 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %inc26.i.i, ptr %arrayidx21.i.i, align 4
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.then23.i.i, %if.then19.i.i.if.end27.i.i_crit_edge
  %45 = phi i32 [ %inc26.i.i, %if.then23.i.i ], [ %43, %if.then19.i.i.if.end27.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %45)
  %cmp30.i.i = icmp eq i32 %45, 5
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end27.i.i.if.end56.i.i_crit_edge

if.end27.i.i.if.end56.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.i.i

if.then31.i.i:                                    ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx33.i.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 90, i32 4
  %46 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %arrayidx33.i.i, align 4
  %arrayidx35.i.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 90, i32 5
  br label %if.end56.sink.split.i.i

if.else37.i.i:                                    ; preds = %if.else.i.i
  %arrayidx39.i.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 90, i32 4
  %47 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx39.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %48)
  %cmp40.i.i = icmp ult i32 %48, 5
  br i1 %cmp40.i.i, label %if.then41.i.i, label %if.else37.i.i.if.end45.i.i_crit_edge

if.else37.i.i.if.end45.i.i_crit_edge:             ; preds = %if.else37.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.i.i

if.then41.i.i:                                    ; preds = %if.else37.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc44.i.i = add nuw nsw i32 %48, 1
  %49 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %inc44.i.i, ptr %arrayidx39.i.i, align 4
  br label %if.end45.i.i

if.end45.i.i:                                     ; preds = %if.then41.i.i, %if.else37.i.i.if.end45.i.i_crit_edge
  %50 = phi i32 [ %inc44.i.i, %if.then41.i.i ], [ %48, %if.else37.i.i.if.end45.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %50)
  %cmp48.i.i = icmp eq i32 %50, 5
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end45.i.i.if.end56.i.i_crit_edge

if.end45.i.i.if.end56.i.i_crit_edge:              ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.i.i

if.then49.i.i:                                    ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx51.i.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 90, i32 3
  %51 = ptrtoint ptr %arrayidx51.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %arrayidx51.i.i, align 4
  %arrayidx53.i.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 90, i32 5
  br label %if.end56.sink.split.i.i

if.end56.sink.split.i.i:                          ; preds = %if.then49.i.i, %if.then31.i.i, %if.then12.i.i
  %arrayidx35.sink.i.i = phi ptr [ %arrayidx35.i.i, %if.then31.i.i ], [ %arrayidx53.i.i, %if.then49.i.i ], [ %arrayidx16.i.i, %if.then12.i.i ]
  %52 = ptrtoint ptr %arrayidx35.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %arrayidx35.sink.i.i, align 4
  br label %if.end56.i.i

if.end56.i.i:                                     ; preds = %if.end56.sink.split.i.i, %if.end45.i.i.if.end56.i.i_crit_edge, %if.end27.i.i.if.end56.i.i_crit_edge, %if.end.i.i.if.end56.i.i_crit_edge
  %arrayidx58.i.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 90, i32 5
  %53 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx58.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %54)
  %cmp59.i.i = icmp eq i32 %54, 5
  br i1 %cmp59.i.i, label %if.then60.i.i, label %if.else61.i.i

if.then60.i.i:                                    ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %wl_noisy_level.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 75
  %55 = ptrtoint ptr %wl_noisy_level.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 2, ptr %wl_noisy_level.i.i, align 2
  br label %if.end70.i.i

if.else61.i.i:                                    ; preds = %if.end56.i.i
  %arrayidx63.i.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 90, i32 4
  %56 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx63.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %57)
  %cmp64.i.i = icmp eq i32 %57, 5
  %wl_noisy_level66.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 75
  br i1 %cmp64.i.i, label %if.then65.i.i, label %if.else67.i.i

if.then65.i.i:                                    ; preds = %if.else61.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %wl_noisy_level66.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %wl_noisy_level66.i.i, align 2
  br label %if.end70.i.i

if.else67.i.i:                                    ; preds = %if.else61.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %wl_noisy_level66.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %wl_noisy_level66.i.i, align 2
  br label %if.end70.i.i

if.end70.i.i:                                     ; preds = %if.else67.i.i, %if.then65.i.i, %if.then60.i.i
  %wl_noisy_level71.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 75
  %60 = ptrtoint ptr %wl_noisy_level71.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %wl_noisy_level71.i.i, align 2
  %conv.i.i = zext i8 %61 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.186, i32 noundef %conv.i.i) #5
  br label %rtw_coex_wl_noisy_detect.exit.i

rtw_coex_wl_noisy_detect.exit.i:                  ; preds = %if.end70.i.i, %if.end45.i.rtw_coex_wl_noisy_detect.exit.i_crit_edge
  %wl_rssi_step.i = getelementptr inbounds %struct.rtw_chip_info, ptr %5, i32 0, i32 85
  %min_rssi.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 14
  %62 = ptrtoint ptr %min_rssi.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %min_rssi.i, align 8
  %conv6.i.i = zext i8 %63 to i32
  %arrayidx.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 5, i32 0
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.i, align 1
  %66 = ptrtoint ptr %wl_rssi_step.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %wl_rssi_step.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %67, align 1
  %70 = zext i8 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.266)
  switch i8 %65, label %if.else12.i.i [
    i8 2, label %rtw_coex_wl_noisy_detect.exit.i.if.then.i119.i_crit_edge
    i8 5, label %rtw_coex_wl_noisy_detect.exit.i.if.then.i119.i_crit_edge180
  ]

rtw_coex_wl_noisy_detect.exit.i.if.then.i119.i_crit_edge180: ; preds = %rtw_coex_wl_noisy_detect.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i119.i

rtw_coex_wl_noisy_detect.exit.i.if.then.i119.i_crit_edge: ; preds = %rtw_coex_wl_noisy_detect.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i119.i

if.then.i119.i:                                   ; preds = %rtw_coex_wl_noisy_detect.exit.i.if.then.i119.i_crit_edge, %rtw_coex_wl_noisy_detect.exit.i.if.then.i119.i_crit_edge180
  %71 = ptrtoint ptr %chip2.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %chip2.i, align 4
  %rssi_tolerance.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %72, i32 0, i32 74
  %73 = ptrtoint ptr %rssi_tolerance.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %rssi_tolerance.i.i, align 1
  %conv7.i.i = zext i8 %69 to i32
  %conv8.i.i = zext i8 %74 to i32
  %add.i118.i = add nuw nsw i32 %conv8.i.i, %conv7.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i118.i, i32 %conv6.i.i)
  %cmp9.not.i.i = icmp ugt i32 %add.i118.i, %conv6.i.i
  %..i.i = select i1 %cmp9.not.i.i, i8 5, i8 0
  br label %rtw_coex_next_rssi_state.exit.i

if.else12.i.i:                                    ; preds = %rtw_coex_wl_noisy_detect.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp1(i8 %63, i8 %69)
  %cmp15.i.i = icmp ult i8 %63, %69
  %.24.i.i = select i1 %cmp15.i.i, i8 2, i8 3
  br label %rtw_coex_next_rssi_state.exit.i

rtw_coex_next_rssi_state.exit.i:                  ; preds = %if.else12.i.i, %if.then.i119.i
  %next_state.0.i.i = phi i8 [ %..i.i, %if.then.i119.i ], [ %.24.i.i, %if.else12.i.i ]
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %next_state.0.i.i, ptr %arrayidx.i, align 1
  %arrayidx.1.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 5, i32 1
  %76 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.1.i, align 1
  %78 = ptrtoint ptr %wl_rssi_step.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %wl_rssi_step.i, align 4
  %arrayidx48.1.i = getelementptr i8, ptr %79, i32 1
  %80 = ptrtoint ptr %arrayidx48.1.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx48.1.i, align 1
  %82 = zext i8 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.267)
  switch i8 %77, label %if.else12.i.1.i [
    i8 2, label %rtw_coex_next_rssi_state.exit.i.if.then.i119.1.i_crit_edge
    i8 5, label %rtw_coex_next_rssi_state.exit.i.if.then.i119.1.i_crit_edge181
  ]

rtw_coex_next_rssi_state.exit.i.if.then.i119.1.i_crit_edge181: ; preds = %rtw_coex_next_rssi_state.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i119.1.i

rtw_coex_next_rssi_state.exit.i.if.then.i119.1.i_crit_edge: ; preds = %rtw_coex_next_rssi_state.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i119.1.i

if.then.i119.1.i:                                 ; preds = %rtw_coex_next_rssi_state.exit.i.if.then.i119.1.i_crit_edge, %rtw_coex_next_rssi_state.exit.i.if.then.i119.1.i_crit_edge181
  %83 = ptrtoint ptr %chip2.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %chip2.i, align 4
  %rssi_tolerance.i.1.i = getelementptr inbounds %struct.rtw_chip_info, ptr %84, i32 0, i32 74
  %85 = ptrtoint ptr %rssi_tolerance.i.1.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %rssi_tolerance.i.1.i, align 1
  %conv7.i.1.i = zext i8 %81 to i32
  %conv8.i.1.i = zext i8 %86 to i32
  %add.i118.1.i = add nuw nsw i32 %conv8.i.1.i, %conv7.i.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i118.1.i, i32 %conv6.i.i)
  %cmp9.not.i.1.i = icmp ugt i32 %add.i118.1.i, %conv6.i.i
  %..i.1.i = select i1 %cmp9.not.i.1.i, i8 5, i8 0
  br label %rtw_coex_next_rssi_state.exit.1.i

if.else12.i.1.i:                                  ; preds = %rtw_coex_next_rssi_state.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp1(i8 %63, i8 %81)
  %cmp15.i.1.i = icmp ult i8 %63, %81
  %.24.i.1.i = select i1 %cmp15.i.1.i, i8 2, i8 3
  br label %rtw_coex_next_rssi_state.exit.1.i

rtw_coex_next_rssi_state.exit.1.i:                ; preds = %if.else12.i.1.i, %if.then.i119.1.i
  %next_state.0.i.1.i = phi i8 [ %..i.1.i, %if.then.i119.1.i ], [ %.24.i.1.i, %if.else12.i.1.i ]
  %87 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %next_state.0.i.1.i, ptr %arrayidx.1.i, align 1
  %arrayidx.2.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 5, i32 2
  %88 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx.2.i, align 1
  %90 = ptrtoint ptr %wl_rssi_step.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %wl_rssi_step.i, align 4
  %arrayidx48.2.i = getelementptr i8, ptr %91, i32 2
  %92 = ptrtoint ptr %arrayidx48.2.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx48.2.i, align 1
  %94 = zext i8 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.268)
  switch i8 %89, label %if.else12.i.2.i [
    i8 2, label %rtw_coex_next_rssi_state.exit.1.i.if.then.i119.2.i_crit_edge
    i8 5, label %rtw_coex_next_rssi_state.exit.1.i.if.then.i119.2.i_crit_edge182
  ]

rtw_coex_next_rssi_state.exit.1.i.if.then.i119.2.i_crit_edge182: ; preds = %rtw_coex_next_rssi_state.exit.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i119.2.i

rtw_coex_next_rssi_state.exit.1.i.if.then.i119.2.i_crit_edge: ; preds = %rtw_coex_next_rssi_state.exit.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i119.2.i

if.then.i119.2.i:                                 ; preds = %rtw_coex_next_rssi_state.exit.1.i.if.then.i119.2.i_crit_edge, %rtw_coex_next_rssi_state.exit.1.i.if.then.i119.2.i_crit_edge182
  %95 = ptrtoint ptr %chip2.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %chip2.i, align 4
  %rssi_tolerance.i.2.i = getelementptr inbounds %struct.rtw_chip_info, ptr %96, i32 0, i32 74
  %97 = ptrtoint ptr %rssi_tolerance.i.2.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %rssi_tolerance.i.2.i, align 1
  %conv7.i.2.i = zext i8 %93 to i32
  %conv8.i.2.i = zext i8 %98 to i32
  %add.i118.2.i = add nuw nsw i32 %conv8.i.2.i, %conv7.i.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i118.2.i, i32 %conv6.i.i)
  %cmp9.not.i.2.i = icmp ugt i32 %add.i118.2.i, %conv6.i.i
  %..i.2.i = select i1 %cmp9.not.i.2.i, i8 5, i8 0
  br label %rtw_coex_next_rssi_state.exit.2.i

if.else12.i.2.i:                                  ; preds = %rtw_coex_next_rssi_state.exit.1.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp1(i8 %63, i8 %93)
  %cmp15.i.2.i = icmp ult i8 %63, %93
  %.24.i.2.i = select i1 %cmp15.i.2.i, i8 2, i8 3
  br label %rtw_coex_next_rssi_state.exit.2.i

rtw_coex_next_rssi_state.exit.2.i:                ; preds = %if.else12.i.2.i, %if.then.i119.2.i
  %next_state.0.i.2.i = phi i8 [ %..i.2.i, %if.then.i119.2.i ], [ %.24.i.2.i, %if.else12.i.2.i ]
  %99 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %next_state.0.i.2.i, ptr %arrayidx.2.i, align 1
  %arrayidx.3.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 5, i32 3
  %100 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx.3.i, align 1
  %102 = ptrtoint ptr %wl_rssi_step.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %wl_rssi_step.i, align 4
  %arrayidx48.3.i = getelementptr i8, ptr %103, i32 3
  %104 = ptrtoint ptr %arrayidx48.3.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx48.3.i, align 1
  %106 = zext i8 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.269)
  switch i8 %101, label %if.else12.i.3.i [
    i8 2, label %rtw_coex_next_rssi_state.exit.2.i.if.then.i119.3.i_crit_edge
    i8 5, label %rtw_coex_next_rssi_state.exit.2.i.if.then.i119.3.i_crit_edge183
  ]

rtw_coex_next_rssi_state.exit.2.i.if.then.i119.3.i_crit_edge183: ; preds = %rtw_coex_next_rssi_state.exit.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i119.3.i

rtw_coex_next_rssi_state.exit.2.i.if.then.i119.3.i_crit_edge: ; preds = %rtw_coex_next_rssi_state.exit.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i119.3.i

if.then.i119.3.i:                                 ; preds = %rtw_coex_next_rssi_state.exit.2.i.if.then.i119.3.i_crit_edge, %rtw_coex_next_rssi_state.exit.2.i.if.then.i119.3.i_crit_edge183
  %107 = ptrtoint ptr %chip2.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %chip2.i, align 4
  %rssi_tolerance.i.3.i = getelementptr inbounds %struct.rtw_chip_info, ptr %108, i32 0, i32 74
  %109 = ptrtoint ptr %rssi_tolerance.i.3.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %rssi_tolerance.i.3.i, align 1
  %conv7.i.3.i = zext i8 %105 to i32
  %conv8.i.3.i = zext i8 %110 to i32
  %add.i118.3.i = add nuw nsw i32 %conv8.i.3.i, %conv7.i.3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i118.3.i, i32 %conv6.i.i)
  %cmp9.not.i.3.i = icmp ugt i32 %add.i118.3.i, %conv6.i.i
  %..i.3.i = select i1 %cmp9.not.i.3.i, i8 5, i8 0
  br label %rtw_coex_next_rssi_state.exit.3.i

if.else12.i.3.i:                                  ; preds = %rtw_coex_next_rssi_state.exit.2.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp1(i8 %63, i8 %105)
  %cmp15.i.3.i = icmp ult i8 %63, %105
  %.24.i.3.i = select i1 %cmp15.i.3.i, i8 2, i8 3
  br label %rtw_coex_next_rssi_state.exit.3.i

rtw_coex_next_rssi_state.exit.3.i:                ; preds = %if.else12.i.3.i, %if.then.i119.3.i
  %next_state.0.i.3.i = phi i8 [ %..i.3.i, %if.then.i119.3.i ], [ %.24.i.3.i, %if.else12.i.3.i ]
  %111 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %next_state.0.i.3.i, ptr %arrayidx.3.i, align 1
  %112 = ptrtoint ptr %wl_linkscan_proc44.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %wl_linkscan_proc44.i, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool53.not.i = icmp eq i8 %113, 0
  br i1 %tobool53.not.i, label %lor.lhs.false55.i, label %rtw_coex_next_rssi_state.exit.3.i.if.then65.i_crit_edge

rtw_coex_next_rssi_state.exit.3.i.if.then65.i_crit_edge: ; preds = %rtw_coex_next_rssi_state.exit.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then65.i

lor.lhs.false55.i:                                ; preds = %rtw_coex_next_rssi_state.exit.3.i
  %wl_hi_pri_task1.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 32
  %114 = ptrtoint ptr %wl_hi_pri_task1.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %wl_hi_pri_task1.i, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool56.not.i = icmp eq i8 %115, 0
  br i1 %tobool56.not.i, label %lor.lhs.false58.i, label %lor.lhs.false55.i.if.then65.i_crit_edge

lor.lhs.false55.i.if.then65.i_crit_edge:          ; preds = %lor.lhs.false55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then65.i

lor.lhs.false58.i:                                ; preds = %lor.lhs.false55.i
  %wl_hi_pri_task2.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 33
  %116 = ptrtoint ptr %wl_hi_pri_task2.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %wl_hi_pri_task2.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool59.not.i = icmp eq i8 %117, 0
  br i1 %tobool59.not.i, label %lor.lhs.false61.i, label %lor.lhs.false58.i.if.then65.i_crit_edge

lor.lhs.false58.i.if.then65.i_crit_edge:          ; preds = %lor.lhs.false58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then65.i

lor.lhs.false61.i:                                ; preds = %lor.lhs.false58.i
  %118 = ptrtoint ptr %wl_gl_busy.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %wl_gl_busy.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool63.not.i = icmp eq i8 %119, 0
  br i1 %tobool63.not.i, label %if.else66.i, label %lor.lhs.false61.i.if.then65.i_crit_edge

lor.lhs.false61.i.if.then65.i_crit_edge:          ; preds = %lor.lhs.false61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then65.i

if.then65.i:                                      ; preds = %lor.lhs.false61.i.if.then65.i_crit_edge, %lor.lhs.false58.i.if.then65.i_crit_edge, %lor.lhs.false55.i.if.then65.i_crit_edge, %rtw_coex_next_rssi_state.exit.3.i.if.then65.i_crit_edge
  %120 = ptrtoint ptr %chip2.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %chip2.i, align 4
  %scbd_support.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %121, i32 0, i32 68
  %122 = ptrtoint ptr %scbd_support.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %scbd_support.i.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool.not.i121.i = icmp eq i8 %123, 0
  br i1 %tobool.not.i121.i, label %if.then65.i.if.end67.i_crit_edge, label %if.end.i122.i

if.then65.i.if.end67.i_crit_edge:                 ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67.i

if.end.i122.i:                                    ; preds = %if.then65.i
  %score_board.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 87
  %124 = ptrtoint ptr %score_board.i.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %score_board.i.i, align 2
  %or2361.i.i = or i16 %125, 6
  call void @__sanitizer_cov_trace_cmp2(i16 %or2361.i.i, i16 %125)
  %cmp.not.i.i = icmp eq i16 %or2361.i.i, %125
  br i1 %cmp.not.i.i, label %if.end.i122.i.if.end67.i_crit_edge, label %if.then36.i.i

if.end.i122.i.if.end67.i_crit_edge:               ; preds = %if.end.i122.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67.i

if.then36.i.i:                                    ; preds = %if.end.i122.i
  call void @__sanitizer_cov_trace_pc() #7
  %126 = ptrtoint ptr %score_board.i.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %or2361.i.i, ptr %score_board.i.i, align 2
  %127 = or i16 %125, -32762
  br label %if.end67.sink.split.i

if.else66.i:                                      ; preds = %lor.lhs.false61.i
  %128 = ptrtoint ptr %chip2.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %chip2.i, align 4
  %scbd_support.i124.i = getelementptr inbounds %struct.rtw_chip_info, ptr %129, i32 0, i32 68
  %130 = ptrtoint ptr %scbd_support.i124.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %scbd_support.i124.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool.not.i125.i = icmp eq i8 %131, 0
  br i1 %tobool.not.i125.i, label %if.else66.i.if.end67.i_crit_edge, label %if.end.i129.i

if.else66.i.if.end67.i_crit_edge:                 ; preds = %if.else66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67.i

if.end.i129.i:                                    ; preds = %if.else66.i
  %score_board.i126.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 87
  %132 = ptrtoint ptr %score_board.i126.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %score_board.i126.i, align 2
  %134 = and i16 %133, -7
  %and28.i.i = or i16 %134, 2
  call void @__sanitizer_cov_trace_cmp2(i16 %and28.i.i, i16 %133)
  %cmp.not.i130.i = icmp eq i16 %and28.i.i, %133
  br i1 %cmp.not.i130.i, label %if.end.i129.i.if.end67.i_crit_edge, label %if.then36.i133.i

if.end.i129.i.if.end67.i_crit_edge:               ; preds = %if.end.i129.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67.i

if.then36.i133.i:                                 ; preds = %if.end.i129.i
  call void @__sanitizer_cov_trace_pc() #7
  %135 = ptrtoint ptr %score_board.i126.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %and28.i.i, ptr %score_board.i126.i, align 2
  %136 = or i16 %134, -32766
  br label %if.end67.sink.split.i

if.end67.sink.split.i:                            ; preds = %if.then36.i133.i, %if.then36.i.i
  %.sink137.i = phi i16 [ %136, %if.then36.i133.i ], [ %127, %if.then36.i.i ]
  %hci.i.i131.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %137 = ptrtoint ptr %hci.i.i131.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %hci.i.i131.i, align 8
  %write16.i.i132.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %138, i32 0, i32 15
  %139 = ptrtoint ptr %write16.i.i132.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %write16.i.i132.i, align 4
  tail call void %140(ptr noundef %rtwdev, i32 noundef 170, i16 noundef zeroext %.sink137.i) #5
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.end67.sink.split.i, %if.end.i129.i.if.end67.i_crit_edge, %if.else66.i.if.end67.i_crit_edge, %if.end.i122.i.if.end67.i_crit_edge, %if.then65.i.if.end67.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %reason)
  %141 = icmp ult i8 %reason, 7
  br i1 %141, label %switch.hole_check, label %if.end67.i.sw.default.i_crit_edge

if.end67.i.sw.default.i_crit_edge:                ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default.i

sw.default.i:                                     ; preds = %switch.hole_check.sw.default.i_crit_edge, %if.end67.i.sw.default.i_crit_edge
  %current_band_type.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 10
  %142 = ptrtoint ptr %current_band_type.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %current_band_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %143)
  %cmp71.i = icmp eq i8 %143, 2
  br label %rtw_coex_update_wl_link_info.exit

switch.hole_check:                                ; preds = %if.end67.i
  %switch.shifted = lshr i8 123, %reason
  %144 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %switch.lobit.not = icmp eq i8 %144, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default.i_crit_edge, label %switch.lookup179

switch.hole_check.sw.default.i_crit_edge:         ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default.i

switch.lookup179:                                 ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %switch.cast = trunc i8 %reason to i7
  %switch.downshift = lshr i7 -42, %switch.cast
  %145 = and i7 %switch.downshift, 1
  %146 = sext i7 %145 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %switch.masked = icmp ne i7 %145, 0
  br label %rtw_coex_update_wl_link_info.exit

rtw_coex_update_wl_link_info.exit:                ; preds = %switch.lookup179, %sw.default.i
  %is_5G.0.off0.i = phi i1 [ %cmp71.i, %sw.default.i ], [ %switch.masked, %switch.lookup179 ]
  %under_5g.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 3
  %frombool77.i = zext i1 %is_5G.0.off0.i to i8
  %147 = ptrtoint ptr %under_5g.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %frombool77.i, ptr %under_5g.i, align 4
  %148 = ptrtoint ptr %chip2.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %chip2.i, align 4
  %scbd_support.i = getelementptr inbounds %struct.rtw_chip_info, ptr %149, i32 0, i32 68
  %150 = ptrtoint ptr %scbd_support.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %scbd_support.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool.not.i = icmp eq i8 %151, 0
  br i1 %tobool.not.i, label %rtw_coex_update_wl_link_info.exit.if.end.i_crit_edge, label %rtw_coex_read_scbd.exit.i

rtw_coex_update_wl_link_info.exit.if.end.i_crit_edge: ; preds = %rtw_coex_update_wl_link_info.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

rtw_coex_read_scbd.exit.i:                        ; preds = %rtw_coex_update_wl_link_info.exit
  call void @__sanitizer_cov_trace_pc() #7
  %hci.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %152 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hci.i.i.i, align 8
  %read16.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %153, i32 0, i32 12
  %154 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %155(ptr noundef %rtwdev, i32 noundef 170) #5
  %156 = and i16 %call.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %156)
  %tobool3.not.i = icmp eq i16 %156, 0
  br label %if.end.i

if.end.i:                                         ; preds = %rtw_coex_read_scbd.exit.i, %rtw_coex_update_wl_link_info.exit.if.end.i_crit_edge
  %bt_disabled.0.off0.i = phi i1 [ %tobool3.not.i, %rtw_coex_read_scbd.exit.i ], [ false, %rtw_coex_update_wl_link_info.exit.if.end.i_crit_edge ]
  %157 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %stat, align 4, !range !601
  %159 = zext i8 %158 to i32
  %conv8.i = zext i1 %bt_disabled.0.off0.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %159, i32 %conv8.i)
  %cmp.not.i165 = icmp eq i32 %159, %conv8.i
  br i1 %cmp.not.i165, label %if.end.i.rtw_coex_monitor_bt_enable.exit_crit_edge, label %if.then10.i

if.end.i.rtw_coex_monitor_bt_enable.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_monitor_bt_enable.exit

if.then10.i:                                      ; preds = %if.end.i
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.146, i32 noundef %159, i32 noundef %conv8.i) #5
  %frombool18.i = zext i1 %bt_disabled.0.off0.i to i8
  %160 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %frombool18.i, ptr %stat, align 4
  %bt_ble_scan_type.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 69
  %161 = ptrtoint ptr %bt_ble_scan_type.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 0, ptr %bt_ble_scan_type.i, align 1
  %cur_bt_lna_lvl.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 11
  %162 = ptrtoint ptr %cur_bt_lna_lvl.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %cur_bt_lna_lvl.i, align 1
  br i1 %bt_disabled.0.off0.i, label %if.else.i166, label %if.then21.i

if.then21.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  %bt_reenable.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 23
  %163 = ptrtoint ptr %bt_reenable.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 1, ptr %bt_reenable.i, align 1
  %164 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %rtwdev, align 8
  %bt_reenable_work.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 13
  tail call void @ieee80211_queue_delayed_work(ptr noundef %165, ptr noundef %bt_reenable_work.i, i32 noundef 1500) #5
  br label %rtw_coex_monitor_bt_enable.exit

if.else.i166:                                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  %bt_mailbox_reply.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 29
  %166 = ptrtoint ptr %bt_mailbox_reply.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 0, ptr %bt_mailbox_reply.i, align 1
  %bt_reenable22.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 23
  %167 = ptrtoint ptr %bt_reenable22.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 0, ptr %bt_reenable22.i, align 1
  br label %rtw_coex_monitor_bt_enable.exit

rtw_coex_monitor_bt_enable.exit:                  ; preds = %if.else.i166, %if.then21.i, %if.end.i.rtw_coex_monitor_bt_enable.exit_crit_edge
  %manual_control = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 8
  %168 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %manual_control, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool30.not = icmp eq i8 %169, 0
  br i1 %tobool30.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %rtw_coex_monitor_bt_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.181) #5
  br label %cleanup

if.end32:                                         ; preds = %rtw_coex_monitor_bt_enable.exit
  %stop_dm = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 4
  %170 = ptrtoint ptr %stop_dm to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %stop_dm, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool33.not = icmp eq i8 %171, 0
  br i1 %tobool33.not, label %if.end35, label %if.then34

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.182) #5
  br label %cleanup

if.end35:                                         ; preds = %if.end32
  %wl_under_ips = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 31
  %172 = ptrtoint ptr %wl_under_ips to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %wl_under_ips, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool36.not = icmp eq i8 %173, 0
  br i1 %tobool36.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.183) #5
  br label %cleanup

if.end38:                                         ; preds = %if.end35
  %freeze = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 5
  %174 = ptrtoint ptr %freeze to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %freeze, align 2, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool39.not = icmp eq i8 %175, 0
  br i1 %tobool39.not, label %if.end38.if.end48_crit_edge, label %land.lhs.true

if.end38.if.end48_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

land.lhs.true:                                    ; preds = %if.end38
  %176 = ptrtoint ptr %reason29 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %reason29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %177)
  %cmp43 = icmp eq i8 %177, 12
  br i1 %cmp43, label %land.lhs.true45, label %land.lhs.true.if.end48_crit_edge

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

land.lhs.true45:                                  ; preds = %land.lhs.true
  %bt_setup_link = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 17
  %178 = ptrtoint ptr %bt_setup_link to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %bt_setup_link, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool46.not = icmp eq i8 %179, 0
  br i1 %tobool46.not, label %if.then47, label %land.lhs.true45.if.end48_crit_edge

land.lhs.true45.if.end48_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.then47:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.184) #5
  br label %cleanup

if.end48:                                         ; preds = %land.lhs.true45.if.end48_crit_edge, %land.lhs.true.if.end48_crit_edge, %if.end38.if.end48_crit_edge
  %arrayidx = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 90, i32 2
  %180 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %181, 1
  store i32 %inc, ptr %arrayidx, align 4
  %freerun = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 6
  %182 = ptrtoint ptr %freerun to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 0, ptr %freerun, align 1
  %183 = ptrtoint ptr %under_5g.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %under_5g.i, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool49.not = icmp eq i8 %184, 0
  br i1 %tobool49.not, label %if.end51, label %if.then50

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %wl_coex_mode = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 81
  %185 = ptrtoint ptr %wl_coex_mode to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 3, ptr %wl_coex_mode, align 2
  tail call fastcc void @rtw_coex_action_wl_under5g(ptr noundef %rtwdev)
  br label %exit

if.end51:                                         ; preds = %if.end48
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.185) #5
  %wl_coex_mode52 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 81
  %186 = ptrtoint ptr %wl_coex_mode52 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 0, ptr %wl_coex_mode52, align 2
  %187 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %stat, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool53.not = icmp eq i8 %188, 0
  br i1 %tobool53.not, label %if.end67, label %if.then54

if.then54:                                        ; preds = %if.end51
  %189 = ptrtoint ptr %wl_connected.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %wl_connected.i, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool62.not = icmp eq i8 %190, 0
  br i1 %tobool62.not, label %if.then63, label %if.else64

if.then63:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @rtw_coex_action_wl_not_connected(ptr noundef %rtwdev)
  br label %exit

if.else64:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @rtw_coex_action_wl_only(ptr noundef %rtwdev)
  br label %exit

if.end67:                                         ; preds = %if.end51
  %wl_under_lps = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 30
  %191 = ptrtoint ptr %wl_under_lps to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %wl_under_lps, align 2, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool68.not = icmp eq i8 %192, 0
  br i1 %tobool68.not, label %if.end67.if.end73_crit_edge, label %land.lhs.true70

if.end67.if.end73_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73

land.lhs.true70:                                  ; preds = %if.end67
  %wl_force_lps_ctrl = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 34
  %193 = ptrtoint ptr %wl_force_lps_ctrl to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %wl_force_lps_ctrl, align 2, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool71.not = icmp eq i8 %194, 0
  br i1 %tobool71.not, label %if.then72, label %land.lhs.true70.if.end73_crit_edge

land.lhs.true70.if.end73_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73

if.then72:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @rtw_coex_action_wl_native_lps(ptr noundef %rtwdev)
  br label %exit

if.end73:                                         ; preds = %land.lhs.true70.if.end73_crit_edge, %if.end67.if.end73_crit_edge
  %bt_whck_test = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 3
  %195 = ptrtoint ptr %bt_whck_test to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %bt_whck_test, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool74.not = icmp eq i8 %196, 0
  br i1 %tobool74.not, label %if.end76, label %if.then75

if.then75:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @rtw_coex_action_bt_whql_test(ptr noundef %rtwdev)
  br label %exit

if.end76:                                         ; preds = %if.end73
  %bt_setup_link77 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 17
  %197 = ptrtoint ptr %bt_setup_link77 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %bt_setup_link77, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %tobool78.not = icmp eq i8 %198, 0
  br i1 %tobool78.not, label %if.end80, label %if.then79

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @rtw_coex_action_bt_relink(ptr noundef %rtwdev)
  br label %exit

if.end80:                                         ; preds = %if.end76
  %bt_inq_page = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 4
  %199 = ptrtoint ptr %bt_inq_page to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %bt_inq_page, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool81.not = icmp eq i8 %200, 0
  br i1 %tobool81.not, label %if.end83, label %if.then82

if.then82:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @rtw_coex_action_bt_inquiry(ptr noundef %rtwdev)
  br label %exit

if.end83:                                         ; preds = %if.end80
  %bt_status = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 13
  %201 = ptrtoint ptr %bt_status to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %bt_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %202)
  %switch = icmp ult i8 %202, 2
  br i1 %switch, label %land.lhs.true91, label %if.end83.if.end96_crit_edge

if.end83.if.end96_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96

land.lhs.true91:                                  ; preds = %if.end83
  %203 = ptrtoint ptr %wl_connected.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %wl_connected.i, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %tobool93.not = icmp eq i8 %204, 0
  br i1 %tobool93.not, label %land.lhs.true91.if.end96_crit_edge, label %if.then95

land.lhs.true91.if.end96_crit_edge:               ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96

if.then95:                                        ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @rtw_coex_action_bt_idle(ptr noundef %rtwdev)
  br label %exit

if.end96:                                         ; preds = %land.lhs.true91.if.end96_crit_edge, %if.end83.if.end96_crit_edge
  %205 = ptrtoint ptr %wl_linkscan_proc44.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %wl_linkscan_proc44.i, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %tobool97.not = icmp eq i8 %206, 0
  br i1 %tobool97.not, label %if.end96.if.end103_crit_edge, label %land.lhs.true99

if.end96.if.end103_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end103

land.lhs.true99:                                  ; preds = %if.end96
  %207 = ptrtoint ptr %freerun to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %freerun, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %208)
  %tobool101.not = icmp eq i8 %208, 0
  br i1 %tobool101.not, label %if.then102, label %land.lhs.true99.if.end103_crit_edge

land.lhs.true99.if.end103_crit_edge:              ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end103

if.then102:                                       ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @rtw_coex_action_wl_linkscan(ptr noundef %rtwdev)
  br label %exit

if.end103:                                        ; preds = %land.lhs.true99.if.end103_crit_edge, %if.end96.if.end103_crit_edge
  %209 = ptrtoint ptr %wl_connected.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %wl_connected.i, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %210)
  %tobool105.not = icmp eq i8 %210, 0
  br i1 %tobool105.not, label %if.else107, label %if.then106

if.then106:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @rtw_coex_action_wl_connected(ptr noundef %rtwdev)
  br label %exit

if.else107:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @rtw_coex_action_wl_not_connected(ptr noundef %rtwdev)
  br label %exit

exit:                                             ; preds = %if.else107, %if.then106, %if.then102, %if.then95, %if.then82, %if.then79, %if.then75, %if.then72, %if.else64, %if.then63, %if.then50
  %211 = ptrtoint ptr %chip2.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %chip2.i, align 4
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %212, align 4
  %coex_set_gnt_fix.i.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %214, i32 0, i32 29
  %215 = ptrtoint ptr %coex_set_gnt_fix.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %coex_set_gnt_fix.i.i, align 4
  tail call void %216(ptr noundef %rtwdev) #5
  %217 = ptrtoint ptr %under_5g.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %under_5g.i, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %tobool.not.i168 = icmp eq i8 %218, 0
  br i1 %tobool.not.i168, label %land.lhs.true.i, label %exit.if.end.i172_crit_edge

exit.if.end.i172_crit_edge:                       ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i172

land.lhs.true.i:                                  ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #7
  %bt_status.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 13
  %219 = ptrtoint ptr %bt_status.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %bt_status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %cmp.not.i169 = icmp ne i8 %220, 0
  br label %if.end.i172

if.end.i172:                                      ; preds = %land.lhs.true.i, %exit.if.end.i172_crit_edge
  %tx_agg_ctrl.0.off0.i = phi i1 [ false, %exit.if.end.i172_crit_edge ], [ %cmp.not.i169, %land.lhs.true.i ]
  %frombool.i.i = zext i1 %tx_agg_ctrl.0.off0.i to i8
  %221 = ptrtoint ptr %chip2.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %chip2.i, align 4
  %scbd_support.i.i170 = getelementptr inbounds %struct.rtw_chip_info, ptr %222, i32 0, i32 68
  %223 = ptrtoint ptr %scbd_support.i.i170 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %scbd_support.i.i170, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %tobool.not.i.i171 = icmp eq i8 %224, 0
  br i1 %tobool.not.i.i171, label %if.end.i172.cleanup_crit_edge, label %if.end.i.i174

if.end.i172.cleanup_crit_edge:                    ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i174:                                    ; preds = %if.end.i172
  %wl_tx_limit_en.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 38
  %225 = ptrtoint ptr %wl_tx_limit_en.i.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %wl_tx_limit_en.i.i, align 2, !range !601
  call void @__sanitizer_cov_trace_cmp1(i8 %226, i8 %frombool.i.i)
  %cmp.i.i173 = icmp eq i8 %226, %frombool.i.i
  br i1 %cmp.i.i173, label %land.lhs.true.i.i, label %if.end.i.i174.if.end15.i.i_crit_edge

if.end.i.i174.if.end15.i.i_crit_edge:             ; preds = %if.end.i.i174
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i174
  %wl_ampdu_limit_en.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 39
  %227 = ptrtoint ptr %wl_ampdu_limit_en.i.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %wl_ampdu_limit_en.i.i, align 1, !range !601
  call void @__sanitizer_cov_trace_cmp1(i8 %228, i8 %frombool.i.i)
  %cmp12.i.i = icmp eq i8 %228, %frombool.i.i
  br i1 %cmp12.i.i, label %land.lhs.true.i.i.cleanup_crit_edge, label %land.lhs.true.i.i.if.end15.i.i_crit_edge

land.lhs.true.i.i.if.end15.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.i.i

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15.i.i:                                     ; preds = %land.lhs.true.i.i.if.end15.i.i_crit_edge, %if.end.i.i174.if.end15.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %tobool17.not.i.i = icmp eq i8 %226, 0
  br i1 %tobool17.not.i.i, label %if.then18.i.i, label %if.end15.i.i.if.end21.i.i_crit_edge

if.end15.i.i.if.end21.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i.i

if.then18.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %hci.i.i.i175 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %229 = ptrtoint ptr %hci.i.i.i175 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %hci.i.i.i175, align 8
  %read32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %230, i32 0, i32 13
  %231 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i.i176 = tail call i32 %232(ptr noundef %rtwdev, i32 noundef 1072) #5
  %darfrc.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 92
  %233 = ptrtoint ptr %darfrc.i.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %call.i.i.i176, ptr %darfrc.i.i, align 4
  %234 = ptrtoint ptr %hci.i.i.i175 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %hci.i.i.i175, align 8
  %read32.i87.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %235, i32 0, i32 13
  %236 = ptrtoint ptr %read32.i87.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %read32.i87.i.i, align 4
  %call.i88.i.i = tail call i32 %237(ptr noundef %rtwdev, i32 noundef 1076) #5
  %darfrch.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 93
  %238 = ptrtoint ptr %darfrch.i.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %call.i88.i.i, ptr %darfrch.i.i, align 4
  %239 = ptrtoint ptr %hci.i.i.i175 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %hci.i.i.i175, align 8
  %read16.i.i.i177 = getelementptr inbounds %struct.rtw_hci_ops, ptr %240, i32 0, i32 12
  %241 = ptrtoint ptr %read16.i.i.i177 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %read16.i.i.i177, align 4
  %call.i90.i.i = tail call zeroext i16 %242(ptr noundef %rtwdev, i32 noundef 1066) #5
  %retry_limit.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 88
  %243 = ptrtoint ptr %retry_limit.i.i to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 %call.i90.i.i, ptr %retry_limit.i.i, align 4
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.then18.i.i, %if.end15.i.i.if.end21.i.i_crit_edge
  %wl_ampdu_limit_en22.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 39
  %244 = ptrtoint ptr %wl_ampdu_limit_en22.i.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %wl_ampdu_limit_en22.i.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %245)
  %tobool23.not.i.i = icmp eq i8 %245, 0
  br i1 %tobool23.not.i.i, label %if.then24.i.i, label %if.end21.i.i.if.end26.i.i_crit_edge

if.end21.i.i.if.end26.i.i_crit_edge:              ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i.i

if.then24.i.i:                                    ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %hci.i91.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %246 = ptrtoint ptr %hci.i91.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %hci.i91.i.i, align 8
  %read8.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %247, i32 0, i32 11
  %248 = ptrtoint ptr %read8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %read8.i.i.i, align 4
  %call.i92.i.i = tail call zeroext i8 %249(ptr noundef %rtwdev, i32 noundef 1109) #5
  %ampdu_max_time.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 83
  %250 = ptrtoint ptr %ampdu_max_time.i.i to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 %call.i92.i.i, ptr %ampdu_max_time.i.i, align 4
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.then24.i.i, %if.end21.i.i.if.end26.i.i_crit_edge
  %251 = ptrtoint ptr %wl_tx_limit_en.i.i to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 %frombool.i.i, ptr %wl_tx_limit_en.i.i, align 2
  %252 = ptrtoint ptr %wl_ampdu_limit_en22.i.i to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %frombool.i.i, ptr %wl_ampdu_limit_en22.i.i, align 1
  %hci.i.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %253 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %hci.i.i.i.i, align 8
  %read8.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %254, i32 0, i32 11
  %255 = ptrtoint ptr %read8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %read8.i.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i8 %256(ptr noundef %rtwdev, i32 noundef 1118) #5
  br i1 %tx_agg_ctrl.0.off0.i, label %if.end43.i.thread.i, label %if.else46.i.i

if.end43.i.thread.i:                              ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %or5.i.i.i = or i8 %call.i.i.i.i, 8
  %257 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %hci.i.i.i.i, align 8
  %write8.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %258, i32 0, i32 14
  %259 = ptrtoint ptr %write8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %write8.i.i.i.i, align 4
  tail call void %260(ptr noundef %rtwdev, i32 noundef 1118, i8 noundef zeroext %or5.i.i.i) #5
  %261 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %hci.i.i.i.i, align 8
  %read8.i.i94.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %262, i32 0, i32 11
  %263 = ptrtoint ptr %read8.i.i94.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %read8.i.i94.i.i, align 4
  %call.i.i95.i.i = tail call zeroext i8 %264(ptr noundef %rtwdev, i32 noundef 1062) #5
  %or5.i96.i.i = or i8 %call.i.i95.i.i, 15
  %265 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %hci.i.i.i.i, align 8
  %write8.i.i97.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %266, i32 0, i32 14
  %267 = ptrtoint ptr %write8.i.i97.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %write8.i.i97.i.i, align 4
  tail call void %268(ptr noundef %rtwdev, i32 noundef 1062, i8 noundef zeroext %or5.i96.i.i) #5
  %269 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %hci.i.i.i.i, align 8
  %write16.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %270, i32 0, i32 15
  %271 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %272(ptr noundef %rtwdev, i32 noundef 1066, i16 noundef zeroext 2056) #5
  %273 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %274, i32 0, i32 16
  %275 = ptrtoint ptr %write32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %write32.i.i.i, align 4
  tail call void %276(ptr noundef %rtwdev, i32 noundef 1072, i32 noundef 16777216) #5
  %277 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i116.i8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %278, i32 0, i32 16
  %279 = ptrtoint ptr %write32.i116.i8.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %write32.i116.i8.i, align 4
  tail call void %280(ptr noundef %rtwdev, i32 noundef 1076, i32 noundef 67305985) #5
  br label %cleanup.sink.split.i.i

if.else46.i.i:                                    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %and.i.i.i = and i8 %call.i.i.i.i, -9
  %281 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %hci.i.i.i.i, align 8
  %write8.i.i105.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %282, i32 0, i32 14
  %283 = ptrtoint ptr %write8.i.i105.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %write8.i.i105.i.i, align 4
  tail call void %284(ptr noundef %rtwdev, i32 noundef 1118, i8 noundef zeroext %and.i.i.i) #5
  %285 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %hci.i.i.i.i, align 8
  %read8.i.i107.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %286, i32 0, i32 11
  %287 = ptrtoint ptr %read8.i.i107.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %read8.i.i107.i.i, align 4
  %call.i.i108.i.i = tail call zeroext i8 %288(ptr noundef %rtwdev, i32 noundef 1062) #5
  %and.i109.i.i = and i8 %call.i.i108.i.i, -16
  %289 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %hci.i.i.i.i, align 8
  %write8.i.i110.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %290, i32 0, i32 14
  %291 = ptrtoint ptr %write8.i.i110.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %write8.i.i110.i.i, align 4
  tail call void %292(ptr noundef %rtwdev, i32 noundef 1062, i8 noundef zeroext %and.i109.i.i) #5
  %retry_limit40.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 88
  %293 = ptrtoint ptr %retry_limit40.i.i to i32
  call void @__asan_load2_noabort(i32 %293)
  %294 = load i16, ptr %retry_limit40.i.i, align 4
  %295 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %hci.i.i.i.i, align 8
  %write16.i112.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %296, i32 0, i32 15
  %297 = ptrtoint ptr %write16.i112.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %write16.i112.i.i, align 4
  tail call void %298(ptr noundef %rtwdev, i32 noundef 1066, i16 noundef zeroext %294) #5
  %darfrc41.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 92
  %299 = ptrtoint ptr %darfrc41.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %darfrc41.i.i, align 4
  %301 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i114.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %302, i32 0, i32 16
  %303 = ptrtoint ptr %write32.i114.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %write32.i114.i.i, align 4
  tail call void %304(ptr noundef %rtwdev, i32 noundef 1072, i32 noundef %300) #5
  %darfrch42.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 93
  %305 = ptrtoint ptr %darfrch42.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %darfrch42.i.i, align 4
  %307 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %hci.i.i.i.i, align 8
  %write32.i116.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %308, i32 0, i32 16
  %309 = ptrtoint ptr %write32.i116.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %write32.i116.i.i, align 4
  tail call void %310(ptr noundef %rtwdev, i32 noundef 1076, i32 noundef %306) #5
  %ampdu_max_time47.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 83
  %311 = ptrtoint ptr %ampdu_max_time47.i.i to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %ampdu_max_time47.i.i, align 4
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.else46.i.i, %if.end43.i.thread.i
  %.sink122.i.i = phi i8 [ %312, %if.else46.i.i ], [ 32, %if.end43.i.thread.i ]
  %313 = ptrtoint ptr %hci.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %hci.i.i.i.i, align 8
  %write8.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %314, i32 0, i32 14
  %315 = ptrtoint ptr %write8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %write8.i.i.i, align 4
  tail call void %316(ptr noundef %rtwdev, i32 noundef 1109, i8 noundef zeroext %.sink122.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i.i, %land.lhs.true.i.i.cleanup_crit_edge, %if.end.i172.cleanup_crit_edge, %if.then47, %if.then37, %if.then34, %if.then31, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_coex_query_bt_info(ptr noundef %rtwdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %stat = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9
  %0 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stat, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rtw_coex_query_bt_info) #5
  tail call void @rtw_fw_query_bt_info(ptr noundef %rtwdev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_coex_scan_notify(ptr noundef %rtwdev, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %manual_control = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 8
  %0 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %manual_control, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %stop_dm = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 4
  %2 = ptrtoint ptr %stop_dm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stop_dm, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %freeze = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 5
  %4 = ptrtoint ptr %freeze to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %freeze, align 2
  %chip1.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %5 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip1.i, align 4
  %scbd_support.i = getelementptr inbounds %struct.rtw_chip_info, ptr %6, i32 0, i32 68
  %7 = ptrtoint ptr %scbd_support.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %scbd_support.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end.rtw_coex_write_scbd.exit_crit_edge, label %if.end.i

if.end.rtw_coex_write_scbd.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_write_scbd.exit

if.end.i:                                         ; preds = %if.end
  %score_board.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 87
  %9 = ptrtoint ptr %score_board.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %score_board.i, align 2
  %or2361.i = or i16 %10, 3
  call void @__sanitizer_cov_trace_cmp2(i16 %or2361.i, i16 %10)
  %cmp.not.i = icmp eq i16 %or2361.i, %10
  br i1 %cmp.not.i, label %if.end.i.rtw_coex_write_scbd.exit_crit_edge, label %if.then36.i

if.end.i.rtw_coex_write_scbd.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_write_scbd.exit

if.then36.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %score_board.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %or2361.i, ptr %score_board.i, align 2
  %12 = or i16 %10, -32765
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %13 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hci.i.i, align 8
  %write16.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write16.i.i, align 4
  tail call void %16(ptr noundef %rtwdev, i32 noundef 170, i16 noundef zeroext %12) #5
  br label %rtw_coex_write_scbd.exit

rtw_coex_write_scbd.exit:                         ; preds = %if.then36.i, %if.end.i.rtw_coex_write_scbd.exit_crit_edge, %if.end.rtw_coex_write_scbd.exit_crit_edge
  %17 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.270)
  switch i8 %type, label %if.else13 [
    i8 3, label %if.then4
    i8 2, label %rtw_coex_write_scbd.exit.if.then12_crit_edge
    i8 1, label %rtw_coex_write_scbd.exit.if.then12_crit_edge37
  ]

rtw_coex_write_scbd.exit.if.then12_crit_edge37:   ; preds = %rtw_coex_write_scbd.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

rtw_coex_write_scbd.exit.if.then12_crit_edge:     ; preds = %rtw_coex_write_scbd.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.then4:                                         ; preds = %rtw_coex_write_scbd.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.12) #5
  tail call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext true, i8 noundef zeroext 4)
  br label %cleanup.sink.split

if.then12:                                        ; preds = %rtw_coex_write_scbd.exit.if.then12_crit_edge, %rtw_coex_write_scbd.exit.if.then12_crit_edge37
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.13) #5
  %wl_hi_pri_task2 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 33
  %18 = ptrtoint ptr %wl_hi_pri_task2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %wl_hi_pri_task2, align 1
  tail call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext true, i8 noundef zeroext 3)
  br label %cleanup.sink.split

if.else13:                                        ; preds = %rtw_coex_write_scbd.exit
  call void @__sanitizer_cov_trace_pc() #7
  %cnt_wl = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 90
  %19 = ptrtoint ptr %cnt_wl to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 30, ptr %cnt_wl, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.14, i32 noundef 30) #5
  %wl_hi_pri_task216 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 33
  %20 = ptrtoint ptr %wl_hi_pri_task216 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %wl_hi_pri_task216, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else13, %if.then12, %if.then4
  %.sink = phi i8 [ 1, %if.then4 ], [ 2, %if.else13 ], [ 0, %if.then12 ]
  tail call fastcc void @rtw_coex_run_coex(ptr noundef %rtwdev, i8 noundef zeroext %.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_coex_switchband_notify(ptr noundef %rtwdev, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %manual_control = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 8
  %0 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %manual_control, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %stop_dm = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 4
  %2 = ptrtoint ptr %stop_dm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stop_dm, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.271)
  switch i8 %type, label %if.else21 [
    i8 2, label %if.then4
    i8 3, label %if.then20
  ]

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.rtw_coex_switchband_notify) #5
  tail call fastcc void @rtw_coex_run_coex(ptr noundef %rtwdev, i8 noundef zeroext 4)
  br label %cleanup

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.rtw_coex_switchband_notify) #5
  tail call fastcc void @rtw_coex_run_coex(ptr noundef %rtwdev, i8 noundef zeroext 3)
  br label %cleanup

if.else21:                                        ; preds = %if.end
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.rtw_coex_switchband_notify) #5
  %5 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %manual_control, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.else21.cleanup_crit_edge

if.else21.cleanup_crit_edge:                      ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.else21
  %7 = ptrtoint ptr %stop_dm to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %stop_dm, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not.i = icmp eq i8 %8, 0
  br i1 %tobool2.not.i, label %if.end.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %freeze.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 5
  %9 = ptrtoint ptr %freeze.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %freeze.i, align 2
  %chip1.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %10 = ptrtoint ptr %chip1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip1.i.i, align 4
  %scbd_support.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %scbd_support.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %scbd_support.i.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i, label %if.end.i.rtw_coex_write_scbd.exit.i_crit_edge, label %if.end.i.i

if.end.i.rtw_coex_write_scbd.exit.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_write_scbd.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %score_board.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 87
  %14 = ptrtoint ptr %score_board.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %score_board.i.i, align 2
  %or2361.i.i = or i16 %15, 3
  call void @__sanitizer_cov_trace_cmp2(i16 %or2361.i.i, i16 %15)
  %cmp.not.i.i = icmp eq i16 %or2361.i.i, %15
  br i1 %cmp.not.i.i, label %if.end.i.i.rtw_coex_write_scbd.exit.i_crit_edge, label %if.then36.i.i

if.end.i.i.rtw_coex_write_scbd.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_write_scbd.exit.i

if.then36.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %score_board.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %or2361.i.i, ptr %score_board.i.i, align 2
  %17 = or i16 %15, -32765
  %hci.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %18 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i.i.i, align 8
  %write16.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %21(ptr noundef %rtwdev, i32 noundef 170, i16 noundef zeroext %17) #5
  br label %rtw_coex_write_scbd.exit.i

rtw_coex_write_scbd.exit.i:                       ; preds = %if.then36.i.i, %if.end.i.i.rtw_coex_write_scbd.exit.i_crit_edge, %if.end.i.rtw_coex_write_scbd.exit.i_crit_edge
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.13) #5
  %wl_hi_pri_task2.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 33
  %22 = ptrtoint ptr %wl_hi_pri_task2.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %wl_hi_pri_task2.i, align 1
  tail call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext true, i8 noundef zeroext 3) #5
  tail call fastcc void @rtw_coex_run_coex(ptr noundef %rtwdev, i8 noundef zeroext 0) #5
  br label %cleanup

cleanup:                                          ; preds = %rtw_coex_write_scbd.exit.i, %lor.lhs.false.i.cleanup_crit_edge, %if.else21.cleanup_crit_edge, %if.then20, %if.then4, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_coex_connect_notify(ptr noundef %rtwdev, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %manual_control = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 8
  %0 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %manual_control, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %stop_dm = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 4
  %2 = ptrtoint ptr %stop_dm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stop_dm, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %chip1.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %4 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip1.i, align 4
  %scbd_support.i = getelementptr inbounds %struct.rtw_chip_info, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %scbd_support.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %scbd_support.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.rtw_coex_write_scbd.exit_crit_edge, label %if.end.i

if.end.rtw_coex_write_scbd.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_write_scbd.exit

if.end.i:                                         ; preds = %if.end
  %score_board.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 87
  %8 = ptrtoint ptr %score_board.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %score_board.i, align 2
  %or2361.i = or i16 %9, 3
  call void @__sanitizer_cov_trace_cmp2(i16 %or2361.i, i16 %9)
  %cmp.not.i = icmp eq i16 %or2361.i, %9
  br i1 %cmp.not.i, label %if.end.i.rtw_coex_write_scbd.exit_crit_edge, label %if.then36.i

if.end.i.rtw_coex_write_scbd.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_write_scbd.exit

if.then36.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %score_board.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %or2361.i, ptr %score_board.i, align 2
  %11 = or i16 %9, -32765
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %12 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i, align 8
  %write16.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write16.i.i, align 4
  tail call void %15(ptr noundef %rtwdev, i32 noundef 170, i16 noundef zeroext %11) #5
  br label %rtw_coex_write_scbd.exit

rtw_coex_write_scbd.exit:                         ; preds = %if.then36.i, %if.end.i.rtw_coex_write_scbd.exit_crit_edge, %if.end.rtw_coex_write_scbd.exit_crit_edge
  %16 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.272)
  switch i8 %type, label %if.else16 [
    i8 3, label %if.then4
    i8 2, label %if.then8
    i8 1, label %if.then13
  ]

if.then4:                                         ; preds = %rtw_coex_write_scbd.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.rtw_coex_connect_notify) #5
  tail call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext true, i8 noundef zeroext 4)
  tail call fastcc void @rtw_coex_run_coex(ptr noundef %rtwdev, i8 noundef zeroext 6)
  br label %cleanup

if.then8:                                         ; preds = %rtw_coex_write_scbd.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.rtw_coex_connect_notify) #5
  tail call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext true, i8 noundef zeroext 4)
  tail call fastcc void @rtw_coex_run_coex(ptr noundef %rtwdev, i8 noundef zeroext 8)
  br label %cleanup

if.then13:                                        ; preds = %rtw_coex_write_scbd.exit
  call void @__sanitizer_cov_trace_pc() #7
  %wl_hi_pri_task1 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 32
  %17 = ptrtoint ptr %wl_hi_pri_task1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %wl_hi_pri_task1, align 4
  %wl_connecting = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 45
  %arrayidx = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 90, i32 1
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %wl_connecting to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %wl_connecting, align 1
  %20 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rtwdev, align 8
  %wl_connecting_work = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 17
  tail call void @ieee80211_queue_delayed_work(ptr noundef %21, ptr noundef %wl_connecting_work, i32 noundef 200) #5
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.rtw_coex_connect_notify) #5
  tail call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext true, i8 noundef zeroext 3)
  tail call fastcc void @rtw_coex_run_coex(ptr noundef %rtwdev, i8 noundef zeroext 5)
  %freeze = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 5
  %22 = ptrtoint ptr %freeze to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %freeze, align 2
  %23 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rtwdev, align 8
  %defreeze_work = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 14
  tail call void @ieee80211_queue_delayed_work(ptr noundef %24, ptr noundef %defreeze_work, i32 noundef 500) #5
  br label %cleanup

if.else16:                                        ; preds = %rtw_coex_write_scbd.exit
  call void @__sanitizer_cov_trace_pc() #7
  %wl_hi_pri_task117 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 32
  %25 = ptrtoint ptr %wl_hi_pri_task117 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %wl_hi_pri_task117, align 4
  %freeze18 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 5
  %26 = ptrtoint ptr %freeze18 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %freeze18, align 2
  %wl_connecting19 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 45
  %27 = ptrtoint ptr %wl_connecting19 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %wl_connecting19, align 1
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.rtw_coex_connect_notify) #5
  tail call fastcc void @rtw_coex_run_coex(ptr noundef %rtwdev, i8 noundef zeroext 7)
  br label %cleanup

cleanup:                                          ; preds = %if.else16, %if.then13, %if.then8, %if.then4, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_coex_media_status_notify(ptr noundef %rtwdev, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %manual_control = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 8
  %0 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %manual_control, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %stop_dm = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 4
  %2 = ptrtoint ptr %stop_dm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stop_dm, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.273)
  switch i8 %type, label %if.else9 [
    i8 2, label %if.then4
    i8 1, label %if.then8
  ]

if.then4:                                         ; preds = %if.end
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.rtw_coex_media_status_notify) #5
  %chip1.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %5 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip1.i, align 4
  %scbd_support.i = getelementptr inbounds %struct.rtw_chip_info, ptr %6, i32 0, i32 68
  %7 = ptrtoint ptr %scbd_support.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %scbd_support.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.then4.rtw_coex_write_scbd.exit_crit_edge, label %if.end.i

if.then4.rtw_coex_write_scbd.exit_crit_edge:      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_write_scbd.exit

if.end.i:                                         ; preds = %if.then4
  %score_board.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 87
  %9 = ptrtoint ptr %score_board.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %score_board.i, align 2
  %or2361.i = or i16 %10, 3
  call void @__sanitizer_cov_trace_cmp2(i16 %or2361.i, i16 %10)
  %cmp.not.i = icmp eq i16 %or2361.i, %10
  br i1 %cmp.not.i, label %if.end.i.rtw_coex_write_scbd.exit_crit_edge, label %if.then36.i

if.end.i.rtw_coex_write_scbd.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_write_scbd.exit

if.then36.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %score_board.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %or2361.i, ptr %score_board.i, align 2
  %12 = or i16 %10, -32765
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %13 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hci.i.i, align 8
  %write16.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write16.i.i, align 4
  tail call void %16(ptr noundef %rtwdev, i32 noundef 170, i16 noundef zeroext %12) #5
  br label %rtw_coex_write_scbd.exit

rtw_coex_write_scbd.exit:                         ; preds = %if.then36.i, %if.end.i.rtw_coex_write_scbd.exit_crit_edge, %if.then4.rtw_coex_write_scbd.exit_crit_edge
  tail call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext true, i8 noundef zeroext 4)
  br label %if.end11

if.then8:                                         ; preds = %if.end
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.rtw_coex_media_status_notify) #5
  %wl_connecting = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 45
  %17 = ptrtoint ptr %wl_connecting to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %wl_connecting, align 1
  %chip1.i30 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %18 = ptrtoint ptr %chip1.i30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip1.i30, align 4
  %scbd_support.i31 = getelementptr inbounds %struct.rtw_chip_info, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %scbd_support.i31 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %scbd_support.i31, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i32 = icmp eq i8 %21, 0
  br i1 %tobool.not.i32, label %if.then8.rtw_coex_write_scbd.exit42_crit_edge, label %if.end.i36

if.then8.rtw_coex_write_scbd.exit42_crit_edge:    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_write_scbd.exit42

if.end.i36:                                       ; preds = %if.then8
  %score_board.i33 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 87
  %22 = ptrtoint ptr %score_board.i33 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %score_board.i33, align 2
  %or2361.i37 = or i16 %23, 3
  call void @__sanitizer_cov_trace_cmp2(i16 %or2361.i37, i16 %23)
  %cmp.not.i38 = icmp eq i16 %or2361.i37, %23
  br i1 %cmp.not.i38, label %if.end.i36.rtw_coex_write_scbd.exit42_crit_edge, label %if.then36.i41

if.end.i36.rtw_coex_write_scbd.exit42_crit_edge:  ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_write_scbd.exit42

if.then36.i41:                                    ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %score_board.i33 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %or2361.i37, ptr %score_board.i33, align 2
  %25 = or i16 %23, -32765
  %hci.i.i39 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %26 = ptrtoint ptr %hci.i.i39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hci.i.i39, align 8
  %write16.i.i40 = getelementptr inbounds %struct.rtw_hci_ops, ptr %27, i32 0, i32 15
  %28 = ptrtoint ptr %write16.i.i40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write16.i.i40, align 4
  tail call void %29(ptr noundef %rtwdev, i32 noundef 170, i16 noundef zeroext %25) #5
  br label %rtw_coex_write_scbd.exit42

rtw_coex_write_scbd.exit42:                       ; preds = %if.then36.i41, %if.end.i36.rtw_coex_write_scbd.exit42_crit_edge, %if.then8.rtw_coex_write_scbd.exit42_crit_edge
  tail call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext true, i8 noundef zeroext 3)
  %hci.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %30 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hci.i.i.i, align 8
  %read8.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %read8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read8.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %33(ptr noundef %rtwdev, i32 noundef 1743) #5
  %34 = or i8 %call.i.i.i, 16
  %35 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hci.i.i.i, align 8
  %write8.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %36, i32 0, i32 14
  %37 = ptrtoint ptr %write8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write8.i.i.i, align 4
  tail call void %38(ptr noundef %rtwdev, i32 noundef 1743, i8 noundef zeroext %34) #5
  br label %if.end11

if.else9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.rtw_coex_media_status_notify) #5
  %hci.i.i.i43 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %39 = ptrtoint ptr %hci.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hci.i.i.i43, align 8
  %read8.i.i.i44 = getelementptr inbounds %struct.rtw_hci_ops, ptr %40, i32 0, i32 11
  %41 = ptrtoint ptr %read8.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read8.i.i.i44, align 4
  %call.i.i.i45 = tail call zeroext i8 %42(ptr noundef %rtwdev, i32 noundef 1743) #5
  %43 = and i8 %call.i.i.i45, -17
  %44 = ptrtoint ptr %hci.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hci.i.i.i43, align 8
  %write8.i.i.i49 = getelementptr inbounds %struct.rtw_hci_ops, ptr %45, i32 0, i32 14
  %46 = ptrtoint ptr %write8.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write8.i.i.i49, align 4
  tail call void %47(ptr noundef %rtwdev, i32 noundef 1743, i8 noundef zeroext %43) #5
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %rtw_coex_write_scbd.exit42, %rtw_coex_write_scbd.exit
  %.sink = phi i8 [ 9, %rtw_coex_write_scbd.exit42 ], [ 11, %if.else9 ], [ 10, %rtw_coex_write_scbd.exit ]
  tail call fastcc void @rtw_coex_run_coex(ptr noundef %rtwdev, i8 noundef zeroext %.sink)
  tail call fastcc void @rtw_coex_update_wl_ch_info(ptr noundef %rtwdev, i8 noundef zeroext %type)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_coex_update_wl_ch_info(ptr noundef %rtwdev, i8 noundef zeroext %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %current_band_width = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 9
  %2 = ptrtoint ptr %current_band_width to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %current_band_width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %type)
  %cmp.not = icmp eq i8 %type, 0
  br i1 %cmp.not, label %entry.if.end38_crit_edge, label %if.end

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.end:                                           ; preds = %entry
  %current_channel = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 7
  %4 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %current_channel, align 1
  %conv4 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp5 = icmp eq i8 %5, 0
  br i1 %cmp5, label %if.end.if.end38_crit_edge, label %if.else

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %5)
  %cmp9 = icmp ult i8 %5, 15
  br i1 %cmp9, label %if.then11, label %if.else18

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp13 = icmp eq i8 %3, 1
  br i1 %cmp13, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %bt_afh_span_bw40 = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 80
  %6 = ptrtoint ptr %bt_afh_span_bw40 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bt_afh_span_bw40, align 1
  br label %if.end38

if.else16:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %bt_afh_span_bw20 = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 79
  %8 = ptrtoint ptr %bt_afh_span_bw20 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bt_afh_span_bw20, align 4
  br label %if.end38

if.else18:                                        ; preds = %if.else
  %afh_5g_num = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 81
  %10 = ptrtoint ptr %afh_5g_num to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %afh_5g_num, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp20 = icmp ugt i8 %11, 1
  br i1 %cmp20, label %for.cond.preheader, label %if.else18.if.end38_crit_edge

if.else18.if.end38_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

for.cond.preheader:                               ; preds = %if.else18
  %conv24 = zext i8 %11 to i32
  %afh_5g = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 92
  %12 = ptrtoint ptr %afh_5g to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %afh_5g, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.078 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.coex_5g_afh_map, ptr %13, i32 %i.078
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv4)
  %cmp28 = icmp eq i32 %15, %conv4
  br i1 %cmp28, label %if.then30, label %for.inc

if.then30:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %bt_skip_ch = getelementptr %struct.coex_5g_afh_map, ptr %13, i32 %i.078, i32 1
  %16 = ptrtoint ptr %bt_skip_ch to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bt_skip_ch, align 4
  %bt_skip_span = getelementptr %struct.coex_5g_afh_map, ptr %13, i32 %i.078, i32 2
  %18 = ptrtoint ptr %bt_skip_span to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bt_skip_span, align 1
  br label %if.end38

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.078, 1
  %exitcond.not = icmp eq i32 %inc, %conv24
  br i1 %exitcond.not, label %for.inc.if.end38_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.if.end38_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.end38:                                         ; preds = %for.inc.if.end38_crit_edge, %if.then30, %if.else18.if.end38_crit_edge, %if.else16, %if.then15, %if.end.if.end38_crit_edge, %entry.if.end38_crit_edge
  %link.0 = phi i8 [ 1, %if.then15 ], [ 1, %if.else16 ], [ 3, %if.then30 ], [ 0, %if.else18.if.end38_crit_edge ], [ 0, %if.end.if.end38_crit_edge ], [ 0, %entry.if.end38_crit_edge ], [ 0, %for.inc.if.end38_crit_edge ]
  %center_chan.1 = phi i8 [ %5, %if.then15 ], [ %5, %if.else16 ], [ %17, %if.then30 ], [ %5, %if.else18.if.end38_crit_edge ], [ 0, %if.end.if.end38_crit_edge ], [ 0, %entry.if.end38_crit_edge ], [ %5, %for.inc.if.end38_crit_edge ]
  %bw.0 = phi i8 [ %7, %if.then15 ], [ %9, %if.else16 ], [ %19, %if.then30 ], [ %3, %if.else18.if.end38_crit_edge ], [ 0, %if.end.if.end38_crit_edge ], [ 0, %entry.if.end38_crit_edge ], [ %3, %for.inc.if.end38_crit_edge ]
  %wl_ch_info = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 6
  %20 = ptrtoint ptr %wl_ch_info to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %link.0, ptr %wl_ch_info, align 4
  %arrayidx41 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 6, i32 1
  %21 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %center_chan.1, ptr %arrayidx41, align 1
  %arrayidx43 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 6, i32 2
  %22 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %bw.0, ptr %arrayidx43, align 2
  tail call void @rtw_fw_wl_ch_info(ptr noundef %rtwdev, i8 noundef zeroext %link.0, i8 noundef zeroext %center_chan.1, i8 noundef zeroext %bw.0) #5
  %conv44 = zext i8 %link.0 to i32
  %conv45 = zext i8 %center_chan.1 to i32
  %conv46 = zext i8 %bw.0 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.214, ptr noundef nonnull @__func__.rtw_coex_update_wl_ch_info, i32 noundef %conv44, i32 noundef %conv45, i32 noundef %conv46) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_coex_bt_info_notify(ptr noundef %rtwdev, ptr nocapture noundef readonly %buf, i8 noundef zeroext %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %stat = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9
  %chip2 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip2, align 4
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf, align 1
  %4 = and i8 %3, 15
  %conv4 = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %4)
  %cmp = icmp ugt i8 %4, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx6 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 91, i32 %conv4
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx6, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %arrayidx6, align 4
  %trunc = trunc i8 %3 to i4
  %7 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.274)
  switch i4 %trunc, label %if.end.if.end91_crit_edge [
    i4 3, label %if.then10
    i4 4, label %if.then35
    i4 5, label %if.then54
    i4 0, label %if.then77
    i4 1, label %if.end.if.then85_crit_edge
    i4 2, label %if.end.if.then85_crit_edge802
  ]

if.end.if.then85_crit_edge802:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then85

if.end.if.then85_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then85

if.end.if.end91_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91

if.then10:                                        ; preds = %if.end
  %arrayidx11 = getelementptr i8, ptr %buf, i32 1
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx11, align 1
  %bt_iqk_state = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 73
  %10 = ptrtoint ptr %bt_iqk_state to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %bt_iqk_state, align 1
  %11 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.275)
  switch i8 %9, label %if.then10.if.end28_crit_edge [
    i8 0, label %if.then16
    i8 2, label %if.then23
  ]

if.then10.if.end28_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then16:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx17 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 89, i32 11
  br label %if.end28.sink.split

if.then23:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx25 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 89, i32 12
  br label %if.end28.sink.split

if.end28.sink.split:                              ; preds = %if.then23, %if.then16
  %arrayidx25.sink799 = phi ptr [ %arrayidx25, %if.then23 ], [ %arrayidx17, %if.then16 ]
  %12 = ptrtoint ptr %arrayidx25.sink799 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx25.sink799, align 4
  %inc26 = add i32 %13, 1
  store i32 %inc26, ptr %arrayidx25.sink799, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end28.sink.split, %if.then10.if.end28_crit_edge
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx11, align 1
  %conv30 = zext i8 %15 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.25, i32 noundef %conv30) #5
  br label %cleanup

if.then35:                                        ; preds = %if.end
  %arrayidx36 = getelementptr i8, ptr %buf, i32 1
  %16 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %17 to i32
  %arrayidx38 = getelementptr i8, ptr %buf, i32 2
  %18 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %19 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.26, i32 noundef %conv37, i32 noundef %conv39) #5
  %20 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip2, align 4
  %scbd_support.i = getelementptr inbounds %struct.rtw_chip_info, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %scbd_support.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %scbd_support.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %if.then35.if.end.i_crit_edge, label %rtw_coex_read_scbd.exit.i

if.then35.if.end.i_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

rtw_coex_read_scbd.exit.i:                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  %hci.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %24 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i.i.i, align 8
  %read16.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %27(ptr noundef %rtwdev, i32 noundef 170) #5
  %28 = and i16 %call.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool3.not.i = icmp eq i16 %28, 0
  br label %if.end.i

if.end.i:                                         ; preds = %rtw_coex_read_scbd.exit.i, %if.then35.if.end.i_crit_edge
  %bt_disabled.0.off0.i = phi i1 [ %tobool3.not.i, %rtw_coex_read_scbd.exit.i ], [ false, %if.then35.if.end.i_crit_edge ]
  %29 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %stat, align 4, !range !601
  %31 = zext i8 %30 to i32
  %conv8.i = zext i1 %bt_disabled.0.off0.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %conv8.i)
  %cmp.not.i = icmp eq i32 %31, %conv8.i
  br i1 %cmp.not.i, label %if.end.i.rtw_coex_monitor_bt_enable.exit_crit_edge, label %if.then10.i

if.end.i.rtw_coex_monitor_bt_enable.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_monitor_bt_enable.exit

if.then10.i:                                      ; preds = %if.end.i
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.146, i32 noundef %31, i32 noundef %conv8.i) #5
  %frombool18.i = zext i1 %bt_disabled.0.off0.i to i8
  %32 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %frombool18.i, ptr %stat, align 4
  %bt_ble_scan_type.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 69
  %33 = ptrtoint ptr %bt_ble_scan_type.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %bt_ble_scan_type.i, align 1
  %cur_bt_lna_lvl.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 11
  %34 = ptrtoint ptr %cur_bt_lna_lvl.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %cur_bt_lna_lvl.i, align 1
  br i1 %bt_disabled.0.off0.i, label %if.else.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  %bt_reenable.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 23
  %35 = ptrtoint ptr %bt_reenable.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %bt_reenable.i, align 1
  %36 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rtwdev, align 8
  %bt_reenable_work.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 13
  tail call void @ieee80211_queue_delayed_work(ptr noundef %37, ptr noundef %bt_reenable_work.i, i32 noundef 1500) #5
  br label %rtw_coex_monitor_bt_enable.exit

if.else.i:                                        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  %bt_mailbox_reply.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 29
  %38 = ptrtoint ptr %bt_mailbox_reply.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %bt_mailbox_reply.i, align 1
  %bt_reenable22.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 23
  %39 = ptrtoint ptr %bt_reenable22.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %bt_reenable22.i, align 1
  br label %rtw_coex_monitor_bt_enable.exit

rtw_coex_monitor_bt_enable.exit:                  ; preds = %if.else.i, %if.then21.i, %if.end.i.rtw_coex_monitor_bt_enable.exit_crit_edge
  %40 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %stat, align 4, !range !601
  %bt_disabled_pre = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 1
  %42 = ptrtoint ptr %bt_disabled_pre to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bt_disabled_pre, align 1, !range !601
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %43)
  %cmp43.not = icmp eq i8 %41, %43
  br i1 %cmp43.not, label %rtw_coex_monitor_bt_enable.exit.cleanup_crit_edge, label %if.then45

rtw_coex_monitor_bt_enable.exit.cleanup_crit_edge: ; preds = %rtw_coex_monitor_bt_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then45:                                        ; preds = %rtw_coex_monitor_bt_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %bt_disabled_pre to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %41, ptr %bt_disabled_pre, align 1
  tail call fastcc void @rtw_coex_run_coex(ptr noundef %rtwdev, i8 noundef zeroext 12)
  br label %cleanup

if.then54:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx55 = getelementptr i8, ptr %buf, i32 1
  %45 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %46 to i32
  %arrayidx57 = getelementptr i8, ptr %buf, i32 2
  %47 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %48 to i32
  %arrayidx59 = getelementptr i8, ptr %buf, i32 3
  %49 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %50 to i32
  %arrayidx61 = getelementptr i8, ptr %buf, i32 4
  %51 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %52 to i32
  %arrayidx63 = getelementptr i8, ptr %buf, i32 5
  %53 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %54 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.27, i32 noundef %conv56, i32 noundef %conv58, i32 noundef %conv60, i32 noundef %conv62, i32 noundef %conv64) #5
  %55 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx55, align 1
  %arrayidx71 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 17, i32 0
  %57 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %arrayidx71, align 1
  %58 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx57, align 1
  %arrayidx71.1 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 17, i32 1
  %60 = ptrtoint ptr %arrayidx71.1 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx71.1, align 1
  %61 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx59, align 1
  %arrayidx71.2 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 17, i32 2
  %63 = ptrtoint ptr %arrayidx71.2 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx71.2, align 1
  %64 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx61, align 1
  %arrayidx71.3 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 17, i32 3
  %66 = ptrtoint ptr %arrayidx71.3 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %arrayidx71.3, align 1
  %67 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx63, align 1
  %arrayidx71.4 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 17, i32 4
  %69 = ptrtoint ptr %arrayidx71.4 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %arrayidx71.4, align 1
  br label %cleanup

if.then77:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.28) #5
  tail call fastcc void @rtw_coex_update_bt_link_info(ptr noundef %rtwdev)
  br label %cleanup

if.then85:                                        ; preds = %if.end.if.then85_crit_edge, %if.end.if.then85_crit_edge802
  %70 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %stat, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool87.not = icmp eq i8 %71, 0
  br i1 %tobool87.not, label %if.then85.if.end91_crit_edge, label %if.then88

if.then85.if.end91_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91

if.then88:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %stat, align 4
  %bt_reenable = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 23
  %73 = ptrtoint ptr %bt_reenable to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %bt_reenable, align 1
  %74 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rtwdev, align 8
  %bt_reenable_work = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 13
  tail call void @ieee80211_queue_delayed_work(ptr noundef %75, ptr noundef %bt_reenable_work, i32 noundef 1500) #5
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.29) #5
  br label %if.end91

if.end91:                                         ; preds = %if.then88, %if.then85.if.end91_crit_edge, %if.end.if.end91_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %length)
  %cmp93.not = icmp eq i8 %length, 7
  br i1 %cmp93.not, label %if.end97, label %if.then95

if.then95:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  %conv92 = zext i8 %length to i32
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.30, i32 noundef %conv92) #5
  br label %cleanup

if.end97:                                         ; preds = %if.end91
  %76 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %buf, align 1
  %conv99 = zext i8 %77 to i32
  %arrayidx101 = getelementptr i8, ptr %buf, i32 1
  %78 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx101, align 1
  %conv102 = zext i8 %79 to i32
  %arrayidx103 = getelementptr i8, ptr %buf, i32 2
  %80 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx103, align 1
  %conv104 = zext i8 %81 to i32
  %arrayidx105 = getelementptr i8, ptr %buf, i32 3
  %82 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx105, align 1
  %conv106 = zext i8 %83 to i32
  %arrayidx107 = getelementptr i8, ptr %buf, i32 4
  %84 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx107, align 1
  %conv108 = zext i8 %85 to i32
  %arrayidx109 = getelementptr i8, ptr %buf, i32 5
  %86 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx109, align 1
  %conv110 = zext i8 %87 to i32
  %arrayidx111 = getelementptr i8, ptr %buf, i32 6
  %88 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx111, align 1
  %conv112 = zext i8 %89 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.31, i32 noundef %conv99, i32 noundef 7, i32 noundef %conv102, i32 noundef %conv104, i32 noundef %conv106, i32 noundef %conv108, i32 noundef %conv110, i32 noundef %conv112) #5
  %90 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %buf, align 1
  %arrayidx123 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 62, i32 %conv4, i32 0
  %92 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %arrayidx123, align 1
  %93 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx101, align 1
  %arrayidx123.1 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 62, i32 %conv4, i32 1
  %95 = ptrtoint ptr %arrayidx123.1 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %arrayidx123.1, align 1
  %96 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx103, align 1
  %arrayidx123.2 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 62, i32 %conv4, i32 2
  %98 = ptrtoint ptr %arrayidx123.2 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %arrayidx123.2, align 1
  %99 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx105, align 1
  %arrayidx123.3 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 62, i32 %conv4, i32 3
  %101 = ptrtoint ptr %arrayidx123.3 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %arrayidx123.3, align 1
  %102 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx107, align 1
  %arrayidx123.4 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 62, i32 %conv4, i32 4
  %104 = ptrtoint ptr %arrayidx123.4 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %arrayidx123.4, align 1
  %105 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx109, align 1
  %arrayidx123.5 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 62, i32 %conv4, i32 5
  %107 = ptrtoint ptr %arrayidx123.5 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %arrayidx123.5, align 1
  %108 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx111, align 1
  %arrayidx123.6 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 62, i32 %conv4, i32 6
  %110 = ptrtoint ptr %arrayidx123.6 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %arrayidx123.6, align 1
  %bt_info_lb2 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 63
  %111 = ptrtoint ptr %bt_info_lb2 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %bt_info_lb2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %94, i8 %112)
  %cmp133 = icmp eq i8 %94, %112
  br i1 %cmp133, label %land.lhs.true, label %if.end97.if.end180_crit_edge

if.end97.if.end180_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end180

land.lhs.true:                                    ; preds = %if.end97
  %113 = ptrtoint ptr %arrayidx123.2 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx123.2, align 1
  %bt_info_lb3 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 64
  %115 = ptrtoint ptr %bt_info_lb3 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %bt_info_lb3, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %114, i8 %116)
  %cmp141 = icmp eq i8 %114, %116
  br i1 %cmp141, label %land.lhs.true143, label %land.lhs.true.if.end180_crit_edge

land.lhs.true.if.end180_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end180

land.lhs.true143:                                 ; preds = %land.lhs.true
  %117 = ptrtoint ptr %arrayidx123.3 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx123.3, align 1
  %bt_info_hb0 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 65
  %119 = ptrtoint ptr %bt_info_hb0 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %bt_info_hb0, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %118, i8 %120)
  %cmp150 = icmp eq i8 %118, %120
  br i1 %cmp150, label %land.lhs.true152, label %land.lhs.true143.if.end180_crit_edge

land.lhs.true143.if.end180_crit_edge:             ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end180

land.lhs.true152:                                 ; preds = %land.lhs.true143
  %121 = ptrtoint ptr %arrayidx123.4 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx123.4, align 1
  %bt_info_hb1 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 66
  %123 = ptrtoint ptr %bt_info_hb1 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %bt_info_hb1, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %122, i8 %124)
  %cmp159 = icmp eq i8 %122, %124
  br i1 %cmp159, label %land.lhs.true161, label %land.lhs.true152.if.end180_crit_edge

land.lhs.true152.if.end180_crit_edge:             ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end180

land.lhs.true161:                                 ; preds = %land.lhs.true152
  %125 = ptrtoint ptr %arrayidx123.5 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx123.5, align 1
  %bt_info_hb2 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 67
  %127 = ptrtoint ptr %bt_info_hb2 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %bt_info_hb2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %126, i8 %128)
  %cmp168 = icmp eq i8 %126, %128
  br i1 %cmp168, label %land.lhs.true170, label %land.lhs.true161.if.end180_crit_edge

land.lhs.true161.if.end180_crit_edge:             ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end180

land.lhs.true170:                                 ; preds = %land.lhs.true161
  %129 = ptrtoint ptr %arrayidx123.6 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx123.6, align 1
  %bt_info_hb3 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 68
  %131 = ptrtoint ptr %bt_info_hb3 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %bt_info_hb3, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %130, i8 %132)
  %cmp177 = icmp eq i8 %130, %132
  br i1 %cmp177, label %if.then179, label %land.lhs.true170.if.end180_crit_edge

land.lhs.true170.if.end180_crit_edge:             ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end180

if.then179:                                       ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.32) #5
  br label %cleanup

if.end180:                                        ; preds = %land.lhs.true170.if.end180_crit_edge, %land.lhs.true161.if.end180_crit_edge, %land.lhs.true152.if.end180_crit_edge, %land.lhs.true143.if.end180_crit_edge, %land.lhs.true.if.end180_crit_edge, %if.end97.if.end180_crit_edge
  %133 = ptrtoint ptr %bt_info_lb2 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %94, ptr %bt_info_lb2, align 1
  %134 = ptrtoint ptr %arrayidx123.2 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx123.2, align 1
  %bt_info_lb3190 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 64
  %136 = ptrtoint ptr %bt_info_lb3190 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %bt_info_lb3190, align 2
  %137 = ptrtoint ptr %arrayidx123.3 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx123.3, align 1
  %bt_info_hb0195 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 65
  %139 = ptrtoint ptr %bt_info_hb0195 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %138, ptr %bt_info_hb0195, align 1
  %140 = ptrtoint ptr %arrayidx123.4 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx123.4, align 1
  %bt_info_hb1200 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 66
  %142 = ptrtoint ptr %bt_info_hb1200 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %bt_info_hb1200, align 4
  %143 = ptrtoint ptr %arrayidx123.5 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx123.5, align 1
  %bt_info_hb2205 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 67
  %145 = ptrtoint ptr %bt_info_hb2205 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %bt_info_hb2205, align 1
  %146 = ptrtoint ptr %arrayidx123.6 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx123.6, align 1
  %bt_info_hb3210 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 68
  %148 = ptrtoint ptr %bt_info_hb3210 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %bt_info_hb3210, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %94)
  %cmp213 = icmp eq i8 %94, -1
  %bt_whck_test = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 3
  %frombool215 = zext i1 %cmp213 to i8
  %149 = ptrtoint ptr %bt_whck_test to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %frombool215, ptr %bt_whck_test, align 1
  %150 = and i8 %94, 4
  %.lobit777 = lshr exact i8 %150, 2
  %bt_inq_page = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 4
  %151 = ptrtoint ptr %bt_inq_page to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %bt_inq_page, align 4, !range !601
  call void @__sanitizer_cov_trace_cmp1(i8 %.lobit777, i8 %152)
  %cmp226.not = icmp eq i8 %.lobit777, %152
  br i1 %cmp226.not, label %if.end180.if.end238_crit_edge, label %if.then228

if.end180.if.end238_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end238

if.then228:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %cmp219.not = icmp eq i8 %150, 0
  %bt_remain_work = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 16
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %bt_remain_work) #5
  %153 = ptrtoint ptr %bt_inq_page to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %.lobit777, ptr %bt_inq_page, align 4
  br i1 %cmp219.not, label %if.else234, label %if.then233

if.then233:                                       ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #7
  %bt_inq_remain = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 5
  %154 = ptrtoint ptr %bt_inq_remain to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 1, ptr %bt_inq_remain, align 1
  br label %if.end238

if.else234:                                       ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #7
  %155 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %rtwdev, align 8
  tail call void @ieee80211_queue_delayed_work(ptr noundef %156, ptr noundef %bt_remain_work, i32 noundef 400) #5
  br label %if.end238

if.end238:                                        ; preds = %if.else234, %if.then233, %if.end180.if.end238_crit_edge
  %157 = ptrtoint ptr %bt_info_lb2 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %bt_info_lb2, align 1
  %bt_acl_busy = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 15
  %159 = lshr i8 %158, 3
  %.lobit778 = and i8 %159, 1
  %160 = ptrtoint ptr %bt_acl_busy to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %.lobit778, ptr %bt_acl_busy, align 1
  %ble_hid_profile_support = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 70
  %161 = ptrtoint ptr %ble_hid_profile_support to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %ble_hid_profile_support, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool245.not = icmp eq i8 %162, 0
  br i1 %tobool245.not, label %if.else273, label %if.then246

if.then246:                                       ; preds = %if.end238
  %163 = and i8 %158, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool250.not = icmp eq i8 %163, 0
  %164 = ptrtoint ptr %bt_info_hb1200 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %bt_info_hb1200, align 4
  %166 = and i8 %165, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool264.not = icmp eq i8 %166, 0
  br i1 %tobool250.not, label %if.else260, label %if.then251

if.then251:                                       ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #7
  %not.tobool264.not = xor i1 %tobool264.not, true
  %spec.select = zext i1 %not.tobool264.not to i8
  %167 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 28
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %spec.select, ptr %167, align 4
  %bt_ble_exist = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 9
  %169 = ptrtoint ptr %bt_ble_exist to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 0, ptr %bt_ble_exist, align 1
  br label %if.end300

if.else260:                                       ; preds = %if.then246
  %bt_ble_hid_exist269 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 28
  %170 = ptrtoint ptr %bt_ble_hid_exist269 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 0, ptr %bt_ble_hid_exist269, align 4
  %bt_ble_exist270 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 9
  br i1 %tobool264.not, label %if.else268, label %if.then265

if.then265:                                       ; preds = %if.else260
  call void @__sanitizer_cov_trace_pc() #7
  %171 = ptrtoint ptr %bt_ble_exist270 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 1, ptr %bt_ble_exist270, align 1
  br label %if.end300

if.else268:                                       ; preds = %if.else260
  call void @__sanitizer_cov_trace_pc() #7
  %172 = ptrtoint ptr %bt_ble_exist270 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 0, ptr %bt_ble_exist270, align 1
  br label %if.end300

if.else273:                                       ; preds = %if.end238
  %173 = ptrtoint ptr %bt_info_hb1200 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %bt_info_hb1200, align 4
  %175 = and i8 %174, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool277.not = icmp eq i8 %175, 0
  br i1 %tobool277.not, label %if.else296, label %if.then278

if.then278:                                       ; preds = %if.else273
  %bt_hid_slot = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 71
  %176 = ptrtoint ptr %bt_hid_slot to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %bt_hid_slot, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %177)
  %cmp280 = icmp eq i8 %177, 1
  br i1 %cmp280, label %land.lhs.true282, label %if.then278.if.else292_crit_edge

if.then278.if.else292_crit_edge:                  ; preds = %if.then278
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else292

land.lhs.true282:                                 ; preds = %if.then278
  %hi_pri_rx = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 51
  %178 = ptrtoint ptr %hi_pri_rx to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %hi_pri_rx, align 4
  %add = add i32 %179, 100
  %hi_pri_tx = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 50
  %180 = ptrtoint ptr %hi_pri_tx to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %hi_pri_tx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %181)
  %cmp283 = icmp ult i32 %add, %181
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %179)
  %cmp287 = icmp ult i32 %179, 100
  %or.cond = and i1 %cmp287, %cmp283
  br i1 %or.cond, label %if.then289, label %land.lhs.true282.if.else292_crit_edge

land.lhs.true282.if.else292_crit_edge:            ; preds = %land.lhs.true282
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else292

if.then289:                                       ; preds = %land.lhs.true282
  call void @__sanitizer_cov_trace_pc() #7
  %bt_ble_hid_exist290 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 28
  %182 = ptrtoint ptr %bt_ble_hid_exist290 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 1, ptr %bt_ble_hid_exist290, align 4
  %bt_ble_exist291 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 9
  %183 = ptrtoint ptr %bt_ble_exist291 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 0, ptr %bt_ble_exist291, align 1
  br label %if.end300

if.else292:                                       ; preds = %land.lhs.true282.if.else292_crit_edge, %if.then278.if.else292_crit_edge
  %bt_ble_hid_exist293 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 28
  %184 = ptrtoint ptr %bt_ble_hid_exist293 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 0, ptr %bt_ble_hid_exist293, align 4
  %bt_ble_exist294 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 9
  %185 = ptrtoint ptr %bt_ble_exist294 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 1, ptr %bt_ble_exist294, align 1
  br label %if.end300

if.else296:                                       ; preds = %if.else273
  call void @__sanitizer_cov_trace_pc() #7
  %bt_ble_hid_exist297 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 28
  %186 = ptrtoint ptr %bt_ble_hid_exist297 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 0, ptr %bt_ble_hid_exist297, align 4
  %bt_ble_exist298 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 9
  %187 = ptrtoint ptr %bt_ble_exist298 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 0, ptr %bt_ble_exist298, align 1
  br label %if.end300

if.end300:                                        ; preds = %if.else296, %if.else292, %if.then289, %if.else268, %if.then265, %if.then251
  %188 = ptrtoint ptr %bt_info_lb3190 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %bt_info_lb3190, align 2
  %190 = and i8 %189, 15
  %and303 = zext i8 %190 to i32
  %cnt_bt304 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 89
  %191 = ptrtoint ptr %cnt_bt304 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %and303, ptr %cnt_bt304, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %cmp308.not = icmp eq i8 %190, 0
  br i1 %cmp308.not, label %if.end300.if.end314_crit_edge, label %if.then310

if.end300.if.end314_crit_edge:                    ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end314

if.then310:                                       ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx312 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 89, i32 3
  %192 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx312, align 4
  %inc313 = add i32 %193, 1
  store i32 %inc313, ptr %arrayidx312, align 4
  br label %if.end314

if.end314:                                        ; preds = %if.then310, %if.end300.if.end314_crit_edge
  %bt_fix_2M = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 16
  %194 = lshr i8 %189, 4
  %.lobit779 = and i8 %194, 1
  %195 = ptrtoint ptr %bt_fix_2M to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %.lobit779, ptr %bt_fix_2M, align 4
  %196 = and i8 %189, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %cmp324.not = icmp eq i8 %196, 0
  %bt_inq = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 6
  %.lobit780 = lshr exact i8 %196, 5
  %197 = ptrtoint ptr %bt_inq to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %.lobit780, ptr %bt_inq, align 2
  br i1 %cmp324.not, label %if.end314.if.end333_crit_edge, label %if.then329

if.end314.if.end333_crit_edge:                    ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end333

if.then329:                                       ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx331 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 89, i32 6
  %198 = ptrtoint ptr %arrayidx331 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx331, align 4
  %inc332 = add i32 %199, 1
  store i32 %inc332, ptr %arrayidx331, align 4
  br label %if.end333

if.end333:                                        ; preds = %if.then329, %if.end314.if.end333_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %cmp337 = icmp slt i8 %189, 0
  %bt_page = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 7
  %.lobit781 = lshr i8 %189, 7
  %200 = ptrtoint ptr %bt_page to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %.lobit781, ptr %bt_page, align 1
  br i1 %cmp337, label %if.then342, label %if.end333.if.end346_crit_edge

if.end333.if.end346_crit_edge:                    ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end346

if.then342:                                       ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx344 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 89, i32 7
  %201 = ptrtoint ptr %arrayidx344 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx344, align 4
  %inc345 = add i32 %202, 1
  store i32 %inc345, ptr %arrayidx344, align 4
  br label %if.end346

if.end346:                                        ; preds = %if.then342, %if.end333.if.end346_crit_edge
  %bt_rssi_type = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 72
  %203 = ptrtoint ptr %bt_rssi_type to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %bt_rssi_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %cmp348 = icmp eq i8 %204, 0
  %205 = ptrtoint ptr %bt_info_hb0195 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %bt_info_hb0195, align 1
  br i1 %cmp348, label %if.then350, label %if.else355

if.then350:                                       ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #7
  %mul = shl i8 %206, 1
  %add353 = add i8 %mul, 10
  br label %if.end379

if.else355:                                       ; preds = %if.end346
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %206)
  %cmp358 = icmp sgt i8 %206, -1
  br i1 %cmp358, label %if.else355.if.end379_crit_edge, label %if.else362

if.else355.if.end379_crit_edge:                   ; preds = %if.else355
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end379

if.else362:                                       ; preds = %if.else355
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -101, i8 %206)
  %cmp366 = icmp ugt i8 %206, -101
  %sub372 = add nsw i8 %206, 100
  %spec.select801 = select i1 %cmp366, i8 %sub372, i8 0
  br label %if.end379

if.end379:                                        ; preds = %if.else362, %if.else355.if.end379_crit_edge, %if.then350
  %.sink = phi i8 [ %add353, %if.then350 ], [ 100, %if.else355.if.end379_crit_edge ], [ %spec.select801, %if.else362 ]
  %bt_rssi361 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 57
  %207 = ptrtoint ptr %bt_rssi361 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %.sink, ptr %bt_rssi361, align 4
  %208 = ptrtoint ptr %bt_info_hb1200 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %bt_info_hb1200, align 4
  %210 = and i8 %209, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %210)
  %tobool383.not = icmp eq i8 %210, 0
  br i1 %tobool383.not, label %if.end379.if.end388_crit_edge, label %if.then384

if.end379.if.end388_crit_edge:                    ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end388

if.then384:                                       ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx386 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 89, i32 1
  %211 = ptrtoint ptr %arrayidx386 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %arrayidx386, align 4
  %inc387 = add i32 %212, 1
  store i32 %inc387, ptr %arrayidx386, align 4
  br label %if.end388

if.end388:                                        ; preds = %if.then384, %if.end379.if.end388_crit_edge
  %213 = and i8 %209, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %tobool392.not = icmp eq i8 %213, 0
  br i1 %tobool392.not, label %if.end388.if.end403_crit_edge, label %if.then393

if.end388.if.end403_crit_edge:                    ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end403

if.then393:                                       ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx395 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 89, i32 4
  %214 = ptrtoint ptr %arrayidx395 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx395, align 4
  %inc396 = add i32 %215, 1
  store i32 %inc396, ptr %arrayidx395, align 4
  %bt_setup_link = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 17
  %216 = ptrtoint ptr %bt_setup_link to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 1, ptr %bt_setup_link, align 1
  %bt_reenable397 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 23
  %217 = ptrtoint ptr %bt_reenable397 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %bt_reenable397, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %tobool398.not = icmp eq i8 %218, 0
  %. = select i1 %tobool398.not, i32 100, i32 600
  %219 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %rtwdev, align 8
  %bt_relink_work = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 12
  tail call void @ieee80211_queue_delayed_work(ptr noundef %220, ptr noundef %bt_relink_work, i32 noundef %.) #5
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.33) #5
  br label %if.end403

if.end403:                                        ; preds = %if.then393, %if.end388.if.end403_crit_edge
  %221 = ptrtoint ptr %bt_info_hb1200 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %bt_info_hb1200, align 4
  %223 = and i8 %222, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %223)
  %tobool407.not = icmp eq i8 %223, 0
  br i1 %tobool407.not, label %if.end403.if.end412_crit_edge, label %if.then408

if.end403.if.end412_crit_edge:                    ; preds = %if.end403
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end412

if.then408:                                       ; preds = %if.end403
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx410 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 89, i32 5
  %224 = ptrtoint ptr %arrayidx410 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx410, align 4
  %inc411 = add i32 %225, 1
  store i32 %inc411, ptr %arrayidx410, align 4
  br label %if.end412

if.end412:                                        ; preds = %if.then408, %if.end403.if.end412_crit_edge
  %bt_ble_voice = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 8
  %226 = lshr i8 %222, 4
  %.lobit782 = and i8 %226, 1
  %227 = ptrtoint ptr %bt_ble_voice to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %.lobit782, ptr %bt_ble_voice, align 4
  %bt_ble_scan_en = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 24
  %228 = lshr i8 %222, 5
  %.lobit783 = and i8 %228, 1
  %229 = ptrtoint ptr %bt_ble_scan_en to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %.lobit783, ptr %bt_ble_scan_en, align 4
  %230 = and i8 %222, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %230)
  %tobool428.not = icmp eq i8 %230, 0
  br i1 %tobool428.not, label %if.end412.if.end433_crit_edge, label %if.then429

if.end412.if.end433_crit_edge:                    ; preds = %if.end412
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end433

if.then429:                                       ; preds = %if.end412
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx431 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 89, i32 8
  %231 = ptrtoint ptr %arrayidx431 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx431, align 4
  %inc432 = add i32 %232, 1
  store i32 %inc432, ptr %arrayidx431, align 4
  br label %if.end433

if.end433:                                        ; preds = %if.then429, %if.end412.if.end433_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %222)
  %cmp437 = icmp slt i8 %222, 0
  %bt_multi_link = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 18
  %.lobit784 = lshr i8 %222, 7
  %233 = ptrtoint ptr %bt_multi_link to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %.lobit784, ptr %bt_multi_link, align 2
  br i1 %cmp437, label %if.end433.if.end447_crit_edge, label %land.lhs.true442

if.end433.if.end447_crit_edge:                    ; preds = %if.end433
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end447

land.lhs.true442:                                 ; preds = %if.end433
  %bt_multi_link_pre = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 19
  %234 = ptrtoint ptr %bt_multi_link_pre to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %bt_multi_link_pre, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %235)
  %tobool443.not = icmp eq i8 %235, 0
  br i1 %tobool443.not, label %land.lhs.true442.if.end447_crit_edge, label %if.then445

land.lhs.true442.if.end447_crit_edge:             ; preds = %land.lhs.true442
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end447

if.then445:                                       ; preds = %land.lhs.true442
  call void @__sanitizer_cov_trace_pc() #7
  %bt_multi_link_remain = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 20
  %236 = ptrtoint ptr %bt_multi_link_remain to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 1, ptr %bt_multi_link_remain, align 4
  %237 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %rtwdev, align 8
  %bt_multi_link_remain_work = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 18
  tail call void @ieee80211_queue_delayed_work(ptr noundef %238, ptr noundef %bt_multi_link_remain_work, i32 noundef 300) #5
  br label %if.end447

if.end447:                                        ; preds = %if.then445, %land.lhs.true442.if.end447_crit_edge, %if.end433.if.end447_crit_edge
  %239 = ptrtoint ptr %bt_multi_link to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %bt_multi_link, align 2, !range !601
  %bt_multi_link_pre450 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 19
  %241 = ptrtoint ptr %bt_multi_link_pre450 to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 %240, ptr %bt_multi_link_pre450, align 1
  %242 = ptrtoint ptr %bt_info_hb1200 to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %bt_info_hb1200, align 4
  %244 = and i8 %243, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %244)
  %tobool455.not = icmp eq i8 %244, 0
  br i1 %tobool455.not, label %if.end447.if.end461_crit_edge, label %if.then456

if.end447.if.end461_crit_edge:                    ; preds = %if.end447
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end461

if.then456:                                       ; preds = %if.end447
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.34) #5
  %wl_connected = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 40
  %245 = ptrtoint ptr %wl_connected to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %wl_connected, align 4, !range !601
  tail call fastcc void @rtw_coex_update_wl_ch_info(ptr noundef %rtwdev, i8 noundef zeroext %246)
  br label %if.end461

if.end461:                                        ; preds = %if.then456, %if.end447.if.end461_crit_edge
  %247 = ptrtoint ptr %bt_info_hb1200 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %bt_info_hb1200, align 4
  %249 = and i8 %248, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %249)
  %250 = icmp eq i8 %249, 8
  br i1 %250, label %if.then471, label %if.end461.if.end472_crit_edge

if.end461.if.end472_crit_edge:                    ; preds = %if.end461
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end472

if.then471:                                       ; preds = %if.end461
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.35) #5
  %manual_control.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 8
  %251 = ptrtoint ptr %manual_control.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %manual_control.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %252)
  %tobool.not.i790 = icmp eq i8 %252, 0
  br i1 %tobool.not.i790, label %lor.lhs.false.i, label %if.then471.if.end472_crit_edge

if.then471.if.end472_crit_edge:                   ; preds = %if.then471
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end472

lor.lhs.false.i:                                  ; preds = %if.then471
  %stop_dm.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 4
  %253 = ptrtoint ptr %stop_dm.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %stop_dm.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %254)
  %tobool2.not.i = icmp eq i8 %254, 0
  br i1 %tobool2.not.i, label %if.end.i791, label %lor.lhs.false.i.if.end472_crit_edge

lor.lhs.false.i.if.end472_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end472

if.end.i791:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtw_fw_bt_ignore_wlan_action(ptr noundef %rtwdev, i1 noundef zeroext false) #5
  br label %if.end472

if.end472:                                        ; preds = %if.end.i791, %lor.lhs.false.i.if.end472_crit_edge, %if.then471.if.end472_crit_edge, %if.end461.if.end472_crit_edge
  %255 = ptrtoint ptr %bt_info_hb2205 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %bt_info_hb2205, align 1
  %257 = and i8 %256, 1
  %bt_opp_exist = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 14
  %258 = ptrtoint ptr %bt_opp_exist to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %257, ptr %bt_opp_exist, align 2
  %259 = and i8 %256, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %259)
  %tobool482.not = icmp eq i8 %259, 0
  br i1 %tobool482.not, label %if.end472.if.end487_crit_edge, label %if.then483

if.end472.if.end487_crit_edge:                    ; preds = %if.end472
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end487

if.then483:                                       ; preds = %if.end472
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx485 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 89, i32 9
  %260 = ptrtoint ptr %arrayidx485 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %arrayidx485, align 4
  %inc486 = add i32 %261, 1
  store i32 %inc486, ptr %arrayidx485, align 4
  br label %if.end487

if.end487:                                        ; preds = %if.then483, %if.end472.if.end487_crit_edge
  %bt_a2dp_active = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 22
  %262 = lshr i8 %256, 2
  %.lobit785 = and i8 %262, 1
  %263 = ptrtoint ptr %bt_a2dp_active to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 %.lobit785, ptr %bt_a2dp_active, align 2
  %bt_slave = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 26
  %264 = lshr i8 %256, 3
  %.lobit786 = and i8 %264, 1
  %265 = ptrtoint ptr %bt_slave to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 %.lobit786, ptr %bt_slave, align 2
  %266 = lshr i8 %256, 4
  %267 = and i8 %266, 3
  %bt_hid_slot504 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 71
  %268 = ptrtoint ptr %bt_hid_slot504 to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 %267, ptr %bt_hid_slot504, align 1
  %269 = lshr i8 %256, 6
  %bt_hid_pair_num = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 70
  %270 = ptrtoint ptr %bt_hid_pair_num to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %269, ptr %bt_hid_pair_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %256)
  %cmp512.not = icmp ugt i8 %256, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %267)
  %cmp517 = icmp ugt i8 %267, 1
  %or.cond792 = select i1 %cmp512.not, i1 %cmp517, i1 false
  br i1 %or.cond792, label %if.end487.if.end533.sink.split_crit_edge, label %if.else520

if.end487.if.end533.sink.split_crit_edge:         ; preds = %if.end487
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end533.sink.split

if.else520:                                       ; preds = %if.end487
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %256)
  %cmp523 = icmp ult i8 %256, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %267)
  %cmp528 = icmp eq i8 %267, 1
  %or.cond793 = select i1 %cmp523, i1 true, i1 %cmp528
  br i1 %or.cond793, label %if.else520.if.end533.sink.split_crit_edge, label %if.else520.if.end533_crit_edge

if.else520.if.end533_crit_edge:                   ; preds = %if.else520
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end533

if.else520.if.end533.sink.split_crit_edge:        ; preds = %if.else520
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end533.sink.split

if.end533.sink.split:                             ; preds = %if.else520.if.end533.sink.split_crit_edge, %if.end487.if.end533.sink.split_crit_edge
  %.sink800 = phi i8 [ 1, %if.end487.if.end533.sink.split_crit_edge ], [ 0, %if.else520.if.end533.sink.split_crit_edge ]
  %bt_418_hid_exist531 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 27
  %271 = ptrtoint ptr %bt_418_hid_exist531 to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 %.sink800, ptr %bt_418_hid_exist531, align 1
  br label %if.end533

if.end533:                                        ; preds = %if.end533.sink.split, %if.else520.if.end533_crit_edge
  %272 = ptrtoint ptr %bt_info_lb2 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %bt_info_lb2, align 1
  %274 = and i8 %273, 73
  call void @__sanitizer_cov_trace_const_cmp1(i8 73, i8 %274)
  %cmp537 = icmp eq i8 %274, 73
  br i1 %cmp537, label %if.then539, label %if.end533.if.end546_crit_edge

if.end533.if.end546_crit_edge:                    ; preds = %if.end533
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end546

if.then539:                                       ; preds = %if.end533
  call void @__sanitizer_cov_trace_pc() #7
  %275 = ptrtoint ptr %bt_info_hb3210 to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %bt_info_hb3210, align 2
  %277 = and i8 %276, 127
  br label %if.end546

if.end546:                                        ; preds = %if.then539, %if.end533.if.end546_crit_edge
  %.sink797 = phi i8 [ %277, %if.then539 ], [ 0, %if.end533.if.end546_crit_edge ]
  %278 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 72
  %279 = ptrtoint ptr %278 to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 %.sink797, ptr %278, align 2
  %280 = ptrtoint ptr %bt_info_hb3210 to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %bt_info_hb3210, align 2
  %bt_a2dp_sink = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 21
  %.lobit787 = lshr i8 %281, 7
  %282 = ptrtoint ptr %bt_a2dp_sink to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 %.lobit787, ptr %bt_a2dp_sink, align 1
  tail call fastcc void @rtw_coex_update_bt_link_info(ptr noundef %rtwdev)
  tail call fastcc void @rtw_coex_run_coex(ptr noundef %rtwdev, i8 noundef zeroext 12)
  br label %cleanup

cleanup:                                          ; preds = %if.end546, %if.then179, %if.then95, %if.then77, %if.then54, %if.then45, %rtw_coex_monitor_bt_enable.exit.cleanup_crit_edge, %if.end28, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_coex_update_bt_link_info(ptr noundef %rtwdev) unnamed_addr #0 align 64 {
entry:
  %req.i = alloca %struct.rtw_coex_info_req, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip2 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip2, align 4
  %bt_rssi_step = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 84
  %bt_rssi = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 57
  %2 = ptrtoint ptr %bt_rssi to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bt_rssi, align 4
  %rssi_tolerance.i = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 74
  %conv6.i = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 4, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = ptrtoint ptr %bt_rssi_step to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bt_rssi_step, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %10 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.276)
  switch i8 %5, label %if.else12.i [
    i8 2, label %entry.if.then.i_crit_edge
    i8 5, label %entry.if.then.i_crit_edge194
  ]

entry.if.then.i_crit_edge194:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge194
  %11 = ptrtoint ptr %rssi_tolerance.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rssi_tolerance.i, align 1
  %conv7.i = zext i8 %9 to i32
  %conv8.i = zext i8 %12 to i32
  %add.i = add nuw nsw i32 %conv8.i, %conv7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv6.i)
  %cmp9.not.i = icmp ugt i32 %add.i, %conv6.i
  %..i = select i1 %cmp9.not.i, i8 5, i8 0
  br label %rtw_coex_next_rssi_state.exit

if.else12.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %9)
  %cmp15.i = icmp ult i8 %3, %9
  %.24.i = select i1 %cmp15.i, i8 2, i8 3
  br label %rtw_coex_next_rssi_state.exit

rtw_coex_next_rssi_state.exit:                    ; preds = %if.else12.i, %if.then.i
  %next_state.0.i = phi i8 [ %..i, %if.then.i ], [ %.24.i, %if.else12.i ]
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %next_state.0.i, ptr %arrayidx, align 1
  %arrayidx.1 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 4, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.1, align 1
  %16 = ptrtoint ptr %bt_rssi_step to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bt_rssi_step, align 4
  %arrayidx5.1 = getelementptr i8, ptr %17, i32 1
  %18 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx5.1, align 1
  %20 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.277)
  switch i8 %15, label %if.else12.i.1 [
    i8 2, label %rtw_coex_next_rssi_state.exit.if.then.i.1_crit_edge
    i8 5, label %rtw_coex_next_rssi_state.exit.if.then.i.1_crit_edge195
  ]

rtw_coex_next_rssi_state.exit.if.then.i.1_crit_edge195: ; preds = %rtw_coex_next_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.1

rtw_coex_next_rssi_state.exit.if.then.i.1_crit_edge: ; preds = %rtw_coex_next_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.1

if.then.i.1:                                      ; preds = %rtw_coex_next_rssi_state.exit.if.then.i.1_crit_edge, %rtw_coex_next_rssi_state.exit.if.then.i.1_crit_edge195
  %21 = ptrtoint ptr %rssi_tolerance.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rssi_tolerance.i, align 1
  %conv7.i.1 = zext i8 %19 to i32
  %conv8.i.1 = zext i8 %22 to i32
  %add.i.1 = add nuw nsw i32 %conv8.i.1, %conv7.i.1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.1, i32 %conv6.i)
  %cmp9.not.i.1 = icmp ugt i32 %add.i.1, %conv6.i
  %..i.1 = select i1 %cmp9.not.i.1, i8 5, i8 0
  br label %rtw_coex_next_rssi_state.exit.1

if.else12.i.1:                                    ; preds = %rtw_coex_next_rssi_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %19)
  %cmp15.i.1 = icmp ult i8 %3, %19
  %.24.i.1 = select i1 %cmp15.i.1, i8 2, i8 3
  br label %rtw_coex_next_rssi_state.exit.1

rtw_coex_next_rssi_state.exit.1:                  ; preds = %if.else12.i.1, %if.then.i.1
  %next_state.0.i.1 = phi i8 [ %..i.1, %if.then.i.1 ], [ %.24.i.1, %if.else12.i.1 ]
  %23 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %next_state.0.i.1, ptr %arrayidx.1, align 1
  %arrayidx.2 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 4, i32 2
  %24 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.2, align 1
  %26 = ptrtoint ptr %bt_rssi_step to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bt_rssi_step, align 4
  %arrayidx5.2 = getelementptr i8, ptr %27, i32 2
  %28 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx5.2, align 1
  %30 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.278)
  switch i8 %25, label %if.else12.i.2 [
    i8 2, label %rtw_coex_next_rssi_state.exit.1.if.then.i.2_crit_edge
    i8 5, label %rtw_coex_next_rssi_state.exit.1.if.then.i.2_crit_edge196
  ]

rtw_coex_next_rssi_state.exit.1.if.then.i.2_crit_edge196: ; preds = %rtw_coex_next_rssi_state.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.2

rtw_coex_next_rssi_state.exit.1.if.then.i.2_crit_edge: ; preds = %rtw_coex_next_rssi_state.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.2

if.then.i.2:                                      ; preds = %rtw_coex_next_rssi_state.exit.1.if.then.i.2_crit_edge, %rtw_coex_next_rssi_state.exit.1.if.then.i.2_crit_edge196
  %31 = ptrtoint ptr %rssi_tolerance.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rssi_tolerance.i, align 1
  %conv7.i.2 = zext i8 %29 to i32
  %conv8.i.2 = zext i8 %32 to i32
  %add.i.2 = add nuw nsw i32 %conv8.i.2, %conv7.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.2, i32 %conv6.i)
  %cmp9.not.i.2 = icmp ugt i32 %add.i.2, %conv6.i
  %..i.2 = select i1 %cmp9.not.i.2, i8 5, i8 0
  br label %rtw_coex_next_rssi_state.exit.2

if.else12.i.2:                                    ; preds = %rtw_coex_next_rssi_state.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %29)
  %cmp15.i.2 = icmp ult i8 %3, %29
  %.24.i.2 = select i1 %cmp15.i.2, i8 2, i8 3
  br label %rtw_coex_next_rssi_state.exit.2

rtw_coex_next_rssi_state.exit.2:                  ; preds = %if.else12.i.2, %if.then.i.2
  %next_state.0.i.2 = phi i8 [ %..i.2, %if.then.i.2 ], [ %.24.i.2, %if.else12.i.2 ]
  %33 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %next_state.0.i.2, ptr %arrayidx.2, align 1
  %arrayidx.3 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 4, i32 3
  %34 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.3, align 1
  %36 = ptrtoint ptr %bt_rssi_step to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bt_rssi_step, align 4
  %arrayidx5.3 = getelementptr i8, ptr %37, i32 3
  %38 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx5.3, align 1
  %40 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.279)
  switch i8 %35, label %if.else12.i.3 [
    i8 2, label %rtw_coex_next_rssi_state.exit.2.if.then.i.3_crit_edge
    i8 5, label %rtw_coex_next_rssi_state.exit.2.if.then.i.3_crit_edge197
  ]

rtw_coex_next_rssi_state.exit.2.if.then.i.3_crit_edge197: ; preds = %rtw_coex_next_rssi_state.exit.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.3

rtw_coex_next_rssi_state.exit.2.if.then.i.3_crit_edge: ; preds = %rtw_coex_next_rssi_state.exit.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.3

if.then.i.3:                                      ; preds = %rtw_coex_next_rssi_state.exit.2.if.then.i.3_crit_edge, %rtw_coex_next_rssi_state.exit.2.if.then.i.3_crit_edge197
  %41 = ptrtoint ptr %rssi_tolerance.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %rssi_tolerance.i, align 1
  %conv7.i.3 = zext i8 %39 to i32
  %conv8.i.3 = zext i8 %42 to i32
  %add.i.3 = add nuw nsw i32 %conv8.i.3, %conv7.i.3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.3, i32 %conv6.i)
  %cmp9.not.i.3 = icmp ugt i32 %add.i.3, %conv6.i
  %..i.3 = select i1 %cmp9.not.i.3, i8 5, i8 0
  br label %rtw_coex_next_rssi_state.exit.3

if.else12.i.3:                                    ; preds = %rtw_coex_next_rssi_state.exit.2
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %39)
  %cmp15.i.3 = icmp ult i8 %3, %39
  %.24.i.3 = select i1 %cmp15.i.3, i8 2, i8 3
  br label %rtw_coex_next_rssi_state.exit.3

rtw_coex_next_rssi_state.exit.3:                  ; preds = %if.else12.i.3, %if.then.i.3
  %next_state.0.i.3 = phi i8 [ %..i.3, %if.then.i.3 ], [ %.24.i.3, %if.else12.i.3 ]
  %43 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %next_state.0.i.3, ptr %arrayidx.3, align 1
  %bt_ble_scan_en = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 24
  %44 = ptrtoint ptr %bt_ble_scan_en to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bt_ble_scan_en, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not = icmp eq i8 %45, 0
  br i1 %tobool.not, label %rtw_coex_next_rssi_state.exit.3.if.end22_crit_edge, label %land.lhs.true

rtw_coex_next_rssi_state.exit.3.if.end22_crit_edge: ; preds = %rtw_coex_next_rssi_state.exit.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

land.lhs.true:                                    ; preds = %rtw_coex_next_rssi_state.exit.3
  %arrayidx10 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 89, i32 10
  %46 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx10, align 4
  %rem = urem i32 %47, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp11 = icmp eq i32 %rem, 0
  br i1 %cmp11, label %if.then, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %req.i) #5
  %48 = call ptr @memset(ptr %req.i, i32 0, i32 5)
  %op_code.i = getelementptr inbounds %struct.rtw_coex_info_req, ptr %req.i, i32 0, i32 1
  %49 = ptrtoint ptr %op_code.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 45, ptr %op_code.i, align 1
  %call.i = call fastcc ptr @rtw_coex_info_request(ptr noundef %rtwdev, ptr noundef nonnull %req.i) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %rtw_coex_get_bt_scan_type.exit, label %if.then14

rtw_coex_get_bt_scan_type.exit:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %req.i) #5
  br label %if.end22

if.then14:                                        ; preds = %if.then
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3
  %50 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cb.i.i, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %52 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %53, i32 %51
  %payload.i.i = getelementptr inbounds %struct.rtw_c2h_cmd, ptr %add.ptr.i.i, i32 0, i32 2
  %54 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %payload.i.i, align 8
  %sum.shift.i = lshr i64 %55, 32
  %div.i789.i = trunc i64 %sum.shift.i to i8
  call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %req.i) #5
  %bt_ble_scan_type = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 69
  %56 = ptrtoint ptr %bt_ble_scan_type to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %div.i789.i, ptr %bt_ble_scan_type, align 1
  %57 = and i8 %div.i789.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp17.not = icmp eq i8 %57, 0
  %bt_init_scan20 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 25
  br i1 %cmp17.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %bt_init_scan20 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %bt_init_scan20, align 1
  br label %if.end22

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %bt_init_scan20 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %bt_init_scan20, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then19, %rtw_coex_get_bt_scan_type.exit, %land.lhs.true.if.end22_crit_edge, %rtw_coex_next_rssi_state.exit.3.if.end22_crit_edge
  %bt_profile_num = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 61
  %60 = ptrtoint ptr %bt_profile_num to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %bt_profile_num, align 4
  %bt_info_lb2 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 63
  %61 = ptrtoint ptr %bt_info_lb2 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %bt_info_lb2, align 1
  %63 = and i8 %62, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool25.not = icmp eq i8 %63, 0
  %bt_link_exist = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 2
  br i1 %tobool25.not, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %bt_link_exist to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %bt_link_exist, align 2
  %bt_hfp_exist = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 10
  %65 = ptrtoint ptr %bt_hfp_exist to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 0, ptr %bt_hfp_exist, align 2
  br label %if.end73

if.else27:                                        ; preds = %if.end22
  %66 = ptrtoint ptr %bt_link_exist to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %bt_link_exist, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %62)
  %tobool32.not = icmp sgt i8 %62, -1
  br i1 %tobool32.not, label %if.else27.if.end39_crit_edge, label %if.then33

if.else27.if.end39_crit_edge:                     ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then33:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %bt_profile_num to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %bt_profile_num, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then33, %if.else27.if.end39_crit_edge
  %.sink = phi i8 [ 1, %if.then33 ], [ 0, %if.else27.if.end39_crit_edge ]
  %68 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 13
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %.sink, ptr %68, align 1
  %70 = and i8 %62, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool43.not = icmp eq i8 %70, 0
  br i1 %tobool43.not, label %if.end39.if.end50_crit_edge, label %if.then44

if.end39.if.end50_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %bt_profile_num to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %bt_profile_num, align 4
  %inc47 = add i8 %72, 1
  store i8 %inc47, ptr %bt_profile_num, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then44, %if.end39.if.end50_crit_edge
  %.sink192 = phi i8 [ 1, %if.then44 ], [ 0, %if.end39.if.end50_crit_edge ]
  %73 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 11
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %.sink192, ptr %73, align 1
  %75 = and i8 %62, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool54.not = icmp eq i8 %75, 0
  br i1 %tobool54.not, label %if.end50.if.end61_crit_edge, label %if.then55

if.end50.if.end61_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.then55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %bt_profile_num to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %bt_profile_num, align 4
  %inc58 = add i8 %77, 1
  store i8 %inc58, ptr %bt_profile_num, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then55, %if.end50.if.end61_crit_edge
  %.sink193 = phi i8 [ 1, %if.then55 ], [ 0, %if.end50.if.end61_crit_edge ]
  %78 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 12
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %.sink193, ptr %78, align 4
  %80 = and i8 %62, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool65.not = icmp eq i8 %80, 0
  %bt_hfp_exist71 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 10
  br i1 %tobool65.not, label %if.else70, label %if.then66

if.then66:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %bt_hfp_exist71 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %bt_hfp_exist71, align 2
  %82 = ptrtoint ptr %bt_profile_num to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %bt_profile_num, align 4
  %inc69 = add i8 %83, 1
  store i8 %inc69, ptr %bt_profile_num, align 4
  br label %if.end73

if.else70:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %bt_hfp_exist71 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %bt_hfp_exist71, align 2
  br label %if.end73

if.end73:                                         ; preds = %if.else70, %if.then66, %if.then26
  %conv75 = zext i8 %62 to i32
  %and76 = and i32 %conv75, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.else79, label %if.then78

if.then78:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  %bt_status = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 13
  %85 = ptrtoint ptr %bt_status to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 2, ptr %bt_status, align 1
  br label %if.end125

if.else79:                                        ; preds = %if.end73
  %and82 = and i32 %conv75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.then84, label %if.else86

if.then84:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #7
  %bt_status85 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 13
  %86 = ptrtoint ptr %bt_status85 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %bt_status85, align 1
  %bt_multi_link_remain = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 20
  %87 = ptrtoint ptr %bt_multi_link_remain to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %bt_multi_link_remain, align 4
  br label %if.end125

if.else86:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %62)
  %cmp89 = icmp eq i8 %62, 1
  br i1 %cmp89, label %if.then91, label %if.else93

if.then91:                                        ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #7
  %bt_status92 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 13
  %88 = ptrtoint ptr %bt_status92 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %bt_status92, align 1
  br label %if.end125

if.else93:                                        ; preds = %if.else86
  %89 = and i32 %conv75, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %if.else112, label %if.then102

if.then102:                                       ; preds = %if.else93
  %91 = and i8 %62, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool106.not = icmp eq i8 %91, 0
  %bt_status110 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 13
  br i1 %tobool106.not, label %if.else109, label %if.then107

if.then107:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #7
  %92 = ptrtoint ptr %bt_status110 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 5, ptr %bt_status110, align 1
  br label %if.end125

if.else109:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #7
  %93 = ptrtoint ptr %bt_status110 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 4, ptr %bt_status110, align 1
  br label %if.end125

if.else112:                                       ; preds = %if.else93
  %and115 = and i32 %conv75, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  %bt_status120 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 13
  br i1 %tobool116.not, label %if.else119, label %if.then117

if.then117:                                       ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #7
  %94 = ptrtoint ptr %bt_status120 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 3, ptr %bt_status120, align 1
  br label %if.end125

if.else119:                                       ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #7
  %95 = ptrtoint ptr %bt_status120 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 6, ptr %bt_status120, align 1
  br label %if.end125

if.end125:                                        ; preds = %if.else119, %if.then117, %if.else109, %if.then107, %if.then91, %if.then84, %if.then78
  %arrayidx127 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 89, i32 10
  %96 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx127, align 4
  %inc128 = add i32 %97, 1
  store i32 %inc128, ptr %arrayidx127, align 4
  %bt_status129 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 13
  %98 = ptrtoint ptr %bt_status129 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %bt_status129, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %99)
  %100 = icmp ult i8 %99, 6
  br i1 %100, label %switch.lookup, label %if.end125.rtw_coex_get_bt_status_string.exit_crit_edge

if.end125.rtw_coex_get_bt_status_string.exit_crit_edge: ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_get_bt_status_string.exit

switch.lookup:                                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #7
  %101 = sext i8 %99 to i32
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.rtw_coex_update_bt_link_info, i32 0, i32 %101
  %102 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %102)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %rtw_coex_get_bt_status_string.exit

rtw_coex_get_bt_status_string.exit:               ; preds = %switch.lookup, %if.end125.rtw_coex_get_bt_status_string.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.211, %if.end125.rtw_coex_get_bt_status_string.exit_crit_edge ]
  call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.215, ptr noundef nonnull @__func__.rtw_coex_update_bt_link_info, ptr noundef nonnull %retval.0.i) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_coex_wl_fwdbginfo_notify(ptr noundef %rtwdev, ptr noundef %buf, i8 noundef zeroext %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %length to i32
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.36, ptr noundef %buf, i32 noundef %conv) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %length)
  %cmp = icmp ult i8 %length, 8
  br i1 %cmp, label %do.end, label %if.end24, !prof !604

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 3152, i32 noundef 9, ptr noundef nonnull @.str.37) #5
  br label %cleanup

if.end24:                                         ; preds = %entry
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1)
  %cmp26.not = icmp eq i8 %1, 8
  br i1 %cmp26.not, label %for.body.preheader, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %if.end24
  %arrayidx32 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 77, i32 1
  %2 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx32, align 1
  %arrayidx33 = getelementptr i8, ptr %buf, i32 1
  %4 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx33, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %3)
  %cmp36.not = icmp ult i8 %5, %3
  %sub45 = xor i8 %3, -1
  %6 = sub i8 0, %3
  %sub.sink.p = select i1 %cmp36.not, i8 %sub45, i8 %6
  %sub.sink = add i8 %5, %sub.sink.p
  %7 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 76, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %sub.sink, ptr %7, align 1
  %9 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx33, align 1
  %11 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx32, align 1
  %arrayidx32.1 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 77, i32 2
  %12 = ptrtoint ptr %arrayidx32.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx32.1, align 1
  %arrayidx33.1 = getelementptr i8, ptr %buf, i32 2
  %14 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx33.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %13)
  %cmp36.not.1 = icmp ult i8 %15, %13
  %sub45.1 = xor i8 %13, -1
  %16 = sub i8 0, %13
  %sub.1.sink.p = select i1 %cmp36.not.1, i8 %sub45.1, i8 %16
  %sub.1.sink = add i8 %15, %sub.1.sink.p
  %17 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 76, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %sub.1.sink, ptr %17, align 1
  %19 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx33.1, align 1
  %21 = ptrtoint ptr %arrayidx32.1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx32.1, align 1
  %arrayidx32.2 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 77, i32 3
  %22 = ptrtoint ptr %arrayidx32.2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx32.2, align 1
  %arrayidx33.2 = getelementptr i8, ptr %buf, i32 3
  %24 = ptrtoint ptr %arrayidx33.2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx33.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %23)
  %cmp36.not.2 = icmp ult i8 %25, %23
  %sub45.2 = xor i8 %23, -1
  %26 = sub i8 0, %23
  %sub.2.sink.p = select i1 %cmp36.not.2, i8 %sub45.2, i8 %26
  %sub.2.sink = add i8 %25, %sub.2.sink.p
  %27 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 76, i32 3
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %sub.2.sink, ptr %27, align 1
  %29 = ptrtoint ptr %arrayidx33.2 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx33.2, align 1
  %31 = ptrtoint ptr %arrayidx32.2 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx32.2, align 1
  %arrayidx32.3 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 77, i32 4
  %32 = ptrtoint ptr %arrayidx32.3 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx32.3, align 1
  %arrayidx33.3 = getelementptr i8, ptr %buf, i32 4
  %34 = ptrtoint ptr %arrayidx33.3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx33.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %33)
  %cmp36.not.3 = icmp ult i8 %35, %33
  %sub45.3 = xor i8 %33, -1
  %36 = sub i8 0, %33
  %sub.3.sink.p = select i1 %cmp36.not.3, i8 %sub45.3, i8 %36
  %sub.3.sink = add i8 %35, %sub.3.sink.p
  %37 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 76, i32 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %sub.3.sink, ptr %37, align 1
  %39 = ptrtoint ptr %arrayidx33.3 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx33.3, align 1
  %41 = ptrtoint ptr %arrayidx32.3 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx32.3, align 1
  %arrayidx32.4 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 77, i32 5
  %42 = ptrtoint ptr %arrayidx32.4 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx32.4, align 1
  %arrayidx33.4 = getelementptr i8, ptr %buf, i32 5
  %44 = ptrtoint ptr %arrayidx33.4 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx33.4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %43)
  %cmp36.not.4 = icmp ult i8 %45, %43
  %sub45.4 = xor i8 %43, -1
  %46 = sub i8 0, %43
  %sub.4.sink.p = select i1 %cmp36.not.4, i8 %sub45.4, i8 %46
  %sub.4.sink = add i8 %45, %sub.4.sink.p
  %47 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 76, i32 5
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %sub.4.sink, ptr %47, align 1
  %49 = ptrtoint ptr %arrayidx33.4 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx33.4, align 1
  %51 = ptrtoint ptr %arrayidx32.4 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx32.4, align 1
  %arrayidx32.5 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 77, i32 6
  %52 = ptrtoint ptr %arrayidx32.5 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx32.5, align 1
  %arrayidx33.5 = getelementptr i8, ptr %buf, i32 6
  %54 = ptrtoint ptr %arrayidx33.5 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx33.5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %55, i8 %53)
  %cmp36.not.5 = icmp ult i8 %55, %53
  %sub45.5 = xor i8 %53, -1
  %56 = sub i8 0, %53
  %sub.5.sink.p = select i1 %cmp36.not.5, i8 %sub45.5, i8 %56
  %sub.5.sink = add i8 %55, %sub.5.sink.p
  %57 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 76, i32 6
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %sub.5.sink, ptr %57, align 1
  %59 = ptrtoint ptr %arrayidx33.5 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx33.5, align 1
  %61 = ptrtoint ptr %arrayidx32.5 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %arrayidx32.5, align 1
  %arrayidx32.6 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 77, i32 7
  %62 = ptrtoint ptr %arrayidx32.6 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx32.6, align 1
  %arrayidx33.6 = getelementptr i8, ptr %buf, i32 7
  %64 = ptrtoint ptr %arrayidx33.6 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx33.6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %65, i8 %63)
  %cmp36.not.6 = icmp ult i8 %65, %63
  %sub45.6 = xor i8 %63, -1
  %66 = sub i8 0, %63
  %sub.6.sink.p = select i1 %cmp36.not.6, i8 %sub45.6, i8 %66
  %sub.6.sink = add i8 %65, %sub.6.sink.p
  %67 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 76, i32 7
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %sub.6.sink, ptr %67, align 1
  %69 = ptrtoint ptr %arrayidx33.6 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx33.6, align 1
  %71 = ptrtoint ptr %arrayidx32.6 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %arrayidx32.6, align 1
  %arrayidx55 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 90, i32 7
  %72 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx55, align 4
  %inc56 = add i32 %73, 1
  store i32 %inc56, ptr %arrayidx55, align 4
  tail call fastcc void @rtw_coex_wl_ccklock_action(ptr noundef %rtwdev)
  %bt_status.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 13
  %74 = ptrtoint ptr %bt_status.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %bt_status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %75)
  %cmp.i = icmp eq i8 %75, 2
  br i1 %cmp.i, label %for.body.preheader.if.then.i_crit_edge, label %lor.lhs.false.i

for.body.preheader.if.then.i_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %for.body.preheader
  %bt_setup_link.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 17
  %76 = ptrtoint ptr %bt_setup_link.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %bt_setup_link.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i = icmp eq i8 %77, 0
  br i1 %tobool.not.i, label %if.end.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %for.body.preheader.if.then.i_crit_edge
  %wl_cck_lock.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 42
  %78 = ptrtoint ptr %wl_cck_lock.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %wl_cck_lock.i, align 2
  br label %rtw_coex_wl_ccklock_detect.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %wl_rx_rate.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 78
  %79 = ptrtoint ptr %wl_rx_rate.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %wl_rx_rate.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %80)
  %cmp5.i = icmp ult i8 %80, 2
  br i1 %cmp5.i, label %if.end.i.if.then11.i_crit_edge, label %lor.lhs.false7.i

if.end.i.if.then11.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i

lor.lhs.false7.i:                                 ; preds = %if.end.i
  %wl_rts_rx_rate.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 80
  %81 = ptrtoint ptr %wl_rts_rx_rate.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %wl_rts_rx_rate.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %82)
  %cmp9.i = icmp ult i8 %82, 2
  br i1 %cmp9.i, label %lor.lhs.false7.i.if.then11.i_crit_edge, label %lor.lhs.false7.i.if.end12.i_crit_edge

lor.lhs.false7.i.if.end12.i_crit_edge:            ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

lor.lhs.false7.i.if.then11.i_crit_edge:           ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i

if.then11.i:                                      ; preds = %lor.lhs.false7.i.if.then11.i_crit_edge, %if.end.i.if.then11.i_crit_edge
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %lor.lhs.false7.i.if.end12.i_crit_edge
  %is_cck_lock_rate.0.off0.i = phi i1 [ true, %if.then11.i ], [ false, %lor.lhs.false7.i.if.end12.i_crit_edge ]
  %wl_connected.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 40
  %83 = ptrtoint ptr %wl_connected.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %wl_connected.i, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool13.not.i = icmp eq i8 %84, 0
  br i1 %tobool13.not.i, label %if.end12.i.if.else46.i_crit_edge, label %land.lhs.true.i

if.end12.i.if.else46.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else46.i

land.lhs.true.i:                                  ; preds = %if.end12.i
  %wl_gl_busy.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 35
  %85 = ptrtoint ptr %wl_gl_busy.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %wl_gl_busy.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool15.not.i = icmp eq i8 %86, 0
  br i1 %tobool15.not.i, label %land.lhs.true.i.if.else46.i_crit_edge, label %land.lhs.true17.i

land.lhs.true.i.if.else46.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else46.i

land.lhs.true17.i:                                ; preds = %land.lhs.true.i
  %arrayidx.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 5, i32 3
  %87 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.i, align 1
  %89 = zext i8 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.280)
  switch i8 %88, label %land.lhs.true17.i.if.else46.i_crit_edge [
    i8 3, label %land.lhs.true17.i.land.lhs.true25.i_crit_edge
    i8 0, label %land.lhs.true17.i.land.lhs.true25.i_crit_edge87
  ]

land.lhs.true17.i.land.lhs.true25.i_crit_edge87:  ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true25.i

land.lhs.true17.i.land.lhs.true25.i_crit_edge:    ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true25.i

land.lhs.true17.i.if.else46.i_crit_edge:          ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else46.i

land.lhs.true25.i:                                ; preds = %land.lhs.true17.i.land.lhs.true25.i_crit_edge, %land.lhs.true17.i.land.lhs.true25.i_crit_edge87
  %.off.i = add i8 %75, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 3
  br i1 %switch.i, label %if.then40.i, label %land.lhs.true25.i.if.else46.i_crit_edge

land.lhs.true25.i.if.else46.i_crit_edge:          ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else46.i

if.then40.i:                                      ; preds = %land.lhs.true25.i
  %wl_cck_lock43.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 42
  br i1 %is_cck_lock_rate.0.off0.i, label %if.then42.i, label %if.else.i

if.then42.i:                                      ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #7
  %90 = ptrtoint ptr %wl_cck_lock43.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %wl_cck_lock43.i, align 2
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.225) #5
  br label %if.end48.i

if.else.i:                                        ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #7
  %91 = ptrtoint ptr %wl_cck_lock43.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %wl_cck_lock43.i, align 2
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.226) #5
  br label %if.end48.i

if.else46.i:                                      ; preds = %land.lhs.true25.i.if.else46.i_crit_edge, %land.lhs.true17.i.if.else46.i_crit_edge, %land.lhs.true.i.if.else46.i_crit_edge, %if.end12.i.if.else46.i_crit_edge
  %wl_cck_lock47.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 42
  %92 = ptrtoint ptr %wl_cck_lock47.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %wl_cck_lock47.i, align 2
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.else46.i, %if.else.i, %if.then42.i
  %wl_cck_lock49.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 42
  %93 = ptrtoint ptr %wl_cck_lock49.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %wl_cck_lock49.i, align 2, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool50.not.i = icmp eq i8 %94, 0
  br i1 %tobool50.not.i, label %if.end48.i.if.end56.i_crit_edge, label %land.lhs.true52.i

if.end48.i.if.end56.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.i

land.lhs.true52.i:                                ; preds = %if.end48.i
  %wl_cck_lock_pre53.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 43
  %95 = ptrtoint ptr %wl_cck_lock_pre53.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %wl_cck_lock_pre53.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool54.not.i = icmp eq i8 %96, 0
  br i1 %tobool54.not.i, label %if.then55.i, label %land.lhs.true52.i.if.end56.i_crit_edge

land.lhs.true52.i.if.end56.i_crit_edge:           ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.i

if.then55.i:                                      ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #7
  %97 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rtwdev, align 8
  %wl_ccklock_work.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 19
  tail call void @ieee80211_queue_delayed_work(ptr noundef %98, ptr noundef %wl_ccklock_work.i, i32 noundef 300) #5
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then55.i, %land.lhs.true52.i.if.end56.i_crit_edge, %if.end48.i.if.end56.i_crit_edge
  %99 = ptrtoint ptr %wl_cck_lock49.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %wl_cck_lock49.i, align 2, !range !601
  br label %rtw_coex_wl_ccklock_detect.exit

rtw_coex_wl_ccklock_detect.exit:                  ; preds = %if.end56.i, %if.then.i
  %.sink.i = phi i8 [ %100, %if.end56.i ], [ 0, %if.then.i ]
  %wl_cck_lock_pre59.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 43
  %101 = ptrtoint ptr %wl_cck_lock_pre59.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %.sink.i, ptr %wl_cck_lock_pre59.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %rtw_coex_wl_ccklock_detect.exit, %if.end24.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_coex_wl_ccklock_action(ptr noundef %rtwdev) unnamed_addr #0 align 64 {
entry:
  %para.i67 = alloca [6 x i8], align 1
  %para.i63 = alloca [6 x i8], align 1
  %para.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %manual_control = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 8
  %0 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %manual_control, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %stop_dm = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 4
  %2 = ptrtoint ptr %stop_dm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stop_dm, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tdma_timer_base = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 60
  %4 = ptrtoint ptr %tdma_timer_base to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tdma_timer_base, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp = icmp eq i8 %5, 3
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %wl_slot_extend = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 41
  %6 = ptrtoint ptr %wl_slot_extend to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %wl_slot_extend, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end7_crit_edge, label %if.then6

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.222) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %para.i) #5
  %8 = getelementptr inbounds i8, ptr %para.i, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 0, ptr %8, align 1
  %10 = ptrtoint ptr %para.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 12, ptr %para.i, align 1
  %arrayidx2.i = getelementptr inbounds [6 x i8], ptr %para.i, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %arrayidx2.i, align 1
  %arrayidx4.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 90, i32 6
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx4.i, align 4
  %13 = ptrtoint ptr %wl_slot_extend to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %wl_slot_extend, align 1
  call void @rtw_fw_bt_wifi_control(ptr noundef %rtwdev, i8 noundef zeroext 12, ptr noundef %arrayidx2.i) #5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %para.i) #5
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %wl_slot_extend8 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 41
  %14 = ptrtoint ptr %wl_slot_extend8 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %wl_slot_extend8, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool9.not = icmp eq i8 %15, 0
  br i1 %tobool9.not, label %land.lhs.true36, label %land.lhs.true11

land.lhs.true11:                                  ; preds = %if.end7
  %wl_force_lps_ctrl = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 34
  %16 = ptrtoint ptr %wl_force_lps_ctrl to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %wl_force_lps_ctrl, align 2, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool12.not = icmp eq i8 %17, 0
  br i1 %tobool12.not, label %land.lhs.true11.cleanup_crit_edge, label %land.lhs.true14

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true14:                                  ; preds = %land.lhs.true11
  %wl_cck_lock_ever = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 44
  %18 = ptrtoint ptr %wl_cck_lock_ever to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %wl_cck_lock_ever, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool15.not = icmp eq i8 %19, 0
  br i1 %tobool15.not, label %if.then16, label %land.lhs.true14.cleanup_crit_edge

land.lhs.true14.cleanup_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then16:                                        ; preds = %land.lhs.true14
  %arrayidx = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 76, i32 7
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %21)
  %cmp18 = icmp ult i8 %21, 6
  %arrayidx21 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 90, i32 6
  br i1 %cmp18, label %if.then20, label %if.then16.if.end24_crit_edge

if.then16.if.end24_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx21, align 4
  %inc = add i32 %23, 1
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.then16.if.end24_crit_edge
  %.sink = phi i32 [ %inc, %if.then20 ], [ 0, %if.then16.if.end24_crit_edge ]
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink, ptr %arrayidx21, align 4
  %arrayidx26 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 90, i32 6
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.223, i32 noundef %.sink) #5
  %25 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %26)
  %cmp29 = icmp eq i32 %26, 7
  br i1 %cmp29, label %if.then31, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.222) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %para.i63) #5
  %27 = getelementptr inbounds i8, ptr %para.i63, i32 2
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 0, ptr %27, align 1
  %29 = ptrtoint ptr %para.i63 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 12, ptr %para.i63, align 1
  %arrayidx2.i64 = getelementptr inbounds [6 x i8], ptr %para.i63, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx2.i64 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %arrayidx2.i64, align 1
  %31 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %arrayidx26, align 4
  %32 = ptrtoint ptr %wl_slot_extend8 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %wl_slot_extend8, align 1
  call void @rtw_fw_bt_wifi_control(ptr noundef %rtwdev, i8 noundef zeroext 12, ptr noundef %arrayidx2.i64) #5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %para.i63) #5
  br label %cleanup

land.lhs.true36:                                  ; preds = %if.end7
  %wl_cck_lock = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 42
  %33 = ptrtoint ptr %wl_cck_lock to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %wl_cck_lock, align 2, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool37.not = icmp eq i8 %34, 0
  br i1 %tobool37.not, label %land.lhs.true36.cleanup_crit_edge, label %if.then39

land.lhs.true36.cleanup_crit_edge:                ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then39:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.224) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %para.i67) #5
  %35 = getelementptr inbounds i8, ptr %para.i67, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 0, ptr %35, align 1
  %37 = ptrtoint ptr %para.i67 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 12, ptr %para.i67, align 1
  %arrayidx2.i68 = getelementptr inbounds [6 x i8], ptr %para.i67, i32 0, i32 1
  %38 = ptrtoint ptr %arrayidx2.i68 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %arrayidx2.i68, align 1
  %39 = ptrtoint ptr %wl_slot_extend8 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %wl_slot_extend8, align 1
  call void @rtw_fw_bt_wifi_control(ptr noundef %rtwdev, i8 noundef zeroext 12, ptr noundef %arrayidx2.i68) #5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %para.i67) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %land.lhs.true36.cleanup_crit_edge, %if.then31, %if.end24.cleanup_crit_edge, %land.lhs.true14.cleanup_crit_edge, %land.lhs.true11.cleanup_crit_edge, %if.then6, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_coex_wl_status_change_notify(ptr noundef %rtwdev, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @rtw_coex_run_coex(ptr noundef %rtwdev, i8 noundef zeroext 14)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_coex_bt_relink_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -17776
  %mutex = getelementptr i8, ptr %work, i32 800
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %bt_setup_link = getelementptr i8, ptr %work, i32 -355
  %0 = ptrtoint ptr %bt_setup_link to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bt_setup_link, align 1
  tail call fastcc void @rtw_coex_run_coex(ptr noundef %add.ptr, i8 noundef zeroext 14)
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_coex_bt_reenable_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %work, i32 700
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %bt_reenable = getelementptr i8, ptr %work, i32 -449
  %0 = ptrtoint ptr %bt_reenable to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bt_reenable, align 1
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_coex_defreeze_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -17976
  %mutex = getelementptr i8, ptr %work, i32 600
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %freeze = getelementptr i8, ptr %work, i32 -578
  %0 = ptrtoint ptr %freeze to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %freeze, align 2
  %wl_hi_pri_task1 = getelementptr i8, ptr %work, i32 -540
  %1 = ptrtoint ptr %wl_hi_pri_task1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %wl_hi_pri_task1, align 4
  tail call fastcc void @rtw_coex_run_coex(ptr noundef %add.ptr, i8 noundef zeroext 14)
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_coex_wl_remain_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -18076
  %mutex = getelementptr i8, ptr %work, i32 500
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %flags = getelementptr i8, ptr %work, i32 1340
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %wl_gl_busy = getelementptr i8, ptr %work, i32 -637
  %2 = trunc i32 %1 to i8
  %3 = lshr i8 %2, 7
  %4 = ptrtoint ptr %wl_gl_busy to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %wl_gl_busy, align 1
  tail call fastcc void @rtw_coex_run_coex(ptr noundef %add.ptr, i8 noundef zeroext 14)
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_coex_bt_remain_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -18176
  %mutex = getelementptr i8, ptr %work, i32 400
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %bt_inq_page = getelementptr i8, ptr %work, i32 -768
  %0 = ptrtoint ptr %bt_inq_page to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bt_inq_page, align 4, !range !601
  %bt_inq_remain = getelementptr i8, ptr %work, i32 -767
  %2 = ptrtoint ptr %bt_inq_remain to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %bt_inq_remain, align 1
  tail call fastcc void @rtw_coex_run_coex(ptr noundef %add.ptr, i8 noundef zeroext 15)
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_coex_wl_connecting_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -18276
  %mutex = getelementptr i8, ptr %work, i32 300
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %wl_connecting = getelementptr i8, ptr %work, i32 -827
  %0 = ptrtoint ptr %wl_connecting to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %wl_connecting, align 1
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %add.ptr, i32 noundef 64, ptr noundef nonnull @.str.38) #5
  tail call fastcc void @rtw_coex_run_coex(ptr noundef %add.ptr, i8 noundef zeroext 14)
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_coex_bt_multi_link_remain_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %work, i32 200
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %bt_multi_link_remain = getelementptr i8, ptr %work, i32 -952
  %0 = ptrtoint ptr %bt_multi_link_remain to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bt_multi_link_remain, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_coex_wl_ccklock_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr i8, ptr %work, i32 100
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %wl_cck_lock = getelementptr i8, ptr %work, i32 -1030
  %0 = ptrtoint ptr %wl_cck_lock to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %wl_cck_lock, align 2
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_coex_display_coex_info(ptr noundef %rtwdev, ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  %addr_info.i = alloca [80 x i8], align 1
  %val_info.i = alloca [80 x i8], align 1
  %req.i658 = alloca %struct.rtw_coex_info_req, align 1
  %req.i650 = alloca %struct.rtw_coex_info_req, align 1
  %req.i639 = alloca %struct.rtw_coex_info_req, align 1
  %req.i631 = alloca %struct.rtw_coex_info_req, align 1
  %req.i = alloca %struct.rtw_coex_info_req, align 1
  %val.i621 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %vif_iter_data = alloca %struct.rtw_coex_vif_stat_iter_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  %stat = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vif_iter_data) #5
  %2 = ptrtoint ptr %vif_iter_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %vif_iter_data, align 4, !annotation !602
  %3 = getelementptr inbounds %struct.rtw_coex_vif_stat_iter_data, ptr %vif_iter_data, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !602
  %reason7 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 3
  %5 = ptrtoint ptr %reason7 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reason7, align 1
  %scbd_support.i = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 68
  %7 = ptrtoint ptr %scbd_support.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %scbd_support.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %entry.rtw_coex_read_scbd.exit_crit_edge, label %if.end.i

entry.rtw_coex_read_scbd.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_read_scbd.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %9 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hci.i.i, align 8
  %read16.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %12(ptr noundef %rtwdev, i32 noundef 170) #5
  %13 = and i16 %call.i.i, 32767
  %phi.cast = zext i16 %13 to i32
  br label %rtw_coex_read_scbd.exit

rtw_coex_read_scbd.exit:                          ; preds = %if.end.i, %entry.rtw_coex_read_scbd.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.cast, %if.end.i ], [ 0, %entry.rtw_coex_read_scbd.exit_crit_edge ]
  %score_board = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 87
  %14 = ptrtoint ptr %score_board to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %score_board, align 2
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %16 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i, align 8
  %read32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %19(ptr noundef %rtwdev, i32 noundef 1728) #5
  %20 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i, align 8
  %read32.i598 = getelementptr inbounds %struct.rtw_hci_ops, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %read32.i598 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32.i598, align 4
  %call.i599 = tail call i32 %23(ptr noundef %rtwdev, i32 noundef 1732) #5
  %24 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i, align 8
  %read32.i601 = getelementptr inbounds %struct.rtw_hci_ops, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %read32.i601 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read32.i601, align 4
  %call.i602 = tail call i32 %27(ptr noundef %rtwdev, i32 noundef 1736) #5
  %28 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hci.i, align 8
  %read32.i604 = getelementptr inbounds %struct.rtw_hci_ops, ptr %29, i32 0, i32 13
  %30 = ptrtoint ptr %read32.i604 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read32.i604, align 4
  %call.i605 = tail call i32 %31(ptr noundef %rtwdev, i32 noundef 1740) #5
  %32 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i, align 8
  %read8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %read8.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read8.i, align 4
  %call.i607 = tail call zeroext i8 %35(ptr noundef %rtwdev, i32 noundef 1912) #5
  %36 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i, align 8
  %read32.i609 = getelementptr inbounds %struct.rtw_hci_ops, ptr %37, i32 0, i32 13
  %38 = ptrtoint ptr %read32.i609 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read32.i609, align 4
  %call.i610 = tail call i32 %39(ptr noundef %rtwdev, i32 noundef 1904) #5
  %40 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hci.i, align 8
  %read32.i612 = getelementptr inbounds %struct.rtw_hci_ops, ptr %41, i32 0, i32 13
  %42 = ptrtoint ptr %read32.i612 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read32.i612, align 4
  %call.i613 = tail call i32 %43(ptr noundef %rtwdev, i32 noundef 1908) #5
  %44 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hci.i, align 8
  %write8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %45, i32 0, i32 14
  %46 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write8.i, align 4
  tail call void %47(ptr noundef %rtwdev, i32 noundef 1902, i8 noundef zeroext 12) #5
  %and = and i32 %call.i610, 65535
  %hi_pri_tx = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 50
  %48 = ptrtoint ptr %hi_pri_tx to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and, ptr %hi_pri_tx, align 4
  %shr44 = lshr i32 %call.i610, 16
  %hi_pri_rx = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 51
  %49 = ptrtoint ptr %hi_pri_rx to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %shr44, ptr %hi_pri_rx, align 4
  %and61 = and i32 %call.i613, 65535
  %lo_pri_tx = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 52
  %50 = ptrtoint ptr %lo_pri_tx to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and61, ptr %lo_pri_tx, align 4
  %shr80 = lshr i32 %call.i613, 16
  %lo_pri_rx = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 53
  %51 = ptrtoint ptr %lo_pri_rx to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %shr80, ptr %lo_pri_rx, align 4
  %52 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hci.i, align 8
  %read8.i616 = getelementptr inbounds %struct.rtw_hci_ops, ptr %53, i32 0, i32 11
  %54 = ptrtoint ptr %read8.i616 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read8.i616, align 4
  %call.i617 = tail call zeroext i8 %55(ptr noundef %rtwdev, i32 noundef 115) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %56 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %val.i, align 4, !annotation !602
  %call.i618 = call zeroext i1 @ltecoex_read_reg(ptr noundef %rtwdev, i16 noundef zeroext 56, ptr noundef nonnull %val.i) #5
  br i1 %call.i618, label %if.end.i619, label %do.end.i

do.end.i:                                         ; preds = %rtw_coex_read_scbd.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %57 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str) #8
  br label %rtw_coex_read_indirect_reg.exit

if.end.i619:                                      ; preds = %rtw_coex_read_scbd.exit
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val.i, align 4
  br label %rtw_coex_read_indirect_reg.exit

rtw_coex_read_indirect_reg.exit:                  ; preds = %if.end.i619, %do.end.i
  %retval.0.i620 = phi i32 [ %60, %if.end.i619 ], [ 0, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i621) #5
  %61 = ptrtoint ptr %val.i621 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %val.i621, align 4, !annotation !602
  %call.i622 = call zeroext i1 @ltecoex_read_reg(ptr noundef %rtwdev, i16 noundef zeroext 84, ptr noundef nonnull %val.i621) #5
  br i1 %call.i622, label %if.end.i625, label %do.end.i624

do.end.i624:                                      ; preds = %rtw_coex_read_indirect_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i623 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %62 = ptrtoint ptr %dev.i623 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i623, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str) #8
  br label %rtw_coex_read_indirect_reg.exit627

if.end.i625:                                      ; preds = %rtw_coex_read_indirect_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %val.i621 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %val.i621, align 4
  br label %rtw_coex_read_indirect_reg.exit627

rtw_coex_read_indirect_reg.exit627:               ; preds = %if.end.i625, %do.end.i624
  %retval.0.i626 = phi i32 [ %65, %if.end.i625 ], [ 0, %do.end.i624 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i621) #5
  %66 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %stat, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not = icmp eq i8 %67, 0
  br i1 %tobool.not, label %land.lhs.true, label %rtw_coex_read_indirect_reg.exit627.if.end94_crit_edge

rtw_coex_read_indirect_reg.exit627.if.end94_crit_edge: ; preds = %rtw_coex_read_indirect_reg.exit627
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

land.lhs.true:                                    ; preds = %rtw_coex_read_indirect_reg.exit627
  %bt_mailbox_reply = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 29
  %68 = ptrtoint ptr %bt_mailbox_reply to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %bt_mailbox_reply, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool84.not = icmp eq i8 %69, 0
  br i1 %tobool84.not, label %if.then, label %land.lhs.true.if.end94_crit_edge

land.lhs.true.if.end94_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %req.i) #5
  %70 = call ptr @memset(ptr %req.i, i32 0, i32 5)
  %op_code.i = getelementptr inbounds %struct.rtw_coex_info_req, ptr %req.i, i32 0, i32 1
  %71 = ptrtoint ptr %op_code.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 43, ptr %op_code.i, align 1
  %call.i628 = call fastcc ptr @rtw_coex_info_request(ptr noundef %rtwdev, ptr noundef nonnull %req.i) #5
  %tobool.not.i629 = icmp eq ptr %call.i628, null
  br i1 %tobool.not.i629, label %if.then.rtw_coex_get_bt_supported_version.exit_crit_edge, label %if.end.i630

if.then.rtw_coex_get_bt_supported_version.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_get_bt_supported_version.exit

if.end.i630:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %bt_supported_version = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 48
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i628, i32 0, i32 3
  %72 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cb.i.i, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i628, i32 0, i32 19
  %74 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %75, i32 %73
  %payload.i.i = getelementptr inbounds %struct.rtw_c2h_cmd, ptr %add.ptr.i.i, i32 0, i32 2
  %76 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %payload.i.i, align 8
  %78 = trunc i64 %77 to i32
  %79 = lshr i32 %78, 24
  %80 = ptrtoint ptr %bt_supported_version to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %bt_supported_version, align 4
  call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i628, i32 noundef 1) #5
  br label %rtw_coex_get_bt_supported_version.exit

rtw_coex_get_bt_supported_version.exit:           ; preds = %if.end.i630, %if.then.rtw_coex_get_bt_supported_version.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %req.i) #5
  %patch_ver = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 54
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %req.i631) #5
  %81 = call ptr @memset(ptr %req.i631, i32 0, i32 5)
  %call.i632 = call fastcc ptr @rtw_coex_info_request(ptr noundef %rtwdev, ptr noundef nonnull %req.i631) #5
  %tobool.not.i633 = icmp eq ptr %call.i632, null
  br i1 %tobool.not.i633, label %rtw_coex_get_bt_supported_version.exit.rtw_coex_get_bt_patch_version.exit_crit_edge, label %if.end.i638

rtw_coex_get_bt_supported_version.exit.rtw_coex_get_bt_patch_version.exit_crit_edge: ; preds = %rtw_coex_get_bt_supported_version.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_get_bt_patch_version.exit

if.end.i638:                                      ; preds = %rtw_coex_get_bt_supported_version.exit
  call void @__sanitizer_cov_trace_pc() #7
  %cb.i.i634 = getelementptr inbounds %struct.sk_buff, ptr %call.i632, i32 0, i32 3
  %82 = ptrtoint ptr %cb.i.i634 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cb.i.i634, align 8
  %data.i.i635 = getelementptr inbounds %struct.sk_buff, ptr %call.i632, i32 0, i32 19
  %84 = ptrtoint ptr %data.i.i635 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data.i.i635, align 4
  %add.ptr.i.i636 = getelementptr i8, ptr %85, i32 %83
  %payload.i.i637 = getelementptr inbounds %struct.rtw_c2h_cmd, ptr %add.ptr.i.i636, i32 0, i32 2
  %86 = ptrtoint ptr %payload.i.i637 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %payload.i.i637, align 8
  %88 = and i64 %87, 1099511627520
  %89 = call i64 @llvm.bswap.i64(i64 %88) #5
  %div.i1.i = lshr exact i64 %89, 24
  %conv.i = trunc i64 %div.i1.i to i32
  %90 = ptrtoint ptr %patch_ver to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %conv.i, ptr %patch_ver, align 4
  call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i632, i32 noundef 1) #5
  br label %rtw_coex_get_bt_patch_version.exit

rtw_coex_get_bt_patch_version.exit:               ; preds = %if.end.i638, %rtw_coex_get_bt_supported_version.exit.rtw_coex_get_bt_patch_version.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %req.i631) #5
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %req.i639) #5
  %91 = call ptr @memset(ptr %req.i639, i32 0, i32 5)
  %op_code.i640 = getelementptr inbounds %struct.rtw_coex_info_req, ptr %req.i639, i32 0, i32 1
  %92 = ptrtoint ptr %op_code.i640 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 42, ptr %op_code.i640, align 1
  %call.i641 = call fastcc ptr @rtw_coex_info_request(ptr noundef %rtwdev, ptr noundef nonnull %req.i639) #5
  %tobool.not.i642 = icmp eq ptr %call.i641, null
  br i1 %tobool.not.i642, label %rtw_coex_get_bt_patch_version.exit.rtw_coex_get_bt_supported_feature.exit_crit_edge, label %if.end.i649

rtw_coex_get_bt_patch_version.exit.rtw_coex_get_bt_supported_feature.exit_crit_edge: ; preds = %rtw_coex_get_bt_patch_version.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_get_bt_supported_feature.exit

if.end.i649:                                      ; preds = %rtw_coex_get_bt_patch_version.exit
  call void @__sanitizer_cov_trace_pc() #7
  %bt_supported_feature = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 49
  %cb.i.i643 = getelementptr inbounds %struct.sk_buff, ptr %call.i641, i32 0, i32 3
  %93 = ptrtoint ptr %cb.i.i643 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %cb.i.i643, align 8
  %data.i.i644 = getelementptr inbounds %struct.sk_buff, ptr %call.i641, i32 0, i32 19
  %95 = ptrtoint ptr %data.i.i644 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data.i.i644, align 4
  %add.ptr.i.i645 = getelementptr i8, ptr %96, i32 %94
  %payload.i.i646 = getelementptr inbounds %struct.rtw_c2h_cmd, ptr %add.ptr.i.i645, i32 0, i32 2
  %97 = ptrtoint ptr %payload.i.i646 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %payload.i.i646, align 8
  %99 = and i64 %98, 1099494850560
  %100 = call i64 @llvm.bswap.i64(i64 %99) #5
  %div.i1.i647 = lshr exact i64 %100, 24
  %conv.i648 = trunc i64 %div.i1.i647 to i32
  %101 = ptrtoint ptr %bt_supported_feature to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %conv.i648, ptr %bt_supported_feature, align 4
  call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i641, i32 noundef 1) #5
  br label %rtw_coex_get_bt_supported_feature.exit

rtw_coex_get_bt_supported_feature.exit:           ; preds = %if.end.i649, %rtw_coex_get_bt_patch_version.exit.rtw_coex_get_bt_supported_feature.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %req.i639) #5
  %bt_reg_vendor_ae = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 55
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %req.i650) #5
  %102 = ptrtoint ptr %req.i650 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %req.i650, align 1
  %op_code.i651 = getelementptr inbounds %struct.rtw_coex_info_req, ptr %req.i650, i32 0, i32 1
  %103 = ptrtoint ptr %op_code.i651 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 17, ptr %op_code.i651, align 1
  %para1.i = getelementptr inbounds %struct.rtw_coex_info_req, ptr %req.i650, i32 0, i32 2
  %104 = ptrtoint ptr %para1.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 3, ptr %para1.i, align 1
  %para2.i = getelementptr inbounds %struct.rtw_coex_info_req, ptr %req.i650, i32 0, i32 3
  %105 = ptrtoint ptr %para2.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 -82, ptr %para2.i, align 1
  %para3.i = getelementptr inbounds %struct.rtw_coex_info_req, ptr %req.i650, i32 0, i32 4
  %106 = ptrtoint ptr %para3.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %para3.i, align 1
  %call3.i = call fastcc ptr @rtw_coex_info_request(ptr noundef %rtwdev, ptr noundef nonnull %req.i650) #5
  %tobool.not.i652 = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i652, label %if.then.i, label %if.end.i657

if.then.i:                                        ; preds = %rtw_coex_get_bt_supported_feature.exit
  call void @__sanitizer_cov_trace_pc() #7
  %107 = ptrtoint ptr %bt_reg_vendor_ae to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 -5398, ptr %bt_reg_vendor_ae, align 2
  br label %rtw_coex_get_bt_reg.exit

if.end.i657:                                      ; preds = %rtw_coex_get_bt_supported_feature.exit
  call void @__sanitizer_cov_trace_pc() #7
  %cb.i.i653 = getelementptr inbounds %struct.sk_buff, ptr %call3.i, i32 0, i32 3
  %108 = ptrtoint ptr %cb.i.i653 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %cb.i.i653, align 8
  %data.i.i654 = getelementptr inbounds %struct.sk_buff, ptr %call3.i, i32 0, i32 19
  %110 = ptrtoint ptr %data.i.i654 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %data.i.i654, align 4
  %add.ptr.i.i655 = getelementptr i8, ptr %111, i32 %109
  %payload.i.i656 = getelementptr inbounds %struct.rtw_c2h_cmd, ptr %add.ptr.i.i655, i32 0, i32 2
  %112 = ptrtoint ptr %payload.i.i656 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %payload.i.i656, align 8
  %114 = and i64 %113, 1099494850560
  %115 = call i64 @llvm.bswap.i64(i64 %114) #5
  %div.i3.i = lshr exact i64 %115, 24
  %conv6.i = trunc i64 %div.i3.i to i16
  %116 = ptrtoint ptr %bt_reg_vendor_ae to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %conv6.i, ptr %bt_reg_vendor_ae, align 2
  call void @__dev_kfree_skb_any(ptr noundef nonnull %call3.i, i32 noundef 1) #5
  br label %rtw_coex_get_bt_reg.exit

rtw_coex_get_bt_reg.exit:                         ; preds = %if.end.i657, %if.then.i
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %req.i650) #5
  %bt_reg_vendor_ac = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 56
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %req.i658) #5
  %117 = ptrtoint ptr %req.i658 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %req.i658, align 1
  %op_code.i659 = getelementptr inbounds %struct.rtw_coex_info_req, ptr %req.i658, i32 0, i32 1
  %118 = ptrtoint ptr %op_code.i659 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 17, ptr %op_code.i659, align 1
  %para1.i660 = getelementptr inbounds %struct.rtw_coex_info_req, ptr %req.i658, i32 0, i32 2
  %119 = ptrtoint ptr %para1.i660 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 3, ptr %para1.i660, align 1
  %para2.i661 = getelementptr inbounds %struct.rtw_coex_info_req, ptr %req.i658, i32 0, i32 3
  %120 = ptrtoint ptr %para2.i661 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 -84, ptr %para2.i661, align 1
  %para3.i662 = getelementptr inbounds %struct.rtw_coex_info_req, ptr %req.i658, i32 0, i32 4
  %121 = ptrtoint ptr %para3.i662 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %para3.i662, align 1
  %call3.i663 = call fastcc ptr @rtw_coex_info_request(ptr noundef %rtwdev, ptr noundef nonnull %req.i658) #5
  %tobool.not.i664 = icmp eq ptr %call3.i663, null
  br i1 %tobool.not.i664, label %if.then.i665, label %if.end.i672

if.then.i665:                                     ; preds = %rtw_coex_get_bt_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %122 = ptrtoint ptr %bt_reg_vendor_ac to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 -5398, ptr %bt_reg_vendor_ac, align 2
  br label %rtw_coex_get_bt_reg.exit673

if.end.i672:                                      ; preds = %rtw_coex_get_bt_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %cb.i.i666 = getelementptr inbounds %struct.sk_buff, ptr %call3.i663, i32 0, i32 3
  %123 = ptrtoint ptr %cb.i.i666 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %cb.i.i666, align 8
  %data.i.i667 = getelementptr inbounds %struct.sk_buff, ptr %call3.i663, i32 0, i32 19
  %125 = ptrtoint ptr %data.i.i667 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %data.i.i667, align 4
  %add.ptr.i.i668 = getelementptr i8, ptr %126, i32 %124
  %payload.i.i669 = getelementptr inbounds %struct.rtw_c2h_cmd, ptr %add.ptr.i.i668, i32 0, i32 2
  %127 = ptrtoint ptr %payload.i.i669 to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %payload.i.i669, align 8
  %129 = and i64 %128, 1099494850560
  %130 = call i64 @llvm.bswap.i64(i64 %129) #5
  %div.i3.i670 = lshr exact i64 %130, 24
  %conv6.i671 = trunc i64 %div.i3.i670 to i16
  %131 = ptrtoint ptr %bt_reg_vendor_ac to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %conv6.i671, ptr %bt_reg_vendor_ac, align 2
  call void @__dev_kfree_skb_any(ptr noundef nonnull %call3.i663, i32 noundef 1) #5
  br label %rtw_coex_get_bt_reg.exit673

rtw_coex_get_bt_reg.exit673:                      ; preds = %if.end.i672, %if.then.i665
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %req.i658) #5
  %132 = ptrtoint ptr %patch_ver to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %patch_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp.not = icmp eq i32 %133, 0
  br i1 %cmp.not, label %rtw_coex_get_bt_reg.exit673.if.end94_crit_edge, label %if.then92

rtw_coex_get_bt_reg.exit673.if.end94_crit_edge:   ; preds = %rtw_coex_get_bt_reg.exit673
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

if.then92:                                        ; preds = %rtw_coex_get_bt_reg.exit673
  call void @__sanitizer_cov_trace_pc() #7
  %134 = ptrtoint ptr %bt_mailbox_reply to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 1, ptr %bt_mailbox_reply, align 1
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %rtw_coex_get_bt_reg.exit673.if.end94_crit_edge, %land.lhs.true.if.end94_crit_edge, %rtw_coex_read_indirect_reg.exit627.if.end94_crit_edge
  call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rtw_coex_display_coex_info) #5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39) #5
  %id = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 1
  %135 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %id, align 4
  %conv95 = zext i8 %136 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.40, i32 noundef %conv95) #5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39) #5
  %manual_control = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 8
  %137 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %manual_control, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool96.not = icmp eq i8 %138, 0
  br i1 %tobool96.not, label %if.else, label %if.end94.if.end105.sink.split_crit_edge

if.end94.if.end105.sink.split_crit_edge:          ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end105.sink.split

if.else:                                          ; preds = %if.end94
  %stop_dm = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 4
  %139 = ptrtoint ptr %stop_dm to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %stop_dm, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool98.not = icmp eq i8 %140, 0
  br i1 %tobool98.not, label %if.else100, label %if.else.if.end105.sink.split_crit_edge

if.else.if.end105.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end105.sink.split

if.else100:                                       ; preds = %if.else
  %freeze = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 5
  %141 = ptrtoint ptr %freeze to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %freeze, align 2, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool101.not = icmp eq i8 %142, 0
  br i1 %tobool101.not, label %if.else100.if.end105_crit_edge, label %if.else100.if.end105.sink.split_crit_edge

if.else100.if.end105.sink.split_crit_edge:        ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end105.sink.split

if.else100.if.end105_crit_edge:                   ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end105

if.end105.sink.split:                             ; preds = %if.else100.if.end105.sink.split_crit_edge, %if.else.if.end105.sink.split_crit_edge, %if.end94.if.end105.sink.split_crit_edge
  %.str.43.sink = phi ptr [ @.str.41, %if.end94.if.end105.sink.split_crit_edge ], [ @.str.43, %if.else.if.end105.sink.split_crit_edge ], [ @.str.44, %if.else100.if.end105.sink.split_crit_edge ]
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.43.sink) #5
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.42) #5
  br label %if.end105

if.end105:                                        ; preds = %if.end105.sink.split, %if.else100.if.end105_crit_edge
  %share_ant = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %143 = ptrtoint ptr %share_ant to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %share_ant, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool106.not = icmp eq i8 %144, 0
  %cond = select i1 %tobool106.not, ptr @.str.48, ptr @.str.47
  %rfe_option = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 8
  %145 = ptrtoint ptr %rfe_option to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %rfe_option, align 2
  %conv108 = zext i8 %146 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef nonnull %cond, i32 noundef %conv108) #5
  %coex_para_ver = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 66
  %147 = ptrtoint ptr %coex_para_ver to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %coex_para_ver, align 4
  %bt_desired_ver = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 67
  %149 = ptrtoint ptr %bt_desired_ver to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %bt_desired_ver, align 4
  %conv109 = zext i8 %150 to i32
  %bt_supported_version110 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 48
  %151 = ptrtoint ptr %bt_supported_version110 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %bt_supported_version110, align 4
  %153 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %stat, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool112.not = icmp eq i8 %154, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %152, i32 %conv109)
  %cmp117.not = icmp ult i32 %152, %conv109
  %cond119 = select i1 %cmp117.not, ptr @.str.53, ptr @.str.52
  %cond120 = select i1 %tobool112.not, ptr %cond119, ptr @.str.51
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef %148, i32 noundef %conv109, i32 noundef %152, ptr noundef nonnull %cond120) #5
  %bt_slave = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 26
  %155 = ptrtoint ptr %bt_slave to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %bt_slave, align 2, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool121.not = icmp eq i8 %156, 0
  %cond123 = select i1 %tobool121.not, ptr @.str.57, ptr @.str.56
  %cnt_bt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 89
  %arrayidx = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 89, i32 8
  %157 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx, align 4
  %ignore_wl_act = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 2
  %159 = ptrtoint ptr %ignore_wl_act to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %ignore_wl_act, align 2, !range !601
  %161 = zext i8 %160 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, ptr noundef nonnull %cond123, i32 noundef %158, i32 noundef %161) #5
  %version = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 7, i32 4
  %162 = ptrtoint ptr %version to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %version, align 4
  %conv126 = zext i16 %163 to i32
  %sub_version = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 7, i32 5
  %164 = ptrtoint ptr %sub_version to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %sub_version, align 2
  %conv127 = zext i8 %165 to i32
  %patch_ver128 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 54
  %166 = ptrtoint ptr %patch_ver128 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %patch_ver128, align 4
  %wl_fw_desired_ver = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 95
  %168 = ptrtoint ptr %wl_fw_desired_ver to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %wl_fw_desired_ver, align 4
  %kt_ver = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 58
  %170 = ptrtoint ptr %kt_ver to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %kt_ver, align 1
  %conv129 = zext i8 %171 to i32
  %add = add nuw nsw i32 %conv129, 65
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef %conv126, i32 noundef %conv127, i32 noundef %167, i32 noundef %169, i32 noundef %add) #5
  %wl_ch_info = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 6
  %172 = ptrtoint ptr %wl_ch_info to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %wl_ch_info, align 4
  %conv131 = zext i8 %173 to i32
  %arrayidx133 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 6, i32 1
  %174 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx133, align 1
  %conv134 = zext i8 %175 to i32
  %arrayidx136 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 6, i32 2
  %176 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx136, align 2
  %conv137 = zext i8 %177 to i32
  %current_channel = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 7
  %178 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %current_channel, align 1
  %conv138 = zext i8 %179 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef %conv131, i32 noundef %conv134, i32 noundef %conv137, i32 noundef %conv138) #5
  call void @rtw_debugfs_get_simple_phy_info(ptr noundef %m) #5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39) #5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.62) #5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39) #5
  %bt_status = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 13
  %180 = ptrtoint ptr %bt_status to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %bt_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %cmp140 = icmp eq i8 %181, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %181)
  %cmp146 = icmp eq i8 %181, 1
  %cond148 = select i1 %cmp146, ptr @.str.66, ptr @.str.67
  %cond150 = select i1 %cmp140, ptr @.str.65, ptr %cond148
  %bt_rssi = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 57
  %182 = ptrtoint ptr %bt_rssi to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %bt_rssi, align 4
  %conv151 = sext i8 %183 to i32
  %sub = add nsw i32 %conv151, -100
  %184 = ptrtoint ptr %cnt_bt to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %cnt_bt, align 4
  %arrayidx155 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 89, i32 3
  %186 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx155, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, ptr noundef nonnull %cond150, i32 noundef %sub, i32 noundef %185, i32 noundef %187) #5
  %bt_a2dp_exist = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 11
  %188 = ptrtoint ptr %bt_a2dp_exist to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %bt_a2dp_exist, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool156.not = icmp eq i8 %189, 0
  br i1 %tobool156.not, label %if.end105.cond.end163_crit_edge, label %cond.true158

if.end105.cond.end163_crit_edge:                  ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end163

cond.true158:                                     ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  %bt_a2dp_sink = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 21
  %190 = ptrtoint ptr %bt_a2dp_sink to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %bt_a2dp_sink, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool159.not = icmp eq i8 %191, 0
  %cond161 = select i1 %tobool159.not, ptr @.str.71, ptr @.str.70
  br label %cond.end163

cond.end163:                                      ; preds = %cond.true158, %if.end105.cond.end163_crit_edge
  %cond164 = phi ptr [ %cond161, %cond.true158 ], [ @.str.72, %if.end105.cond.end163_crit_edge ]
  %bt_hfp_exist = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 10
  %192 = ptrtoint ptr %bt_hfp_exist to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %bt_hfp_exist, align 2, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %tobool165.not = icmp eq i8 %193, 0
  %cond167 = select i1 %tobool165.not, ptr @.str.72, ptr @.str.73
  %bt_hid_exist = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 12
  %194 = ptrtoint ptr %bt_hid_exist to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %bt_hid_exist, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %tobool168.not = icmp eq i8 %195, 0
  br i1 %tobool168.not, label %cond.end163.cond.end188_crit_edge, label %cond.true170

cond.end163.cond.end188_crit_edge:                ; preds = %cond.end163
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end188

cond.true170:                                     ; preds = %cond.end163
  %bt_ble_exist = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 9
  %196 = ptrtoint ptr %bt_ble_exist to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %bt_ble_exist, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool171.not = icmp eq i8 %197, 0
  br i1 %tobool171.not, label %cond.false174, label %cond.true170.cond.end188_crit_edge

cond.true170.cond.end188_crit_edge:               ; preds = %cond.true170
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end188

cond.false174:                                    ; preds = %cond.true170
  %bt_hid_slot = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 71
  %198 = ptrtoint ptr %bt_hid_slot to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %bt_hid_slot, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %199)
  %cmp176 = icmp ugt i8 %199, 1
  br i1 %cmp176, label %cond.false174.cond.end188_crit_edge, label %cond.false179

cond.false174.cond.end188_crit_edge:              ; preds = %cond.false174
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end188

cond.false179:                                    ; preds = %cond.false174
  call void @__sanitizer_cov_trace_pc() #7
  %bt_ble_hid_exist = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 28
  %200 = ptrtoint ptr %bt_ble_hid_exist to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %bt_ble_hid_exist, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %201)
  %tobool180.not = icmp eq i8 %201, 0
  %cond182 = select i1 %tobool180.not, ptr @.str.77, ptr @.str.76
  br label %cond.end188

cond.end188:                                      ; preds = %cond.false179, %cond.false174.cond.end188_crit_edge, %cond.true170.cond.end188_crit_edge, %cond.end163.cond.end188_crit_edge
  %cond189 = phi ptr [ @.str.74, %cond.true170.cond.end188_crit_edge ], [ %cond182, %cond.false179 ], [ @.str.75, %cond.false174.cond.end188_crit_edge ], [ @.str.72, %cond.end163.cond.end188_crit_edge ]
  %bt_pan_exist = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 13
  %202 = ptrtoint ptr %bt_pan_exist to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %bt_pan_exist, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool190.not = icmp eq i8 %203, 0
  br i1 %tobool190.not, label %cond.end188.rtw_coex_get_bt_info_src_string.exit.2_crit_edge, label %cond.true192

cond.end188.rtw_coex_get_bt_info_src_string.exit.2_crit_edge: ; preds = %cond.end188
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_get_bt_info_src_string.exit.2

cond.true192:                                     ; preds = %cond.end188
  call void @__sanitizer_cov_trace_pc() #7
  %bt_opp_exist = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 14
  %204 = ptrtoint ptr %bt_opp_exist to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %bt_opp_exist, align 2, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %tobool193.not = icmp eq i8 %205, 0
  %cond195 = select i1 %tobool193.not, ptr @.str.79, ptr @.str.78
  br label %rtw_coex_get_bt_info_src_string.exit.2

rtw_coex_get_bt_info_src_string.exit.2:           ; preds = %cond.true192, %cond.end188.rtw_coex_get_bt_info_src_string.exit.2_crit_edge
  %cond198 = phi ptr [ %cond195, %cond.true192 ], [ @.str.72, %cond.end188.rtw_coex_get_bt_info_src_string.exit.2_crit_edge ]
  %bt_ble_voice = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 8
  %206 = ptrtoint ptr %bt_ble_voice to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %bt_ble_voice, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %tobool199.not = icmp eq i8 %207, 0
  %cond201 = select i1 %tobool199.not, ptr @.str.72, ptr @.str.80
  %bt_multi_link = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 18
  %208 = ptrtoint ptr %bt_multi_link to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %bt_multi_link, align 2, !range !601
  %210 = zext i8 %209 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, ptr noundef nonnull %cond164, ptr noundef nonnull %cond167, ptr noundef nonnull %cond189, ptr noundef nonnull %cond198, ptr noundef nonnull %cond201, i32 noundef %210) #5
  %arrayidx205 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 89, i32 1
  %211 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %arrayidx205, align 4
  %arrayidx207 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 89, i32 4
  %213 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx207, align 4
  %arrayidx209 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 89, i32 5
  %215 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %arrayidx209, align 4
  %bt_supported_feature210 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 49
  %217 = ptrtoint ptr %bt_supported_feature210 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %bt_supported_feature210, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, i32 noundef %212, i32 noundef %214, i32 noundef %216, i32 noundef %218) #5
  %arrayidx212 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 89, i32 7
  %219 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %arrayidx212, align 4
  %arrayidx214 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 89, i32 6
  %221 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %arrayidx214, align 4
  %arrayidx216 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 89, i32 11
  %223 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %arrayidx216, align 4
  %arrayidx218 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 89, i32 12
  %225 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %arrayidx218, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, i32 noundef %220, i32 noundef %222, i32 noundef %224, i32 noundef %226) #5
  %bt_reg_vendor_ae219 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 55
  %227 = ptrtoint ptr %bt_reg_vendor_ae219 to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %bt_reg_vendor_ae219, align 4
  %conv220 = zext i16 %228 to i32
  %bt_reg_vendor_ac221 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 56
  %229 = ptrtoint ptr %bt_reg_vendor_ac221 to i32
  call void @__asan_load2_noabort(i32 %229)
  %230 = load i16, ptr %bt_reg_vendor_ac221, align 2
  %conv222 = zext i16 %230 to i32
  %conv223 = zext i16 %15 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86, i32 noundef %conv220, i32 noundef %conv222, i32 noundef %conv223, i32 noundef %retval.0.i) #5
  %231 = ptrtoint ptr %hi_pri_tx to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %hi_pri_tx, align 4
  %233 = ptrtoint ptr %hi_pri_rx to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %hi_pri_rx, align 4
  %235 = ptrtoint ptr %lo_pri_tx to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %lo_pri_tx, align 4
  %237 = ptrtoint ptr %lo_pri_rx to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %lo_pri_rx, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88, i32 noundef %232, i32 noundef %234, i32 noundef %236, i32 noundef %238) #5
  %arrayidx233 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 62, i32 0
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.227, ptr noundef %arrayidx233) #5
  %arrayidx233.1 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 62, i32 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.228, ptr noundef %arrayidx233.1) #5
  %arrayidx233.2 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 62, i32 2
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.229, ptr noundef %arrayidx233.2) #5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39) #5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.90) #5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39) #5
  %flags = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 38
  %239 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load volatile i32, ptr %flags, align 4
  %shr.i = lshr i32 %240, 2
  %and1.i = and i32 %shr.i, 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, i32 noundef %and1.i) #5
  %wl_gl_busy = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 35
  %241 = ptrtoint ptr %wl_gl_busy to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %wl_gl_busy, align 1, !range !601
  %243 = zext i8 %242 to i32
  %tx_throughput = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 10, i32 4
  %244 = ptrtoint ptr %tx_throughput to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %tx_throughput, align 8
  %rx_throughput = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 10, i32 5
  %246 = ptrtoint ptr %rx_throughput to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %rx_throughput, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, i32 noundef %243, i32 noundef %245, i32 noundef %247) #5
  %248 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load volatile i32, ptr %flags, align 4
  %shr.i593 = lshr i32 %249, 3
  %and1.i594 = and i32 %shr.i593, 1
  %250 = load volatile i32, ptr %flags, align 4
  %shr.i595 = lshr i32 %250, 5
  %and1.i596 = and i32 %shr.i595, 1
  %lps_conf = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 30
  %251 = ptrtoint ptr %lps_conf to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %lps_conf, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96, i32 noundef %and1.i594, i32 noundef %and1.i596, i32 noundef %252) #5
  %253 = ptrtoint ptr %vif_iter_data to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %rtwdev, ptr %vif_iter_data, align 4
  %254 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr %m, ptr %3, align 4
  %255 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %rtwdev, align 8
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %256, i32 noundef 0, ptr noundef nonnull @rtw_coex_vif_stat_iter, ptr noundef nonnull %vif_iter_data) #5
  %257 = ptrtoint ptr %manual_control to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %manual_control, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %258)
  %tobool247.not = icmp eq i8 %258, 0
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39) #5
  br i1 %tobool247.not, label %if.else254, label %if.then248

if.then248:                                       ; preds = %rtw_coex_get_bt_info_src_string.exit.2
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.97) #5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39) #5
  %fw_tdma_para = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 17
  %259 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %chip1, align 4
  %261 = ptrtoint ptr %share_ant to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %share_ant, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %262)
  %tobool.not.i675 = icmp eq i8 %262, 0
  %tdma_sant_num.i = getelementptr inbounds %struct.rtw_chip_info, ptr %260, i32 0, i32 77
  %tdma_nsant_num.i = getelementptr inbounds %struct.rtw_chip_info, ptr %260, i32 0, i32 78
  %n.0.in.i = select i1 %tobool.not.i675, ptr %tdma_nsant_num.i, ptr %tdma_sant_num.i
  %263 = ptrtoint ptr %n.0.in.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %n.0.i = load i8, ptr %n.0.in.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %n.0.i)
  %cmp58.not.i = icmp eq i8 %n.0.i, 0
  br i1 %cmp58.not.i, label %if.then248.rtw_coex_get_tdma_index.exit_crit_edge, label %for.cond7.preheader.lr.ph.i

if.then248.rtw_coex_get_tdma_index.exit_crit_edge: ; preds = %if.then248
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_get_tdma_index.exit

for.cond7.preheader.lr.ph.i:                      ; preds = %if.then248
  %tdma_sant.i = getelementptr inbounds %struct.rtw_chip_info, ptr %260, i32 0, i32 88
  %tdma_nsant.i = getelementptr inbounds %struct.rtw_chip_info, ptr %260, i32 0, i32 89
  %.pn.in.i = select i1 %tobool.not.i675, ptr %tdma_nsant.i, ptr %tdma_sant.i
  %264 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %wide.trip.count.i = zext i8 %n.0.i to i32
  %265 = ptrtoint ptr %fw_tdma_para to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %fw_tdma_para, align 1
  %add.ptr.1.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 17, i32 1
  %add.ptr.2.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 17, i32 2
  %add.ptr.3.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 17, i32 3
  %add.ptr.4.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 17, i32 4
  br label %for.cond7.preheader.i

for.cond7.preheader.i:                            ; preds = %for.inc38.i.for.cond7.preheader.i_crit_edge, %for.cond7.preheader.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.cond7.preheader.lr.ph.i ], [ %indvars.iv.next.i, %for.inc38.i.for.cond7.preheader.i_crit_edge ]
  %arrayidx.pn.i = getelementptr %struct.coex_tdma_para, ptr %.pn.i, i32 %indvars.iv.i
  %267 = ptrtoint ptr %arrayidx.pn.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %load_cur_tab_val.0.i = load i8, ptr %arrayidx.pn.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %266, i8 %load_cur_tab_val.0.i)
  %cmp26.not.i = icmp eq i8 %266, %load_cur_tab_val.0.i
  br i1 %cmp26.not.i, label %if.end29.i, label %for.cond7.preheader.i.for.inc38.i_crit_edge

for.cond7.preheader.i.for.inc38.i_crit_edge:      ; preds = %for.cond7.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc38.i

if.end29.i:                                       ; preds = %for.cond7.preheader.i
  %load_cur_tab_val.0.in.1.i = getelementptr [5 x i8], ptr %arrayidx.pn.i, i32 0, i32 1
  %268 = ptrtoint ptr %load_cur_tab_val.0.in.1.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %load_cur_tab_val.0.1.i = load i8, ptr %load_cur_tab_val.0.in.1.i, align 1
  %269 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %add.ptr.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %270, i8 %load_cur_tab_val.0.1.i)
  %cmp26.not.1.i = icmp eq i8 %270, %load_cur_tab_val.0.1.i
  br i1 %cmp26.not.1.i, label %if.end29.1.i, label %if.end29.i.for.inc38.i_crit_edge

if.end29.i.for.inc38.i_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc38.i

if.end29.1.i:                                     ; preds = %if.end29.i
  %load_cur_tab_val.0.in.2.i = getelementptr [5 x i8], ptr %arrayidx.pn.i, i32 0, i32 2
  %271 = ptrtoint ptr %load_cur_tab_val.0.in.2.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %load_cur_tab_val.0.2.i = load i8, ptr %load_cur_tab_val.0.in.2.i, align 1
  %272 = ptrtoint ptr %add.ptr.2.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %add.ptr.2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %273, i8 %load_cur_tab_val.0.2.i)
  %cmp26.not.2.i = icmp eq i8 %273, %load_cur_tab_val.0.2.i
  br i1 %cmp26.not.2.i, label %if.end29.2.i, label %if.end29.1.i.for.inc38.i_crit_edge

if.end29.1.i.for.inc38.i_crit_edge:               ; preds = %if.end29.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc38.i

if.end29.2.i:                                     ; preds = %if.end29.1.i
  %load_cur_tab_val.0.in.3.i = getelementptr [5 x i8], ptr %arrayidx.pn.i, i32 0, i32 3
  %274 = ptrtoint ptr %load_cur_tab_val.0.in.3.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %load_cur_tab_val.0.3.i = load i8, ptr %load_cur_tab_val.0.in.3.i, align 1
  %275 = ptrtoint ptr %add.ptr.3.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %add.ptr.3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %276, i8 %load_cur_tab_val.0.3.i)
  %cmp26.not.3.i = icmp eq i8 %276, %load_cur_tab_val.0.3.i
  br i1 %cmp26.not.3.i, label %if.end29.3.i, label %if.end29.2.i.for.inc38.i_crit_edge

if.end29.2.i.for.inc38.i_crit_edge:               ; preds = %if.end29.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc38.i

if.end29.3.i:                                     ; preds = %if.end29.2.i
  %load_cur_tab_val.0.in.4.i = getelementptr [5 x i8], ptr %arrayidx.pn.i, i32 0, i32 4
  %277 = ptrtoint ptr %load_cur_tab_val.0.in.4.i to i32
  call void @__asan_load1_noabort(i32 %277)
  %load_cur_tab_val.0.4.i = load i8, ptr %load_cur_tab_val.0.in.4.i, align 1
  %278 = ptrtoint ptr %add.ptr.4.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %add.ptr.4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %279, i8 %load_cur_tab_val.0.4.i)
  %cmp26.not.4.i = icmp eq i8 %279, %load_cur_tab_val.0.4.i
  br i1 %cmp26.not.4.i, label %if.end29.3.i.rtw_coex_get_tdma_index.exit_crit_edge, label %if.end29.3.i.for.inc38.i_crit_edge

if.end29.3.i.for.inc38.i_crit_edge:               ; preds = %if.end29.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc38.i

if.end29.3.i.rtw_coex_get_tdma_index.exit_crit_edge: ; preds = %if.end29.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_get_tdma_index.exit

for.inc38.i:                                      ; preds = %if.end29.3.i.for.inc38.i_crit_edge, %if.end29.2.i.for.inc38.i_crit_edge, %if.end29.1.i.for.inc38.i_crit_edge, %if.end29.i.for.inc38.i_crit_edge, %for.cond7.preheader.i.for.inc38.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.inc38.i.rtw_coex_get_tdma_index.exit_crit_edge, label %for.inc38.i.for.cond7.preheader.i_crit_edge

for.inc38.i.for.cond7.preheader.i_crit_edge:      ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond7.preheader.i

for.inc38.i.rtw_coex_get_tdma_index.exit_crit_edge: ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_get_tdma_index.exit

rtw_coex_get_tdma_index.exit:                     ; preds = %for.inc38.i.rtw_coex_get_tdma_index.exit_crit_edge, %if.end29.3.i.rtw_coex_get_tdma_index.exit_crit_edge, %if.then248.rtw_coex_get_tdma_index.exit_crit_edge
  %ans.0.i = phi i32 [ 255, %if.then248.rtw_coex_get_tdma_index.exit_crit_edge ], [ %indvars.iv.i, %if.end29.3.i.rtw_coex_get_tdma_index.exit_crit_edge ], [ 255, %for.inc38.i.rtw_coex_get_tdma_index.exit_crit_edge ]
  %conv253 = and i32 %ans.0.i, 255
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, ptr noundef %fw_tdma_para, i32 noundef %conv253) #5
  br label %if.end257

if.else254:                                       ; preds = %rtw_coex_get_bt_info_src_string.exit.2
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.100) #5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39) #5
  %ps_tdma_para = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 9
  %cur_ps_tdma = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 7
  %280 = ptrtoint ptr %cur_ps_tdma to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %cur_ps_tdma, align 1
  %conv256 = zext i8 %281 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102, ptr noundef %ps_tdma_para, i32 noundef %conv256) #5
  br label %if.end257

if.end257:                                        ; preds = %if.else254, %rtw_coex_get_tdma_index.exit
  %conv = zext i8 %call.i607 to i32
  %wl_coex_mode = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 81
  %282 = ptrtoint ptr %wl_coex_mode to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %wl_coex_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %283)
  %switch.selectcmp.i = icmp eq i8 %283, 3
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.239, ptr @.str.211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %283)
  %switch.selectcmp2.i = icmp eq i8 %283, 0
  %switch.select3.i = select i1 %switch.selectcmp2.i, ptr @.str.238, ptr %switch.select.i
  %freerun = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 6
  %284 = ptrtoint ptr %freerun to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %freerun, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %285)
  %tobool259.not = icmp eq i8 %285, 0
  %cond261 = select i1 %tobool259.not, ptr @.str.106, ptr @.str.105
  %tdma_timer_base = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 60
  %286 = ptrtoint ptr %tdma_timer_base to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %tdma_timer_base, align 1
  %conv262 = zext i8 %287 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104, ptr noundef nonnull %switch.select3.i, ptr noundef nonnull %cond261, i32 noundef %conv262) #5
  %cur_table = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 8
  %288 = ptrtoint ptr %cur_table to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %cur_table, align 4
  %conv263 = zext i8 %289 to i32
  %290 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %chip1, align 4
  %292 = ptrtoint ptr %share_ant to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %share_ant, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %293)
  %tobool.not.i678 = icmp eq i8 %293, 0
  %table_sant_num.i = getelementptr inbounds %struct.rtw_chip_info, ptr %291, i32 0, i32 75
  %table_nsant_num.i = getelementptr inbounds %struct.rtw_chip_info, ptr %291, i32 0, i32 76
  %n.0.in.i679 = select i1 %tobool.not.i678, ptr %table_nsant_num.i, ptr %table_sant_num.i
  %294 = ptrtoint ptr %n.0.in.i679 to i32
  call void @__asan_load1_noabort(i32 %294)
  %n.0.i680 = load i8, ptr %n.0.in.i679, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %n.0.i680)
  %cmp49.not.i = icmp eq i8 %n.0.i680, 0
  br i1 %cmp49.not.i, label %if.end257.rtw_coex_get_table_index.exit_crit_edge, label %for.body.lr.ph.i

if.end257.rtw_coex_get_table_index.exit_crit_edge: ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_get_table_index.exit

for.body.lr.ph.i:                                 ; preds = %if.end257
  %table_sant.i = getelementptr inbounds %struct.rtw_chip_info, ptr %291, i32 0, i32 87
  %table_nsant.i = getelementptr inbounds %struct.rtw_chip_info, ptr %291, i32 0, i32 86
  %.pn.in.i681 = select i1 %tobool.not.i678, ptr %table_nsant.i, ptr %table_sant.i
  %295 = ptrtoint ptr %.pn.in.i681 to i32
  call void @__asan_load4_noabort(i32 %295)
  %.pn.i682 = load ptr, ptr %.pn.in.i681, align 4
  %wide.trip.count.i683 = zext i8 %n.0.i680 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i684 = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i685, %for.inc.i.for.body.i_crit_edge ]
  %load_bt_val.0.in.i = getelementptr %struct.coex_table_para, ptr %.pn.i682, i32 %indvars.iv.i684
  %296 = ptrtoint ptr %load_bt_val.0.in.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %load_bt_val.0.i = load i32, ptr %load_bt_val.0.in.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %load_bt_val.0.i, i32 %call.i)
  %cmp21.i = icmp eq i32 %load_bt_val.0.i, %call.i
  br i1 %cmp21.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %load_wl_val.0.in.i = getelementptr %struct.coex_table_para, ptr %.pn.i682, i32 %indvars.iv.i684, i32 1
  %297 = ptrtoint ptr %load_wl_val.0.in.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %load_wl_val.0.i = load i32, ptr %load_wl_val.0.in.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %load_wl_val.0.i, i32 %call.i599)
  %cmp23.i = icmp eq i32 %load_wl_val.0.i, %call.i599
  br i1 %cmp23.i, label %if.then25.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then25.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.i = add nuw i32 %indvars.iv.i684, 100
  %spec.select.i = select i1 %tobool.not.i678, i32 %add.i, i32 %indvars.iv.i684
  %phi.bo = and i32 %spec.select.i, 255
  br label %rtw_coex_get_table_index.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %indvars.iv.next.i685 = add nuw nsw i32 %indvars.iv.i684, 1
  %exitcond.not.i686 = icmp eq i32 %indvars.iv.next.i685, %wide.trip.count.i683
  br i1 %exitcond.not.i686, label %for.inc.i.rtw_coex_get_table_index.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.rtw_coex_get_table_index.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_get_table_index.exit

rtw_coex_get_table_index.exit:                    ; preds = %for.inc.i.rtw_coex_get_table_index.exit_crit_edge, %if.then25.i, %if.end257.rtw_coex_get_table_index.exit_crit_edge
  %ans.0.i687 = phi i32 [ %phi.bo, %if.then25.i ], [ 255, %if.end257.rtw_coex_get_table_index.exit_crit_edge ], [ 255, %for.inc.i.rtw_coex_get_table_index.exit_crit_edge ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108, i32 noundef %conv263, i32 noundef %ans.0.i687, i32 noundef %call.i, i32 noundef %call.i599, i32 noundef %call.i602) #5
  %arrayidx266 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 90, i32 2
  %298 = ptrtoint ptr %arrayidx266 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %arrayidx266, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %6)
  %300 = icmp ult i8 %6, 15
  br i1 %300, label %switch.lookup, label %rtw_coex_get_table_index.exit.rtw_coex_get_reason_string.exit_crit_edge

rtw_coex_get_table_index.exit.rtw_coex_get_reason_string.exit_crit_edge: ; preds = %rtw_coex_get_table_index.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_get_reason_string.exit

switch.lookup:                                    ; preds = %rtw_coex_get_table_index.exit
  call void @__sanitizer_cov_trace_pc() #7
  %301 = sext i8 %6 to i32
  %switch.gep = getelementptr inbounds [15 x ptr], ptr @switch.table.rtw_coex_display_coex_info, i32 0, i32 %301
  %302 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %302)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %rtw_coex_get_reason_string.exit

rtw_coex_get_reason_string.exit:                  ; preds = %switch.lookup, %rtw_coex_get_table_index.exit.rtw_coex_get_reason_string.exit_crit_edge
  %retval.0.i692 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.211, %rtw_coex_get_table_index.exit.rtw_coex_get_reason_string.exit_crit_edge ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.110, i32 noundef %conv, i32 noundef %call.i605, i32 noundef %299, ptr noundef nonnull %retval.0.i692) #5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.112, ptr noundef %wl_ch_info) #5
  %wl_force_lps_ctrl = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 34
  %303 = ptrtoint ptr %wl_force_lps_ctrl to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %wl_force_lps_ctrl, align 2, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %304)
  %tobool270.not = icmp eq i8 %304, 0
  %cond272 = select i1 %tobool270.not, ptr @.str.115, ptr @.str.114
  %305 = ptrtoint ptr %wl_gl_busy to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %wl_gl_busy, align 1, !range !601
  %307 = zext i8 %306 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.113, ptr noundef nonnull %cond272, i32 noundef %307) #5
  %arrayidx276 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 76, i32 1
  %308 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %arrayidx276, align 1
  %conv277 = zext i8 %309 to i32
  %arrayidx279 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 76, i32 2
  %310 = ptrtoint ptr %arrayidx279 to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %arrayidx279, align 1
  %conv280 = zext i8 %311 to i32
  %arrayidx282 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 76, i32 3
  %312 = ptrtoint ptr %arrayidx282 to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %arrayidx282, align 1
  %conv283 = zext i8 %313 to i32
  %arrayidx285 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 76, i32 4
  %314 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %arrayidx285, align 1
  %conv286 = zext i8 %315 to i32
  %arrayidx288 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 76, i32 5
  %316 = ptrtoint ptr %arrayidx288 to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %arrayidx288, align 1
  %conv289 = zext i8 %317 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.117, i32 noundef %conv277, i32 noundef %conv280, i32 noundef %conv283, i32 noundef %conv286, i32 noundef %conv289) #5
  %arrayidx291 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 76, i32 6
  %318 = ptrtoint ptr %arrayidx291 to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %arrayidx291, align 1
  %conv292 = zext i8 %319 to i32
  %arrayidx294 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 76, i32 7
  %320 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %arrayidx294, align 1
  %conv295 = zext i8 %321 to i32
  %wl_slot_extend = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 41
  %322 = ptrtoint ptr %wl_slot_extend to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %wl_slot_extend, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %323)
  %tobool296.not = icmp eq i8 %323, 0
  %cond298 = select i1 %tobool296.not, ptr @.str.106, ptr @.str.105
  %arrayidx300 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 90, i32 7
  %324 = ptrtoint ptr %arrayidx300 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %arrayidx300, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.119, i32 noundef %conv292, i32 noundef %conv295, ptr noundef nonnull %cond298, i32 noundef %325) #5
  %cur_wl_pwr_lvl = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 12
  %326 = ptrtoint ptr %cur_wl_pwr_lvl to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %cur_wl_pwr_lvl, align 4
  %conv301 = zext i8 %327 to i32
  %cur_bt_pwr_lvl = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 10
  %328 = ptrtoint ptr %cur_bt_pwr_lvl to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %cur_bt_pwr_lvl, align 2
  %conv302 = zext i8 %329 to i32
  %cur_wl_rx_low_gain_en = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 1
  %330 = ptrtoint ptr %cur_wl_rx_low_gain_en to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %cur_wl_rx_low_gain_en, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %331)
  %tobool303.not = icmp eq i8 %331, 0
  %cond305 = select i1 %tobool303.not, ptr @.str.115, ptr @.str.114
  %cur_bt_lna_lvl = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 11
  %332 = ptrtoint ptr %cur_bt_lna_lvl to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %cur_bt_lna_lvl, align 1
  %conv306 = zext i8 %333 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.121, i32 noundef %conv301, i32 noundef %conv302, ptr noundef nonnull %cond305, i32 noundef %conv306) #5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39) #5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.122) #5
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39) #5
  %and307 = and i32 %retval.0.i620, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and307)
  %tobool308.not = icmp eq i32 %and307, 0
  %cond309 = select i1 %tobool308.not, ptr @.str.126, ptr @.str.125
  %conv310 = zext i8 %call.i617 to i32
  %and311 = and i32 %conv310, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and311)
  %tobool312.not = icmp eq i32 %and311, 0
  %cond313 = select i1 %tobool312.not, ptr @.str.128, ptr @.str.127
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.124, ptr noundef nonnull %cond309, ptr noundef nonnull %cond313) #5
  %and314 = and i32 %retval.0.i620, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and314)
  %tobool315.not = icmp eq i32 %and314, 0
  %cond316 = select i1 %tobool315.not, ptr @.str.132, ptr @.str.131
  %and317 = and i32 %retval.0.i620, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and317)
  %tobool318.not = icmp eq i32 %and317, 0
  %cond319 = select i1 %tobool318.not, ptr @.str.132, ptr @.str.131
  %and320 = and i32 %retval.0.i620, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and320)
  %tobool321.not = icmp eq i32 %and320, 0
  %cond322 = select i1 %tobool321.not, ptr @.str.132, ptr @.str.131
  %and323 = and i32 %retval.0.i620, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and323)
  %tobool324.not = icmp eq i32 %and323, 0
  %cond325 = select i1 %tobool324.not, ptr @.str.132, ptr @.str.131
  %and327 = and i32 %conv310, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and327)
  %tobool328.not = icmp eq i32 %and327, 0
  %cond329 = select i1 %tobool328.not, ptr @.str.115, ptr @.str.114
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.130, ptr noundef nonnull %cond316, ptr noundef nonnull %cond319, ptr noundef nonnull %cond322, ptr noundef nonnull %cond325, ptr noundef nonnull %cond329) #5
  %and330 = lshr i32 %retval.0.i626, 2
  %shr331 = and i32 %and330, 1
  %and332 = lshr i32 %retval.0.i626, 3
  %shr333 = and i32 %and332, 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.134, i32 noundef %shr331, i32 noundef %shr333) #5
  %cck_ok_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 6
  %334 = ptrtoint ptr %cck_ok_cnt to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %cck_ok_cnt, align 4
  %ofdm_ok_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 8
  %336 = ptrtoint ptr %ofdm_ok_cnt to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %ofdm_ok_cnt, align 4
  %ht_ok_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 10
  %338 = ptrtoint ptr %ht_ok_cnt to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %ht_ok_cnt, align 4
  %vht_ok_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 12
  %340 = ptrtoint ptr %vht_ok_cnt to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %vht_ok_cnt, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.135, i32 noundef %335, i32 noundef %337, i32 noundef %339, i32 noundef %341) #5
  %cck_err_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 7
  %342 = ptrtoint ptr %cck_err_cnt to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %cck_err_cnt, align 4
  %ofdm_err_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 9
  %344 = ptrtoint ptr %ofdm_err_cnt to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %ofdm_err_cnt, align 4
  %ht_err_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 11
  %346 = ptrtoint ptr %ht_err_cnt to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %ht_err_cnt, align 4
  %vht_err_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 13
  %348 = ptrtoint ptr %vht_err_cnt to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %vht_err_cnt, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.136, i32 noundef %343, i32 noundef %345, i32 noundef %347, i32 noundef %349) #5
  %wl_hi_pri_task1 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 32
  %350 = ptrtoint ptr %wl_hi_pri_task1 to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %wl_hi_pri_task1, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %351)
  %tobool334.not = icmp eq i8 %351, 0
  %cond336 = select i1 %tobool334.not, ptr @.str.140, ptr @.str.139
  %wl_cck_lock = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 42
  %352 = ptrtoint ptr %wl_cck_lock to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %wl_cck_lock, align 2, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %353)
  %tobool337.not = icmp eq i8 %353, 0
  %cond339 = select i1 %tobool337.not, ptr @.str.140, ptr @.str.139
  %wl_cck_lock_ever = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 44
  %354 = ptrtoint ptr %wl_cck_lock_ever to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %wl_cck_lock_ever, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %355)
  %tobool340.not = icmp eq i8 %355, 0
  %cond342 = select i1 %tobool340.not, ptr @.str.140, ptr @.str.139
  %wl_noisy_level = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 75
  %356 = ptrtoint ptr %wl_noisy_level to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %wl_noisy_level, align 2
  %conv343 = zext i8 %357 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.138, ptr noundef nonnull %cond336, ptr noundef nonnull %cond339, ptr noundef nonnull %cond342, i32 noundef %conv343) #5
  %358 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %chip1, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %addr_info.i) #5
  %360 = call ptr @memset(ptr %addr_info.i, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %val_info.i) #5
  %361 = call ptr @memset(ptr %val_info.i, i32 255, i32 80)
  %coex_info_hw_regs_num.i = getelementptr inbounds %struct.rtw_chip_info, ptr %359, i32 0, i32 83
  %362 = ptrtoint ptr %coex_info_hw_regs_num.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %coex_info_hw_regs_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %363)
  %cmp43.not.i = icmp eq i8 %363, 0
  br i1 %cmp43.not.i, label %rtw_coex_get_reason_string.exit.rtw_coex_set_coexinfo_hw.exit_crit_edge, label %for.body.lr.ph.i694

rtw_coex_get_reason_string.exit.rtw_coex_set_coexinfo_hw.exit_crit_edge: ; preds = %rtw_coex_get_reason_string.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_set_coexinfo_hw.exit

for.body.lr.ph.i694:                              ; preds = %rtw_coex_get_reason_string.exit
  %coex_info_hw_regs.i = getelementptr inbounds %struct.rtw_chip_info, ptr %359, i32 0, i32 94
  %rf_lock.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 16
  br label %for.body.i695

for.body.i695:                                    ; preds = %for.inc.i700.for.body.i695_crit_edge, %for.body.lr.ph.i694
  %i.048.i = phi i32 [ 0, %for.body.lr.ph.i694 ], [ %inc.i, %for.inc.i700.for.body.i695_crit_edge ]
  %n_val.046.i = phi i32 [ 0, %for.body.lr.ph.i694 ], [ %n_val.1.i, %for.inc.i700.for.body.i695_crit_edge ]
  %n_addr.044.i = phi i32 [ 0, %for.body.lr.ph.i694 ], [ %n_addr.1.i, %for.inc.i700.for.body.i695_crit_edge ]
  %364 = ptrtoint ptr %coex_info_hw_regs.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %coex_info_hw_regs.i, align 4
  %arrayidx.i = getelementptr %struct.rtw_reg_domain, ptr %365, i32 %i.048.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_addr.044.i)
  %cmp.i.i = icmp eq i32 %n_addr.044.i, 0
  %cond.i.i = select i1 %cmp.i.i, ptr @.str.72, ptr @.str.256
  %sub.i.i = sub i32 80, %n_addr.044.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp1.i.i = icmp slt i32 %sub.i.i, 1
  br i1 %cmp1.i.i, label %for.body.i695.rtw_coex_addr_info.exit.i_crit_edge, label %if.end.i.i

for.body.i695.rtw_coex_addr_info.exit.i_crit_edge: ; preds = %for.body.i695
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_addr_info.exit.i

if.end.i.i:                                       ; preds = %for.body.i695
  %domain.i.i = getelementptr %struct.rtw_reg_domain, ptr %365, i32 %i.048.i, i32 2
  %366 = ptrtoint ptr %domain.i.i to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %domain.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %367)
  %368 = icmp ult i8 %367, 5
  br i1 %368, label %switch.lookup707, label %if.end.i.i.rtw_coex_addr_info.exit.i_crit_edge

if.end.i.i.rtw_coex_addr_info.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_addr_info.exit.i

switch.lookup707:                                 ; preds = %if.end.i.i
  %369 = sext i8 %367 to i32
  %switch.gep708 = getelementptr inbounds [5 x ptr], ptr @switch.table.rtw_coex_display_coex_info.262, i32 0, i32 %369
  %370 = ptrtoint ptr %switch.gep708 to i32
  call void @__asan_load4_noabort(i32 %370)
  %switch.load709 = load ptr, ptr %switch.gep708, align 4
  %371 = sext i8 %367 to i32
  %switch.gep710 = getelementptr inbounds [5 x i32], ptr @switch.table.rtw_coex_display_coex_info.263, i32 0, i32 %371
  %372 = ptrtoint ptr %switch.gep710 to i32
  call void @__asan_load4_noabort(i32 %372)
  %switch.load711 = load i32, ptr %switch.gep710, align 4
  %mask.i.i = getelementptr %struct.rtw_reg_domain, ptr %365, i32 %i.048.i, i32 1
  %373 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %mask.i.i, align 4
  %375 = call i32 @llvm.cttz.i32(i32 %374, i1 false) #5, !range !603
  %376 = call i32 @llvm.ctlz.i32(i32 %374, i1 false) #5, !range !603
  %sub.i.i.i = sub nsw i32 31, %376
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %375)
  %cmp7.i.i = icmp eq i32 %375, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %switch.load711)
  %cmp9.i.i = icmp eq i32 %sub.i.i.i, %switch.load711
  %or.cond.i.i = select i1 %cmp7.i.i, i1 %cmp9.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then11.i.i, label %if.else.i.i

if.then11.i.i:                                    ; preds = %switch.lookup707
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i696 = getelementptr i8, ptr %addr_info.i, i32 %n_addr.044.i
  %377 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %arrayidx.i, align 4
  %call13.i.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i.i696, i32 noundef %sub.i.i, ptr noundef nonnull @.str.258, ptr noundef nonnull %cond.i.i, ptr noundef nonnull %switch.load709, i32 noundef %378) #5
  br label %rtw_coex_addr_info.exit.i

if.else.i.i:                                      ; preds = %switch.lookup707
  call void @__sanitizer_cov_trace_cmp4(i32 %375, i32 %sub.i.i.i)
  %cmp14.i.i = icmp eq i32 %375, %sub.i.i.i
  %add.ptr17.i.i = getelementptr i8, ptr %addr_info.i, i32 %n_addr.044.i
  %379 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %arrayidx.i, align 4
  br i1 %cmp14.i.i, label %if.then16.i.i, label %if.else21.i.i

if.then16.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call20.i.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @.str.259, ptr noundef nonnull %cond.i.i, ptr noundef nonnull %switch.load709, i32 noundef %380, i32 noundef %375) #5
  br label %rtw_coex_addr_info.exit.i

if.else21.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call25.i.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @.str.260, ptr noundef nonnull %cond.i.i, ptr noundef nonnull %switch.load709, i32 noundef %380, i32 noundef %sub.i.i.i, i32 noundef %375) #5
  br label %rtw_coex_addr_info.exit.i

rtw_coex_addr_info.exit.i:                        ; preds = %if.else21.i.i, %if.then16.i.i, %if.then11.i.i, %if.end.i.i.rtw_coex_addr_info.exit.i_crit_edge, %for.body.i695.rtw_coex_addr_info.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call13.i.i, %if.then11.i.i ], [ %call20.i.i, %if.then16.i.i ], [ %call25.i.i, %if.else21.i.i ], [ 0, %for.body.i695.rtw_coex_addr_info.exit.i_crit_edge ], [ 0, %if.end.i.i.rtw_coex_addr_info.exit.i_crit_edge ]
  %add.i697 = add i32 %retval.0.i.i, %n_addr.044.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_val.046.i)
  %cmp.i31.i = icmp eq i32 %n_val.046.i, 0
  %cond.i32.i = select i1 %cmp.i31.i, ptr @.str.72, ptr @.str.256
  %sub.i33.i = sub i32 80, %n_val.046.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i33.i)
  %cmp1.i34.i = icmp slt i32 %sub.i33.i, 1
  br i1 %cmp1.i34.i, label %rtw_coex_addr_info.exit.i.rtw_coex_val_info.exit.i_crit_edge, label %if.end.i36.i

rtw_coex_addr_info.exit.i.rtw_coex_val_info.exit.i_crit_edge: ; preds = %rtw_coex_addr_info.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_val_info.exit.i

if.end.i36.i:                                     ; preds = %rtw_coex_addr_info.exit.i
  %domain.i35.i = getelementptr %struct.rtw_reg_domain, ptr %365, i32 %i.048.i, i32 2
  %381 = ptrtoint ptr %domain.i35.i to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %domain.i35.i, align 4
  %383 = zext i8 %382 to i64
  call void @__sanitizer_cov_trace_switch(i64 %383, ptr @__sancov_gen_cov_switch_values.281)
  switch i8 %382, label %if.end.i36.i.rtw_coex_val_info.exit.i_crit_edge [
    i8 0, label %sw.bb.i.i
    i8 1, label %sw.bb4.i39.i
    i8 2, label %sw.bb12.i.i
    i8 3, label %if.end.i36.i.sw.epilog.i40.i_crit_edge
    i8 4, label %sw.bb21.i.i
  ]

if.end.i36.i.sw.epilog.i40.i_crit_edge:           ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i40.i

if.end.i36.i.rtw_coex_val_info.exit.i_crit_edge:  ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_val_info.exit.i

sw.bb.i.i:                                        ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i37.i = getelementptr i8, ptr %val_info.i, i32 %n_val.046.i
  %384 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %arrayidx.i, align 4
  %mask.i38.i = getelementptr %struct.rtw_reg_domain, ptr %365, i32 %i.048.i, i32 1
  %386 = ptrtoint ptr %mask.i38.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %mask.i38.i, align 4
  %388 = call i32 @llvm.cttz.i32(i32 %387, i1 false) #5, !range !603
  %389 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %hci.i, align 8
  %read32.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %390, i32 0, i32 13
  %391 = ptrtoint ptr %read32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %read32.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %392(ptr noundef %rtwdev, i32 noundef %385) #5
  %and.i.i.i = and i32 %call.i.i.i.i, %387
  %shr.i.i.i = lshr i32 %and.i.i.i, %388
  %call3.i.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i37.i, i32 noundef %sub.i33.i, ptr noundef nonnull @.str.261, ptr noundef nonnull %cond.i32.i, i32 noundef %shr.i.i.i) #5
  br label %rtw_coex_val_info.exit.i

sw.bb4.i39.i:                                     ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr5.i.i = getelementptr i8, ptr %val_info.i, i32 %n_val.046.i
  %393 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %arrayidx.i, align 4
  %mask8.i.i = getelementptr %struct.rtw_reg_domain, ptr %365, i32 %i.048.i, i32 1
  %395 = ptrtoint ptr %mask8.i.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %mask8.i.i, align 4
  %397 = call i32 @llvm.cttz.i32(i32 %396, i1 false) #5, !range !603
  %398 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %hci.i, align 8
  %read16.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %399, i32 0, i32 12
  %400 = ptrtoint ptr %read16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %read16.i.i.i.i, align 4
  %call.i.i57.i.i = call zeroext i16 %401(ptr noundef %rtwdev, i32 noundef %394) #5
  %conv.i.i.i = zext i16 %call.i.i57.i.i to i32
  %and.i58.i.i = and i32 %396, %conv.i.i.i
  %shr.i59.i.i = lshr i32 %and.i58.i.i, %397
  %call11.i.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr5.i.i, i32 noundef %sub.i33.i, ptr noundef nonnull @.str.261, ptr noundef nonnull %cond.i32.i, i32 noundef %shr.i59.i.i) #5
  br label %rtw_coex_val_info.exit.i

sw.bb12.i.i:                                      ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr13.i.i = getelementptr i8, ptr %val_info.i, i32 %n_val.046.i
  %402 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %arrayidx.i, align 4
  %mask16.i.i = getelementptr %struct.rtw_reg_domain, ptr %365, i32 %i.048.i, i32 1
  %404 = ptrtoint ptr %mask16.i.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %mask16.i.i, align 4
  %406 = call i32 @llvm.cttz.i32(i32 %405, i1 false) #5, !range !603
  %407 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %hci.i, align 8
  %read8.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %408, i32 0, i32 11
  %409 = ptrtoint ptr %read8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %read8.i.i.i.i, align 4
  %call.i.i61.i.i = call zeroext i8 %410(ptr noundef %rtwdev, i32 noundef %403) #5
  %conv.i62.i.i = zext i8 %call.i.i61.i.i to i32
  %and.i63.i.i = and i32 %405, %conv.i62.i.i
  %shr.i64.i.i = lshr i32 %and.i63.i.i, %406
  %call19.i.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr13.i.i, i32 noundef %sub.i33.i, ptr noundef nonnull @.str.261, ptr noundef nonnull %cond.i32.i, i32 noundef %shr.i64.i.i) #5
  br label %rtw_coex_val_info.exit.i

sw.bb21.i.i:                                      ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i40.i

sw.epilog.i40.i:                                  ; preds = %sw.bb21.i.i, %if.end.i36.i.sw.epilog.i40.i_crit_edge
  %rf_path.0.i.i = phi i32 [ 1, %sw.bb21.i.i ], [ 0, %if.end.i36.i.sw.epilog.i40.i_crit_edge ]
  %add.ptr22.i.i = getelementptr i8, ptr %val_info.i, i32 %n_val.046.i
  %411 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %arrayidx.i, align 4
  %mask26.i.i = getelementptr %struct.rtw_reg_domain, ptr %365, i32 %i.048.i, i32 1
  %413 = ptrtoint ptr %mask26.i.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %mask26.i.i, align 4
  %call2.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_lock.i.i.i) #5
  %415 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %chip1, align 4
  %417 = ptrtoint ptr %416 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %416, align 4
  %read_rf.i.i.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %418, i32 0, i32 7
  %419 = ptrtoint ptr %read_rf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %read_rf.i.i.i, align 4
  %call5.i.i.i = call i32 %420(ptr noundef %rtwdev, i32 noundef %rf_path.0.i.i, i32 noundef %412, i32 noundef %414) #5
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_lock.i.i.i, i32 noundef %call2.i.i.i) #5
  %call28.i.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr22.i.i, i32 noundef %sub.i33.i, ptr noundef nonnull @.str.261, ptr noundef nonnull %cond.i32.i, i32 noundef %call5.i.i.i) #5
  br label %rtw_coex_val_info.exit.i

rtw_coex_val_info.exit.i:                         ; preds = %sw.epilog.i40.i, %sw.bb12.i.i, %sw.bb4.i39.i, %sw.bb.i.i, %if.end.i36.i.rtw_coex_val_info.exit.i_crit_edge, %rtw_coex_addr_info.exit.i.rtw_coex_val_info.exit.i_crit_edge
  %retval.0.i41.i = phi i32 [ %call28.i.i, %sw.epilog.i40.i ], [ %call19.i.i, %sw.bb12.i.i ], [ %call11.i.i, %sw.bb4.i39.i ], [ %call3.i.i, %sw.bb.i.i ], [ 0, %rtw_coex_addr_info.exit.i.rtw_coex_val_info.exit.i_crit_edge ], [ 0, %if.end.i36.i.rtw_coex_val_info.exit.i_crit_edge ]
  %add5.i = add i32 %retval.0.i41.i, %n_val.046.i
  %domain.i = getelementptr %struct.rtw_reg_domain, ptr %365, i32 %i.048.i, i32 2
  %421 = ptrtoint ptr %domain.i to i32
  call void @__asan_load1_noabort(i32 %421)
  %422 = load i8, ptr %domain.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %422)
  %cmp7.i = icmp eq i8 %422, -1
  br i1 %cmp7.i, label %if.then.i698, label %rtw_coex_val_info.exit.i.for.inc.i700_crit_edge

rtw_coex_val_info.exit.i.for.inc.i700_crit_edge:  ; preds = %rtw_coex_val_info.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i700

if.then.i698:                                     ; preds = %rtw_coex_val_info.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.255, ptr noundef nonnull %addr_info.i, ptr noundef nonnull %val_info.i) #5
  br label %for.inc.i700

for.inc.i700:                                     ; preds = %if.then.i698, %rtw_coex_val_info.exit.i.for.inc.i700_crit_edge
  %n_addr.1.i = phi i32 [ 0, %if.then.i698 ], [ %add.i697, %rtw_coex_val_info.exit.i.for.inc.i700_crit_edge ]
  %n_val.1.i = phi i32 [ 0, %if.then.i698 ], [ %add5.i, %rtw_coex_val_info.exit.i.for.inc.i700_crit_edge ]
  %inc.i = add nuw nsw i32 %i.048.i, 1
  %423 = ptrtoint ptr %coex_info_hw_regs_num.i to i32
  call void @__asan_load1_noabort(i32 %423)
  %424 = load i8, ptr %coex_info_hw_regs_num.i, align 4
  %conv.i699 = zext i8 %424 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i699
  br i1 %cmp.i, label %for.inc.i700.for.body.i695_crit_edge, label %for.end.i701

for.inc.i700.for.body.i695_crit_edge:             ; preds = %for.inc.i700
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i695

for.end.i701:                                     ; preds = %for.inc.i700
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_addr.1.i)
  %cmp11.not.i = icmp eq i32 %n_addr.1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_val.1.i)
  %cmp13.not.i = icmp eq i32 %n_val.1.i, 0
  %or.cond.i = select i1 %cmp11.not.i, i1 true, i1 %cmp13.not.i
  br i1 %or.cond.i, label %for.end.i701.rtw_coex_set_coexinfo_hw.exit_crit_edge, label %if.then15.i

for.end.i701.rtw_coex_set_coexinfo_hw.exit_crit_edge: ; preds = %for.end.i701
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_set_coexinfo_hw.exit

if.then15.i:                                      ; preds = %for.end.i701
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.255, ptr noundef nonnull %addr_info.i, ptr noundef nonnull %val_info.i) #5
  br label %rtw_coex_set_coexinfo_hw.exit

rtw_coex_set_coexinfo_hw.exit:                    ; preds = %if.then15.i, %for.end.i701.rtw_coex_set_coexinfo_hw.exit_crit_edge, %rtw_coex_get_reason_string.exit.rtw_coex_set_coexinfo_hw.exit_crit_edge
  %dm_info2 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %val_info.i) #5
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %addr_info.i) #5
  %rx_evm_dbm = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 48
  %425 = ptrtoint ptr %rx_evm_dbm to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %rx_evm_dbm, align 1
  %conv345 = zext i8 %426 to i32
  %sub346 = sub nsw i32 0, %conv345
  %arrayidx348 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 48, i32 1
  %427 = ptrtoint ptr %arrayidx348 to i32
  call void @__asan_load1_noabort(i32 %427)
  %428 = load i8, ptr %arrayidx348, align 1
  %conv349 = zext i8 %428 to i32
  %sub350 = sub nsw i32 0, %conv349
  %rx_snr = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 47
  %429 = ptrtoint ptr %rx_snr to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %rx_snr, align 1
  %conv352 = sext i8 %430 to i32
  %sub353 = sub nsw i32 0, %conv352
  %arrayidx355 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 47, i32 1
  %431 = ptrtoint ptr %arrayidx355 to i32
  call void @__asan_load1_noabort(i32 %431)
  %432 = load i8, ptr %arrayidx355, align 1
  %conv356 = sext i8 %432 to i32
  %sub357 = sub nsw i32 0, %conv356
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.142, i32 noundef %sub346, i32 noundef %sub350, i32 noundef %sub353, i32 noundef %sub357) #5
  %cck_cca_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 3
  %433 = ptrtoint ptr %cck_cca_cnt to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %cck_cca_cnt, align 4
  %435 = ptrtoint ptr %dm_info2 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %dm_info2, align 4
  %ofdm_cca_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 4
  %437 = ptrtoint ptr %ofdm_cca_cnt to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %ofdm_cca_cnt, align 4
  %ofdm_fa_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 13, i32 1
  %439 = ptrtoint ptr %ofdm_fa_cnt to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %ofdm_fa_cnt, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.143, i32 noundef %434, i32 noundef %436, i32 noundef %438, i32 noundef %440) #5
  %441 = ptrtoint ptr %cck_ok_cnt to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %cck_ok_cnt, align 4
  %443 = ptrtoint ptr %ofdm_ok_cnt to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %ofdm_ok_cnt, align 4
  %445 = ptrtoint ptr %ht_ok_cnt to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %ht_ok_cnt, align 4
  %447 = ptrtoint ptr %vht_ok_cnt to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %vht_ok_cnt, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.144, i32 noundef %442, i32 noundef %444, i32 noundef %446, i32 noundef %448) #5
  %449 = ptrtoint ptr %cck_err_cnt to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %cck_err_cnt, align 4
  %451 = ptrtoint ptr %ofdm_err_cnt to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %ofdm_err_cnt, align 4
  %453 = ptrtoint ptr %ht_err_cnt to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %ht_err_cnt, align 4
  %455 = ptrtoint ptr %vht_err_cnt to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %vht_err_cnt, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.145, i32 noundef %450, i32 noundef %452, i32 noundef %454, i32 noundef %456) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vif_iter_data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_debugfs_get_simple_phy_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_active_interfaces_atomic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_coex_vif_stat_iter(ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %mac, ptr noundef %vif) #0 align 64 {
entry:
  %sta_iter_data = alloca %struct.rtw_coex_sta_stat_iter_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sta_iter_data) #5
  %0 = getelementptr inbounds %struct.rtw_coex_sta_stat_iter_data, ptr %sta_iter_data, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %file = getelementptr inbounds %struct.rtw_coex_vif_stat_iter_data, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %file, align 4
  %port = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 5
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %port, align 2
  %conv = zext i8 %6 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %4, ptr noundef nonnull @.str.230, i32 noundef %conv) #5
  %beacon_int = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 19
  %7 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %beacon_int, align 2
  %conv3 = zext i16 %8 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %4, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.232, i32 noundef %conv3) #5
  %9 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %drv_priv, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %4, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.233, i32 noundef %10) #5
  %11 = ptrtoint ptr %sta_iter_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %drv_priv, ptr %sta_iter_data, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %4, ptr %0, align 4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %2, align 8
  call void @ieee80211_iterate_stations_atomic(ptr noundef %14, ptr noundef nonnull @rtw_coex_sta_stat_iter, ptr noundef nonnull %sta_iter_data) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sta_iter_data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_coex_set_gnt_bt(ptr noundef %rtwdev, i8 noundef zeroext %state) unnamed_addr #0 align 64 {
entry:
  %val.i.i4 = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %state to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #5
  %0 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i.i, align 4, !annotation !602
  %call.i.i = call zeroext i1 @ltecoex_read_reg(ptr noundef %rtwdev, i16 noundef zeroext 56, ptr noundef nonnull %val.i.i) #5
  br i1 %call.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %1 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str) #8
  br label %rtw_coex_read_indirect_reg.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i.i, align 4
  %phi.bo = and i32 %4, -49153
  br label %rtw_coex_read_indirect_reg.exit.i

rtw_coex_read_indirect_reg.exit.i:                ; preds = %if.end.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ %phi.bo, %if.end.i.i ], [ 0, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #5
  %shl.i = shl nuw nsw i32 %conv, 14
  %and2.i = and i32 %shl.i, 49152
  %or.i = or i32 %retval.0.i.i, %and2.i
  %call3.i = call zeroext i1 @ltecoex_reg_write(ptr noundef %rtwdev, i16 noundef zeroext 56, i32 noundef %or.i) #5
  br i1 %call3.i, label %rtw_coex_read_indirect_reg.exit.i.rtw_coex_write_indirect_reg.exit_crit_edge, label %do.end.i

rtw_coex_read_indirect_reg.exit.i.rtw_coex_write_indirect_reg.exit_crit_edge: ; preds = %rtw_coex_read_indirect_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_write_indirect_reg.exit

do.end.i:                                         ; preds = %rtw_coex_read_indirect_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.5) #8
  br label %rtw_coex_write_indirect_reg.exit

rtw_coex_write_indirect_reg.exit:                 ; preds = %do.end.i, %rtw_coex_read_indirect_reg.exit.i.rtw_coex_write_indirect_reg.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i4) #5
  %7 = ptrtoint ptr %val.i.i4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val.i.i4, align 4, !annotation !602
  %call.i.i5 = call zeroext i1 @ltecoex_read_reg(ptr noundef %rtwdev, i16 noundef zeroext 56, ptr noundef nonnull %val.i.i4) #5
  br i1 %call.i.i5, label %if.end.i.i8, label %do.end.i.i7

do.end.i.i7:                                      ; preds = %rtw_coex_write_indirect_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i6 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %8 = ptrtoint ptr %dev.i.i6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str) #8
  br label %rtw_coex_read_indirect_reg.exit.i15

if.end.i.i8:                                      ; preds = %rtw_coex_write_indirect_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %val.i.i4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i.i4, align 4
  %phi.bo19 = and i32 %11, -3073
  br label %rtw_coex_read_indirect_reg.exit.i15

rtw_coex_read_indirect_reg.exit.i15:              ; preds = %if.end.i.i8, %do.end.i.i7
  %retval.0.i.i9 = phi i32 [ %phi.bo19, %if.end.i.i8 ], [ 0, %do.end.i.i7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i4) #5
  %shl.i11 = shl nuw nsw i32 %conv, 10
  %and2.i12 = and i32 %shl.i11, 3072
  %or.i13 = or i32 %retval.0.i.i9, %and2.i12
  %call3.i14 = call zeroext i1 @ltecoex_reg_write(ptr noundef %rtwdev, i16 noundef zeroext 56, i32 noundef %or.i13) #5
  br i1 %call3.i14, label %rtw_coex_read_indirect_reg.exit.i15.rtw_coex_write_indirect_reg.exit18_crit_edge, label %do.end.i17

rtw_coex_read_indirect_reg.exit.i15.rtw_coex_write_indirect_reg.exit18_crit_edge: ; preds = %rtw_coex_read_indirect_reg.exit.i15
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_write_indirect_reg.exit18

do.end.i17:                                       ; preds = %rtw_coex_read_indirect_reg.exit.i15
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i16 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %12 = ptrtoint ptr %dev.i16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i16, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.5) #8
  br label %rtw_coex_write_indirect_reg.exit18

rtw_coex_write_indirect_reg.exit18:               ; preds = %do.end.i17, %rtw_coex_read_indirect_reg.exit.i15.rtw_coex_write_indirect_reg.exit18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_coex_set_gnt_wl(ptr noundef %rtwdev, i8 noundef zeroext %state) unnamed_addr #0 align 64 {
entry:
  %val.i.i4 = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %state to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #5
  %0 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i.i, align 4, !annotation !602
  %call.i.i = call zeroext i1 @ltecoex_read_reg(ptr noundef %rtwdev, i16 noundef zeroext 56, ptr noundef nonnull %val.i.i) #5
  br i1 %call.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %1 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str) #8
  br label %rtw_coex_read_indirect_reg.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i.i, align 4
  %phi.bo = and i32 %4, -12289
  br label %rtw_coex_read_indirect_reg.exit.i

rtw_coex_read_indirect_reg.exit.i:                ; preds = %if.end.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ %phi.bo, %if.end.i.i ], [ 0, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #5
  %shl.i = shl nuw nsw i32 %conv, 12
  %and2.i = and i32 %shl.i, 12288
  %or.i = or i32 %retval.0.i.i, %and2.i
  %call3.i = call zeroext i1 @ltecoex_reg_write(ptr noundef %rtwdev, i16 noundef zeroext 56, i32 noundef %or.i) #5
  br i1 %call3.i, label %rtw_coex_read_indirect_reg.exit.i.rtw_coex_write_indirect_reg.exit_crit_edge, label %do.end.i

rtw_coex_read_indirect_reg.exit.i.rtw_coex_write_indirect_reg.exit_crit_edge: ; preds = %rtw_coex_read_indirect_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_write_indirect_reg.exit

do.end.i:                                         ; preds = %rtw_coex_read_indirect_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.5) #8
  br label %rtw_coex_write_indirect_reg.exit

rtw_coex_write_indirect_reg.exit:                 ; preds = %do.end.i, %rtw_coex_read_indirect_reg.exit.i.rtw_coex_write_indirect_reg.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i4) #5
  %7 = ptrtoint ptr %val.i.i4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val.i.i4, align 4, !annotation !602
  %call.i.i5 = call zeroext i1 @ltecoex_read_reg(ptr noundef %rtwdev, i16 noundef zeroext 56, ptr noundef nonnull %val.i.i4) #5
  br i1 %call.i.i5, label %if.end.i.i8, label %do.end.i.i7

do.end.i.i7:                                      ; preds = %rtw_coex_write_indirect_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i6 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %8 = ptrtoint ptr %dev.i.i6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str) #8
  br label %rtw_coex_read_indirect_reg.exit.i15

if.end.i.i8:                                      ; preds = %rtw_coex_write_indirect_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %val.i.i4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i.i4, align 4
  %phi.bo19 = and i32 %11, -769
  br label %rtw_coex_read_indirect_reg.exit.i15

rtw_coex_read_indirect_reg.exit.i15:              ; preds = %if.end.i.i8, %do.end.i.i7
  %retval.0.i.i9 = phi i32 [ %phi.bo19, %if.end.i.i8 ], [ 0, %do.end.i.i7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i4) #5
  %shl.i11 = shl nuw nsw i32 %conv, 8
  %and2.i12 = and i32 %shl.i11, 768
  %or.i13 = or i32 %retval.0.i.i9, %and2.i12
  %call3.i14 = call zeroext i1 @ltecoex_reg_write(ptr noundef %rtwdev, i16 noundef zeroext 56, i32 noundef %or.i13) #5
  br i1 %call3.i14, label %rtw_coex_read_indirect_reg.exit.i15.rtw_coex_write_indirect_reg.exit18_crit_edge, label %do.end.i17

rtw_coex_read_indirect_reg.exit.i15.rtw_coex_write_indirect_reg.exit18_crit_edge: ; preds = %rtw_coex_read_indirect_reg.exit.i15
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_write_indirect_reg.exit18

do.end.i17:                                       ; preds = %rtw_coex_read_indirect_reg.exit.i15
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i16 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %12 = ptrtoint ptr %dev.i16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i16, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.5) #8
  br label %rtw_coex_write_indirect_reg.exit18

rtw_coex_write_indirect_reg.exit18:               ; preds = %do.end.i17, %rtw_coex_read_indirect_reg.exit.i15.rtw_coex_write_indirect_reg.exit18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_btc_wltoggle_table_a(ptr noundef %rtwdev, i8 noundef zeroext %table_case) unnamed_addr #0 align 64 {
entry:
  %h2c_para = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %h2c_para) #5
  %2 = ptrtoint ptr %h2c_para to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 13, ptr %h2c_para, align 1
  %arrayidx3 = getelementptr inbounds [6 x i8], ptr %h2c_para, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %arrayidx3, align 1
  %share_ant = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %4 = ptrtoint ptr %share_ant to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %share_ant, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %table_sant_num = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 75
  %6 = ptrtoint ptr %table_sant_num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %table_sant_num, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %table_case)
  %cmp = icmp ugt i8 %7, %table_case
  br i1 %cmp, label %if.then6, label %if.then.if.end17_crit_edge

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %table_sant = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 87
  br label %if.end17.sink.split

if.else:                                          ; preds = %entry
  %table_nsant_num = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 76
  %8 = ptrtoint ptr %table_nsant_num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %table_nsant_num, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %table_case)
  %cmp10 = icmp ugt i8 %9, %table_case
  br i1 %cmp10, label %if.then12, label %if.else.if.end17_crit_edge

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %table_nsant = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 86
  br label %if.end17.sink.split

if.end17.sink.split:                              ; preds = %if.then12, %if.then6
  %table_nsant.sink = phi ptr [ %table_nsant, %if.then12 ], [ %table_sant, %if.then6 ]
  %conv8.sink = zext i8 %table_case to i32
  %10 = ptrtoint ptr %table_nsant.sink to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %table_nsant.sink, align 4
  %wl15 = getelementptr %struct.coex_table_para, ptr %11, i32 %conv8.sink, i32 1
  %12 = ptrtoint ptr %wl15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wl15, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %if.else.if.end17_crit_edge, %if.then.if.end17_crit_edge
  %table_wl.0 = phi i32 [ 1515870810, %if.then.if.end17_crit_edge ], [ 1515870810, %if.else.if.end17_crit_edge ], [ %13, %if.end17.sink.split ]
  %conv18 = trunc i32 %table_wl.0 to i8
  %arrayidx19 = getelementptr inbounds [6 x i8], ptr %h2c_para, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv18, ptr %arrayidx19, align 1
  %div4.i678 = lshr i32 %table_wl.0, 8
  %conv21 = trunc i32 %div4.i678 to i8
  %arrayidx22 = getelementptr inbounds [6 x i8], ptr %h2c_para, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv21, ptr %arrayidx22, align 1
  %and.i2 = lshr i32 %table_wl.0, 16
  %conv24 = trunc i32 %and.i2 to i8
  %arrayidx25 = getelementptr inbounds [6 x i8], ptr %h2c_para, i32 0, i32 4
  %16 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv24, ptr %arrayidx25, align 1
  %div4.i510 = lshr i32 %table_wl.0, 24
  %conv27 = trunc i32 %div4.i510 to i8
  %arrayidx28 = getelementptr inbounds [6 x i8], ptr %h2c_para, i32 0, i32 5
  %17 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv27, ptr %arrayidx28, align 1
  call void @rtw_fw_bt_wifi_control(ptr noundef %rtwdev, i8 noundef zeroext 13, ptr noundef %arrayidx3) #5
  %18 = ptrtoint ptr %h2c_para to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %h2c_para, align 1
  %conv32 = zext i8 %19 to i32
  %20 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx3, align 1
  %conv34 = zext i8 %21 to i32
  %22 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx19, align 1
  %conv36 = zext i8 %23 to i32
  %24 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx22, align 1
  %conv38 = zext i8 %25 to i32
  %26 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx25, align 1
  %conv40 = zext i8 %27 to i32
  %28 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx28, align 1
  %conv42 = zext i8 %29 to i32
  call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.161, ptr noundef nonnull @__func__.rtw_btc_wltoggle_table_a, i32 noundef %conv32, i32 noundef %conv34, i32 noundef %conv36, i32 noundef %conv38, i32 noundef %conv40, i32 noundef %conv42) #5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %h2c_para) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_fw_bt_wifi_control(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_coex_tdma(ptr noundef %rtwdev, i1 noundef zeroext %force, i32 noundef %tcase) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dm = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10
  %chip2 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip2, align 4
  %and = and i32 %tcase, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i8 0, i8 3
  tail call fastcc void @rtw_coex_tdma_timer_base(ptr noundef %rtwdev, i8 noundef zeroext %.)
  %conv = trunc i32 %tcase to i8
  %conv5 = and i32 %tcase, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv5)
  %cmp = icmp ne i32 %conv5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %conv5)
  %cmp8 = icmp ne i32 %conv5, 100
  %spec.select = and i1 %cmp, %cmp8
  %frombool11 = zext i1 %spec.select to i8
  br i1 %force, label %entry.if.end31_crit_edge, label %land.lhs.true

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %dm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dm, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool15.not = icmp eq i8 %3, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %frombool11)
  %cmp17 = icmp eq i8 %3, %frombool11
  br i1 %cmp17, label %land.lhs.true19, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

land.lhs.true19:                                  ; preds = %land.lhs.true
  %cur_ps_tdma = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 7
  %4 = ptrtoint ptr %cur_ps_tdma to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cur_ps_tdma, align 1
  %6 = trunc i32 %tcase to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %6)
  %cmp22 = icmp eq i8 %5, %6
  br i1 %cmp22, label %if.then24, label %land.lhs.true19.if.end31_crit_edge

land.lhs.true19.if.end31_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then24:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #7
  %cond28 = select i1 %tobool15.not, ptr @.str.165, ptr @.str.164
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.163, ptr noundef nonnull %cond28, i32 noundef %conv5) #5
  br label %cleanup

if.end31:                                         ; preds = %land.lhs.true19.if.end31_crit_edge, %land.lhs.true.if.end31_crit_edge, %entry.if.end31_crit_edge
  %flags = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 38
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool32.not = icmp eq i32 %9, 0
  %bt_a2dp_exist = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 11
  %10 = ptrtoint ptr %bt_a2dp_exist to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bt_a2dp_exist, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool34.not = icmp eq i8 %11, 0
  br i1 %tobool34.not, label %lor.lhs.false41, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %if.end31
  %bt_inq_remain = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 5
  %12 = ptrtoint ptr %bt_inq_remain to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bt_inq_remain, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool37.not = icmp eq i8 %13, 0
  br i1 %tobool37.not, label %lor.lhs.false, label %land.lhs.true36.if.then43_crit_edge

land.lhs.true36.if.then43_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43

lor.lhs.false:                                    ; preds = %land.lhs.true36
  %bt_multi_link = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 18
  %14 = ptrtoint ptr %bt_multi_link to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bt_multi_link, align 2, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool39.not = icmp ne i8 %15, 0
  %brmerge = select i1 %tobool39.not, i1 true, i1 %tobool32.not
  br i1 %brmerge, label %lor.lhs.false.if.then43_crit_edge, label %lor.lhs.false.if.else44_crit_edge

lor.lhs.false.if.else44_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else44

lor.lhs.false.if.then43_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43

lor.lhs.false41:                                  ; preds = %if.end31
  br i1 %tobool32.not, label %lor.lhs.false41.if.then43_crit_edge, label %lor.lhs.false41.if.else44_crit_edge

lor.lhs.false41.if.else44_crit_edge:              ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else44

lor.lhs.false41.if.then43_crit_edge:              ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43

if.then43:                                        ; preds = %lor.lhs.false41.if.then43_crit_edge, %lor.lhs.false.if.then43_crit_edge, %land.lhs.true36.if.then43_crit_edge
  %16 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip2, align 4
  %scbd_support.i = getelementptr inbounds %struct.rtw_chip_info, ptr %17, i32 0, i32 68
  %18 = ptrtoint ptr %scbd_support.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %scbd_support.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.then43.if.end45_crit_edge, label %if.end.i

if.then43.if.end45_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.end.i:                                         ; preds = %if.then43
  %score_board.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 87
  %20 = ptrtoint ptr %score_board.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %score_board.i, align 2
  %22 = and i16 %21, -515
  %and28.i = or i16 %22, 2
  call void @__sanitizer_cov_trace_cmp2(i16 %and28.i, i16 %21)
  %cmp.not.i = icmp eq i16 %and28.i, %21
  br i1 %cmp.not.i, label %if.end.i.if.end45_crit_edge, label %if.then36.i

if.end.i.if.end45_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then36.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %score_board.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %and28.i, ptr %score_board.i, align 2
  %24 = or i16 %22, -32766
  br label %if.end45.sink.split

if.else44:                                        ; preds = %lor.lhs.false41.if.else44_crit_edge, %lor.lhs.false.if.else44_crit_edge
  %25 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip2, align 4
  %scbd_support.i175 = getelementptr inbounds %struct.rtw_chip_info, ptr %26, i32 0, i32 68
  %27 = ptrtoint ptr %scbd_support.i175 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %scbd_support.i175, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i176 = icmp eq i8 %28, 0
  br i1 %tobool.not.i176, label %if.else44.if.end45_crit_edge, label %if.end.i180

if.else44.if.end45_crit_edge:                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.end.i180:                                      ; preds = %if.else44
  %score_board.i177 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 87
  %29 = ptrtoint ptr %score_board.i177 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %score_board.i177, align 2
  %or2361.i = or i16 %30, 514
  call void @__sanitizer_cov_trace_cmp2(i16 %or2361.i, i16 %30)
  %cmp.not.i181 = icmp eq i16 %or2361.i, %30
  br i1 %cmp.not.i181, label %if.end.i180.if.end45_crit_edge, label %if.then36.i184

if.end.i180.if.end45_crit_edge:                   ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then36.i184:                                   ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %score_board.i177 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %or2361.i, ptr %score_board.i177, align 2
  %32 = or i16 %30, -32254
  br label %if.end45.sink.split

if.end45.sink.split:                              ; preds = %if.then36.i184, %if.then36.i
  %.sink186 = phi i16 [ %32, %if.then36.i184 ], [ %24, %if.then36.i ]
  %hci.i.i182 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %33 = ptrtoint ptr %hci.i.i182 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hci.i.i182, align 8
  %write16.i.i183 = getelementptr inbounds %struct.rtw_hci_ops, ptr %34, i32 0, i32 15
  %35 = ptrtoint ptr %write16.i.i183 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write16.i.i183, align 4
  tail call void %36(ptr noundef %rtwdev, i32 noundef 170, i16 noundef zeroext %.sink186) #5
  br label %if.end45

if.end45:                                         ; preds = %if.end45.sink.split, %if.end.i180.if.end45_crit_edge, %if.else44.if.end45_crit_edge, %if.end.i.if.end45_crit_edge, %if.then43.if.end45_crit_edge
  %37 = ptrtoint ptr %dm to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %frombool11, ptr %dm, align 4
  %cur_ps_tdma49 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 7
  %38 = ptrtoint ptr %cur_ps_tdma49 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv, ptr %cur_ps_tdma49, align 1
  %share_ant = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %39 = ptrtoint ptr %share_ant to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %share_ant, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool50.not = icmp eq i8 %40, 0
  br i1 %tobool50.not, label %if.else79, label %if.then51

if.then51:                                        ; preds = %if.end45
  %tdma_sant_num = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 77
  %41 = ptrtoint ptr %tdma_sant_num to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %tdma_sant_num, align 2
  %conv53 = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5, i32 %conv53)
  %cmp54 = icmp ult i32 %conv5, %conv53
  br i1 %cmp54, label %if.then56, label %if.then51.if.end112_crit_edge

if.then51.if.end112_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end112

if.then56:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #7
  %tdma_sant = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 88
  br label %if.end112.sink.split

if.else79:                                        ; preds = %if.end45
  %conv81 = add i32 %tcase, 156
  %conv82 = and i32 %conv81, 255
  %tdma_nsant_num = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 78
  %43 = ptrtoint ptr %tdma_nsant_num to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %tdma_nsant_num, align 1
  %conv83 = zext i8 %44 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv82, i32 %conv83)
  %cmp84 = icmp ult i32 %conv82, %conv83
  br i1 %cmp84, label %if.then86, label %if.else79.if.end112_crit_edge

if.else79.if.end112_crit_edge:                    ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end112

if.then86:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #7
  %tdma_nsant = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 89
  br label %if.end112.sink.split

if.end112.sink.split:                             ; preds = %if.then86, %if.then56
  %tdma_sant.sink = phi ptr [ %tdma_sant, %if.then56 ], [ %tdma_nsant, %if.then86 ]
  %conv5.sink = phi i32 [ %conv5, %if.then56 ], [ %conv82, %if.then86 ]
  %45 = ptrtoint ptr %tdma_sant.sink to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tdma_sant.sink, align 4
  %arrayidx = getelementptr %struct.coex_tdma_para, ptr %46, i32 %conv5.sink
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx, align 1
  %arrayidx95 = getelementptr [5 x i8], ptr %arrayidx, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx95, align 1
  %arrayidx100 = getelementptr [5 x i8], ptr %arrayidx, i32 0, i32 2
  %51 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx100, align 1
  %arrayidx105 = getelementptr [5 x i8], ptr %arrayidx, i32 0, i32 3
  %53 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx105, align 1
  %arrayidx110 = getelementptr [5 x i8], ptr %arrayidx, i32 0, i32 4
  %55 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx110, align 1
  tail call fastcc void @rtw_coex_set_tdma(ptr noundef %rtwdev, i8 noundef zeroext %48, i8 noundef zeroext %50, i8 noundef zeroext %52, i8 noundef zeroext %54, i8 noundef zeroext %56)
  br label %if.end112

if.end112:                                        ; preds = %if.end112.sink.split, %if.else79.if.end112_crit_edge, %if.then51.if.end112_crit_edge
  %cond115 = select i1 %spec.select, ptr @.str.164, ptr @.str.165
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.166, ptr noundef nonnull %cond115, i32 noundef %conv5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end112, %if.then24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_coex_tdma_timer_base(ptr noundef %rtwdev, i8 noundef zeroext %type) unnamed_addr #0 align 64 {
entry:
  %para = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %para) #5
  %0 = ptrtoint ptr %para to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 2816, ptr %para, align 2
  %tdma_timer_base = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 60
  %1 = ptrtoint ptr %tdma_timer_base to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tdma_timer_base, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %type)
  %cmp = icmp eq i8 %2, %type
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %wl_beacon_interval = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 74
  %3 = ptrtoint ptr %wl_beacon_interval to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %wl_beacon_interval, align 4
  %5 = ptrtoint ptr %tdma_timer_base to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %type, ptr %tdma_timer_base, align 1
  %conv5 = zext i16 %4 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.167, i32 noundef %conv5) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %type)
  %cmp7 = icmp eq i8 %type, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 120, i16 %4)
  %cmp10 = icmp ult i16 %4, 120
  %or.cond = select i1 %cmp7, i1 %cmp10, i1 false
  br i1 %or.cond, label %if.end.if.end110_crit_edge, label %if.else

if.end.if.end110_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

if.else:                                          ; preds = %if.end
  %6 = add i16 %4, -80
  call void @__sanitizer_cov_trace_const_cmp2(i16 -79, i16 %6)
  %7 = icmp ult i16 %6, -79
  br i1 %7, label %if.else48, label %do.end43

do.end43:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %div.rhs.trunc = trunc i16 %4 to i8
  %div155 = udiv i8 100, %div.rhs.trunc
  %rem156.rhs.trunc = trunc i16 %4 to i8
  %rem156157 = urem i8 100, %rem156.rhs.trunc
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rem156157)
  %cmp25.not = icmp ne i8 %rem156157, 0
  %inc = zext i1 %cmp25.not to i8
  %spec.select = add nuw nsw i8 %div155, %inc
  %8 = and i8 %spec.select, 63
  br label %if.end110

if.else48:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 179, i16 %4)
  %cmp50 = icmp ugt i16 %4, 179
  br i1 %cmp50, label %do.end83, label %if.else48.if.end110_crit_edge

if.else48.if.end110_crit_edge:                    ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

do.end83:                                         ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #7
  %.frozen = freeze i16 %4
  %div54 = udiv i16 %.frozen, 100
  %9 = mul i16 %div54, 100
  %rem57154.decomposed = sub i16 %.frozen, %9
  call void @__sanitizer_cov_trace_const_cmp2(i16 81, i16 %rem57154.decomposed)
  %cmp58 = icmp ult i16 %rem57154.decomposed, 81
  %dec = sext i1 %cmp58 to i8
  %conv55 = trunc i16 %div54 to i8
  %spec.select151 = add i8 %dec, %conv55
  %10 = and i8 %spec.select151, 63
  %11 = or i8 %10, -128
  br label %if.end110

if.end110:                                        ; preds = %do.end83, %if.else48.if.end110_crit_edge, %do.end43, %if.end.if.end110_crit_edge
  %.sink = phi i8 [ %8, %do.end43 ], [ %11, %do.end83 ], [ -63, %if.end.if.end110_crit_edge ], [ 1, %if.else48.if.end110_crit_edge ]
  %arrayidx47 = getelementptr inbounds [2 x i8], ptr %para, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.sink, ptr %arrayidx47, align 1
  %13 = ptrtoint ptr %para to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %para, align 2
  %arrayidx112 = getelementptr inbounds [2 x i8], ptr %para, i32 0, i32 1
  call void @rtw_fw_bt_wifi_control(ptr noundef %rtwdev, i8 noundef zeroext %14, ptr noundef %arrayidx112) #5
  %15 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx112, align 1
  %conv114 = zext i8 %16 to i32
  call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.168, ptr noundef nonnull @__func__.rtw_coex_tdma_timer_base, i32 noundef %conv114) #5
  %17 = ptrtoint ptr %tdma_timer_base to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tdma_timer_base, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %18)
  %cmp117 = icmp eq i8 %18, 3
  br i1 %cmp117, label %if.then119, label %if.end110.cleanup_crit_edge

if.end110.cleanup_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then119:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @rtw_coex_wl_ccklock_action(ptr noundef %rtwdev)
  br label %cleanup

cleanup:                                          ; preds = %if.then119, %if.end110.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %para) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_coex_set_tdma(ptr noundef %rtwdev, i8 noundef zeroext %byte1, i8 noundef zeroext %byte2, i8 noundef zeroext %byte3, i8 noundef zeroext %byte4, i8 noundef zeroext %byte5) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv19 = zext i8 %byte1 to i32
  %0 = and i32 %conv19, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %0)
  %1 = icmp eq i32 %0, 16
  br i1 %1, label %if.then26, label %if.else32

if.then26:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %chip2 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %2 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip2, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.170, ptr noundef nonnull @__func__.rtw_coex_set_tdma, i32 noundef %conv19) #5
  %pstdma_type = getelementptr inbounds %struct.rtw_chip_info, ptr %3, i32 0, i32 71
  %4 = ptrtoint ptr %pstdma_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pstdma_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  %. = select i1 %cmp, i8 2, i8 1
  tail call fastcc void @rtw_coex_power_save_state(ptr noundef %rtwdev, i8 noundef zeroext %.)
  br label %if.end35

if.else32:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.171, ptr noundef nonnull @__func__.rtw_coex_set_tdma, i32 noundef %conv19) #5
  %wl_force_lps_ctrl.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 34
  %6 = ptrtoint ptr %wl_force_lps_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %wl_force_lps_ctrl.i, align 2
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.172, ptr noundef nonnull @__func__.rtw_coex_power_save_state) #5
  tail call void @rtw_leave_lps(ptr noundef %rtwdev) #5
  br label %if.end35

if.end35:                                         ; preds = %if.else32, %if.then26
  %ps_tdma_para = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 9
  %7 = ptrtoint ptr %ps_tdma_para to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %byte1, ptr %ps_tdma_para, align 1
  %arrayidx37 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 9, i32 1
  %8 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %byte2, ptr %arrayidx37, align 1
  %arrayidx39 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 9, i32 2
  %9 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %byte3, ptr %arrayidx39, align 1
  %arrayidx41 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 9, i32 3
  %10 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %byte4, ptr %arrayidx41, align 1
  %arrayidx43 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 9, i32 4
  %11 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %byte5, ptr %arrayidx43, align 1
  tail call void @rtw_fw_coex_tdma_type(ptr noundef %rtwdev, i8 noundef zeroext %byte1, i8 noundef zeroext %byte2, i8 noundef zeroext %byte3, i8 noundef zeroext %byte4, i8 noundef zeroext %byte5) #5
  %12 = and i8 %byte1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool46.not = icmp eq i8 %12, 0
  %wl_slot_toggle49 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 46
  br i1 %tobool46.not, label %if.else48, label %if.then47

if.then47:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %wl_slot_toggle49 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %wl_slot_toggle49, align 2
  %wl_slot_toggle_change = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 47
  %14 = ptrtoint ptr %wl_slot_toggle_change to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %wl_slot_toggle_change, align 1
  br label %if.end53

if.else48:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %wl_slot_toggle49 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %wl_slot_toggle49, align 2, !range !601
  %wl_slot_toggle_change51 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 47
  %17 = ptrtoint ptr %wl_slot_toggle_change51 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %wl_slot_toggle_change51, align 1
  store i8 0, ptr %wl_slot_toggle49, align 2
  br label %if.end53

if.end53:                                         ; preds = %if.else48, %if.then47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_coex_power_save_state(ptr noundef %rtwdev, i8 noundef zeroext %ps_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %ps_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.282)
  switch i8 %ps_type, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 2, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %wl_force_lps_ctrl = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 34
  %1 = ptrtoint ptr %wl_force_lps_ctrl to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %wl_force_lps_ctrl, align 2
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.172, ptr noundef nonnull @__func__.rtw_coex_power_save_state) #5
  tail call void @rtw_leave_lps(ptr noundef %rtwdev) #5
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %lps_conf = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 30
  %2 = ptrtoint ptr %lps_conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lps_conf, align 4
  %conv = trunc i32 %3 to i8
  %wl_force_lps_ctrl4 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 34
  %4 = ptrtoint ptr %wl_force_lps_ctrl4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %wl_force_lps_ctrl4, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool.not = icmp eq i8 %conv, 0
  br i1 %tobool.not, label %sw.bb3.if.end_crit_edge, label %if.then

sw.bb3.if.end_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rtw_fw_coex_tdma_type(ptr noundef %rtwdev, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb3.if.end_crit_edge
  tail call void @rtw_leave_lps(ptr noundef %rtwdev) #5
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.173, ptr noundef nonnull @__func__.rtw_coex_power_save_state) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_fw_coex_tdma_type(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_leave_lps(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_coex_set_rf_para(ptr noundef %rtwdev, [1 x i32] %para.coerce) unnamed_addr #0 align 64 {
entry:
  %req.i.i = alloca %struct.rtw_coex_info_req, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %freerun = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 6
  %0 = ptrtoint ptr %freerun to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %freerun, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cnt_wl = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 90
  %2 = ptrtoint ptr %cnt_wl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cnt_wl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp = icmp ult i32 %3, 6
  %spec.select = select i1 %cmp, i32 3, i32 0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %offset.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %para.coerce.fca.0.extract = extractvalue [1 x i32] %para.coerce, 0
  %para.sroa.4.0.extract.trunc = trunc i32 %para.coerce.fca.0.extract to i8
  %para.sroa.2.0.extract.shift = lshr i32 %para.coerce.fca.0.extract, 16
  %para.sroa.0.0.extract.shift = lshr i32 %para.coerce.fca.0.extract, 24
  %para.sroa.0.0.extract.trunc = trunc i32 %para.sroa.0.0.extract.shift to i8
  %chip1.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %4 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip1.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %coex_set_wl_tx_power.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %7, i32 0, i32 32
  %8 = ptrtoint ptr %coex_set_wl_tx_power.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %coex_set_wl_tx_power.i, align 4
  tail call void %9(ptr noundef %rtwdev, i8 noundef zeroext %para.sroa.0.0.extract.trunc) #5
  %add = add nuw nsw i32 %offset.0, %para.sroa.2.0.extract.shift
  %conv3 = trunc i32 %add to i8
  %cur_bt_pwr_lvl.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 10
  %10 = ptrtoint ptr %cur_bt_pwr_lvl.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cur_bt_pwr_lvl.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %conv3)
  %cmp.i = icmp eq i8 %11, %conv3
  br i1 %cmp.i, label %if.end.rtw_coex_set_bt_tx_power.exit_crit_edge, label %if.end.i

if.end.rtw_coex_set_bt_tx_power.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_set_bt_tx_power.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %cur_bt_pwr_lvl.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv3, ptr %cur_bt_pwr_lvl.i, align 2
  tail call void @rtw_fw_force_bt_tx_power(ptr noundef %rtwdev, i8 noundef zeroext %conv3) #5
  br label %rtw_coex_set_bt_tx_power.exit

rtw_coex_set_bt_tx_power.exit:                    ; preds = %if.end.i, %if.end.rtw_coex_set_bt_tx_power.exit_crit_edge
  %13 = and i32 %para.coerce.fca.0.extract, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4 = icmp ne i32 %13, 0
  %14 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip1.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %coex_set_wl_rx_gain.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %17, i32 0, i32 33
  %18 = ptrtoint ptr %coex_set_wl_rx_gain.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %coex_set_wl_rx_gain.i, align 4
  tail call void %19(ptr noundef %rtwdev, i1 noundef zeroext %tobool4) #5
  %conv.i = and i32 %para.coerce.fca.0.extract, 255
  %cur_bt_lna_lvl.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 11
  %20 = ptrtoint ptr %cur_bt_lna_lvl.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cur_bt_lna_lvl.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %para.sroa.4.0.extract.trunc)
  %cmp.i11 = icmp eq i8 %21, %para.sroa.4.0.extract.trunc
  br i1 %cmp.i11, label %rtw_coex_set_bt_tx_power.exit.rtw_coex_set_bt_rx_gain.exit_crit_edge, label %if.end.i12

rtw_coex_set_bt_tx_power.exit.rtw_coex_set_bt_rx_gain.exit_crit_edge: ; preds = %rtw_coex_set_bt_tx_power.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_set_bt_rx_gain.exit

if.end.i12:                                       ; preds = %rtw_coex_set_bt_tx_power.exit
  %22 = ptrtoint ptr %cur_bt_lna_lvl.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %para.sroa.4.0.extract.trunc, ptr %cur_bt_lna_lvl.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %para.sroa.4.0.extract.trunc)
  %cmp6.i = icmp ult i8 %para.sroa.4.0.extract.trunc, 7
  br i1 %cmp6.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.end.i12
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %req.i.i) #5
  %23 = call ptr @memset(ptr %req.i.i, i32 0, i32 5)
  %op_code.i.i = getelementptr inbounds %struct.rtw_coex_info_req, ptr %req.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %op_code.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 50, ptr %op_code.i.i, align 1
  %para1.i.i = getelementptr inbounds %struct.rtw_coex_info_req, ptr %req.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %para1.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %para.sroa.4.0.extract.trunc, ptr %para1.i.i, align 1
  %call.i.i = call fastcc ptr @rtw_coex_info_request(ptr noundef %rtwdev, ptr noundef nonnull %req.i.i) #5
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then8.i.rtw_coex_set_lna_constrain_level.exit.i_crit_edge, label %if.end.i.i

if.then8.i.rtw_coex_set_lna_constrain_level.exit.i_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_set_lna_constrain_level.exit.i

if.end.i.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i, i32 noundef 1) #5
  br label %rtw_coex_set_lna_constrain_level.exit.i

rtw_coex_set_lna_constrain_level.exit.i:          ; preds = %if.end.i.i, %if.then8.i.rtw_coex_set_lna_constrain_level.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %req.i.i) #5
  %26 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chip1.i, align 4
  %scbd_support.i.i = getelementptr inbounds %struct.rtw_chip_info, ptr %27, i32 0, i32 68
  %28 = ptrtoint ptr %scbd_support.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %scbd_support.i.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i21.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i21.i, label %rtw_coex_set_lna_constrain_level.exit.i.if.end9.i_crit_edge, label %if.end.i22.i

rtw_coex_set_lna_constrain_level.exit.i.if.end9.i_crit_edge: ; preds = %rtw_coex_set_lna_constrain_level.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.end.i22.i:                                     ; preds = %rtw_coex_set_lna_constrain_level.exit.i
  %score_board.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 87
  %30 = ptrtoint ptr %score_board.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %score_board.i.i, align 2
  %or2361.i.i = or i16 %31, 18
  call void @__sanitizer_cov_trace_cmp2(i16 %or2361.i.i, i16 %31)
  %cmp.not.i.i = icmp eq i16 %or2361.i.i, %31
  br i1 %cmp.not.i.i, label %if.end.i22.i.if.end9.i_crit_edge, label %if.then36.i.i

if.end.i22.i.if.end9.i_crit_edge:                 ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then36.i.i:                                    ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %score_board.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %or2361.i.i, ptr %score_board.i.i, align 2
  %33 = or i16 %31, -32750
  %hci.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %34 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hci.i.i.i, align 8
  %write16.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %35, i32 0, i32 15
  %36 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write16.i.i.i, align 4
  call void %37(ptr noundef %rtwdev, i32 noundef 170, i16 noundef zeroext %33) #5
  br label %if.end9.i

if.else.i:                                        ; preds = %if.end.i12
  %38 = ptrtoint ptr %chip1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chip1.i, align 4
  %scbd_support.i24.i = getelementptr inbounds %struct.rtw_chip_info, ptr %39, i32 0, i32 68
  %40 = ptrtoint ptr %scbd_support.i24.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %scbd_support.i24.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i25.i = icmp eq i8 %41, 0
  br i1 %tobool.not.i25.i, label %if.else.i.if.end9.i_crit_edge, label %if.end.i29.i

if.else.i.if.end9.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.end.i29.i:                                     ; preds = %if.else.i
  %score_board.i26.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 87
  %42 = ptrtoint ptr %score_board.i26.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %score_board.i26.i, align 2
  %44 = and i16 %43, -19
  %and28.i.i = or i16 %44, 2
  call void @__sanitizer_cov_trace_cmp2(i16 %and28.i.i, i16 %43)
  %cmp.not.i30.i = icmp eq i16 %and28.i.i, %43
  br i1 %cmp.not.i30.i, label %if.end.i29.i.if.end9.i_crit_edge, label %if.then36.i33.i

if.end.i29.i.if.end9.i_crit_edge:                 ; preds = %if.end.i29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then36.i33.i:                                  ; preds = %if.end.i29.i
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %score_board.i26.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %and28.i.i, ptr %score_board.i26.i, align 2
  %46 = or i16 %44, -32766
  %hci.i.i31.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %47 = ptrtoint ptr %hci.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hci.i.i31.i, align 8
  %write16.i.i32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %48, i32 0, i32 15
  %49 = ptrtoint ptr %write16.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write16.i.i32.i, align 4
  tail call void %50(ptr noundef %rtwdev, i32 noundef 170, i16 noundef zeroext %46) #5
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then36.i33.i, %if.end.i29.i.if.end9.i_crit_edge, %if.else.i.if.end9.i_crit_edge, %if.then36.i.i, %if.end.i22.i.if.end9.i_crit_edge, %rtw_coex_set_lna_constrain_level.exit.i.if.end9.i_crit_edge
  call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.174, ptr noundef nonnull @__func__.rtw_coex_set_bt_rx_gain, i32 noundef %conv.i) #5
  br label %rtw_coex_set_bt_rx_gain.exit

rtw_coex_set_bt_rx_gain.exit:                     ; preds = %if.end9.i, %rtw_coex_set_bt_tx_power.exit.rtw_coex_set_bt_rx_gain.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_fw_force_bt_tx_power(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rtw_coex_info_request(ptr noundef %rtwdev, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %coex1 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %coex1, i32 noundef 0) #5
  tail call void @rtw_fw_query_bt_mp_info(ptr noundef %rtwdev, ptr noundef %req) #5
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 614) #5
  %queue = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 1
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %1, %queue
  br i1 %cmp.i.not, label %if.then12, label %entry.if.end47_crit_edge

entry.if.end47_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then12:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %wait = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 2
  %call1586 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %queue, align 4
  %cmp.i7887.not = icmp eq ptr %4, %queue
  br i1 %cmp.i7887.not, label %if.then12.cleanup_crit_edge, label %if.end40.thread

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  br label %cleanup

if.end40.thread:                                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  br label %if.end47

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then12.cleanup_crit_edge
  %__ret13.188 = phi i32 [ %__ret13.1, %cleanup.cleanup_crit_edge ], [ 1, %if.then12.cleanup_crit_edge ]
  %call37 = call i32 @schedule_timeout(i32 noundef %__ret13.188) #5
  %call15 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %5 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %queue, align 4
  %cmp.i78 = icmp ne ptr %6, %queue
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool24.not = icmp eq i32 %call37, 0
  %7 = select i1 %cmp.i78, i1 %tobool24.not, i1 false
  %__ret13.1 = select i1 %7, i32 1, i32 %call37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.1)
  %tobool30.not = icmp eq i32 %__ret13.1, 0
  %8 = select i1 %cmp.i78, i1 true, i1 %tobool30.not
  br i1 %8, label %if.end40, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end40:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.1)
  %phi.cmp = icmp eq i32 %__ret13.1, 0
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  br i1 %phi.cmp, label %if.end40.out.sink.split_crit_edge, label %if.end40.if.end47_crit_edge

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.end40.out.sink.split_crit_edge:                ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

if.end47:                                         ; preds = %if.end40.if.end47_crit_edge, %if.end40.thread, %entry.if.end47_crit_edge
  %call49 = call ptr @skb_dequeue(ptr noundef %queue) #5
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %if.end47.out.sink.split_crit_edge, label %if.end47.out_crit_edge

if.end47.out_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end47.out.sink.split_crit_edge:                ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.end47.out.sink.split_crit_edge, %if.end40.out.sink.split_crit_edge
  %.str.178.sink = phi ptr [ @.str.175, %if.end40.out.sink.split_crit_edge ], [ @.str.178, %if.end47.out.sink.split_crit_edge ]
  %dev55 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %9 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev55, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull %.str.178.sink) #8
  br label %out

out:                                              ; preds = %out.sink.split, %if.end47.out_crit_edge
  %skb_resp.0 = phi ptr [ %call49, %if.end47.out_crit_edge ], [ null, %out.sink.split ]
  call void @mutex_unlock(ptr noundef %coex1) #5
  ret ptr %skb_resp.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_fw_query_bt_mp_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_coex_action_wl_under5g(ptr noundef %rtwdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip2 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip2, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rtw_coex_action_wl_under5g) #5
  tail call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext true, i8 noundef zeroext 4)
  %wl_rf_para_rx = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 91
  %2 = ptrtoint ptr %wl_rf_para_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wl_rf_para_rx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %.unpack = load i32, ptr %3, align 1
  %5 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  tail call fastcc void @rtw_coex_set_rf_para(ptr noundef %rtwdev, [1 x i32] %5)
  %6 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip2, align 4
  %scbd_support.i = getelementptr inbounds %struct.rtw_chip_info, ptr %7, i32 0, i32 68
  %8 = ptrtoint ptr %scbd_support.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %scbd_support.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %entry.rtw_coex_write_scbd.exit_crit_edge, label %if.end.i

entry.rtw_coex_write_scbd.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_write_scbd.exit

if.end.i:                                         ; preds = %entry
  %score_board.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 87
  %10 = ptrtoint ptr %score_board.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %score_board.i, align 2
  %new_scbd10_def.i = getelementptr inbounds %struct.rtw_chip_info, ptr %7, i32 0, i32 69
  %12 = ptrtoint ptr %new_scbd10_def.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %new_scbd10_def.i, align 2, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not.i.not = icmp eq i8 %13, 0
  %14 = and i16 %11, -1027
  %and28.i = or i16 %14, 2
  %15 = or i16 %11, 1026
  %val.0.i = select i1 %tobool5.not.i.not, i16 %15, i16 %and28.i
  call void @__sanitizer_cov_trace_cmp2(i16 %val.0.i, i16 %11)
  %cmp.not.i = icmp eq i16 %val.0.i, %11
  br i1 %cmp.not.i, label %if.end.i.rtw_coex_write_scbd.exit_crit_edge, label %if.then36.i

if.end.i.rtw_coex_write_scbd.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_write_scbd.exit

if.then36.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %score_board.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %val.0.i, ptr %score_board.i, align 2
  %17 = or i16 %val.0.i, -32768
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %18 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hci.i.i, align 8
  %write16.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write16.i.i, align 4
  tail call void %21(ptr noundef %rtwdev, i32 noundef 170, i16 noundef zeroext %17) #5
  br label %rtw_coex_write_scbd.exit

rtw_coex_write_scbd.exit:                         ; preds = %if.then36.i, %if.end.i.rtw_coex_write_scbd.exit_crit_edge, %entry.rtw_coex_write_scbd.exit_crit_edge
  %share_ant = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %22 = ptrtoint ptr %share_ant to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %share_ant, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not = icmp eq i8 %23, 0
  %. = select i1 %tobool.not, i8 100, i8 0
  tail call fastcc void @rtw_coex_table(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext %.)
  %conv = zext i8 %. to i32
  tail call fastcc void @rtw_coex_tdma(ptr noundef %rtwdev, i1 noundef zeroext false, i32 noundef %conv)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_coex_action_wl_not_connected(ptr noundef %rtwdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip2 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip2, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rtw_coex_action_wl_not_connected) #5
  tail call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext 3)
  %wl_rf_para_rx = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 91
  %2 = ptrtoint ptr %wl_rf_para_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wl_rf_para_rx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %.unpack = load i32, ptr %3, align 1
  %5 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  tail call fastcc void @rtw_coex_set_rf_para(ptr noundef %rtwdev, [1 x i32] %5)
  %share_ant = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %6 = ptrtoint ptr %share_ant to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %share_ant, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %. = select i1 %tobool.not, i8 100, i8 1
  %.9 = select i1 %tobool.not, i32 100, i32 0
  tail call fastcc void @rtw_coex_table(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext %.)
  tail call fastcc void @rtw_coex_tdma(ptr noundef %rtwdev, i1 noundef zeroext false, i32 noundef %.9)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_coex_action_wl_only(ptr noundef %rtwdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip2 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip2, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rtw_coex_action_wl_only) #5
  tail call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext 3)
  %wl_rf_para_rx = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 91
  %2 = ptrtoint ptr %wl_rf_para_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wl_rf_para_rx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %.unpack = load i32, ptr %3, align 1
  %5 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  tail call fastcc void @rtw_coex_set_rf_para(ptr noundef %rtwdev, [1 x i32] %5)
  %share_ant = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %6 = ptrtoint ptr %share_ant to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %share_ant, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %. = select i1 %tobool.not, i8 100, i8 2
  %.9 = select i1 %tobool.not, i32 100, i32 0
  tail call fastcc void @rtw_coex_table(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext %.)
  tail call fastcc void @rtw_coex_tdma(ptr noundef %rtwdev, i1 noundef zeroext false, i32 noundef %.9)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_coex_action_wl_native_lps(ptr noundef %rtwdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %under_5g = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 3
  %0 = ptrtoint ptr %under_5g to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %under_5g, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %chip3 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %2 = ptrtoint ptr %chip3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip3, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rtw_coex_action_wl_native_lps) #5
  tail call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext 3)
  %wl_rf_para_rx = getelementptr inbounds %struct.rtw_chip_info, ptr %3, i32 0, i32 91
  %4 = ptrtoint ptr %wl_rf_para_rx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wl_rf_para_rx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %.unpack = load i32, ptr %5, align 1
  %7 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  tail call fastcc void @rtw_coex_set_rf_para(ptr noundef %rtwdev, [1 x i32] %7)
  %share_ant = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %8 = ptrtoint ptr %share_ant to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %share_ant, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  %. = select i1 %tobool4.not, i8 100, i8 28
  %.18 = select i1 %tobool4.not, i32 100, i32 0
  tail call fastcc void @rtw_coex_table(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext %.)
  tail call fastcc void @rtw_coex_tdma(ptr noundef %rtwdev, i1 noundef zeroext false, i32 noundef %.18)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_coex_action_bt_whql_test(ptr noundef %rtwdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip2 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip2, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rtw_coex_action_bt_whql_test) #5
  tail call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext 3)
  %wl_rf_para_rx = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 91
  %2 = ptrtoint ptr %wl_rf_para_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wl_rf_para_rx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %.unpack = load i32, ptr %3, align 1
  %5 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  tail call fastcc void @rtw_coex_set_rf_para(ptr noundef %rtwdev, [1 x i32] %5)
  %share_ant = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %6 = ptrtoint ptr %share_ant to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %share_ant, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %. = select i1 %tobool.not, i8 100, i8 2
  %.9 = select i1 %tobool.not, i32 100, i32 0
  tail call fastcc void @rtw_coex_table(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext %.)
  tail call fastcc void @rtw_coex_tdma(ptr noundef %rtwdev, i1 noundef zeroext false, i32 noundef %.9)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_coex_action_bt_relink(ptr noundef %rtwdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip3 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip3, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rtw_coex_action_bt_relink) #5
  tail call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext 3)
  %wl_rf_para_rx = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 91
  %2 = ptrtoint ptr %wl_rf_para_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wl_rf_para_rx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %.unpack = load i32, ptr %3, align 1
  %5 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  tail call fastcc void @rtw_coex_set_rf_para(ptr noundef %rtwdev, [1 x i32] %5)
  %share_ant = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %6 = ptrtoint ptr %share_ant to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %share_ant, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %wl_gl_busy12 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 35
  %8 = ptrtoint ptr %wl_gl_busy12 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %wl_gl_busy12, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool13.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.else11, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool13.not, label %if.then.if.end17_crit_edge, label %if.then5

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then5:                                         ; preds = %if.then
  %bt_hid_exist = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 12
  %10 = ptrtoint ptr %bt_hid_exist to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bt_hid_exist, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %if.then5.if.else_crit_edge, label %land.lhs.true

if.then5.if.else_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.then5
  %bt_profile_num = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 61
  %12 = ptrtoint ptr %bt_profile_num to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bt_profile_num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp = icmp eq i8 %13, 1
  br i1 %cmp, label %land.lhs.true.if.end17_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then5.if.else_crit_edge
  br label %if.end17

if.else11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %. = select i1 %tobool13.not, i8 100, i8 115
  br label %if.end17

if.end17:                                         ; preds = %if.else11, %if.else, %land.lhs.true.if.end17_crit_edge, %if.then.if.end17_crit_edge
  %table_case.1 = phi i8 [ 26, %if.else ], [ %., %if.else11 ], [ 26, %land.lhs.true.if.end17_crit_edge ], [ 1, %if.then.if.end17_crit_edge ]
  %tdma_case.0 = phi i32 [ 20, %if.else ], [ 100, %if.else11 ], [ 20, %land.lhs.true.if.end17_crit_edge ], [ 0, %if.then.if.end17_crit_edge ]
  %slot_type.0 = phi i32 [ 0, %if.else ], [ 0, %if.else11 ], [ 256, %land.lhs.true.if.end17_crit_edge ], [ 0, %if.then.if.end17_crit_edge ]
  tail call fastcc void @rtw_coex_table(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext %table_case.1)
  %or = or i32 %slot_type.0, %tdma_case.0
  tail call fastcc void @rtw_coex_tdma(ptr noundef %rtwdev, i1 noundef zeroext false, i32 noundef %or)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_coex_action_bt_inquiry(ptr noundef %rtwdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip3 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip3, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rtw_coex_action_bt_inquiry) #5
  tail call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext 3)
  %wl_rf_para_rx = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 91
  %2 = ptrtoint ptr %wl_rf_para_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wl_rf_para_rx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %.unpack = load i32, ptr %3, align 1
  %5 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  tail call fastcc void @rtw_coex_set_rf_para(ptr noundef %rtwdev, [1 x i32] %5)
  %wl_linkscan_proc = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 36
  %6 = ptrtoint ptr %wl_linkscan_proc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %wl_linkscan_proc, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false:                                    ; preds = %entry
  %wl_hi_pri_task1 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 32
  %8 = ptrtoint ptr %wl_hi_pri_task1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %wl_hi_pri_task1, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %wl_hi_pri_task2 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 33
  %10 = ptrtoint ptr %wl_hi_pri_task2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %wl_hi_pri_task2, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %if.end.thread, label %lor.lhs.false5.if.end_crit_edge

lor.lhs.false5.if.end_crit_edge:                  ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false5.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %share_ant = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %12 = ptrtoint ptr %share_ant to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %share_ant, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not = icmp eq i8 %13, 0
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.187) #5
  %bt_profile_num51 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 61
  %14 = ptrtoint ptr %bt_profile_num51 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bt_profile_num51, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp53.not = icmp eq i8 %15, 0
  br i1 %tobool7.not, label %if.then50, label %if.then10

if.end.thread:                                    ; preds = %lor.lhs.false5
  %share_ant123 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %16 = ptrtoint ptr %share_ant123 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %share_ant123, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool7.not124 = icmp eq i8 %17, 0
  %wl_gl_busy69 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 35
  %18 = ptrtoint ptr %wl_gl_busy69 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %wl_gl_busy69, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool70.not = icmp eq i8 %19, 0
  br i1 %tobool7.not124, label %if.else68, label %if.else23

if.then10:                                        ; preds = %if.end
  br i1 %cmp53.not, label %if.else, label %if.then10.if.end80_crit_edge

if.then10.if.end80_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.else:                                          ; preds = %if.then10
  %wl_hi_pri_task113 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 32
  %20 = ptrtoint ptr %wl_hi_pri_task113 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %wl_hi_pri_task113, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool14.not = icmp eq i8 %21, 0
  br i1 %tobool14.not, label %if.else16, label %if.else.if.end80_crit_edge

if.else.if.end80_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.else16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %bt_page = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 7
  %22 = ptrtoint ptr %bt_page to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bt_page, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool17.not = icmp eq i8 %23, 0
  %. = select i1 %tobool17.not, i32 8, i32 9
  br label %if.end80

if.else23:                                        ; preds = %if.end.thread
  br i1 %tobool70.not, label %if.else41, label %if.then25

if.then25:                                        ; preds = %if.else23
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.188) #5
  %bt_profile_num26 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 61
  %24 = ptrtoint ptr %bt_profile_num26 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bt_profile_num26, align 4
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.283)
  switch i8 %25, label %if.then25.if.else38_crit_edge [
    i8 0, label %if.then25.if.end80_crit_edge
    i8 1, label %land.lhs.true
  ]

if.then25.if.end80_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.then25.if.else38_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else38

land.lhs.true:                                    ; preds = %if.then25
  %bt_a2dp_exist = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 11
  %27 = ptrtoint ptr %bt_a2dp_exist to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bt_a2dp_exist, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool36.not = icmp eq i8 %28, 0
  br i1 %tobool36.not, label %land.lhs.true.if.end80_crit_edge, label %land.lhs.true.if.else38_crit_edge

land.lhs.true.if.else38_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else38

land.lhs.true.if.end80_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.else38:                                        ; preds = %land.lhs.true.if.else38_crit_edge, %if.then25.if.else38_crit_edge
  br label %if.end80

if.else41:                                        ; preds = %if.else23
  %wl_connected = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 40
  %29 = ptrtoint ptr %wl_connected to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %wl_connected, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool42.not = icmp eq i8 %30, 0
  br i1 %tobool42.not, label %if.else44, label %if.then43

if.then43:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.189) #5
  br label %if.end80

if.else44:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.190) #5
  br label %if.end80

if.then50:                                        ; preds = %if.end
  br i1 %cmp53.not, label %if.else56, label %if.then50.if.end80_crit_edge

if.then50.if.end80_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.else56:                                        ; preds = %if.then50
  %wl_hi_pri_task157 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 32
  %31 = ptrtoint ptr %wl_hi_pri_task157 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %wl_hi_pri_task157, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool58.not = icmp eq i8 %32, 0
  br i1 %tobool58.not, label %if.else60, label %if.else56.if.end80_crit_edge

if.else56.if.end80_crit_edge:                     ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.else60:                                        ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #7
  %bt_page61 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 7
  %33 = ptrtoint ptr %bt_page61 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bt_page61, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool62.not = icmp eq i8 %34, 0
  %.121 = select i1 %tobool62.not, i32 108, i32 109
  br label %if.end80

if.else68:                                        ; preds = %if.end.thread
  br i1 %tobool70.not, label %if.else72, label %if.then71

if.then71:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.188) #5
  br label %if.end80

if.else72:                                        ; preds = %if.else68
  %wl_connected73 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 40
  %35 = ptrtoint ptr %wl_connected73 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %wl_connected73, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool74.not = icmp eq i8 %36, 0
  br i1 %tobool74.not, label %if.else76, label %if.then75

if.then75:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.191) #5
  br label %if.end80

if.else76:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.192) #5
  br label %if.end80

if.end80:                                         ; preds = %if.else76, %if.then75, %if.then71, %if.else60, %if.else56.if.end80_crit_edge, %if.then50.if.end80_crit_edge, %if.else44, %if.then43, %if.else38, %land.lhs.true.if.end80_crit_edge, %if.then25.if.end80_crit_edge, %if.else16, %if.else.if.end80_crit_edge, %if.then10.if.end80_crit_edge
  %wl_hi_pri.0.off0126 = phi i32 [ 0, %if.else38 ], [ 0, %if.then43 ], [ 0, %if.else44 ], [ 0, %if.then71 ], [ 0, %if.then75 ], [ 0, %if.else76 ], [ 1, %if.then10.if.end80_crit_edge ], [ 1, %if.else.if.end80_crit_edge ], [ 1, %if.else16 ], [ 0, %if.then25.if.end80_crit_edge ], [ 0, %land.lhs.true.if.end80_crit_edge ], [ 1, %if.then50.if.end80_crit_edge ], [ 1, %if.else56.if.end80_crit_edge ], [ 1, %if.else60 ]
  %table_case.0 = phi i8 [ 12, %if.else38 ], [ 9, %if.then43 ], [ 1, %if.else44 ], [ 114, %if.then71 ], [ 101, %if.then75 ], [ 101, %if.else76 ], [ 15, %if.then10.if.end80_crit_edge ], [ 15, %if.else.if.end80_crit_edge ], [ 15, %if.else16 ], [ 12, %if.then25.if.end80_crit_edge ], [ 12, %land.lhs.true.if.end80_crit_edge ], [ 114, %if.then50.if.end80_crit_edge ], [ 114, %if.else56.if.end80_crit_edge ], [ 114, %if.else60 ]
  %tdma_case.0 = phi i32 [ 26, %if.else38 ], [ 27, %if.then43 ], [ 0, %if.else44 ], [ 121, %if.then71 ], [ 100, %if.then75 ], [ 100, %if.else76 ], [ 10, %if.then10.if.end80_crit_edge ], [ 6, %if.else.if.end80_crit_edge ], [ %., %if.else16 ], [ 18, %if.then25.if.end80_crit_edge ], [ 20, %land.lhs.true.if.end80_crit_edge ], [ 110, %if.then50.if.end80_crit_edge ], [ 106, %if.else56.if.end80_crit_edge ], [ %.121, %if.else60 ]
  %slot_type.0 = phi i32 [ 256, %if.else38 ], [ 0, %if.then43 ], [ 0, %if.else44 ], [ 0, %if.then71 ], [ 0, %if.then75 ], [ 0, %if.else76 ], [ 0, %if.then10.if.end80_crit_edge ], [ 0, %if.else.if.end80_crit_edge ], [ 0, %if.else16 ], [ 0, %if.then25.if.end80_crit_edge ], [ 256, %land.lhs.true.if.end80_crit_edge ], [ 0, %if.then50.if.end80_crit_edge ], [ 0, %if.else56.if.end80_crit_edge ], [ 0, %if.else60 ]
  %bt_page83 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 7
  %37 = ptrtoint ptr %bt_page83 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bt_page83, align 1, !range !601
  %39 = zext i8 %38 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.193, i32 noundef %wl_hi_pri.0.off0126, i32 noundef %39) #5
  tail call fastcc void @rtw_coex_table(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext %table_case.0)
  %or = or i32 %slot_type.0, %tdma_case.0
  tail call fastcc void @rtw_coex_tdma(ptr noundef %rtwdev, i1 noundef zeroext false, i32 noundef %or)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_coex_action_bt_idle(ptr noundef %rtwdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip3 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip3, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rtw_coex_action_bt_idle) #5
  %wl_rf_para_rx = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 91
  %2 = ptrtoint ptr %wl_rf_para_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wl_rf_para_rx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %.unpack = load i32, ptr %3, align 1
  %5 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  tail call fastcc void @rtw_coex_set_rf_para(ptr noundef %rtwdev, [1 x i32] %5)
  %ant_switch_with_bt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 11, i32 2
  %6 = ptrtoint ptr %ant_switch_with_bt to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ant_switch_with_bt, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end33_crit_edge, label %land.lhs.true

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

land.lhs.true:                                    ; preds = %entry
  %bt_status = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 13
  %8 = ptrtoint ptr %bt_status to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bt_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then:                                          ; preds = %land.lhs.true
  %share_ant = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %10 = ptrtoint ptr %share_ant to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %share_ant, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool5.not = icmp eq i8 %11, 0
  br i1 %tobool5.not, label %if.then.if.then32_crit_edge, label %land.lhs.true7

if.then.if.then32_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then32

land.lhs.true7:                                   ; preds = %if.then
  %arrayidx8 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 5, i32 3
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx8, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.284)
  switch i8 %13, label %land.lhs.true7.if.end33_crit_edge [
    i8 3, label %land.lhs.true7.land.lhs.true16_crit_edge
    i8 0, label %land.lhs.true7.land.lhs.true16_crit_edge107
  ]

land.lhs.true7.land.lhs.true16_crit_edge107:      ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true16

land.lhs.true7.land.lhs.true16_crit_edge:         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true16

land.lhs.true7.if.end33_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

land.lhs.true16:                                  ; preds = %land.lhs.true7.land.lhs.true16_crit_edge, %land.lhs.true7.land.lhs.true16_crit_edge107
  %wl_gl_busy = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 35
  %15 = ptrtoint ptr %wl_gl_busy to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %wl_gl_busy, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool17.not = icmp eq i8 %16, 0
  br i1 %tobool17.not, label %land.lhs.true16.if.end33_crit_edge, label %land.lhs.true16.if.then32_crit_edge

land.lhs.true16.if.then32_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then32

land.lhs.true16.if.end33_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then32:                                        ; preds = %land.lhs.true16.if.then32_crit_edge, %if.then.if.then32_crit_edge
  %tdma_case.0102 = phi i8 [ 0, %land.lhs.true16.if.then32_crit_edge ], [ 100, %if.then.if.then32_crit_edge ]
  tail call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext 7)
  br label %exit

if.end33:                                         ; preds = %land.lhs.true16.if.end33_crit_edge, %land.lhs.true7.if.end33_crit_edge, %land.lhs.true.if.end33_crit_edge, %entry.if.end33_crit_edge
  tail call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext 3)
  %share_ant34 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %17 = ptrtoint ptr %share_ant34 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %share_ant34, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool35.not = icmp eq i8 %18, 0
  %wl_gl_busy55 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 35
  %19 = ptrtoint ptr %wl_gl_busy55 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %wl_gl_busy55, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool56.not = icmp eq i8 %20, 0
  br i1 %tobool35.not, label %if.else54, label %if.then36

if.then36:                                        ; preds = %if.end33
  br i1 %tobool56.not, label %if.then36.exit_crit_edge, label %if.else40

if.then36.exit_crit_edge:                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.else40:                                        ; preds = %if.then36
  %bt_status41 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 13
  %21 = ptrtoint ptr %bt_status41 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bt_status41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp43 = icmp eq i8 %22, 0
  br i1 %cmp43, label %if.then45, label %if.else40.exit_crit_edge

if.else40.exit_crit_edge:                         ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.then45:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #7
  %lo_pri_rx = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 53
  %23 = ptrtoint ptr %lo_pri_rx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lo_pri_rx, align 4
  %lo_pri_tx = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 52
  %25 = ptrtoint ptr %lo_pri_tx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lo_pri_tx, align 4
  %add = add i32 %26, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 250, i32 %add)
  %cmp46 = icmp ugt i32 %add, 250
  %. = select i1 %cmp46, i8 17, i8 7
  br label %exit

if.else54:                                        ; preds = %if.end33
  br i1 %tobool56.not, label %if.else54.exit_crit_edge, label %if.else58

if.else54.exit_crit_edge:                         ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.else58:                                        ; preds = %if.else54
  %bt_ble_scan_type = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 69
  %27 = ptrtoint ptr %bt_ble_scan_type to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bt_ble_scan_type, align 1
  %29 = and i8 %28, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool60.not = icmp eq i8 %29, 0
  br i1 %tobool60.not, label %if.else58.if.else67_crit_edge, label %land.lhs.true61

if.else58.if.else67_crit_edge:                    ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else67

land.lhs.true61:                                  ; preds = %if.else58
  %bt_status62 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 13
  %30 = ptrtoint ptr %bt_status62 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bt_status62, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp64 = icmp eq i8 %31, 0
  br i1 %cmp64, label %land.lhs.true61.exit_crit_edge, label %land.lhs.true61.if.else67_crit_edge

land.lhs.true61.if.else67_crit_edge:              ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else67

land.lhs.true61.exit_crit_edge:                   ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.else67:                                        ; preds = %land.lhs.true61.if.else67_crit_edge, %if.else58.if.else67_crit_edge
  br label %exit

exit:                                             ; preds = %if.else67, %land.lhs.true61.exit_crit_edge, %if.else54.exit_crit_edge, %if.then45, %if.else40.exit_crit_edge, %if.then36.exit_crit_edge, %if.then32
  %table_case.1 = phi i8 [ %tdma_case.0102, %if.then32 ], [ 112, %if.else67 ], [ 10, %if.then36.exit_crit_edge ], [ 11, %if.then45 ], [ 12, %if.else40.exit_crit_edge ], [ 112, %if.else54.exit_crit_edge ], [ 114, %land.lhs.true61.exit_crit_edge ]
  %tdma_case.1 = phi i8 [ %tdma_case.0102, %if.then32 ], [ 103, %if.else67 ], [ 3, %if.then36.exit_crit_edge ], [ %., %if.then45 ], [ 7, %if.else40.exit_crit_edge ], [ 104, %if.else54.exit_crit_edge ], [ 103, %land.lhs.true61.exit_crit_edge ]
  tail call fastcc void @rtw_coex_table(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext %table_case.1)
  %conv71 = zext i8 %tdma_case.1 to i32
  tail call fastcc void @rtw_coex_tdma(ptr noundef %rtwdev, i1 noundef zeroext false, i32 noundef %conv71)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_coex_action_wl_linkscan(ptr noundef %rtwdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip3 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip3, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rtw_coex_action_wl_linkscan) #5
  tail call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext 3)
  %wl_rf_para_rx = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 91
  %2 = ptrtoint ptr %wl_rf_para_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wl_rf_para_rx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %.unpack = load i32, ptr %3, align 1
  %5 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  tail call fastcc void @rtw_coex_set_rf_para(ptr noundef %rtwdev, [1 x i32] %5)
  %share_ant = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %6 = ptrtoint ptr %share_ant to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %share_ant, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %bt_a2dp_exist11 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 11
  %8 = ptrtoint ptr %bt_a2dp_exist11 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bt_a2dp_exist11, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.else10, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool12.not, label %if.then.if.end16_crit_edge, label %if.then5

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %wl_gl_busy = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 35
  %10 = ptrtoint ptr %wl_gl_busy to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %wl_gl_busy, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  %. = select i1 %tobool6.not, i8 9, i8 26
  br label %if.end16

if.else10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %.26 = select i1 %tobool12.not, i32 107, i32 111
  %.27 = select i1 %tobool12.not, i32 0, i32 256
  br label %if.end16

if.end16:                                         ; preds = %if.else10, %if.then5, %if.then.if.end16_crit_edge
  %table_case.0 = phi i8 [ %., %if.then5 ], [ 9, %if.then.if.end16_crit_edge ], [ 112, %if.else10 ]
  %tdma_case.0 = phi i32 [ 11, %if.then5 ], [ 7, %if.then.if.end16_crit_edge ], [ %.26, %if.else10 ]
  %slot_type.0 = phi i32 [ 256, %if.then5 ], [ 0, %if.then.if.end16_crit_edge ], [ %.27, %if.else10 ]
  tail call fastcc void @rtw_coex_table(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext %table_case.0)
  %or = or i32 %slot_type.0, %tdma_case.0
  tail call fastcc void @rtw_coex_tdma(ptr noundef %rtwdev, i1 noundef zeroext false, i32 noundef %or)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_coex_action_wl_connected(ptr noundef %rtwdev) unnamed_addr #0 align 64 {
entry:
  %cur_h2c_para.i.i153 = alloca [6 x i8], align 1
  %cur_h2c_para.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rtw_coex_action_wl_connected) #5
  %bt_hfp_exist.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 10
  %0 = ptrtoint ptr %bt_hfp_exist.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bt_hfp_exist.i, align 2, !range !601
  %bt_hid_exist.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 12
  %2 = ptrtoint ptr %bt_hid_exist.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bt_hid_exist.i, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not.i = icmp eq i8 %3, 0
  %4 = or i8 %1, 2
  %profile_map.1.i = select i1 %tobool3.not.i, i8 %1, i8 %4
  %bt_a2dp_exist.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 11
  %5 = ptrtoint ptr %bt_a2dp_exist.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bt_a2dp_exist.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool9.not.i = icmp eq i8 %6, 0
  %7 = or i8 %profile_map.1.i, 4
  %profile_map.2.i = select i1 %tobool9.not.i, i8 %profile_map.1.i, i8 %7
  %bt_pan_exist.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 13
  %8 = ptrtoint ptr %bt_pan_exist.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bt_pan_exist.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool15.not.i = icmp eq i8 %9, 0
  %10 = or i8 %profile_map.2.i, 8
  %profile_map.3.i = select i1 %tobool15.not.i, i8 %profile_map.2.i, i8 %10
  %11 = zext i8 %profile_map.3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.285)
  switch i8 %profile_map.3.i, label %sw.default.i [
    i8 1, label %entry.rtw_coex_algorithm.exit.thread220_crit_edge
    i8 2, label %entry.sw.epilog.i_crit_edge
    i8 3, label %entry.sw.epilog.i_crit_edge255
    i8 5, label %entry.sw.bb23.i_crit_edge
    i8 6, label %entry.sw.bb23.i_crit_edge256
    i8 7, label %entry.sw.bb23.i_crit_edge257
    i8 9, label %entry.sw.bb24.i_crit_edge
    i8 10, label %entry.sw.bb24.i_crit_edge258
    i8 11, label %entry.sw.bb24.i_crit_edge259
    i8 13, label %entry.sw.bb25.i_crit_edge
    i8 14, label %entry.sw.bb25.i_crit_edge260
    i8 15, label %entry.sw.bb25.i_crit_edge261
    i8 8, label %entry.sw.bb4.i.i_crit_edge
    i8 12, label %entry.sw.bb12.i.i_crit_edge
    i8 4, label %sw.bb28.i
  ]

entry.sw.bb12.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb12.i.i

entry.sw.bb4.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4.i.i

entry.sw.bb25.i_crit_edge261:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb25.i

entry.sw.bb25.i_crit_edge260:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb25.i

entry.sw.bb25.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb25.i

entry.sw.bb24.i_crit_edge259:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb24.i

entry.sw.bb24.i_crit_edge258:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb24.i

entry.sw.bb24.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb24.i

entry.sw.bb23.i_crit_edge257:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb23.i

entry.sw.bb23.i_crit_edge256:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb23.i

entry.sw.bb23.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb23.i

entry.sw.epilog.i_crit_edge255:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

entry.rtw_coex_algorithm.exit.thread220_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_algorithm.exit.thread220

sw.bb23.i:                                        ; preds = %entry.sw.bb23.i_crit_edge, %entry.sw.bb23.i_crit_edge256, %entry.sw.bb23.i_crit_edge257
  br label %sw.epilog.i

sw.bb24.i:                                        ; preds = %entry.sw.bb24.i_crit_edge, %entry.sw.bb24.i_crit_edge258, %entry.sw.bb24.i_crit_edge259
  br label %sw.epilog.i

sw.bb25.i:                                        ; preds = %entry.sw.bb25.i_crit_edge, %entry.sw.bb25.i_crit_edge260, %entry.sw.bb25.i_crit_edge261
  br label %sw.epilog.i

sw.bb28.i:                                        ; preds = %entry
  %bt_multi_link.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 18
  %12 = ptrtoint ptr %bt_multi_link.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bt_multi_link.i, align 2, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool29.not.i = icmp eq i8 %13, 0
  br i1 %tobool29.not.i, label %sw.bb28.i.rtw_coex_algorithm.exit.thread228_crit_edge, label %if.then30.i

sw.bb28.i.rtw_coex_algorithm.exit.thread228_crit_edge: ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_algorithm.exit.thread228

if.then30.i:                                      ; preds = %sw.bb28.i
  %bt_hid_pair_num.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 70
  %14 = ptrtoint ptr %bt_hid_pair_num.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bt_hid_pair_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.not.i = icmp eq i8 %15, 0
  br i1 %cmp.not.i, label %if.then30.i.rtw_coex_algorithm.exit.thread240_crit_edge, label %if.then30.i.rtw_coex_algorithm.exit.thread236_crit_edge

if.then30.i.rtw_coex_algorithm.exit.thread236_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_algorithm.exit.thread236

if.then30.i.rtw_coex_algorithm.exit.thread240_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_algorithm.exit.thread240

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb25.i, %sw.bb24.i, %sw.bb23.i, %entry.sw.epilog.i_crit_edge, %entry.sw.epilog.i_crit_edge255
  %algorithm.0.i = phi i8 [ 0, %sw.default.i ], [ 8, %sw.bb25.i ], [ 7, %sw.bb24.i ], [ 5, %sw.bb23.i ], [ 2, %entry.sw.epilog.i_crit_edge ], [ 2, %entry.sw.epilog.i_crit_edge255 ]
  %16 = zext i8 %profile_map.3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.286)
  switch i8 %profile_map.3.i, label %sw.default.i.i [
    i8 0, label %sw.epilog.i.rtw_coex_get_bt_profile_string.exit.i_crit_edge
    i8 15, label %sw.bb15.i.i
    i8 2, label %sw.bb2.i.i
    i8 14, label %sw.bb14.i.i
    i8 8, label %sw.epilog.i.sw.bb4.i.i_crit_edge
    i8 3, label %sw.bb5.i.i
    i8 5, label %sw.bb6.i.i
    i8 6, label %sw.bb7.i.i
    i8 7, label %sw.bb8.i.i
    i8 9, label %sw.bb9.i.i
    i8 10, label %sw.bb10.i.i
    i8 11, label %sw.bb11.i.i
    i8 12, label %sw.epilog.i.sw.bb12.i.i_crit_edge
    i8 13, label %sw.bb13.i.i
  ]

sw.epilog.i.sw.bb12.i.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb12.i.i

sw.epilog.i.sw.bb4.i.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4.i.i

sw.epilog.i.rtw_coex_get_bt_profile_string.exit.i_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_get_bt_profile_string.exit.i

sw.bb2.i.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_get_bt_profile_string.exit.i

sw.bb4.i.i:                                       ; preds = %sw.epilog.i.sw.bb4.i.i_crit_edge, %entry.sw.bb4.i.i_crit_edge
  %algorithm.068.i = phi i8 [ %algorithm.0.i, %sw.epilog.i.sw.bb4.i.i_crit_edge ], [ 4, %entry.sw.bb4.i.i_crit_edge ]
  br label %rtw_coex_get_bt_profile_string.exit.i

sw.bb5.i.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_get_bt_profile_string.exit.i

sw.bb6.i.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_get_bt_profile_string.exit.i

sw.bb7.i.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_get_bt_profile_string.exit.i

sw.bb8.i.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_get_bt_profile_string.exit.i

sw.bb9.i.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_get_bt_profile_string.exit.i

sw.bb10.i.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_get_bt_profile_string.exit.i

sw.bb11.i.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_get_bt_profile_string.exit.i

sw.bb12.i.i:                                      ; preds = %sw.epilog.i.sw.bb12.i.i_crit_edge, %entry.sw.bb12.i.i_crit_edge
  %algorithm.071.i = phi i8 [ %algorithm.0.i, %sw.epilog.i.sw.bb12.i.i_crit_edge ], [ 6, %entry.sw.bb12.i.i_crit_edge ]
  br label %rtw_coex_get_bt_profile_string.exit.i

sw.bb13.i.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_get_bt_profile_string.exit.i

sw.bb14.i.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_get_bt_profile_string.exit.i

sw.bb15.i.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_get_bt_profile_string.exit.i

sw.default.i.i:                                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_get_bt_profile_string.exit.i

rtw_coex_get_bt_profile_string.exit.i:            ; preds = %sw.default.i.i, %sw.bb15.i.i, %sw.bb14.i.i, %sw.bb13.i.i, %sw.bb12.i.i, %sw.bb11.i.i, %sw.bb10.i.i, %sw.bb9.i.i, %sw.bb8.i.i, %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb2.i.i, %sw.epilog.i.rtw_coex_get_bt_profile_string.exit.i_crit_edge
  %algorithm.062.i = phi i8 [ %algorithm.0.i, %sw.default.i.i ], [ %algorithm.0.i, %sw.bb15.i.i ], [ %algorithm.0.i, %sw.bb14.i.i ], [ %algorithm.0.i, %sw.bb13.i.i ], [ %algorithm.071.i, %sw.bb12.i.i ], [ %algorithm.0.i, %sw.bb11.i.i ], [ %algorithm.0.i, %sw.bb10.i.i ], [ %algorithm.0.i, %sw.bb9.i.i ], [ %algorithm.0.i, %sw.bb8.i.i ], [ %algorithm.0.i, %sw.bb7.i.i ], [ %algorithm.0.i, %sw.bb6.i.i ], [ %algorithm.0.i, %sw.bb5.i.i ], [ %algorithm.068.i, %sw.bb4.i.i ], [ %algorithm.0.i, %sw.bb2.i.i ], [ %algorithm.0.i, %sw.epilog.i.rtw_coex_get_bt_profile_string.exit.i_crit_edge ]
  %retval.0.i.i = phi ptr [ @.str.211, %sw.default.i.i ], [ @.str.210, %sw.bb15.i.i ], [ @.str.209, %sw.bb14.i.i ], [ @.str.208, %sw.bb13.i.i ], [ @.str.207, %sw.bb12.i.i ], [ @.str.206, %sw.bb11.i.i ], [ @.str.205, %sw.bb10.i.i ], [ @.str.204, %sw.bb9.i.i ], [ @.str.203, %sw.bb8.i.i ], [ @.str.202, %sw.bb7.i.i ], [ @.str.201, %sw.bb6.i.i ], [ @.str.200, %sw.bb5.i.i ], [ @.str.199, %sw.bb4.i.i ], [ @.str.197, %sw.bb2.i.i ], [ @.str.195, %sw.epilog.i.rtw_coex_get_bt_profile_string.exit.i_crit_edge ]
  %17 = zext i8 %algorithm.062.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.287)
  switch i8 %algorithm.062.i, label %rtw_coex_algorithm.exit [
    i8 0, label %rtw_coex_algorithm.exit.thread
    i8 1, label %rtw_coex_get_bt_profile_string.exit.i.rtw_coex_algorithm.exit.thread220_crit_edge
    i8 2, label %rtw_coex_algorithm.exit.thread224
    i8 3, label %rtw_coex_get_bt_profile_string.exit.i.rtw_coex_algorithm.exit.thread228_crit_edge
    i8 4, label %rtw_coex_algorithm.exit.thread232
    i8 5, label %rtw_coex_get_bt_profile_string.exit.i.rtw_coex_algorithm.exit.thread236_crit_edge
    i8 6, label %rtw_coex_get_bt_profile_string.exit.i.rtw_coex_algorithm.exit.thread240_crit_edge
    i8 7, label %rtw_coex_algorithm.exit.thread244
    i8 8, label %rtw_coex_algorithm.exit.thread248
  ]

rtw_coex_get_bt_profile_string.exit.i.rtw_coex_algorithm.exit.thread240_crit_edge: ; preds = %rtw_coex_get_bt_profile_string.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_algorithm.exit.thread240

rtw_coex_get_bt_profile_string.exit.i.rtw_coex_algorithm.exit.thread236_crit_edge: ; preds = %rtw_coex_get_bt_profile_string.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_algorithm.exit.thread236

rtw_coex_get_bt_profile_string.exit.i.rtw_coex_algorithm.exit.thread228_crit_edge: ; preds = %rtw_coex_get_bt_profile_string.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_algorithm.exit.thread228

rtw_coex_get_bt_profile_string.exit.i.rtw_coex_algorithm.exit.thread220_crit_edge: ; preds = %rtw_coex_get_bt_profile_string.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_algorithm.exit.thread220

rtw_coex_algorithm.exit.thread:                   ; preds = %rtw_coex_get_bt_profile_string.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.194, ptr noundef nonnull %retval.0.i.i, ptr noundef nonnull @.str.195) #5
  br label %sw.bb21

rtw_coex_algorithm.exit.thread220:                ; preds = %rtw_coex_get_bt_profile_string.exit.i.rtw_coex_algorithm.exit.thread220_crit_edge, %entry.rtw_coex_algorithm.exit.thread220_crit_edge
  %retval.0.i76.i = phi ptr [ %retval.0.i.i, %rtw_coex_get_bt_profile_string.exit.i.rtw_coex_algorithm.exit.thread220_crit_edge ], [ @.str.196, %entry.rtw_coex_algorithm.exit.thread220_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.194, ptr noundef nonnull %retval.0.i76.i, ptr noundef nonnull @.str.196) #5
  br label %sw.bb

rtw_coex_algorithm.exit.thread224:                ; preds = %rtw_coex_get_bt_profile_string.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.194, ptr noundef nonnull %retval.0.i.i, ptr noundef nonnull @.str.197) #5
  br label %sw.bb2

rtw_coex_algorithm.exit.thread228:                ; preds = %rtw_coex_get_bt_profile_string.exit.i.rtw_coex_algorithm.exit.thread228_crit_edge, %sw.bb28.i.rtw_coex_algorithm.exit.thread228_crit_edge
  %retval.0.i82.i = phi ptr [ %retval.0.i.i, %rtw_coex_get_bt_profile_string.exit.i.rtw_coex_algorithm.exit.thread228_crit_edge ], [ @.str.198, %sw.bb28.i.rtw_coex_algorithm.exit.thread228_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.194, ptr noundef nonnull %retval.0.i82.i, ptr noundef nonnull @.str.198) #5
  br label %sw.bb4

rtw_coex_algorithm.exit.thread232:                ; preds = %rtw_coex_get_bt_profile_string.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.194, ptr noundef nonnull %retval.0.i.i, ptr noundef nonnull @.str.199) #5
  br label %sw.bb12

rtw_coex_algorithm.exit.thread236:                ; preds = %rtw_coex_get_bt_profile_string.exit.i.rtw_coex_algorithm.exit.thread236_crit_edge, %if.then30.i.rtw_coex_algorithm.exit.thread236_crit_edge
  %retval.0.i87.i = phi ptr [ %retval.0.i.i, %rtw_coex_get_bt_profile_string.exit.i.rtw_coex_algorithm.exit.thread236_crit_edge ], [ @.str.198, %if.then30.i.rtw_coex_algorithm.exit.thread236_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.194, ptr noundef nonnull %retval.0.i87.i, ptr noundef nonnull @.str.202) #5
  br label %sw.bb13

rtw_coex_algorithm.exit.thread240:                ; preds = %rtw_coex_get_bt_profile_string.exit.i.rtw_coex_algorithm.exit.thread240_crit_edge, %if.then30.i.rtw_coex_algorithm.exit.thread240_crit_edge
  %retval.0.i92.i = phi ptr [ %retval.0.i.i, %rtw_coex_get_bt_profile_string.exit.i.rtw_coex_algorithm.exit.thread240_crit_edge ], [ @.str.198, %if.then30.i.rtw_coex_algorithm.exit.thread240_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.194, ptr noundef nonnull %retval.0.i92.i, ptr noundef nonnull @.str.212) #5
  br label %sw.bb18

rtw_coex_algorithm.exit.thread244:                ; preds = %rtw_coex_get_bt_profile_string.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.194, ptr noundef nonnull %retval.0.i.i, ptr noundef nonnull @.str.205) #5
  br label %sw.bb19

rtw_coex_algorithm.exit.thread248:                ; preds = %rtw_coex_get_bt_profile_string.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.194, ptr noundef nonnull %retval.0.i.i, ptr noundef nonnull @.str.213) #5
  br label %sw.bb20

rtw_coex_algorithm.exit:                          ; preds = %rtw_coex_get_bt_profile_string.exit.i
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.194, ptr noundef nonnull %retval.0.i.i, ptr noundef nonnull @.str.211) #5
  %18 = zext i8 %algorithm.062.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.288)
  switch i8 %algorithm.062.i, label %rtw_coex_algorithm.exit.sw.bb21_crit_edge [
    i8 1, label %rtw_coex_algorithm.exit.sw.bb_crit_edge
    i8 2, label %rtw_coex_algorithm.exit.sw.bb2_crit_edge
    i8 3, label %rtw_coex_algorithm.exit.sw.bb4_crit_edge
    i8 4, label %rtw_coex_algorithm.exit.sw.bb12_crit_edge
    i8 5, label %rtw_coex_algorithm.exit.sw.bb13_crit_edge
    i8 6, label %rtw_coex_algorithm.exit.sw.bb18_crit_edge
    i8 7, label %rtw_coex_algorithm.exit.sw.bb19_crit_edge
    i8 8, label %rtw_coex_algorithm.exit.sw.bb20_crit_edge
  ]

rtw_coex_algorithm.exit.sw.bb20_crit_edge:        ; preds = %rtw_coex_algorithm.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb20

rtw_coex_algorithm.exit.sw.bb19_crit_edge:        ; preds = %rtw_coex_algorithm.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb19

rtw_coex_algorithm.exit.sw.bb18_crit_edge:        ; preds = %rtw_coex_algorithm.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb18

rtw_coex_algorithm.exit.sw.bb13_crit_edge:        ; preds = %rtw_coex_algorithm.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13

rtw_coex_algorithm.exit.sw.bb12_crit_edge:        ; preds = %rtw_coex_algorithm.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb12

rtw_coex_algorithm.exit.sw.bb4_crit_edge:         ; preds = %rtw_coex_algorithm.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

rtw_coex_algorithm.exit.sw.bb2_crit_edge:         ; preds = %rtw_coex_algorithm.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

rtw_coex_algorithm.exit.sw.bb_crit_edge:          ; preds = %rtw_coex_algorithm.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

rtw_coex_algorithm.exit.sw.bb21_crit_edge:        ; preds = %rtw_coex_algorithm.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb21

sw.bb:                                            ; preds = %rtw_coex_algorithm.exit.sw.bb_crit_edge, %rtw_coex_algorithm.exit.thread220
  %chip3.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %19 = ptrtoint ptr %chip3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip3.i, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rtw_coex_action_bt_hfp) #5
  tail call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext 3) #5
  %wl_rf_para_rx.i = getelementptr inbounds %struct.rtw_chip_info, ptr %20, i32 0, i32 91
  %21 = ptrtoint ptr %wl_rf_para_rx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wl_rf_para_rx.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %.unpack.i = load i32, ptr %22, align 1
  %24 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  tail call fastcc void @rtw_coex_set_rf_para(ptr noundef %rtwdev, [1 x i32] %24) #5
  %share_ant.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %25 = ptrtoint ptr %share_ant.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %share_ant.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  %bt_multi_link7.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 18
  %27 = ptrtoint ptr %bt_multi_link7.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bt_multi_link7.i, align 2, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool8.not.i = icmp eq i8 %28, 0
  %..i = select i1 %tobool8.not.i, i32 5, i32 17
  %.21.i = select i1 %tobool8.not.i, i8 105, i8 112
  %.22.i = select i1 %tobool8.not.i, i32 100, i32 117
  %table_case.0.i = select i1 %tobool.not.i, i8 %.21.i, i8 10
  %tdma_case.0.i = select i1 %tobool.not.i, i32 %.22.i, i32 %..i
  tail call fastcc void @rtw_coex_table(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext %table_case.0.i) #5
  tail call fastcc void @rtw_coex_tdma(ptr noundef %rtwdev, i1 noundef zeroext false, i32 noundef %tdma_case.0.i) #5
  br label %sw.epilog

sw.bb2:                                           ; preds = %rtw_coex_algorithm.exit.sw.bb2_crit_edge, %rtw_coex_algorithm.exit.thread224
  %stat.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9
  %29 = ptrtoint ptr %stat.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %stat.i, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i40 = icmp eq i8 %30, 0
  br i1 %tobool.not.i40, label %if.end.i, label %sw.bb2.if.else_crit_edge

sw.bb2.if.else_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.end.i:                                         ; preds = %sw.bb2
  %share_ant.i41 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %31 = ptrtoint ptr %share_ant.i41 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %share_ant.i41, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool3.not.i42 = icmp eq i8 %32, 0
  br i1 %tobool3.not.i42, label %lor.lhs.false5.i, label %if.end.i.if.else_crit_edge

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

lor.lhs.false5.i:                                 ; preds = %if.end.i
  %wl_gl_busy.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 35
  %33 = ptrtoint ptr %wl_gl_busy.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %wl_gl_busy.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool6.not.i = icmp eq i8 %34, 0
  br i1 %tobool6.not.i, label %lor.lhs.false5.i.if.else_crit_edge, label %lor.lhs.false12.i

lor.lhs.false5.i.if.else_crit_edge:               ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

lor.lhs.false12.i:                                ; preds = %lor.lhs.false5.i
  %bt_hid_pair_num.i43 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 70
  %35 = ptrtoint ptr %bt_hid_pair_num.i43 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bt_hid_pair_num.i43, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %cmp14.i = icmp ugt i8 %36, 1
  br i1 %cmp14.i, label %lor.lhs.false12.i.if.then_crit_edge, label %if.end17.i

lor.lhs.false12.i.if.then_crit_edge:              ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.end17.i:                                       ; preds = %lor.lhs.false12.i
  %arrayidx.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 5, i32 1
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i, align 1
  %39 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.289)
  switch i8 %38, label %if.end17.i.if.end39.i_crit_edge [
    i8 3, label %if.end17.i.land.lhs.true.i_crit_edge
    i8 0, label %if.end17.i.land.lhs.true.i_crit_edge262
  ]

if.end17.i.land.lhs.true.i_crit_edge262:          ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

if.end17.i.land.lhs.true.i_crit_edge:             ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

if.end17.i.if.end39.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i

land.lhs.true.i:                                  ; preds = %if.end17.i.land.lhs.true.i_crit_edge, %if.end17.i.land.lhs.true.i_crit_edge262
  %bt_rssi_state.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 4
  %40 = ptrtoint ptr %bt_rssi_state.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bt_rssi_state.i, align 4
  %42 = zext i8 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.290)
  switch i8 %41, label %land.lhs.true.i.if.end39.i_crit_edge [
    i8 3, label %land.lhs.true.i.if.then_crit_edge
    i8 0, label %land.lhs.true.i.if.then_crit_edge263
  ]

land.lhs.true.i.if.then_crit_edge263:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

land.lhs.true.i.if.end39.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i

if.end39.i:                                       ; preds = %land.lhs.true.i.if.end39.i_crit_edge, %if.end17.i.if.end39.i_crit_edge
  %arrayidx51.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 5, i32 3
  %43 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx51.i, align 1
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.291)
  switch i8 %44, label %if.end39.i.if.else_crit_edge [
    i8 3, label %if.end39.i.land.lhs.true63.i_crit_edge
    i8 0, label %if.end39.i.land.lhs.true63.i_crit_edge264
  ]

if.end39.i.land.lhs.true63.i_crit_edge264:        ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true63.i

if.end39.i.land.lhs.true63.i_crit_edge:           ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true63.i

if.end39.i.if.else_crit_edge:                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true63.i:                                ; preds = %if.end39.i.land.lhs.true63.i_crit_edge, %if.end39.i.land.lhs.true63.i_crit_edge264
  %wl_tput_dir.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 84
  %46 = ptrtoint ptr %wl_tput_dir.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %wl_tput_dir.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp41.i = icmp eq i8 %47, 0
  %bt_rssi_state44.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 4
  %arrayidx47.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 4, i32 1
  %bt_rssi.0.in.i = select i1 %cmp41.i, ptr %bt_rssi_state44.i, ptr %arrayidx47.i
  %48 = ptrtoint ptr %bt_rssi.0.in.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %bt_rssi.0.i = load i8, ptr %bt_rssi.0.in.i, align 1
  %49 = zext i8 %bt_rssi.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.292)
  switch i8 %bt_rssi.0.i, label %land.lhs.true63.i.if.else_crit_edge [
    i8 3, label %land.lhs.true63.i.land.lhs.true76.i_crit_edge
    i8 0, label %land.lhs.true63.i.land.lhs.true76.i_crit_edge265
  ]

land.lhs.true63.i.land.lhs.true76.i_crit_edge265: ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true76.i

land.lhs.true63.i.land.lhs.true76.i_crit_edge:    ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true76.i

land.lhs.true63.i.if.else_crit_edge:              ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true76.i:                                ; preds = %land.lhs.true63.i.land.lhs.true76.i_crit_edge, %land.lhs.true63.i.land.lhs.true76.i_crit_edge265
  %cnt_wl.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 90
  %50 = ptrtoint ptr %cnt_wl.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cnt_wl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %51)
  %cmp78.i = icmp ult i32 %51, 6
  br i1 %cmp78.i, label %land.lhs.true76.i.if.then_crit_edge, label %land.lhs.true76.i.if.else_crit_edge

land.lhs.true76.i.if.else_crit_edge:              ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true76.i.if.then_crit_edge:              ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %land.lhs.true76.i.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge263, %lor.lhs.false12.i.if.then_crit_edge
  tail call fastcc void @rtw_coex_action_freerun(ptr noundef %rtwdev)
  br label %sw.epilog

if.else:                                          ; preds = %land.lhs.true76.i.if.else_crit_edge, %land.lhs.true63.i.if.else_crit_edge, %if.end39.i.if.else_crit_edge, %lor.lhs.false5.i.if.else_crit_edge, %if.end.i.if.else_crit_edge, %sw.bb2.if.else_crit_edge
  %chip3.i44 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %52 = ptrtoint ptr %chip3.i44 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chip3.i44, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rtw_coex_action_bt_hid) #5
  tail call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext 3) #5
  %wl_rf_para_rx.i45 = getelementptr inbounds %struct.rtw_chip_info, ptr %53, i32 0, i32 91
  %54 = ptrtoint ptr %wl_rf_para_rx.i45 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wl_rf_para_rx.i45, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %.unpack.i46 = load i32, ptr %55, align 1
  %57 = insertvalue [1 x i32] undef, i32 %.unpack.i46, 0
  tail call fastcc void @rtw_coex_set_rf_para(ptr noundef %rtwdev, [1 x i32] %57) #5
  %share_ant.i47 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %58 = ptrtoint ptr %share_ant.i47 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %share_ant.i47, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i48 = icmp eq i8 %59, 0
  %bt_ble_exist47.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 9
  %60 = ptrtoint ptr %bt_ble_exist47.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bt_ble_exist47.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool48.not.i = icmp eq i8 %61, 0
  br i1 %tobool.not.i48, label %if.else46.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  br i1 %tobool48.not.i, label %if.else8.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %cnt_wl.i49 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 90
  %62 = ptrtoint ptr %cnt_wl.i49 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cnt_wl.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %63)
  %cmp.i = icmp ugt i32 %63, 5
  %..i50 = select i1 %cmp.i, i8 26, i8 27
  %.93.i = select i1 %cmp.i, i32 2, i32 9
  br label %if.end64.thread.i

if.else8.i:                                       ; preds = %if.then.i
  %bt_profile_num.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 61
  %64 = ptrtoint ptr %bt_profile_num.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %bt_profile_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %65)
  %cmp9.i = icmp eq i8 %65, 1
  br i1 %cmp9.i, label %land.lhs.true.i52, label %if.else8.i.if.else22.i_crit_edge

if.else8.i.if.else22.i_crit_edge:                 ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else22.i

land.lhs.true.i52:                                ; preds = %if.else8.i
  %bt_multi_link.i51 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 18
  %66 = ptrtoint ptr %bt_multi_link.i51 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bt_multi_link.i51, align 2, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool11.not.i = icmp eq i8 %67, 0
  br i1 %tobool11.not.i, label %lor.lhs.false.i, label %land.lhs.true.i52.if.end64.thread.i_crit_edge

land.lhs.true.i52.if.end64.thread.i_crit_edge:    ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64.thread.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i52
  %lo_pri_rx.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 53
  %68 = ptrtoint ptr %lo_pri_rx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %lo_pri_rx.i, align 4
  %lo_pri_tx.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 52
  %70 = ptrtoint ptr %lo_pri_tx.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %lo_pri_tx.i, align 4
  %add.i = add i32 %71, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 360, i32 %add.i)
  %cmp13.i = icmp ugt i32 %add.i, 360
  br i1 %cmp13.i, label %lor.lhs.false.i.if.end64.thread.i_crit_edge, label %lor.lhs.false15.i

lor.lhs.false.i.if.end64.thread.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64.thread.i

lor.lhs.false15.i:                                ; preds = %lor.lhs.false.i
  %bt_slave.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 26
  %72 = ptrtoint ptr %bt_slave.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %bt_slave.i, align 2, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool16.not.i = icmp eq i8 %73, 0
  br i1 %tobool16.not.i, label %lor.lhs.false15.i.if.else22.i_crit_edge, label %lor.lhs.false15.i.if.end64.thread.i_crit_edge

lor.lhs.false15.i.if.end64.thread.i_crit_edge:    ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64.thread.i

lor.lhs.false15.i.if.else22.i_crit_edge:          ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else22.i

if.else22.i:                                      ; preds = %lor.lhs.false15.i.if.else22.i_crit_edge, %if.else8.i.if.else22.i_crit_edge
  %bt_a2dp_active.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 22
  %74 = ptrtoint ptr %bt_a2dp_active.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %bt_a2dp_active.i, align 2, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool23.not.i = icmp eq i8 %75, 0
  br i1 %tobool23.not.i, label %if.else25.i, label %if.else22.i.if.end64.thread.i_crit_edge

if.else22.i.if.end64.thread.i_crit_edge:          ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64.thread.i

if.else25.i:                                      ; preds = %if.else22.i
  %bt_418_hid_exist.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 27
  %76 = ptrtoint ptr %bt_418_hid_exist.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %bt_418_hid_exist.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool26.not.i = icmp eq i8 %77, 0
  br i1 %tobool26.not.i, label %if.else25.i.if.else32.i_crit_edge, label %land.lhs.true28.i

if.else25.i.if.else32.i_crit_edge:                ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else32.i

land.lhs.true28.i:                                ; preds = %if.else25.i
  %wl_gl_busy.i53 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 35
  %78 = ptrtoint ptr %wl_gl_busy.i53 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %wl_gl_busy.i53, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool29.not.i54 = icmp eq i8 %79, 0
  br i1 %tobool29.not.i54, label %land.lhs.true28.i.if.else32.i_crit_edge, label %if.then66.i

land.lhs.true28.i.if.else32.i_crit_edge:          ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else32.i

if.else32.i:                                      ; preds = %land.lhs.true28.i.if.else32.i_crit_edge, %if.else25.i.if.else32.i_crit_edge
  %bt_ble_hid_exist.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 28
  %80 = ptrtoint ptr %bt_ble_hid_exist.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %bt_ble_hid_exist.i, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool33.not.i = icmp eq i8 %81, 0
  br i1 %tobool33.not.i, label %if.else32.i.if.else40.i_crit_edge, label %land.lhs.true35.i

if.else32.i.if.else40.i_crit_edge:                ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else40.i

land.lhs.true35.i:                                ; preds = %if.else32.i
  %wl_gl_busy36.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 35
  %82 = ptrtoint ptr %wl_gl_busy36.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %wl_gl_busy36.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool37.not.i = icmp eq i8 %83, 0
  br i1 %tobool37.not.i, label %land.lhs.true35.i.if.else40.i_crit_edge, label %land.lhs.true35.i.if.end64.thread.i_crit_edge

land.lhs.true35.i.if.end64.thread.i_crit_edge:    ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64.thread.i

land.lhs.true35.i.if.else40.i_crit_edge:          ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else40.i

if.else40.i:                                      ; preds = %land.lhs.true35.i.if.else40.i_crit_edge, %if.else32.i.if.else40.i_crit_edge
  br label %if.end64.thread.i

if.else46.i:                                      ; preds = %if.else
  br i1 %tobool48.not.i, label %if.else57.i, label %if.then49.i

if.then49.i:                                      ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #7
  %cnt_wl50.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 90
  %84 = ptrtoint ptr %cnt_wl50.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cnt_wl50.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %85)
  %cmp52.i = icmp ugt i32 %85, 5
  %.94.i = select i1 %cmp52.i, i8 121, i8 122
  %.95.i = select i1 %cmp52.i, i32 102, i32 109
  br label %if.end64.thread.i

if.else57.i:                                      ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #7
  %bt_a2dp_active58.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 22
  %86 = ptrtoint ptr %bt_a2dp_active58.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %bt_a2dp_active58.i, align 2, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool59.not.i = icmp eq i8 %87, 0
  %.96.i = select i1 %tobool59.not.i, i32 104, i32 118
  br label %if.end64.thread.i

if.end64.thread.i:                                ; preds = %if.else57.i, %if.then49.i, %if.else40.i, %land.lhs.true35.i.if.end64.thread.i_crit_edge, %if.else22.i.if.end64.thread.i_crit_edge, %lor.lhs.false15.i.if.end64.thread.i_crit_edge, %lor.lhs.false.i.if.end64.thread.i_crit_edge, %land.lhs.true.i52.if.end64.thread.i_crit_edge, %if.then5.i
  %table_case.0.ph.i = phi i8 [ 113, %if.else57.i ], [ %.94.i, %if.then49.i ], [ 32, %land.lhs.true35.i.if.end64.thread.i_crit_edge ], [ 9, %if.else22.i.if.end64.thread.i_crit_edge ], [ 12, %land.lhs.true.i52.if.end64.thread.i_crit_edge ], [ 12, %lor.lhs.false.i.if.end64.thread.i_crit_edge ], [ 12, %lor.lhs.false15.i.if.end64.thread.i_crit_edge ], [ %..i50, %if.then5.i ], [ 9, %if.else40.i ]
  %tdma_case.0.ph.i = phi i32 [ %.96.i, %if.else57.i ], [ %.95.i, %if.then49.i ], [ 9, %land.lhs.true35.i.if.end64.thread.i_crit_edge ], [ 18, %if.else22.i.if.end64.thread.i_crit_edge ], [ 20, %land.lhs.true.i52.if.end64.thread.i_crit_edge ], [ 20, %lor.lhs.false.i.if.end64.thread.i_crit_edge ], [ 20, %lor.lhs.false15.i.if.end64.thread.i_crit_edge ], [ %.93.i, %if.then5.i ], [ 9, %if.else40.i ]
  %slot_type.0.ph.i = phi i32 [ 0, %if.else57.i ], [ 0, %if.then49.i ], [ 0, %land.lhs.true35.i.if.end64.thread.i_crit_edge ], [ 0, %if.else22.i.if.end64.thread.i_crit_edge ], [ 256, %land.lhs.true.i52.if.end64.thread.i_crit_edge ], [ 256, %lor.lhs.false.i.if.end64.thread.i_crit_edge ], [ 256, %lor.lhs.false15.i.if.end64.thread.i_crit_edge ], [ 0, %if.then5.i ], [ 0, %if.else40.i ]
  tail call fastcc void @rtw_coex_table(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext %table_case.0.ph.i) #5
  %88 = or i32 %slot_type.0.ph.i, %tdma_case.0.ph.i
  br label %rtw_coex_action_bt_hid.exit

if.then66.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @rtw_coex_table(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext 9) #5
  tail call fastcc void @rtw_btc_wltoggle_table_a(ptr noundef %rtwdev, i8 noundef zeroext 9) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %cur_h2c_para.i.i) #5
  %89 = ptrtoint ptr %cur_h2c_para.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 7, ptr %cur_h2c_para.i.i, align 1
  %arrayidx2.i.i = getelementptr inbounds [6 x i8], ptr %cur_h2c_para.i.i, i32 0, i32 1
  %90 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %arrayidx2.i.i, align 1
  %arrayidx3.i.i = getelementptr inbounds [6 x i8], ptr %cur_h2c_para.i.i, i32 0, i32 2
  %91 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 -86, ptr %arrayidx3.i.i, align 1
  %arrayidx6.i.i = getelementptr inbounds [6 x i8], ptr %cur_h2c_para.i.i, i32 0, i32 3
  %92 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 90, ptr %arrayidx6.i.i, align 1
  %arrayidx9.i.i = getelementptr inbounds [6 x i8], ptr %cur_h2c_para.i.i, i32 0, i32 4
  %93 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 90, ptr %arrayidx9.i.i, align 1
  %arrayidx12.i.i = getelementptr inbounds [6 x i8], ptr %cur_h2c_para.i.i, i32 0, i32 5
  %94 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 90, ptr %arrayidx12.i.i, align 1
  %wl_toggle_interval.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 86
  %95 = ptrtoint ptr %wl_toggle_interval.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %wl_toggle_interval.i.i, align 4
  %uglygep.i.i = getelementptr i8, ptr %rtwdev, i32 17590
  %96 = call ptr @memcpy(ptr %uglygep.i.i, ptr %cur_h2c_para.i.i, i32 6)
  call void @rtw_fw_bt_wifi_control(ptr noundef %rtwdev, i8 noundef zeroext 7, ptr noundef %arrayidx2.i.i) #5
  %97 = ptrtoint ptr %cur_h2c_para.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %cur_h2c_para.i.i, align 1
  %conv21.i.i = zext i8 %98 to i32
  %99 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx2.i.i, align 1
  %conv23.i.i = zext i8 %100 to i32
  %101 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx3.i.i, align 1
  %conv25.i.i = zext i8 %102 to i32
  %103 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx6.i.i, align 1
  %conv27.i.i = zext i8 %104 to i32
  %105 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx9.i.i, align 1
  %conv29.i.i = zext i8 %106 to i32
  %107 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx12.i.i, align 1
  %conv31.i.i = zext i8 %108 to i32
  call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.161, ptr noundef nonnull @__func__.rtw_btc_wltoggle_table_b, i32 noundef %conv21.i.i, i32 noundef %conv23.i.i, i32 noundef %conv25.i.i, i32 noundef %conv27.i.i, i32 noundef %conv29.i.i, i32 noundef %conv31.i.i) #5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cur_h2c_para.i.i) #5
  br label %rtw_coex_action_bt_hid.exit

rtw_coex_action_bt_hid.exit:                      ; preds = %if.then66.i, %if.end64.thread.i
  %or.i = phi i32 [ %88, %if.end64.thread.i ], [ 280, %if.then66.i ]
  call fastcc void @rtw_coex_tdma(ptr noundef %rtwdev, i1 noundef zeroext false, i32 noundef %or.i) #5
  br label %sw.epilog

sw.bb4:                                           ; preds = %rtw_coex_algorithm.exit.sw.bb4_crit_edge, %rtw_coex_algorithm.exit.thread228
  %stat.i55 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9
  %109 = ptrtoint ptr %stat.i55 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %stat.i55, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i56 = icmp eq i8 %110, 0
  br i1 %tobool.not.i56, label %if.end.i59, label %sw.bb4.if.else7_crit_edge

sw.bb4.if.else7_crit_edge:                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else7

if.end.i59:                                       ; preds = %sw.bb4
  %share_ant.i57 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %111 = ptrtoint ptr %share_ant.i57 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %share_ant.i57, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool3.not.i58 = icmp eq i8 %112, 0
  br i1 %tobool3.not.i58, label %lor.lhs.false5.i62, label %if.end.i59.if.else7_crit_edge

if.end.i59.if.else7_crit_edge:                    ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else7

lor.lhs.false5.i62:                               ; preds = %if.end.i59
  %wl_gl_busy.i60 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 35
  %113 = ptrtoint ptr %wl_gl_busy.i60 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %wl_gl_busy.i60, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool6.not.i61 = icmp eq i8 %114, 0
  br i1 %tobool6.not.i61, label %lor.lhs.false5.i62.if.else7_crit_edge, label %lor.lhs.false12.i65

lor.lhs.false5.i62.if.else7_crit_edge:            ; preds = %lor.lhs.false5.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else7

lor.lhs.false12.i65:                              ; preds = %lor.lhs.false5.i62
  %bt_hid_pair_num.i63 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 70
  %115 = ptrtoint ptr %bt_hid_pair_num.i63 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %bt_hid_pair_num.i63, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %116)
  %cmp14.i64 = icmp ugt i8 %116, 1
  br i1 %cmp14.i64, label %lor.lhs.false12.i65.if.then6_crit_edge, label %if.end17.i67

lor.lhs.false12.i65.if.then6_crit_edge:           ; preds = %lor.lhs.false12.i65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

if.end17.i67:                                     ; preds = %lor.lhs.false12.i65
  %arrayidx.i66 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 5, i32 1
  %117 = ptrtoint ptr %arrayidx.i66 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx.i66, align 1
  %119 = zext i8 %118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.293)
  switch i8 %118, label %if.end17.i67.if.end39.i71_crit_edge [
    i8 3, label %if.end17.i67.land.lhs.true.i69_crit_edge
    i8 0, label %if.end17.i67.land.lhs.true.i69_crit_edge266
  ]

if.end17.i67.land.lhs.true.i69_crit_edge266:      ; preds = %if.end17.i67
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i69

if.end17.i67.land.lhs.true.i69_crit_edge:         ; preds = %if.end17.i67
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i69

if.end17.i67.if.end39.i71_crit_edge:              ; preds = %if.end17.i67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i71

land.lhs.true.i69:                                ; preds = %if.end17.i67.land.lhs.true.i69_crit_edge, %if.end17.i67.land.lhs.true.i69_crit_edge266
  %bt_rssi_state.i68 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 4
  %120 = ptrtoint ptr %bt_rssi_state.i68 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %bt_rssi_state.i68, align 4
  %122 = zext i8 %121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.294)
  switch i8 %121, label %land.lhs.true.i69.if.end39.i71_crit_edge [
    i8 3, label %land.lhs.true.i69.if.then6_crit_edge
    i8 0, label %land.lhs.true.i69.if.then6_crit_edge267
  ]

land.lhs.true.i69.if.then6_crit_edge267:          ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

land.lhs.true.i69.if.then6_crit_edge:             ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

land.lhs.true.i69.if.end39.i71_crit_edge:         ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i71

if.end39.i71:                                     ; preds = %land.lhs.true.i69.if.end39.i71_crit_edge, %if.end17.i67.if.end39.i71_crit_edge
  %arrayidx51.i70 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 5, i32 3
  %123 = ptrtoint ptr %arrayidx51.i70 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx51.i70, align 1
  %125 = zext i8 %124 to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.295)
  switch i8 %124, label %if.end39.i71.if.else7_crit_edge [
    i8 3, label %if.end39.i71.land.lhs.true63.i78_crit_edge
    i8 0, label %if.end39.i71.land.lhs.true63.i78_crit_edge268
  ]

if.end39.i71.land.lhs.true63.i78_crit_edge268:    ; preds = %if.end39.i71
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true63.i78

if.end39.i71.land.lhs.true63.i78_crit_edge:       ; preds = %if.end39.i71
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true63.i78

if.end39.i71.if.else7_crit_edge:                  ; preds = %if.end39.i71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else7

land.lhs.true63.i78:                              ; preds = %if.end39.i71.land.lhs.true63.i78_crit_edge, %if.end39.i71.land.lhs.true63.i78_crit_edge268
  %wl_tput_dir.i72 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 84
  %126 = ptrtoint ptr %wl_tput_dir.i72 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %wl_tput_dir.i72, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %cmp41.i73 = icmp eq i8 %127, 0
  %bt_rssi_state44.i74 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 4
  %arrayidx47.i75 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 4, i32 1
  %bt_rssi.0.in.i76 = select i1 %cmp41.i73, ptr %bt_rssi_state44.i74, ptr %arrayidx47.i75
  %128 = ptrtoint ptr %bt_rssi.0.in.i76 to i32
  call void @__asan_load1_noabort(i32 %128)
  %bt_rssi.0.i77 = load i8, ptr %bt_rssi.0.in.i76, align 1
  %129 = zext i8 %bt_rssi.0.i77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.296)
  switch i8 %bt_rssi.0.i77, label %land.lhs.true63.i78.if.else7_crit_edge [
    i8 3, label %land.lhs.true63.i78.land.lhs.true76.i81_crit_edge
    i8 0, label %land.lhs.true63.i78.land.lhs.true76.i81_crit_edge269
  ]

land.lhs.true63.i78.land.lhs.true76.i81_crit_edge269: ; preds = %land.lhs.true63.i78
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true76.i81

land.lhs.true63.i78.land.lhs.true76.i81_crit_edge: ; preds = %land.lhs.true63.i78
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true76.i81

land.lhs.true63.i78.if.else7_crit_edge:           ; preds = %land.lhs.true63.i78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else7

land.lhs.true76.i81:                              ; preds = %land.lhs.true63.i78.land.lhs.true76.i81_crit_edge, %land.lhs.true63.i78.land.lhs.true76.i81_crit_edge269
  %cnt_wl.i79 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 90
  %130 = ptrtoint ptr %cnt_wl.i79 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %cnt_wl.i79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %131)
  %cmp78.i80 = icmp ult i32 %131, 6
  br i1 %cmp78.i80, label %land.lhs.true76.i81.if.then6_crit_edge, label %land.lhs.true76.i81.if.else7_crit_edge

land.lhs.true76.i81.if.else7_crit_edge:           ; preds = %land.lhs.true76.i81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else7

land.lhs.true76.i81.if.then6_crit_edge:           ; preds = %land.lhs.true76.i81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

if.then6:                                         ; preds = %land.lhs.true76.i81.if.then6_crit_edge, %land.lhs.true.i69.if.then6_crit_edge, %land.lhs.true.i69.if.then6_crit_edge267, %lor.lhs.false12.i65.if.then6_crit_edge
  tail call fastcc void @rtw_coex_action_freerun(ptr noundef %rtwdev)
  br label %sw.epilog

if.else7:                                         ; preds = %land.lhs.true76.i81.if.else7_crit_edge, %land.lhs.true63.i78.if.else7_crit_edge, %if.end39.i71.if.else7_crit_edge, %lor.lhs.false5.i62.if.else7_crit_edge, %if.end.i59.if.else7_crit_edge, %sw.bb4.if.else7_crit_edge
  %bt_a2dp_sink = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 21
  %132 = ptrtoint ptr %bt_a2dp_sink to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %bt_a2dp_sink, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool.not = icmp eq i8 %133, 0
  %chip3.i95 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %134 = ptrtoint ptr %chip3.i95 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %chip3.i95, align 4
  br i1 %tobool.not, label %if.else9, label %if.then8

if.then8:                                         ; preds = %if.else7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rtw_coex_action_bt_a2dpsink) #5
  tail call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext 3) #5
  %wl_rf_para_rx.i86 = getelementptr inbounds %struct.rtw_chip_info, ptr %135, i32 0, i32 91
  %136 = ptrtoint ptr %wl_rf_para_rx.i86 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %wl_rf_para_rx.i86, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %.unpack.i87 = load i32, ptr %137, align 1
  %139 = insertvalue [1 x i32] undef, i32 %.unpack.i87, 0
  tail call fastcc void @rtw_coex_set_rf_para(ptr noundef %rtwdev, [1 x i32] %139) #5
  %share_ant.i88 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %140 = ptrtoint ptr %share_ant.i88 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %share_ant.i88, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool.not.i89 = icmp eq i8 %141, 0
  br i1 %tobool.not.i89, label %if.then8.rtw_coex_action_bt_a2dpsink.exit_crit_edge, label %if.else.i

if.then8.rtw_coex_action_bt_a2dpsink.exit_crit_edge: ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_action_bt_a2dpsink.exit

if.else.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  %wl_gl_busy.i90 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 35
  %142 = ptrtoint ptr %wl_gl_busy.i90 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %wl_gl_busy.i90, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool6.not.i91 = icmp eq i8 %143, 0
  %..i92 = select i1 %tobool6.not.i91, i32 26, i32 20
  br label %rtw_coex_action_bt_a2dpsink.exit

rtw_coex_action_bt_a2dpsink.exit:                 ; preds = %if.else.i, %if.then8.rtw_coex_action_bt_a2dpsink.exit_crit_edge
  %table_case.0.i93 = phi i8 [ 28, %if.else.i ], [ 119, %if.then8.rtw_coex_action_bt_a2dpsink.exit_crit_edge ]
  %tdma_case.0.i94 = phi i32 [ %..i92, %if.else.i ], [ 120, %if.then8.rtw_coex_action_bt_a2dpsink.exit_crit_edge ]
  tail call fastcc void @rtw_coex_table(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext %table_case.0.i93) #5
  tail call fastcc void @rtw_coex_tdma(ptr noundef %rtwdev, i1 noundef zeroext false, i32 noundef %tdma_case.0.i94) #5
  br label %sw.epilog

if.else9:                                         ; preds = %if.else7
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rtw_coex_action_bt_a2dp) #5
  tail call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext 3) #5
  %wl_rf_para_rx.i96 = getelementptr inbounds %struct.rtw_chip_info, ptr %135, i32 0, i32 91
  %144 = ptrtoint ptr %wl_rf_para_rx.i96 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %wl_rf_para_rx.i96, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_loadN_noabort(i32 %146, i32 4)
  %.unpack.i97 = load i32, ptr %145, align 1
  %147 = insertvalue [1 x i32] undef, i32 %.unpack.i97, 0
  tail call fastcc void @rtw_coex_set_rf_para(ptr noundef %rtwdev, [1 x i32] %147) #5
  %share_ant.i98 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %148 = ptrtoint ptr %share_ant.i98 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %share_ant.i98, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool.not.i99 = icmp eq i8 %149, 0
  br i1 %tobool.not.i99, label %if.else14.i, label %if.then.i101

if.then.i101:                                     ; preds = %if.else9
  %wl_gl_busy.i100 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 35
  %150 = ptrtoint ptr %wl_gl_busy.i100 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %wl_gl_busy.i100, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool4.not.i = icmp eq i8 %151, 0
  br i1 %tobool4.not.i, label %if.then.i101.if.else.i104_crit_edge, label %land.lhs.true.i103

if.then.i101.if.else.i104_crit_edge:              ; preds = %if.then.i101
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i104

land.lhs.true.i103:                               ; preds = %if.then.i101
  %wl_noisy_level.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 75
  %152 = ptrtoint ptr %wl_noisy_level.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %wl_noisy_level.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %cmp.i102 = icmp eq i8 %153, 0
  br i1 %cmp.i102, label %land.lhs.true.i103.if.end.i106_crit_edge, label %land.lhs.true.i103.if.else.i104_crit_edge

land.lhs.true.i103.if.else.i104_crit_edge:        ; preds = %land.lhs.true.i103
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i104

land.lhs.true.i103.if.end.i106_crit_edge:         ; preds = %land.lhs.true.i103
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i106

if.else.i104:                                     ; preds = %land.lhs.true.i103.if.else.i104_crit_edge, %if.then.i101.if.else.i104_crit_edge
  br label %if.end.i106

if.end.i106:                                      ; preds = %if.else.i104, %land.lhs.true.i103.if.end.i106_crit_edge
  %table_case.0.i105 = phi i8 [ 9, %if.else.i104 ], [ 12, %land.lhs.true.i103.if.end.i106_crit_edge ]
  %wl_connecting.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 45
  %154 = ptrtoint ptr %wl_connecting.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %wl_connecting.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool7.not.i = icmp eq i8 %155, 0
  %spec.select40.i = select i1 %tobool4.not.i, i32 270, i32 269
  %spec.select.i = select i1 %tobool7.not.i, i32 %spec.select40.i, i32 270
  br label %rtw_coex_action_bt_a2dp.exit

if.else14.i:                                      ; preds = %if.else9
  %arrayidx15.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 5, i32 1
  %156 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx15.i, align 1
  %158 = zext i8 %157 to i64
  call void @__sanitizer_cov_trace_switch(i64 %158, ptr @__sancov_gen_cov_switch_values.297)
  switch i8 %157, label %if.else24.i [
    i8 3, label %if.else14.i.rtw_coex_action_bt_a2dp.exit_crit_edge
    i8 0, label %if.else14.i.rtw_coex_action_bt_a2dp.exit_crit_edge270
  ]

if.else14.i.rtw_coex_action_bt_a2dp.exit_crit_edge270: ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_action_bt_a2dp.exit

if.else14.i.rtw_coex_action_bt_a2dp.exit_crit_edge: ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_action_bt_a2dp.exit

if.else24.i:                                      ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_action_bt_a2dp.exit

rtw_coex_action_bt_a2dp.exit:                     ; preds = %if.else24.i, %if.else14.i.rtw_coex_action_bt_a2dp.exit_crit_edge, %if.else14.i.rtw_coex_action_bt_a2dp.exit_crit_edge270, %if.end.i106
  %table_case.1.i = phi i8 [ 112, %if.else24.i ], [ 112, %if.else14.i.rtw_coex_action_bt_a2dp.exit_crit_edge ], [ 112, %if.else14.i.rtw_coex_action_bt_a2dp.exit_crit_edge270 ], [ %table_case.0.i105, %if.end.i106 ]
  %tdma_case.0.i107 = phi i32 [ 369, %if.else24.i ], [ 368, %if.else14.i.rtw_coex_action_bt_a2dp.exit_crit_edge ], [ 368, %if.else14.i.rtw_coex_action_bt_a2dp.exit_crit_edge270 ], [ %spec.select.i, %if.end.i106 ]
  tail call fastcc void @rtw_coex_table(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext %table_case.1.i) #5
  tail call fastcc void @rtw_coex_tdma(ptr noundef %rtwdev, i1 noundef zeroext false, i32 noundef %tdma_case.0.i107) #5
  br label %sw.epilog

sw.bb12:                                          ; preds = %rtw_coex_algorithm.exit.sw.bb12_crit_edge, %rtw_coex_algorithm.exit.thread232
  %chip3.i108 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %159 = ptrtoint ptr %chip3.i108 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %chip3.i108, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rtw_coex_action_bt_pan) #5
  tail call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext 3) #5
  %wl_rf_para_rx.i109 = getelementptr inbounds %struct.rtw_chip_info, ptr %160, i32 0, i32 91
  %161 = ptrtoint ptr %wl_rf_para_rx.i109 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %wl_rf_para_rx.i109, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_loadN_noabort(i32 %163, i32 4)
  %.unpack.i110 = load i32, ptr %162, align 1
  %164 = insertvalue [1 x i32] undef, i32 %.unpack.i110, 0
  tail call fastcc void @rtw_coex_set_rf_para(ptr noundef %rtwdev, [1 x i32] %164) #5
  %share_ant.i111 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %165 = ptrtoint ptr %share_ant.i111 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %share_ant.i111, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool.not.i112 = icmp eq i8 %166, 0
  %wl_gl_busy13.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 35
  %167 = ptrtoint ptr %wl_gl_busy13.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %wl_gl_busy13.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool14.not.i = icmp eq i8 %168, 0
  br i1 %tobool.not.i112, label %if.else12.i, label %if.then.i113

if.then.i113:                                     ; preds = %sw.bb12
  br i1 %tobool14.not.i, label %if.then.i113.if.else.i117_crit_edge, label %land.lhs.true.i116

if.then.i113.if.else.i117_crit_edge:              ; preds = %if.then.i113
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i117

land.lhs.true.i116:                               ; preds = %if.then.i113
  %wl_noisy_level.i114 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 75
  %169 = ptrtoint ptr %wl_noisy_level.i114 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %wl_noisy_level.i114, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %cmp.i115 = icmp eq i8 %170, 0
  br i1 %cmp.i115, label %land.lhs.true.i116.if.end.i120_crit_edge, label %land.lhs.true.i116.if.else.i117_crit_edge

land.lhs.true.i116.if.else.i117_crit_edge:        ; preds = %land.lhs.true.i116
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i117

land.lhs.true.i116.if.end.i120_crit_edge:         ; preds = %land.lhs.true.i116
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i120

if.else.i117:                                     ; preds = %land.lhs.true.i116.if.else.i117_crit_edge, %if.then.i113.if.else.i117_crit_edge
  br label %if.end.i120

if.end.i120:                                      ; preds = %if.else.i117, %land.lhs.true.i116.if.end.i120_crit_edge
  %table_case.0.i118 = phi i8 [ 10, %if.else.i117 ], [ 14, %land.lhs.true.i116.if.end.i120_crit_edge ]
  %..i119 = select i1 %tobool14.not.i, i32 20, i32 17
  br label %rtw_coex_action_bt_pan.exit

if.else12.i:                                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  %.30.i = select i1 %tobool14.not.i, i32 119, i32 117
  br label %rtw_coex_action_bt_pan.exit

rtw_coex_action_bt_pan.exit:                      ; preds = %if.else12.i, %if.end.i120
  %table_case.1.i121 = phi i8 [ %table_case.0.i118, %if.end.i120 ], [ 112, %if.else12.i ]
  %tdma_case.0.i122 = phi i32 [ %..i119, %if.end.i120 ], [ %.30.i, %if.else12.i ]
  tail call fastcc void @rtw_coex_table(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext %table_case.1.i121) #5
  tail call fastcc void @rtw_coex_tdma(ptr noundef %rtwdev, i1 noundef zeroext false, i32 noundef %tdma_case.0.i122) #5
  br label %sw.epilog

sw.bb13:                                          ; preds = %rtw_coex_algorithm.exit.sw.bb13_crit_edge, %rtw_coex_algorithm.exit.thread236
  %stat.i123 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9
  %171 = ptrtoint ptr %stat.i123 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %stat.i123, align 4, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool.not.i124 = icmp eq i8 %172, 0
  br i1 %tobool.not.i124, label %if.end.i127, label %sw.bb13.if.else16_crit_edge

sw.bb13.if.else16_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else16

if.end.i127:                                      ; preds = %sw.bb13
  %share_ant.i125 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %173 = ptrtoint ptr %share_ant.i125 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %share_ant.i125, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool3.not.i126 = icmp eq i8 %174, 0
  br i1 %tobool3.not.i126, label %lor.lhs.false5.i130, label %if.end.i127.if.else16_crit_edge

if.end.i127.if.else16_crit_edge:                  ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else16

lor.lhs.false5.i130:                              ; preds = %if.end.i127
  %wl_gl_busy.i128 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 35
  %175 = ptrtoint ptr %wl_gl_busy.i128 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %wl_gl_busy.i128, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool6.not.i129 = icmp eq i8 %176, 0
  br i1 %tobool6.not.i129, label %lor.lhs.false5.i130.if.else16_crit_edge, label %lor.lhs.false12.i133

lor.lhs.false5.i130.if.else16_crit_edge:          ; preds = %lor.lhs.false5.i130
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else16

lor.lhs.false12.i133:                             ; preds = %lor.lhs.false5.i130
  %bt_hid_pair_num.i131 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 70
  %177 = ptrtoint ptr %bt_hid_pair_num.i131 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %bt_hid_pair_num.i131, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %178)
  %cmp14.i132 = icmp ugt i8 %178, 1
  br i1 %cmp14.i132, label %lor.lhs.false12.i133.if.then15_crit_edge, label %if.end17.i135

lor.lhs.false12.i133.if.then15_crit_edge:         ; preds = %lor.lhs.false12.i133
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15

if.end17.i135:                                    ; preds = %lor.lhs.false12.i133
  %arrayidx.i134 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 5, i32 1
  %179 = ptrtoint ptr %arrayidx.i134 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx.i134, align 1
  %181 = zext i8 %180 to i64
  call void @__sanitizer_cov_trace_switch(i64 %181, ptr @__sancov_gen_cov_switch_values.298)
  switch i8 %180, label %if.end17.i135.if.end39.i139_crit_edge [
    i8 3, label %if.end17.i135.land.lhs.true.i137_crit_edge
    i8 0, label %if.end17.i135.land.lhs.true.i137_crit_edge271
  ]

if.end17.i135.land.lhs.true.i137_crit_edge271:    ; preds = %if.end17.i135
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i137

if.end17.i135.land.lhs.true.i137_crit_edge:       ; preds = %if.end17.i135
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i137

if.end17.i135.if.end39.i139_crit_edge:            ; preds = %if.end17.i135
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i139

land.lhs.true.i137:                               ; preds = %if.end17.i135.land.lhs.true.i137_crit_edge, %if.end17.i135.land.lhs.true.i137_crit_edge271
  %bt_rssi_state.i136 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 4
  %182 = ptrtoint ptr %bt_rssi_state.i136 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %bt_rssi_state.i136, align 4
  %184 = zext i8 %183 to i64
  call void @__sanitizer_cov_trace_switch(i64 %184, ptr @__sancov_gen_cov_switch_values.299)
  switch i8 %183, label %land.lhs.true.i137.if.end39.i139_crit_edge [
    i8 3, label %land.lhs.true.i137.if.then15_crit_edge
    i8 0, label %land.lhs.true.i137.if.then15_crit_edge272
  ]

land.lhs.true.i137.if.then15_crit_edge272:        ; preds = %land.lhs.true.i137
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15

land.lhs.true.i137.if.then15_crit_edge:           ; preds = %land.lhs.true.i137
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15

land.lhs.true.i137.if.end39.i139_crit_edge:       ; preds = %land.lhs.true.i137
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i139

if.end39.i139:                                    ; preds = %land.lhs.true.i137.if.end39.i139_crit_edge, %if.end17.i135.if.end39.i139_crit_edge
  %arrayidx51.i138 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 5, i32 3
  %185 = ptrtoint ptr %arrayidx51.i138 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx51.i138, align 1
  %187 = zext i8 %186 to i64
  call void @__sanitizer_cov_trace_switch(i64 %187, ptr @__sancov_gen_cov_switch_values.300)
  switch i8 %186, label %if.end39.i139.if.else16_crit_edge [
    i8 3, label %if.end39.i139.land.lhs.true63.i146_crit_edge
    i8 0, label %if.end39.i139.land.lhs.true63.i146_crit_edge273
  ]

if.end39.i139.land.lhs.true63.i146_crit_edge273:  ; preds = %if.end39.i139
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true63.i146

if.end39.i139.land.lhs.true63.i146_crit_edge:     ; preds = %if.end39.i139
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true63.i146

if.end39.i139.if.else16_crit_edge:                ; preds = %if.end39.i139
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else16

land.lhs.true63.i146:                             ; preds = %if.end39.i139.land.lhs.true63.i146_crit_edge, %if.end39.i139.land.lhs.true63.i146_crit_edge273
  %wl_tput_dir.i140 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 84
  %188 = ptrtoint ptr %wl_tput_dir.i140 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %wl_tput_dir.i140, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %cmp41.i141 = icmp eq i8 %189, 0
  %bt_rssi_state44.i142 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 4
  %arrayidx47.i143 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 4, i32 1
  %bt_rssi.0.in.i144 = select i1 %cmp41.i141, ptr %bt_rssi_state44.i142, ptr %arrayidx47.i143
  %190 = ptrtoint ptr %bt_rssi.0.in.i144 to i32
  call void @__asan_load1_noabort(i32 %190)
  %bt_rssi.0.i145 = load i8, ptr %bt_rssi.0.in.i144, align 1
  %191 = zext i8 %bt_rssi.0.i145 to i64
  call void @__sanitizer_cov_trace_switch(i64 %191, ptr @__sancov_gen_cov_switch_values.301)
  switch i8 %bt_rssi.0.i145, label %land.lhs.true63.i146.if.else16_crit_edge [
    i8 3, label %land.lhs.true63.i146.land.lhs.true76.i149_crit_edge
    i8 0, label %land.lhs.true63.i146.land.lhs.true76.i149_crit_edge274
  ]

land.lhs.true63.i146.land.lhs.true76.i149_crit_edge274: ; preds = %land.lhs.true63.i146
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true76.i149

land.lhs.true63.i146.land.lhs.true76.i149_crit_edge: ; preds = %land.lhs.true63.i146
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true76.i149

land.lhs.true63.i146.if.else16_crit_edge:         ; preds = %land.lhs.true63.i146
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else16

land.lhs.true76.i149:                             ; preds = %land.lhs.true63.i146.land.lhs.true76.i149_crit_edge, %land.lhs.true63.i146.land.lhs.true76.i149_crit_edge274
  %cnt_wl.i147 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 90
  %192 = ptrtoint ptr %cnt_wl.i147 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %cnt_wl.i147, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %193)
  %cmp78.i148 = icmp ult i32 %193, 6
  br i1 %cmp78.i148, label %land.lhs.true76.i149.if.then15_crit_edge, label %land.lhs.true76.i149.if.else16_crit_edge

land.lhs.true76.i149.if.else16_crit_edge:         ; preds = %land.lhs.true76.i149
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else16

land.lhs.true76.i149.if.then15_crit_edge:         ; preds = %land.lhs.true76.i149
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15

if.then15:                                        ; preds = %land.lhs.true76.i149.if.then15_crit_edge, %land.lhs.true.i137.if.then15_crit_edge, %land.lhs.true.i137.if.then15_crit_edge272, %lor.lhs.false12.i133.if.then15_crit_edge
  tail call fastcc void @rtw_coex_action_freerun(ptr noundef %rtwdev)
  br label %sw.epilog

if.else16:                                        ; preds = %land.lhs.true76.i149.if.else16_crit_edge, %land.lhs.true63.i146.if.else16_crit_edge, %if.end39.i139.if.else16_crit_edge, %lor.lhs.false5.i130.if.else16_crit_edge, %if.end.i127.if.else16_crit_edge, %sw.bb13.if.else16_crit_edge
  %chip3.i154 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %194 = ptrtoint ptr %chip3.i154 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %chip3.i154, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rtw_coex_action_bt_a2dp_hid) #5
  tail call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext 3) #5
  %wl_rf_para_rx.i155 = getelementptr inbounds %struct.rtw_chip_info, ptr %195, i32 0, i32 91
  %196 = ptrtoint ptr %wl_rf_para_rx.i155 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %wl_rf_para_rx.i155, align 4
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_loadN_noabort(i32 %198, i32 4)
  %.unpack.i156 = load i32, ptr %197, align 1
  %199 = insertvalue [1 x i32] undef, i32 %.unpack.i156, 0
  tail call fastcc void @rtw_coex_set_rf_para(ptr noundef %rtwdev, [1 x i32] %199) #5
  %share_ant.i157 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %200 = ptrtoint ptr %share_ant.i157 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %share_ant.i157, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %201)
  %tobool.not.i158 = icmp eq i8 %201, 0
  %bt_ble_exist21.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 9
  %202 = ptrtoint ptr %bt_ble_exist21.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %bt_ble_exist21.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool22.not.i = icmp eq i8 %203, 0
  br i1 %tobool.not.i158, label %if.else20.i, label %if.then.i159

if.then.i159:                                     ; preds = %if.else16
  br i1 %tobool22.not.i, label %if.else.i161, label %if.then.i159.if.end9.i_crit_edge

if.then.i159.if.end9.i_crit_edge:                 ; preds = %if.then.i159
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.else.i161:                                     ; preds = %if.then.i159
  call void @__sanitizer_cov_trace_pc() #7
  %bt_418_hid_exist.i160 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 27
  %204 = ptrtoint ptr %bt_418_hid_exist.i160 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %bt_418_hid_exist.i160, align 1, !range !601
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i161, %if.then.i159.if.end9.i_crit_edge
  %table_case.0.i162 = phi i8 [ 26, %if.then.i159.if.end9.i_crit_edge ], [ 9, %if.else.i161 ]
  %interval.0.i = phi i8 [ 0, %if.then.i159.if.end9.i_crit_edge ], [ %205, %if.else.i161 ]
  %wl_connecting.i163 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 45
  %206 = ptrtoint ptr %wl_connecting.i163 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %wl_connecting.i163, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %tobool10.not.i = icmp eq i8 %207, 0
  br i1 %tobool10.not.i, label %lor.lhs.false.i166, label %if.end9.i.if.end35.thread.i_crit_edge

if.end9.i.if.end35.thread.i_crit_edge:            ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.thread.i

lor.lhs.false.i166:                               ; preds = %if.end9.i
  %wl_gl_busy.i164 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 35
  %208 = ptrtoint ptr %wl_gl_busy.i164 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %wl_gl_busy.i164, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool11.not.i165 = icmp eq i8 %209, 0
  br i1 %tobool11.not.i165, label %lor.lhs.false.i166.if.end35.thread.i_crit_edge, label %if.end35.i

lor.lhs.false.i166.if.end35.thread.i_crit_edge:   ; preds = %lor.lhs.false.i166
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.thread.i

if.else20.i:                                      ; preds = %if.else16
  %.59.i = select i1 %tobool22.not.i, i8 113, i8 121
  %arrayidx26.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 5, i32 1
  %210 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx26.i, align 1
  %212 = zext i8 %211 to i64
  call void @__sanitizer_cov_trace_switch(i64 %212, ptr @__sancov_gen_cov_switch_values.302)
  switch i8 %211, label %if.else33.i [
    i8 3, label %if.else20.i.if.end35.thread.i_crit_edge
    i8 0, label %if.else20.i.if.end35.thread.i_crit_edge275
  ]

if.else20.i.if.end35.thread.i_crit_edge275:       ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.thread.i

if.else20.i.if.end35.thread.i_crit_edge:          ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.thread.i

if.else33.i:                                      ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.thread.i

if.end35.thread.i:                                ; preds = %if.else33.i, %if.else20.i.if.end35.thread.i_crit_edge, %if.else20.i.if.end35.thread.i_crit_edge275, %lor.lhs.false.i166.if.end35.thread.i_crit_edge, %if.end9.i.if.end35.thread.i_crit_edge
  %table_case.2.ph.i = phi i8 [ %.59.i, %if.else20.i.if.end35.thread.i_crit_edge ], [ %.59.i, %if.else20.i.if.end35.thread.i_crit_edge275 ], [ %table_case.0.i162, %if.end9.i.if.end35.thread.i_crit_edge ], [ %table_case.0.i162, %lor.lhs.false.i166.if.end35.thread.i_crit_edge ], [ %.59.i, %if.else33.i ]
  %tdma_case.0.ph.i167 = phi i32 [ 368, %if.else20.i.if.end35.thread.i_crit_edge ], [ 368, %if.else20.i.if.end35.thread.i_crit_edge275 ], [ 270, %if.end9.i.if.end35.thread.i_crit_edge ], [ 270, %lor.lhs.false.i166.if.end35.thread.i_crit_edge ], [ 369, %if.else33.i ]
  tail call fastcc void @rtw_coex_table(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext %table_case.2.ph.i) #5
  br label %rtw_coex_action_bt_a2dp_hid.exit

if.end35.i:                                       ; preds = %lor.lhs.false.i166
  %bt_418_hid_exist14.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 27
  %213 = ptrtoint ptr %bt_418_hid_exist14.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %bt_418_hid_exist14.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %214)
  %tobool15.not.i168 = icmp eq i8 %214, 0
  tail call fastcc void @rtw_coex_table(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext %table_case.0.i162) #5
  br i1 %tobool15.not.i168, label %if.end35.i.rtw_coex_action_bt_a2dp_hid.exit_crit_edge, label %if.then37.i

if.end35.i.rtw_coex_action_bt_a2dp_hid.exit_crit_edge: ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_action_bt_a2dp_hid.exit

if.then37.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @rtw_btc_wltoggle_table_a(ptr noundef %rtwdev, i8 noundef zeroext %table_case.0.i162) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %cur_h2c_para.i.i153) #5
  %215 = ptrtoint ptr %cur_h2c_para.i.i153 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 7, ptr %cur_h2c_para.i.i153, align 1
  %arrayidx2.i.i169 = getelementptr inbounds [6 x i8], ptr %cur_h2c_para.i.i153, i32 0, i32 1
  %216 = ptrtoint ptr %arrayidx2.i.i169 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %interval.0.i, ptr %arrayidx2.i.i169, align 1
  %arrayidx3.i.i170 = getelementptr inbounds [6 x i8], ptr %cur_h2c_para.i.i153, i32 0, i32 2
  %217 = ptrtoint ptr %arrayidx3.i.i170 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 -86, ptr %arrayidx3.i.i170, align 1
  %arrayidx6.i.i171 = getelementptr inbounds [6 x i8], ptr %cur_h2c_para.i.i153, i32 0, i32 3
  %218 = ptrtoint ptr %arrayidx6.i.i171 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 90, ptr %arrayidx6.i.i171, align 1
  %arrayidx9.i.i172 = getelementptr inbounds [6 x i8], ptr %cur_h2c_para.i.i153, i32 0, i32 4
  %219 = ptrtoint ptr %arrayidx9.i.i172 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 90, ptr %arrayidx9.i.i172, align 1
  %arrayidx12.i.i173 = getelementptr inbounds [6 x i8], ptr %cur_h2c_para.i.i153, i32 0, i32 5
  %220 = ptrtoint ptr %arrayidx12.i.i173 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 90, ptr %arrayidx12.i.i173, align 1
  %wl_toggle_interval.i.i174 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 86
  %221 = ptrtoint ptr %wl_toggle_interval.i.i174 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %interval.0.i, ptr %wl_toggle_interval.i.i174, align 4
  %uglygep.i.i175 = getelementptr i8, ptr %rtwdev, i32 17590
  %222 = call ptr @memcpy(ptr %uglygep.i.i175, ptr %cur_h2c_para.i.i153, i32 6)
  call void @rtw_fw_bt_wifi_control(ptr noundef %rtwdev, i8 noundef zeroext 7, ptr noundef %arrayidx2.i.i169) #5
  %223 = ptrtoint ptr %cur_h2c_para.i.i153 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %cur_h2c_para.i.i153, align 1
  %conv21.i.i176 = zext i8 %224 to i32
  %225 = ptrtoint ptr %arrayidx2.i.i169 to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %arrayidx2.i.i169, align 1
  %conv23.i.i177 = zext i8 %226 to i32
  %227 = ptrtoint ptr %arrayidx3.i.i170 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %arrayidx3.i.i170, align 1
  %conv25.i.i178 = zext i8 %228 to i32
  %229 = ptrtoint ptr %arrayidx6.i.i171 to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %arrayidx6.i.i171, align 1
  %conv27.i.i179 = zext i8 %230 to i32
  %231 = ptrtoint ptr %arrayidx9.i.i172 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx9.i.i172, align 1
  %conv29.i.i180 = zext i8 %232 to i32
  %233 = ptrtoint ptr %arrayidx12.i.i173 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %arrayidx12.i.i173, align 1
  %conv31.i.i181 = zext i8 %234 to i32
  call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.161, ptr noundef nonnull @__func__.rtw_btc_wltoggle_table_b, i32 noundef %conv21.i.i176, i32 noundef %conv23.i.i177, i32 noundef %conv25.i.i178, i32 noundef %conv27.i.i179, i32 noundef %conv29.i.i180, i32 noundef %conv31.i.i181) #5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cur_h2c_para.i.i153) #5
  br label %rtw_coex_action_bt_a2dp_hid.exit

rtw_coex_action_bt_a2dp_hid.exit:                 ; preds = %if.then37.i, %if.end35.i.rtw_coex_action_bt_a2dp_hid.exit_crit_edge, %if.end35.thread.i
  %tdma_case.064.i = phi i32 [ %tdma_case.0.ph.i167, %if.end35.thread.i ], [ 279, %if.then37.i ], [ 269, %if.end35.i.rtw_coex_action_bt_a2dp_hid.exit_crit_edge ]
  call fastcc void @rtw_coex_tdma(ptr noundef %rtwdev, i1 noundef zeroext false, i32 noundef %tdma_case.064.i) #5
  br label %sw.epilog

sw.bb18:                                          ; preds = %rtw_coex_algorithm.exit.sw.bb18_crit_edge, %rtw_coex_algorithm.exit.thread240
  %chip3.i182 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %235 = ptrtoint ptr %chip3.i182 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %chip3.i182, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rtw_coex_action_bt_a2dp_pan) #5
  tail call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext 3) #5
  %wl_rf_para_rx.i183 = getelementptr inbounds %struct.rtw_chip_info, ptr %236, i32 0, i32 91
  %237 = ptrtoint ptr %wl_rf_para_rx.i183 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %wl_rf_para_rx.i183, align 4
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_loadN_noabort(i32 %239, i32 4)
  %.unpack.i184 = load i32, ptr %238, align 1
  %240 = insertvalue [1 x i32] undef, i32 %.unpack.i184, 0
  tail call fastcc void @rtw_coex_set_rf_para(ptr noundef %rtwdev, [1 x i32] %240) #5
  %share_ant.i185 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %241 = ptrtoint ptr %share_ant.i185 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %share_ant.i185, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %242)
  %tobool.not.i186 = icmp eq i8 %242, 0
  %wl_gl_busy26.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 35
  %243 = ptrtoint ptr %wl_gl_busy26.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %wl_gl_busy26.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %244)
  %tobool27.not.i = icmp eq i8 %244, 0
  br i1 %tobool.not.i186, label %if.else25.i193, label %if.else11.i

if.else11.i:                                      ; preds = %sw.bb18
  br i1 %tobool27.not.i, label %if.else11.i.if.else16.i_crit_edge, label %land.lhs.true.i189

if.else11.i.if.else16.i_crit_edge:                ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else16.i

land.lhs.true.i189:                               ; preds = %if.else11.i
  %wl_noisy_level.i187 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 75
  %245 = ptrtoint ptr %wl_noisy_level.i187 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %wl_noisy_level.i187, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %246)
  %cmp.i188 = icmp eq i8 %246, 0
  br i1 %cmp.i188, label %land.lhs.true.i189.if.end17.i192_crit_edge, label %land.lhs.true.i189.if.else16.i_crit_edge

land.lhs.true.i189.if.else16.i_crit_edge:         ; preds = %land.lhs.true.i189
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else16.i

land.lhs.true.i189.if.end17.i192_crit_edge:       ; preds = %land.lhs.true.i189
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i192

if.else16.i:                                      ; preds = %land.lhs.true.i189.if.else16.i_crit_edge, %if.else11.i.if.else16.i_crit_edge
  br label %if.end17.i192

if.end17.i192:                                    ; preds = %if.else16.i, %land.lhs.true.i189.if.end17.i192_crit_edge
  %table_case.0.i190 = phi i8 [ 10, %if.else16.i ], [ 14, %land.lhs.true.i189.if.end17.i192_crit_edge ]
  %..i191 = select i1 %tobool27.not.i, i32 20, i32 15
  br label %rtw_coex_action_bt_a2dp_pan.exit

if.else25.i193:                                   ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #7
  %.58.i = select i1 %tobool27.not.i, i32 120, i32 115
  br label %rtw_coex_action_bt_a2dp_pan.exit

rtw_coex_action_bt_a2dp_pan.exit:                 ; preds = %if.else25.i193, %if.end17.i192
  %table_case.1.i194 = phi i8 [ %table_case.0.i190, %if.end17.i192 ], [ 112, %if.else25.i193 ]
  %tdma_case.0.i195 = phi i32 [ %..i191, %if.end17.i192 ], [ %.58.i, %if.else25.i193 ]
  %247 = ptrtoint ptr %wl_rf_para_rx.i183 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %wl_rf_para_rx.i183, align 4
  %249 = ptrtoint ptr %248 to i32
  call void @__asan_loadN_noabort(i32 %249, i32 4)
  %.unpack57.i = load i32, ptr %248, align 1
  %250 = insertvalue [1 x i32] undef, i32 %.unpack57.i, 0
  tail call fastcc void @rtw_coex_set_rf_para(ptr noundef %rtwdev, [1 x i32] %250) #5
  tail call fastcc void @rtw_coex_table(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext %table_case.1.i194) #5
  tail call fastcc void @rtw_coex_tdma(ptr noundef %rtwdev, i1 noundef zeroext false, i32 noundef %tdma_case.0.i195) #5
  br label %sw.epilog

sw.bb19:                                          ; preds = %rtw_coex_algorithm.exit.sw.bb19_crit_edge, %rtw_coex_algorithm.exit.thread244
  %chip3.i196 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %251 = ptrtoint ptr %chip3.i196 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %chip3.i196, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rtw_coex_action_bt_pan_hid) #5
  tail call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext 3) #5
  %wl_rf_para_rx.i197 = getelementptr inbounds %struct.rtw_chip_info, ptr %252, i32 0, i32 91
  %253 = ptrtoint ptr %wl_rf_para_rx.i197 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %wl_rf_para_rx.i197, align 4
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_loadN_noabort(i32 %255, i32 4)
  %.unpack.i198 = load i32, ptr %254, align 1
  %256 = insertvalue [1 x i32] undef, i32 %.unpack.i198, 0
  tail call fastcc void @rtw_coex_set_rf_para(ptr noundef %rtwdev, [1 x i32] %256) #5
  %share_ant.i199 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %257 = ptrtoint ptr %share_ant.i199 to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %share_ant.i199, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %258)
  %tobool.not.i200 = icmp eq i8 %258, 0
  %wl_gl_busy7.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 35
  %259 = ptrtoint ptr %wl_gl_busy7.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %wl_gl_busy7.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %260)
  %tobool8.not.i201 = icmp eq i8 %260, 0
  %..i202 = select i1 %tobool8.not.i201, i32 19, i32 18
  %.21.i203 = select i1 %tobool8.not.i201, i32 119, i32 117
  %table_case.0.i204 = select i1 %tobool.not.i200, i8 113, i8 9
  %tdma_case.0.i205 = select i1 %tobool.not.i200, i32 %.21.i203, i32 %..i202
  tail call fastcc void @rtw_coex_table(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext %table_case.0.i204) #5
  tail call fastcc void @rtw_coex_tdma(ptr noundef %rtwdev, i1 noundef zeroext false, i32 noundef %tdma_case.0.i205) #5
  br label %sw.epilog

sw.bb20:                                          ; preds = %rtw_coex_algorithm.exit.sw.bb20_crit_edge, %rtw_coex_algorithm.exit.thread248
  %chip3.i206 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %261 = ptrtoint ptr %chip3.i206 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %chip3.i206, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rtw_coex_action_bt_a2dp_pan_hid) #5
  tail call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext 3) #5
  %wl_rf_para_rx.i207 = getelementptr inbounds %struct.rtw_chip_info, ptr %262, i32 0, i32 91
  %263 = ptrtoint ptr %wl_rf_para_rx.i207 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %wl_rf_para_rx.i207, align 4
  %265 = ptrtoint ptr %264 to i32
  call void @__asan_loadN_noabort(i32 %265, i32 4)
  %.unpack.i208 = load i32, ptr %264, align 1
  %266 = insertvalue [1 x i32] undef, i32 %.unpack.i208, 0
  tail call fastcc void @rtw_coex_set_rf_para(ptr noundef %rtwdev, [1 x i32] %266) #5
  %share_ant.i209 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %267 = ptrtoint ptr %share_ant.i209 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %share_ant.i209, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %268)
  %tobool.not.i210 = icmp eq i8 %268, 0
  %wl_gl_busy7.i211 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 35
  %269 = ptrtoint ptr %wl_gl_busy7.i211 to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %wl_gl_busy7.i211, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %270)
  %tobool8.not.i212 = icmp eq i8 %270, 0
  %..i213 = select i1 %tobool8.not.i212, i32 20, i32 15
  %.21.i214 = select i1 %tobool8.not.i212, i32 120, i32 115
  %table_case.0.i215 = select i1 %tobool.not.i210, i8 113, i8 10
  %tdma_case.0.i216 = select i1 %tobool.not.i210, i32 %.21.i214, i32 %..i213
  tail call fastcc void @rtw_coex_table(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext %table_case.0.i215) #5
  tail call fastcc void @rtw_coex_tdma(ptr noundef %rtwdev, i1 noundef zeroext false, i32 noundef %tdma_case.0.i216) #5
  br label %sw.epilog

sw.bb21:                                          ; preds = %rtw_coex_algorithm.exit.sw.bb21_crit_edge, %rtw_coex_algorithm.exit.thread
  tail call fastcc void @rtw_coex_action_bt_idle(ptr noundef %rtwdev)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb21, %sw.bb20, %sw.bb19, %rtw_coex_action_bt_a2dp_pan.exit, %rtw_coex_action_bt_a2dp_hid.exit, %if.then15, %rtw_coex_action_bt_pan.exit, %rtw_coex_action_bt_a2dp.exit, %rtw_coex_action_bt_a2dpsink.exit, %if.then6, %rtw_coex_action_bt_hid.exit, %if.then, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtw_coex_action_freerun(ptr noundef %rtwdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip3 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %0 = ptrtoint ptr %chip3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip3, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 64, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.rtw_coex_action_freerun) #5
  %share_ant = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 32
  %2 = ptrtoint ptr %share_ant to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %share_ant, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %freerun = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 6
  %4 = ptrtoint ptr %freerun to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %freerun, align 1
  tail call fastcc void @rtw_coex_update_wl_ch_info(ptr noundef %rtwdev, i8 noundef zeroext 1)
  tail call fastcc void @rtw_coex_set_ant_path(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext 7)
  %5 = ptrtoint ptr %chip3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip3, align 4
  %scbd_support.i = getelementptr inbounds %struct.rtw_chip_info, ptr %6, i32 0, i32 68
  %7 = ptrtoint ptr %scbd_support.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %scbd_support.i, align 1, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end.rtw_coex_write_scbd.exit_crit_edge, label %if.end.i

if.end.rtw_coex_write_scbd.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_write_scbd.exit

if.end.i:                                         ; preds = %if.end
  %score_board.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 87
  %9 = ptrtoint ptr %score_board.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %score_board.i, align 2
  %new_scbd10_def.i = getelementptr inbounds %struct.rtw_chip_info, ptr %6, i32 0, i32 69
  %11 = ptrtoint ptr %new_scbd10_def.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %new_scbd10_def.i, align 2, !range !601
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool5.not.i.not = icmp eq i8 %12, 0
  %13 = and i16 %10, -1027
  %and28.i = or i16 %13, 2
  %14 = or i16 %10, 1026
  %val.0.i = select i1 %tobool5.not.i.not, i16 %14, i16 %and28.i
  call void @__sanitizer_cov_trace_cmp2(i16 %val.0.i, i16 %10)
  %cmp.not.i = icmp eq i16 %val.0.i, %10
  br i1 %cmp.not.i, label %if.end.i.rtw_coex_write_scbd.exit_crit_edge, label %if.then36.i

if.end.i.rtw_coex_write_scbd.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_coex_write_scbd.exit

if.then36.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %score_board.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %val.0.i, ptr %score_board.i, align 2
  %16 = or i16 %val.0.i, -32768
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %17 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hci.i.i, align 8
  %write16.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write16.i.i, align 4
  tail call void %20(ptr noundef %rtwdev, i32 noundef 170, i16 noundef zeroext %16) #5
  br label %rtw_coex_write_scbd.exit

rtw_coex_write_scbd.exit:                         ; preds = %if.then36.i, %if.end.i.rtw_coex_write_scbd.exit_crit_edge, %if.end.rtw_coex_write_scbd.exit_crit_edge
  %wl_rssi_state = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 5
  %21 = ptrtoint ptr %wl_rssi_state to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %wl_rssi_state, align 4
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.303)
  switch i8 %22, label %if.else [
    i8 3, label %rtw_coex_write_scbd.exit.if.end47_crit_edge
    i8 0, label %rtw_coex_write_scbd.exit.if.end47_crit_edge98
  ]

rtw_coex_write_scbd.exit.if.end47_crit_edge98:    ; preds = %rtw_coex_write_scbd.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

rtw_coex_write_scbd.exit.if.end47_crit_edge:      ; preds = %rtw_coex_write_scbd.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.else:                                          ; preds = %rtw_coex_write_scbd.exit
  %arrayidx15 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 5, i32 1
  %24 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx15, align 1
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.304)
  switch i8 %25, label %if.else28 [
    i8 3, label %if.else.if.end47_crit_edge
    i8 0, label %if.else.if.end47_crit_edge99
  ]

if.else.if.end47_crit_edge99:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.else28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx31 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 10, i32 5, i32 2
  %27 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx31, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %28)
  %switch.selectcmp.case1 = icmp eq i8 %28, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %switch.selectcmp.case2 = icmp eq i8 %28, 0
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %29 = select i1 %switch.selectcmp, i8 4, i8 5
  br label %if.end47

if.end47:                                         ; preds = %if.else28, %if.else.if.end47_crit_edge, %if.else.if.end47_crit_edge99, %rtw_coex_write_scbd.exit.if.end47_crit_edge, %rtw_coex_write_scbd.exit.if.end47_crit_edge98
  %level.0 = phi i8 [ 2, %rtw_coex_write_scbd.exit.if.end47_crit_edge ], [ 3, %if.else.if.end47_crit_edge ], [ 3, %if.else.if.end47_crit_edge99 ], [ 2, %rtw_coex_write_scbd.exit.if.end47_crit_edge98 ], [ %29, %if.else28 ]
  %wl_rf_para_num = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 82
  %30 = ptrtoint ptr %wl_rf_para_num to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %wl_rf_para_num, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %level.0)
  %cmp50.not = icmp ugt i8 %31, %level.0
  %sub = add i8 %31, -1
  %spec.select97 = select i1 %cmp50.not, i8 %level.0, i8 %sub
  %wl_tput_dir = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 84
  %32 = ptrtoint ptr %wl_tput_dir to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %wl_tput_dir, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp59 = icmp eq i8 %33, 0
  %wl_rf_para_rx = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 91
  %wl_rf_para_tx = getelementptr inbounds %struct.rtw_chip_info, ptr %1, i32 0, i32 90
  %wl_rf_para_rx.sink = select i1 %cmp59, ptr %wl_rf_para_tx, ptr %wl_rf_para_rx
  %34 = ptrtoint ptr %wl_rf_para_rx.sink to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wl_rf_para_rx.sink, align 4
  %idxprom64 = zext i8 %spec.select97 to i32
  %arrayidx65 = getelementptr %struct.coex_rf_para, ptr %35, i32 %idxprom64
  %36 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %.unpack = load i32, ptr %arrayidx65, align 1
  %37 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  tail call fastcc void @rtw_coex_set_rf_para(ptr noundef %rtwdev, [1 x i32] %37)
  tail call fastcc void @rtw_coex_table(ptr noundef %rtwdev, i1 noundef zeroext false, i8 noundef zeroext 100)
  tail call fastcc void @rtw_coex_tdma(ptr noundef %rtwdev, i1 noundef zeroext false, i32 noundef 100)
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_fw_query_bt_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_fw_wl_ch_info(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_fw_bt_ignore_wlan_action(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_stations_atomic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_coex_sta_stat_iter(ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -848
  %vif2 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %vif2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vif2, align 4
  %cmp.not = icmp eq ptr %3, %add.ptr.i
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %file = getelementptr inbounds %struct.rtw_coex_sta_stat_iter_data, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %file, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %avg_rssi = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %avg_rssi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %avg_rssi, align 4
  %shr.i = lshr i32 %7, 10
  %mac_id = getelementptr inbounds %struct.rtw_sta_info, ptr %drv_priv, i32 0, i32 4
  %8 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mac_id, align 1
  %conv4 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.234, i32 noundef %conv4) #5
  %conv5 = and i32 %shr.i, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.236, i32 noundef %conv5) #5
  %bw_mode = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %bw_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bw_mode, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.237, i32 noundef %11) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 268)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 268)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !15, !16, !17, !19, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !41, !43, !45, !46, !48, !50, !52, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !335, !337, !338, !340, !342, !344, !345, !346, !348, !350, !352, !353, !355, !356, !358, !360, !362, !363, !365, !367, !369, !370, !372, !373, !374, !375, !377, !378, !379, !381, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !497, !499, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590}
!llvm.module.flags = !{!592, !593, !594, !595, !596, !597, !598, !599}
!llvm.ident = !{!600}

!0 = !{ptr @__ksymtab_rtw_coex_write_scbd, !1, !"__ksymtab_rtw_coex_write_scbd", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 395, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 881, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @rtw_coex_read_indirect_reg._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @rtw_coex_read_indirect_reg._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_rtw_coex_read_indirect_reg, !11, !"__ksymtab_rtw_coex_read_indirect_reg", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 887, i32 1}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 899, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @rtw_coex_write_indirect_reg._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @rtw_coex_write_indirect_reg._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__ksymtab_rtw_coex_write_indirect_reg, !18, !"__ksymtab_rtw_coex_write_indirect_reg", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 901, i32 1}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2624, i32 2}
!21 = !{ptr @__func__.rtw_coex_power_on_setting, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2664, i32 3}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2674, i32 3}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2693, i32 3}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2708, i32 3}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2734, i32 3}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2740, i32 3}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2751, i32 3}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2768, i32 3}
!38 = !{ptr @__func__.rtw_coex_switchband_notify, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2771, i32 3}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2774, i32 3}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2797, i32 3}
!45 = !{ptr @__func__.rtw_coex_connect_notify, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2803, i32 3}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2816, i32 3}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2834, i32 3}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2849, i32 3}
!54 = !{ptr @__func__.rtw_coex_media_status_notify, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2856, i32 3}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2869, i32 3}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2900, i32 3}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2908, i32 3}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2921, i32 3}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2931, i32 3}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2946, i32 4}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2952, i32 3}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2958, i32 2}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2972, i32 3}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3075, i32 3}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3100, i32 3}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3113, i32 3}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3149, i32 2}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3152, i32 6}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3247, i32 2}
!87 = !{ptr @__func__.rtw_coex_display_coex_info, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3700, i32 2}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3701, i32 16}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3702, i32 16}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3706, i32 15}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3707, i32 15}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3710, i32 15}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3714, i32 15}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3718, i32 16}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3719, i32 6}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3720, i32 25}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3720, i32 36}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3722, i32 16}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3723, i32 6}
!113 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3726, i32 31}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3728, i32 6}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3728, i32 18}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3729, i32 16}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3730, i32 6}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3731, i32 28}
!125 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3731, i32 38}
!127 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3734, i32 16}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3735, i32 6}
!131 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3739, i32 16}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3740, i32 6}
!135 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3746, i32 16}
!137 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3748, i32 16}
!139 = !{ptr @.str.64, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3749, i32 6}
!141 = !{ptr @.str.65, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3750, i32 54}
!143 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3751, i32 53}
!145 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3751, i32 67}
!147 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3755, i32 16}
!149 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3756, i32 6}
!151 = !{ptr @.str.70, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3758, i32 13}
!153 = !{ptr @.str.71, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3758, i32 28}
!155 = !{ptr @.str.72, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3758, i32 39}
!157 = !{ptr @.str.73, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3759, i32 32}
!159 = !{ptr @.str.74, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3761, i32 33}
!161 = !{ptr @.str.75, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3762, i32 37}
!163 = !{ptr @.str.76, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3763, i32 37}
!165 = !{ptr @.str.77, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3764, i32 7}
!167 = !{ptr @.str.78, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3766, i32 6}
!169 = !{ptr @.str.79, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3766, i32 15}
!171 = !{ptr @.str.80, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3767, i32 32}
!173 = !{ptr @.str.81, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3769, i32 16}
!175 = !{ptr @.str.82, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3770, i32 6}
!177 = !{ptr @.str.83, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3775, i32 16}
!179 = !{ptr @.str.84, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3776, i32 6}
!181 = !{ptr @.str.85, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3781, i32 16}
!183 = !{ptr @.str.86, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3782, i32 6}
!185 = !{ptr @.str.87, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3786, i32 16}
!187 = !{ptr @.str.88, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3787, i32 6}
!189 = !{ptr @.str.89, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3791, i32 17}
!191 = !{ptr @.str.90, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3796, i32 16}
!193 = !{ptr @.str.91, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3798, i32 16}
!195 = !{ptr @.str.92, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3799, i32 6}
!197 = !{ptr @.str.93, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3800, i32 16}
!199 = !{ptr @.str.94, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3801, i32 6}
!201 = !{ptr @.str.95, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3804, i32 16}
!203 = !{ptr @.str.96, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3805, i32 6}
!205 = !{ptr @.str.97, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3816, i32 17}
!207 = !{ptr @.str.98, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3818, i32 17}
!209 = !{ptr @.str.99, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3819, i32 7}
!211 = !{ptr @.str.100, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3825, i32 17}
!213 = !{ptr @.str.101, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3827, i32 17}
!215 = !{ptr @.str.102, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3828, i32 7}
!217 = !{ptr @.str.103, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3831, i32 16}
!219 = !{ptr @.str.104, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3832, i32 6}
!221 = !{ptr @.str.105, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3834, i32 22}
!223 = !{ptr @.str.106, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3834, i32 30}
!225 = !{ptr @.str.107, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3836, i32 16}
!227 = !{ptr @.str.108, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3837, i32 6}
!229 = !{ptr @.str.109, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3841, i32 16}
!231 = !{ptr @.str.110, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3842, i32 6}
!233 = !{ptr @.str.111, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3846, i32 16}
!235 = !{ptr @.str.112, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3847, i32 6}
!237 = !{ptr @.str.113, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3850, i32 6}
!239 = !{ptr @.str.114, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3851, i32 37}
!241 = !{ptr @.str.115, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3851, i32 44}
!243 = !{ptr @.str.116, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3853, i32 16}
!245 = !{ptr @.str.117, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3854, i32 6}
!247 = !{ptr @.str.118, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3858, i32 16}
!249 = !{ptr @.str.119, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3859, i32 6}
!251 = !{ptr @.str.120, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3864, i32 16}
!253 = !{ptr @.str.121, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3865, i32 6}
!255 = !{ptr @.str.122, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3872, i32 16}
!257 = !{ptr @.str.123, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3874, i32 16}
!259 = !{ptr @.str.124, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3875, i32 6}
!261 = !{ptr @.str.125, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3876, i32 26}
!263 = !{ptr @.str.126, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3876, i32 33}
!265 = !{ptr @.str.127, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3877, i32 25}
!267 = !{ptr @.str.128, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3877, i32 32}
!269 = !{ptr @.str.129, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3878, i32 16}
!271 = !{ptr @.str.130, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3879, i32 6}
!273 = !{ptr @.str.131, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3880, i32 27}
!275 = !{ptr @.str.132, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3880, i32 34}
!277 = !{ptr @.str.133, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3885, i32 16}
!279 = !{ptr @.str.134, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3886, i32 6}
!281 = !{ptr @.str.135, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3889, i32 6}
!283 = !{ptr @.str.136, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3893, i32 6}
!285 = !{ptr @.str.137, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3896, i32 16}
!287 = !{ptr @.str.138, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3897, i32 6}
!289 = !{ptr @.str.139, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3898, i32 35}
!291 = !{ptr @.str.140, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3898, i32 41}
!293 = !{ptr @.str.141, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3904, i32 16}
!295 = !{ptr @.str.142, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3905, i32 6}
!297 = !{ptr @.str.143, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3911, i32 6}
!299 = !{ptr @.str.144, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3914, i32 44}
!301 = !{ptr @.str.145, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3917, i32 44}
!303 = !{ptr @.str.146, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 478, i32 3}
!305 = !{ptr @.str.147, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1228, i32 2}
!307 = !{ptr @.str.148, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1234, i32 3}
!309 = !{ptr @__func__.rtw_coex_set_ant_path, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @.str.149, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1246, i32 3}
!312 = !{ptr @.str.150, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1269, i32 3}
!314 = !{ptr @.str.151, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1284, i32 3}
!316 = !{ptr @.str.152, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1293, i32 3}
!318 = !{ptr @.str.153, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1308, i32 3}
!320 = !{ptr @.str.154, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1324, i32 3}
!322 = !{ptr @.str.155, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1340, i32 3}
!324 = !{ptr @.str.156, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1355, i32 3}
!326 = !{ptr @.str.157, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 419, i32 3}
!328 = !{ptr @.str.158, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 433, i32 4}
!330 = !{ptr @.str.159, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1028, i32 2}
!332 = !{ptr @.str.160, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1013, i32 2}
!334 = !{ptr @__func__.rtw_coex_set_table, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @.str.161, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 961, i32 2}
!337 = !{ptr @__func__.rtw_btc_wltoggle_table_a, !336, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @__func__.__rtw_coex_init_hw_config, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2569, i32 2}
!340 = !{ptr @.str.162, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2598, i32 3}
!342 = !{ptr @.str.163, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1167, i32 3}
!344 = !{ptr @.str.164, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @.str.165, !343, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @.str.166, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1207, i32 2}
!348 = !{ptr @.str.167, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 319, i32 2}
!350 = !{ptr @.str.168, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 343, i32 2}
!352 = !{ptr @__func__.rtw_coex_tdma_timer_base, !351, !"<string literal>", i1 false, i1 false}
!353 = distinct !{null, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1098, i32 3}
!355 = !{ptr @__func__.rtw_coex_set_tdma, !354, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @.str.170, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1110, i32 3}
!358 = !{ptr @.str.171, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1120, i32 3}
!360 = !{ptr @.str.172, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1069, i32 3}
!362 = !{ptr @__func__.rtw_coex_power_save_state, !361, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @.str.173, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1079, i32 3}
!365 = !{ptr @__func__.rtw_coex_action_coex_all_off, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1484, i32 2}
!367 = !{ptr @.str.174, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 856, i32 2}
!369 = !{ptr @__func__.rtw_coex_set_bt_rx_gain, !368, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @.str.175, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 615, i32 3}
!372 = !{ptr @.str.176, !371, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @rtw_coex_info_request._entry, !371, !"_entry", i1 false, i1 false}
!374 = !{ptr @rtw_coex_info_request._entry_ptr, !371, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.178, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 621, i32 3}
!377 = !{ptr @rtw_coex_info_request._entry.177, !376, !"_entry", i1 false, i1 false}
!378 = !{ptr @rtw_coex_info_request._entry_ptr.179, !376, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @.str.180, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2436, i32 2}
!381 = !{ptr @__func__.rtw_coex_run_coex, !380, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @.str.181, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2445, i32 3}
!384 = !{ptr @.str.182, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2451, i32 3}
!386 = !{ptr @.str.183, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2457, i32 3}
!388 = !{ptr @.str.184, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2464, i32 3}
!390 = !{ptr @.str.185, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2479, i32 2}
!392 = !{ptr @.str.186, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 299, i32 3}
!394 = !{ptr @__func__.rtw_coex_action_wl_under5g, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2231, i32 2}
!396 = distinct !{null, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1552, i32 2}
!398 = !{ptr @__func__.rtw_coex_action_wl_not_connected, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2351, i32 2}
!400 = !{ptr @__func__.rtw_coex_action_wl_only, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2258, i32 2}
!402 = !{ptr @__func__.rtw_coex_action_wl_native_lps, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2286, i32 2}
!404 = !{ptr @__func__.rtw_coex_action_bt_whql_test, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1577, i32 2}
!406 = !{ptr @__func__.rtw_coex_action_bt_relink, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1605, i32 2}
!408 = !{ptr @__func__.rtw_coex_action_bt_inquiry, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1715, i32 2}
!410 = !{ptr @.str.187, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1726, i32 4}
!412 = !{ptr @.str.188, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1739, i32 4}
!414 = !{ptr @.str.189, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1755, i32 4}
!416 = !{ptr @.str.190, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1760, i32 4}
!418 = !{ptr @.str.191, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1786, i32 4}
!420 = !{ptr @.str.192, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1791, i32 4}
!422 = !{ptr @.str.193, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1798, i32 2}
!424 = !{ptr @__func__.rtw_coex_action_bt_idle, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1646, i32 2}
!426 = !{ptr @__func__.rtw_coex_action_wl_linkscan, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2314, i32 2}
!428 = !{ptr @__func__.rtw_coex_action_wl_connected, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2375, i32 2}
!430 = !{ptr @.str.194, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1471, i32 2}
!432 = !{ptr @.str.195, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1390, i32 2}
!434 = !{ptr @.str.196, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1391, i32 2}
!436 = !{ptr @.str.197, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1392, i32 2}
!438 = !{ptr @.str.198, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1393, i32 2}
!440 = !{ptr @.str.199, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1394, i32 2}
!442 = !{ptr @.str.200, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1395, i32 2}
!444 = !{ptr @.str.201, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1396, i32 2}
!446 = !{ptr @.str.202, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1397, i32 2}
!448 = !{ptr @.str.203, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1398, i32 2}
!450 = !{ptr @.str.204, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1399, i32 2}
!452 = !{ptr @.str.205, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1400, i32 2}
!454 = !{ptr @.str.206, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1401, i32 2}
!456 = !{ptr @.str.207, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1402, i32 2}
!458 = !{ptr @.str.208, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1403, i32 2}
!460 = !{ptr @.str.209, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1404, i32 2}
!462 = !{ptr @.str.210, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1405, i32 2}
!464 = !{ptr @.str.211, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1407, i32 10}
!466 = !{ptr @.str.212, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1376, i32 2}
!468 = !{ptr @.str.213, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1378, i32 2}
!470 = !{ptr @__func__.rtw_coex_action_bt_hfp, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1813, i32 2}
!472 = !{ptr @__func__.rtw_coex_action_freerun, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1511, i32 2}
!474 = !{ptr @__func__.rtw_coex_action_bt_hid, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1851, i32 2}
!476 = !{ptr @__func__.rtw_btc_wltoggle_table_b, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 990, i32 2}
!478 = !{ptr @__func__.rtw_coex_action_bt_a2dpsink, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1975, i32 2}
!480 = !{ptr @__func__.rtw_coex_action_bt_a2dp, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 1934, i32 2}
!482 = !{ptr @__func__.rtw_coex_action_bt_pan, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2013, i32 2}
!484 = !{ptr @__func__.rtw_coex_action_bt_a2dp_hid, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2055, i32 2}
!486 = !{ptr @__func__.rtw_coex_action_bt_a2dp_pan, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2108, i32 2}
!488 = !{ptr @__func__.rtw_coex_action_bt_pan_hid, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2164, i32 2}
!490 = !{ptr @__func__.rtw_coex_action_bt_a2dp_pan_hid, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 2199, i32 2}
!492 = !{ptr @__func__.rtw_coex_query_bt_info, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 453, i32 2}
!494 = !{ptr @.str.214, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 821, i32 2}
!496 = !{ptr @__func__.rtw_coex_update_wl_ch_info, !495, !"<string literal>", i1 false, i1 false}
!497 = !{ptr @.str.215, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 776, i32 2}
!499 = !{ptr @__func__.rtw_coex_update_bt_link_info, !498, !"<string literal>", i1 false, i1 false}
!500 = !{ptr @.str.216, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 669, i32 2}
!502 = !{ptr @.str.217, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 670, i32 2}
!504 = !{ptr @.str.218, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 671, i32 2}
!506 = !{ptr @.str.219, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 672, i32 2}
!508 = !{ptr @.str.220, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 673, i32 2}
!510 = !{ptr @.str.221, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 674, i32 2}
!512 = !{ptr @.str.222, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 176, i32 3}
!514 = !{ptr @.str.223, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 189, i32 3}
!516 = !{ptr @.str.224, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 199, i32 3}
!518 = !{ptr @.str.225, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 233, i32 4}
!520 = !{ptr @.str.226, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 239, i32 4}
!522 = !{ptr @.str.227, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3283, i32 2}
!524 = !{ptr @.str.228, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3284, i32 2}
!526 = !{ptr @.str.229, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3285, i32 2}
!528 = !{ptr @.str.230, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3620, i32 16}
!530 = !{ptr @.str.231, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3621, i32 16}
!532 = !{ptr @.str.232, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3622, i32 6}
!534 = !{ptr @.str.233, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3624, i32 6}
!536 = !{ptr @.str.234, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3600, i32 16}
!538 = !{ptr @.str.235, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3601, i32 16}
!540 = !{ptr @.str.236, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3601, i32 36}
!542 = !{ptr @.str.237, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3602, i32 36}
!544 = !{ptr @.str.238, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3638, i32 2}
!546 = !{ptr @.str.239, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3639, i32 2}
!548 = !{ptr @.str.240, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3297, i32 2}
!550 = !{ptr @.str.241, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3298, i32 2}
!552 = !{ptr @.str.242, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3299, i32 2}
!554 = !{ptr @.str.243, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3300, i32 2}
!556 = !{ptr @.str.244, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3301, i32 2}
!558 = !{ptr @.str.245, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3302, i32 2}
!560 = !{ptr @.str.246, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3303, i32 2}
!562 = !{ptr @.str.247, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3304, i32 2}
!564 = !{ptr @.str.248, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3305, i32 2}
!566 = !{ptr @.str.249, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3306, i32 2}
!568 = !{ptr @.str.250, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3307, i32 2}
!570 = !{ptr @.str.251, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3308, i32 2}
!572 = !{ptr @.str.252, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3309, i32 2}
!574 = !{ptr @.str.253, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3310, i32 2}
!576 = !{ptr @.str.254, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3311, i32 2}
!578 = !{ptr @.str.255, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3489, i32 18}
!580 = !{ptr @.str.256, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3397, i32 34}
!582 = !{ptr @.str.257, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3416, i32 15}
!584 = !{ptr @.str.258, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3427, i32 50}
!586 = !{ptr @.str.259, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3430, i32 50}
!588 = !{ptr @.str.260, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3433, i32 50}
!590 = !{ptr @.str.261, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../drivers/net/wireless/realtek/rtw88/coex.c", i32 3449, i32 49}
!592 = !{i32 1, !"wchar_size", i32 2}
!593 = !{i32 1, !"min_enum_size", i32 4}
!594 = !{i32 8, !"branch-target-enforcement", i32 0}
!595 = !{i32 8, !"sign-return-address", i32 0}
!596 = !{i32 8, !"sign-return-address-all", i32 0}
!597 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!598 = !{i32 7, !"uwtable", i32 1}
!599 = !{i32 7, !"frame-pointer", i32 2}
!600 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!601 = !{i8 0, i8 2}
!602 = !{!"auto-init"}
!603 = !{i32 0, i32 33}
!604 = !{!"branch_weights", i32 1, i32 2000}
