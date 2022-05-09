; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtw88/wow.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtw88/wow.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtw_fw_key_type_iter_data = type { ptr, i8, i8 }
%struct.rtw_fw_media_status_iter_data = type { ptr, i8 }
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
%struct.cfg80211_wowlan = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, ptr }
%struct.cfg80211_sched_scan_request = type { i64, ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, [6 x i8], [6 x i8], i8, i8, %struct.cfg80211_bss_select_adjust, ptr, ptr, i32, i8, %struct.callback_head, i32, i8, %struct.list_head, [0 x ptr] }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
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
%struct.rtw_vif = type { i32, i16, [6 x i8], [6 x i8], i8, i8, %struct.list_head, [4 x %struct.ieee80211_tx_queue_params], ptr, ptr, ptr, %struct.rtw_traffic_stats, %struct.rtw_bfee }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.rtw_bfee = type { i32, i16, i8, [6 x i8], i8, i8, i16 }
%struct.cfg80211_pkt_pattern = type { ptr, ptr, i32, i32 }
%struct.rtw_hci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cfg80211_wowlan_nd_info = type { i32, [0 x ptr] }
%struct.cfg80211_wowlan_wakeup = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr }
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
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }

@rtw_wow_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 856, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to set wakeup event\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtw_wow_suspend\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireless/realtek/rtw88/wow.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtw_wow_suspend._entry_ptr = internal global ptr @rtw_wow_suspend._entry, section ".printk_index", align 4
@rtw_wow_suspend._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 862, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to leave ps from normal mode\0A\00", [59 x i8] zeroinitializer }, align 32
@rtw_wow_suspend._entry_ptr.7 = internal global ptr @rtw_wow_suspend._entry.5, section ".printk_index", align 4
@rtw_wow_suspend._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 868, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to enable wow\0A\00", [42 x i8] zeroinitializer }, align 32
@rtw_wow_suspend._entry_ptr.10 = internal global ptr @rtw_wow_suspend._entry.8, section ".printk_index", align 4
@rtw_wow_suspend._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 875, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enter ps for wow\0A\00", [36 x i8] zeroinitializer }, align 32
@rtw_wow_suspend._entry_ptr.13 = internal global ptr @rtw_wow_suspend._entry.11, section ".printk_index", align 4
@rtw_wow_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 887, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wow is not enabled\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtw_wow_resume\00", [17 x i8] zeroinitializer }, align 32
@rtw_wow_resume._entry_ptr = internal global ptr @rtw_wow_resume._entry, section ".printk_index", align 4
@rtw_wow_resume._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 894, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to leave ps from wowlan mode\0A\00", [59 x i8] zeroinitializer }, align 32
@rtw_wow_resume._entry_ptr.18 = internal global ptr @rtw_wow_resume._entry.16, section ".printk_index", align 4
@rtw_wow_resume._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 902, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to disable wow\0A\00", [41 x i8] zeroinitializer }, align 32
@rtw_wow_resume._entry_ptr.21 = internal global ptr @rtw_wow_resume._entry.19, section ".printk_index", align 4
@rtw_wow_resume._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.2, i32 908, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to restore ps to normal mode\0A\00", [59 x i8] zeroinitializer }, align 32
@rtw_wow_resume._entry_ptr.24 = internal global ptr @rtw_wow_resume._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"WOW: net-detect is enabled\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"WOW: net-detect is disabled\0A\00", [35 x i8] zeroinitializer }, align 32
@rtw_wow_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 690, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to swap wow fw\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtw_wow_enable\00", [17 x i8] zeroinitializer }, align 32
@rtw_wow_enable._entry_ptr = internal global ptr @rtw_wow_enable._entry, section ".printk_index", align 4
@rtw_wow_enable._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 698, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to download wowlan rsvd page\0A\00", [59 x i8] zeroinitializer }, align 32
@rtw_wow_enable._entry_ptr.31 = internal global ptr @rtw_wow_enable._entry.29, section ".printk_index", align 4
@rtw_wow_enable._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 704, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to start wow\0A\00", [43 x i8] zeroinitializer }, align 32
@rtw_wow_enable._entry_ptr.34 = internal global ptr @rtw_wow_enable._entry.32, section ".printk_index", align 4
@rtw_wow_bb_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 281, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Wrong status of MGQ_CPU empty!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtw_wow_bb_stop\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rtw_wow_bb_stop._entry_ptr = internal global ptr @rtw_wow_bb_stop._entry, section ".printk_index", align 4
@rtw_wow_rx_dma_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 304, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to stop rx dma\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtw_wow_rx_dma_stop\00", [44 x i8] zeroinitializer }, align 32
@rtw_wow_rx_dma_stop._entry_ptr = internal global ptr @rtw_wow_rx_dma_stop._entry, section ".printk_index", align 4
@rtw_wow_swap_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 518, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unsupported firmware type to swap\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtw_wow_swap_fw\00", [16 x i8] zeroinitializer }, align 32
@rtw_wow_swap_fw._entry_ptr = internal global ptr @rtw_wow_swap_fw._entry, section ".printk_index", align 4
@rtw_wow_pattern_write_cam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 73, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to write pattern cam\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtw_wow_pattern_write_cam\00", [38 x i8] zeroinitializer }, align 32
@rtw_wow_pattern_write_cam._entry_ptr = internal global ptr @rtw_wow_pattern_write_cam._entry, section ".printk_index", align 4
@rtw_wow_fw_security_type_iter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 375, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unsupported key type for wowlan mode: %#x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rtw_wow_fw_security_type_iter\00", [34 x i8] zeroinitializer }, align 32
@rtw_wow_fw_security_type_iter._entry_ptr = internal global ptr @rtw_wow_fw_security_type_iter._entry, section ".printk_index", align 4
@rtw_wow_check_fw_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 341, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to check wow status %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtw_wow_check_fw_status\00", [40 x i8] zeroinitializer }, align 32
@rtw_wow_check_fw_status._entry_ptr = internal global ptr @rtw_wow_check_fw_status._entry, section ".printk_index", align 4
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@rtw_wow_avoid_reset_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 450, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unsupported hci type to disable reset MAC\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtw_wow_avoid_reset_mac\00", [40 x i8] zeroinitializer }, align 32
@rtw_wow_avoid_reset_mac._entry_ptr = internal global ptr @rtw_wow_avoid_reset_mac._entry, section ".printk_index", align 4
@__const.rtw_wow_show_wakeup_reason.wakeup = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, ptr, ptr } { i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 -1, i32 0, i32 0, ptr null, ptr null }, align 4
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WOW: Rx deauth\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WOW: AP is off\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"WOW: Rx magic packet\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WOW: Rx gtk rekey\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"WOW: Rx pattern match packet\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Rx NLO\0A\00", [24 x i8] zeroinitializer }, align 32
@rtw_wow_show_wakeup_reason._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 56, ptr @.str.37, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unknown wakeup reason %x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rtw_wow_show_wakeup_reason\00", [37 x i8] zeroinitializer }, align 32
@rtw_wow_show_wakeup_reason._entry_ptr = internal global ptr @rtw_wow_show_wakeup_reason._entry, section ".printk_index", align 4
@rtw_wow_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 759, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to stop wow\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtw_wow_disable\00", [16 x i8] zeroinitializer }, align 32
@rtw_wow_disable._entry_ptr = internal global ptr @rtw_wow_disable._entry, section ".printk_index", align 4
@rtw_wow_disable._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.2, i32 765, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to swap normal fw\0A\00", [38 x i8] zeroinitializer }, align 32
@rtw_wow_disable._entry_ptr.64 = internal global ptr @rtw_wow_disable._entry.62, section ".printk_index", align 4
@rtw_wow_disable._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.61, ptr @.str.2, i32 771, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to download normal rsvd page\0A\00", [59 x i8] zeroinitializer }, align 32
@rtw_wow_disable._entry_ptr.67 = internal global ptr @rtw_wow_disable._entry.65, section ".printk_index", align 4
@rtw_wow_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 724, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to setup hci\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtw_wow_stop\00", [19 x i8] zeroinitializer }, align 32
@rtw_wow_stop._entry_ptr = internal global ptr @rtw_wow_stop._entry, section ".printk_index", align 4
@rtw_wow_stop._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.2, i32 730, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to start hci\0A\00", [43 x i8] zeroinitializer }, align 32
@rtw_wow_stop._entry_ptr.72 = internal global ptr @rtw_wow_stop._entry.70, section ".printk_index", align 4
@rtw_wow_stop._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.69, ptr @.str.2, i32 736, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to stop wowlan fw\0A\00", [38 x i8] zeroinitializer }, align 32
@rtw_wow_stop._entry_ptr.75 = internal global ptr @rtw_wow_stop._entry.73, section ".printk_index", align 4
@rtw_wow_pattern_clear_cam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 250, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to clean pattern cam\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtw_wow_pattern_clear_cam\00", [38 x i8] zeroinitializer }, align 32
@rtw_wow_pattern_clear_cam._entry_ptr = internal global ptr @rtw_wow_pattern_clear_cam._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.81 = internal global [8 x i64] [i64 6, i64 8, i64 2, i64 8, i64 16, i64 33, i64 35, i64 85]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.84 = internal global [6 x i64] [i64 4, i64 32, i64 1027073, i64 1027074, i64 1027076, i64 1027077]
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 856, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 862, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 868, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 875, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 887, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 894, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 902, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 908, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 565, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 573, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 690, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 698, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 704, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 281, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 304, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 518, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 73, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 374, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 340, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 450, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 26, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 30, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 34, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 38, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 45, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 53, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 56, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 759, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 765, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 771, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 724, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 730, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 736, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.322 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.323 = private constant [44 x i8] c"../drivers/net/wireless/realtek/rtw88/wow.c\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.323, i32 250, i32 3 }
@llvm.compiler.used = appending global [106 x ptr] [ptr @rtw_wow_avoid_reset_mac._entry, ptr @rtw_wow_avoid_reset_mac._entry_ptr, ptr @rtw_wow_bb_stop._entry, ptr @rtw_wow_bb_stop._entry_ptr, ptr @rtw_wow_check_fw_status._entry, ptr @rtw_wow_check_fw_status._entry_ptr, ptr @rtw_wow_disable._entry, ptr @rtw_wow_disable._entry.62, ptr @rtw_wow_disable._entry.65, ptr @rtw_wow_disable._entry_ptr, ptr @rtw_wow_disable._entry_ptr.64, ptr @rtw_wow_disable._entry_ptr.67, ptr @rtw_wow_enable._entry, ptr @rtw_wow_enable._entry.29, ptr @rtw_wow_enable._entry.32, ptr @rtw_wow_enable._entry_ptr, ptr @rtw_wow_enable._entry_ptr.31, ptr @rtw_wow_enable._entry_ptr.34, ptr @rtw_wow_fw_security_type_iter._entry, ptr @rtw_wow_fw_security_type_iter._entry_ptr, ptr @rtw_wow_pattern_clear_cam._entry, ptr @rtw_wow_pattern_clear_cam._entry_ptr, ptr @rtw_wow_pattern_write_cam._entry, ptr @rtw_wow_pattern_write_cam._entry_ptr, ptr @rtw_wow_resume._entry, ptr @rtw_wow_resume._entry.16, ptr @rtw_wow_resume._entry.19, ptr @rtw_wow_resume._entry.22, ptr @rtw_wow_resume._entry_ptr, ptr @rtw_wow_resume._entry_ptr.18, ptr @rtw_wow_resume._entry_ptr.21, ptr @rtw_wow_resume._entry_ptr.24, ptr @rtw_wow_rx_dma_stop._entry, ptr @rtw_wow_rx_dma_stop._entry_ptr, ptr @rtw_wow_show_wakeup_reason._entry, ptr @rtw_wow_show_wakeup_reason._entry_ptr, ptr @rtw_wow_stop._entry, ptr @rtw_wow_stop._entry.70, ptr @rtw_wow_stop._entry.73, ptr @rtw_wow_stop._entry_ptr, ptr @rtw_wow_stop._entry_ptr.72, ptr @rtw_wow_stop._entry_ptr.75, ptr @rtw_wow_suspend._entry, ptr @rtw_wow_suspend._entry.11, ptr @rtw_wow_suspend._entry.5, ptr @rtw_wow_suspend._entry.8, ptr @rtw_wow_suspend._entry_ptr, ptr @rtw_wow_suspend._entry_ptr.10, ptr @rtw_wow_suspend._entry_ptr.13, ptr @rtw_wow_suspend._entry_ptr.7, ptr @rtw_wow_swap_fw._entry, ptr @rtw_wow_swap_fw._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.74, ptr @.str.76, ptr @.str.77], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_wow_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_wow_suspend._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_wow_suspend._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_wow_suspend._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_wow_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_wow_resume._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_wow_resume._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_wow_resume._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_wow_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_wow_enable._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_wow_enable._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_wow_bb_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_wow_rx_dma_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_wow_swap_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_wow_pattern_write_cam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_wow_fw_security_type_iter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_wow_check_fw_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_wow_avoid_reset_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_wow_show_wakeup_reason._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_wow_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_wow_disable._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_wow_disable._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_wow_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_wow_stop._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_wow_stop._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_wow_pattern_clear_cam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_wow_suspend(ptr noundef %rtwdev, ptr nocapture noundef readonly %wowlan) local_unnamed_addr #0 align 64 {
entry:
  %data.i.i.i.i = alloca %struct.rtw_fw_key_type_iter_data, align 8
  %data.i.i.i = alloca %struct.rtw_fw_media_status_iter_data, align 8
  %mask_hw.i.i = alloca [16 x i8], align 1
  %content.i.i = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wow.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42
  %patterns.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42, i32 4
  %disconnect.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 1
  %0 = ptrtoint ptr %disconnect.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %disconnect.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42, i32 1
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags.i) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %magic_pkt.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 2
  %2 = ptrtoint ptr %magic_pkt.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %magic_pkt.i, align 2, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not.i = icmp eq i8 %3, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then3.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags4.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42, i32 1
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags4.i) #7
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end.i.if.end6.i_crit_edge
  %gtk_rekey_failure.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 3
  %4 = ptrtoint ptr %gtk_rekey_failure.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %gtk_rekey_failure.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not.i = icmp eq i8 %5, 0
  br i1 %tobool7.not.i, label %if.end6.i.if.end11.i_crit_edge, label %if.then8.i

if.end6.i.if.end11.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags9.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42, i32 1
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags9.i) #7
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.end6.i.if.end11.i_crit_edge
  %nd_config.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 10
  %6 = ptrtoint ptr %nd_config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nd_config.i, align 4
  %tobool12.not.i = icmp eq ptr %7, null
  br i1 %tobool12.not.i, label %if.end11.i.if.end15.i_crit_edge, label %if.then13.i

if.end11.i.if.end15.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then13.i:                                      ; preds = %if.end11.i
  %pno_req1.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42, i32 6
  %n_match_sets.i.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %n_match_sets.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_match_sets.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %if.then13.i.rtw_wow_check_pno.exit.i_crit_edge, label %lor.lhs.false.i.i

