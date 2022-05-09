; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtw88/mac80211.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtw88/mac80211.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rtw_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_rtw_ops\09\09\09\09"
module asm "\09.long\09__crc_rtw_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtw_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22rtw_ops\22\09\09\09\09\09"
module asm "__kstrtabns_rtw_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtw_vif_port = type { %struct.rtw_hw_reg, %struct.rtw_hw_reg, %struct.rtw_hw_reg, %struct.rtw_hw_reg, %struct.rtw_hw_reg }
%struct.rtw_hw_reg = type { i32, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.rtw_dev = type { ptr, ptr, %struct.rtw_hci, %struct.rtw_hw_scan_info, ptr, %struct.rtw_hal, %struct.rtw_fifo_conf, %struct.rtw_fw_state, %struct.rtw_efuse, %struct.rtw_sec_desc, %struct.rtw_traffic_stats, %struct.rtw_regd, %struct.rtw_bf_info, %struct.rtw_dm_info, %struct.rtw_coex, %struct.mutex, %struct.spinlock, %struct.delayed_work, i32, %struct.list_head, %struct.sk_buff_head, %struct.work_struct, %struct.work_struct, %struct.spinlock, %struct.list_head, ptr, %struct.work_struct, %struct.work_struct, %struct.rtw_tx_report, %struct.anon.142, %struct.rtw_lps_conf, i8, i8, %struct.completion, ptr, i8, i32, [1 x i32], [1 x i32], i8, %struct.rtw_path_div, %struct.rtw_fw_state, %struct.rtw_wow_param, i8, %struct.completion, [0 x i8] }
%struct.rtw_hci = type { ptr, i32, i32, i32, i8 }
%struct.rtw_hw_scan_info = type { ptr, i8, i8, i8, i8 }
%struct.rtw_hal = type { i32, i32, i8, i8, i8, %struct.rtw_phy_cond, i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i32, i32, i8, %struct.mutex, [4 x [84 x i8]], [4 x [84 x i8]], [4 x [6 x i8]], [4 x [6 x i8]], [11 x [3 x [6 x [14 x i8]]]], [11 x [3 x [6 x [49 x i8]]]], [4 x [84 x i8]], i32, %struct.rtw_sar }
%struct.rtw_phy_cond = type { i32 }
%struct.rtw_sar = type { i32, [4 x [6 x %union.rtw_sar_cfg]] }
%union.rtw_sar_cfg = type { [4 x i8] }
%struct.rtw_fifo_conf = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.rtw_efuse = type { i32, i32, i32, i32, [6 x i8], i8, [2 x i8], i8, i8, i8, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.anon.140, [4 x %struct.rtw_txpwr_idx] }
%struct.anon.140 = type { i8, i8, i8, i8, i8 }
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
%struct.rtw_iqk_info = type { i8, %struct.anon.141 }
%struct.anon.141 = type { i32, i32, i32, i32 }
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
%struct.anon.142 = type { i8, %struct.spinlock, i32 }
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
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.130, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.130 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.131] }
%struct.anon.131 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.rtw_vif = type { i32, i16, [6 x i8], [6 x i8], i8, i8, %struct.list_head, [4 x %struct.ieee80211_tx_queue_params], ptr, ptr, ptr, %struct.rtw_traffic_stats, %struct.rtw_bfee }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.rtw_bfee = type { i32, i16, i8, [6 x i8], i8, i8, i16 }
%struct.rtw_hci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtw_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.station_info = type { i64, i32, i32, i64, i64, i64, i16, i16, i8, i8, i8, i8, [4 x i8], [4 x i8], %struct.rate_info, %struct.rate_info, i32, i32, i32, i32, i32, %struct.sta_bss_parameters, %struct.nl80211_sta_flag_update, i32, ptr, i32, i32, i64, i32, i32, i32, i32, i64, i64, i64, i8, i8, ptr, i8, i8, i16, i32, i32, i32, i8 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.sta_bss_parameters = type { i8, i8, i16 }
%struct.nl80211_sta_flag_update = type { i32, i32 }
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
%struct.ieee80211_ampdu_params = type { i32, ptr, i16, i16, i16, i8, i16 }
%struct.ieee80211_txq = type { ptr, ptr, i8, i8, [2 x i8], [0 x i8] }
%struct.rtw_iter_bitrate_mask_data = type { ptr, ptr, ptr }

@rtw_ops = dso_local constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @rtw_ops_tx, ptr @rtw_ops_start, ptr @rtw_ops_stop, ptr @rtw_ops_suspend, ptr @rtw_ops_resume, ptr @rtw_ops_set_wakeup, ptr @rtw_ops_add_interface, ptr @rtw_ops_change_interface, ptr @rtw_ops_remove_interface, ptr @rtw_ops_config, ptr @rtw_ops_bss_info_changed, ptr null, ptr null, ptr null, ptr @rtw_ops_configure_filter, ptr null, ptr null, ptr @rtw_ops_set_key, ptr null, ptr null, ptr null, ptr @rtw_ops_hw_scan, ptr @rtw_ops_cancel_hw_scan, ptr null, ptr null, ptr @rtw_ops_sw_scan_start, ptr @rtw_ops_sw_scan_complete, ptr null, ptr null, ptr null, ptr @rtw_ops_set_rts_threshold, ptr @rtw_ops_sta_add, ptr @rtw_ops_sta_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtw_ops_sta_statistics, ptr @rtw_ops_conf_tx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtw_ops_ampdu_action, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtw_ops_flush, ptr null, ptr @rtw_ops_set_antenna, ptr @rtw_ops_get_antenna, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtw_ops_set_bitrate_mask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtw_ops_mgd_prepare_tx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtw_reconfig_complete, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtw_ops_wake_tx_queue, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtw_ops_can_aggregate_in_amsdu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtw_ops_set_sar_specs, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@__kstrtab_rtw_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtw_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_rtw_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtw_ops to i32), ptr @__kstrtab_rtw_ops, ptr @__kstrtabns_rtw_ops }, section "___ksymtab+rtw_ops", align 4
@rtw_ops_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 761, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to suspend for wow %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtw_ops_suspend\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/realtek/rtw88/mac80211.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtw_ops_suspend._entry_ptr = internal global ptr @rtw_ops_suspend._entry, section ".printk_index", align 4
@rtw_ops_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 775, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to resume for wow %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtw_ops_resume\00", [17 x i8] zeroinitializer }, align 32
@rtw_ops_resume._entry_ptr = internal global ptr @rtw_ops_resume._entry, section ".printk_index", align 4
@rtw_vif_port = internal constant { [5 x %struct.rtw_vif_port], [56 x i8] } { [5 x %struct.rtw_vif_port] [%struct.rtw_vif_port { %struct.rtw_hw_reg { i32 1552, i32 0 }, %struct.rtw_hw_reg { i32 1560, i32 0 }, %struct.rtw_hw_reg { i32 256, i32 196608 }, %struct.rtw_hw_reg { i32 1704, i32 2047 }, %struct.rtw_hw_reg { i32 1360, i32 255 } }, %struct.rtw_vif_port { %struct.rtw_hw_reg { i32 1792, i32 0 }, %struct.rtw_hw_reg { i32 1800, i32 0 }, %struct.rtw_hw_reg { i32 256, i32 786432 }, %struct.rtw_hw_reg { i32 1808, i32 2047 }, %struct.rtw_hw_reg { i32 1361, i32 255 } }, %struct.rtw_vif_port { %struct.rtw_hw_reg { i32 5664, i32 0 }, %struct.rtw_hw_reg { i32 5672, i32 0 }, %struct.rtw_hw_reg { i32 4352, i32 3 }, %struct.rtw_hw_reg { i32 5632, i32 2047 }, %struct.rtw_hw_reg { i32 1400, i32 255 } }, %struct.rtw_vif_port { %struct.rtw_hw_reg { i32 5680, i32 0 }, %struct.rtw_hw_reg { i32 5688, i32 0 }, %struct.rtw_hw_reg { i32 4352, i32 12 }, %struct.rtw_hw_reg { i32 5636, i32 2047 }, %struct.rtw_hw_reg { i32 1401, i32 255 } }, %struct.rtw_vif_port { %struct.rtw_hw_reg { i32 5696, i32 0 }, %struct.rtw_hw_reg { i32 5704, i32 0 }, %struct.rtw_hw_reg { i32 4352, i32 48 }, %struct.rtw_hw_reg { i32 5640, i32 2047 }, %struct.rtw_hw_reg { i32 1402, i32 255 } }], [56 x i8] zeroinitializer }, align 32
@rtw_ops_add_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 208, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"start vif %pM on port %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtw_ops_add_interface\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rtw_ops_add_interface._entry_ptr = internal global ptr @rtw_ops_add_interface._entry, section ".printk_index", align 4
@rtw_ops_change_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 246, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"change vif %pM (%d)->(%d), p2p (%d)->(%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtw_ops_change_interface\00", [39 x i8] zeroinitializer }, align 32
@rtw_ops_change_interface._entry_ptr = internal global ptr @rtw_ops_change_interface._entry, section ".printk_index", align 4
@rtw_ops_remove_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 219, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stop vif %pM on port %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtw_ops_remove_interface\00", [39 x i8] zeroinitializer }, align 32
@rtw_ops_remove_interface._entry_ptr = internal global ptr @rtw_ops_remove_interface._entry, section ".printk_index", align 4
@rtw_ops_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 83, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to leave idle state\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtw_ops_config\00", [17 x i8] zeroinitializer }, align 32
@rtw_ops_config._entry_ptr = internal global ptr @rtw_ops_config._entry, section ".printk_index", align 4
@rtw_bf_support = external dso_local local_unnamed_addr global i8, align 1
@ac_to_edca_param = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1280, i32 1284, i32 1288, i32 1292], [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"config rx filter, changed=0x%08x, new=0x%08x, rcr=0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@rtw_ops_hw_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 817, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HW scan failed with status: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtw_ops_hw_scan\00", [16 x i8] zeroinitializer }, align 32
@rtw_ops_hw_scan._entry_ptr = internal global ptr @rtw_ops_hw_scan._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.21 = internal global [13 x i64] [i64 11, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077, i64 1027078, i64 1027080, i64 1027081, i64 1027082, i64 1027083, i64 1027084, i64 1027085]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.23 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.24 = private unnamed_addr constant [8 x i8] c"rtw_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 850, i32 28 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 761, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 775, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [13 x i8] c"rtw_vif_port\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 109, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 208, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 245, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 219, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 83, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"ac_to_edca_param\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 305, i32 18 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 295, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [49 x i8] c"../drivers/net/wireless/realtek/rtw88/mac80211.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 817, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__ksymtab_rtw_ops, ptr @rtw_ops_add_interface._entry, ptr @rtw_ops_add_interface._entry_ptr, ptr @rtw_ops_change_interface._entry, ptr @rtw_ops_change_interface._entry_ptr, ptr @rtw_ops_config._entry, ptr @rtw_ops_config._entry_ptr, ptr @rtw_ops_hw_scan._entry, ptr @rtw_ops_hw_scan._entry_ptr, ptr @rtw_ops_remove_interface._entry, ptr @rtw_ops_remove_interface._entry_ptr, ptr @rtw_ops_resume._entry, ptr @rtw_ops_resume._entry_ptr, ptr @rtw_ops_suspend._entry, ptr @rtw_ops_suspend._entry_ptr, ptr @rtw_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @rtw_vif_port, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @ac_to_edca_param, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ops_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ops_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_vif_port to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ops_add_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ops_change_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ops_remove_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ops_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_to_edca_param to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_ops_hw_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_ops_tx(ptr noundef %hw, ptr noundef %control, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %flags = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ieee80211_free_txskb(ptr noundef %hw, ptr noundef %skb) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtw_tx(ptr noundef %1, ptr noundef %control, ptr noundef %skb) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_ops_start(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call = tail call i32 @rtw_core_start(ptr noundef %1) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_ops_stop(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call void @rtw_core_stop(ptr noundef %1) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_ops_suspend(ptr nocapture noundef readonly %hw, ptr noundef %wowlan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call = tail call i32 @rtw_wow_suspend(ptr noundef %1, ptr noundef %wowlan) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %call) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_ops_resume(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call = tail call i32 @rtw_wow_resume(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %call) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_ops_set_wakeup(ptr nocapture noundef readonly %hw, i1 noundef zeroext %enabled) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call = tail call i32 @device_set_wakeup_enable(ptr noundef %3, i1 noundef zeroext %enabled) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_ops_add_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %feature1.i = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %feature1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %feature1.i, align 4
  %and.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %driver_flags = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 10
  %4 = ptrtoint ptr %driver_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_flags, align 8
  %or = or i32 %5, 3
  store i32 %or, ptr %driver_flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %port1 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 5
  %6 = ptrtoint ptr %port1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %port1, align 2
  %stats = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 29
  %scan_req = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 27
  %7 = ptrtoint ptr %scan_req to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %scan_req, align 8
  %bfee = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 33, i32 1
  %8 = call ptr @memset(ptr %bfee, i32 0, i32 20)
  %conf = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 26, i32 5
  %9 = call ptr @memset(ptr %stats, i32 0, i32 32)
  %10 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @rtw_vif_port, ptr %conf, align 4
  %txq = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 8
  %11 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %txq, align 8
  tail call void @rtw_txq_init(ptr noundef %1, ptr noundef %12) #8
  %rsvd_page_list = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 7
  %13 = ptrtoint ptr %rsvd_page_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %rsvd_page_list, ptr %rsvd_page_list, align 4
  %prev.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 11
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %rsvd_page_list, ptr %prev.i, align 4
  %mutex = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call void @rtw_leave_lps_deep(ptr noundef %1) #8
  %15 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vif, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %do.end [
    i32 3, label %if.end.sw.bb_crit_edge
    i32 7, label %if.end.sw.bb_crit_edge79
    i32 1, label %sw.bb5
    i32 2, label %sw.bb6
  ]

if.end.sw.bb_crit_edge79:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge79
  tail call void @rtw_add_rsvd_page_bcn(ptr noundef %1, ptr noundef %drv_priv) #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtw_add_rsvd_page_bcn(ptr noundef %1, ptr noundef %drv_priv) #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtw_add_rsvd_page_sta(ptr noundef %1, ptr noundef %drv_priv) #8
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 193, i32 noundef 9, ptr noundef null) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %sw.bb
  %net_type.0 = phi i32 [ 0, %sw.bb6 ], [ 1, %sw.bb5 ], [ 3, %sw.bb ]
  %bcn_ctrl.0 = phi i8 [ 8, %sw.bb6 ], [ 24, %sw.bb5 ], [ 24, %sw.bb ]
  %mac_addr = getelementptr inbounds %struct.rtw_vif, ptr %drv_priv, i32 0, i32 2
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr, align 4
  %20 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %mac_addr, align 4
  %add.ptr.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.rtw_vif, ptr %drv_priv, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %add.ptr1.i, align 2
  %24 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %net_type.0, ptr %drv_priv, align 8
  %bcn_ctrl29 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 6
  %25 = ptrtoint ptr %bcn_ctrl29 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %bcn_ctrl.0, ptr %bcn_ctrl29, align 1
  tail call void @rtw_vif_port_config(ptr noundef %1, ptr noundef %drv_priv, i32 noundef 21) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %28 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %port1, align 2
  %conv = zext i8 %29 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.7, ptr noundef %addr, i32 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_ops_change_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif, i32 noundef %type, i1 noundef zeroext %p2p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %p2p to i8
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %4 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vif, align 8
  %p2p2 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %6 = ptrtoint ptr %p2p2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %p2p2, align 2, !range !61
  %8 = zext i8 %7 to i32
  %conv4 = zext i1 %p2p to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.10, ptr noundef %addr, i32 noundef %5, i32 noundef %type, i32 noundef %8, i32 noundef %conv4) #11
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %dev.i = getelementptr inbounds %struct.rtw_dev, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %port.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 5
  %13 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %port.i, align 2
  %conv.i = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.12, ptr noundef %addr, i32 noundef %conv.i) #11
  %mutex.i = getelementptr inbounds %struct.rtw_dev, ptr %10, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #8
  tail call void @rtw_leave_lps_deep(ptr noundef %10) #8
  %txq.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 8
  %15 = ptrtoint ptr %txq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %txq.i, align 8
  tail call void @rtw_txq_cleanup(ptr noundef %10, ptr noundef %16) #8
  tail call void @rtw_remove_rsvd_page(ptr noundef %10, ptr noundef %drv_priv.i) #8
  %mac_addr.i = getelementptr inbounds %struct.rtw_vif, ptr %drv_priv.i, i32 0, i32 2
  %17 = call ptr @memset(ptr %mac_addr.i, i32 0, i32 6)
  %18 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %drv_priv.i, align 8
  %bcn_ctrl.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 6
  %19 = ptrtoint ptr %bcn_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %bcn_ctrl.i, align 1
  tail call void @rtw_vif_port_config(ptr noundef %10, ptr noundef %drv_priv.i, i32 noundef 21) #8
  tail call void @mutex_unlock(ptr noundef %mutex.i) #8
  %20 = ptrtoint ptr %vif to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %type, ptr %vif, align 8
  %21 = ptrtoint ptr %p2p2 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool, ptr %p2p2, align 2
  %call = tail call i32 @rtw_ops_add_interface(ptr noundef %hw, ptr noundef %vif)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_ops_remove_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %port = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 5
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port, align 2
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.12, ptr noundef %addr, i32 noundef %conv) #11
  %mutex = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call void @rtw_leave_lps_deep(ptr noundef %1) #8
  %txq = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 8
  %6 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %txq, align 8
  tail call void @rtw_txq_cleanup(ptr noundef %1, ptr noundef %7) #8
  tail call void @rtw_remove_rsvd_page(ptr noundef %1, ptr noundef %drv_priv) #8
  %mac_addr = getelementptr inbounds %struct.rtw_vif, ptr %drv_priv, i32 0, i32 2
  %8 = call ptr @memset(ptr %mac_addr, i32 0, i32 6)
  %9 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %drv_priv, align 8
  %bcn_ctrl = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 6
  %10 = ptrtoint ptr %bcn_ctrl to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %bcn_ctrl, align 1
  tail call void @rtw_vif_port_config(ptr noundef %1, ptr noundef %drv_priv, i32 noundef 21) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_ops_config(ptr nocapture noundef readonly %hw, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call void @rtw_leave_lps_deep(ptr noundef %1) #8
  %and = and i32 %changed, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %land.lhs.true

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw, align 8
  %and1 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 @rtw_leave_ips(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %do.end

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.14) #11
  br label %out

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  %and6 = and i32 %changed, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.end16_crit_edge, label %if.then8

if.end5.if.end16_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then8:                                         ; preds = %if.end5
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw, align 8
  %and11 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %ps_enabled14 = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 31
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %ps_enabled14 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %ps_enabled14, align 4
  br label %if.end16

if.else:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %ps_enabled14 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %ps_enabled14, align 4
  tail call void @rtw_leave_lps(ptr noundef %1) #8
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then13, %if.end5.if.end16_crit_edge
  %and17 = and i32 %changed, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end20_crit_edge, label %if.then19

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtw_set_channel(ptr noundef %1) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16.if.end20_crit_edge
  br i1 %tobool.not, label %if.end20.out_crit_edge, label %land.lhs.true23

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true23:                                  ; preds = %if.end20
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw, align 8
  %and26 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %land.lhs.true23.out_crit_edge, label %if.then28

land.lhs.true23.out_crit_edge:                    ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then28:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  %call29 = tail call i32 @rtw_enter_ips(ptr noundef %1) #8
  br label %out

out:                                              ; preds = %if.then28, %land.lhs.true23.out_crit_edge, %if.end20.out_crit_edge, %do.end
  %ret.1 = phi i32 [ 0, %if.then28 ], [ 0, %land.lhs.true23.out_crit_edge ], [ 0, %if.end20.out_crit_edge ], [ %call, %do.end ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_ops_bss_info_changed(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %conf, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %mutex = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call void @rtw_leave_lps_deep(ptr noundef %1) #8
  %and = and i32 %changed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then:                                          ; preds = %entry
  tail call void @rtw_vif_assoc_changed(ptr noundef %drv_priv, ptr noundef %conf) #8
  %assoc = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 10
  %2 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %assoc, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  tail call void @rtw_coex_connect_notify(ptr noundef %1, i8 noundef zeroext 0) #8
  %call = tail call i32 @rtw_fw_download_rsvd_page(ptr noundef %1) #8
  tail call void @rtw_send_rsvd_page_h2c(ptr noundef %1) #8
  %4 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %assoc, align 1, !range !61
  tail call void @rtw_coex_media_status_notify(ptr noundef %1, i8 noundef zeroext %5) #8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @rtw_bf_support to i32))
  %6 = load i8, ptr @rtw_bf_support, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp eq i8 %6, 0
  br i1 %tobool6.not, label %if.then3.if.end_crit_edge, label %if.then7

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtw_bf_assoc(ptr noundef %1, ptr noundef %vif, ptr noundef %conf) #8
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then3.if.end_crit_edge
  tail call void @rtw_store_op_chan(ptr noundef %1) #8
  br label %if.end15

if.else:                                          ; preds = %if.then
  tail call void @rtw_leave_lps(ptr noundef %1) #8
  tail call void @rtw_bf_disassoc(ptr noundef %1, ptr noundef %vif, ptr noundef %conf) #8
  %flags = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 38
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %if.else.if.end15_crit_edge, label %if.then11

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtw_hw_scan_abort(ptr noundef %1, ptr noundef %vif) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.else.if.end15_crit_edge, %if.end, %entry.if.end15_crit_edge
  %config.0 = phi i32 [ 0, %entry.if.end15_crit_edge ], [ 12, %if.else.if.end15_crit_edge ], [ 12, %if.then11 ], [ 12, %if.end ]
  %and16 = and i32 %changed, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end22_crit_edge, label %if.then18

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %bssid = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 1
  %10 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %conf, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = ptrtoint ptr %bssid to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %bssid, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 4
  %17 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %add.ptr1.i, align 2
  %or21 = or i32 %config.0, 2
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end15.if.end22_crit_edge
  %config.1 = phi i32 [ %or21, %if.then18 ], [ %config.0, %if.end15.if.end22_crit_edge ]
  %and23 = and i32 %changed, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end30_crit_edge, label %if.then25

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then25:                                        ; preds = %if.end22
  %18 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vif, align 8
  %p2p.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %20 = ptrtoint ptr %p2p.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %p2p.i, align 2, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp = icmp eq i32 %19, 2
  %or.cond = select i1 %tobool.not.i, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then28, label %if.then25.if.end30_crit_edge

if.then25.if.end30_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then28:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %beacon_int = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 19
  %22 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %beacon_int, align 2
  %wl_beacon_interval = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 14, i32 9, i32 74
  %24 = ptrtoint ptr %wl_beacon_interval to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %wl_beacon_interval, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.then25.if.end30_crit_edge, %if.end22.if.end30_crit_edge
  %and31 = and i32 %changed, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end35_crit_edge, label %if.then33

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %call34 = tail call i32 @rtw_fw_download_rsvd_page(ptr noundef %1) #8
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end30.if.end35_crit_edge
  %and36 = and i32 %changed, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end43_crit_edge, label %if.then38

if.end35.if.end43_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %enable_beacon = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %conf, i32 0, i32 17
  %25 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %enable_beacon, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool39.not = icmp eq i8 %26, 0
  %hci.i.i104 = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %hci.i.i104 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hci.i.i104, align 8
  %read32.i.i105 = getelementptr inbounds %struct.rtw_hci_ops, ptr %28, i32 0, i32 13
  %29 = ptrtoint ptr %read32.i.i105 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read32.i.i105, align 4
  %call.i.i106 = tail call i32 %30(ptr noundef %1, i32 noundef 1056) #8
  %and.i = and i32 %call.i.i106, -4194305
  %masksel = select i1 %tobool39.not, i32 0, i32 4194304
  %or.i.sink = or i32 %and.i, %masksel
  %31 = ptrtoint ptr %hci.i.i104 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hci.i.i104, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %32, i32 0, i32 16
  %33 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write32.i.i, align 4
  tail call void %34(ptr noundef %1, i32 noundef 1056, i32 noundef %or.i.sink) #8
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %if.end35.if.end43_crit_edge
  %and44 = and i32 %changed, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.if.end47_crit_edge, label %if.then46

if.end43.if.end47_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtw_fw_beacon_filter_config(ptr noundef %1, i1 noundef zeroext true, ptr noundef %vif) #8
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end43.if.end47_crit_edge
  %and48 = and i32 %changed, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end47.if.end51_crit_edge, label %if.then50

if.end47.if.end51_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then50:                                        ; preds = %if.end47
  %chip.i = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chip.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %set_gid_table.i = getelementptr inbounds %struct.rtw_chip_ops, ptr %38, i32 0, i32 20
  %39 = ptrtoint ptr %set_gid_table.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %set_gid_table.i, align 4
  %tobool.not.i108 = icmp eq ptr %40, null
  br i1 %tobool.not.i108, label %if.then50.if.end51_crit_edge, label %if.then.i

if.then50.if.end51_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then.i:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %40(ptr noundef %1, ptr noundef %vif, ptr noundef %conf) #8
  br label %if.end51

if.end51:                                         ; preds = %if.then.i, %if.then50.if.end51_crit_edge, %if.end47.if.end51_crit_edge
  %and52 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end51.if.end55_crit_edge, label %if.then54

if.end51.if.end55_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @__rtw_conf_tx(ptr noundef %1, ptr noundef %drv_priv, i16 noundef zeroext 0) #8
  tail call fastcc void @__rtw_conf_tx(ptr noundef %1, ptr noundef %drv_priv, i16 noundef zeroext 1) #8
  tail call fastcc void @__rtw_conf_tx(ptr noundef %1, ptr noundef %drv_priv, i16 noundef zeroext 2) #8
  tail call fastcc void @__rtw_conf_tx(ptr noundef %1, ptr noundef %drv_priv, i16 noundef zeroext 3) #8
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end51.if.end55_crit_edge
  tail call void @rtw_vif_port_config(ptr noundef %1, ptr noundef %drv_priv, i32 noundef %config.1) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_ops_configure_filter(ptr nocapture noundef readonly %hw, i32 noundef %changed_flags, ptr nocapture noundef %new_flags, i64 noundef %multicast) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %new_flags, align 4
  %and = and i32 %3, 86
  store i32 %and, ptr %new_flags, align 4
  %mutex = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call void @rtw_leave_lps_deep(ptr noundef %1) #8
  %and1 = and i32 %changed_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %new_flags, align 4
  %and2 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %hal5 = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %hal5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hal5, align 8
  %and7 = and i32 %7, -13
  %masksel = select i1 %tobool3.not, i32 0, i32 12
  %or.sink = or i32 %and7, %masksel
  store i32 %or.sink, ptr %hal5, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then, %entry.if.end8_crit_edge
  %and9 = and i32 %changed_flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end23_crit_edge, label %if.then11

if.end8.if.end23_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %new_flags, align 4
  %hal19 = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %hal19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hal19, align 8
  %and21 = and i32 %11, -257
  %and12 = shl i32 %9, 6
  %12 = and i32 %and12, 256
  %or17.sink = or i32 %and21, %12
  store i32 %or17.sink, ptr %hal19, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then11, %if.end8.if.end23_crit_edge
  %and24 = and i32 %changed_flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end38_crit_edge, label %if.then26

if.end23.if.end38_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %new_flags, align 4
  %hal34 = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %hal34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hal34, align 8
  %and36 = and i32 %16, -2
  %and27 = lshr i32 %14, 6
  %and27.lobit = and i32 %and27, 1
  %or32.sink = or i32 %and36, %and27.lobit
  store i32 %or32.sink, ptr %hal34, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then26, %if.end23.if.end38_crit_edge
  %and39 = and i32 %changed_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end38.if.end53_crit_edge, label %if.then41

if.end38.if.end53_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %new_flags, align 4
  %and42 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %hal49 = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %hal49 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hal49, align 8
  %and47 = and i32 %20, -193
  %or51 = or i32 %20, 128
  %and47.sink = select i1 %tobool43.not, i32 %or51, i32 %and47
  store i32 %and47.sink, ptr %hal49, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then41, %if.end38.if.end53_crit_edge
  %21 = ptrtoint ptr %new_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %new_flags, align 4
  %hal54 = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %hal54 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hal54, align 8
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @.str.18, i32 noundef %changed_flags, i32 noundef %22, i32 noundef %24) #8
  %25 = ptrtoint ptr %hal54 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hal54, align 8
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hci.i, align 8
  %write32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %28, i32 0, i32 16
  %29 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write32.i, align 4
  tail call void %30(ptr noundef %1, i32 noundef 1544, i32 noundef %26) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_ops_set_key(ptr nocapture noundef readonly %hw, i32 noundef %cmd, ptr nocapture noundef readnone %vif, ptr noundef %sta, ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sec1 = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 9
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %2 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cipher, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %3, label %sw.default [
    i32 1027073, label %entry.sw.epilog_crit_edge
    i32 1027077, label %sw.bb2
    i32 1027074, label %sw.bb3
    i32 1027076, label %sw.bb5
    i32 1027078, label %entry.cleanup_crit_edge
    i32 1027085, label %entry.cleanup_crit_edge64
    i32 1027083, label %entry.cleanup_crit_edge65
    i32 1027084, label %entry.cleanup_crit_edge66
    i32 1027082, label %entry.cleanup_crit_edge67
    i32 1027080, label %entry.cleanup_crit_edge68
    i32 1027081, label %entry.cleanup_crit_edge69
  ]

entry.cleanup_crit_edge69:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge68:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge67:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge66:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge65:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge64:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags, align 8
  %7 = or i16 %6, 4
  store i16 %7, ptr %flags, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags6 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %8 = ptrtoint ptr %flags6 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags6, align 8
  %10 = or i16 %9, 16
  store i16 %10, ptr %flags6, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge
  %hw_key_type.0 = phi i8 [ 4, %sw.bb5 ], [ 2, %sw.bb3 ], [ 5, %sw.bb2 ], [ 1, %entry.sw.epilog_crit_edge ]
  %mutex = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call void @rtw_leave_lps_deep(ptr noundef %1) #8
  %flags11 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %11 = ptrtoint ptr %flags11 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags11, align 8
  %13 = and i16 %12, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not = icmp eq i16 %13, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @rtw_sec_get_free_cam(ptr noundef %sec1) #8
  %conv13 = trunc i32 %call to i8
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %14 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %keyidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %hw_key_idx.0 = phi i8 [ %conv13, %if.then ], [ %15, %if.else ]
  %conv14 = zext i8 %hw_key_idx.0 to i32
  %total_cam_num = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %total_cam_num to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %total_cam_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv14)
  %cmp = icmp ult i32 %17, %conv14
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end17

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end17:                                         ; preds = %if.end
  %18 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %cmd, label %if.end17.sw.epilog26_crit_edge [
    i32 0, label %sw.bb18
    i32 1, label %sw.bb24
  ]

if.end17.sw.epilog26_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog26

sw.bb18:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %flags11 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags11, align 8
  %21 = or i16 %20, 2
  store i16 %21, ptr %flags11, align 8
  %hw_key_idx23 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %22 = ptrtoint ptr %hw_key_idx23 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %hw_key_idx.0, ptr %hw_key_idx23, align 2
  tail call void @rtw_sec_write_cam(ptr noundef %1, ptr noundef %sec1, ptr noundef %sta, ptr noundef %key, i8 noundef zeroext %hw_key_type.0, i8 noundef zeroext %hw_key_idx.0) #8
  br label %sw.epilog26

sw.bb24:                                          ; preds = %if.end17
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hci.i, align 8
  %flush_queues.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %flush_queues.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %flush_queues.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %sw.bb24.rtw_hci_flush_all_queues.exit_crit_edge, label %if.then.i

sw.bb24.rtw_hci_flush_all_queues.exit_crit_edge:  ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_hci_flush_all_queues.exit

if.then.i:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  %queues.i = getelementptr inbounds %struct.ieee80211_hw, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %queues.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %queues.i, align 4
  %conv.i = zext i16 %30 to i32
  %notmask.i = shl nsw i32 -1, %conv.i
  %sub.i = xor i32 %notmask.i, -1
  tail call void %26(ptr noundef %1, i32 noundef %sub.i, i1 noundef zeroext false) #8
  br label %rtw_hci_flush_all_queues.exit

rtw_hci_flush_all_queues.exit:                    ; preds = %if.then.i, %sw.bb24.rtw_hci_flush_all_queues.exit_crit_edge
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  %queues.i60 = getelementptr inbounds %struct.ieee80211_hw, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %queues.i60 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %queues.i60, align 4
  %conv.i61 = zext i16 %34 to i32
  %notmask.i62 = shl nsw i32 -1, %conv.i61
  %sub.i63 = xor i32 %notmask.i62, -1
  tail call void @rtw_mac_flush_queues(ptr noundef %1, i32 noundef %sub.i63, i1 noundef zeroext false) #8
  %hw_key_idx25 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %35 = ptrtoint ptr %hw_key_idx25 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %hw_key_idx25, align 2
  tail call void @rtw_sec_clear_cam(ptr noundef %1, ptr noundef %sec1, i8 noundef zeroext %36) #8
  br label %sw.epilog26

sw.epilog26:                                      ; preds = %rtw_hci_flush_all_queues.exit, %sw.bb18, %if.end17.sw.epilog26_crit_edge
  %call27 = tail call i32 @rtw_get_lps_deep_mode(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call27)
  %cmp28 = icmp eq i32 %call27, 2
  br i1 %cmp28, label %if.then30, label %sw.epilog26.out_crit_edge

sw.epilog26.out_crit_edge:                        ; preds = %sw.epilog26
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then30:                                        ; preds = %sw.epilog26
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = tail call i32 @rtw_fw_download_rsvd_page(ptr noundef %1) #8
  br label %out

out:                                              ; preds = %if.then30, %sw.epilog26.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.then30 ], [ 0, %sw.epilog26.out_crit_edge ], [ -28, %if.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %sw.default, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge64, %entry.cleanup_crit_edge65, %entry.cleanup_crit_edge66, %entry.cleanup_crit_edge67, %entry.cleanup_crit_edge68, %entry.cleanup_crit_edge69
  %retval.0 = phi i32 [ -524, %sw.default ], [ %ret.0, %out ], [ -95, %entry.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge64 ], [ -95, %entry.cleanup_crit_edge65 ], [ -95, %entry.cleanup_crit_edge66 ], [ -95, %entry.cleanup_crit_edge67 ], [ -95, %entry.cleanup_crit_edge68 ], [ -95, %entry.cleanup_crit_edge69 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_ops_hw_scan(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %feature1.i = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %feature1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %feature1.i, align 4
  %and.i = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 38
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %mutex = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call void @rtw_hw_scan_start(ptr noundef %1, ptr noundef %vif, ptr noundef %req) #8
  %call4 = tail call i32 @rtw_hw_scan_offload(ptr noundef %1, ptr noundef %vif, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end3.if.end7_crit_edge, label %if.then6

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtw_hw_scan_abort(ptr noundef %1, ptr noundef %vif) #8
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.19, i32 noundef %call4) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end3.if.end7_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end7 ], [ 1, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_ops_cancel_hw_scan(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %feature1.i = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %feature1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %feature1.i, align 4
  %and.i = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 38
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %mutex = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call void @rtw_hw_scan_abort(ptr noundef %1, ptr noundef %vif) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_ops_sw_scan_start(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %mac_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %mutex = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call void @rtw_core_scan_start(ptr noundef %1, ptr noundef %drv_priv, ptr noundef %mac_addr, i1 noundef zeroext false) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_ops_sw_scan_complete(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call void @rtw_core_scan_complete(ptr noundef %1, ptr noundef %vif) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_ops_set_rts_threshold(ptr nocapture noundef readonly %hw, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %rts_threshold = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %value, ptr %rts_threshold, align 8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_ops_sta_add(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call = tail call i32 @rtw_sta_add(ptr noundef %1, ptr noundef %sta, ptr noundef %vif) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_ops_sta_remove(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @rtw_fw_beacon_filter_config(ptr noundef %1, i1 noundef zeroext false, ptr noundef %vif) #8
  %mutex = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call void @rtw_sta_remove(ptr noundef %1, ptr noundef %sta, i1 noundef zeroext true) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rtw_ops_sta_statistics(ptr nocapture noundef readnone %hw, ptr nocapture noundef readnone %vif, ptr nocapture noundef readonly %sta, ptr nocapture noundef %sinfo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %txrate = getelementptr inbounds %struct.station_info, ptr %sinfo, i32 0, i32 14
  %ra_report = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 3, i32 2
  %0 = call ptr @memcpy(ptr %txrate, ptr %ra_report, i32 10)
  %1 = ptrtoint ptr %sinfo to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %sinfo, align 8
  %or = or i64 %2, 256
  store i64 %or, ptr %sinfo, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_ops_conf_tx(ptr nocapture noundef readonly %hw, ptr nocapture noundef %vif, i16 noundef zeroext %ac, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %mutex = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call void @rtw_leave_lps_deep(ptr noundef %1) #8
  %tx_params = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 14
  %idxprom = zext i16 %ac to i32
  %arrayidx = getelementptr [4 x %struct.ieee80211_tx_queue_params], ptr %tx_params, i32 0, i32 %idxprom
  %2 = call ptr @memcpy(ptr %arrayidx, ptr %params, i32 14)
  tail call fastcc void @__rtw_conf_tx(ptr noundef %1, ptr noundef %drv_priv, i16 noundef zeroext %ac)
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_ops_ampdu_action(ptr nocapture noundef readnone %hw, ptr noundef %vif, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sta1 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %sta1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sta1, align 4
  %tid2 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 2
  %2 = ptrtoint ptr %tid2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tid2, align 4
  %idxprom = zext i16 %3 to i32
  %arrayidx = getelementptr %struct.ieee80211_sta, ptr %1, i32 0, i32 28, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %params, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %7, label %do.end [
    i32 2, label %entry.cleanup_crit_edge
    i32 3, label %entry.sw.bb4_crit_edge
    i32 4, label %entry.sw.bb4_crit_edge32
    i32 5, label %entry.sw.bb4_crit_edge33
    i32 6, label %sw.bb6
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %entry.sw.epilog_crit_edge34
  ]

entry.sw.epilog_crit_edge34:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.bb4_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.bb4_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge32, %entry.sw.bb4_crit_edge33
  %flags = getelementptr inbounds %struct.ieee80211_txq, ptr %5, i32 1, i32 2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #8
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 0, i32 1
  tail call void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef %vif, ptr noundef %addr, i16 noundef zeroext %3) #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags7 = getelementptr inbounds %struct.ieee80211_txq, ptr %5, i32 1, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags7) #8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 578, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb4, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge34
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %do.end ], [ 0, %sw.epilog ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_ops_flush(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, i32 noundef %queues, i1 noundef zeroext %drop) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call void @rtw_leave_lps_deep(ptr noundef %1) #8
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hci.i, align 8
  %flush_queues.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %flush_queues.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %flush_queues.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.rtw_hci_flush_queues.exit_crit_edge, label %if.then.i

entry.rtw_hci_flush_queues.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtw_hci_flush_queues.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %5(ptr noundef %1, i32 noundef %queues, i1 noundef zeroext %drop) #8
  br label %rtw_hci_flush_queues.exit

rtw_hci_flush_queues.exit:                        ; preds = %if.then.i, %entry.rtw_hci_flush_queues.exit_crit_edge
  tail call void @rtw_mac_flush_queues(ptr noundef %1, i32 noundef %queues, i1 noundef zeroext %drop) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_ops_set_antenna(ptr nocapture noundef readonly %hw, i32 noundef %tx_antenna, i32 noundef %rx_antenna) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %chip1 = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %set_antenna = getelementptr inbounds %struct.rtw_chip_ops, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %set_antenna to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_antenna, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mutex = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %set_antenna3 = getelementptr inbounds %struct.rtw_chip_ops, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %set_antenna3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_antenna3, align 4
  %call = tail call i32 %11(ptr noundef %1, i32 noundef %tx_antenna, i32 noundef %rx_antenna) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtw_ops_get_antenna(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %tx_antenna, ptr nocapture noundef writeonly %rx_antenna) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %antenna_tx = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 5, i32 16
  %2 = ptrtoint ptr %antenna_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %antenna_tx, align 4
  %4 = ptrtoint ptr %tx_antenna to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tx_antenna, align 4
  %antenna_rx = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 5, i32 17
  %5 = ptrtoint ptr %antenna_rx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %antenna_rx, align 4
  %7 = ptrtoint ptr %rx_antenna to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rx_antenna, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_ops_set_bitrate_mask(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %mask) #0 align 64 {
entry:
  %br_data.i = alloca %struct.rtw_iter_bitrate_mask_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %br_data.i) #8
  %2 = getelementptr inbounds %struct.rtw_iter_bitrate_mask_data, ptr %br_data.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.rtw_iter_bitrate_mask_data, ptr %br_data.i, i32 0, i32 2
  %4 = ptrtoint ptr %br_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %br_data.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %vif, ptr %2, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mask, ptr %3, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  call void @ieee80211_iterate_stations_atomic(ptr noundef %8, ptr noundef nonnull @rtw_ra_mask_info_update_iter, ptr noundef nonnull %br_data.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %br_data.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_ops_mgd_prepare_tx(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, ptr nocapture noundef readnone %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call void @rtw_leave_lps_deep(ptr noundef %1) #8
  tail call void @rtw_coex_connect_notify(ptr noundef %1, i8 noundef zeroext 1) #8
  tail call void @rtw_chip_prepare_tx(ptr noundef %1) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_reconfig_complete(ptr nocapture noundef readonly %hw, i32 noundef %reconfig_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reconfig_type)
  %cmp = icmp eq i32 %reconfig_type, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 38
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %flags) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_ops_wake_tx_queue(ptr nocapture noundef readonly %hw, ptr noundef %txq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_txq, ptr %txq, i32 0, i32 5
  %flags = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %txq_lock = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 23
  tail call void @_raw_spin_lock_bh(ptr noundef %txq_lock) #8
  %4 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %drv_priv, align 4
  %cmp.i.not = icmp eq ptr %5, %drv_priv
  br i1 %cmp.i.not, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.end
  %txqs = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 24
  %prev.i = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 24, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %drv_priv, ptr noundef %7, ptr noundef %txqs) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then4.if.end6_crit_edge

if.then4.if.end6_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end.i.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %drv_priv, ptr %prev.i, align 4
  %9 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %txqs, ptr %drv_priv, align 4
  %prev3.i.i = getelementptr inbounds %struct.ieee80211_txq, ptr %txq, i32 1, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %drv_priv, ptr %7, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end.i.i, %if.then4.if.end6_crit_edge, %if.end.if.end6_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %txq_lock) #8
  %tx_wq = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 25
  %12 = ptrtoint ptr %tx_wq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_wq, align 4
  %tx_work = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 26
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %tx_work) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rtw_ops_can_aggregate_in_amsdu(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %head, ptr nocapture noundef readnone %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %current_band_type = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 5, i32 10
  %2 = ptrtoint ptr %current_band_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %current_band_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp ne i8 %3, 1
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_ops_set_sar_specs(ptr nocapture noundef readonly %hw, ptr noundef %sar) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call i32 @rtw_set_sar_specs(ptr noundef %1, ptr noundef %sar) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_tx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_core_start(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_core_stop(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_wow_suspend(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_wow_resume(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_txq_init(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_leave_lps_deep(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_add_rsvd_page_bcn(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_add_rsvd_page_sta(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_vif_port_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_txq_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_remove_rsvd_page(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_leave_ips(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_leave_lps(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_set_channel(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_enter_ips(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_vif_assoc_changed(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_coex_connect_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_fw_download_rsvd_page(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_send_rsvd_page_h2c(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_coex_media_status_notify(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_bf_assoc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_store_op_chan(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_bf_disassoc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hw_scan_abort(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_fw_beacon_filter_config(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__rtw_conf_tx(ptr noundef %rtwdev, ptr nocapture noundef readonly %rtwvif, i16 noundef zeroext %ac) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i16 %ac to i32
  %arrayidx2 = getelementptr [4 x i32], ptr @ac_to_edca_param, i32 0, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx2, align 4
  %cw_max = getelementptr %struct.rtw_vif, ptr %rtwvif, i32 0, i32 7, i32 %idxprom, i32 2
  %2 = ptrtoint ptr %cw_max to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cw_max, align 2
  %cw_min = getelementptr %struct.rtw_vif, ptr %rtwvif, i32 0, i32 7, i32 %idxprom, i32 1
  %4 = ptrtoint ptr %cw_min to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cw_min, align 2
  %conv19 = zext i16 %5 to i32
  %add20 = add nuw nsw i32 %conv19, 1
  %6 = tail call i32 @llvm.ctlz.i32(i32 %add20, i1 true) #8, !range !62
  %conv = zext i16 %3 to i32
  %add = add nuw nsw i32 %conv, 1
  %7 = tail call i32 @llvm.ctlz.i32(i32 %add, i1 true) #8, !range !62
  %arrayidx = getelementptr %struct.rtw_vif, ptr %rtwvif, i32 0, i32 7, i32 %idxprom
  %aifs45 = getelementptr %struct.rtw_vif, ptr %rtwvif, i32 0, i32 7, i32 %idxprom, i32 3
  %8 = ptrtoint ptr %aifs45 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %aifs45, align 2
  %use_short_slot.i = getelementptr i8, ptr %rtwvif, i32 -818
  %10 = ptrtoint ptr %use_short_slot.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %use_short_slot.i, align 2, !range !61
  %current_band_type.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 5, i32 10
  %12 = ptrtoint ptr %current_band_type.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %current_band_type.i, align 4
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx, align 2
  %conv47 = zext i16 %15 to i32
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %16 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %19(ptr noundef %rtwdev, i32 noundef %1) #8
  %and21.i = and i32 %call.i.i, -134152193
  %shl.i = shl nuw i32 %conv47, 16
  %and22.i = and i32 %shl.i, 134152192
  %or.i = or i32 %and21.i, %and22.i
  %20 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write32.i.i, align 4
  tail call void %23(ptr noundef %rtwdev, i32 noundef %1, i32 noundef %or.i) #8
  %24 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i75 = getelementptr inbounds %struct.rtw_hci_ops, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %read32.i.i75 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read32.i.i75, align 4
  %call.i.i76 = tail call i32 %27(ptr noundef %rtwdev, i32 noundef %1) #8
  %and21.i77 = and i32 %call.i.i76, -61441
  %sub.i = shl nuw nsw i32 %7, 12
  %conv48 = and i32 %sub.i, 61440
  %28 = or i32 %conv48, %and21.i77
  %or.i80 = xor i32 %28, 61440
  %29 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i81 = getelementptr inbounds %struct.rtw_hci_ops, ptr %30, i32 0, i32 16
  %31 = ptrtoint ptr %write32.i.i81 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write32.i.i81, align 4
  tail call void %32(ptr noundef %rtwdev, i32 noundef %1, i32 noundef %or.i80) #8
  %33 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i87 = getelementptr inbounds %struct.rtw_hci_ops, ptr %34, i32 0, i32 13
  %35 = ptrtoint ptr %read32.i.i87 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read32.i.i87, align 4
  %call.i.i88 = tail call i32 %36(ptr noundef %rtwdev, i32 noundef %1) #8
  %and21.i89 = and i32 %call.i.i88, -3841
  %sub.i69 = shl nuw nsw i32 %6, 8
  %conv49 = and i32 %sub.i69, 3840
  %37 = or i32 %conv49, %and21.i89
  %or.i92 = xor i32 %37, 3840
  %38 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i93 = getelementptr inbounds %struct.rtw_hci_ops, ptr %39, i32 0, i32 16
  %40 = ptrtoint ptr %write32.i.i93 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write32.i.i93, align 4
  tail call void %41(ptr noundef %rtwdev, i32 noundef %1, i32 noundef %or.i92) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  %conv.i = select i1 %tobool.not.i, i8 20, i8 9
  %mul.i = mul i8 %conv.i, %9
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp.i = icmp eq i8 %13, 2
  %conv4.i = select i1 %cmp.i, i8 16, i8 10
  %add.i = add i8 %mul.i, %conv4.i
  %conv50 = zext i8 %add.i to i32
  %42 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i99 = getelementptr inbounds %struct.rtw_hci_ops, ptr %43, i32 0, i32 13
  %44 = ptrtoint ptr %read32.i.i99 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read32.i.i99, align 4
  %call.i.i100 = tail call i32 %45(ptr noundef %rtwdev, i32 noundef %1) #8
  %and21.i101 = and i32 %call.i.i100, -256
  %or.i103 = or i32 %and21.i101, %conv50
  %46 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i104 = getelementptr inbounds %struct.rtw_hci_ops, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %write32.i.i104 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write32.i.i104, align 4
  tail call void %49(ptr noundef %rtwdev, i32 noundef %1, i32 noundef %or.i103) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rtw_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_sec_get_free_cam(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_sec_write_cam(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_sec_clear_cam(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_get_lps_deep_mode(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_mac_flush_queues(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_hw_scan_start(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_hw_scan_offload(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_core_scan_start(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_core_scan_complete(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_sta_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_sta_remove(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_stations_atomic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_ra_mask_info_update_iter(ptr nocapture noundef readonly %data, ptr noundef %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %vif = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif, align 4
  %vif1 = getelementptr inbounds %struct.rtw_iter_bitrate_mask_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %vif1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vif1, align 4
  %cmp.not = icmp eq ptr %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mask = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mask, align 4
  tail call void @kfree(ptr noundef %5) #8
  %mask2 = getelementptr inbounds %struct.rtw_iter_bitrate_mask_data, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %mask2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mask2, align 4
  %call = tail call ptr @kmemdup(ptr noundef %7, i32 noundef 360, i32 noundef 2592) #8
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %mask, align 4
  %tobool.not = icmp eq ptr %call, null
  %use_cfg_mask = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6
  br i1 %tobool.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %use_cfg_mask to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %use_cfg_mask, align 8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %use_cfg_mask to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %use_cfg_mask, align 8
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  tail call void @rtw_update_sta_info(ptr noundef %12, ptr noundef %drv_priv) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_update_sta_info(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_chip_prepare_tx(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_set_sar_specs(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !23, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !44, !45, !47, !49, !50, !51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @rtw_ops, !1, !"rtw_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtw88/mac80211.c", i32 850, i32 28}
!2 = !{ptr @__ksymtab_rtw_ops, !3, !"__ksymtab_rtw_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtw88/mac80211.c", i32 886, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtw88/mac80211.c", i32 761, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @rtw_ops_suspend._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @rtw_ops_suspend._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtw88/mac80211.c", i32 775, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @rtw_ops_resume._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @rtw_ops_resume._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/realtek/rtw88/mac80211.c", i32 208, i32 2}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @rtw_ops_add_interface._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @rtw_ops_add_interface._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @rtw_vif_port, !24, !"rtw_vif_port", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/realtek/rtw88/mac80211.c", i32 109, i32 34}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/realtek/rtw88/mac80211.c", i32 245, i32 2}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rtw_ops_change_interface._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @rtw_ops_change_interface._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtw88/mac80211.c", i32 219, i32 2}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @rtw_ops_remove_interface._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @rtw_ops_remove_interface._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/realtek/rtw88/mac80211.c", i32 83, i32 4}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @rtw_ops_config._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @rtw_ops_config._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @ac_to_edca_param, !41, !"ac_to_edca_param", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/realtek/rtw88/mac80211.c", i32 305, i32 18}
!42 = distinct !{null, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/realtek/rtw88/hci.h", i32 236, i32 2}
!44 = distinct !{null, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/realtek/rtw88/mac80211.c", i32 295, i32 2}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/realtek/rtw88/mac80211.c", i32 817, i32 3}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @rtw_ops_hw_scan._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @rtw_ops_hw_scan._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i8 0, i8 2}
!62 = !{i32 0, i32 33}
