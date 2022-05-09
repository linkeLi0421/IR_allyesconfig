; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtw88/regd.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtw88/regd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rtw_regd_get\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw_regd_get\09\09\09\09"
module asm "\09.long\09__crc_rtw_regd_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw_regd_get:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw_regd_get\22\09\09\09\09\09"
module asm "__kstrtabns_rtw_regd_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rtw_regulatory = type { [2 x i8], i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rtw_regd_alternative_t = type { i8, i8 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
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
%struct.rtw_coex_stat = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, [6 x [10 x i8]], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, [10 x i8], [10 x i8], i8, i8, i8, i8, i8, i8, i8, [6 x i8], i8, i16, i16, [13 x i32], [8 x i32], [6 x i32], i32, i32 }
%struct.rtw_coex_dm = type { i8, i8, i8, i8, [4 x i8], [4 x i8], [3 x i8], i8, i8, [5 x i8], i8, i8, i8, i8, i32, i32, i32, [5 x i8] }
%struct.rtw_coex_rfe = type { i8, i8, i8, i8, i8, i8 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
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
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.regulatory_request = type { %struct.callback_head, i32, i32, i32, [3 x i8], i32, i8, i8, i32, %struct.list_head }
%struct.callback_head = type { ptr, ptr }

@rtw_reg_ww = internal constant { %struct.rtw_regulatory, [28 x i8] } { %struct.rtw_regulatory { [2 x i8] c"00", i8 10, i8 10 }, [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"regd init state %d: apply alpha2 %c%c, regd {%d, %d}, dfs_region %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"country domain %c%c is PGed on efuse\00", [59 x i8] zeroinitializer }, align 32
@rtw_regd_hint._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 386, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to hint regulatory: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtw_regd_hint\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/wireless/realtek/rtw88/regd.c\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtw_regd_hint._entry_ptr = internal global ptr @rtw_regd_hint._entry, section ".printk_index", align 4
@__kstrtab_rtw_regd_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw_regd_get = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw_regd_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw_regd_get to i32), ptr @__kstrtab_rtw_regd_get, ptr @__kstrtabns_rtw_regd_get }, section "___ksymtab+rtw_regd_get", align 4
@rtw_regd_alt = internal constant { [11 x %struct.rtw_regd_alternative_t], [42 x i8] } { [11 x %struct.rtw_regd_alternative_t] [%struct.rtw_regd_alternative_t zeroinitializer, %struct.rtw_regd_alternative_t zeroinitializer, %struct.rtw_regd_alternative_t zeroinitializer, %struct.rtw_regd_alternative_t { i8 1, i8 0 }, %struct.rtw_regd_alternative_t { i8 1, i8 2 }, %struct.rtw_regd_alternative_t { i8 1, i8 2 }, %struct.rtw_regd_alternative_t { i8 1, i8 0 }, %struct.rtw_regd_alternative_t { i8 1, i8 2 }, %struct.rtw_regd_alternative_t { i8 1, i8 0 }, %struct.rtw_regd_alternative_t { i8 1, i8 2 }, %struct.rtw_regd_alternative_t zeroinitializer], [42 x i8] zeroinitializer }, align 32
@rtw_reg_map = internal constant { [239 x %struct.rtw_regulatory], [228 x i8] } { [239 x %struct.rtw_regulatory] [%struct.rtw_regulatory { [2 x i8] c"AD", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"AE", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"AF", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"AG", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"AI", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"AL", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"AM", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"AN", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"AO", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"AQ", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"AR", i8 8, i8 8 }, %struct.rtw_regulatory { [2 x i8] c"AS", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"AT", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"AU", i8 5, i8 5 }, %struct.rtw_regulatory { [2 x i8] c"AW", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"AZ", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"BA", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"BB", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"BD", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"BE", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"BF", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"BG", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"BH", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"BI", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"BJ", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"BM", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"BN", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"BO", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"BR", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"BS", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"BT", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"BV", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"BW", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"BY", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"BZ", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"CA", i8 3, i8 3 }, %struct.rtw_regulatory { [2 x i8] c"CC", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"CD", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"CF", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"CG", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"CH", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"CI", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"CK", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"CL", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"CM", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"CN", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"CO", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"CR", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"CV", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"CX", i8 5, i8 5 }, %struct.rtw_regulatory { [2 x i8] c"CY", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"CZ", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"DE", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"DJ", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"DK", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"DM", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"DO", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"DZ", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"EC", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"EE", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"EG", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"EH", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"ER", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"ES", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"ET", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"FI", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"FJ", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"FK", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"FM", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"FO", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"FR", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"GA", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"GB", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"GD", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"GE", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"GF", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"GG", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"GH", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"GI", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"GL", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"GM", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"GN", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"GP", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"GQ", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"GR", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"GS", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"GT", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"GU", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"GW", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"GY", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"HK", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"HM", i8 5, i8 5 }, %struct.rtw_regulatory { [2 x i8] c"HN", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"HR", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"HT", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"HU", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"ID", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"IE", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"IL", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"IM", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"IN", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"IO", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"IQ", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"IR", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"IS", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"IT", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"JE", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"JM", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"JO", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"JP", i8 1, i8 1 }, %struct.rtw_regulatory { [2 x i8] c"KE", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"KG", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"KH", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"KI", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"KM", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"KN", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"KR", i8 4, i8 4 }, %struct.rtw_regulatory { [2 x i8] c"KW", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"KY", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"KZ", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"LA", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"LB", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"LC", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"LI", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"LK", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"LR", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"LS", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"LT", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"LU", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"LV", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"LY", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"MA", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"MC", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"MD", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"ME", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"MF", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"MG", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"MH", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"MK", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"ML", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"MM", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"MN", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"MO", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"MP", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"MQ", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"MR", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"MS", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"MT", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"MU", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"MV", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"MW", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"MX", i8 8, i8 8 }, %struct.rtw_regulatory { [2 x i8] c"MY", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"MZ", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"NA", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"NC", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"NE", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"NF", i8 5, i8 5 }, %struct.rtw_regulatory { [2 x i8] c"NG", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"NI", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"NL", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"NO", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"NP", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"NR", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"NU", i8 5, i8 5 }, %struct.rtw_regulatory { [2 x i8] c"NZ", i8 5, i8 5 }, %struct.rtw_regulatory { [2 x i8] c"OM", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"PA", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"PE", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"PF", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"PG", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"PH", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"PK", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"PL", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"PM", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"PR", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"PS", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"PT", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"PW", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"PY", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"QA", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"RE", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"RO", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"RS", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"RU", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"RW", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"SA", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"SB", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"SC", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"SE", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"SG", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"SH", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"SI", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"SJ", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"SK", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"SL", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"SM", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"SN", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"SO", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"SR", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"ST", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"SV", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"SX", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"SZ", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"TC", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"TD", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"TF", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"TG", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"TH", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"TJ", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"TK", i8 5, i8 5 }, %struct.rtw_regulatory { [2 x i8] c"TM", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"TN", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"TO", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"TR", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"TT", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"TV", i8 2, i8 10 }, %struct.rtw_regulatory { [2 x i8] c"TW", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"TZ", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"UA", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"UG", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"US", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"UY", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"UZ", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"VA", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"VC", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"VE", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"VG", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"VI", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"VN", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"VU", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"WF", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"WS", i8 0, i8 0 }, %struct.rtw_regulatory { [2 x i8] c"XK", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"YE", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"YT", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"ZA", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"ZM", i8 2, i8 2 }, %struct.rtw_regulatory { [2 x i8] c"ZW", i8 2, i8 2 }], [228 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"regd state %d: ignore request %c%c of initiator %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"regd state: %d -> %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"get alpha2 %c%c from initiator %d: apply alpha2 %c%c, regd {%d, %d}, dfs_region %d\0A\00", [44 x i8] zeroinitializer }, align 32
@rtw_regd_handler = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @rtw_regd_mgmt_worldwide, ptr @rtw_regd_mgmt_programmed, ptr @rtw_regd_mgmt_setting], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [11 x i8] c"rtw_reg_ww\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 33, i32 36 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 362, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 378, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 385, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant [13 x i8] c"rtw_regd_alt\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 512, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant [12 x i8] c"rtw_reg_map\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 36, i32 36 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 470, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 479, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 483, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"rtw_regd_handler\00", align 1
@___asan_gen_.53 = private constant [45 x i8] c"../drivers/net/wireless/realtek/rtw88/regd.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 443, i32 21 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__ksymtab_rtw_regd_get, ptr @rtw_regd_hint._entry, ptr @rtw_regd_hint._entry_ptr, ptr @rtw_reg_ww, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @rtw_regd_alt, ptr @rtw_reg_map, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @rtw_regd_handler], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_reg_ww to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_regd_hint._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_regd_alt to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_reg_map to i32), i32 956, i32 1184, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_regd_handler to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_regd_init(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtwdev, align 8
  %wiphy1 = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_notifier = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %reg_notifier to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @rtw_regd_notifier, ptr %reg_notifier, align 8
  %country_code = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 6
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 239
  br i1 %exitcond.not.i, label %for.cond.i.if.else_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.if.else_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end
  %i.05.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [239 x %struct.rtw_regulatory], ptr @rtw_reg_map, i32 0, i32 %i.05.i
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(2) %arrayidx.i, ptr noundef dereferenceable(2) %country_code, i32 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp.i.i, label %rtw_reg_find_by_name.exit, label %for.cond.i

rtw_reg_find_by_name.exit:                        ; preds = %for.body.i
  %cmp.i = icmp eq ptr %arrayidx.i, @rtw_reg_ww
  br i1 %cmp.i, label %rtw_reg_find_by_name.exit.if.else_crit_edge, label %if.then3

rtw_reg_find_by_name.exit.if.else_crit_edge:      ; preds = %rtw_reg_find_by_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then3:                                         ; preds = %rtw_reg_find_by_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %regd = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 11
  %5 = ptrtoint ptr %regd to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %regd, align 8
  %regulatory_flags = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %regulatory_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %regulatory_flags, align 4
  %or5 = or i32 %7, 18
  store i32 %or5, ptr %regulatory_flags, align 4
  br label %if.end8

if.else:                                          ; preds = %rtw_reg_find_by_name.exit.if.else_crit_edge, %for.cond.i.if.else_crit_edge
  %regd6 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 11
  %8 = ptrtoint ptr %regd6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %regd6, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then3
  %regd9 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 11
  %regulatory = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 11, i32 1
  %9 = ptrtoint ptr %regulatory to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @rtw_reg_ww, ptr %regulatory, align 4
  %dfs_region = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 11, i32 2
  %10 = ptrtoint ptr %dfs_region to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %dfs_region, align 8
  %11 = ptrtoint ptr %regd9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %regd9, align 8
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 256, ptr noundef nonnull @.str, i32 noundef %12, i32 noundef 48, i32 noundef 48, i32 noundef 10, i32 noundef 10, i32 noundef 0) #9
  %call.i = tail call ptr @wiphy_to_ieee80211_hw(ptr noundef nonnull %3) #9
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv.i, align 8
  %bw.i = getelementptr inbounds %struct.rtw_dev, ptr %14, i32 0, i32 8, i32 34, i32 1
  %15 = ptrtoint ptr %bw.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bw.i, align 1
  %17 = and i8 %16, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end8
  %bands.i = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 53
  %18 = ptrtoint ptr %bands.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bands.i, align 16
  %tobool2.not.i = icmp eq ptr %19, null
  br i1 %tobool2.not.i, label %if.end.i.out_5g.i_crit_edge, label %for.cond.preheader.i