if.then13.i.rtw_wow_check_pno.exit.i_crit_edge:   ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_wow_check_pno.exit.i

lor.lhs.false.i.i:                                ; preds = %if.then13.i
  %n_channels.i.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %n_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_channels.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.rtw_wow_check_pno.exit.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.rtw_wow_check_pno.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_wow_check_pno.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %match_set_cnt.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42, i32 6, i32 1
  %12 = ptrtoint ptr %match_set_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %match_set_cnt.i.i, align 4
  %mul.i.i = mul i32 %9, 68
  %match_sets.i.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %7, i32 0, i32 8
  %13 = ptrtoint ptr %match_sets.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %match_sets.i.i, align 4
  %call.i.i = tail call ptr @kmemdup(ptr noundef %14, i32 noundef %mul.i.i, i32 noundef 3264) #7
  %match_sets5.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42, i32 6, i32 2
  %15 = ptrtoint ptr %match_sets5.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i, ptr %match_sets5.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool7.not.i.i, label %if.end.i.i.rtw_wow_check_pno.exit.i_crit_edge, label %if.end9.i.i

if.end.i.i.rtw_wow_check_pno.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_wow_check_pno.exit.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  %16 = ptrtoint ptr %n_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_channels.i.i, align 8
  %conv.i.i = trunc i32 %17 to i8
  %channel_cnt.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42, i32 6, i32 3
  %18 = ptrtoint ptr %channel_cnt.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i.i, ptr %channel_cnt.i.i, align 4
  %19 = load i32, ptr %n_channels.i.i, align 8
  %mul12.i.i = mul i32 %19, 56
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul12.i.i, i32 noundef 3264) #10
  %channels.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42, i32 6, i32 4
  %20 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call9.i.i.i, ptr %channels.i.i, align 4
  %tobool15.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool15.not.i.i, label %channel_err.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.end9.i.i
  %21 = ptrtoint ptr %channel_cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %channel_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp53.not.i.i = icmp eq i8 %22, 0
  br i1 %cmp53.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.054.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %23 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %channels.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.ieee80211_channel, ptr %24, i32 %i.054.i.i
  %arrayidx.i.i = getelementptr %struct.cfg80211_sched_scan_request, ptr %7, i32 0, i32 27, i32 %i.054.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i, align 4
  %27 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %26, i32 56)
  %inc.i.i = add nuw nsw i32 %i.054.i.i, 1
  %28 = ptrtoint ptr %channel_cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %channel_cnt.i.i, align 4
  %conv19.i.i = zext i8 %29 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv19.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %scan_plan.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42, i32 6, i32 5
  %scan_plans.i.i = getelementptr inbounds %struct.cfg80211_sched_scan_request, ptr %7, i32 0, i32 12
  %30 = ptrtoint ptr %scan_plans.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %scan_plans.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %31, align 4
  %34 = ptrtoint ptr %scan_plan.i.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 %33, ptr %scan_plan.i.i, align 4
  %35 = ptrtoint ptr %pno_req1.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %pno_req1.i.i, align 4
  br label %rtw_wow_check_pno.exit.i

channel_err.i.i:                                  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %match_sets5.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %match_sets5.i.i, align 4
  tail call void @kfree(ptr noundef %37) #7
  br label %rtw_wow_check_pno.exit.i

rtw_wow_check_pno.exit.i:                         ; preds = %channel_err.i.i, %for.end.i.i, %if.end.i.i.rtw_wow_check_pno.exit.i_crit_edge, %lor.lhs.false.i.i.rtw_wow_check_pno.exit.i_crit_edge, %if.then13.i.rtw_wow_check_pno.exit.i_crit_edge
  %.str.26.sink.i.i = phi ptr [ @.str.25, %for.end.i.i ], [ @.str.26, %if.end.i.i.rtw_wow_check_pno.exit.i_crit_edge ], [ @.str.26, %if.then13.i.rtw_wow_check_pno.exit.i_crit_edge ], [ @.str.26, %lor.lhs.false.i.i.rtw_wow_check_pno.exit.i_crit_edge ], [ @.str.26, %channel_err.i.i ]
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 4096, ptr noundef nonnull %.str.26.sink.i.i) #7
  br label %if.end15.i

if.end15.i:                                       ; preds = %rtw_wow_check_pno.exit.i, %if.end11.i.if.end15.i_crit_edge
  %38 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rtwdev, align 8
  tail call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %39, i32 noundef 0, ptr noundef nonnull @rtw_wow_vif_iter, ptr noundef %rtwdev) #7
  %40 = ptrtoint ptr %wow.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wow.i, align 4
  %tobool16.not.i = icmp eq ptr %41, null
  br i1 %tobool16.not.i, label %do.end, label %if.end18.i

if.end18.i:                                       ; preds = %if.end15.i
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %41, i32 0, i32 19
  %n_patterns.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 9
  %42 = ptrtoint ptr %n_patterns.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n_patterns.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool21.not.i = icmp eq i32 %43, 0
  br i1 %tobool21.not.i, label %if.end18.i.if.end_crit_edge, label %land.lhs.true.i

if.end18.i.if.end_crit_edge:                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end18.i
  %patterns22.i = getelementptr inbounds %struct.cfg80211_wowlan, ptr %wowlan, i32 0, i32 7
  %44 = ptrtoint ptr %patterns22.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %patterns22.i, align 4
  %tobool23.not.i = icmp eq ptr %45, null
  br i1 %tobool23.not.i, label %land.lhs.true.i.if.end_crit_edge, label %if.then24.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then24.i:                                      ; preds = %land.lhs.true.i
  %conv.i = trunc i32 %43 to i8
  %pattern_cnt.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42, i32 3
  %46 = ptrtoint ptr %pattern_cnt.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv.i, ptr %pattern_cnt.i, align 1
  %47 = ptrtoint ptr %n_patterns.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %n_patterns.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp63.i = icmp sgt i32 %48, 0
  br i1 %cmp63.i, label %for.body.lr.ph.i, label %if.then24.i.if.end_crit_edge

if.then24.i.if.end_crit_edge:                     ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.then24.i
  %mac_addr3.i.i = getelementptr inbounds %struct.rtw_vif, ptr %drv_priv.i, i32 0, i32 2
  %add.ptr.i.i.i = getelementptr %struct.rtw_vif, ptr %drv_priv.i, i32 0, i32 2, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %rtw_wow_pattern_generate.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.064.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %rtw_wow_pattern_generate.exit.i.for.body.i_crit_edge ]
  %49 = ptrtoint ptr %patterns22.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %patterns22.i, align 4
  %add.ptr.i = getelementptr %struct.cfg80211_pkt_pattern, ptr %50, i32 %i.064.i
  %add.ptr29.i = getelementptr %struct.rtw_wow_pattern, ptr %patterns.i, i32 %i.064.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask_hw.i.i) #7
  %51 = call ptr @memset(ptr %mask_hw.i.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %content.i.i) #7
  %52 = call ptr @memset(ptr %content.i.i, i32 0, i32 128)
  %pattern1.i.i = getelementptr %struct.cfg80211_pkt_pattern, ptr %50, i32 %i.064.i, i32 1
  %53 = ptrtoint ptr %pattern1.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pattern1.i.i, align 4
  %pattern_len.i.i = getelementptr %struct.cfg80211_pkt_pattern, ptr %50, i32 %i.064.i, i32 2
  %55 = ptrtoint ptr %pattern_len.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pattern_len.i.i, align 4
  %57 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr.i, align 4
  %59 = ptrtoint ptr %mac_addr3.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mac_addr3.i.i, align 4
  %61 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %add.ptr.i.i.i, align 2
  %63 = call ptr @memset(ptr %add.ptr29.i, i32 0, i32 20)
  %sub.i.i = add i32 %56, 7
  %div.i.i = sdiv i32 %sub.i.i, 8
  %64 = ptrtoint ptr %54 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %54, align 2
  %add.ptr1.i5.i.i = getelementptr i8, ptr %54, i32 2
  %66 = ptrtoint ptr %add.ptr1.i5.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %add.ptr1.i5.i.i, align 2
  %and9.i.i.i = and i16 %67, %65
  %add.ptr3.i.i.i = getelementptr i8, ptr %54, i32 4
  %68 = ptrtoint ptr %add.ptr3.i.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %add.ptr3.i.i.i, align 2
  %and510.i.i.i = and i16 %and9.i.i.i, %69
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i.i.i)
  %cmp.i.i58.i = icmp eq i16 %and510.i.i.i, -1
  br i1 %cmp.i.i58.i, label %for.body.i.if.end16.i.i_crit_edge, label %if.else.i.i

for.body.i.if.end16.i.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i

if.else.i.i:                                      ; preds = %for.body.i
  %70 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %54, align 4
  %72 = and i32 %71, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.i.not.i.i = icmp eq i32 %72, 0
  br i1 %tobool.i.not.i.i, label %if.else8.i.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %type7.i.i = getelementptr %struct.rtw_wow_pattern, ptr %patterns.i, i32 %i.064.i, i32 1
  %73 = ptrtoint ptr %type7.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %type7.i.i, align 2
  br label %if.end16.i.i

if.else8.i.i:                                     ; preds = %if.else.i.i
  %xor.i.i.i = xor i32 %71, %60
  %xor37.i.i.i = xor i16 %69, %62
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i8.i.i = icmp eq i32 %or.i.i.i, 0
  %type12.i.i = getelementptr %struct.rtw_wow_pattern, ptr %patterns.i, i32 %i.064.i, i32 1
  br i1 %cmp.i8.i.i, label %if.then11.i.i, label %if.else13.i.i

if.then11.i.i:                                    ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %type12.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 2, ptr %type12.i.i, align 2
  br label %if.end16.i.i

if.else13.i.i:                                    ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %type12.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 4, ptr %type12.i.i, align 2
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.else13.i.i, %if.then11.i.i, %if.then6.i.i, %for.body.i.if.end16.i.i_crit_edge
  %conv17.i.i = and i32 %div.i.i, 255
  %sub18.i.i = add nsw i32 %conv17.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv17.i.i)
  %cmp12.i.i = icmp ugt i32 %conv17.i.i, 1
  br i1 %cmp12.i.i, label %if.end16.i.i.for.body.i60.i_crit_edge, label %if.end16.i.i.for.end.i61.i_crit_edge

if.end16.i.i.for.end.i61.i_crit_edge:             ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i61.i

if.end16.i.i.for.body.i60.i_crit_edge:            ; preds = %if.end16.i.i
  br label %for.body.i60.i

for.body.i60.i:                                   ; preds = %for.body.i60.i.for.body.i60.i_crit_edge, %if.end16.i.i.for.body.i60.i_crit_edge
  %i.013.i.i = phi i32 [ %add22.i.i, %for.body.i60.i.for.body.i60.i_crit_edge ], [ 0, %if.end16.i.i.for.body.i60.i_crit_edge ]
  %arrayidx.i59.i = getelementptr i8, ptr %58, i32 %i.013.i.i
  %76 = ptrtoint ptr %arrayidx.i59.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.i59.i, align 1
  %arrayidx21.i.i = getelementptr [16 x i8], ptr %mask_hw.i.i, i32 0, i32 %i.013.i.i
  %add22.i.i = add nuw nsw i32 %i.013.i.i, 1
  %arrayidx23.i.i = getelementptr i8, ptr %58, i32 %add22.i.i
  %78 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx23.i.i, align 1
  %or.i.i = tail call i8 @llvm.fshl.i8(i8 %79, i8 %77, i8 2) #7
  %80 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %or.i.i, ptr %arrayidx21.i.i, align 1
  %exitcond.not.i.i = icmp eq i32 %add22.i.i, %sub18.i.i
  br i1 %exitcond.not.i.i, label %for.body.i60.i.for.end.i61.i_crit_edge, label %for.body.i60.i.for.body.i60.i_crit_edge

for.body.i60.i.for.body.i60.i_crit_edge:          ; preds = %for.body.i60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i60.i

for.body.i60.i.for.end.i61.i_crit_edge:           ; preds = %for.body.i60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i61.i

for.end.i61.i:                                    ; preds = %for.body.i60.i.for.end.i61.i_crit_edge, %if.end16.i.i.for.end.i61.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 0, %if.end16.i.i.for.end.i61.i_crit_edge ], [ %sub18.i.i, %for.body.i60.i.for.end.i61.i_crit_edge ]
  %arrayidx29.i.i = getelementptr i8, ptr %58, i32 %i.0.lcssa.i.i
  %81 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx29.i.i, align 1
  %div7.i49.i.i = lshr i8 %82, 6
  %arrayidx31.i.i = getelementptr [16 x i8], ptr %mask_hw.i.i, i32 0, i32 %i.0.lcssa.i.i
  %83 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %div7.i49.i.i, ptr %arrayidx31.i.i, align 1
  %84 = ptrtoint ptr %mask_hw.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %mask_hw.i.i, align 1
  %86 = and i8 %85, -64
  store i8 %86, ptr %mask_hw.i.i, align 1
  %mask35.i.i = getelementptr %struct.rtw_wow_pattern, ptr %patterns.i, i32 %i.064.i, i32 3
  %87 = call ptr @memcpy(ptr %mask35.i.i, ptr %mask_hw.i.i, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %56)
  %cmp3914.i.i = icmp sgt i32 %56, 12
  br i1 %cmp3914.i.i, label %for.end.i61.i.for.body41.i.i_crit_edge, label %for.end.i61.i.rtw_wow_pattern_generate.exit.i_crit_edge

for.end.i61.i.rtw_wow_pattern_generate.exit.i_crit_edge: ; preds = %for.end.i61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_wow_pattern_generate.exit.i

for.end.i61.i.for.body41.i.i_crit_edge:           ; preds = %for.end.i61.i
  br label %for.body41.i.i

for.body41.i.i:                                   ; preds = %for.inc51.i.i.for.body41.i.i_crit_edge, %for.end.i61.i.for.body41.i.i_crit_edge
  %i.116.i.i = phi i32 [ %inc52.i.i, %for.inc51.i.i.for.body41.i.i_crit_edge ], [ 12, %for.end.i61.i.for.body41.i.i_crit_edge ]
  %count.015.i.i = phi i16 [ %count.1.i.i, %for.inc51.i.i.for.body41.i.i_crit_edge ], [ 0, %for.end.i61.i.for.body41.i.i_crit_edge ]
  %div4210.i.i = lshr i32 %i.116.i.i, 3
  %arrayidx43.i.i = getelementptr i8, ptr %58, i32 %div4210.i.i
  %88 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx43.i.i, align 1
  %conv44.i.i = zext i8 %89 to i32
  %rem1.i.i = and i32 %i.116.i.i, 7
  %90 = shl nuw nsw i32 1, %rem1.i.i
  %91 = and i32 %90, %conv44.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.i62.i = icmp eq i32 %91, 0
  br i1 %tobool.not.i62.i, label %for.body41.i.i.for.inc51.i.i_crit_edge, label %if.then46.i.i

for.body41.i.i.for.inc51.i.i_crit_edge:           ; preds = %for.body41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc51.i.i

