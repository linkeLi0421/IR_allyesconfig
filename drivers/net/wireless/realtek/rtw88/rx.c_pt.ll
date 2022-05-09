; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtw88/rx.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtw88/rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rtw_rx_stats\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw_rx_stats\09\09\09\09"
module asm "\09.long\09__crc_rtw_rx_stats\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw_rx_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw_rx_stats\22\09\09\09\09\09"
module asm "__kstrtabns_rtw_rx_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtw_rx_fill_rx_status\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw_rx_fill_rx_status\09\09\09\09"
module asm "\09.long\09__crc_rtw_rx_fill_rx_status\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw_rx_fill_rx_status:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw_rx_fill_rx_status\22\09\09\09\09\09"
module asm "__kstrtabns_rtw_rx_fill_rx_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
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
%struct.rtw_rx_addr_match_data = type { ptr, ptr, ptr, ptr }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.rtw_rx_pkt_stat = type { i8, i8, i8, i8, i8, i32, i16, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], i8, i8, [4 x i8], [4 x i8], [4 x i8], i16, i8, ptr, ptr, ptr }
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

@__kstrtab_rtw_rx_stats = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw_rx_stats = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw_rx_stats = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw_rx_stats to i32), ptr @__kstrtab_rtw_rx_stats, ptr @__kstrtabns_rtw_rx_stats }, section "___ksymtab+rtw_rx_stats", align 4
@__kstrtab_rtw_rx_fill_rx_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw_rx_fill_rx_status = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw_rx_fill_rx_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw_rx_fill_rx_status to i32), ptr @__kstrtab_rtw_rx_fill_rx_status, ptr @__kstrtabns_rtw_rx_fill_rx_status }, section "___ksymtab+rtw_rx_fill_rx_status", align 4
@rtw_rx_phy_stat._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 77, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unknown pkt rate = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtw_rx_phy_stat\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/realtek/rtw88/rx.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtw_rx_phy_stat._entry_ptr = internal global ptr @rtw_rx_phy_stat._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.6 = internal global [50 x i64] [i64 48, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63]
@___asan_gen_.7 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [43 x i8] c"../drivers/net/wireless/realtek/rtw88/rx.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 77, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_rtw_rx_fill_rx_status, ptr @__ksymtab_rtw_rx_stats, ptr @rtw_rx_phy_stat._entry, ptr @rtw_rx_phy_stat._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_rx_phy_stat._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtw_rx_stats(ptr nocapture noundef %rtwdev, ptr noundef %vif, ptr nocapture noundef readonly %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %4 = and i16 %3, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %4)
  %cmp.i = icmp eq i16 %4, 2048
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr1, align 2
  %add.ptr1.i = getelementptr %struct.ieee80211_hdr, ptr %1, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %8, %6
  %add.ptr3.i = getelementptr %struct.ieee80211_hdr, ptr %1, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %10
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i27 = icmp eq i16 %and510.i, -1
  br i1 %cmp.i27, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %11 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr1, align 4
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not = icmp eq i32 %13, 0
  br i1 %tobool.i.not, label %if.then5, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5:                                         ; preds = %land.lhs.true
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %conv = zext i32 %15 to i64
  %rx_unicast = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %rx_unicast to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %rx_unicast, align 8
  %add = add i64 %17, %conv
  store i64 %add, ptr %rx_unicast, align 8
  %rx_cnt = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 10, i32 3
  %18 = ptrtoint ptr %rx_cnt to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %rx_cnt, align 8
  %inc = add i64 %19, 1
  store i64 %inc, ptr %rx_cnt, align 8
  %tobool.not = icmp eq ptr %vif, null
  br i1 %tobool.not, label %if.then5.cleanup_crit_edge, label %if.then7

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %conv10 = zext i32 %21 to i64
  %rx_unicast12 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 31
  %22 = ptrtoint ptr %rx_unicast12 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %rx_unicast12, align 8
  %add13 = add i64 %23, %conv10
  store i64 %add13, ptr %rx_unicast12, align 8
  %rx_cnt15 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 32, i32 3
  %24 = ptrtoint ptr %rx_cnt15 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %rx_cnt15, align 8
  %inc16 = add i64 %25, 1
  store i64 %inc16, ptr %rx_cnt15, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.then5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_rx_fill_rx_status(ptr noundef %rtwdev, ptr noundef %pkt_stat, ptr noundef %hdr, ptr noundef %rx_status, ptr nocapture readnone %phy_status) #2 align 64 {
