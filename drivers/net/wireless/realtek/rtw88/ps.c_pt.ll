; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtw88/ps.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtw88/ps.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rtw_power_mode_change\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw_power_mode_change\09\09\09\09"
module asm "\09.long\09__crc_rtw_power_mode_change\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw_power_mode_change:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw_power_mode_change\22\09\09\09\09\09"
module asm "__kstrtabns_rtw_power_mode_change:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.rtw_hci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@rtw_leave_ips._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 57, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to leave ips state\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtw_leave_ips\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/realtek/rtw88/ps.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtw_leave_ips._entry_ptr = internal global ptr @rtw_leave_ips._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.5 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"firmware failed to ack driver for %s Deep Power mode\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"entering\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"leaving\00", [24 x i8] zeroinitializer }, align 32
@__kstrtab_rtw_power_mode_change = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw_power_mode_change = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw_power_mode_change = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw_power_mode_change to i32), ptr @__kstrtab_rtw_power_mode_change, ptr @__kstrtabns_rtw_power_mode_change }, section "___ksymtab+rtw_power_mode_change", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@rtw_ips_pwr_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 19, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"leave idle state failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtw_ips_pwr_up\00", [17 x i8] zeroinitializer }, align 32
@rtw_ips_pwr_up._entry_ptr = internal global ptr @rtw_ips_pwr_up._entry, section ".printk_index", align 4
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Should enter LPS before entering deep PS\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Should leave deep PS before leaving LPS\0A\00", [55 x i8] zeroinitializer }, align 32
@rtw_fw_leave_lps_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 165, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"firmware failed to leave lps state\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtw_fw_leave_lps_check\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rtw_fw_leave_lps_check._entry_ptr = internal global ptr @rtw_fw_leave_lps_check._entry, section ".printk_index", align 4
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 57, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 104, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 19, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 215, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 261, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private constant [43 x i8] c"../drivers/net/wireless/realtek/rtw88/ps.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 165, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__ksymtab_rtw_power_mode_change, ptr @rtw_fw_leave_lps_check._entry, ptr @rtw_fw_leave_lps_check._entry_ptr, ptr @rtw_ips_pwr_up._entry, ptr @rtw_ips_pwr_up._entry_ptr, ptr @rtw_leave_ips._entry, ptr @rtw_leave_ips._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_leave_ips._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ips_pwr_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_fw_leave_lps_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_enter_ips(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 38
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #4
  tail call void @rtw_coex_ips_notify(ptr noundef %rtwdev, i8 noundef zeroext 1) #4
  tail call void @rtw_core_stop(ptr noundef %rtwdev) #4
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i, align 8
  %link_ps.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %link_ps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link_ps.i, align 4
  tail call void %3(ptr noundef %rtwdev, i1 noundef zeroext true) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_coex_ips_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_core_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_leave_ips(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i, align 8
  %link_ps.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %link_ps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link_ps.i, align 4
  tail call void %3(ptr noundef %rtwdev, i1 noundef zeroext false) #4
  %call.i = tail call i32 @rtw_core_start(ptr noundef %rtwdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.critedge, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.8) #7
  tail call void @rtw_set_channel(ptr noundef %rtwdev) #4
  %flags.i.c7 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 38
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags.i.c7) #4
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str) #7
  br label %cleanup