if.then46.i.i:                                    ; preds = %for.body41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx47.i.i = getelementptr i8, ptr %54, i32 %i.116.i.i
  %92 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx47.i.i, align 1
  %idxprom.i.i = zext i16 %count.015.i.i to i32
  %arrayidx48.i.i = getelementptr [128 x i8], ptr %content.i.i, i32 0, i32 %idxprom.i.i
  %94 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %arrayidx48.i.i, align 1
  %inc49.i.i = add i16 %count.015.i.i, 1
  br label %for.inc51.i.i

for.inc51.i.i:                                    ; preds = %if.then46.i.i, %for.body41.i.i.for.inc51.i.i_crit_edge
  %count.1.i.i = phi i16 [ %inc49.i.i, %if.then46.i.i ], [ %count.015.i.i, %for.body41.i.i.for.inc51.i.i_crit_edge ]
  %inc52.i.i = add nuw nsw i32 %i.116.i.i, 1
  %exitcond19.not.i.i = icmp eq i32 %inc52.i.i, %56
  br i1 %exitcond19.not.i.i, label %for.end53.i.i, label %for.inc51.i.i.for.body41.i.i_crit_edge

for.inc51.i.i.for.body41.i.i_crit_edge:           ; preds = %for.inc51.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body41.i.i

for.end53.i.i:                                    ; preds = %for.inc51.i.i
  %conv55.i.i = zext i16 %count.1.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %count.1.i.i)
  %cmp5.i.not.i.i = icmp eq i16 %count.1.i.i, 0
  br i1 %cmp5.i.not.i.i, label %for.end53.i.i.rtw_wow_pattern_generate.exit.i_crit_edge, label %for.end53.i.i.for.body.i.i.i_crit_edge

for.end53.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.end53.i.i
  br label %for.body.i.i.i

for.end53.i.i.rtw_wow_pattern_generate.exit.i_crit_edge: ; preds = %for.end53.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_wow_pattern_generate.exit.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.end53.i.i.for.body.i.i.i_crit_edge
  %i.07.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.end53.i.i.for.body.i.i.i_crit_edge ]
  %crc.06.i.i.i = phi i16 [ %crc_result.2.7.i.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ -1, %for.end53.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr i8, ptr %content.i.i, i32 %i.07.i.i.i
  %95 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i.i.i = zext i8 %96 to i32
  %conv.i.i.i.i = zext i16 %crc.06.i.i.i to i32
  %and.lobit.i.i.i.i = lshr i16 %crc.06.i.i.i, 15
  %97 = zext i16 %and.lobit.i.i.i.i to i32
  %98 = and i32 %conv2.i.i.i.i, 1
  %xor.i.i.i.i = xor i32 %98, %97
  %shl11.i.i.i.i = shl i16 %crc.06.i.i.i, 1
  %99 = trunc i32 %xor.i.i.i.i to i16
  %and22.i.i.i.i = lshr i32 %conv.i.i.i.i, 11
  %and22.lobit.i.i.i.i = and i32 %and22.i.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and22.lobit.i.i.i.i, i32 %xor.i.i.i.i)
  %cmp29.i.i.i.i = icmp eq i32 %and22.lobit.i.i.i.i, %xor.i.i.i.i
  %shl11.masked.i.i.i.i = and i16 %shl11.i.i.i.i, -4130
  %100 = or i16 %shl11.masked.i.i.i.i, %99
  %masksel.i.i.i.i = select i1 %cmp29.i.i.i.i, i16 0, i16 4096
  %and41.i.i.i.i = lshr i32 %conv.i.i.i.i, 4
  %and41.lobit.i.i.i.i = and i32 %and41.i.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and41.lobit.i.i.i.i, i32 %xor.i.i.i.i)
  %cmp48.i.i.i.i = icmp eq i32 %and41.lobit.i.i.i.i, %xor.i.i.i.i
  %101 = or i16 %100, %masksel.i.i.i.i
  %masksel73.i.i.i.i = select i1 %cmp48.i.i.i.i, i16 0, i16 32
  %crc_result.2.i.i.i.i = or i16 %101, %masksel73.i.i.i.i
  %conv.1.i.i.i.i = zext i16 %crc_result.2.i.i.i.i to i32
  %and.lobit.1.i.i.i.i = lshr i16 %shl11.i.i.i.i, 15
  %102 = zext i16 %and.lobit.1.i.i.i.i to i32
  %103 = lshr i32 %conv2.i.i.i.i, 1
  %104 = and i32 %103, 1
  %xor.1.i.i.i.i = xor i32 %104, %102
  %shl11.1.i.i.i.i = shl i16 %crc_result.2.i.i.i.i, 1
  %105 = trunc i32 %xor.1.i.i.i.i to i16
  %and22.1.i.i.i.i = lshr i32 %conv.1.i.i.i.i, 11
  %and22.lobit.1.i.i.i.i = and i32 %and22.1.i.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and22.lobit.1.i.i.i.i, i32 %xor.1.i.i.i.i)
  %cmp29.1.i.i.i.i = icmp eq i32 %and22.lobit.1.i.i.i.i, %xor.1.i.i.i.i
  %shl11.masked.1.i.i.i.i = and i16 %shl11.1.i.i.i.i, -4130
  %106 = or i16 %shl11.masked.1.i.i.i.i, %105
  %masksel.1.i.i.i.i = select i1 %cmp29.1.i.i.i.i, i16 0, i16 4096
  %and41.1.i.i.i.i = lshr i32 %conv.1.i.i.i.i, 4
  %and41.lobit.1.i.i.i.i = and i32 %and41.1.i.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and41.lobit.1.i.i.i.i, i32 %xor.1.i.i.i.i)
  %cmp48.1.i.i.i.i = icmp eq i32 %and41.lobit.1.i.i.i.i, %xor.1.i.i.i.i
  %107 = or i16 %106, %masksel.1.i.i.i.i
  %masksel73.1.i.i.i.i = select i1 %cmp48.1.i.i.i.i, i16 0, i16 32
  %crc_result.2.1.i.i.i.i = or i16 %107, %masksel73.1.i.i.i.i
  %conv.2.i.i.i.i = zext i16 %crc_result.2.1.i.i.i.i to i32
  %and.lobit.2.i.i.i.i = lshr i16 %shl11.1.i.i.i.i, 15
  %108 = zext i16 %and.lobit.2.i.i.i.i to i32
  %109 = lshr i32 %conv2.i.i.i.i, 2
  %110 = and i32 %109, 1
  %xor.2.i.i.i.i = xor i32 %110, %108
  %shl11.2.i.i.i.i = shl i16 %crc_result.2.1.i.i.i.i, 1
  %111 = trunc i32 %xor.2.i.i.i.i to i16
  %and22.2.i.i.i.i = lshr i32 %conv.2.i.i.i.i, 11
  %and22.lobit.2.i.i.i.i = and i32 %and22.2.i.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and22.lobit.2.i.i.i.i, i32 %xor.2.i.i.i.i)
  %cmp29.2.i.i.i.i = icmp eq i32 %and22.lobit.2.i.i.i.i, %xor.2.i.i.i.i
  %shl11.masked.2.i.i.i.i = and i16 %shl11.2.i.i.i.i, -4130
  %112 = or i16 %shl11.masked.2.i.i.i.i, %111
  %masksel.2.i.i.i.i = select i1 %cmp29.2.i.i.i.i, i16 0, i16 4096
  %and41.2.i.i.i.i = lshr i32 %conv.2.i.i.i.i, 4
  %and41.lobit.2.i.i.i.i = and i32 %and41.2.i.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and41.lobit.2.i.i.i.i, i32 %xor.2.i.i.i.i)
  %cmp48.2.i.i.i.i = icmp eq i32 %and41.lobit.2.i.i.i.i, %xor.2.i.i.i.i
  %113 = or i16 %112, %masksel.2.i.i.i.i
  %masksel73.2.i.i.i.i = select i1 %cmp48.2.i.i.i.i, i16 0, i16 32
  %crc_result.2.2.i.i.i.i = or i16 %113, %masksel73.2.i.i.i.i
  %conv.3.i.i.i.i = zext i16 %crc_result.2.2.i.i.i.i to i32
  %and.lobit.3.i.i.i.i = lshr i16 %shl11.2.i.i.i.i, 15
  %114 = zext i16 %and.lobit.3.i.i.i.i to i32
  %115 = lshr i32 %conv2.i.i.i.i, 3
  %116 = and i32 %115, 1
  %xor.3.i.i.i.i = xor i32 %116, %114
  %shl11.3.i.i.i.i = shl i16 %crc_result.2.2.i.i.i.i, 1
  %117 = trunc i32 %xor.3.i.i.i.i to i16
  %and22.3.i.i.i.i = lshr i32 %conv.3.i.i.i.i, 11
  %and22.lobit.3.i.i.i.i = and i32 %and22.3.i.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and22.lobit.3.i.i.i.i, i32 %xor.3.i.i.i.i)
  %cmp29.3.i.i.i.i = icmp eq i32 %and22.lobit.3.i.i.i.i, %xor.3.i.i.i.i
  %shl11.masked.3.i.i.i.i = and i16 %shl11.3.i.i.i.i, -4130
  %118 = or i16 %shl11.masked.3.i.i.i.i, %117
  %masksel.3.i.i.i.i = select i1 %cmp29.3.i.i.i.i, i16 0, i16 4096
  %and41.3.i.i.i.i = lshr i32 %conv.3.i.i.i.i, 4
  %and41.lobit.3.i.i.i.i = and i32 %and41.3.i.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and41.lobit.3.i.i.i.i, i32 %xor.3.i.i.i.i)
  %cmp48.3.i.i.i.i = icmp eq i32 %and41.lobit.3.i.i.i.i, %xor.3.i.i.i.i
  %119 = or i16 %118, %masksel.3.i.i.i.i
  %masksel73.3.i.i.i.i = select i1 %cmp48.3.i.i.i.i, i16 0, i16 32
  %crc_result.2.3.i.i.i.i = or i16 %119, %masksel73.3.i.i.i.i
  %conv.4.i.i.i.i = zext i16 %crc_result.2.3.i.i.i.i to i32
  %and.lobit.4.i.i.i.i = lshr i16 %shl11.3.i.i.i.i, 15
  %120 = zext i16 %and.lobit.4.i.i.i.i to i32
  %121 = lshr i32 %conv2.i.i.i.i, 4
  %122 = and i32 %121, 1
  %xor.4.i.i.i.i = xor i32 %122, %120
  %shl11.4.i.i.i.i = shl i16 %crc_result.2.3.i.i.i.i, 1
  %123 = trunc i32 %xor.4.i.i.i.i to i16
  %and22.4.i.i.i.i = lshr i32 %conv.4.i.i.i.i, 11
  %and22.lobit.4.i.i.i.i = and i32 %and22.4.i.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and22.lobit.4.i.i.i.i, i32 %xor.4.i.i.i.i)
  %cmp29.4.i.i.i.i = icmp eq i32 %and22.lobit.4.i.i.i.i, %xor.4.i.i.i.i
  %shl11.masked.4.i.i.i.i = and i16 %shl11.4.i.i.i.i, -4130
  %124 = or i16 %shl11.masked.4.i.i.i.i, %123
  %masksel.4.i.i.i.i = select i1 %cmp29.4.i.i.i.i, i16 0, i16 4096
  %and41.4.i.i.i.i = lshr i32 %conv.4.i.i.i.i, 4
  %and41.lobit.4.i.i.i.i = and i32 %and41.4.i.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and41.lobit.4.i.i.i.i, i32 %xor.4.i.i.i.i)
  %cmp48.4.i.i.i.i = icmp eq i32 %and41.lobit.4.i.i.i.i, %xor.4.i.i.i.i
  %125 = or i16 %124, %masksel.4.i.i.i.i
  %masksel73.4.i.i.i.i = select i1 %cmp48.4.i.i.i.i, i16 0, i16 32
  %crc_result.2.4.i.i.i.i = or i16 %125, %masksel73.4.i.i.i.i
  %conv.5.i.i.i.i = zext i16 %crc_result.2.4.i.i.i.i to i32
  %and.lobit.5.i.i.i.i = lshr i16 %shl11.4.i.i.i.i, 15
  %126 = zext i16 %and.lobit.5.i.i.i.i to i32
  %127 = lshr i32 %conv2.i.i.i.i, 5
  %128 = and i32 %127, 1
  %xor.5.i.i.i.i = xor i32 %128, %126
  %shl11.5.i.i.i.i = shl i16 %crc_result.2.4.i.i.i.i, 1
  %129 = trunc i32 %xor.5.i.i.i.i to i16
  %and22.5.i.i.i.i = lshr i32 %conv.5.i.i.i.i, 11
  %and22.lobit.5.i.i.i.i = and i32 %and22.5.i.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and22.lobit.5.i.i.i.i, i32 %xor.5.i.i.i.i)
  %cmp29.5.i.i.i.i = icmp eq i32 %and22.lobit.5.i.i.i.i, %xor.5.i.i.i.i
  %shl11.masked.5.i.i.i.i = and i16 %shl11.5.i.i.i.i, -4130
  %130 = or i16 %shl11.masked.5.i.i.i.i, %129
  %masksel.5.i.i.i.i = select i1 %cmp29.5.i.i.i.i, i16 0, i16 4096
  %and41.5.i.i.i.i = lshr i32 %conv.5.i.i.i.i, 4
  %and41.lobit.5.i.i.i.i = and i32 %and41.5.i.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and41.lobit.5.i.i.i.i, i32 %xor.5.i.i.i.i)
  %cmp48.5.i.i.i.i = icmp eq i32 %and41.lobit.5.i.i.i.i, %xor.5.i.i.i.i
  %131 = or i16 %130, %masksel.5.i.i.i.i
  %masksel73.5.i.i.i.i = select i1 %cmp48.5.i.i.i.i, i16 0, i16 32
  %crc_result.2.5.i.i.i.i = or i16 %131, %masksel73.5.i.i.i.i
  %conv.6.i.i.i.i = zext i16 %crc_result.2.5.i.i.i.i to i32
  %and.lobit.6.i.i.i.i = lshr i16 %shl11.5.i.i.i.i, 15
  %132 = zext i16 %and.lobit.6.i.i.i.i to i32
  %133 = lshr i32 %conv2.i.i.i.i, 6
  %134 = and i32 %133, 1
  %xor.6.i.i.i.i = xor i32 %134, %132
  %shl11.6.i.i.i.i = shl i16 %crc_result.2.5.i.i.i.i, 1
  %135 = trunc i32 %xor.6.i.i.i.i to i16
  %and22.6.i.i.i.i = lshr i32 %conv.6.i.i.i.i, 11
  %and22.lobit.6.i.i.i.i = and i32 %and22.6.i.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and22.lobit.6.i.i.i.i, i32 %xor.6.i.i.i.i)
  %cmp29.6.i.i.i.i = icmp eq i32 %and22.lobit.6.i.i.i.i, %xor.6.i.i.i.i
  %shl11.masked.6.i.i.i.i = and i16 %shl11.6.i.i.i.i, -4130
  %136 = or i16 %shl11.masked.6.i.i.i.i, %135
  %masksel.6.i.i.i.i = select i1 %cmp29.6.i.i.i.i, i16 0, i16 4096
  %and41.6.i.i.i.i = lshr i32 %conv.6.i.i.i.i, 4
  %and41.lobit.6.i.i.i.i = and i32 %and41.6.i.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and41.lobit.6.i.i.i.i, i32 %xor.6.i.i.i.i)
  %cmp48.6.i.i.i.i = icmp eq i32 %and41.lobit.6.i.i.i.i, %xor.6.i.i.i.i
  %137 = or i16 %136, %masksel.6.i.i.i.i
  %masksel73.6.i.i.i.i = select i1 %cmp48.6.i.i.i.i, i16 0, i16 32
  %crc_result.2.6.i.i.i.i = or i16 %137, %masksel73.6.i.i.i.i
  %conv.7.i.i.i.i = zext i16 %crc_result.2.6.i.i.i.i to i32
  %and.lobit.7.i.i.i.i = lshr i16 %shl11.6.i.i.i.i, 15
  %138 = zext i16 %and.lobit.7.i.i.i.i to i32
  %139 = lshr i32 %conv2.i.i.i.i, 7
  %xor.7.i.i.i.i = xor i32 %139, %138
  %shl11.7.i.i.i.i = shl i16 %crc_result.2.6.i.i.i.i, 1
  %140 = trunc i32 %xor.7.i.i.i.i to i16
  %and22.7.i.i.i.i = lshr i32 %conv.7.i.i.i.i, 11
  %and22.lobit.7.i.i.i.i = and i32 %and22.7.i.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and22.lobit.7.i.i.i.i, i32 %xor.7.i.i.i.i)
  %cmp29.7.i.i.i.i = icmp eq i32 %and22.lobit.7.i.i.i.i, %xor.7.i.i.i.i
  %shl11.masked.7.i.i.i.i = and i16 %shl11.7.i.i.i.i, -4130
  %141 = or i16 %shl11.masked.7.i.i.i.i, %140
  %masksel.7.i.i.i.i = select i1 %cmp29.7.i.i.i.i, i16 0, i16 4096
  %and41.7.i.i.i.i = lshr i32 %conv.7.i.i.i.i, 4
  %and41.lobit.7.i.i.i.i = and i32 %and41.7.i.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and41.lobit.7.i.i.i.i, i32 %xor.7.i.i.i.i)
  %cmp48.7.i.i.i.i = icmp eq i32 %and41.lobit.7.i.i.i.i, %xor.7.i.i.i.i
  %142 = or i16 %141, %masksel.7.i.i.i.i
  %masksel73.7.i.i.i.i = select i1 %cmp48.7.i.i.i.i, i16 0, i16 32
  %crc_result.2.7.i.i.i.i = or i16 %142, %masksel73.7.i.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.07.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv55.i.i
  br i1 %exitcond.not.i.i.i, label %for.end.loopexit.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.end.loopexit.i.i.i:                           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo.i.i.i = xor i16 %crc_result.2.7.i.i.i.i, -1
  br label %rtw_wow_pattern_generate.exit.i