entry:
  %data.i = alloca %struct.rtw_rx_addr_match_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtwdev, align 8
  %2 = call ptr @memset(ptr %rx_status, i32 0, i32 48)
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chandef, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %center_freq, align 4
  %conv = trunc i32 %6 to i16
  %freq = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 5
  %bf.shl = shl i16 %conv, 3
  %7 = ptrtoint ptr %freq to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %bf.shl, ptr %freq, align 4
  %8 = load ptr, ptr %chandef, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %conv5 = trunc i32 %10 to i8
  %band6 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 11
  %11 = ptrtoint ptr %band6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv5, ptr %band6, align 4
  %feature1.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 7, i32 8
  %12 = ptrtoint ptr %feature1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %feature1.i, align 4
  %and.i = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %freq.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 21
  %14 = ptrtoint ptr %freq.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %freq.i, align 2
  %bf.shl.i = shl i16 %15, 3
  %16 = ptrtoint ptr %freq to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %bf.shl.i, ptr %freq, align 4
  %band.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 22
  %17 = ptrtoint ptr %band.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %band.i, align 4
  %19 = ptrtoint ptr %band6 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %band6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %crc_err = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 2
  %20 = ptrtoint ptr %crc_err to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %crc_err, align 2, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %flag = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 4
  %22 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flag, align 8
  %or = or i32 %23, 32
  store i32 %or, ptr %flag, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %decrypted = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 3
  %24 = ptrtoint ptr %decrypted to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %decrypted, align 1, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool9.not = icmp eq i8 %25, 0
  br i1 %tobool9.not, label %if.end8.if.end13_crit_edge, label %if.then10

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %flag11 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 4
  %26 = ptrtoint ptr %flag11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flag11, align 8
  %or12 = or i32 %27, 2
  store i32 %or12, ptr %flag11, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end8.if.end13_crit_edge
  %rate = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 10
  %28 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %rate, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %29)
  %cmp = icmp ugt i8 %29, 43
  br i1 %cmp, label %if.end13.if.end30.sink.split_crit_edge, label %if.else

if.end13.if.end30.sink.split_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.sink.split

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %29)
  %cmp22 = icmp ugt i8 %29, 11
  br i1 %cmp22, label %if.else.if.end30.sink.split_crit_edge, label %if.else.if.end30_crit_edge

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.else.if.end30.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.sink.split

if.end30.sink.split:                              ; preds = %if.else.if.end30.sink.split_crit_edge, %if.end13.if.end30.sink.split_crit_edge
  %.sink = phi i16 [ -32768, %if.end13.if.end30.sink.split_crit_edge ], [ 16384, %if.else.if.end30.sink.split_crit_edge ]
  %encoding = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 7
  %30 = ptrtoint ptr %encoding to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %bf.load26 = load i16, ptr %encoding, align 1
  %bf.clear27 = and i16 %bf.load26, 16383
  %bf.set28 = or i16 %bf.clear27, %.sink
  store i16 %bf.set28, ptr %encoding, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.end30.sink.split, %if.else.if.end30_crit_edge
  %31 = ptrtoint ptr %band6 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %band6, align 4
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i8 %32, label %if.else69thread-pre-split [
    i8 1, label %land.lhs.true
    i8 0, label %land.lhs.true53
  ]

land.lhs.true:                                    ; preds = %if.end30
  %34 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rate, align 1
  %36 = add i8 %35, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %36)
  %37 = icmp ult i8 %36, 8
  br i1 %37, label %if.then44, label %land.lhs.true.if.else69_crit_edge

land.lhs.true.if.else69_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else69

if.then44:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %rate_idx = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 8
  %38 = ptrtoint ptr %rate_idx to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %36, ptr %rate_idx, align 1
  br label %if.end80

land.lhs.true53:                                  ; preds = %if.end30
  %39 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %rate, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %40)
  %cmp61 = icmp ult i8 %40, 12
  br i1 %cmp61, label %if.then63, label %land.lhs.true53.if.then74_crit_edge

land.lhs.true53.if.then74_crit_edge:              ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then74

if.then63:                                        ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #7
  %rate_idx68 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 8
  %41 = ptrtoint ptr %rate_idx68 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %rate_idx68, align 1
  br label %if.end80

if.else69thread-pre-split:                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %42)
  %.pr = load i8, ptr %rate, align 1
  br label %if.else69

if.else69:                                        ; preds = %if.else69thread-pre-split, %land.lhs.true.if.else69_crit_edge
  %43 = phi i8 [ %.pr, %if.else69thread-pre-split ], [ %35, %land.lhs.true.if.else69_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %43)
  %cmp72 = icmp ugt i8 %43, 11
  br i1 %cmp72, label %if.else69.if.then74_crit_edge, label %if.else69.if.end80_crit_edge

if.else69.if.end80_crit_edge:                     ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.else69.if.then74_crit_edge:                    ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then74