if.end.critedge:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtw_set_channel(ptr noundef %rtwdev) #4
  %flags.i.c = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 38
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags.i.c) #4
  %8 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rtwdev, align 8
  tail call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %9, i32 noundef 0, ptr noundef nonnull @rtw_restore_port_cfg_iter, ptr noundef %rtwdev) #4
  tail call void @rtw_coex_ips_notify(ptr noundef %rtwdev, i8 noundef zeroext 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end.critedge, %do.end.i
  ret i32 %call.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_active_interfaces_atomic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_restore_port_cfg_iter(ptr noundef %data, ptr nocapture noundef readnone %mac, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  tail call void @rtw_vif_port_config(ptr noundef %data, ptr noundef %drv_priv, i32 noundef -1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_power_mode_change(ptr noundef %rtwdev, i1 noundef zeroext %enter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rpwm_addr = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %rpwm_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rpwm_addr, align 8
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %2 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hci.i, align 8
  %read8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %read8.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read8.i, align 4
  %call.i = tail call zeroext i8 %5(ptr noundef %rtwdev, i32 noundef %1) #4
  %cpwm_addr = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %cpwm_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpwm_addr, align 4
  %8 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i, align 8
  %read8.i131 = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %read8.i131 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read8.i131, align 4
  %call.i132 = tail call zeroext i8 %11(ptr noundef %rtwdev, i32 noundef %7) #4
  %12 = and i8 %call.i, -128
  %13 = xor i8 %12, -128
  br i1 %enter, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %flags.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 38
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags.i, align 4
  %16 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  %wow_deep_mode.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 30, i32 2
  %deep_mode.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 30, i32 1
  %retval.0.in.i = select i1 %tobool.not.i, ptr %deep_mode.i, ptr %wow_deep_mode.i
  %17 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %retval.0.i = load i32, ptr %retval.0.in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, 2
  %spec.select.v = select i1 %cmp, i8 17, i8 1
  %spec.select = or i8 %spec.select.v, %13
  br label %if.end14

if.end14:                                         ; preds = %if.then, %entry.if.end14_crit_edge
  %request.0 = phi i8 [ %13, %entry.if.end14_crit_edge ], [ %spec.select, %if.then ]
  %feature1.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 7, i32 8
  %18 = ptrtoint ptr %feature1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %feature1.i, align 4
  %and.i = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select129.v = select i1 %tobool.i.not, i8 64, i8 66
  %spec.select129 = or i8 %spec.select129.v, %request.0
  %20 = ptrtoint ptr %rpwm_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rpwm_addr, align 8
  %22 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hci.i, align 8
  %write8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %23, i32 0, i32 14
  %24 = ptrtoint ptr %write8.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write8.i, align 4
  tail call void %25(ptr noundef %rtwdev, i32 noundef %21, i8 noundef zeroext %spec.select129) #4
  %call26 = tail call i64 @ktime_get() #4
  %add.i = add i64 %call26, 15000000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 21474800) #4
  %27 = ptrtoint ptr %cpwm_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpwm_addr, align 4
  %29 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hci.i, align 8
  %read8.i135142 = getelementptr inbounds %struct.rtw_hci_ops, ptr %30, i32 0, i32 11
  %31 = ptrtoint ptr %read8.i135142 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read8.i135142, align 4
  %call.i136143 = tail call zeroext i8 %32(ptr noundef %rtwdev, i32 noundef %28) #4
  %xor41127144 = xor i8 %call.i136143, %call.i132
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %xor41127144)
  %tobool42.not145 = icmp sgt i8 %xor41127144, -1
  br i1 %tobool42.not145, label %if.end14.land.lhs.true_crit_edge, label %if.end14.if.end95_crit_edge

if.end14.if.end95_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95

if.end14.land.lhs.true_crit_edge:                 ; preds = %if.end14
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false61.land.lhs.true_crit_edge, %if.end14.land.lhs.true_crit_edge
  %call46 = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call46, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call46, %add.i
  br i1 %cmp3.i, label %for.end, label %cond.false61

cond.false61:                                     ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 21474800) #4
  %34 = ptrtoint ptr %cpwm_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpwm_addr, align 4
  %36 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hci.i, align 8
  %read8.i135 = getelementptr inbounds %struct.rtw_hci_ops, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %read8.i135 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read8.i135, align 4
  %call.i136 = tail call zeroext i8 %39(ptr noundef %rtwdev, i32 noundef %35) #4
  %xor41127 = xor i8 %call.i136, %call.i132
  %tobool42.not = icmp sgt i8 %xor41127, -1
  br i1 %tobool42.not, label %cond.false61.land.lhs.true_crit_edge, label %cond.false61.if.end95_crit_edge

cond.false61.if.end95_crit_edge:                  ; preds = %cond.false61
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95

cond.false61.land.lhs.true_crit_edge:             ; preds = %cond.false61
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  %40 = ptrtoint ptr %cpwm_addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpwm_addr, align 4
  %42 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hci.i, align 8
  %read8.i139 = getelementptr inbounds %struct.rtw_hci_ops, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %read8.i139 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read8.i139, align 4
  %call.i140 = tail call zeroext i8 %45(ptr noundef %rtwdev, i32 noundef %41) #4
  %.pre = xor i8 %call.i140, %call.i132
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %.pre)
  %tobool71.not = icmp sgt i8 %.pre, -1
  br i1 %tobool71.not, label %do.end, label %for.end.if.end95_crit_edge