rtw_wow_pattern_generate.exit.i:                  ; preds = %for.end.loopexit.i.i.i, %for.end53.i.i.rtw_wow_pattern_generate.exit.i_crit_edge, %for.end.i61.i.rtw_wow_pattern_generate.exit.i_crit_edge
  %crc.0.lcssa.i.i.i = phi i16 [ 0, %for.end53.i.i.rtw_wow_pattern_generate.exit.i_crit_edge ], [ %phi.bo.i.i.i, %for.end.loopexit.i.i.i ], [ 0, %for.end.i61.i.rtw_wow_pattern_generate.exit.i_crit_edge ]
  %143 = ptrtoint ptr %add.ptr29.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %crc.0.lcssa.i.i.i, ptr %add.ptr29.i, align 2
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %content.i.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask_hw.i.i) #7
  %inc.i = add nuw nsw i32 %i.064.i, 1
  %144 = ptrtoint ptr %n_patterns.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %n_patterns.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %145
  br i1 %cmp.i, label %rtw_wow_pattern_generate.exit.i.for.body.i_crit_edge, label %rtw_wow_pattern_generate.exit.i.if.end_crit_edge

rtw_wow_pattern_generate.exit.i.if.end_crit_edge: ; preds = %rtw_wow_pattern_generate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

rtw_wow_pattern_generate.exit.i.for.body.i_crit_edge: ; preds = %rtw_wow_pattern_generate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end:                                           ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %146 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %147, ptr noundef nonnull @.str) #11
  br label %out

if.end:                                           ; preds = %rtw_wow_pattern_generate.exit.i.if.end_crit_edge, %if.then24.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %if.end18.i.if.end_crit_edge
  %call1 = tail call fastcc i32 @rtw_wow_leave_ps(ptr noundef %rtwdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev7 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %148 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.6) #11
  br label %out

if.end8:                                          ; preds = %if.end
  tail call void @msleep(i32 noundef 100) #7
  %hci.i.i.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %150 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %read32.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %151, i32 0, i32 13
  %152 = ptrtoint ptr %read32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %read32.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %153(ptr noundef %rtwdev, i32 noundef 1048) #7
  %154 = and i32 %call.i.i.i.i.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool.not.i.i.i = icmp eq i32 %154, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %if.end8.rtw_wow_bb_stop.exit.i.i_crit_edge

if.end8.rtw_wow_bb_stop.exit.i.i_crit_edge:       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_wow_bb_stop.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %155 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dev.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %156, ptr noundef nonnull @.str.35) #11
  br label %rtw_wow_bb_stop.exit.i.i

rtw_wow_bb_stop.exit.i.i:                         ; preds = %do.end.i.i.i, %if.end8.rtw_wow_bb_stop.exit.i.i_crit_edge
  %157 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %read8.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %158, i32 0, i32 11
  %159 = ptrtoint ptr %read8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %read8.i.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i8 %160(ptr noundef %rtwdev, i32 noundef 1314) #7
  %txpause.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42, i32 2
  %161 = ptrtoint ptr %txpause.i.i.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %call.i.i.i.i, ptr %txpause.i.i.i, align 4
  %162 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write8.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %163, i32 0, i32 14
  %164 = ptrtoint ptr %write8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %write8.i.i.i.i, align 4
  tail call void %165(ptr noundef %rtwdev, i32 noundef 1314, i8 noundef zeroext -1) #7
  %166 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %read8.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %167, i32 0, i32 11
  %168 = ptrtoint ptr %read8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %read8.i.i.i.i.i, align 4
  %call.i.i9.i.i.i = tail call zeroext i8 %169(ptr noundef %rtwdev, i32 noundef 2) #7
  %170 = and i8 %call.i.i9.i.i.i, -2
  %171 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write8.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %172, i32 0, i32 14
  %173 = ptrtoint ptr %write8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %write8.i.i.i.i.i, align 4
  tail call void %174(ptr noundef %rtwdev, i32 noundef 2, i8 noundef zeroext %170) #7
  tail call void @msleep(i32 noundef 100) #7
  %175 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %read32.i.i.i3.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %176, i32 0, i32 13
  %177 = ptrtoint ptr %read32.i.i.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %read32.i.i.i3.i.i, align 4
  %call.i.i.i4.i.i = tail call i32 %178(ptr noundef %rtwdev, i32 noundef 644) #7
  %or.i.i.i.i = or i32 %call.i.i.i4.i.i, 262144
  %179 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write32.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %180, i32 0, i32 16
  %181 = ptrtoint ptr %write32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %write32.i.i.i.i.i, align 4
  tail call void %182(ptr noundef %rtwdev, i32 noundef 644, i32 noundef %or.i.i.i.i) #7
  %call.i.i.i = tail call zeroext i1 @check_hw_ready(ptr noundef %rtwdev, i32 noundef 644, i32 noundef 131072, i32 noundef 1) #7
  br i1 %call.i.i.i, label %rtw_wow_bb_stop.exit.i.i.rtw_wow_stop_trx.exit.i_crit_edge, label %do.end.i6.i.i

rtw_wow_bb_stop.exit.i.i.rtw_wow_stop_trx.exit.i_crit_edge: ; preds = %rtw_wow_bb_stop.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_wow_stop_trx.exit.i

do.end.i6.i.i:                                    ; preds = %rtw_wow_bb_stop.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i5.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %183 = ptrtoint ptr %dev.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dev.i5.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %184, ptr noundef nonnull @.str.38) #11
  br label %rtw_wow_stop_trx.exit.i

rtw_wow_stop_trx.exit.i:                          ; preds = %do.end.i6.i.i, %rtw_wow_bb_stop.exit.i.i.rtw_wow_stop_trx.exit.i_crit_edge
  %wow_fw.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 41
  %call.i.i38 = tail call i32 @rtw_download_firmware(ptr noundef %rtwdev, ptr noundef %wow_fw.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i38)
  %tobool.not.i.i39 = icmp eq i32 %call.i.i38, 0
  br i1 %tobool.not.i.i39, label %if.end.i42, label %do.end.i

do.end.i:                                         ; preds = %rtw_wow_stop_trx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %185 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %186, ptr noundef nonnull @.str.27) #11
  br label %do.end14

if.end.i42:                                       ; preds = %rtw_wow_stop_trx.exit.i
  tail call void @rtw_fw_send_general_info(ptr noundef %rtwdev) #7
  tail call void @rtw_fw_send_phydm_info(ptr noundef %rtwdev) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.i.i.i) #7
  %187 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store8_noabort(i32 %187)
  store i64 -4261412865, ptr %data.i.i.i, align 8, !annotation !150
  store ptr %rtwdev, ptr %data.i.i.i, align 8
  %188 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %rtwdev, align 8
  call void @ieee80211_iterate_stations_atomic(ptr noundef %189, ptr noundef nonnull @rtw_wow_fw_media_status_iter, ptr noundef nonnull %data.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i.i.i) #7
  %flags.i40 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 38
  call void @_set_bit(i32 noundef 8, ptr noundef %flags.i40) #7
  %190 = ptrtoint ptr %wow.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %wow.i, align 8
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %191, i32 0, i32 19
  call void @rtw_remove_rsvd_page(ptr noundef %rtwdev, ptr noundef %drv_priv.i.i) #7
  %192 = ptrtoint ptr %wow.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %wow.i, align 8
  %drv_priv.i.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %193, i32 0, i32 19
  %194 = ptrtoint ptr %drv_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %drv_priv.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %cmp.i.i.i41 = icmp eq i32 %195, 0
  br i1 %cmp.i.i.i41, label %if.then.i.i, label %if.else.i.i43

if.then.i.i:                                      ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #9
  call void @rtw_add_rsvd_page_pno(ptr noundef %rtwdev, ptr noundef %drv_priv.i.i) #7
  br label %rtw_wow_config_wow_fw_rsvd_page.exit.i

if.else.i.i43:                                    ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #9
  call void @rtw_add_rsvd_page_sta(ptr noundef %rtwdev, ptr noundef %drv_priv.i.i) #7
  br label %rtw_wow_config_wow_fw_rsvd_page.exit.i

rtw_wow_config_wow_fw_rsvd_page.exit.i:           ; preds = %if.else.i.i43, %if.then.i.i
  %call2.i.i = call i32 @rtw_fw_download_rsvd_page(ptr noundef %rtwdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool2.not.i44 = icmp eq i32 %call2.i.i, 0
  br i1 %tobool2.not.i44, label %if.end8.i, label %do.end6.i

do.end6.i:                                        ; preds = %rtw_wow_config_wow_fw_rsvd_page.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev7.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %196 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dev7.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %197, ptr noundef nonnull @.str.30) #11
  br label %do.end14

if.end8.i:                                        ; preds = %rtw_wow_config_wow_fw_rsvd_page.exit.i
  %198 = ptrtoint ptr %wow.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %wow.i, align 8
  %drv_priv.i.i.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %199, i32 0, i32 19
  %200 = ptrtoint ptr %drv_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %drv_priv.i.i.i.i, align 8
  %202 = zext i32 %201 to i64
  call void @__sanitizer_cov_trace_switch(i64 %202, ptr @__sancov_gen_cov_switch_values)
  switch i32 %201, label %if.end8.i.rtw_wow_fw_start.exit.i.i_crit_edge [
    i32 2, label %if.then.i.i.i45
    i32 0, label %if.then2.i.i.i
  ]

if.end8.i.rtw_wow_fw_start.exit.i.i_crit_edge:    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_wow_fw_start.exit.i.i

if.then.i.i.i45:                                  ; preds = %if.end8.i
  call void @rtw_send_rsvd_page_h2c(ptr noundef %rtwdev) #7
  %pattern_cnt.i.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42, i32 3
  %203 = ptrtoint ptr %pattern_cnt.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %pattern_cnt.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %cmp9.not.i.i.i.i = icmp eq i8 %204, 0
  br i1 %cmp9.not.i.i.i.i, label %if.then.i.i.i45.rtw_wow_pattern_write.exit.i.i.i_crit_edge, label %for.body.lr.ph.i.i.i.i

if.then.i.i.i45.rtw_wow_pattern_write.exit.i.i.i_crit_edge: ; preds = %if.then.i.i.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_wow_pattern_write.exit.i.i.i