if.then74:                                        ; preds = %if.else69.if.then74_crit_edge, %land.lhs.true53.if.then74_crit_edge
  %44 = phi i8 [ %43, %if.else69.if.then74_crit_edge ], [ %40, %land.lhs.true53.if.then74_crit_edge ]
  %conv76 = zext i8 %44 to i16
  %rate_idx77 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 8
  %nss = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 9
  tail call void @rtw_desc_to_mcsrate(i16 noundef zeroext %conv76, ptr noundef %rate_idx77, ptr noundef %nss) #5
  br label %if.end80

if.end80:                                         ; preds = %if.then74, %if.else69.if.end80_crit_edge, %if.then63, %if.then44
  %flag81 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 4
  %45 = ptrtoint ptr %flag81 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flag81, align 8
  %or82 = or i32 %46, 128
  store i32 %or82, ptr %flag81, align 8
  %tsf_low = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 14
  %47 = ptrtoint ptr %tsf_low to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tsf_low, align 4
  %conv83 = zext i32 %48 to i64
  %49 = ptrtoint ptr %rx_status to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv83, ptr %rx_status, align 8
  %bw = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 7
  %50 = ptrtoint ptr %bw to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bw, align 2
  %52 = zext i8 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %51, label %if.else102 [
    i8 2, label %if.then87
    i8 1, label %if.then97
  ]

if.then87:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  %bw88 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 7
  %53 = ptrtoint ptr %bw88 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %bf.load89 = load i16, ptr %bw88, align 1
  %bf.clear90 = and i16 %bf.load89, -14337
  %bf.set91 = or i16 %bf.clear90, 8192
  store i16 %bf.set91, ptr %bw88, align 1
  br label %if.end108

if.then97:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  %bw98 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 7
  %54 = ptrtoint ptr %bw98 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %bf.load99 = load i16, ptr %bw98, align 1
  %bf.clear100 = and i16 %bf.load99, -14337
  %bf.set101 = or i16 %bf.clear100, 6144
  store i16 %bf.set101, ptr %bw98, align 1
  br label %if.end108

if.else102:                                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  %bw103 = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 7
  %55 = ptrtoint ptr %bw103 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %bf.load104 = load i16, ptr %bw103, align 1
  %bf.clear105 = and i16 %bf.load104, -14337
  store i16 %bf.clear105, ptr %bw103, align 1
  br label %if.end108

if.end108:                                        ; preds = %if.else102, %if.then97, %if.then87
  %signal_power = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 5
  %56 = ptrtoint ptr %signal_power to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %signal_power, align 4
  %conv109 = trunc i32 %57 to i8
  %signal = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 13
  %58 = ptrtoint ptr %signal to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv109, ptr %signal, align 2
  %rf_path_num = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 14
  %59 = ptrtoint ptr %rf_path_num to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %rf_path_num, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp112169.not = icmp eq i8 %60, 0
  br i1 %cmp112169.not, label %if.end108.for.end_crit_edge, label %for.body.lr.ph

if.end108.for.end_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end108
  %chains = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %shl = shl nuw i32 1, %indvars.iv
  %61 = ptrtoint ptr %chains to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %chains, align 1
  %63 = trunc i32 %shl to i8
  %conv117 = or i8 %62, %63
  store i8 %conv117, ptr %chains, align 1
  %arrayidx = getelementptr %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 15, i32 %indvars.iv
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx, align 1
  %arrayidx119 = getelementptr %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 15, i32 %indvars.iv
  %66 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %arrayidx119, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %67 = ptrtoint ptr %rf_path_num to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %rf_path_num, align 2
  %69 = zext i8 %68 to i32
  %cmp112 = icmp ult i32 %indvars.iv.next, %69
  br i1 %cmp112, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end108.for.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data.i) #5
  %70 = ptrtoint ptr %crc_err to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %crc_err, align 2, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i = icmp eq i8 %71, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.end.rtw_rx_addr_match.exit_crit_edge

for.end.rtw_rx_addr_match.exit_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_rx_addr_match.exit

lor.lhs.false.i:                                  ; preds = %for.end
  %icv_err.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %pkt_stat, i32 0, i32 1
  %72 = ptrtoint ptr %icv_err.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %icv_err.i, align 1, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool1.not.i = icmp eq i8 %73, 0
  br i1 %tobool1.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.rtw_rx_addr_match.exit_crit_edge

lor.lhs.false.i.rtw_rx_addr_match.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_rx_addr_match.exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %74 = ptrtoint ptr %pkt_stat to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %pkt_stat, align 4, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool3.not.i = icmp eq i8 %75, 0
  br i1 %tobool3.not.i, label %lor.lhs.false2.i.rtw_rx_addr_match.exit_crit_edge, label %lor.lhs.false4.i