for.end.if.end95_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %cond81 = select i1 %enter, ptr @.str.6, ptr @.str.7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 105, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull %cond81) #4
  br label %if.end95

if.end95:                                         ; preds = %do.end, %for.end.if.end95_crit_edge, %cond.false61.if.end95_crit_edge, %if.end14.if.end95_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtw_get_lps_deep_mode(ptr noundef %rtwdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 38
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %wow_deep_mode = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 30, i32 2
  %deep_mode = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 30, i32 1
  %retval.0.in = select i1 %tobool.not, ptr %deep_mode, ptr %wow_deep_mode
  %3 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %retval.0 = load i32, ptr %retval.0.in, align 4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_enter_lps(ptr noundef %rtwdev, i8 noundef zeroext %port_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 15, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !38

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 276, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %wl_force_lps_ctrl = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 14, i32 9, i32 34
  %1 = ptrtoint ptr %wl_force_lps_ctrl to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %wl_force_lps_ctrl, align 2, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool24.not = icmp eq i8 %2, 0
  br i1 %tobool24.not, label %if.end26, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end26:                                         ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 38
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags.i, align 4
  %5 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end26.__rtw_enter_lps.exit_crit_edge

if.end26.__rtw_enter_lps.exit_crit_edge:          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %__rtw_enter_lps.exit

if.end.i:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  %lps_conf.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 30
  %6 = ptrtoint ptr %lps_conf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %lps_conf.i, align 4
  %port_id1.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 30, i32 7
  %7 = ptrtoint ptr %port_id1.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %port_id, ptr %port_id1.i, align 1
  %state.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 30, i32 3
  %8 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %state.i.i, align 4
  %awake_interval.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 30, i32 4
  %9 = ptrtoint ptr %awake_interval.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %awake_interval.i.i, align 4
  %rlbm.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 30, i32 5
  %10 = ptrtoint ptr %rlbm.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %rlbm.i.i, align 1
  %smart_ps.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 30, i32 6
  %11 = ptrtoint ptr %smart_ps.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %smart_ps.i.i, align 2
  tail call void @rtw_coex_lps_notify(ptr noundef %rtwdev, i8 noundef zeroext 1) #4
  tail call void @rtw_fw_set_pwr_mode(ptr noundef %rtwdev) #4
  %hci.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %12 = ptrtoint ptr %hci.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i.i, align 8
  %link_ps.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %link_ps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %link_ps.i.i.i, align 4
  tail call void %15(ptr noundef %rtwdev, i1 noundef zeroext true) #4
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags.i) #4
  br label %__rtw_enter_lps.exit

__rtw_enter_lps.exit:                             ; preds = %if.end.i, %if.end26.__rtw_enter_lps.exit_crit_edge
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags.i, align 4
  %18 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  %wow_deep_mode.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 30, i32 2
  %deep_mode.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 30, i32 1
  %retval.0.in.i.i = select i1 %tobool.not.i.i, ptr %deep_mode.i.i, ptr %wow_deep_mode.i.i
  %19 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %__rtw_enter_lps.exit.return_crit_edge, label %if.end.i32

__rtw_enter_lps.exit.return_crit_edge:            ; preds = %__rtw_enter_lps.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end.i32:                                       ; preds = %__rtw_enter_lps.exit
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags.i, align 4
  %22 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i31 = icmp eq i32 %22, 0
  br i1 %tobool.not.i31, label %if.then2.i, label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 1024, ptr noundef nonnull @.str.10) #4
  br label %return

if.end3.i:                                        ; preds = %if.end.i32
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags.i, align 4
  %25 = and i32 %24, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i14.i = icmp eq i32 %25, 0
  %retval.0.in.i17.i = select i1 %tobool.not.i14.i, ptr %deep_mode.i.i, ptr %wow_deep_mode.i.i
  %26 = ptrtoint ptr %retval.0.in.i17.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %retval.0.i18.i = load i32, ptr %retval.0.in.i17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i18.i)
  %cmp5.i = icmp eq i32 %retval.0.i18.i, 2
  br i1 %cmp5.i, label %if.then6.i, label %if.end3.i.if.end7.i_crit_edge