for.body.lr.ph.i.i.i.i:                           ; preds = %if.then.i.i.i45
  %dev.i.i.i.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %rtw_wow_pattern_write_cam_ent.exit.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %i.010.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i.i ], [ %inc.i.i.i.i, %rtw_wow_pattern_write_cam_ent.exit.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %conv.i.i.i.i.i = shl i32 %i.010.i.i.i.i, 3
  br label %for.body.i.i.i.i.i

for.body.i.i.i.i.i:                               ; preds = %rtw_wow_pattern_write_cam.exit.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, %for.body.i.i.i.i
  %i.065.i.i.i.i.i = phi i32 [ 0, %for.body.i.i.i.i ], [ %inc.i.i.i.i.i, %rtw_wow_pattern_write_cam.exit.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %add.i.i.i.i.i = add nuw nsw i32 %i.065.i.i.i.i.i, %conv.i.i.i.i.i
  %mul.i.i.i.i.i = shl i32 %i.065.i.i.i.i.i, 2
  %arrayidx.i.i.i.i.i = getelementptr %struct.rtw_wow_pattern, ptr %patterns.i, i32 %i.010.i.i.i.i, i32 3, i32 %mul.i.i.i.i.i
  %205 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  %conv2.i.i.i.i.i = zext i8 %206 to i32
  %add5.i.i.i.i.i = or i32 %mul.i.i.i.i.i, 1
  %arrayidx6.i.i.i.i.i = getelementptr %struct.rtw_wow_pattern, ptr %patterns.i, i32 %i.010.i.i.i.i, i32 3, i32 %add5.i.i.i.i.i
  %207 = ptrtoint ptr %arrayidx6.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %arrayidx6.i.i.i.i.i, align 1
  %conv7.i.i.i.i.i = zext i8 %208 to i32
  %shl8.i.i.i.i.i = shl nuw nsw i32 %conv7.i.i.i.i.i, 8
  %or.i.i.i.i.i = or i32 %shl8.i.i.i.i.i, %conv2.i.i.i.i.i
  %add11.i.i.i.i.i = or i32 %mul.i.i.i.i.i, 2
  %arrayidx12.i.i.i.i.i = getelementptr %struct.rtw_wow_pattern, ptr %patterns.i, i32 %i.010.i.i.i.i, i32 3, i32 %add11.i.i.i.i.i
  %209 = ptrtoint ptr %arrayidx12.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %arrayidx12.i.i.i.i.i, align 1
  %conv13.i.i.i.i.i = zext i8 %210 to i32
  %shl14.i.i.i.i.i = shl nuw nsw i32 %conv13.i.i.i.i.i, 16
  %or15.i.i.i.i.i = or i32 %or.i.i.i.i.i, %shl14.i.i.i.i.i
  %add18.i.i.i.i.i = or i32 %mul.i.i.i.i.i, 3
  %arrayidx19.i.i.i.i.i = getelementptr %struct.rtw_wow_pattern, ptr %patterns.i, i32 %i.010.i.i.i.i, i32 3, i32 %add18.i.i.i.i.i
  %211 = ptrtoint ptr %arrayidx19.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %arrayidx19.i.i.i.i.i, align 1
  %conv20.i.i.i.i.i = zext i8 %212 to i32
  %shl21.i.i.i.i.i = shl nuw i32 %conv20.i.i.i.i.i, 24
  %or22.i.i.i.i.i = or i32 %or15.i.i.i.i.i, %shl21.i.i.i.i.i
  %213 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write32.i.i.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %214, i32 0, i32 16
  %215 = ptrtoint ptr %write32.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %write32.i.i.i.i.i.i.i, align 4
  call void %216(ptr noundef %rtwdev, i32 noundef 1692, i32 noundef %or22.i.i.i.i.i) #7
  %conv.i.i.i.i.i.i = shl i32 %add.i.i.i.i.i, 8
  %shl.i.i.i.i.i.i = and i32 %conv.i.i.i.i.i.i, 65280
  %or.i.i.i.i.i.i = or i32 %shl.i.i.i.i.i.i, -2147418112
  %217 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write32.i5.i.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %218, i32 0, i32 16
  %219 = ptrtoint ptr %write32.i5.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %write32.i5.i.i.i.i.i.i, align 4
  call void %220(ptr noundef %rtwdev, i32 noundef 1688, i32 noundef %or.i.i.i.i.i.i) #7
  %call.i.i.i.i.i.i = call zeroext i1 @check_hw_ready(ptr noundef %rtwdev, i32 noundef 1688, i32 noundef -2147483648, i32 noundef 0) #7
  br i1 %call.i.i.i.i.i.i, label %for.body.i.i.i.i.i.rtw_wow_pattern_write_cam.exit.i.i.i.i.i_crit_edge, label %do.end.i.i.i.i.i.i

for.body.i.i.i.i.i.rtw_wow_pattern_write_cam.exit.i.i.i.i.i_crit_edge: ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_wow_pattern_write_cam.exit.i.i.i.i.i

do.end.i.i.i.i.i.i:                               ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %221 = ptrtoint ptr %dev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %dev.i.i.i.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %222, ptr noundef nonnull @.str.42) #11
  br label %rtw_wow_pattern_write_cam.exit.i.i.i.i.i

rtw_wow_pattern_write_cam.exit.i.i.i.i.i:         ; preds = %do.end.i.i.i.i.i.i, %for.body.i.i.i.i.i.rtw_wow_pattern_write_cam.exit.i.i.i.i.i_crit_edge
  %inc.i.i.i.i.i = add nuw nsw i32 %i.065.i.i.i.i.i, 1
  %exitcond.not.i.i.i.i.i = icmp eq i32 %inc.i.i.i.i.i, 4
  br i1 %exitcond.not.i.i.i.i.i, label %for.end.i.i.i.i.i, label %rtw_wow_pattern_write_cam.exit.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge

rtw_wow_pattern_write_cam.exit.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge: ; preds = %rtw_wow_pattern_write_cam.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i.i.i

for.end.i.i.i.i.i:                                ; preds = %rtw_wow_pattern_write_cam.exit.i.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr %struct.rtw_wow_pattern, ptr %patterns.i, i32 %i.010.i.i.i.i
  %223 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %conv23.i.i.i.i.i = zext i16 %224 to i32
  %type.i.i.i.i.i = getelementptr %struct.rtw_wow_pattern, ptr %patterns.i, i32 %i.010.i.i.i.i, i32 1
  %225 = ptrtoint ptr %type.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %type.i.i.i.i.i, align 2
  %227 = zext i8 %226 to i64
  call void @__sanitizer_cov_trace_switch(i64 %227, ptr @__sancov_gen_cov_switch_values.78)
  switch i8 %226, label %for.end.i.i.i.i.i.sw.epilog.i.i.i.i.i_crit_edge [
    i8 0, label %sw.bb.i.i.i.i.i
    i8 1, label %sw.bb30.i.i.i.i.i
    i8 2, label %sw.bb32.i.i.i.i.i
  ]

for.end.i.i.i.i.i.sw.epilog.i.i.i.i.i_crit_edge:  ; preds = %for.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i.i.i.i

sw.bb.i.i.i.i.i:                                  ; preds = %for.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or29.i.i.i.i.i = or i32 %conv23.i.i.i.i.i, -2080374784
  br label %sw.epilog.i.i.i.i.i

sw.bb30.i.i.i.i.i:                                ; preds = %for.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or31.i.i.i.i.i = or i32 %conv23.i.i.i.i.i, -2113929216
  br label %sw.epilog.i.i.i.i.i

sw.bb32.i.i.i.i.i:                                ; preds = %for.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or33.i.i.i.i.i = or i32 %conv23.i.i.i.i.i, -2130706432
  br label %sw.epilog.i.i.i.i.i

sw.epilog.i.i.i.i.i:                              ; preds = %sw.bb32.i.i.i.i.i, %sw.bb30.i.i.i.i.i, %sw.bb.i.i.i.i.i, %for.end.i.i.i.i.i.sw.epilog.i.i.i.i.i_crit_edge
  %wdata.0.i.i.i.i.i = phi i32 [ %conv23.i.i.i.i.i, %for.end.i.i.i.i.i.sw.epilog.i.i.i.i.i_crit_edge ], [ %or33.i.i.i.i.i, %sw.bb32.i.i.i.i.i ], [ %or31.i.i.i.i.i, %sw.bb30.i.i.i.i.i ], [ %or29.i.i.i.i.i, %sw.bb.i.i.i.i.i ]
  %shl25.i.i.i.i.i = shl i32 %i.010.i.i.i.i, 11
  %228 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write32.i.i56.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %229, i32 0, i32 16
  %230 = ptrtoint ptr %write32.i.i56.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %write32.i.i56.i.i.i.i.i, align 4
  call void %231(ptr noundef %rtwdev, i32 noundef 1692, i32 noundef %wdata.0.i.i.i.i.i) #7
  %add26.i.i.i.i.i = and i32 %shl25.i.i.i.i.i, 63488
  %or.i59.i.i.i.i.i = or i32 %add26.i.i.i.i.i, -2147417088
  %232 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write32.i5.i60.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %233, i32 0, i32 16
  %234 = ptrtoint ptr %write32.i5.i60.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %write32.i5.i60.i.i.i.i.i, align 4
  call void %235(ptr noundef %rtwdev, i32 noundef 1688, i32 noundef %or.i59.i.i.i.i.i) #7
  %call.i61.i.i.i.i.i = call zeroext i1 @check_hw_ready(ptr noundef %rtwdev, i32 noundef 1688, i32 noundef -2147483648, i32 noundef 0) #7
  br i1 %call.i61.i.i.i.i.i, label %sw.epilog.i.i.i.i.i.rtw_wow_pattern_write_cam_ent.exit.i.i.i.i_crit_edge, label %do.end.i63.i.i.i.i.i

sw.epilog.i.i.i.i.i.rtw_wow_pattern_write_cam_ent.exit.i.i.i.i_crit_edge: ; preds = %sw.epilog.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_wow_pattern_write_cam_ent.exit.i.i.i.i

do.end.i63.i.i.i.i.i:                             ; preds = %sw.epilog.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %236 = ptrtoint ptr %dev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %dev.i.i.i.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %237, ptr noundef nonnull @.str.42) #11
  br label %rtw_wow_pattern_write_cam_ent.exit.i.i.i.i

rtw_wow_pattern_write_cam_ent.exit.i.i.i.i:       ; preds = %do.end.i63.i.i.i.i.i, %sw.epilog.i.i.i.i.i.rtw_wow_pattern_write_cam_ent.exit.i.i.i.i_crit_edge
  %inc.i.i.i.i = add nuw nsw i32 %i.010.i.i.i.i, 1
  %238 = ptrtoint ptr %pattern_cnt.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %pattern_cnt.i.i.i.i, align 1
  %conv.i.i.i.i46 = zext i8 %239 to i32
  %cmp.i17.i.i.i = icmp ult i32 %inc.i.i.i.i, %conv.i.i.i.i46
  br i1 %cmp.i17.i.i.i, label %rtw_wow_pattern_write_cam_ent.exit.i.i.i.i.for.body.i.i.i.i_crit_edge, label %rtw_wow_pattern_write_cam_ent.exit.i.i.i.i.rtw_wow_pattern_write.exit.i.i.i_crit_edge

rtw_wow_pattern_write_cam_ent.exit.i.i.i.i.rtw_wow_pattern_write.exit.i.i.i_crit_edge: ; preds = %rtw_wow_pattern_write_cam_ent.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_wow_pattern_write.exit.i.i.i

rtw_wow_pattern_write_cam_ent.exit.i.i.i.i.for.body.i.i.i.i_crit_edge: ; preds = %rtw_wow_pattern_write_cam_ent.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i.i

rtw_wow_pattern_write.exit.i.i.i:                 ; preds = %rtw_wow_pattern_write_cam_ent.exit.i.i.i.i.rtw_wow_pattern_write.exit.i.i.i_crit_edge, %if.then.i.i.i45.rtw_wow_pattern_write.exit.i.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.i.i.i.i) #7
  %240 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %240)
  store i64 0, ptr %data.i.i.i.i, align 8
  %241 = ptrtoint ptr %wow.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %wow.i, align 8
  store ptr %rtwdev, ptr %data.i.i.i.i, align 8
  %243 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %rtwdev, align 8
  call void @ieee80211_iter_keys(ptr noundef %244, ptr noundef %242, ptr noundef nonnull @rtw_wow_fw_security_type_iter, ptr noundef nonnull %data.i.i.i.i) #7
  %pairwise_key_type.i.i.i.i = getelementptr inbounds %struct.rtw_fw_key_type_iter_data, ptr %data.i.i.i.i, i32 0, i32 2
  %245 = ptrtoint ptr %pairwise_key_type.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %pairwise_key_type.i.i.i.i, align 1
  %group_key_type.i.i.i.i = getelementptr inbounds %struct.rtw_fw_key_type_iter_data, ptr %data.i.i.i.i, i32 0, i32 1
  %247 = ptrtoint ptr %group_key_type.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %group_key_type.i.i.i.i, align 4
  call void @rtw_fw_set_aoac_global_info_cmd(ptr noundef %rtwdev, i8 noundef zeroext %246, i8 noundef zeroext %248) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i.i.i.i) #7
  call void @rtw_fw_set_disconnect_decision_cmd(ptr noundef %rtwdev, i1 noundef zeroext true) #7
  call void @rtw_fw_set_keep_alive_cmd(ptr noundef %rtwdev, i1 noundef zeroext true) #7
  br label %rtw_wow_fw_start.exit.i.i

if.then2.i.i.i:                                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @rtw_fw_set_nlo_info(ptr noundef %rtwdev, i1 noundef zeroext true) #7
  call void @rtw_fw_update_pkt_probe_req(ptr noundef %rtwdev, ptr noundef null) #7
  call void @rtw_fw_channel_switch(ptr noundef %rtwdev, i1 noundef zeroext true) #7
  br label %rtw_wow_fw_start.exit.i.i

rtw_wow_fw_start.exit.i.i:                        ; preds = %if.then2.i.i.i, %rtw_wow_pattern_write.exit.i.i.i, %if.end8.i.rtw_wow_fw_start.exit.i.i_crit_edge
  call void @rtw_fw_set_wowlan_ctrl_cmd(ptr noundef %rtwdev, i1 noundef zeroext true) #7
  call void @rtw_fw_set_remote_wake_ctrl_cmd(ptr noundef %rtwdev, i1 noundef zeroext true) #7
  %call4.i.i.i = call fastcc i32 @rtw_wow_check_fw_status(ptr noundef %rtwdev, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool.not.i32.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool.not.i32.i, label %if.end.i38.i, label %do.end14.i

if.end.i38.i:                                     ; preds = %rtw_wow_fw_start.exit.i.i
  %249 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %stop.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %250, i32 0, i32 5
  %251 = ptrtoint ptr %stop.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %stop.i.i.i, align 4
  call void %252(ptr noundef %rtwdev) #7
  %253 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %read8.i.i.i.i33.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %254, i32 0, i32 11
  %255 = ptrtoint ptr %read8.i.i.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %read8.i.i.i.i33.i, align 4
  %call.i.i.i.i34.i = call zeroext i8 %256(ptr noundef %rtwdev, i32 noundef 2) #7
  %257 = or i8 %call.i.i.i.i34.i, 1
  %258 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write8.i.i.i.i35.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %259, i32 0, i32 14
  %260 = ptrtoint ptr %write8.i.i.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %write8.i.i.i.i35.i, align 4
  call void %261(ptr noundef %rtwdev, i32 noundef 2, i8 noundef zeroext %257) #7
  %262 = ptrtoint ptr %txpause.i.i.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %txpause.i.i.i, align 4
  %264 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write8.i.i.i37.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %265, i32 0, i32 14
  %266 = ptrtoint ptr %write8.i.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %write8.i.i.i37.i, align 4
  call void %267(ptr noundef %rtwdev, i32 noundef 1314, i8 noundef zeroext %263) #7
  %type.i.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2, i32 1
  %268 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %type.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %269)
  %switch.i.i.i = icmp ult i32 %269, 2
  br i1 %switch.i.i.i, label %sw.bb.i.i.i, label %do.end.i.i40.i

sw.bb.i.i.i:                                      ; preds = %if.end.i38.i
  call void @__sanitizer_cov_trace_pc() #9
  %270 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write8.i.i5.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %271, i32 0, i32 14
  %272 = ptrtoint ptr %write8.i.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %write8.i.i5.i.i, align 4
  call void %273(ptr noundef %rtwdev, i32 noundef 28, i8 noundef zeroext 32) #7
  %274 = ptrtoint ptr %hci.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %hci.i.i.i.i.i, align 8
  %write8.i5.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %275, i32 0, i32 14
  %276 = ptrtoint ptr %write8.i5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %write8.i5.i.i.i, align 4
  call void %277(ptr noundef %rtwdev, i32 noundef 28, i8 noundef zeroext 96) #7
  br label %if.end17