lor.lhs.false2.i.rtw_rx_addr_match.exit_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_rx_addr_match.exit

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false2.i
  %76 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %hdr, align 2
  %78 = and i16 %77, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %78)
  %cmp.i.i = icmp eq i16 %78, 1024
  br i1 %cmp.i.i, label %lor.lhs.false4.i.rtw_rx_addr_match.exit_crit_edge, label %if.end.i

lor.lhs.false4.i.rtw_rx_addr_match.exit_crit_edge: ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtw_rx_addr_match.exit

if.end.i:                                         ; preds = %lor.lhs.false4.i
  %79 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %rtwdev, ptr %data.i, align 4
  %hdr6.i = getelementptr inbounds %struct.rtw_rx_addr_match_data, ptr %data.i, i32 0, i32 1
  %80 = ptrtoint ptr %hdr6.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %hdr, ptr %hdr6.i, align 4
  %pkt_stat7.i = getelementptr inbounds %struct.rtw_rx_addr_match_data, ptr %data.i, i32 0, i32 2
  %81 = ptrtoint ptr %pkt_stat7.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %pkt_stat, ptr %pkt_stat7.i, align 4
  %82 = and i16 %77, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %cmp.i.not.i.i = icmp eq i16 %82, 0
  br i1 %cmp.i.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %addr1.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 2
  br label %get_hdr_bssid.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  %83 = and i16 %77, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %cmp.i11.not.i.i = icmp eq i16 %83, 0
  br i1 %cmp.i11.not.i.i, label %if.else4.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %addr2.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 3
  br label %get_hdr_bssid.exit.i

if.else4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %addr3.i.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %hdr, i32 0, i32 4
  br label %get_hdr_bssid.exit.i

get_hdr_bssid.exit.i:                             ; preds = %if.else4.i.i, %if.then2.i.i, %if.then.i.i
  %bssid.0.i.i = phi ptr [ %addr1.i.i, %if.then.i.i ], [ %addr2.i.i, %if.then2.i.i ], [ %addr3.i.i, %if.else4.i.i ]
  %bssid.i = getelementptr inbounds %struct.rtw_rx_addr_match_data, ptr %data.i, i32 0, i32 3
  %84 = ptrtoint ptr %bssid.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %bssid.0.i.i, ptr %bssid.i, align 4
  %85 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rtwdev, align 8
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %86, i32 noundef 0, ptr noundef nonnull @rtw_rx_addr_match_iter, ptr noundef nonnull %data.i) #5
  br label %rtw_rx_addr_match.exit

rtw_rx_addr_match.exit:                           ; preds = %get_hdr_bssid.exit.i, %lor.lhs.false4.i.rtw_rx_addr_match.exit_crit_edge, %lor.lhs.false2.i.rtw_rx_addr_match.exit_crit_edge, %lor.lhs.false.i.rtw_rx_addr_match.exit_crit_edge, %for.end.rtw_rx_addr_match.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data.i) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_desc_to_mcsrate(i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_active_interfaces_atomic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_rx_addr_match_iter(ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %mac, ptr noundef %vif) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hdr1 = getelementptr inbounds %struct.rtw_rx_addr_match_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %hdr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdr1, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %pkt_stat3 = getelementptr inbounds %struct.rtw_rx_addr_match_data, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %pkt_stat3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pkt_stat3, align 4
  %bssid4 = getelementptr inbounds %struct.rtw_rx_addr_match_data, ptr %data, i32 0, i32 3
  %6 = ptrtoint ptr %bssid4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bssid4, align 4
  %bss_conf = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %8 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bss_conf, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %7, align 4
  %xor.i = xor i32 %13, %11
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %7, i32 4
  %16 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %17, %15
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr, align 4
  %20 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr1, align 4
  %xor.i35 = xor i32 %21, %19
  %add.ptr.i36 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %add.ptr.i36 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i36, align 2
  %add.ptr1.i37 = getelementptr %struct.ieee80211_hdr, ptr %1, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %add.ptr1.i37 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr1.i37, align 2
  %xor37.i38 = xor i16 %25, %23
  %xor3.i39 = zext i16 %xor37.i38 to i32
  %or.i40 = or i32 %xor.i35, %xor3.i39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i40)
  %cmp.i41 = icmp eq i32 %or.i40, 0
  br i1 %cmp.i41, label %if.end.if.end10_crit_edge, label %lor.lhs.false

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

lor.lhs.false:                                    ; preds = %if.end
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %1, align 2
  %28 = and i16 %27, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %28)
  %cmp.i42 = icmp eq i16 %28, -32768
  br i1 %cmp.i42, label %lor.lhs.false.if.end10_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.end10:                                         ; preds = %lor.lhs.false.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %rate.i = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %5, i32 0, i32 10
  %29 = ptrtoint ptr %rate.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rate.i, align 1
  %curr_rx_rate.i = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 51
  %31 = ptrtoint ptr %curr_rx_rate.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %curr_rx_rate.i, align 2
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %1, align 2
  %34 = and i16 %33, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %34)
  %cmp.i.i = icmp eq i16 %34, -32768
  br i1 %cmp.i.i, label %if.then.i, label %if.end10.if.end.i_crit_edge

