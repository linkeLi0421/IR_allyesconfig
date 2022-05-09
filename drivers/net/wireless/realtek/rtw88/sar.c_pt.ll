; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtw88/sar.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtw88/sar.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cfg80211_sar_freq_ranges = type { i32, i32 }
%struct.cfg80211_sar_capa = type { i32, i32, ptr }
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
%struct.rtw_sar_arg = type { i8, i8, i8 }
%struct.cfg80211_sar_specs = type { i32, i32, [0 x %struct.cfg80211_sar_sub_specs] }
%struct.cfg80211_sar_sub_specs = type { i32, i32 }

@rtw_query_sar._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 16, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unknown SAR source: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtw_query_sar\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireless/realtek/rtw88/sar.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtw_query_sar._entry_ptr = internal global ptr @rtw_query_sar._entry, section ".printk_index", align 4
@rtw_common_sar_freq_ranges = internal constant { [4 x %struct.cfg80211_sar_freq_ranges], [32 x i8] } { [4 x %struct.cfg80211_sar_freq_ranges] [%struct.cfg80211_sar_freq_ranges { i32 2412, i32 2484 }, %struct.cfg80211_sar_freq_ranges { i32 5180, i32 5320 }, %struct.cfg80211_sar_freq_ranges { i32 5500, i32 5720 }, %struct.cfg80211_sar_freq_ranges { i32 5745, i32 5825 }], [32 x i8] zeroinitializer }, align 32
@rtw_sar_capa = dso_local constant { %struct.cfg80211_sar_capa, [20 x i8] } { %struct.cfg80211_sar_capa { i32 0, i32 4, ptr @rtw_common_sar_freq_ranges }, [20 x i8] zeroinitializer }, align 32
@rtw_set_sar_specs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 97, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"On freq %u to %u, set SAR %d in 1/%lu dBm\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtw_set_sar_specs\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rtw_set_sar_specs._entry_ptr = internal global ptr @rtw_set_sar_specs._entry, section ".printk_index", align 4
@rtw_apply_sar._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 31, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SAR source: %d is in use\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtw_apply_sar\00", [18 x i8] zeroinitializer }, align 32
@rtw_apply_sar._entry_ptr = internal global ptr @rtw_apply_sar._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 16, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [27 x i8] c"rtw_common_sar_freq_ranges\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 58, i32 46 }
@___asan_gen_.31 = private unnamed_addr constant [13 x i8] c"rtw_sar_capa\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 67, i32 32 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 94, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [44 x i8] c"../drivers/net/wireless/realtek/rtw88/sar.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 31, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @rtw_apply_sar._entry, ptr @rtw_apply_sar._entry_ptr, ptr @rtw_query_sar._entry, ptr @rtw_query_sar._entry_ptr, ptr @rtw_set_sar_specs._entry, ptr @rtw_set_sar_specs._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @rtw_common_sar_freq_ranges, ptr @rtw_sar_capa, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_query_sar._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_common_sar_freq_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_sar_capa to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_set_sar_specs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_apply_sar._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local signext i8 @rtw_query_sar(ptr nocapture noundef readonly %rtwdev, ptr nocapture noundef readonly %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sar2 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 28
  %0 = ptrtoint ptr %sar2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sar2, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %sw.bb4
  ]

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef %1) #8
  br label %sw.bb

sw.bb:                                            ; preds = %do.end, %entry.sw.bb_crit_edge
  %chip = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %max_power_index = getelementptr inbounds %struct.rtw_chip_info, ptr %6, i32 0, i32 23
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %path = getelementptr inbounds %struct.rtw_sar_arg, ptr %arg, i32 0, i32 1
  %7 = ptrtoint ptr %path to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %path, align 1
  %idxprom = zext i8 %8 to i32
  %rs = getelementptr inbounds %struct.rtw_sar_arg, ptr %arg, i32 0, i32 2
  %9 = ptrtoint ptr %rs to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rs, align 1
  %idxprom5 = zext i8 %10 to i32
  %arrayidx6 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 28, i32 1, i32 %idxprom, i32 %idxprom5
  %11 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arg, align 1
  %idxprom7 = zext i8 %12 to i32
  %arrayidx8 = getelementptr [4 x i8], ptr %arrayidx6, i32 0, i32 %idxprom7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb4, %sw.bb
  %retval.0.in = phi ptr [ %max_power_index, %sw.bb ], [ %arrayidx8, %sw.bb4 ]
  %13 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load1_noabort(i32 %13)
  %retval.0 = load i8, ptr %retval.0.in, align 1
  ret i8 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_set_sar_specs(ptr noundef %rtwdev, ptr nocapture noundef readonly %sar) local_unnamed_addr #0 align 64 {