do.end.i.i40.i:                                   ; preds = %if.end.i38.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i39.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %278 = ptrtoint ptr %dev.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %dev.i.i39.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %279, ptr noundef nonnull @.str.50) #11
  br label %if.end17

do.end14.i:                                       ; preds = %rtw_wow_fw_start.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev15.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %280 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %dev15.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %281, ptr noundef nonnull @.str.33) #11
  br label %do.end14

do.end14:                                         ; preds = %do.end14.i, %do.end6.i, %do.end.i
  %ret.0.i = phi i32 [ %call.i.i38, %do.end.i ], [ %call2.i.i, %do.end6.i ], [ %call4.i.i.i, %do.end14.i ]
  %flags17.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 38
  call void @_clear_bit(i32 noundef 8, ptr noundef %flags17.i) #7
  %dev15 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %282 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %dev15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %283, ptr noundef nonnull @.str.9) #11
  %284 = ptrtoint ptr %wow.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %wow.i, align 8
  %drv_priv.i.i49 = getelementptr inbounds %struct.ieee80211_vif, ptr %285, i32 0, i32 19
  %286 = ptrtoint ptr %drv_priv.i.i49 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %drv_priv.i.i49, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %287)
  %cmp.i.i50 = icmp eq i32 %287, 0
  br i1 %cmp.i.i50, label %land.lhs.true.i52, label %do.end14.out_crit_edge

do.end14.out_crit_edge:                           ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true.i52:                                ; preds = %do.end14
  %ips_enabled.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42, i32 5
  %288 = ptrtoint ptr %ips_enabled.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %ips_enabled.i, align 2, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %289)
  %tobool.not.i51 = icmp eq i8 %289, 0
  br i1 %tobool.not.i51, label %land.lhs.true.i52.out_crit_edge, label %if.then.i53

land.lhs.true.i52.out_crit_edge:                  ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then.i53:                                      ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = call i32 @rtw_enter_ips(ptr noundef %rtwdev) #7
  br label %out

if.end17:                                         ; preds = %do.end.i.i40.i, %sw.bb.i.i.i
  %290 = ptrtoint ptr %wow.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %wow.i, align 8
  %drv_priv.i.i57 = getelementptr inbounds %struct.ieee80211_vif, ptr %291, i32 0, i32 19
  %292 = ptrtoint ptr %drv_priv.i.i57 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %drv_priv.i.i57, align 8
  %294 = zext i32 %293 to i64
  call void @__sanitizer_cov_trace_switch(i64 %294, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %293, label %if.end17.out_crit_edge [
    i32 2, label %if.then.i58
    i32 0, label %land.lhs.true.i59
  ]

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then.i58:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %port.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %291, i32 1, i32 1, i32 5
  %295 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %port.i.i, align 2
  call void @rtw_enter_lps(ptr noundef %rtwdev, i8 noundef zeroext %296) #7
  br label %out

land.lhs.true.i59:                                ; preds = %if.end17
  %call3.i = call i32 @rtw_get_lps_deep_mode(ptr noundef %rtwdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.not.i = icmp eq i32 %call3.i, 0
  br i1 %cmp.not.i, label %land.lhs.true.i59.out_crit_edge, label %if.then4.i

land.lhs.true.i59.out_crit_edge:                  ; preds = %land.lhs.true.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then4.i:                                       ; preds = %land.lhs.true.i59
  call void @__sanitizer_cov_trace_pc() #9
  call void @_set_bit(i32 noundef 5, ptr noundef %flags.i40) #7
  br label %out

out:                                              ; preds = %if.then4.i, %land.lhs.true.i59.out_crit_edge, %if.then.i58, %if.end17.out_crit_edge, %if.then.i53, %land.lhs.true.i52.out_crit_edge, %do.end14.out_crit_edge, %do.end6, %do.end
  %ret.0 = phi i32 [ -1, %do.end ], [ %call1, %do.end6 ], [ %ret.0.i, %do.end14.out_crit_edge ], [ %ret.0.i, %land.lhs.true.i52.out_crit_edge ], [ %ret.0.i, %if.then.i53 ], [ 0, %if.end17.out_crit_edge ], [ 0, %if.then.i58 ], [ 0, %land.lhs.true.i59.out_crit_edge ], [ 0, %if.then4.i ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtw_wow_leave_ps(ptr noundef %rtwdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wow.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42
  %0 = ptrtoint ptr %wow.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wow.i, align 8
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %drv_priv.i, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %3, label %entry.if.end5_crit_edge [
    i32 2, label %if.then
    i32 0, label %if.then3
  ]

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  %flags.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 38
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i, align 4
  %7 = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.rtw_wow_leave_linked_ps.exit_crit_edge

if.then.rtw_wow_leave_linked_ps.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_wow_leave_linked_ps.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %watch_dog_work.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 17
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %watch_dog_work.i) #7
  br label %rtw_wow_leave_linked_ps.exit

rtw_wow_leave_linked_ps.exit:                     ; preds = %if.then.i, %if.then.rtw_wow_leave_linked_ps.exit_crit_edge
  tail call void @rtw_leave_lps(ptr noundef %rtwdev) #7
  br label %if.end5

if.then3:                                         ; preds = %entry
  %flags.i12 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 38
  %8 = ptrtoint ptr %flags.i12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i12, align 4
  %10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i13 = icmp eq i32 %10, 0
  br i1 %tobool.not.i13, label %if.else.i, label %if.then.i15

if.then.i15:                                      ; preds = %if.then3
  %call1.i14 = tail call i32 @rtw_get_lps_deep_mode(ptr noundef %rtwdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14)
  %cmp.not.i = icmp eq i32 %call1.i14, 0
  br i1 %cmp.not.i, label %if.then.i15.if.end13.i_crit_edge, label %if.then2.i

if.then.i15.if.end13.i_crit_edge:                 ; preds = %if.then.i15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then2.i:                                       ; preds = %if.then.i15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtw_leave_lps_deep(ptr noundef %rtwdev) #7
  br label %if.end13.i

if.else.i:                                        ; preds = %if.then3
  %11 = ptrtoint ptr %flags.i12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags.i12, align 4
  %13 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not.i = icmp eq i32 %13, 0
  br i1 %tobool6.not.i, label %if.else.i.if.end13.i_crit_edge, label %if.then7.i

if.else.i.if.end13.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then7.i:                                       ; preds = %if.else.i
  %ips_enabled.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42, i32 5
  %14 = ptrtoint ptr %ips_enabled.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %ips_enabled.i, align 2
  %call8.i = tail call i32 @rtw_leave_ips(ptr noundef %rtwdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then7.i.if.end13.i_crit_edge, label %if.then7.i.if.end5_crit_edge

if.then7.i.if.end5_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then7.i.if.end13.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then7.i.if.end13.i_crit_edge, %if.else.i.if.end13.i_crit_edge, %if.then2.i, %if.then.i15.if.end13.i_crit_edge
  br label %if.end5

if.end5:                                          ; preds = %if.end13.i, %if.then7.i.if.end5_crit_edge, %rtw_wow_leave_linked_ps.exit, %entry.if.end5_crit_edge
  %ret.0 = phi i32 [ 0, %rtw_wow_leave_linked_ps.exit ], [ 0, %if.end13.i ], [ %call8.i, %if.then7.i.if.end5_crit_edge ], [ 0, %entry.if.end5_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtw_wow_resume(ptr noundef %rtwdev) local_unnamed_addr #0 align 64 {
entry:
  %data.i.i.i = alloca %struct.rtw_fw_media_status_iter_data, align 8
  %nd_info.i = alloca %struct.cfg80211_wowlan_nd_info, align 4
  %wakeup.i = alloca %struct.cfg80211_wowlan_wakeup, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 38
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.14) #11
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @rtw_wow_leave_ps(ptr noundef %rtwdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev7 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %5 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.17) #11
  br label %out

if.end8:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nd_info.i) #7
  %7 = ptrtoint ptr %nd_info.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %nd_info.i, align 4, !annotation !150
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %wakeup.i) #7
  %8 = call ptr @memcpy(ptr %wakeup.i, ptr @__const.rtw_wow_show_wakeup_reason.wakeup, i32 32)
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %9 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %read8.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read8.i.i, align 4
  %call.i.i = tail call zeroext i8 %12(ptr noundef %rtwdev, i32 noundef 455) #7
  %13 = zext i8 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %call.i.i, label %do.end.i [
    i8 8, label %sw.bb.i
    i8 16, label %sw.bb1.i
    i8 33, label %sw.bb3.i
    i8 2, label %sw.bb4.i
    i8 35, label %sw.bb5.i
    i8 85, label %sw.bb6.i
  ]

sw.bb.i:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %wakeup.i, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 4096, ptr noundef nonnull @.str.52) #7
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %wakeup.i, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 4096, ptr noundef nonnull @.str.53) #7
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %magic_pkt.i = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %wakeup.i, i32 0, i32 1
  %16 = ptrtoint ptr %magic_pkt.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %magic_pkt.i, align 1
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 4096, ptr noundef nonnull @.str.54) #7
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %gtk_rekey_failure.i = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %wakeup.i, i32 0, i32 2
  %17 = ptrtoint ptr %gtk_rekey_failure.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %gtk_rekey_failure.i, align 2
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 4096, ptr noundef nonnull @.str.55) #7
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %pattern_idx.i = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %wakeup.i, i32 0, i32 10
  %18 = ptrtoint ptr %pattern_idx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %pattern_idx.i, align 4
  tail call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 4096, ptr noundef nonnull @.str.56) #7
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %nd_info.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %nd_info.i, align 4
  %net_detect.i = getelementptr inbounds %struct.cfg80211_wowlan_wakeup, ptr %wakeup.i, i32 0, i32 14
  %20 = ptrtoint ptr %net_detect.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %nd_info.i, ptr %net_detect.i, align 4
  call void (ptr, i32, ptr, ...) @__rtw_dbg(ptr noundef %rtwdev, i32 noundef 4096, ptr noundef nonnull @.str.57) #7
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i8 %call.i.i to i32
  %dev.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.58, i32 noundef %conv.i) #11
  %wow.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42
  %23 = ptrtoint ptr %wow.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wow.i, align 8
  tail call void @ieee80211_report_wowlan_wakeup(ptr noundef %24, ptr noundef null, i32 noundef 3264) #7
  br label %rtw_wow_show_wakeup_reason.exit

sw.epilog.i:                                      ; preds = %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb1.i, %sw.bb.i
  %wow8.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42
  %25 = ptrtoint ptr %wow8.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wow8.i, align 8
  call void @ieee80211_report_wowlan_wakeup(ptr noundef %26, ptr noundef nonnull %wakeup.i, i32 noundef 3264) #7
  br label %rtw_wow_show_wakeup_reason.exit

rtw_wow_show_wakeup_reason.exit:                  ; preds = %sw.epilog.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %wakeup.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nd_info.i) #7
  call void @_clear_bit(i32 noundef 8, ptr noundef %flags) #7
  %27 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hci.i.i, align 8
  %setup.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %setup.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %setup.i.i.i, align 4
  %call.i.i.i = call i32 %30(ptr noundef %rtwdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %rtw_wow_show_wakeup_reason.exit.do.end.sink.split.i_crit_edge

rtw_wow_show_wakeup_reason.exit.do.end.sink.split.i_crit_edge: ; preds = %rtw_wow_show_wakeup_reason.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.sink.split.i

if.end.i.i:                                       ; preds = %rtw_wow_show_wakeup_reason.exit
  %31 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hci.i.i, align 8
  %start.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %start.i.i.i, align 4
  %call.i29.i.i = call i32 %34(ptr noundef %rtwdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i29.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end8.i.i, label %if.end.i.i.do.end.sink.split.i_crit_edge

if.end.i.i.do.end.sink.split.i_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.sink.split.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  %wow.i.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42
  %35 = ptrtoint ptr %wow.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wow.i.i.i.i, align 8
  %drv_priv.i.i.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %36, i32 0, i32 19
  %37 = ptrtoint ptr %drv_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %drv_priv.i.i.i.i, align 8
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %38, label %if.end8.i.i.rtw_wow_fw_stop.exit.i.i_crit_edge [
    i32 2, label %if.then.i.i.i
    i32 0, label %if.then2.i.i.i
  ]

if.end8.i.i.rtw_wow_fw_stop.exit.i.i_crit_edge:   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_wow_fw_stop.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  call void @rtw_fw_set_disconnect_decision_cmd(ptr noundef %rtwdev, i1 noundef zeroext false) #7
  call void @rtw_fw_set_keep_alive_cmd(ptr noundef %rtwdev, i1 noundef zeroext false) #7
  %40 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %41, i32 0, i32 16
  %42 = ptrtoint ptr %write32.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write32.i.i.i.i.i.i, align 4
  call void %43(ptr noundef %rtwdev, i32 noundef 1688, i32 noundef -1073741824) #7
  %call.i.i.i.i.i = call zeroext i1 @check_hw_ready(ptr noundef %rtwdev, i32 noundef 1688, i32 noundef -2147483648, i32 noundef 0) #7
  br i1 %call.i.i.i.i.i, label %if.then.i.i.i.rtw_wow_pattern_clear.exit.i.i.i_crit_edge, label %do.end.i.i.i.i.i

if.then.i.i.i.rtw_wow_pattern_clear.exit.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_wow_pattern_clear.exit.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %44 = ptrtoint ptr %dev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i.i.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.76) #11
  br label %rtw_wow_pattern_clear.exit.i.i.i

rtw_wow_pattern_clear.exit.i.i.i:                 ; preds = %do.end.i.i.i.i.i, %if.then.i.i.i.rtw_wow_pattern_clear.exit.i.i.i_crit_edge
  %pattern_cnt.i.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42, i32 3
  %46 = call ptr @memset(ptr %pattern_cnt.i.i.i.i, i32 0, i32 241)
  br label %rtw_wow_fw_stop.exit.i.i

if.then2.i.i.i:                                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @rtw_fw_channel_switch(ptr noundef %rtwdev, i1 noundef zeroext false) #7
  call void @rtw_fw_set_nlo_info(ptr noundef %rtwdev, i1 noundef zeroext false) #7
  br label %rtw_wow_fw_stop.exit.i.i

rtw_wow_fw_stop.exit.i.i:                         ; preds = %if.then2.i.i.i, %rtw_wow_pattern_clear.exit.i.i.i, %if.end8.i.i.rtw_wow_fw_stop.exit.i.i_crit_edge
  call void @rtw_fw_set_wowlan_ctrl_cmd(ptr noundef %rtwdev, i1 noundef zeroext false) #7
  call void @rtw_fw_set_remote_wake_ctrl_cmd(ptr noundef %rtwdev, i1 noundef zeroext false) #7
  %call4.i.i.i = call fastcc i32 @rtw_wow_check_fw_status(ptr noundef %rtwdev, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool10.not.i.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool10.not.i.i, label %rtw_wow_fw_stop.exit.i.i.if.end16.i.i_crit_edge, label %do.end14.i.i

rtw_wow_fw_stop.exit.i.i.if.end16.i.i_crit_edge:  ; preds = %rtw_wow_fw_stop.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i.i

do.end14.i.i:                                     ; preds = %rtw_wow_fw_stop.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev15.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %47 = ptrtoint ptr %dev15.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev15.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.74) #11
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %do.end14.i.i, %rtw_wow_fw_stop.exit.i.i.if.end16.i.i_crit_edge
  call void @msleep(i32 noundef 100) #7
  %49 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %50, i32 0, i32 13
  %51 = ptrtoint ptr %read32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read32.i.i.i.i.i, align 4
  %call.i.i.i30.i.i = call i32 %52(ptr noundef %rtwdev, i32 noundef 1048) #7
  %53 = and i32 %call.i.i.i30.i.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i.i.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %if.end16.i.i.rtw_wow_stop.exit.i_crit_edge

if.end16.i.i.rtw_wow_stop.exit.i_crit_edge:       ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_wow_stop.exit.i

do.end.i.i.i:                                     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %54 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %55, ptr noundef nonnull @.str.35) #11
  br label %rtw_wow_stop.exit.i