if.end10.if.end.i_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %cur_pkt_count.i = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 52
  %35 = ptrtoint ptr %cur_pkt_count.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %cur_pkt_count.i, align 2
  %inc.i = add i16 %36, 1
  store i16 %inc.i, ptr %cur_pkt_count.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end10.if.end.i_crit_edge
  %37 = ptrtoint ptr %rate.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %rate.i, align 1
  %39 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %38, label %do.end.i [
    i8 0, label %if.end.i.pkt_num.i_crit_edge
    i8 1, label %if.end.i.pkt_num.i_crit_edge43
    i8 2, label %if.end.i.pkt_num.i_crit_edge44
    i8 3, label %if.end.i.pkt_num.i_crit_edge45
    i8 4, label %if.end.i.sw.epilog.i_crit_edge
    i8 5, label %if.end.i.sw.epilog.i_crit_edge46
    i8 6, label %if.end.i.sw.epilog.i_crit_edge47
    i8 7, label %if.end.i.sw.epilog.i_crit_edge48
    i8 8, label %if.end.i.sw.epilog.i_crit_edge49
    i8 9, label %if.end.i.sw.epilog.i_crit_edge50
    i8 10, label %if.end.i.sw.epilog.i_crit_edge51
    i8 11, label %if.end.i.sw.epilog.i_crit_edge52
    i8 44, label %if.end.i.sw.bb5.i_crit_edge
    i8 45, label %if.end.i.sw.bb5.i_crit_edge53
    i8 46, label %if.end.i.sw.bb5.i_crit_edge54
    i8 47, label %if.end.i.sw.bb5.i_crit_edge55
    i8 48, label %if.end.i.sw.bb5.i_crit_edge56
    i8 49, label %if.end.i.sw.bb5.i_crit_edge57
    i8 50, label %if.end.i.sw.bb5.i_crit_edge58
    i8 51, label %if.end.i.sw.bb5.i_crit_edge59
    i8 52, label %if.end.i.sw.bb5.i_crit_edge60
    i8 53, label %if.end.i.sw.bb5.i_crit_edge61
    i8 12, label %if.end.i.sw.bb5.i_crit_edge62
    i8 13, label %if.end.i.sw.bb5.i_crit_edge63
    i8 14, label %if.end.i.sw.bb5.i_crit_edge64
    i8 15, label %if.end.i.sw.bb5.i_crit_edge65
    i8 16, label %if.end.i.sw.bb5.i_crit_edge66
    i8 17, label %if.end.i.sw.bb5.i_crit_edge67
    i8 18, label %if.end.i.sw.bb5.i_crit_edge68
    i8 19, label %if.end.i.sw.bb5.i_crit_edge69
    i8 54, label %if.end.i.sw.bb7.i_crit_edge
    i8 55, label %if.end.i.sw.bb7.i_crit_edge70
    i8 56, label %if.end.i.sw.bb7.i_crit_edge71
    i8 57, label %if.end.i.sw.bb7.i_crit_edge72
    i8 58, label %if.end.i.sw.bb7.i_crit_edge73
    i8 59, label %if.end.i.sw.bb7.i_crit_edge74
    i8 60, label %if.end.i.sw.bb7.i_crit_edge75
    i8 61, label %if.end.i.sw.bb7.i_crit_edge76
    i8 62, label %if.end.i.sw.bb7.i_crit_edge77
    i8 63, label %if.end.i.sw.bb7.i_crit_edge78
    i8 20, label %if.end.i.sw.bb7.i_crit_edge79
    i8 21, label %if.end.i.sw.bb7.i_crit_edge80
    i8 22, label %if.end.i.sw.bb7.i_crit_edge81
    i8 23, label %if.end.i.sw.bb7.i_crit_edge82
    i8 24, label %if.end.i.sw.bb7.i_crit_edge83
    i8 25, label %if.end.i.sw.bb7.i_crit_edge84
    i8 26, label %if.end.i.sw.bb7.i_crit_edge85
    i8 27, label %if.end.i.sw.bb7.i_crit_edge86
  ]

if.end.i.sw.bb7.i_crit_edge86:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

if.end.i.sw.bb7.i_crit_edge85:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

if.end.i.sw.bb7.i_crit_edge84:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

if.end.i.sw.bb7.i_crit_edge83:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

if.end.i.sw.bb7.i_crit_edge82:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

if.end.i.sw.bb7.i_crit_edge81:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

if.end.i.sw.bb7.i_crit_edge80:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

if.end.i.sw.bb7.i_crit_edge79:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