if.end.i.out_5g.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_5g.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %n_channels.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp43.i = icmp sgt i32 %21, 0
  br i1 %cmp43.i, label %for.cond.preheader.i.for.body.i43_crit_edge, label %for.cond.preheader.i.out_5g.i_crit_edge

for.cond.preheader.i.out_5g.i_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_5g.i

for.cond.preheader.i.for.body.i43_crit_edge:      ; preds = %for.cond.preheader.i
  br label %for.body.i43

for.body.i43:                                     ; preds = %for.body.i43.for.body.i43_crit_edge, %for.cond.preheader.i.for.body.i43_crit_edge
  %i.044.i = phi i32 [ %inc.i41, %for.body.i43.for.body.i43_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i43_crit_edge ]
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %flags.i = getelementptr %struct.ieee80211_channel, ptr %23, i32 %i.044.i, i32 4
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %25, 128
  store i32 %or.i, ptr %flags.i, align 4
  %inc.i41 = add nuw nsw i32 %i.044.i, 1
  %26 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n_channels.i, align 4
  %cmp.i42 = icmp slt i32 %inc.i41, %27
  br i1 %cmp.i42, label %for.body.i43.for.body.i43_crit_edge, label %for.body.i43.out_5g.i_crit_edge

for.body.i43.out_5g.i_crit_edge:                  ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_5g.i