rtw_wow_stop.exit.i:                              ; preds = %do.end.i.i.i, %if.end16.i.i.rtw_wow_stop.exit.i_crit_edge
  %56 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %57, i32 0, i32 11
  %58 = ptrtoint ptr %read8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read8.i.i.i.i, align 4
  %call.i.i.i.i = call zeroext i8 %59(ptr noundef %rtwdev, i32 noundef 1314) #7
  %txpause.i.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42, i32 2
  %60 = ptrtoint ptr %txpause.i.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %call.i.i.i.i, ptr %txpause.i.i.i, align 4
  %61 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %62, i32 0, i32 14
  %63 = ptrtoint ptr %write8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write8.i.i.i.i, align 4
  call void %64(ptr noundef %rtwdev, i32 noundef 1314, i8 noundef zeroext -1) #7
  %65 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %66, i32 0, i32 11
  %67 = ptrtoint ptr %read8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read8.i.i.i.i.i, align 4
  %call.i.i9.i.i.i = call zeroext i8 %68(ptr noundef %rtwdev, i32 noundef 2) #7
  %69 = and i8 %call.i.i9.i.i.i, -2
  %70 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %71, i32 0, i32 14
  %72 = ptrtoint ptr %write8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write8.i.i.i.i.i, align 4
  call void %73(ptr noundef %rtwdev, i32 noundef 2, i8 noundef zeroext %69) #7
  br i1 %tobool10.not.i.i, label %if.end.i, label %rtw_wow_stop.exit.i.rtw_wow_disable.exit.sink.split_crit_edge

rtw_wow_stop.exit.i.rtw_wow_disable.exit.sink.split_crit_edge: ; preds = %rtw_wow_stop.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_wow_disable.exit.sink.split

do.end.sink.split.i:                              ; preds = %if.end.i.i.do.end.sink.split.i_crit_edge, %rtw_wow_show_wakeup_reason.exit.do.end.sink.split.i_crit_edge
  %.str.71.sink.i = phi ptr [ @.str.68, %rtw_wow_show_wakeup_reason.exit.do.end.sink.split.i_crit_edge ], [ @.str.71, %if.end.i.i.do.end.sink.split.i_crit_edge ]
  %retval.0.i41.ph.i = phi i32 [ %call.i.i.i, %rtw_wow_show_wakeup_reason.exit.do.end.sink.split.i_crit_edge ], [ %call.i29.i.i, %if.end.i.i.do.end.sink.split.i_crit_edge ]
  %dev7.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %74 = ptrtoint ptr %dev7.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev7.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull %.str.71.sink.i) #11
  br label %rtw_wow_disable.exit.sink.split

if.end.i:                                         ; preds = %rtw_wow_stop.exit.i
  %fw2.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 7
  %call.i.i39 = call i32 @rtw_download_firmware(ptr noundef %rtwdev, ptr noundef %fw2.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i39)
  %tobool.not.i27.i = icmp eq i32 %call.i.i39, 0
  br i1 %tobool.not.i27.i, label %if.end8.i, label %if.end.i.rtw_wow_disable.exit.sink.split_crit_edge

if.end.i.rtw_wow_disable.exit.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_wow_disable.exit.sink.split

if.end8.i:                                        ; preds = %if.end.i
  call void @rtw_fw_send_general_info(ptr noundef %rtwdev) #7
  call void @rtw_fw_send_phydm_info(ptr noundef %rtwdev) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.i.i.i) #7
  %76 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 -4261412865, ptr %data.i.i.i, align 8, !annotation !150
  store ptr %rtwdev, ptr %data.i.i.i, align 8
  %77 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rtwdev, align 8
  call void @ieee80211_iterate_stations_atomic(ptr noundef %78, ptr noundef nonnull @rtw_wow_fw_media_status_iter, ptr noundef nonnull %data.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i.i.i) #7
  %79 = ptrtoint ptr %wow.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %wow.i.i.i.i, align 8
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %80, i32 0, i32 19
  call void @rtw_remove_rsvd_page(ptr noundef %rtwdev, ptr noundef %drv_priv.i.i) #7
  call void @rtw_add_rsvd_page_sta(ptr noundef %rtwdev, ptr noundef %drv_priv.i.i) #7
  %81 = ptrtoint ptr %wow.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %wow.i.i.i.i, align 8
  %drv_priv.i.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %82, i32 0, i32 19
  %83 = ptrtoint ptr %drv_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %drv_priv.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp.i.i.i = icmp eq i32 %84, 0
  br i1 %cmp.i.i.i, label %if.end8.i.rtw_wow_disable.exit_crit_edge, label %rtw_wow_config_normal_fw_rsvd_page.exit.i

if.end8.i.rtw_wow_disable.exit_crit_edge:         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_wow_disable.exit

rtw_wow_config_normal_fw_rsvd_page.exit.i:        ; preds = %if.end8.i
  %call2.i.i = call i32 @rtw_fw_download_rsvd_page(ptr noundef %rtwdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool10.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool10.not.i, label %rtw_wow_config_normal_fw_rsvd_page.exit.i.rtw_wow_disable.exit_crit_edge, label %rtw_wow_config_normal_fw_rsvd_page.exit.i.rtw_wow_disable.exit.sink.split_crit_edge

rtw_wow_config_normal_fw_rsvd_page.exit.i.rtw_wow_disable.exit.sink.split_crit_edge: ; preds = %rtw_wow_config_normal_fw_rsvd_page.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_wow_disable.exit.sink.split

rtw_wow_config_normal_fw_rsvd_page.exit.i.rtw_wow_disable.exit_crit_edge: ; preds = %rtw_wow_config_normal_fw_rsvd_page.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_wow_disable.exit

rtw_wow_disable.exit.sink.split:                  ; preds = %rtw_wow_config_normal_fw_rsvd_page.exit.i.rtw_wow_disable.exit.sink.split_crit_edge, %if.end.i.rtw_wow_disable.exit.sink.split_crit_edge, %do.end.sink.split.i, %rtw_wow_stop.exit.i.rtw_wow_disable.exit.sink.split_crit_edge
  %.str.60.sink = phi ptr [ @.str.60, %do.end.sink.split.i ], [ @.str.60, %rtw_wow_stop.exit.i.rtw_wow_disable.exit.sink.split_crit_edge ], [ @.str.63, %if.end.i.rtw_wow_disable.exit.sink.split_crit_edge ], [ @.str.66, %rtw_wow_config_normal_fw_rsvd_page.exit.i.rtw_wow_disable.exit.sink.split_crit_edge ]
  %ret.0.i.ph = phi i32 [ %retval.0.i41.ph.i, %do.end.sink.split.i ], [ %call4.i.i.i, %rtw_wow_stop.exit.i.rtw_wow_disable.exit.sink.split_crit_edge ], [ %call.i.i39, %if.end.i.rtw_wow_disable.exit.sink.split_crit_edge ], [ %call2.i.i, %rtw_wow_config_normal_fw_rsvd_page.exit.i.rtw_wow_disable.exit.sink.split_crit_edge ]
  %dev.i37 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %85 = ptrtoint ptr %dev.i37 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev.i37, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull %.str.60.sink) #11
  br label %rtw_wow_disable.exit

rtw_wow_disable.exit:                             ; preds = %rtw_wow_disable.exit.sink.split, %rtw_wow_config_normal_fw_rsvd_page.exit.i.rtw_wow_disable.exit_crit_edge, %if.end8.i.rtw_wow_disable.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %rtw_wow_config_normal_fw_rsvd_page.exit.i.rtw_wow_disable.exit_crit_edge ], [ 0, %if.end8.i.rtw_wow_disable.exit_crit_edge ], [ %ret.0.i.ph, %rtw_wow_disable.exit.sink.split ]
  %87 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i.i.i32.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %88, i32 0, i32 13
  %89 = ptrtoint ptr %read32.i.i.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %read32.i.i.i.i32.i, align 4
  %call.i.i.i.i33.i = call i32 %90(ptr noundef %rtwdev, i32 noundef 644) #7
  %and.i.i.i.i = and i32 %call.i.i.i.i33.i, -262145
  %91 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hci.i.i, align 8
  %write32.i.i.i.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %92, i32 0, i32 16
  %93 = ptrtoint ptr %write32.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write32.i.i.i.i.i, align 4
  call void %94(ptr noundef %rtwdev, i32 noundef 644, i32 noundef %and.i.i.i.i) #7
  %95 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hci.i.i, align 8
  %read8.i.i.i.i34.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %96, i32 0, i32 11
  %97 = ptrtoint ptr %read8.i.i.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %read8.i.i.i.i34.i, align 4
  %call.i.i.i5.i.i = call zeroext i8 %98(ptr noundef %rtwdev, i32 noundef 2) #7
  %99 = or i8 %call.i.i.i5.i.i, 1
  %100 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i.i.i35.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %101, i32 0, i32 14
  %102 = ptrtoint ptr %write8.i.i.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %write8.i.i.i.i35.i, align 4
  call void %103(ptr noundef %rtwdev, i32 noundef 2, i8 noundef zeroext %99) #7
  %txpause.i.i36.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42, i32 2
  %104 = ptrtoint ptr %txpause.i.i36.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %txpause.i.i36.i, align 4
  %106 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hci.i.i, align 8
  %write8.i.i.i37.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %107, i32 0, i32 14
  %108 = ptrtoint ptr %write8.i.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %write8.i.i.i37.i, align 4
  call void %109(ptr noundef %rtwdev, i32 noundef 1314, i8 noundef zeroext %105) #7
  %110 = ptrtoint ptr %rtwdev to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rtwdev, align 8
  %watch_dog_work.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 17
  %call.i38.i = call i32 @round_jiffies_relative(i32 noundef 200) #7
  call void @ieee80211_queue_delayed_work(ptr noundef %111, ptr noundef %watch_dog_work.i.i, i32 noundef %call.i38.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool10.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %rtw_wow_disable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev15 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %112 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.20) #11
  br label %out

if.end16:                                         ; preds = %rtw_wow_disable.exit
  %wow.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42
  %114 = ptrtoint ptr %wow.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %wow.i.i, align 8
  %drv_priv.i.i40 = getelementptr inbounds %struct.ieee80211_vif, ptr %115, i32 0, i32 19
  %116 = ptrtoint ptr %drv_priv.i.i40 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %drv_priv.i.i40, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp.i.i = icmp eq i32 %117, 0
  br i1 %cmp.i.i, label %land.lhs.true.i, label %if.end16.out_crit_edge

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true.i:                                  ; preds = %if.end16
  %ips_enabled.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42, i32 5
  %118 = ptrtoint ptr %ips_enabled.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %ips_enabled.i, align 2, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool.not.i = icmp eq i8 %119, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.out_crit_edge, label %rtw_wow_restore_ps.exit

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

rtw_wow_restore_ps.exit:                          ; preds = %land.lhs.true.i
  %call1.i = call i32 @rtw_enter_ips(ptr noundef %rtwdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool18.not = icmp eq i32 %call1.i, 0
  br i1 %tobool18.not, label %rtw_wow_restore_ps.exit.out_crit_edge, label %do.end22

rtw_wow_restore_ps.exit.out_crit_edge:            ; preds = %rtw_wow_restore_ps.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end22:                                         ; preds = %rtw_wow_restore_ps.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev23 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %120 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev23, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.23) #11
  br label %out

out:                                              ; preds = %do.end22, %rtw_wow_restore_ps.exit.out_crit_edge, %land.lhs.true.i.out_crit_edge, %if.end16.out_crit_edge, %do.end14, %do.end6, %do.end
  %ret.0 = phi i32 [ %call1, %do.end6 ], [ %ret.0.i, %do.end14 ], [ %call1.i, %do.end22 ], [ 0, %rtw_wow_restore_ps.exit.out_crit_edge ], [ -1, %do.end ], [ 0, %land.lhs.true.i.out_crit_edge ], [ 0, %if.end16.out_crit_edge ]
  %pno_req1.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42, i32 6
  %122 = ptrtoint ptr %pno_req1.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %pno_req1.i, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool.not.i43 = icmp eq i8 %123, 0
  br i1 %tobool.not.i43, label %out.rtw_wow_clear_wakeups.exit_crit_edge, label %if.then.i44

out.rtw_wow_clear_wakeups.exit_crit_edge:         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtw_wow_clear_wakeups.exit

if.then.i44:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %channels.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42, i32 6, i32 4
  %124 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %channels.i, align 4
  call void @kfree(ptr noundef %125) #7
  %match_sets.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42, i32 6, i32 2
  %126 = ptrtoint ptr %match_sets.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %match_sets.i, align 4
  call void @kfree(ptr noundef %127) #7
  br label %rtw_wow_clear_wakeups.exit