if.end.i.sw.bb7.i_crit_edge78:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

if.end.i.sw.bb7.i_crit_edge77:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

if.end.i.sw.bb7.i_crit_edge76:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

if.end.i.sw.bb7.i_crit_edge75:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

if.end.i.sw.bb7.i_crit_edge74:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

if.end.i.sw.bb7.i_crit_edge73:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

if.end.i.sw.bb7.i_crit_edge72:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

if.end.i.sw.bb7.i_crit_edge71:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

if.end.i.sw.bb7.i_crit_edge70:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

if.end.i.sw.bb7.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

if.end.i.sw.bb5.i_crit_edge69:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

if.end.i.sw.bb5.i_crit_edge68:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

if.end.i.sw.bb5.i_crit_edge67:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

if.end.i.sw.bb5.i_crit_edge66:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

if.end.i.sw.bb5.i_crit_edge65:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

if.end.i.sw.bb5.i_crit_edge64:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

if.end.i.sw.bb5.i_crit_edge63:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

if.end.i.sw.bb5.i_crit_edge62:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

if.end.i.sw.bb5.i_crit_edge61:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

if.end.i.sw.bb5.i_crit_edge60:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

if.end.i.sw.bb5.i_crit_edge59:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

if.end.i.sw.bb5.i_crit_edge58:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

if.end.i.sw.bb5.i_crit_edge57:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

if.end.i.sw.bb5.i_crit_edge56:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

if.end.i.sw.bb5.i_crit_edge55:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

if.end.i.sw.bb5.i_crit_edge54:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

if.end.i.sw.bb5.i_crit_edge53:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

if.end.i.sw.bb5.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb5.i

if.end.i.sw.epilog.i_crit_edge52:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end.i.sw.epilog.i_crit_edge51:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end.i.sw.epilog.i_crit_edge50:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end.i.sw.epilog.i_crit_edge49:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end.i.sw.epilog.i_crit_edge48:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end.i.sw.epilog.i_crit_edge47:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end.i.sw.epilog.i_crit_edge46:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end.i.pkt_num.i_crit_edge45:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pkt_num.i

if.end.i.pkt_num.i_crit_edge44:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pkt_num.i

if.end.i.pkt_num.i_crit_edge43:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pkt_num.i

if.end.i.pkt_num.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pkt_num.i

sw.bb5.i:                                         ; preds = %if.end.i.sw.bb5.i_crit_edge, %if.end.i.sw.bb5.i_crit_edge53, %if.end.i.sw.bb5.i_crit_edge54, %if.end.i.sw.bb5.i_crit_edge55, %if.end.i.sw.bb5.i_crit_edge56, %if.end.i.sw.bb5.i_crit_edge57, %if.end.i.sw.bb5.i_crit_edge58, %if.end.i.sw.bb5.i_crit_edge59, %if.end.i.sw.bb5.i_crit_edge60, %if.end.i.sw.bb5.i_crit_edge61, %if.end.i.sw.bb5.i_crit_edge62, %if.end.i.sw.bb5.i_crit_edge63, %if.end.i.sw.bb5.i_crit_edge64, %if.end.i.sw.bb5.i_crit_edge65, %if.end.i.sw.bb5.i_crit_edge66, %if.end.i.sw.bb5.i_crit_edge67, %if.end.i.sw.bb5.i_crit_edge68, %if.end.i.sw.bb5.i_crit_edge69
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.end.i.sw.bb7.i_crit_edge, %if.end.i.sw.bb7.i_crit_edge70, %if.end.i.sw.bb7.i_crit_edge71, %if.end.i.sw.bb7.i_crit_edge72, %if.end.i.sw.bb7.i_crit_edge73, %if.end.i.sw.bb7.i_crit_edge74, %if.end.i.sw.bb7.i_crit_edge75, %if.end.i.sw.bb7.i_crit_edge76, %if.end.i.sw.bb7.i_crit_edge77, %if.end.i.sw.bb7.i_crit_edge78, %if.end.i.sw.bb7.i_crit_edge79, %if.end.i.sw.bb7.i_crit_edge80, %if.end.i.sw.bb7.i_crit_edge81, %if.end.i.sw.bb7.i_crit_edge82, %if.end.i.sw.bb7.i_crit_edge83, %if.end.i.sw.bb7.i_crit_edge84, %if.end.i.sw.bb7.i_crit_edge85, %if.end.i.sw.bb7.i_crit_edge86
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = zext i8 %38 to i32
  %dev.i = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 1
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str, i32 noundef %conv.i) #8
  br label %rtw_rx_phy_stat.exit