for.body.i43.for.body.i43_crit_edge:              ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i43

out_5g.i:                                         ; preds = %for.body.i43.out_5g.i_crit_edge, %for.cond.preheader.i.out_5g.i_crit_edge, %if.end.i.out_5g.i_crit_edge
  %arrayidx8.i = getelementptr %struct.wiphy, ptr %3, i32 0, i32 53, i32 1
  %28 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx8.i, align 4
  %tobool9.not.i = icmp eq ptr %29, null
  br i1 %tobool9.not.i, label %out_5g.i.cleanup_crit_edge, label %for.cond12.preheader.i

out_5g.i.cleanup_crit_edge:                       ; preds = %out_5g.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond12.preheader.i:                           ; preds = %out_5g.i
  %n_channels13.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %n_channels13.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n_channels13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp1445.i = icmp sgt i32 %31, 0
  br i1 %cmp1445.i, label %for.cond12.preheader.i.for.body16.i_crit_edge, label %for.cond12.preheader.i.cleanup_crit_edge

for.cond12.preheader.i.cleanup_crit_edge:         ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond12.preheader.i.for.body16.i_crit_edge:    ; preds = %for.cond12.preheader.i
  br label %for.body16.i

for.body16.i:                                     ; preds = %for.body16.i.for.body16.i_crit_edge, %for.cond12.preheader.i.for.body16.i_crit_edge
  %i.146.i = phi i32 [ %inc22.i, %for.body16.i.for.body16.i_crit_edge ], [ 0, %for.cond12.preheader.i.for.body16.i_crit_edge ]
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 4
  %flags19.i = getelementptr %struct.ieee80211_channel, ptr %33, i32 %i.146.i, i32 4
  %34 = ptrtoint ptr %flags19.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags19.i, align 4
  %or20.i = or i32 %35, 128
  store i32 %or20.i, ptr %flags19.i, align 4
  %inc22.i = add nuw nsw i32 %i.146.i, 1
  %36 = ptrtoint ptr %n_channels13.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %n_channels13.i, align 4
  %cmp14.i = icmp slt i32 %inc22.i, %37
  br i1 %cmp14.i, label %for.body16.i.for.body16.i_crit_edge, label %for.body16.i.cleanup_crit_edge