rtw_wow_clear_wakeups.exit:                       ; preds = %if.then.i44, %out.rtw_wow_clear_wakeups.exit_crit_edge
  %wow.i45 = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 42
  %128 = call ptr @memset(ptr %wow.i45, i32 0, i32 280)
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_active_interfaces_atomic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rtw_wow_vif_iter(ptr nocapture noundef %data, ptr nocapture noundef readnone %mac, ptr noundef %vif) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %wow = getelementptr inbounds %struct.rtw_dev, ptr %data, i32 0, i32 42
  %0 = ptrtoint ptr %wow to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wow, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %drv_priv, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %sw.bb2
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %wow to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %vif, ptr %wow, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  %pno_req = getelementptr inbounds %struct.rtw_dev, ptr %data, i32 0, i32 42, i32 6
  %8 = ptrtoint ptr %pno_req to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pno_req, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %sw.bb2.cleanup_crit_edge, label %if.then4

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %wow to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %vif, ptr %wow, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %sw.bb2.cleanup_crit_edge, %sw.bb, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rtw_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_leave_lps(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_get_lps_deep_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_leave_lps_deep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_leave_ips(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @check_hw_ready(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_download_firmware(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_fw_send_general_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_fw_send_phydm_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_stations_atomic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_wow_fw_media_status_iter(ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %mac_id = getelementptr inbounds %struct.rtw_sta_info, ptr %drv_priv, i32 0, i32 4
  %2 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mac_id, align 1
  %connect = getelementptr inbounds %struct.rtw_fw_media_status_iter_data, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %connect to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %connect, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool = icmp ne i8 %5, 0
  tail call void @rtw_fw_media_status_report(ptr noundef %1, i8 noundef zeroext %3, i1 noundef zeroext %tobool) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_fw_media_status_report(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_remove_rsvd_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_add_rsvd_page_pno(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_add_rsvd_page_sta(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_fw_download_rsvd_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_send_rsvd_page_h2c(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_fw_set_disconnect_decision_cmd(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_fw_set_keep_alive_cmd(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_fw_set_nlo_info(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_fw_update_pkt_probe_req(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_fw_channel_switch(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_fw_set_wowlan_ctrl_cmd(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_fw_set_remote_wake_ctrl_cmd(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtw_wow_check_fw_status(ptr noundef %rtwdev, i1 noundef zeroext %wow_enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 100000000
  br i1 %wow_enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 321) #7
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #7
  %hci.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %0 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hci.i, align 8
  %read8.i203 = getelementptr inbounds %struct.rtw_hci_ops, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %read8.i203 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read8.i203, align 4
  %call.i204 = tail call zeroext i8 %3(ptr noundef %rtwdev, i32 noundef 455) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i204)
  %tobool13.not205 = icmp eq i8 %call.i204, 0
  br i1 %tobool13.not205, label %if.then.cleanup_crit_edge, label %if.then.land.lhs.true_crit_edge

if.then.land.lhs.true_crit_edge:                  ; preds = %if.then
  br label %land.lhs.true

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then24.land.lhs.true_crit_edge, %if.then.land.lhs.true_crit_edge
  %call17 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call17, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call17, %add.i
  br i1 %cmp3.i, label %if.then20, label %if.then24

if.then20:                                        ; preds = %land.lhs.true
  %4 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hci.i, align 8
  %read8.i166 = getelementptr inbounds %struct.rtw_hci_ops, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %read8.i166 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read8.i166, align 4
  %call.i167 = tail call zeroext i8 %7(ptr noundef %rtwdev, i32 noundef 455) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i167)
  %phi.cmp163 = icmp eq i8 %call.i167, 0
  br i1 %phi.cmp163, label %if.then20.cleanup_crit_edge, label %if.then20.do.end126_crit_edge

if.then20.do.end126_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end126

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then24:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #7
  %8 = ptrtoint ptr %hci.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hci.i, align 8
  %read8.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %read8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read8.i, align 4
  %call.i = tail call zeroext i8 %11(ptr noundef %rtwdev, i32 noundef 455) #7
  %tobool13.not = icmp eq i8 %call.i, 0
  br i1 %tobool13.not, label %if.then24.cleanup_crit_edge, label %if.then24.land.lhs.true_crit_edge

if.then24.land.lhs.true_crit_edge:                ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 327) #7
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #7
  %hci.i.i = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 2
  %12 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i197 = getelementptr inbounds %struct.rtw_hci_ops, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %read32.i.i197 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32.i.i197, align 4
  %call.i.i198 = tail call i32 %15(ptr noundef %rtwdev, i32 noundef 288) #7
  %16 = and i32 %call.i.i198, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool56.not199 = icmp eq i32 %16, 0
  br i1 %tobool56.not199, label %if.else.if.end79_crit_edge, label %if.else.land.lhs.true60_crit_edge

if.else.land.lhs.true60_crit_edge:                ; preds = %if.else
  br label %land.lhs.true60

if.else.if.end79_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

land.lhs.true60:                                  ; preds = %if.then68.land.lhs.true60_crit_edge, %if.else.land.lhs.true60_crit_edge
  %call61 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call61, i64 %add.i)
  %cmp3.i170 = icmp sgt i64 %call61, %add.i
  br i1 %cmp3.i170, label %if.then64, label %if.then68

if.then64:                                        ; preds = %land.lhs.true60
  %17 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i174 = getelementptr inbounds %struct.rtw_hci_ops, ptr %18, i32 0, i32 13
  %19 = ptrtoint ptr %read32.i.i174 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read32.i.i174, align 4
  %call.i.i175 = tail call i32 %20(ptr noundef %rtwdev, i32 noundef 288) #7
  %21 = and i32 %call.i.i175, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %phi.cmp = icmp eq i32 %21, 0
  br i1 %phi.cmp, label %if.then64.if.end79_crit_edge, label %if.then64.do.end126_crit_edge

if.then64.do.end126_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end126

if.then64.if.end79_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.then68:                                        ; preds = %land.lhs.true60
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #7
  %22 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i = getelementptr inbounds %struct.rtw_hci_ops, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %25(ptr noundef %rtwdev, i32 noundef 288) #7
  %26 = and i32 %call.i.i, 65536
  %tobool56.not = icmp eq i32 %26, 0
  br i1 %tobool56.not, label %if.then68.if.end79_crit_edge, label %if.then68.land.lhs.true60_crit_edge

if.then68.land.lhs.true60_crit_edge:              ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true60

if.then68.if.end79_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.end79:                                         ; preds = %if.then68.if.end79_crit_edge, %if.then64.if.end79_crit_edge, %if.else.if.end79_crit_edge
  %call83 = tail call i64 @ktime_get() #7
  %add.i178 = add i64 %call83, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 332) #7
  %27 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i180200 = getelementptr inbounds %struct.rtw_hci_ops, ptr %28, i32 0, i32 13
  %29 = ptrtoint ptr %read32.i.i180200 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read32.i.i180200, align 4
  %call.i.i181201 = tail call i32 %30(ptr noundef %rtwdev, i32 noundef 644) #7
  %31 = and i32 %call.i.i181201, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool99.not202 = icmp eq i32 %31, 0
  br i1 %tobool99.not202, label %if.end79.cleanup_crit_edge, label %if.end79.land.lhs.true103_crit_edge

if.end79.land.lhs.true103_crit_edge:              ; preds = %if.end79
  br label %land.lhs.true103

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true103:                                 ; preds = %if.then111.land.lhs.true103_crit_edge, %if.end79.land.lhs.true103_crit_edge
  %call104 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call104, i64 %add.i178)
  %cmp3.i185 = icmp sgt i64 %call104, %add.i178
  br i1 %cmp3.i185, label %if.then107, label %if.then111

if.then107:                                       ; preds = %land.lhs.true103
  %32 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i189 = getelementptr inbounds %struct.rtw_hci_ops, ptr %33, i32 0, i32 13
  %34 = ptrtoint ptr %read32.i.i189 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read32.i.i189, align 4
  %call.i.i190 = tail call i32 %35(ptr noundef %rtwdev, i32 noundef 644) #7
  %36 = and i32 %call.i.i190, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %phi.cmp162 = icmp eq i32 %36, 0
  br i1 %phi.cmp162, label %if.then107.cleanup_crit_edge, label %if.then107.do.end126_crit_edge

if.then107.do.end126_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end126

if.then107.cleanup_crit_edge:                     ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then111:                                       ; preds = %land.lhs.true103
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #7
  %37 = ptrtoint ptr %hci.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hci.i.i, align 8
  %read32.i.i180 = getelementptr inbounds %struct.rtw_hci_ops, ptr %38, i32 0, i32 13
  %39 = ptrtoint ptr %read32.i.i180 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read32.i.i180, align 4
  %call.i.i181 = tail call i32 %40(ptr noundef %rtwdev, i32 noundef 644) #7
  %41 = and i32 %call.i.i181, 262144
  %tobool99.not = icmp eq i32 %41, 0
  br i1 %tobool99.not, label %if.then111.cleanup_crit_edge, label %if.then111.land.lhs.true103_crit_edge

if.then111.land.lhs.true103_crit_edge:            ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true103

if.then111.cleanup_crit_edge:                     ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end126:                                        ; preds = %if.then107.do.end126_crit_edge, %if.then64.do.end126_crit_edge, %if.then20.do.end126_crit_edge
  %cond128 = phi ptr [ @.str.48, %if.then20.do.end126_crit_edge ], [ @.str.49, %if.then64.do.end126_crit_edge ], [ @.str.49, %if.then107.do.end126_crit_edge ]
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %rtwdev, i32 0, i32 1
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.46, ptr noundef nonnull %cond128) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end126, %if.then111.cleanup_crit_edge, %if.then107.cleanup_crit_edge, %if.end79.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end126 ], [ 0, %if.then107.cleanup_crit_edge ], [ 0, %if.then20.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end79.cleanup_crit_edge ], [ 0, %if.then24.cleanup_crit_edge ], [ 0, %if.then111.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iter_keys(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtw_wow_fw_security_type_iter(ptr nocapture noundef readonly %hw, ptr noundef readnone %vif, ptr noundef readnone %sta, ptr nocapture noundef %key, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %wow = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 42
  %2 = ptrtoint ptr %wow to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wow, align 8
  %cmp.not = icmp eq ptr %3, %vif
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %4 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cipher, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %5, label %do.end [
    i32 1027073, label %if.end.sw.epilog_crit_edge
    i32 1027077, label %sw.bb1
    i32 1027074, label %sw.bb2
    i32 1027076, label %sw.bb4
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags, align 8
  %9 = or i16 %8, 4
  store i16 %9, ptr %flags, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %flags5 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %10 = ptrtoint ptr %flags5 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags5, align 8
  %12 = or i16 %11, 16
  store i16 %12, ptr %flags5, align 8
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.rtw_dev, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.44, i32 noundef %5) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb4, %sw.bb2, %sw.bb1, %if.end.sw.epilog_crit_edge
  %hw_key_type.0 = phi i8 [ 0, %do.end ], [ 4, %sw.bb4 ], [ 2, %sw.bb2 ], [ 5, %sw.bb1 ], [ 1, %if.end.sw.epilog_crit_edge ]
  %tobool.not = icmp eq ptr %sta, null
  br i1 %tobool.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %pairwise_key_type = getelementptr inbounds %struct.rtw_fw_key_type_iter_data, ptr %data, i32 0, i32 2
  %15 = ptrtoint ptr %pairwise_key_type to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %hw_key_type.0, ptr %pairwise_key_type, align 1
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %group_key_type = getelementptr inbounds %struct.rtw_fw_key_type_iter_data, ptr %data, i32 0, i32 1
  %16 = ptrtoint ptr %group_key_type to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %hw_key_type.0, ptr %group_key_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then10, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_fw_set_aoac_global_info_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_enter_ips(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_enter_lps(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_report_wowlan_wakeup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !86, !87, !89, !90, !91, !92, !94, !96, !98, !100, !102, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139}
!llvm.module.flags = !{!140, !141, !142, !143, !144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 856, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rtw_wow_suspend._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @rtw_wow_suspend._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 862, i32 3}
!10 = !{ptr @rtw_wow_suspend._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @rtw_wow_suspend._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 868, i32 3}
!14 = !{ptr @rtw_wow_suspend._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @rtw_wow_suspend._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 875, i32 3}
!18 = !{ptr @rtw_wow_suspend._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @rtw_wow_suspend._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 887, i32 3}
!22 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rtw_wow_resume._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @rtw_wow_resume._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 894, i32 3}
!27 = !{ptr @rtw_wow_resume._entry.16, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @rtw_wow_resume._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 902, i32 3}
!31 = !{ptr @rtw_wow_resume._entry.19, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @rtw_wow_resume._entry_ptr.21, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.23, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 908, i32 3}
!35 = !{ptr @rtw_wow_resume._entry.22, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @rtw_wow_resume._entry_ptr.24, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.25, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 565, i32 2}
!39 = !{ptr @.str.26, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 573, i32 2}
!41 = !{ptr @.str.27, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 690, i32 3}
!43 = !{ptr @.str.28, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @rtw_wow_enable._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @rtw_wow_enable._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.30, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 698, i32 3}
!48 = !{ptr @rtw_wow_enable._entry.29, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @rtw_wow_enable._entry_ptr.31, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.33, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 704, i32 3}
!52 = !{ptr @rtw_wow_enable._entry.32, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @rtw_wow_enable._entry_ptr.34, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.35, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 281, i32 3}
!56 = !{ptr @.str.36, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.37, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @rtw_wow_bb_stop._entry, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @rtw_wow_bb_stop._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.38, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 304, i32 3}
!62 = !{ptr @.str.39, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @rtw_wow_rx_dma_stop._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @rtw_wow_rx_dma_stop._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.40, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 518, i32 3}
!67 = !{ptr @.str.41, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @rtw_wow_swap_fw._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @rtw_wow_swap_fw._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.42, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 73, i32 3}
!72 = !{ptr @.str.43, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @rtw_wow_pattern_write_cam._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @rtw_wow_pattern_write_cam._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.44, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 374, i32 3}
!77 = !{ptr @.str.45, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @rtw_wow_fw_security_type_iter._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @rtw_wow_fw_security_type_iter._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.46, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 340, i32 2}
!82 = !{ptr @.str.47, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @rtw_wow_check_fw_status._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @rtw_wow_check_fw_status._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.48, !81, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.49, !81, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.50, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 450, i32 3}
!89 = !{ptr @.str.51, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @rtw_wow_avoid_reset_mac._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @rtw_wow_avoid_reset_mac._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.52, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 26, i32 3}
!94 = !{ptr @.str.53, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 30, i32 3}
!96 = !{ptr @.str.54, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 34, i32 3}
!98 = !{ptr @.str.55, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 38, i32 3}
!100 = !{ptr @.str.56, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 45, i32 3}
!102 = !{ptr @.str.57, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 53, i32 3}
!104 = !{ptr @.str.58, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 56, i32 3}
!106 = !{ptr @.str.59, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @rtw_wow_show_wakeup_reason._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @rtw_wow_show_wakeup_reason._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.60, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 759, i32 3}
!111 = !{ptr @.str.61, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @rtw_wow_disable._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @rtw_wow_disable._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.63, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 765, i32 3}
!116 = !{ptr @rtw_wow_disable._entry.62, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @rtw_wow_disable._entry_ptr.64, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.66, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 771, i32 3}
!120 = !{ptr @rtw_wow_disable._entry.65, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @rtw_wow_disable._entry_ptr.67, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.68, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 724, i32 3}
!124 = !{ptr @.str.69, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @rtw_wow_stop._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @rtw_wow_stop._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.71, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 730, i32 3}
!129 = !{ptr @rtw_wow_stop._entry.70, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @rtw_wow_stop._entry_ptr.72, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.74, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 736, i32 3}
!133 = !{ptr @rtw_wow_stop._entry.73, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @rtw_wow_stop._entry_ptr.75, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.76, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/realtek/rtw88/wow.c", i32 250, i32 3}
!137 = !{ptr @.str.77, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @rtw_wow_pattern_clear_cam._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @rtw_wow_pattern_clear_cam._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{i32 1, !"wchar_size", i32 2}
!141 = !{i32 1, !"min_enum_size", i32 4}
!142 = !{i32 8, !"branch-target-enforcement", i32 0}
!143 = !{i32 8, !"sign-return-address", i32 0}
!144 = !{i32 8, !"sign-return-address-all", i32 0}
!145 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!146 = !{i32 7, !"uwtable", i32 1}
!147 = !{i32 7, !"frame-pointer", i32 2}
!148 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!149 = !{i8 0, i8 2}
!150 = !{!"auto-init"}