sw.epilog.i:                                      ; preds = %sw.bb7.i, %sw.bb5.i, %if.end.i.sw.epilog.i_crit_edge, %if.end.i.sw.epilog.i_crit_edge46, %if.end.i.sw.epilog.i_crit_edge47, %if.end.i.sw.epilog.i_crit_edge48, %if.end.i.sw.epilog.i_crit_edge49, %if.end.i.sw.epilog.i_crit_edge50, %if.end.i.sw.epilog.i_crit_edge51, %if.end.i.sw.epilog.i_crit_edge52
  %exitcond.not.i = phi i1 [ false, %sw.bb7.i ], [ true, %sw.bb5.i ], [ true, %if.end.i.sw.epilog.i_crit_edge ], [ true, %if.end.i.sw.epilog.i_crit_edge46 ], [ true, %if.end.i.sw.epilog.i_crit_edge47 ], [ true, %if.end.i.sw.epilog.i_crit_edge48 ], [ true, %if.end.i.sw.epilog.i_crit_edge49 ], [ true, %if.end.i.sw.epilog.i_crit_edge50 ], [ true, %if.end.i.sw.epilog.i_crit_edge51 ], [ true, %if.end.i.sw.epilog.i_crit_edge52 ]
  %evm_id.0.i = phi i8 [ 2, %sw.bb7.i ], [ 1, %sw.bb5.i ], [ 0, %if.end.i.sw.epilog.i_crit_edge ], [ 0, %if.end.i.sw.epilog.i_crit_edge46 ], [ 0, %if.end.i.sw.epilog.i_crit_edge47 ], [ 0, %if.end.i.sw.epilog.i_crit_edge48 ], [ 0, %if.end.i.sw.epilog.i_crit_edge49 ], [ 0, %if.end.i.sw.epilog.i_crit_edge50 ], [ 0, %if.end.i.sw.epilog.i_crit_edge51 ], [ 0, %if.end.i.sw.epilog.i_crit_edge52 ]
  %42 = zext i8 %evm_id.0.i to i32
  %arrayidx.i = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 54, i32 %42
  %arrayidx17.i = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 48, i32 0
  %43 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx17.i, align 1
  %conv18.i = zext i8 %44 to i32
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i.i = icmp eq i32 %46, 0
  %sub.i.i = mul i32 %46, 3
  %shl19.i.i = shl nuw nsw i32 %conv18.i, 10
  %add.i.i = add i32 %sub.i.i, %shl19.i.i
  %shr.i.i = lshr i32 %add.i.i, 2
  %cond.i.i = select i1 %tobool.not.i.i, i32 %shl19.i.i, i32 %shr.i.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 %cond.i.i, ptr %arrayidx.i, align 4
  br i1 %exitcond.not.i, label %sw.epilog.i.for.cond20.preheader.i_crit_edge, label %for.body.i.1

sw.epilog.i.for.cond20.preheader.i_crit_edge:     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond20.preheader.i

for.cond20.preheader.i:                           ; preds = %for.body.i.1, %sw.epilog.i.for.cond20.preheader.i_crit_edge
  %rf_path_num.i = getelementptr inbounds %struct.rtw_dev, ptr %3, i32 0, i32 5, i32 14
  %48 = ptrtoint ptr %rf_path_num.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %rf_path_num.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp2376.not.i = icmp eq i8 %49, 0
  br i1 %cmp2376.not.i, label %for.cond20.preheader.i.pkt_num.i_crit_edge, label %for.body25.lr.ph.i

for.cond20.preheader.i.pkt_num.i_crit_edge:       ; preds = %for.cond20.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pkt_num.i

for.body25.lr.ph.i:                               ; preds = %for.cond20.preheader.i
  %50 = shl nuw nsw i8 %evm_id.0.i, 2
  %wide.trip.count.i = zext i8 %49 to i32
  br label %for.body25.i

for.body.i.1:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %51 = add nuw nsw i32 %42, 1
  %arrayidx.i.1 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 54, i32 %51
  %arrayidx17.i.1 = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 48, i32 1
  %52 = ptrtoint ptr %arrayidx17.i.1 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx17.i.1, align 1
  %conv18.i.1 = zext i8 %53 to i32
  %54 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %arrayidx.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.i.1 = icmp eq i32 %55, 0
  %sub.i.i.1 = mul i32 %55, 3
  %shl19.i.i.1 = shl nuw nsw i32 %conv18.i.1, 10
  %add.i.i.1 = add i32 %sub.i.i.1, %shl19.i.i.1
  %shr.i.i.1 = lshr i32 %add.i.i.1, 2
  %cond.i.i.1 = select i1 %tobool.not.i.i.1, i32 %shl19.i.i.1, i32 %shr.i.i.1
  %56 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 %cond.i.i.1, ptr %arrayidx.i.1, align 4
  br label %for.cond20.preheader.i