if.end3.i.if.end7.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtw_fw_set_pg_info(ptr noundef %rtwdev) #4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end3.i.if.end7.i_crit_edge
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %27 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hci.i.i, align 8
  %deep_ps.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %deep_ps.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %deep_ps.i.i, align 4
  tail call void %30(ptr noundef %rtwdev, i1 noundef zeroext true) #4
  br label %return

return:                                           ; preds = %if.end7.i, %if.then2.i, %__rtw_enter_lps.exit.return_crit_edge, %if.end.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_leave_lps(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 15, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !38

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 287, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %1 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hci.i.i, align 8
  %deep_ps.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %deep_ps.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %deep_ps.i.i, align 4
  tail call void %4(ptr noundef %rtwdev, i1 noundef zeroext false) #4
  %lps_conf.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 30
  %flags.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 38
  %call.i27 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %flags.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool.not.i = icmp eq i32 %call.i27, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 1024, ptr noundef nonnull @.str.11) #4
  %5 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hci.i.i, align 8
  %deep_ps.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %deep_ps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %deep_ps.i.i.i, align 4
  tail call void %8(ptr noundef %rtwdev, i1 noundef zeroext false) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags.i, align 4
  %11 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not.i = icmp eq i32 %11, 0
  br i1 %tobool4.not.i, label %if.end.i.__rtw_leave_lps.exit_crit_edge, label %if.end6.i

if.end.i.__rtw_leave_lps.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__rtw_leave_lps.exit

if.end6.i:                                        ; preds = %if.end.i
  %12 = ptrtoint ptr %lps_conf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %lps_conf.i, align 4
  %state.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 30, i32 3
  %13 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 12, ptr %state.i.i, align 4
  %awake_interval.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 30, i32 4
  %14 = ptrtoint ptr %awake_interval.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %awake_interval.i.i, align 4
  %rlbm.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 30, i32 5
  %15 = ptrtoint ptr %rlbm.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %rlbm.i.i, align 1
  %smart_ps.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 30, i32 6
  %16 = ptrtoint ptr %smart_ps.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %smart_ps.i.i, align 2
  %17 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hci.i.i, align 8
  %link_ps.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %link_ps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %link_ps.i.i.i, align 4
  tail call void %20(ptr noundef %rtwdev, i1 noundef zeroext false) #4
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags.i, align 4
  %23 = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i.i = icmp eq i32 %23, 0
  %wow_fw.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 41
  %fw1.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 7
  %fw.0.i.i.i = select i1 %tobool.not.i.i.i, ptr %fw1.i.i.i, ptr %wow_fw.i.i.i
  %feature1.i.i.i.i = getelementptr inbounds %struct.rtw_fw_state, ptr %fw.0.i.i.i, i32 0, i32 8
  %24 = ptrtoint ptr %feature1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %feature1.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %if.end6.i.rtw_fw_leave_lps_check_prepare.exit.i.i_crit_edge, label %if.then3.i.i.i

if.end6.i.rtw_fw_leave_lps_check_prepare.exit.i.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtw_fw_leave_lps_check_prepare.exit.i.i

if.then3.i.i.i:                                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  %lps_leave_check.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 33
  %26 = ptrtoint ptr %lps_leave_check.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %lps_leave_check.i.i.i, align 4
  br label %rtw_fw_leave_lps_check_prepare.exit.i.i

rtw_fw_leave_lps_check_prepare.exit.i.i:          ; preds = %if.then3.i.i.i, %if.end6.i.rtw_fw_leave_lps_check_prepare.exit.i.i_crit_edge
  tail call void @rtw_fw_set_pwr_mode(ptr noundef %rtwdev) #4
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flags.i, align 4
  %29 = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i11.i.i = icmp eq i32 %29, 0
  %fw.0.i14.i.i = select i1 %tobool.not.i11.i.i, ptr %fw1.i.i.i, ptr %wow_fw.i.i.i
  %feature1.i.i15.i.i = getelementptr inbounds %struct.rtw_fw_state, ptr %fw.0.i14.i.i, i32 0, i32 8
  %30 = ptrtoint ptr %feature1.i.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %feature1.i.i15.i.i, align 4
  %and.i.i16.i.i = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i16.i.i)
  %tobool.i.not.i17.i.i = icmp eq i32 %and.i.i16.i.i, 0
  br i1 %tobool.i.not.i17.i.i, label %if.else6.i.i.i, label %if.then3.i18.i.i