for.body16.i.cleanup_crit_edge:                   ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body16.i.for.body16.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body16.i

cleanup:                                          ; preds = %for.body16.i.cleanup_crit_edge, %for.cond12.preheader.i.cleanup_crit_edge, %out_5g.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %out_5g.i.cleanup_crit_edge ], [ 0, %for.cond12.preheader.i.cleanup_crit_edge ], [ 0, %for.body16.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_regd_notifier(ptr noundef %wiphy, ptr noundef %request) #0 align 64 {
entry:
  %next_regd = alloca %struct.rtw_regd, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @wiphy_to_ieee80211_hw(ptr noundef %wiphy) #9
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %next_regd) #9
  %2 = ptrtoint ptr %next_regd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %next_regd, align 4
  %alpha2.i = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 239
  br i1 %exitcond.not.i.i, label %for.cond.i.i.rtw_regd_state_hdl.exit_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.cond.i.i.rtw_regd_state_hdl.exit_crit_edge:   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtw_regd_state_hdl.exit

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %entry
  %i.05.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [239 x %struct.rtw_regulatory], ptr @rtw_reg_map, i32 0, i32 %i.05.i.i
  %bcmp.i.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(2) %arrayidx.i.i, ptr noundef dereferenceable(2) %alpha2.i, i32 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %cmp.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %cmp.i.i.i, label %for.body.i.i.rtw_regd_state_hdl.exit_crit_edge, label %for.cond.i.i

for.body.i.i.rtw_regd_state_hdl.exit_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rtw_regd_state_hdl.exit

rtw_regd_state_hdl.exit:                          ; preds = %for.body.i.i.rtw_regd_state_hdl.exit_crit_edge, %for.cond.i.i.rtw_regd_state_hdl.exit_crit_edge
  %retval.0.i.i = phi ptr [ %arrayidx.i.i, %for.body.i.i.rtw_regd_state_hdl.exit_crit_edge ], [ @rtw_reg_ww, %for.cond.i.i.rtw_regd_state_hdl.exit_crit_edge ]
  %regulatory.i = getelementptr inbounds %struct.rtw_regd, ptr %next_regd, i32 0, i32 1
  %3 = ptrtoint ptr %regulatory.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %retval.0.i.i, ptr %regulatory.i, align 4
  %dfs_region.i = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 5
  %4 = ptrtoint ptr %dfs_region.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dfs_region.i, align 4
  %dfs_region1.i = getelementptr inbounds %struct.rtw_regd, ptr %next_regd, i32 0, i32 2
  %6 = ptrtoint ptr %dfs_region1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %dfs_region1.i, align 4
  %regd.i = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %regd.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %regd.i, align 8
  %arrayidx.i = getelementptr [3 x ptr], ptr @rtw_regd_handler, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %call2.i = call zeroext i1 %10(ptr noundef %1, ptr noundef nonnull %next_regd, ptr noundef %request) #9
  %11 = ptrtoint ptr %regd.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %regd.i, align 8
  br i1 %call2.i, label %if.end, label %if.then