for.body25.i:                                     ; preds = %for.body25.i.for.body25.i_crit_edge, %for.body25.lr.ph.i
  %indvars.iv79.i = phi i32 [ 0, %for.body25.lr.ph.i ], [ %indvars.iv.next80.i, %for.body25.i.for.body25.i_crit_edge ]
  %57 = trunc i32 %indvars.iv79.i to i8
  %conv30.i = add i8 %50, %57
  %idxprom31.i = zext i8 %conv30.i to i32
  %arrayidx32.i = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 55, i32 %idxprom31.i
  %arrayidx34.i = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 47, i32 %indvars.iv79.i
  %58 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx34.i, align 1
  %conv35.i = sext i8 %59 to i32
  %60 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %arrayidx32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i68.i = icmp eq i32 %61, 0
  %sub.i69.i = mul i32 %61, 3
  %shl19.i70.i = shl nsw i32 %conv35.i, 10
  %add.i71.i = add i32 %sub.i69.i, %shl19.i70.i
  %shr.i72.i = lshr i32 %add.i71.i, 2
  %cond.i73.i = select i1 %tobool.not.i68.i, i32 %shl19.i70.i, i32 %shr.i72.i
  %62 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 %cond.i73.i, ptr %arrayidx32.i, align 4
  %indvars.iv.next80.i = add nuw nsw i32 %indvars.iv79.i, 1
  %exitcond81.not.i = icmp eq i32 %indvars.iv.next80.i, %wide.trip.count.i
  br i1 %exitcond81.not.i, label %for.body25.i.pkt_num.i_crit_edge, label %for.body25.i.for.body25.i_crit_edge

for.body25.i.for.body25.i_crit_edge:              ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body25.i

for.body25.i.pkt_num.i_crit_edge:                 ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pkt_num.i

pkt_num.i:                                        ; preds = %for.body25.i.pkt_num.i_crit_edge, %for.cond20.preheader.i.pkt_num.i_crit_edge, %if.end.i.pkt_num.i_crit_edge, %if.end.i.pkt_num.i_crit_edge43, %if.end.i.pkt_num.i_crit_edge44, %if.end.i.pkt_num.i_crit_edge45
  %63 = ptrtoint ptr %rate.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %rate.i, align 1
  %idxprom40.i = zext i8 %64 to i32
  %arrayidx41.i = getelementptr %struct.rtw_dev, ptr %3, i32 0, i32 13, i32 52, i32 1, i32 %idxprom40.i
  %65 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx41.i, align 2
  %inc42.i = add i16 %66, 1
  store i16 %inc42.i, ptr %arrayidx41.i, align 2
  br label %rtw_rx_phy_stat.exit

rtw_rx_phy_stat.exit:                             ; preds = %pkt_num.i, %do.end.i
  %67 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %3, align 8
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 3
  %call14 = tail call ptr @ieee80211_find_sta_by_ifaddr(ptr noundef %68, ptr noundef %addr2, ptr noundef %addr) #5
  %tobool.not = icmp eq ptr %call14, null
  br i1 %tobool.not, label %rtw_rx_phy_stat.exit.cleanup_crit_edge, label %if.end16

rtw_rx_phy_stat.exit.cleanup_crit_edge:           ; preds = %rtw_rx_phy_stat.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %rtw_rx_phy_stat.exit
  call void @__sanitizer_cov_trace_pc() #7
  %avg_rssi = getelementptr inbounds %struct.ieee80211_sta, ptr %call14, i32 1, i32 0, i32 2
  %rssi = getelementptr inbounds %struct.rtw_rx_pkt_stat, ptr %5, i32 0, i32 16
  %69 = ptrtoint ptr %rssi to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %rssi, align 4
  %conv = zext i8 %70 to i32
  %71 = ptrtoint ptr %avg_rssi to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %avg_rssi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i = icmp eq i32 %72, 0
  %sub.i = mul i32 %72, 15
  %shl19.i = shl nuw nsw i32 %conv, 10
  %add.i = add i32 %sub.i, %shl19.i
  %shr.i = lshr i32 %add.i, 4
  %cond.i = select i1 %tobool.not.i, i32 %shl19.i, i32 %shr.i
  %73 = ptrtoint ptr %avg_rssi to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 %cond.i, ptr %avg_rssi, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %rtw_rx_phy_stat.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta_by_ifaddr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @__ksymtab_rtw_rx_stats, !1, !"__ksymtab_rtw_rx_stats", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtw88/rx.c", i32 33, i32 1}
!2 = !{ptr @__ksymtab_rtw_rx_fill_rx_status, !3, !"__ksymtab_rtw_rx_fill_rx_status", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtw88/rx.c", i32 204, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtw88/rx.c", i32 77, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @rtw_rx_phy_stat._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @rtw_rx_phy_stat._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i8 0, i8 2}