if.then3.i18.i.i:                                 ; preds = %rtw_fw_leave_lps_check_prepare.exit.i.i
  %lps_leave_check.i.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 33
  %call1.i.i.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %lps_leave_check.i.i.i.i, i32 noundef 10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then3.i18.i.i.if.then12.i.i.i_crit_edge, label %if.then3.i18.i.i.rtw_leave_lps_core.exit.i_crit_edge

if.then3.i18.i.i.rtw_leave_lps_core.exit.i_crit_edge: ; preds = %if.then3.i18.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtw_leave_lps_core.exit.i

if.then3.i18.i.i.if.then12.i.i.i_crit_edge:       ; preds = %if.then3.i18.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12.i.i.i

if.else6.i.i.i:                                   ; preds = %rtw_fw_leave_lps_check_prepare.exit.i.i
  %32 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %33, i32 0, i32 13
  %34 = ptrtoint ptr %read32.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read32.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = tail call i32 %35(ptr noundef %rtwdev, i32 noundef 1540) #4
  %36 = and i32 %call.i.i.i.i.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp1.i.i.i.i = icmp eq i32 %36, 0
  br i1 %cmp1.i.i.i.i, label %if.else6.i.i.i.rtw_leave_lps_core.exit.i_crit_edge, label %if.end.i.i.i.i

if.else6.i.i.i.rtw_leave_lps_core.exit.i_crit_edge: ; preds = %if.else6.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtw_leave_lps_core.exit.i

if.end.i.i.i.i:                                   ; preds = %if.else6.i.i.i
  tail call void @msleep(i32 noundef 20) #4
  %37 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.1.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %38, i32 0, i32 13
  %39 = ptrtoint ptr %read32.i.i.1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read32.i.i.1.i.i.i.i, align 4
  %call.i.i.1.i.i.i.i = tail call i32 %40(ptr noundef %rtwdev, i32 noundef 1540) #4
  %41 = and i32 %call.i.i.1.i.i.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp1.1.i.i.i.i = icmp eq i32 %41, 0
  br i1 %cmp1.1.i.i.i.i, label %if.end.i.i.i.i.rtw_leave_lps_core.exit.i_crit_edge, label %if.end.1.i.i.i.i

if.end.i.i.i.i.rtw_leave_lps_core.exit.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtw_leave_lps_core.exit.i

if.end.1.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  tail call void @msleep(i32 noundef 20) #4
  %42 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.2.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %43, i32 0, i32 13
  %44 = ptrtoint ptr %read32.i.i.2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read32.i.i.2.i.i.i.i, align 4
  %call.i.i.2.i.i.i.i = tail call i32 %45(ptr noundef %rtwdev, i32 noundef 1540) #4
  %46 = and i32 %call.i.i.2.i.i.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp1.2.i.i.i.i = icmp eq i32 %46, 0
  br i1 %cmp1.2.i.i.i.i, label %if.end.1.i.i.i.i.rtw_leave_lps_core.exit.i_crit_edge, label %if.end.2.i.i.i.i

if.end.1.i.i.i.i.rtw_leave_lps_core.exit.i_crit_edge: ; preds = %if.end.1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtw_leave_lps_core.exit.i

if.end.2.i.i.i.i:                                 ; preds = %if.end.1.i.i.i.i
  tail call void @msleep(i32 noundef 20) #4
  %47 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.3.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %48, i32 0, i32 13
  %49 = ptrtoint ptr %read32.i.i.3.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read32.i.i.3.i.i.i.i, align 4
  %call.i.i.3.i.i.i.i = tail call i32 %50(ptr noundef %rtwdev, i32 noundef 1540) #4
  %51 = and i32 %call.i.i.3.i.i.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp1.3.i.i.i.i = icmp eq i32 %51, 0
  br i1 %cmp1.3.i.i.i.i, label %if.end.2.i.i.i.i.rtw_leave_lps_core.exit.i_crit_edge, label %if.end.3.i.i.i.i