if.then:                                          ; preds = %rtw_regd_state_hdl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %alpha2.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %alpha2.i, align 4
  %conv = zext i8 %14 to i32
  %arrayidx4 = getelementptr %struct.regulatory_request, ptr %request, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %16 to i32
  %initiator = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 2
  %17 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %initiator, align 4
  call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %1, i32 noundef 256, ptr noundef nonnull @.str.7, i32 noundef %12, i32 noundef %conv, i32 noundef %conv5, i32 noundef %18) #9
  br label %cleanup

if.end:                                           ; preds = %rtw_regd_state_hdl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %next_regd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %next_regd, align 4
  call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %1, i32 noundef 256, ptr noundef nonnull @.str.8, i32 noundef %12, i32 noundef %20) #9
  %21 = call ptr @memcpy(ptr %regd.i, ptr %next_regd, i32 12)
  %22 = ptrtoint ptr %alpha2.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %alpha2.i, align 4
  %conv13 = zext i8 %23 to i32
  %arrayidx15 = getelementptr %struct.regulatory_request, ptr %request, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %25 to i32
  %initiator17 = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 2
  %26 = ptrtoint ptr %initiator17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %initiator17, align 4
  %regulatory = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 11, i32 1
  %28 = ptrtoint ptr %regulatory to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regulatory, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  %conv20 = zext i8 %31 to i32
  %arrayidx23 = getelementptr [2 x i8], ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %33 to i32
  %txpwr_regd_2g = getelementptr inbounds %struct.rtw_regulatory, ptr %29, i32 0, i32 1
  %34 = ptrtoint ptr %txpwr_regd_2g to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %txpwr_regd_2g, align 1
  %conv26 = zext i8 %35 to i32
  %txpwr_regd_5g = getelementptr inbounds %struct.rtw_regulatory, ptr %29, i32 0, i32 2
  %36 = ptrtoint ptr %txpwr_regd_5g to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %txpwr_regd_5g, align 1
  %conv28 = zext i8 %37 to i32
  %dfs_region = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 11, i32 2
  %38 = ptrtoint ptr %dfs_region to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dfs_region, align 4
  call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %1, i32 noundef 256, ptr noundef nonnull @.str.9, i32 noundef %conv13, i32 noundef %conv16, i32 noundef %27, i32 noundef %conv20, i32 noundef %conv24, i32 noundef %conv26, i32 noundef %conv28, i32 noundef %39) #9
  call void @rtw_phy_adaptivity_set_mode(ptr noundef %1) #9
  %current_channel = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 5, i32 7
  %40 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %current_channel, align 1
  call void @rtw_phy_set_tx_power_level(ptr noundef %1, i8 noundef zeroext %41) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %next_regd) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rtw_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_regd_hint(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtwdev, align 8
  %wiphy1 = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %regd = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 11
  %4 = ptrtoint ptr %regd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %regd, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %country_code = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 6
  %6 = ptrtoint ptr %country_code to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %country_code, align 1
  %conv = zext i8 %7 to i32
  %arrayidx5 = getelementptr %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 6, i32 1
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %9 to i32
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 256, ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef %conv6) #9
  %call = tail call i32 @regulatory_hint(ptr noundef nonnull %3, ptr noundef %country_code) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.2, i32 noundef %call) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then2.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulatory_hint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @rtw_regd_get(ptr nocapture noundef readonly %rtwdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_band_type = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 10
  %0 = ptrtoint ptr %current_band_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %current_band_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  %regulatory = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %regulatory to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regulatory, align 4
  %txpwr_regd_2g = getelementptr inbounds %struct.rtw_regulatory, ptr %3, i32 0, i32 1
  %txpwr_regd_5g = getelementptr inbounds %struct.rtw_regulatory, ptr %3, i32 0, i32 2
  %cond.in.in = select i1 %cmp, ptr %txpwr_regd_2g, ptr %txpwr_regd_5g
  %4 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load1_noabort(i32 %4)
  %cond.in10 = load i8, ptr %cond.in.in, align 1
  ret i8 %cond.in10
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local zeroext i1 @rtw_regd_has_alt(i8 noundef zeroext %regd, ptr nocapture noundef writeonly %regd_alt) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %regd to i32
  %arrayidx = getelementptr [11 x %struct.rtw_regd_alternative_t], ptr @rtw_regd_alt, i32 0, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %alt = getelementptr [11 x %struct.rtw_regd_alternative_t], ptr @rtw_regd_alt, i32 0, i32 %idxprom, i32 1
  %2 = ptrtoint ptr %alt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %alt, align 1
  %4 = ptrtoint ptr %regd_alt to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %regd_alt, align 1
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %5 = xor i1 %tobool.not, true
  ret i1 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wiphy_to_ieee80211_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_phy_adaptivity_set_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_phy_set_tx_power_level(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rtw_regd_mgmt_worldwide(ptr nocapture noundef readonly %rtwdev, ptr nocapture noundef %next_regd, ptr nocapture noundef readonly %request) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtwdev, align 8
  %wiphy1 = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy1, align 8
  %4 = ptrtoint ptr %next_regd to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %next_regd, align 4
  %initiator = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 2
  %5 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %initiator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %regulatory = getelementptr inbounds %struct.rtw_regd, ptr %next_regd, i32 0, i32 1
  %7 = ptrtoint ptr %regulatory to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regulatory, align 4
  %cmp.i = icmp eq ptr %8, @rtw_reg_ww
  br i1 %cmp.i, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %next_regd to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %next_regd, align 4
  %regulatory_flags = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 12
  %10 = ptrtoint ptr %regulatory_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %regulatory_flags, align 4
  %or = or i32 %11, 16
  store i32 %or, ptr %regulatory_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i1 true
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rtw_regd_mgmt_programmed(ptr nocapture noundef readonly %rtwdev, ptr nocapture noundef %next_regd, ptr nocapture noundef readonly %request) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %initiator = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 2
  %0 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %initiator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true:                                    ; preds = %entry
  %regulatory = getelementptr inbounds %struct.rtw_regd, ptr %next_regd, i32 0, i32 1
  %2 = ptrtoint ptr %regulatory to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regulatory, align 4
  %country_code = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 8, i32 6
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(2) %3, ptr noundef dereferenceable(2) %country_code, i32 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %if.then, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %next_regd to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %next_regd, align 4
  br label %return

return:                                           ; preds = %if.then, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %if.then ], [ false, %land.lhs.true.return_crit_edge ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rtw_regd_mgmt_setting(ptr nocapture noundef readonly %rtwdev, ptr nocapture noundef %next_regd, ptr nocapture noundef readonly %request) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtwdev, align 8
  %wiphy1 = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy1, align 8
  %initiator = getelementptr inbounds %struct.regulatory_request, ptr %request, i32 0, i32 2
  %4 = ptrtoint ptr %initiator to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %initiator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %next_regd to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %next_regd, align 4
  %regulatory = getelementptr inbounds %struct.rtw_regd, ptr %next_regd, i32 0, i32 1
  %7 = ptrtoint ptr %regulatory to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regulatory, align 4
  %cmp.i = icmp eq ptr %8, @rtw_reg_ww
  br i1 %cmp.i, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %next_regd to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %next_regd, align 4
  %regulatory_flags = getelementptr inbounds %struct.wiphy, ptr %3, i32 0, i32 12
  %10 = ptrtoint ptr %regulatory_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %regulatory_flags, align 4
  %and = and i32 %11, -17
  store i32 %and, ptr %regulatory_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i1 %cmp.not
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtw88/regd.c", i32 362, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtw88/regd.c", i32 378, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtw88/regd.c", i32 385, i32 4}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @rtw_regd_hint._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @rtw_regd_hint._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__ksymtab_rtw_regd_get, !13, !"__ksymtab_rtw_regd_get", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtw88/regd.c", i32 501, i32 1}
!14 = !{ptr @rtw_reg_map, !15, !"rtw_reg_map", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtw88/regd.c", i32 36, i32 36}
!16 = !{ptr @rtw_reg_ww, !17, !"rtw_reg_ww", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtw88/regd.c", i32 33, i32 36}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtw88/regd.c", i32 470, i32 3}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtw88/regd.c", i32 479, i32 2}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtw88/regd.c", i32 483, i32 2}
!24 = !{ptr @rtw_regd_handler, !25, !"rtw_regd_handler", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtw88/regd.c", i32 443, i32 21}
!26 = !{ptr @rtw_regd_alt, !27, !"rtw_regd_alt", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtw88/regd.c", i32 512, i32 1}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i8 0, i8 2}