entry:
  %new = alloca %struct.rtw_sar, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %new) #5
  %0 = ptrtoint ptr %sar to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sar, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %chip = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 4
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %max_power_index = getelementptr inbounds %struct.rtw_chip_info, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %max_power_index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %max_power_index, align 1
  %6 = getelementptr inbounds i8, ptr %new, i32 4
  %7 = zext i8 %5 to i32
  %8 = call ptr @memset(ptr %6, i32 %7, i32 96)
  %9 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %new, align 4
  %num_sub_specs = getelementptr inbounds %struct.cfg80211_sar_specs, ptr %sar, i32 0, i32 1
  %10 = ptrtoint ptr %num_sub_specs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_sub_specs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp162.not = icmp eq i32 %11, 0
  br i1 %cmp162.not, label %if.end.for.end31_crit_edge, label %for.body.lr.ph

if.end.for.end31_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end31

for.body.lr.ph:                                   ; preds = %if.end
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc29.for.body_crit_edge, %for.body.lr.ph
  %i.063 = phi i32 [ 0, %for.body.lr.ph ], [ %inc30, %for.inc29.for.body_crit_edge ]
  %freq_range_index = getelementptr %struct.cfg80211_sar_specs, ptr %sar, i32 0, i32 2, i32 %i.063, i32 1
  %12 = ptrtoint ptr %freq_range_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %freq_range_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp3 = icmp ugt i32 %13, 3
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %if.end6

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.cfg80211_sar_specs, ptr %sar, i32 0, i32 2, i32 %i.063
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %arrayidx10 = getelementptr [4 x %struct.cfg80211_sar_freq_ranges], ptr @rtw_common_sar_freq_ranges, i32 0, i32 %13
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx10, align 4
  %end_freq = getelementptr [4 x %struct.cfg80211_sar_freq_ranges], ptr @rtw_common_sar_freq_ranges, i32 0, i32 %13, i32 1
  %20 = ptrtoint ptr %end_freq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end_freq, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.5, i32 noundef %19, i32 noundef %21, i32 noundef %15, i32 noundef 4) #8
  %conv20 = trunc i32 %13 to i8
  %22 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip, align 4
  %txgi_factor.i = getelementptr inbounds %struct.rtw_chip_info, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %txgi_factor.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %txgi_factor.i, align 1
  %max_power_index.i = getelementptr inbounds %struct.rtw_chip_info, ptr %23, i32 0, i32 23
  %26 = ptrtoint ptr %max_power_index.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %max_power_index.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv20)
  %cmp11.i = icmp eq i8 %conv20, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %cmp.i = icmp ult i8 %25, 2
  %conv3.i = zext i8 %25 to i32
  %sub.i = sub nsw i32 2, %conv3.i
  %shr.i = ashr i32 %15, %sub.i
  %sub9.i = add nsw i32 %conv3.i, -2
  %shl.i = shl i32 %15, %sub9.i
  %cond.i = select i1 %cmp.i, i32 %shr.i, i32 %shl.i
  %conv28.i = zext i8 %27 to i32
  %sub30.i = xor i32 %conv28.i, -1
  %28 = tail call i32 @llvm.smax.i32(i32 %cond.i, i32 %sub30.i) #5
  %29 = tail call i32 @llvm.smin.i32(i32 %28, i32 %conv28.i) #5
  %30 = trunc i32 %29 to i8
  br label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %for.cond16.preheader.for.cond16.preheader_crit_edge, %if.end6
  %j.061 = phi i32 [ 0, %if.end6 ], [ %inc27, %for.cond16.preheader.for.cond16.preheader_crit_edge ]
  %arrayidx15.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 22, i32 %j.061, i32 0
  %arrayidx23.i = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 23, i32 %j.061, i32 0
  %cond26.in.in.i = select i1 %cmp11.i, ptr %arrayidx15.i, ptr %arrayidx23.i
  %31 = ptrtoint ptr %cond26.in.in.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %cond26.in1.i = load i8, ptr %cond26.in.in.i, align 1
  %conv50.i = sub i8 %30, %cond26.in1.i
  %arrayidx24 = getelementptr %struct.rtw_sar, ptr %new, i32 0, i32 1, i32 %j.061, i32 0
  %arrayidx25 = getelementptr [4 x i8], ptr %arrayidx24, i32 0, i32 %13
  %32 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv50.i, ptr %arrayidx25, align 1
  %arrayidx15.i.1 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 22, i32 %j.061, i32 1
  %arrayidx23.i.1 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 23, i32 %j.061, i32 1
  %cond26.in.in.i.1 = select i1 %cmp11.i, ptr %arrayidx15.i.1, ptr %arrayidx23.i.1
  %33 = ptrtoint ptr %cond26.in.in.i.1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %cond26.in1.i.1 = load i8, ptr %cond26.in.in.i.1, align 1
  %conv50.i.1 = sub i8 %30, %cond26.in1.i.1
  %arrayidx24.1 = getelementptr %struct.rtw_sar, ptr %new, i32 0, i32 1, i32 %j.061, i32 1
  %arrayidx25.1 = getelementptr [4 x i8], ptr %arrayidx24.1, i32 0, i32 %13
  %34 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv50.i.1, ptr %arrayidx25.1, align 1
  %arrayidx15.i.2 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 22, i32 %j.061, i32 2
  %arrayidx23.i.2 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 23, i32 %j.061, i32 2
  %cond26.in.in.i.2 = select i1 %cmp11.i, ptr %arrayidx15.i.2, ptr %arrayidx23.i.2
  %35 = ptrtoint ptr %cond26.in.in.i.2 to i32
  call void @__asan_load1_noabort(i32 %35)
  %cond26.in1.i.2 = load i8, ptr %cond26.in.in.i.2, align 1
  %conv50.i.2 = sub i8 %30, %cond26.in1.i.2
  %arrayidx24.2 = getelementptr %struct.rtw_sar, ptr %new, i32 0, i32 1, i32 %j.061, i32 2
  %arrayidx25.2 = getelementptr [4 x i8], ptr %arrayidx24.2, i32 0, i32 %13
  %36 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv50.i.2, ptr %arrayidx25.2, align 1
  %arrayidx15.i.3 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 22, i32 %j.061, i32 3
  %arrayidx23.i.3 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 23, i32 %j.061, i32 3
  %cond26.in.in.i.3 = select i1 %cmp11.i, ptr %arrayidx15.i.3, ptr %arrayidx23.i.3
  %37 = ptrtoint ptr %cond26.in.in.i.3 to i32
  call void @__asan_load1_noabort(i32 %37)
  %cond26.in1.i.3 = load i8, ptr %cond26.in.in.i.3, align 1
  %conv50.i.3 = sub i8 %30, %cond26.in1.i.3
  %arrayidx24.3 = getelementptr %struct.rtw_sar, ptr %new, i32 0, i32 1, i32 %j.061, i32 3
  %arrayidx25.3 = getelementptr [4 x i8], ptr %arrayidx24.3, i32 0, i32 %13
  %38 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv50.i.3, ptr %arrayidx25.3, align 1
  %arrayidx15.i.4 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 22, i32 %j.061, i32 4
  %arrayidx23.i.4 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 23, i32 %j.061, i32 4
  %cond26.in.in.i.4 = select i1 %cmp11.i, ptr %arrayidx15.i.4, ptr %arrayidx23.i.4
  %39 = ptrtoint ptr %cond26.in.in.i.4 to i32
  call void @__asan_load1_noabort(i32 %39)
  %cond26.in1.i.4 = load i8, ptr %cond26.in.in.i.4, align 1
  %conv50.i.4 = sub i8 %30, %cond26.in1.i.4
  %arrayidx24.4 = getelementptr %struct.rtw_sar, ptr %new, i32 0, i32 1, i32 %j.061, i32 4
  %arrayidx25.4 = getelementptr [4 x i8], ptr %arrayidx24.4, i32 0, i32 %13
  %40 = ptrtoint ptr %arrayidx25.4 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv50.i.4, ptr %arrayidx25.4, align 1
  %arrayidx15.i.5 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 22, i32 %j.061, i32 5
  %arrayidx23.i.5 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 23, i32 %j.061, i32 5
  %cond26.in.in.i.5 = select i1 %cmp11.i, ptr %arrayidx15.i.5, ptr %arrayidx23.i.5
  %41 = ptrtoint ptr %cond26.in.in.i.5 to i32
  call void @__asan_load1_noabort(i32 %41)
  %cond26.in1.i.5 = load i8, ptr %cond26.in.in.i.5, align 1
  %conv50.i.5 = sub i8 %30, %cond26.in1.i.5
  %arrayidx24.5 = getelementptr %struct.rtw_sar, ptr %new, i32 0, i32 1, i32 %j.061, i32 5
  %arrayidx25.5 = getelementptr [4 x i8], ptr %arrayidx24.5, i32 0, i32 %13
  %42 = ptrtoint ptr %arrayidx25.5 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv50.i.5, ptr %arrayidx25.5, align 1
  %inc27 = add nuw nsw i32 %j.061, 1
  %exitcond.not = icmp eq i32 %inc27, 4
  br i1 %exitcond.not, label %for.inc29, label %for.cond16.preheader.for.cond16.preheader_crit_edge