if.end.2.i.i.i.i.rtw_leave_lps_core.exit.i_crit_edge: ; preds = %if.end.2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtw_leave_lps_core.exit.i

if.end.3.i.i.i.i:                                 ; preds = %if.end.2.i.i.i.i
  tail call void @msleep(i32 noundef 20) #4
  %52 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.4.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %53, i32 0, i32 13
  %54 = ptrtoint ptr %read32.i.i.4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read32.i.i.4.i.i.i.i, align 4
  %call.i.i.4.i.i.i.i = tail call i32 %55(ptr noundef %rtwdev, i32 noundef 1540) #4
  %56 = and i32 %call.i.i.4.i.i.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp1.4.i.i.i.i = icmp eq i32 %56, 0
  br i1 %cmp1.4.i.i.i.i, label %if.end.3.i.i.i.i.rtw_leave_lps_core.exit.i_crit_edge, label %if.end.4.i.i.i.i

if.end.3.i.i.i.i.rtw_leave_lps_core.exit.i_crit_edge: ; preds = %if.end.3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtw_leave_lps_core.exit.i

if.end.4.i.i.i.i:                                 ; preds = %if.end.3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msleep(i32 noundef 20) #4
  br label %if.then12.i.i.i

if.then12.i.i.i:                                  ; preds = %if.end.4.i.i.i.i, %if.then3.i18.i.i.if.then12.i.i.i_crit_edge
  %57 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %58, i32 0, i32 13
  %59 = ptrtoint ptr %read32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read32.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %60(ptr noundef %rtwdev, i32 noundef 1540) #4
  %and.i20.i.i.i = and i32 %call.i.i.i.i.i, -129
  %61 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %62, i32 0, i32 16
  %63 = ptrtoint ptr %write32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write32.i.i.i.i.i, align 4
  tail call void %64(ptr noundef %rtwdev, i32 noundef 1540, i32 noundef %and.i20.i.i.i) #4
  %dev.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %65 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %66, ptr noundef nonnull @.str.12) #7
  br label %rtw_leave_lps_core.exit.i

rtw_leave_lps_core.exit.i:                        ; preds = %if.then12.i.i.i, %if.end.3.i.i.i.i.rtw_leave_lps_core.exit.i_crit_edge, %if.end.2.i.i.i.i.rtw_leave_lps_core.exit.i_crit_edge, %if.end.1.i.i.i.i.rtw_leave_lps_core.exit.i_crit_edge, %if.end.i.i.i.i.rtw_leave_lps_core.exit.i_crit_edge, %if.else6.i.i.i.rtw_leave_lps_core.exit.i_crit_edge, %if.then3.i18.i.i.rtw_leave_lps_core.exit.i_crit_edge
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags.i) #4
  tail call void @rtw_coex_lps_notify(ptr noundef %rtwdev, i8 noundef zeroext 0) #4
  br label %__rtw_leave_lps.exit

__rtw_leave_lps.exit:                             ; preds = %rtw_leave_lps_core.exit.i, %if.end.i.__rtw_leave_lps.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtw_leave_lps_deep(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 15, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !38

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 295, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %1 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hci.i.i, align 8
  %deep_ps.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %deep_ps.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %deep_ps.i.i, align 4
  tail call void %4(ptr noundef %rtwdev, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_core_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_set_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_vif_port_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_coex_lps_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_fw_set_pwr_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rtw_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_fw_set_pg_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !19, !21, !23, !25, !26, !27, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtw88/ps.c", i32 57, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rtw_leave_ips._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @rtw_leave_ips._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtw88/ps.c", i32 104, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__ksymtab_rtw_power_mode_change, !13, !"__ksymtab_rtw_power_mode_change", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtw88/ps.c", i32 108, i32 1}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtw88/ps.c", i32 19, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @rtw_ips_pwr_up._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @rtw_ips_pwr_up._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/realtek/rtw88/ps.c", i32 215, i32 3}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/realtek/rtw88/ps.c", i32 261, i32 3}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/realtek/rtw88/ps.c", i32 165, i32 3}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @rtw_fw_leave_lps_check._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @rtw_fw_leave_lps_check._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{i8 0, i8 2}