for.cond16.preheader.for.cond16.preheader_crit_edge: ; preds = %for.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond16.preheader

for.inc29:                                        ; preds = %for.cond16.preheader
  %inc30 = add nuw i32 %i.063, 1
  %43 = ptrtoint ptr %num_sub_specs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_sub_specs, align 4
  %cmp1 = icmp ult i32 %inc30, %44
  br i1 %cmp1, label %for.inc29.for.body_crit_edge, label %for.inc29.for.end31_crit_edge

for.inc29.for.end31_crit_edge:                    ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end31

for.inc29.for.body_crit_edge:                     ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end31:                                        ; preds = %for.inc29.for.end31_crit_edge, %if.end.for.end31_crit_edge
  %sar2.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 28
  %45 = ptrtoint ptr %sar2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sar2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.not.i = icmp eq i32 %46, 0
  br i1 %cmp.not.i, label %for.end31.if.end.i_crit_edge, label %land.lhs.true.i

for.end31.if.end.i_crit_edge:                     ; preds = %for.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.end31
  %47 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %new, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %46)
  %cmp5.not.i = icmp eq i32 %48, %46
  br i1 %cmp5.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %do.end.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %49 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.8, i32 noundef %46) #8
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.end31.if.end.i_crit_edge
  %51 = call ptr @memcpy(ptr %sar2.i, ptr %new, i32 100)
  %current_channel.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 7
  %52 = ptrtoint ptr %current_channel.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %current_channel.i, align 1
  tail call void @rtw_phy_set_tx_power_level(ptr noundef %rtwdev, i8 noundef zeroext %53) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %do.end.i, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -16, %do.end.i ], [ 0, %if.end.i ], [ -22, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %new) #5
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_phy_set_tx_power_level(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !16, !18, !20, !21, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtw88/sar.c", i32 16, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rtw_query_sar._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @rtw_query_sar._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @rtw_sar_capa, !9, !"rtw_sar_capa", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtw88/sar.c", i32 67, i32 32}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtw88/sar.c", i32 94, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @rtw_set_sar_specs._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @rtw_set_sar_specs._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @rtw_common_sar_freq_ranges, !17, !"rtw_common_sar_freq_ranges", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtw88/sar.c", i32 58, i32 46}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtw88/sar.c", i32 31, i32 3}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @rtw_apply_sar._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @rtw_apply_sar._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
