; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/main.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ath_hw = type { %struct.ath_ops, ptr, ptr, %struct.ath_common, %struct.ath9k_hw_version, %struct.ath9k_ops_config, %struct.ath9k_hw_capabilities, [38 x %struct.ath9k_channel], ptr, %union.anon.130, ptr, i8, i8, i8, i8, i8, i8, i16, [6 x i32], %struct.ath_nf_limits, %struct.ath_nf_limits, i16, i32, i32, i32, i16, i8, i8, i32, i32, i8, ptr, %struct.ath9k_pacal_info, %struct.ar5416Stats, [10 x %struct.ath9k_tx_queue_info], [4 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i8, i32, i32, i32, %struct.ath9k_cal_list, %struct.ath9k_cal_list, %struct.ath9k_cal_list, ptr, ptr, ptr, %union.anon.131, %union.anon.132, %union.anon.133, %union.anon.134, i16, i8, i32, i32, %struct.ath_hw_private_ops, %struct.ath_hw_ops, ptr, i32, i32, i32, i32, i32, i32, %struct.ar5416AniState, %struct.ath_btcoex_hw, i32, i8, i8, %struct.ath_hw_radar_conf, [22 x i32], i32, i32, i32, i32, i32, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], i32, i32, %struct.ath_gen_timer_table, ptr, i32, i32, i16, i16, i32, i32, i8, i32, i32, i32, i32, i8, [32 x i32], [32 x i8], i32, i32, %struct.ath9k_hw_wow, i8, ptr, ptr, i8, i8, ptr, ptr, i32, %struct.ath_dynack, i8, [36 x i8], [36 x i8], i8, i32, i32 }
%struct.ath_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.ath_cycle_counters = type { i32, i32, i32, i32 }
%struct.ath_regulatory = type { [2 x i8], i32, i16, i16, i16, i16, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ath9k_hw_version = type { i32, i16, i16, i32, i16, i16, i16, i16, i32 }
%struct.ath9k_ops_config = type { i32, i32, i8, i32, i8, i32, i32, i32, i32, i8, i32, i8, i8, i8, i16, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.ath9k_hw_capabilities = type { i32, i16, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8 }
%struct.ath9k_channel = type { ptr, i16, i16, i16 }
%union.anon.130 = type { %struct.ar5416_eeprom_def }
%struct.ar5416_eeprom_def = type { %struct.base_eep_header, [64 x i8], [2 x %struct.modal_eep_header], [8 x i8], [4 x i8], [3 x [8 x %struct.cal_data_per_freq]], [3 x [4 x %struct.cal_data_per_freq]], [8 x %struct.cal_target_power_leg], [8 x %struct.cal_target_power_ht], [8 x %struct.cal_target_power_ht], [3 x %struct.cal_target_power_leg], [4 x %struct.cal_target_power_leg], [4 x %struct.cal_target_power_ht], [4 x %struct.cal_target_power_ht], [24 x i8], [24 x %struct.cal_ctl_data], i8 }
%struct.base_eep_header = type <{ i16, i16, i16, i8, i8, [2 x i16], [6 x i8], i8, i8, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [21 x i8] }>
%struct.modal_eep_header = type { [3 x i32], i32, [3 x i8], i8, [3 x i8], [3 x i8], i8, i8, [3 x i8], i8, i8, i8, i8, [3 x i8], i8, i8, [3 x i8], [3 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8], [3 x i8], i8, [3 x i8], [3 x i8], i8, i8, i8, i8, [3 x i16], [6 x i8], [5 x %struct.spur_chan] }
%struct.spur_chan = type { i16, i8, i8 }
%struct.cal_data_per_freq = type { [4 x [5 x i8]], [4 x [5 x i8]] }
%struct.cal_target_power_leg = type { i8, [4 x i8] }
%struct.cal_target_power_ht = type { i8, [8 x i8] }
%struct.cal_ctl_data = type { [3 x [8 x %struct.cal_ctl_edges]] }
%struct.cal_ctl_edges = type { i8, i8 }
%struct.ath_nf_limits = type { i16, i16, i16, [3 x i16], [3 x i16] }
%struct.ath9k_pacal_info = type { i32, i8, i8 }
%struct.ar5416Stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ath9k_mib_stats }
%struct.ath9k_mib_stats = type { i32, i32, i32, i32, i32 }
%struct.ath9k_tx_queue_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.ath9k_cal_list = type { ptr, i32, ptr }
%union.anon.131 = type { [3 x i32] }
%union.anon.132 = type { [3 x i32] }
%union.anon.133 = type { [3 x i32] }
%union.anon.134 = type { [3 x i32] }
%struct.ath_hw_private_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ar5416AniState = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, %struct.ath9k_ani_default }
%struct.ath9k_ani_default = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.ath_btcoex_hw = type { i32, %struct.ath9k_hw_mci, %struct.ath9k_hw_aic, i8, i8, i8, i8, i32, i32, i32, i32, [4 x i32], [4 x i32], [5 x i8] }
%struct.ath9k_hw_mci = type { i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ath9k_hw_aic = type { i8, i8, i8, [79 x i32], i32 }
%struct.ath_hw_radar_conf = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.ar5416IniArray = type { ptr, i32, i32 }
%struct.ath_gen_timer_table = type { [16 x ptr], i16, i8 }
%struct.ath9k_hw_wow = type { i32, i32, i8 }
%struct.ath_dynack = type { i8, i32, i32, %struct.list_head, %struct.spinlock, %struct.ath_dyn_rxbuf, %struct.ath_dyn_txbuf }
%struct.list_head = type { ptr, ptr }
%struct.ath_dyn_rxbuf = type { i16, i16, [64 x i32] }
%struct.ath_dyn_txbuf = type { i16, i16, [64 x %struct.haddr_pair], [64 x %struct.ts_info] }
%struct.haddr_pair = type { [6 x i8], [6 x i8] }
%struct.ts_info = type { i32, i32 }
%struct.ath_softc = type { ptr, ptr, ptr, [38 x %struct.survey_info], %struct.spinlock, %struct.tasklet_struct, %struct.tasklet_struct, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.completion, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.ath_chanctx_sched, %struct.ath_offchannel, ptr, %struct.completion, %struct.timespec64, i32, i8, i32, i16, i8, i8, i16, i32, %struct.ath_rx, %struct.ath_tx, %struct.ath_beacon, %struct.cfg80211_chan_def, [2 x %struct.ath_chanctx], ptr, %struct.spinlock, i8, [32 x i8], %struct.led_classdev, %struct.ath9k_debug, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.ath_btcoex, %struct.ath_mci_coex, %struct.work_struct, %struct.ath_descdma, %struct.ath_ant_comb, i8, i8, ptr, i64, i32, %struct.ath_spec_scan_priv, ptr, ptr, i8, i16, i32, i8, i32, ptr }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ath_chanctx_sched = type { i8, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i32, i32, %struct.timer_list }
%struct.ath_offchannel = type { %struct.ath_chanctx, %struct.timer_list, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.ath_chanctx = type { %struct.cfg80211_chan_def, %struct.list_head, [4 x %struct.ath_acq], i32, ptr, %struct.ath_beacon_config, %struct.ath9k_hw_cal_data, %struct.timespec64, i64, i32, i32, i16, i16, i8, i8, i8, i8, i8, i16, i16, i32 }
%struct.ath_acq = type { %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.ath_beacon_config = type { ptr, i32, i16, i16, i8, i8, i8, i32, i32 }
%struct.ath9k_hw_cal_data = type { i16, i16, i32, i32, i8, i8, [2 x i8], [3 x i16], [3 x [24 x i32]], [3 x i32], [8 x [3 x i32]], [3 x [16 x i32]], [3 x [6 x i32]], [6 x %struct.ath9k_nfcal_hist] }
%struct.ath9k_nfcal_hist = type { [5 x i16], i8, i16, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.timespec64 = type { i64, i32 }
%struct.ath_rx = type { i8, i8, i8, ptr, i32, %struct.list_head, %struct.ath_descdma, [2 x %struct.ath_rx_edma], ptr, ptr, i32 }
%struct.ath_rx_edma = type { %struct.sk_buff_head, i32 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.ath_tx = type { i32, %struct.spinlock, %struct.list_head, [10 x %struct.ath_txq], %struct.ath_descdma, [4 x ptr], ptr, [4 x [4 x [32 x i16]]] }
%struct.ath_txq = type { i32, i32, ptr, %struct.list_head, %struct.spinlock, i32, i32, i8, [8 x %struct.list_head], i8, i8, i32, %struct.sk_buff_head }
%struct.ath_beacon = type { i32, i32, i32, [8 x ptr], i32, i32, %struct.ath_descdma, ptr, %struct.list_head, i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ath9k_debug = type { ptr, i32, %struct.ath_stats }
%struct.ath_stats = type { %struct.ath_interrupt_stats, [10 x %struct.ath_tx_stats], %struct.ath_rx_stats, %struct.ath_dfs_stats, [2 x %struct.ath_antenna_stats], [14 x i32] }
%struct.ath_interrupt_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_tx_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_rx_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [39 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_dfs_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_antenna_stats = type { i32, i32, [4 x i32], [4 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ath_btcoex = type { %struct.spinlock, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ath_mci_profile, i8 }
%struct.ath_mci_profile = type { %struct.list_head, [1 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ath_mci_coex = type { %struct.ath_mci_buf, %struct.ath_mci_buf }
%struct.ath_mci_buf = type { ptr, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ath_descdma = type { ptr, i32, i32 }
%struct.ath_ant_comb = type { i16, i16, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i8, i8, i32, i32, i32 }
%struct.ath_spec_scan_priv = type { ptr, ptr, i32, %struct.ath_spec_scan }
%struct.ath_spec_scan = type { i8, i8, i8, i8, i8, i8 }
%struct.ath9k_vif_iter_data = type { [6 x i8], [6 x i8], i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.ath_vif = type { %struct.list_head, i16, [6 x i8], i16, i8, ptr, %struct.ath_node, i32, i64, ptr, ptr, %struct.ieee80211_noa_data, i8, i32, i32, i32, i32, i8, i8 }
%struct.ath_node = type { ptr, ptr, ptr, i16, i8, i8, i8, i8, %struct.ath_rx_rate_stats, [4 x i8], i32, %struct.list_head }
%struct.ath_rx_rate_stats = type { [24 x %struct.anon.138], [8 x %struct.anon.139], [4 x %struct.anon.140] }
%struct.anon.138 = type { i32, i32, i32, i32 }
%struct.anon.139 = type { i32 }
%struct.anon.140 = type { i32, i32 }
%struct.ieee80211_noa_data = type { i32, i8, i8, [4 x i8], [4 x %struct.anon.141] }
%struct.anon.141 = type { i32, i32, i32 }
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.135, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.135 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.136] }
%struct.anon.136 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ieee80211_scan_request = type { %struct.ieee80211_scan_ies, %struct.cfg80211_scan_request }
%struct.ieee80211_scan_ies = type { [6 x ptr], [6 x i32], ptr, i32 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.ieee80211_chanctx_conf = type { %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i8, [0 x i8] }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ath_tx_control = type { ptr, ptr, ptr, i8 }
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
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.ath_tx_status = type { i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i32, i32, i32, i32, i32, i32 }
%struct.ath_buf = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, [4 x %struct.ieee80211_tx_rate], %struct.ath_buf_state }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.ath_buf_state = type { i8, i8, i8, i8, i16, i32 }
%struct.ieee80211_ampdu_params = type { i32, ptr, i16, i16, i16, i8, i16 }
%struct.ieee80211_txq = type { ptr, ptr, i8, i8, [2 x i8], [0 x i8] }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"FATAL: Skipping interrupts\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"BB_WATCHDOG: Skipping interrupts\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"GTT: Skipping interrupts\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"TSFOOR - Sync with next Beacon\0A\00", [32 x i8] zeroinitializer }, align 32
@ath_isr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ath/ath9k/main.c\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"macaddr: %pM, bssid: %pM, bssidmask: %pM\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Device has been unplugged!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Device not present\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Flush timeout: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@ath9k_ops = dso_local global { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @ath9k_tx, ptr @ath9k_start, ptr @ath9k_stop, ptr @ath9k_suspend, ptr @ath9k_resume, ptr @ath9k_set_wakeup, ptr @ath9k_add_interface, ptr @ath9k_change_interface, ptr @ath9k_remove_interface, ptr @ath9k_config, ptr @ath9k_bss_info_changed, ptr null, ptr null, ptr null, ptr @ath9k_configure_filter, ptr null, ptr null, ptr @ath9k_set_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ath9k_sw_scan_start, ptr @ath9k_sw_scan_complete, ptr @ath9k_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ath9k_sta_add_debugfs, ptr @ath9k_sta_notify, ptr null, ptr @ath9k_sta_state, ptr null, ptr null, ptr null, ptr null, ptr @ath9k_conf_tx, ptr @ath9k_get_tsf, ptr @ath9k_set_tsf, ptr null, ptr @ath9k_reset_tsf, ptr @ath9k_tx_last_beacon, ptr @ath9k_ampdu_action, ptr @ath9k_get_survey, ptr @ath9k_rfkill_poll_state, ptr @ath9k_set_coverage_class, ptr null, ptr null, ptr @ath9k_flush, ptr null, ptr @ath9k_set_antenna, ptr @ath9k_get_antenna, ptr null, ptr null, ptr null, ptr null, ptr @ath9k_tx_frames_pending, ptr null, ptr null, ptr null, ptr @ath9k_release_buffered_frames, ptr @ath9k_get_et_sset_count, ptr @ath9k_get_et_stats, ptr @ath9k_get_et_strings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ath9k_get_txpower, ptr null, ptr null, ptr null, ptr @ath9k_wake_tx_queue, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Reset to %u MHz, HT40: %d fastcc: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unable to reset channel, reset status %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Primary Station interface: %pM, BSSID: %pM\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"HW scan request received on vif: %pM\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Starting HW scan\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cancel HW scan on vif: %pM\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"RoC request on vif: %pM, type: %d duration: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Starting RoC period\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Cancel RoC\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Add channel context: %d MHz\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Remove channel context: %d MHz\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Change channel context: %d MHz\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Assign VIF (addr: %pM, type: %d, p2p: %d) to channel context: %d MHz\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: Aborting RoC\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.ath9k_cancel_pending_offchannel = private unnamed_addr constant [32 x i8] c"ath9k_cancel_pending_offchannel\00", align 1
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Aborting HW scan\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Remove VIF (addr: %pM, type: %d, p2p: %d) from channel context: %d MHz\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to send new NoA\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: Set chanctx state to FORCE_ACTIVE for vif: %pM\0A\00", [44 x i8] zeroinitializer }, align 32
@__func__.ath9k_mgd_prepare_tx = private unnamed_addr constant [21 x i8] c"ath9k_mgd_prepare_tx\00", align 1
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Add PM=1 for a TX frame while in PS mode\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Sending PS-Poll to pick a buffered frame\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Wake up to complete TX\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"TX while HW is in FULL_SLEEP mode\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"transmitting packet, skb: %p\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TX failed\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Starting driver with initial channel: %d MHz\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Unable to reset hardware; reset status %d (freq %u MHz)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Driver halt\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Attach a VIF of type: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Detach Interface\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Monitor mode is enabled\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Monitor mode is disabled\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"BSSID %pM Changed ASSOC %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"vif %pM power %d dbm power_type %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Set HW RX filter: 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@ath9k_modparam_nohwcrypt = external dso_local local_unnamed_addr global i32, align 4
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Set HW Key %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Add station: %pM\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Remove station: %pM\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"Configure tx [queue/halq] [%d/%d], aifs: %d, cw_min: %d, cw_max: %d, txop: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TXQ Update failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unknown AMPDU action\0A\00", [42 x i8] zeroinitializer }, align 32
@switch.table.ath9k_parse_mpdudensity = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01\01\01\02\04\08\10", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 512, i64 768]
@__sancov_gen_cov_switch_values.52 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 7, i64 11]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 7]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 1027074, i64 1027076]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.60 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.61 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 512, i64 768]
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 400, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 415, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 427, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 439, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 580, i32 8 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1269, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2205, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2210, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2221, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [10 x i8] c"ath9k_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2770, i32 22 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 325, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 330, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1138, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2441, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2445, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2461, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2490, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2495, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2513, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2546, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2570, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2590, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2611, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2403, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2412, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2642, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2708, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2719, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 87, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 772, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 789, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 793, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 810, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 818, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 821, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 664, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 690, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 986, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1347, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1421, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1531, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1534, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1883, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1934, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1589, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1795, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1658, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1663, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1739, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1747, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.223 = private constant [41 x i8] c"../drivers/net/wireless/ath/ath9k/main.c\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 2054, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [37 x i8] c"switch.table.ath9k_parse_mpdudensity\00", align 1
@llvm.compiler.used = appending global [55 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @ath9k_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @init_completion.__key, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @switch.table.ath9k_parse_mpdudensity], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath9k_parse_mpdudensity to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @ath9k_parse_mpdudensity(i8 noundef zeroext %mpdudensity) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i8 %mpdudensity, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %switch.tableidx)
  %0 = icmp ult i8 %switch.tableidx, 7
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [7 x i8], ptr @switch.table.ath9k_parse_mpdudensity, i32 0, i32 %1
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %2)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i8 [ 0, %entry.return_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_ps_full_sleep(ptr nocapture noundef readonly %t) local_unnamed_addr #1 align 64 {
entry:
  %reset = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr i8, ptr %t, i32 -9720
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reset) #10
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %reset, align 1, !annotation !117
  %cc_lock = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 19
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cc_lock) #10
  tail call void @ath_hw_cycle_counters_update(ptr noundef %common.i) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cc_lock, i32 noundef %call4) #10
  %3 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sc_ah, align 4
  %call9 = tail call zeroext i1 @ath9k_hw_setrxabort(ptr noundef %4, i1 noundef zeroext true) #10
  %5 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sc_ah, align 4
  %call11 = call zeroext i1 @ath9k_hw_stopdmarecv(ptr noundef %6, ptr noundef nonnull %reset) #10
  %7 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sc_ah, align 4
  %call13 = call zeroext i1 @ath9k_hw_setpower(ptr noundef %8, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reset) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_hw_cycle_counters_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_setrxabort(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_stopdmarecv(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_setpower(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_ps_wakeup(ptr noundef %sc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %sc_pm_lock = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sc_pm_lock) #10
  %ps_usecount = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 33
  %2 = ptrtoint ptr %ps_usecount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ps_usecount, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %ps_usecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.not = icmp eq i32 %3, 0
  br i1 %cmp6.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end:                                           ; preds = %entry
  %sleep_timer = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 47
  %call8 = tail call i32 @del_timer_sync(ptr noundef %sleep_timer) #10
  %4 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc_ah, align 4
  %power_mode10 = getelementptr inbounds %struct.ath_hw, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %power_mode10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %power_mode10, align 4
  %call12 = tail call zeroext i1 @ath9k_hw_setpower(ptr noundef %5, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp13.not = icmp eq i32 %7, 0
  br i1 %cmp13.not, label %if.end.unlock_crit_edge, label %if.then15

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %cc_lock = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 19
  tail call void @_raw_spin_lock(ptr noundef %cc_lock) #10
  tail call void @ath_hw_cycle_counters_update(ptr noundef %common.i) #10
  %cc_ani = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 20
  %8 = call ptr @memset(ptr %cc_ani, i32 0, i32 32)
  tail call void @_raw_spin_unlock(ptr noundef %cc_lock) #10
  br label %unlock

unlock:                                           ; preds = %if.then15, %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sc_pm_lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_ps_restore(ptr noundef %sc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %sc_pm_lock = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sc_pm_lock) #10
  %ps_usecount = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 33
  %2 = ptrtoint ptr %ps_usecount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ps_usecount, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %ps_usecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp6.not = icmp eq i32 %dec, 0
  br i1 %cmp6.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end:                                           ; preds = %entry
  %ps_idle = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 31
  %4 = ptrtoint ptr %ps_idle to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ps_idle, align 1, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sleep_timer = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %6, 10
  %call9 = tail call i32 @mod_timer(ptr noundef %sleep_timer, i32 noundef %add) #10
  br label %unlock

if.end10:                                         ; preds = %if.end
  %ps_enabled = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 30
  %7 = ptrtoint ptr %ps_enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ps_enabled, align 2, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool11.not = icmp eq i8 %8, 0
  br i1 %tobool11.not, label %if.end10.unlock_crit_edge, label %land.lhs.true

if.end10.unlock_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

land.lhs.true:                                    ; preds = %if.end10
  %ps_flags = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 29
  %9 = ptrtoint ptr %ps_flags to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ps_flags, align 4
  %11 = and i16 %10, 47
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool14.not = icmp eq i16 %11, 0
  br i1 %tobool14.not, label %if.then15, label %land.lhs.true.unlock_crit_edge

land.lhs.true.unlock_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.then15:                                        ; preds = %land.lhs.true
  %12 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sc_ah, align 4
  %enabled.i = getelementptr inbounds %struct.ath_hw, ptr %13, i32 0, i32 72, i32 3
  %14 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enabled.i, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.i.not = icmp eq i8 %15, 0
  br i1 %tobool.i.not, label %if.then15.if.end20_crit_edge, label %if.then18

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ath9k_btcoex_stop_gen_timer(ptr noundef %sc) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then15.if.end20_crit_edge
  %cc_lock = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 19
  tail call void @_raw_spin_lock(ptr noundef %cc_lock) #10
  tail call void @ath_hw_cycle_counters_update(ptr noundef %common.i) #10
  tail call void @_raw_spin_unlock(ptr noundef %cc_lock) #10
  %16 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sc_ah, align 4
  %call23 = tail call zeroext i1 @ath9k_hw_setpower(ptr noundef %17, i32 noundef 2) #10
  br label %unlock

unlock:                                           ; preds = %if.end20, %land.lhs.true.unlock_crit_edge, %if.end10.unlock_crit_edge, %if.then8, %entry.unlock_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sc_pm_lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_btcoex_stop_gen_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_cancel_work(ptr noundef %sc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %paprd_work.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 14
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %paprd_work.i) #10
  %hw_check_work.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 45
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %hw_check_work.i) #10
  %hw_pll_work.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 46
  %call2.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %hw_pll_work.i) #10
  %sc_ah.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah.i, align 4
  %btcoex_enabled.i.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %btcoex_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %btcoex_enabled.i.i, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i.i, label %entry.__ath_cancel_work.exit_crit_edge, label %ath9k_hw_mci_is_enabled.exit.i

entry.__ath_cancel_work.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ath_cancel_work.exit

ath9k_hw_mci_is_enabled.exit.i:                   ; preds = %entry
  %caps.i.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps.i.i, align 4
  %and.i.i = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.i.not.i, label %ath9k_hw_mci_is_enabled.exit.i.__ath_cancel_work.exit_crit_edge, label %if.then.i

ath9k_hw_mci_is_enabled.exit.i.__ath_cancel_work.exit_crit_edge: ; preds = %ath9k_hw_mci_is_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ath_cancel_work.exit

if.then.i:                                        ; preds = %ath9k_hw_mci_is_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %mci_work.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 50
  %call4.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %mci_work.i) #10
  br label %__ath_cancel_work.exit

__ath_cancel_work.exit:                           ; preds = %if.then.i, %ath9k_hw_mci_is_enabled.exit.i.__ath_cancel_work.exit_crit_edge, %entry.__ath_cancel_work.exit_crit_edge
  %hw_reset_work = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 15
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %hw_reset_work) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_restart_work(ptr noundef %sc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 8
  %hw_check_work = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 45
  tail call void @ieee80211_queue_delayed_work(ptr noundef %1, ptr noundef %hw_check_work, i32 noundef 1000) #10
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %macVersion, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.if.end_crit_edge [
    i32 768, label %entry.if.then_crit_edge
    i32 512, label %entry.if.then_crit_edge12
  ]

entry.if.then_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge12
  %7 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sc, align 8
  %hw_pll_work = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 46
  tail call void @ieee80211_queue_delayed_work(ptr noundef %8, ptr noundef %hw_pll_work, i32 noundef 10) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @ath_start_ani(ptr noundef %sc) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_start_ani(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_tasklet(ptr noundef %t) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -2796
  %sc_ah = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %intr_lock = getelementptr i8, ptr %t, i32 -44
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %intr_lock) #10
  %intrstatus = getelementptr i8, ptr %t, i32 1924
  %2 = ptrtoint ptr %intrstatus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intrstatus, align 8
  store i32 0, ptr %intrstatus, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %intr_lock, i32 noundef %call4) #10
  tail call void @ath9k_ps_wakeup(ptr noundef %add.ptr)
  %sc_pcu_lock = getelementptr i8, ptr %t, i32 148
  tail call void @_raw_spin_lock(ptr noundef %sc_pcu_lock) #10
  %and = and i32 %3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end15, label %if.then

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc_ah, align 4
  %arrayidx.i = getelementptr i8, ptr %t, i32 9524
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %arrayidx.i, align 4
  tail call void @ath9k_hw_kill_interrupts(ptr noundef %5) #10
  %op_flags.i = getelementptr inbounds %struct.ath_hw, ptr %5, i32 0, i32 3, i32 5
  tail call void @_set_bit(i32 noundef 4, ptr noundef %op_flags.i) #10
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 8
  %hw_reset_work.i = getelementptr i8, ptr %t, i32 328
  tail call void @ieee80211_queue_work(ptr noundef %9, ptr noundef %hw_reset_work.i) #10
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug_mask, align 4
  %and10 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then.out_crit_edge, label %if.then12

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1) #10
  br label %out

if.end15:                                         ; preds = %entry
  %hw_hang_checks = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 5, i32 15
  %12 = ptrtoint ptr %hw_hang_checks to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hw_hang_checks, align 2
  %14 = and i16 %13, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool18.not = icmp eq i16 %14, 0
  %and19 = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %or.cond = select i1 %tobool18.not, i1 true, i1 %tobool20.not
  br i1 %or.cond, label %if.end15.if.end47_crit_edge, label %do.body23

if.end15.if.end47_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

do.body23:                                        ; preds = %if.end15
  %cc_lock = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 19
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cc_lock) #10
  tail call void @ath_hw_cycle_counters_update(ptr noundef %common.i) #10
  tail call void @ar9003_hw_bb_watchdog_dbg_info(ptr noundef %1) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cc_lock, i32 noundef %call30) #10
  %call36 = tail call zeroext i1 @ar9003_hw_bb_watchdog_check(ptr noundef %1) #10
  br i1 %call36, label %if.then37, label %do.body23.if.end47_crit_edge

do.body23.if.end47_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then37:                                        ; preds = %do.body23
  %15 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sc_ah, align 4
  %arrayidx.i193 = getelementptr i8, ptr %t, i32 9520
  %17 = ptrtoint ptr %arrayidx.i193 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i193, align 4
  %inc.i194 = add i32 %18, 1
  store i32 %inc.i194, ptr %arrayidx.i193, align 4
  tail call void @ath9k_hw_kill_interrupts(ptr noundef %16) #10
  %op_flags.i195 = getelementptr inbounds %struct.ath_hw, ptr %16, i32 0, i32 3, i32 5
  tail call void @_set_bit(i32 noundef 4, ptr noundef %op_flags.i195) #10
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 8
  %hw_reset_work.i196 = getelementptr i8, ptr %t, i32 328
  tail call void @ieee80211_queue_work(ptr noundef %20, ptr noundef %hw_reset_work.i196) #10
  %debug_mask39 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %debug_mask39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %debug_mask39, align 4
  %and40 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.then37.out_crit_edge, label %if.then42

if.then37.out_crit_edge:                          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then42:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.2) #10
  br label %out

if.end47:                                         ; preds = %do.body23.if.end47_crit_edge, %if.end15.if.end47_crit_edge
  %and48 = and i32 %3, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end47.do.body69_crit_edge, label %if.then50

if.end47.do.body69_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body69

if.then50:                                        ; preds = %if.end47
  %gtt_cnt = getelementptr i8, ptr %t, i32 1920
  %23 = ptrtoint ptr %gtt_cnt to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %gtt_cnt, align 4
  %inc = add i8 %24, 1
  store i8 %inc, ptr %gtt_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %inc)
  %cmp53 = icmp ugt i8 %inc, 4
  br i1 %cmp53, label %land.lhs.true55, label %if.then50.do.body69_crit_edge

if.then50.do.body69_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body69

land.lhs.true55:                                  ; preds = %if.then50
  %call56 = tail call zeroext i1 @ath9k_hw_check_alive(ptr noundef %1) #10
  br i1 %call56, label %land.lhs.true55.do.body69_crit_edge, label %if.then57

land.lhs.true55.do.body69_crit_edge:              ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body69

if.then57:                                        ; preds = %land.lhs.true55
  %25 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sc_ah, align 4
  %arrayidx.i198 = getelementptr i8, ptr %t, i32 9532
  %27 = ptrtoint ptr %arrayidx.i198 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i198, align 4
  %inc.i199 = add i32 %28, 1
  store i32 %inc.i199, ptr %arrayidx.i198, align 4
  tail call void @ath9k_hw_kill_interrupts(ptr noundef %26) #10
  %op_flags.i200 = getelementptr inbounds %struct.ath_hw, ptr %26, i32 0, i32 3, i32 5
  tail call void @_set_bit(i32 noundef 4, ptr noundef %op_flags.i200) #10
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 8
  %hw_reset_work.i201 = getelementptr i8, ptr %t, i32 328
  tail call void @ieee80211_queue_work(ptr noundef %30, ptr noundef %hw_reset_work.i201) #10
  %debug_mask59 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %31 = ptrtoint ptr %debug_mask59 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %debug_mask59, align 4
  %and60 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.then57.out_crit_edge, label %if.then62

if.then57.out_crit_edge:                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then62:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.3) #10
  br label %out

do.body69:                                        ; preds = %land.lhs.true55.do.body69_crit_edge, %if.then50.do.body69_crit_edge, %if.end47.do.body69_crit_edge
  %sc_pm_lock = getelementptr i8, ptr %t, i32 104
  %call76 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sc_pm_lock) #10
  %and81 = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %do.body69.if.end97_crit_edge, label %land.lhs.true83

do.body69.if.end97_crit_edge:                     ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97

land.lhs.true83:                                  ; preds = %do.body69
  %ps_enabled = getelementptr i8, ptr %t, i32 1930
  %33 = ptrtoint ptr %ps_enabled to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ps_enabled, align 2, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool84.not = icmp eq i8 %34, 0
  br i1 %tobool84.not, label %land.lhs.true83.if.end97_crit_edge, label %do.body87

land.lhs.true83.if.end97_crit_edge:               ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97

do.body87:                                        ; preds = %land.lhs.true83
  %debug_mask88 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %debug_mask88 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %debug_mask88, align 4
  %and89 = and i32 %36, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %do.body87.do.end94_crit_edge, label %if.then91

do.body87.do.end94_crit_edge:                     ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end94

if.then91:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.4) #10
  br label %do.end94

do.end94:                                         ; preds = %if.then91, %do.body87.do.end94_crit_edge
  %ps_flags = getelementptr i8, ptr %t, i32 1928
  %37 = ptrtoint ptr %ps_flags to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %ps_flags, align 4
  %39 = or i16 %38, 17
  store i16 %39, ptr %ps_flags, align 4
  br label %if.end97

if.end97:                                         ; preds = %do.end94, %land.lhs.true83.if.end97_crit_edge, %do.body69.if.end97_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sc_pm_lock, i32 noundef %call76) #10
  %caps = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 6
  %40 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %caps, align 4
  %and99 = and i32 %41, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  %. = select i1 %tobool100.not, i32 49, i32 51
  %and103 = and i32 %., %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.end97.if.end117_crit_edge, label %if.then105

if.end97.if.end117_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end117

if.then105:                                       ; preds = %if.end97
  %and111 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  %or.cond191 = select i1 %tobool100.not, i1 true, i1 %tobool112.not
  br i1 %or.cond191, label %if.then105.if.end115_crit_edge, label %if.then113

if.then105.if.end115_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

if.then113:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #12
  %call114 = tail call i32 @ath_rx_tasklet(ptr noundef %add.ptr, i32 noundef 0, i1 noundef zeroext true) #10
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %if.then105.if.end115_crit_edge
  %call116 = tail call i32 @ath_rx_tasklet(ptr noundef %add.ptr, i32 noundef 0, i1 noundef zeroext false) #10
  br label %if.end117

if.end117:                                        ; preds = %if.end115, %if.end97.if.end117_crit_edge
  %and118 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.end117.if.end129_crit_edge, label %if.then120

if.end117.if.end129_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end129

if.then120:                                       ; preds = %if.end117
  %42 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %caps, align 4
  %and123 = and i32 %43, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %if.else127, label %if.then125

if.then125:                                       ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #12
  %gtt_cnt126 = getelementptr i8, ptr %t, i32 1920
  %44 = ptrtoint ptr %gtt_cnt126 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %gtt_cnt126, align 4
  tail call void @ath_tx_edma_tasklet(ptr noundef %add.ptr) #10
  br label %if.end128

if.else127:                                       ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ath_tx_tasklet(ptr noundef %add.ptr) #10
  br label %if.end128

if.end128:                                        ; preds = %if.else127, %if.then125
  %tx_wait = getelementptr i8, ptr %t, i32 428
  tail call void @__wake_up(ptr noundef %tx_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end129

if.end129:                                        ; preds = %if.end128, %if.end117.if.end129_crit_edge
  %and130 = and i32 %3, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %if.end129.if.end134_crit_edge, label %if.then132

if.end129.if.end134_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end134

if.then132:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sc_ah, align 4
  tail call void @ath_gen_timer_isr(ptr noundef %46) #10
  br label %if.end134

if.end134:                                        ; preds = %if.then132, %if.end129.if.end134_crit_edge
  tail call void @ath9k_btcoex_handle_interrupt(ptr noundef %add.ptr, i32 noundef %3) #10
  tail call void @ath9k_hw_resume_interrupts(ptr noundef %1) #10
  br label %out

out:                                              ; preds = %if.end134, %if.then62, %if.then57.out_crit_edge, %if.then42, %if.then37.out_crit_edge, %if.then12, %if.then.out_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sc_pcu_lock) #10
  tail call void @ath9k_ps_restore(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_queue_reset(ptr noundef %sc, i32 noundef %type) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %arrayidx = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 5, i32 %type
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %arrayidx, align 4
  %4 = load ptr, ptr %sc_ah, align 4
  tail call void @ath9k_hw_kill_interrupts(ptr noundef %4) #10
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  tail call void @_set_bit(i32 noundef 4, ptr noundef %op_flags) #10
  %5 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sc, align 8
  %hw_reset_work = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 15
  tail call void @ieee80211_queue_work(ptr noundef %6, ptr noundef %hw_reset_work) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ar9003_hw_bb_watchdog_dbg_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ar9003_hw_bb_watchdog_check(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_check_alive(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_rx_tasklet(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_tx_edma_tasklet(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_tx_tasklet(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_gen_timer_isr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_btcoex_handle_interrupt(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_resume_interrupts(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath_isr(i32 noundef %irq, ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  %status = alloca i32, align 4
  %sync_cause = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !117
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sync_cause) #10
  %3 = ptrtoint ptr %sync_cause to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %sync_cause, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  %4 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %op_flags, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call zeroext i1 @ath9k_hw_intrpend(ptr noundef nonnull %1) #10
  br i1 %call3, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %get_isr.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 63, i32 4
  %6 = ptrtoint ptr %get_isr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_isr.i, align 4
  %call1.i = call zeroext i1 %7(ptr noundef nonnull %1, ptr noundef nonnull %status, ptr noundef nonnull %sync_cause) #10
  %8 = ptrtoint ptr %sync_cause to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sync_cause, align 4
  call void @ath9k_debug_sync_cause(ptr noundef %dev, i32 noundef %9) #10
  %imask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 36
  %10 = ptrtoint ptr %imask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %imask, align 4
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  %and = and i32 %13, %11
  store i32 %and, ptr %status, align 4
  %14 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %op_flags, align 4
  %16 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool9.not = icmp eq i32 %16, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sc_ah, align 4
  call void @ath9k_hw_kill_interrupts(ptr noundef %18) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %intr_lock = getelementptr inbounds %struct.ath_softc, ptr %dev, i32 0, i32 4
  call void @_raw_spin_lock(ptr noundef %intr_lock) #10
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status, align 4
  %intrstatus = getelementptr inbounds %struct.ath_softc, ptr %dev, i32 0, i32 28
  %21 = ptrtoint ptr %intrstatus to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %intrstatus, align 8
  %or = or i32 %22, %20
  store i32 %or, ptr %intrstatus, align 8
  call void @_raw_spin_unlock(ptr noundef %intr_lock) #10
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status, align 4
  %and17 = and i32 %24, 2080638579
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %and21 = and i32 %24, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end15.chip_reset_crit_edge

if.end15.chip_reset_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %chip_reset

if.end24:                                         ; preds = %if.end15
  %hw_hang_checks = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 5, i32 15
  %25 = ptrtoint ptr %hw_hang_checks to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %hw_hang_checks, align 2
  %27 = and i16 %26, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool26.not = icmp eq i16 %27, 0
  %and27 = and i32 %24, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %or.cond = select i1 %tobool26.not, i1 true, i1 %tobool28.not
  br i1 %or.cond, label %if.end30, label %if.end24.chip_reset_crit_edge

if.end24.chip_reset_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %chip_reset

if.end30:                                         ; preds = %if.end24
  %and31 = and i32 %24, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end34_crit_edge, label %if.then33

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %bcon_tasklet = getelementptr inbounds %struct.ath_softc, ptr %dev, i32 0, i32 6
  call fastcc void @tasklet_schedule(ptr noundef %bcon_tasklet)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end30.if.end34_crit_edge
  %28 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %status, align 4
  %and35 = and i32 %29, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end39_crit_edge, label %if.then37

if.end34.if.end39_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %call38 = call zeroext i1 @ath9k_hw_updatetxtriglevel(ptr noundef nonnull %1, i1 noundef zeroext true) #10
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end34.if.end39_crit_edge
  %30 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %status, align 4
  %and40 = and i32 %31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end45_crit_edge, label %if.then42

if.end39.if.end45_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %imask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %imask, align 4
  %and44 = and i32 %33, -49
  store i32 %and44, ptr %imask, align 4
  call void @ath9k_hw_set_interrupts(ptr noundef nonnull %1) #10
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end39.if.end45_crit_edge
  %caps = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 6
  %34 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %caps, align 4
  %and46 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.then48, label %if.end45.chip_reset_crit_edge

if.end45.chip_reset_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %chip_reset

if.then48:                                        ; preds = %if.end45
  %36 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %status, align 4
  %and49 = and i32 %37, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.then48.chip_reset_crit_edge, label %if.then51

if.then48.chip_reset_crit_edge:                   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  br label %chip_reset

if.then51:                                        ; preds = %if.then48
  %ps_idle = getelementptr inbounds %struct.ath_softc, ptr %dev, i32 0, i32 31
  %38 = ptrtoint ptr %ps_idle to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ps_idle, align 1, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool52.not = icmp eq i8 %39, 0
  br i1 %tobool52.not, label %if.end93.critedge, label %land.rhs

land.rhs:                                         ; preds = %if.then51
  %.b138 = load i1, ptr @ath_isr.__already_done, align 1
  br i1 %.b138, label %land.rhs.chip_reset_crit_edge, label %if.then61, !prof !119

land.rhs.chip_reset_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %chip_reset

if.then61:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ath_isr.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 580, i32 noundef 9, ptr noundef null) #10
  br label %chip_reset

if.end93.critedge:                                ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @ath9k_setpower(ptr noundef %dev)
  %sc_pm_lock = getelementptr inbounds %struct.ath_softc, ptr %dev, i32 0, i32 11
  call void @_raw_spin_lock(ptr noundef %sc_pm_lock) #10
  %40 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sc_ah, align 4
  %call96 = call zeroext i1 @ath9k_hw_setrxabort(ptr noundef %41, i1 noundef zeroext false) #10
  %ps_flags = getelementptr inbounds %struct.ath_softc, ptr %dev, i32 0, i32 29
  %42 = ptrtoint ptr %ps_flags to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %ps_flags, align 4
  %44 = or i16 %43, 1
  store i16 %44, ptr %ps_flags, align 4
  call void @_raw_spin_unlock(ptr noundef %sc_pm_lock) #10
  br label %chip_reset

chip_reset:                                       ; preds = %if.end93.critedge, %if.then61, %land.rhs.chip_reset_crit_edge, %if.then48.chip_reset_crit_edge, %if.end45.chip_reset_crit_edge, %if.end24.chip_reset_crit_edge, %if.end15.chip_reset_crit_edge
  %45 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %status, align 4
  call void @ath_debug_stat_interrupt(ptr noundef %dev, i32 noundef %46) #10
  br i1 %tobool18.not, label %chip_reset.cleanup_crit_edge, label %if.then104

chip_reset.cleanup_crit_edge:                     ; preds = %chip_reset
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then104:                                       ; preds = %chip_reset
  call void @ath9k_hw_kill_interrupts(ptr noundef nonnull %1) #10
  %state.i = getelementptr inbounds %struct.ath_softc, ptr %dev, i32 0, i32 5, i32 1
  %call.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then104.cleanup_crit_edge

if.then104.cleanup_crit_edge:                     ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #12
  %intr_tq = getelementptr inbounds %struct.ath_softc, ptr %dev, i32 0, i32 5
  call void @__tasklet_schedule(ptr noundef %intr_tq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then104.cleanup_crit_edge, %chip_reset.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then10, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then10 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ 1, %chip_reset.cleanup_crit_edge ], [ 1, %if.then104.cleanup_crit_edge ], [ 1, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sync_cause) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_intrpend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_debug_sync_cause(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_kill_interrupts(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tasklet_schedule(ptr noundef %t) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.tasklet_struct, ptr %t, i32 0, i32 1
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__tasklet_schedule(ptr noundef %t) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_updatetxtriglevel(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_set_interrupts(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath9k_setpower(ptr noundef %sc) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_pm_lock = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sc_pm_lock) #10
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %call5 = tail call zeroext i1 @ath9k_hw_setpower(ptr noundef %1, i32 noundef 0) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sc_pm_lock, i32 noundef %call2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_debug_stat_interrupt(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath_reset(ptr noundef %sc, ptr noundef %hchan) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  tail call void @ath9k_hw_kill_interrupts(ptr noundef %1) #10
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  tail call void @_set_bit(i32 noundef 4, ptr noundef %op_flags) #10
  tail call void @ath9k_ps_wakeup(ptr noundef %sc)
  %call2 = tail call fastcc i32 @ath_reset_internal(ptr noundef %sc, ptr noundef %hchan)
  tail call void @ath9k_ps_restore(ptr noundef %sc)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath_reset_internal(ptr noundef %sc, ptr noundef %hchan) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %paprd_work.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 14
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %paprd_work.i) #10
  %hw_check_work.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 45
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %hw_check_work.i) #10
  %hw_pll_work.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 46
  %call2.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %hw_pll_work.i) #10
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %btcoex_enabled.i.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %btcoex_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %btcoex_enabled.i.i, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i.i, label %entry.__ath_cancel_work.exit_crit_edge, label %ath9k_hw_mci_is_enabled.exit.i

entry.__ath_cancel_work.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ath_cancel_work.exit

ath9k_hw_mci_is_enabled.exit.i:                   ; preds = %entry
  %caps.i.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %caps.i.i, align 4
  %and.i.i = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.i.not.i, label %ath9k_hw_mci_is_enabled.exit.i.__ath_cancel_work.exit_crit_edge, label %if.then.i

ath9k_hw_mci_is_enabled.exit.i.__ath_cancel_work.exit_crit_edge: ; preds = %ath9k_hw_mci_is_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ath_cancel_work.exit

if.then.i:                                        ; preds = %ath9k_hw_mci_is_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %mci_work.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 50
  %call4.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %mci_work.i) #10
  br label %__ath_cancel_work.exit

__ath_cancel_work.exit:                           ; preds = %if.then.i, %ath9k_hw_mci_is_enabled.exit.i.__ath_cancel_work.exit_crit_edge, %entry.__ath_cancel_work.exit_crit_edge
  %irq = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 9
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %9) #10
  %intr_tq = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 5
  %count.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 5, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #10, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !121
  tail call void @tasklet_unlock_wait(ptr noundef %intr_tq) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !122
  %bcon_tasklet = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 6
  %count.i.i91 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 6, i32 2
  %call.i.i.i.i92 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i91, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i.i91, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i91, ptr %count.i.i91, i32 1, ptr elementtype(i32) %count.i.i91) #10, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !121
  tail call void @tasklet_unlock_wait(ptr noundef %bcon_tasklet) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !122
  %sc_pcu_lock = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %sc_pcu_lock) #10
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %12 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cur_chan, align 8
  %offchannel = getelementptr inbounds %struct.ath_chanctx, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %offchannel to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %offchannel, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  %caldata2 = getelementptr inbounds %struct.ath_chanctx, ptr %13, i32 0, i32 6
  %spec.select = select i1 %tobool.not, ptr %caldata2, ptr null
  %16 = xor i1 %tobool.not, true
  %tobool3.not = icmp eq ptr %hchan, null
  br i1 %tobool3.not, label %if.end5, label %__ath_cancel_work.exit.if.end10_crit_edge

__ath_cancel_work.exit.if.end10_crit_edge:        ; preds = %__ath_cancel_work.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end5:                                          ; preds = %__ath_cancel_work.exit
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %curchan, align 4
  %tobool6.not = icmp eq ptr %18, null
  br i1 %tobool6.not, label %if.then7, label %if.end5.if.end10_crit_edge

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sc, align 8
  %call9 = tail call ptr @ath9k_cmn_get_channel(ptr noundef %20, ptr noundef %1, ptr noundef %13) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end5.if.end10_crit_edge, %__ath_cancel_work.exit.if.end10_crit_edge
  %hchan.addr.1 = phi ptr [ %18, %if.end5.if.end10_crit_edge ], [ %call9, %if.then7 ], [ %hchan, %__ath_cancel_work.exit.if.end10_crit_edge ]
  %fastcc.2.off0 = phi i1 [ false, %if.end5.if.end10_crit_edge ], [ false, %if.then7 ], [ %16, %__ath_cancel_work.exit.if.end10_crit_edge ]
  %call11 = tail call fastcc zeroext i1 @ath_prepare_reset(ptr noundef %sc)
  %call14 = tail call zeroext i1 @ath9k_is_chanctx_enabled() #10
  %not.call14 = xor i1 %call14, true
  %21 = select i1 %not.call14, i1 %call11, i1 false
  %spec.select90 = select i1 %21, i1 %fastcc.2.off0, i1 false
  %chan_lock = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 40
  tail call void @_raw_spin_lock_bh(ptr noundef %chan_lock) #10
  %cur_chandef = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 37
  %22 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cur_chan, align 8
  %24 = call ptr @memcpy(ptr %cur_chandef, ptr %23, i32 28)
  tail call void @_raw_spin_unlock_bh(ptr noundef %chan_lock) #10
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %25 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %debug_mask, align 4
  %and = and i32 %26, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.end10.do.end_crit_edge, label %if.then21

if.end10.do.end_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then21:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %channel = getelementptr inbounds %struct.ath9k_channel, ptr %hchan.addr.1, i32 0, i32 1
  %27 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %channel, align 4
  %conv = zext i16 %28 to i32
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %hchan.addr.1, i32 0, i32 2
  %29 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %channelFlags, align 2
  %31 = and i16 %30, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool24 = icmp ne i16 %31, 0
  %lnot.ext = zext i1 %tobool24 to i32
  %conv27 = zext i1 %spec.select90 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.10, i32 noundef %conv, i32 noundef %lnot.ext, i32 noundef %conv27) #10
  br label %do.end

do.end:                                           ; preds = %if.then21, %if.end10.do.end_crit_edge
  %call30 = tail call i32 @ath9k_hw_reset(ptr noundef %1, ptr noundef %hchan.addr.1, ptr noundef %spec.select, i1 noundef zeroext %spec.select90) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.11, ptr noundef %common.i, ptr noundef nonnull @.str.12, i32 noundef %call30) #10
  tail call void @ath9k_hw_enable_interrupts(ptr noundef %1) #10
  %32 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sc_ah, align 4
  %arrayidx.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 5, i32 1
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i, align 4
  %inc.i = add i32 %35, 1
  store i32 %inc.i, ptr %arrayidx.i, align 4
  tail call void @ath9k_hw_kill_interrupts(ptr noundef %33) #10
  %op_flags.i = getelementptr inbounds %struct.ath_hw, ptr %33, i32 0, i32 3, i32 5
  tail call void @_set_bit(i32 noundef 4, ptr noundef %op_flags.i) #10
  %36 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sc, align 8
  %hw_reset_work.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 15
  tail call void @ieee80211_queue_work(ptr noundef %37, ptr noundef %hw_reset_work.i) #10
  br label %out

if.end33:                                         ; preds = %do.end
  %38 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sc_ah, align 4
  %btcoex_enabled.i = getelementptr inbounds %struct.ath_hw, ptr %39, i32 0, i32 3, i32 27
  %40 = ptrtoint ptr %btcoex_enabled.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %btcoex_enabled.i, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i = icmp eq i8 %41, 0
  br i1 %tobool.not.i, label %if.end33.if.end42_crit_edge, label %ath9k_hw_mci_is_enabled.exit

if.end33.if.end42_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

ath9k_hw_mci_is_enabled.exit:                     ; preds = %if.end33
  %caps.i = getelementptr inbounds %struct.ath_hw, ptr %39, i32 0, i32 6
  %42 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %caps.i, align 4
  %and.i = and i32 %43, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool1.i.not, label %ath9k_hw_mci_is_enabled.exit.if.end42_crit_edge, label %land.lhs.true

ath9k_hw_mci_is_enabled.exit.if.end42_crit_edge:  ; preds = %ath9k_hw_mci_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

land.lhs.true:                                    ; preds = %ath9k_hw_mci_is_enabled.exit
  %44 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cur_chan, align 8
  %offchannel38 = getelementptr inbounds %struct.ath_chanctx, ptr %45, i32 0, i32 13
  %46 = ptrtoint ptr %offchannel38 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %offchannel38, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool39.not = icmp eq i8 %47, 0
  br i1 %tobool39.not, label %land.lhs.true.if.end42_crit_edge, label %if.then41

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then41:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ath9k_mci_set_txpower(ptr noundef %sc, i1 noundef zeroext true, i1 noundef zeroext false) #10
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %land.lhs.true.if.end42_crit_edge, %ath9k_hw_mci_is_enabled.exit.if.end42_crit_edge, %if.end33.if.end42_crit_edge
  tail call fastcc void @ath_complete_reset(ptr noundef %sc, i1 noundef zeroext true)
  br label %out

out:                                              ; preds = %if.end42, %if.then32
  %48 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %49) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %sc_pcu_lock) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !123
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i91, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i.i91, i32 1, i32 3, i32 1) #10
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i91, ptr %count.i.i91, i32 1, ptr elementtype(i32) %count.i.i91) #10, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !123
  %call.i.i.i95 = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #10
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #10, !srcloc !124
  ret i32 %call30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_reset_work(ptr noundef %work) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -3124
  tail call void @ath9k_ps_wakeup(ptr noundef %add.ptr)
  %call = tail call fastcc i32 @ath_reset_internal(ptr noundef %add.ptr, ptr noundef null)
  tail call void @ath9k_ps_restore(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_calculate_iter_data(ptr nocapture noundef readonly %sc, ptr noundef readonly %ctx, ptr noundef %iter_data) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %iter_data, i32 0, i32 48)
  %mask = getelementptr %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 1
  %1 = call ptr @memset(ptr %mask, i32 255, i32 6)
  %slottime = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 3
  %2 = ptrtoint ptr %slottime to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 9, ptr %slottime, align 1
  %vifs = getelementptr inbounds %struct.ath_chanctx, ptr %ctx, i32 0, i32 1
  %3 = ptrtoint ptr %vifs to i32
  call void @__asan_load4_noabort(i32 %3)
  %avp.038 = load ptr, ptr %vifs, align 4
  %cmp.not39 = icmp eq ptr %avp.038, %vifs
  br i1 %cmp.not39, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %has_hw_macaddr.i = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 2
  %arrayidx.1.i = getelementptr [6 x i8], ptr %iter_data, i32 0, i32 1
  %arrayidx3.1.i = getelementptr %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 1, i32 1
  %arrayidx.2.i = getelementptr [6 x i8], ptr %iter_data, i32 0, i32 2
  %arrayidx3.2.i = getelementptr %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 1, i32 2
  %arrayidx.3.i = getelementptr [6 x i8], ptr %iter_data, i32 0, i32 3
  %arrayidx3.3.i = getelementptr %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 1, i32 3
  %arrayidx.4.i = getelementptr [6 x i8], ptr %iter_data, i32 0, i32 4
  %arrayidx3.4.i = getelementptr %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 1, i32 4
  %arrayidx.5.i = getelementptr [6 x i8], ptr %iter_data, i32 0, i32 5
  %arrayidx3.5.i = getelementptr %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 1, i32 5
  %nmeshes.i = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 6
  %primary_beacon_vif.i82.i = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 11
  %beacons.i89.i = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 4
  %nbcnvifs.i90.i = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 10
  %nadhocs.i = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 8
  %nocbs.i = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 9
  %nstations.i = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 7
  %primary_sta.i = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 12
  %naps.i = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %ath9k_vif_iter.exit.for.body_crit_edge, %for.body.lr.ph
  %avp.040 = phi ptr [ %avp.038, %for.body.lr.ph ], [ %avp.0, %ath9k_vif_iter.exit.for.body_crit_edge ]
  %vif = getelementptr inbounds %struct.ath_vif, ptr %avp.040, i32 0, i32 5
  %4 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vif, align 4
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %has_hw_macaddr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_hw_macaddr.i, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.else.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %iter_data to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %iter_data, align 1
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %addr, align 1
  %12 = xor i8 %9, %11
  %neg.i = xor i8 %12, -1
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mask, align 1
  %and.i = and i8 %14, %neg.i
  store i8 %and.i, ptr %mask, align 1
  %15 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.1.i, align 1
  %arrayidx1.1.i = getelementptr %struct.ieee80211_vif, ptr %5, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx1.1.i, align 1
  %19 = xor i8 %16, %18
  %neg.1.i = xor i8 %19, -1
  %20 = ptrtoint ptr %arrayidx3.1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx3.1.i, align 1
  %and.1.i = and i8 %21, %neg.1.i
  store i8 %and.1.i, ptr %arrayidx3.1.i, align 1
  %22 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.2.i, align 1
  %arrayidx1.2.i = getelementptr %struct.ieee80211_vif, ptr %5, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx1.2.i, align 1
  %26 = xor i8 %23, %25
  %neg.2.i = xor i8 %26, -1
  %27 = ptrtoint ptr %arrayidx3.2.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx3.2.i, align 1
  %and.2.i = and i8 %28, %neg.2.i
  store i8 %and.2.i, ptr %arrayidx3.2.i, align 1
  %29 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.3.i, align 1
  %arrayidx1.3.i = getelementptr %struct.ieee80211_vif, ptr %5, i32 0, i32 2, i32 3
  %31 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx1.3.i, align 1
  %33 = xor i8 %30, %32
  %neg.3.i = xor i8 %33, -1
  %34 = ptrtoint ptr %arrayidx3.3.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx3.3.i, align 1
  %and.3.i = and i8 %35, %neg.3.i
  store i8 %and.3.i, ptr %arrayidx3.3.i, align 1
  %36 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.4.i, align 1
  %arrayidx1.4.i = getelementptr %struct.ieee80211_vif, ptr %5, i32 0, i32 2, i32 4
  %38 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx1.4.i, align 1
  %40 = xor i8 %37, %39
  %neg.4.i = xor i8 %40, -1
  %41 = ptrtoint ptr %arrayidx3.4.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx3.4.i, align 1
  %and.4.i = and i8 %42, %neg.4.i
  store i8 %and.4.i, ptr %arrayidx3.4.i, align 1
  %43 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.5.i, align 1
  %arrayidx1.5.i = getelementptr %struct.ieee80211_vif, ptr %5, i32 0, i32 2, i32 5
  %45 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx1.5.i, align 1
  %47 = xor i8 %44, %46
  %neg.5.i = xor i8 %47, -1
  %48 = ptrtoint ptr %arrayidx3.5.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx3.5.i, align 1
  %and.5.i = and i8 %49, %neg.5.i
  store i8 %and.5.i, ptr %arrayidx3.5.i, align 1
  br label %if.end.i

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %50 = call ptr @memcpy(ptr %iter_data, ptr %addr, i32 6)
  %51 = ptrtoint ptr %has_hw_macaddr.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %has_hw_macaddr.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %for.body.preheader.i
  %use_short_slot.i = getelementptr inbounds %struct.ieee80211_vif, ptr %5, i32 0, i32 1, i32 16
  %52 = ptrtoint ptr %use_short_slot.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %use_short_slot.i, align 2, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool9.not.i = icmp eq i8 %53, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %slottime to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 20, ptr %slottime, align 1
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %if.end.i.if.end11.i_crit_edge
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %5, align 8
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %56, label %if.end11.i.ath9k_vif_iter.exit_crit_edge [
    i32 3, label %sw.bb.i
    i32 2, label %sw.bb17.i
    i32 11, label %sw.bb25.i
    i32 1, label %sw.bb27.i
    i32 7, label %sw.bb34.i
  ]

if.end11.i.ath9k_vif_iter.exit_crit_edge:         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_vif_iter.exit

sw.bb.i:                                          ; preds = %if.end11.i
  %58 = ptrtoint ptr %naps.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %naps.i, align 4
  %inc12.i = add i32 %59, 1
  store i32 %inc12.i, ptr %naps.i, align 4
  %enable_beacon.i = getelementptr inbounds %struct.ieee80211_vif, ptr %5, i32 0, i32 1, i32 17
  %60 = ptrtoint ptr %enable_beacon.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %enable_beacon.i, align 1, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool14.not.i = icmp eq i8 %61, 0
  br i1 %tobool14.not.i, label %sw.bb.i.ath9k_vif_iter.exit_crit_edge, label %if.then15.i

sw.bb.i.ath9k_vif_iter.exit_crit_edge:            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_vif_iter.exit

if.then15.i:                                      ; preds = %sw.bb.i
  %62 = ptrtoint ptr %primary_beacon_vif.i82.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %primary_beacon_vif.i82.i, align 4
  %tobool.not.i.i = icmp eq ptr %63, null
  br i1 %tobool.not.i.i, label %if.then15.i.if.end7.sink.split.i.i_crit_edge, label %if.else.i.i

if.then15.i.if.end7.sink.split.i.i_crit_edge:     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.sink.split.i.i

if.else.i.i:                                      ; preds = %if.then15.i
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %65)
  %cmp.not.i.i = icmp eq i32 %65, 3
  br i1 %cmp.not.i.i, label %if.else.i.i.ath9k_vif_iter_set_beacon.exit.i_crit_edge, label %land.lhs.true.i.i

if.else.i.i.ath9k_vif_iter_set_beacon.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_vif_iter_set_beacon.exit.i

land.lhs.true.i.i:                                ; preds = %if.else.i.i
  %66 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %67)
  %cmp4.i.i = icmp eq i32 %67, 3
  br i1 %cmp4.i.i, label %land.lhs.true.i.i.if.end7.sink.split.i.i_crit_edge, label %land.lhs.true.i.i.ath9k_vif_iter_set_beacon.exit.i_crit_edge

land.lhs.true.i.i.ath9k_vif_iter_set_beacon.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_vif_iter_set_beacon.exit.i

land.lhs.true.i.i.if.end7.sink.split.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.sink.split.i.i

if.end7.sink.split.i.i:                           ; preds = %land.lhs.true.i.i.if.end7.sink.split.i.i_crit_edge, %if.then15.i.if.end7.sink.split.i.i_crit_edge
  %68 = ptrtoint ptr %primary_beacon_vif.i82.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %5, ptr %primary_beacon_vif.i82.i, align 4
  br label %ath9k_vif_iter_set_beacon.exit.i

ath9k_vif_iter_set_beacon.exit.i:                 ; preds = %if.end7.sink.split.i.i, %land.lhs.true.i.i.ath9k_vif_iter_set_beacon.exit.i_crit_edge, %if.else.i.i.ath9k_vif_iter_set_beacon.exit.i_crit_edge
  %69 = ptrtoint ptr %beacons.i89.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %beacons.i89.i, align 2
  %70 = ptrtoint ptr %nbcnvifs.i90.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nbcnvifs.i90.i, align 4
  %add.i.i = add i32 %71, 1
  store i32 %add.i.i, ptr %nbcnvifs.i90.i, align 4
  br label %ath9k_vif_iter.exit

sw.bb17.i:                                        ; preds = %if.end11.i
  %72 = ptrtoint ptr %nstations.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nstations.i, align 4
  %inc18.i = add i32 %73, 1
  store i32 %inc18.i, ptr %nstations.i, align 4
  %assoc.i = getelementptr inbounds %struct.ieee80211_vif, ptr %5, i32 1, i32 1, i32 5
  %74 = ptrtoint ptr %assoc.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %assoc.i, align 2, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool19.not.i = icmp eq i8 %75, 0
  br i1 %tobool19.not.i, label %sw.bb17.i.ath9k_vif_iter.exit_crit_edge, label %land.lhs.true.i

sw.bb17.i.ath9k_vif_iter.exit_crit_edge:          ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_vif_iter.exit

land.lhs.true.i:                                  ; preds = %sw.bb17.i
  %76 = ptrtoint ptr %primary_sta.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %primary_sta.i, align 4
  %tobool21.not.i = icmp eq ptr %77, null
  br i1 %tobool21.not.i, label %if.then22.i, label %land.lhs.true.i.ath9k_vif_iter.exit_crit_edge

land.lhs.true.i.ath9k_vif_iter.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_vif_iter.exit

if.then22.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %primary_sta.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %5, ptr %primary_sta.i, align 4
  br label %ath9k_vif_iter.exit

sw.bb25.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %nocbs.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %nocbs.i, align 4
  %inc26.i = add i32 %80, 1
  store i32 %inc26.i, ptr %nocbs.i, align 4
  br label %ath9k_vif_iter.exit

sw.bb27.i:                                        ; preds = %if.end11.i
  %81 = ptrtoint ptr %nadhocs.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nadhocs.i, align 4
  %inc28.i = add i32 %82, 1
  store i32 %inc28.i, ptr %nadhocs.i, align 4
  %enable_beacon30.i = getelementptr inbounds %struct.ieee80211_vif, ptr %5, i32 0, i32 1, i32 17
  %83 = ptrtoint ptr %enable_beacon30.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %enable_beacon30.i, align 1, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool31.not.i = icmp eq i8 %84, 0
  br i1 %tobool31.not.i, label %sw.bb27.i.ath9k_vif_iter.exit_crit_edge, label %if.then32.i

sw.bb27.i.ath9k_vif_iter.exit_crit_edge:          ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_vif_iter.exit

if.then32.i:                                      ; preds = %sw.bb27.i
  %85 = ptrtoint ptr %primary_beacon_vif.i82.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %primary_beacon_vif.i82.i, align 4
  %tobool.not.i72.i = icmp eq ptr %86, null
  br i1 %tobool.not.i72.i, label %if.then32.i.if.end7.sink.split.i77.i_crit_edge, label %if.else.i74.i

if.then32.i.if.end7.sink.split.i77.i_crit_edge:   ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.sink.split.i77.i

if.else.i74.i:                                    ; preds = %if.then32.i
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %86, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %88)
  %cmp.not.i73.i = icmp eq i32 %88, 3
  br i1 %cmp.not.i73.i, label %if.else.i74.i.ath9k_vif_iter_set_beacon.exit81.i_crit_edge, label %land.lhs.true.i76.i

if.else.i74.i.ath9k_vif_iter_set_beacon.exit81.i_crit_edge: ; preds = %if.else.i74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_vif_iter_set_beacon.exit81.i

land.lhs.true.i76.i:                              ; preds = %if.else.i74.i
  %89 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %90)
  %cmp4.i75.i = icmp eq i32 %90, 3
  br i1 %cmp4.i75.i, label %land.lhs.true.i76.i.if.end7.sink.split.i77.i_crit_edge, label %land.lhs.true.i76.i.ath9k_vif_iter_set_beacon.exit81.i_crit_edge

land.lhs.true.i76.i.ath9k_vif_iter_set_beacon.exit81.i_crit_edge: ; preds = %land.lhs.true.i76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_vif_iter_set_beacon.exit81.i

land.lhs.true.i76.i.if.end7.sink.split.i77.i_crit_edge: ; preds = %land.lhs.true.i76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.sink.split.i77.i

if.end7.sink.split.i77.i:                         ; preds = %land.lhs.true.i76.i.if.end7.sink.split.i77.i_crit_edge, %if.then32.i.if.end7.sink.split.i77.i_crit_edge
  %91 = ptrtoint ptr %primary_beacon_vif.i82.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %5, ptr %primary_beacon_vif.i82.i, align 4
  br label %ath9k_vif_iter_set_beacon.exit81.i

ath9k_vif_iter_set_beacon.exit81.i:               ; preds = %if.end7.sink.split.i77.i, %land.lhs.true.i76.i.ath9k_vif_iter_set_beacon.exit81.i_crit_edge, %if.else.i74.i.ath9k_vif_iter_set_beacon.exit81.i_crit_edge
  %92 = ptrtoint ptr %beacons.i89.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %beacons.i89.i, align 2
  %93 = ptrtoint ptr %nbcnvifs.i90.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %nbcnvifs.i90.i, align 4
  %add.i80.i = add i32 %94, 1
  store i32 %add.i80.i, ptr %nbcnvifs.i90.i, align 4
  br label %ath9k_vif_iter.exit

sw.bb34.i:                                        ; preds = %if.end11.i
  %95 = ptrtoint ptr %nmeshes.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %nmeshes.i, align 4
  %inc35.i = add i32 %96, 1
  store i32 %inc35.i, ptr %nmeshes.i, align 4
  %enable_beacon37.i = getelementptr inbounds %struct.ieee80211_vif, ptr %5, i32 0, i32 1, i32 17
  %97 = ptrtoint ptr %enable_beacon37.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %enable_beacon37.i, align 1, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool38.not.i = icmp eq i8 %98, 0
  br i1 %tobool38.not.i, label %sw.bb34.i.ath9k_vif_iter.exit_crit_edge, label %if.then39.i

sw.bb34.i.ath9k_vif_iter.exit_crit_edge:          ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_vif_iter.exit

if.then39.i:                                      ; preds = %sw.bb34.i
  %99 = ptrtoint ptr %primary_beacon_vif.i82.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %primary_beacon_vif.i82.i, align 4
  %tobool.not.i83.i = icmp eq ptr %100, null
  br i1 %tobool.not.i83.i, label %if.then39.i.if.end7.sink.split.i88.i_crit_edge, label %if.else.i85.i

if.then39.i.if.end7.sink.split.i88.i_crit_edge:   ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.sink.split.i88.i

if.else.i85.i:                                    ; preds = %if.then39.i
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %100, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %102)
  %cmp.not.i84.i = icmp eq i32 %102, 3
  br i1 %cmp.not.i84.i, label %if.else.i85.i.ath9k_vif_iter_set_beacon.exit92.i_crit_edge, label %land.lhs.true.i87.i

if.else.i85.i.ath9k_vif_iter_set_beacon.exit92.i_crit_edge: ; preds = %if.else.i85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_vif_iter_set_beacon.exit92.i

land.lhs.true.i87.i:                              ; preds = %if.else.i85.i
  %103 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %104)
  %cmp4.i86.i = icmp eq i32 %104, 3
  br i1 %cmp4.i86.i, label %land.lhs.true.i87.i.if.end7.sink.split.i88.i_crit_edge, label %land.lhs.true.i87.i.ath9k_vif_iter_set_beacon.exit92.i_crit_edge

land.lhs.true.i87.i.ath9k_vif_iter_set_beacon.exit92.i_crit_edge: ; preds = %land.lhs.true.i87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_vif_iter_set_beacon.exit92.i

land.lhs.true.i87.i.if.end7.sink.split.i88.i_crit_edge: ; preds = %land.lhs.true.i87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.sink.split.i88.i

if.end7.sink.split.i88.i:                         ; preds = %land.lhs.true.i87.i.if.end7.sink.split.i88.i_crit_edge, %if.then39.i.if.end7.sink.split.i88.i_crit_edge
  %105 = ptrtoint ptr %primary_beacon_vif.i82.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %5, ptr %primary_beacon_vif.i82.i, align 4
  br label %ath9k_vif_iter_set_beacon.exit92.i

ath9k_vif_iter_set_beacon.exit92.i:               ; preds = %if.end7.sink.split.i88.i, %land.lhs.true.i87.i.ath9k_vif_iter_set_beacon.exit92.i_crit_edge, %if.else.i85.i.ath9k_vif_iter_set_beacon.exit92.i_crit_edge
  %106 = ptrtoint ptr %beacons.i89.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %beacons.i89.i, align 2
  %107 = ptrtoint ptr %nbcnvifs.i90.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %nbcnvifs.i90.i, align 4
  %add.i91.i = add i32 %108, 1
  store i32 %add.i91.i, ptr %nbcnvifs.i90.i, align 4
  br label %ath9k_vif_iter.exit

ath9k_vif_iter.exit:                              ; preds = %ath9k_vif_iter_set_beacon.exit92.i, %sw.bb34.i.ath9k_vif_iter.exit_crit_edge, %ath9k_vif_iter_set_beacon.exit81.i, %sw.bb27.i.ath9k_vif_iter.exit_crit_edge, %sw.bb25.i, %if.then22.i, %land.lhs.true.i.ath9k_vif_iter.exit_crit_edge, %sw.bb17.i.ath9k_vif_iter.exit_crit_edge, %ath9k_vif_iter_set_beacon.exit.i, %sw.bb.i.ath9k_vif_iter.exit_crit_edge, %if.end11.i.ath9k_vif_iter.exit_crit_edge
  %109 = ptrtoint ptr %avp.040 to i32
  call void @__asan_load4_noabort(i32 %109)
  %avp.0 = load ptr, ptr %avp.040, align 4
  %cmp.not = icmp eq ptr %avp.0, %vifs
  br i1 %cmp.not, label %ath9k_vif_iter.exit.for.end_crit_edge, label %ath9k_vif_iter.exit.for.body_crit_edge

ath9k_vif_iter.exit.for.body_crit_edge:           ; preds = %ath9k_vif_iter.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

ath9k_vif_iter.exit.for.end_crit_edge:            ; preds = %ath9k_vif_iter.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %ath9k_vif_iter.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %sc_ah.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %110 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %sc_ah.i, align 4
  %call1.i = tail call zeroext i1 @ath9k_is_chanctx_enabled() #10
  br i1 %call1.i, label %if.end.i18, label %for.end.ath9k_update_bssid_mask.exit_crit_edge

for.end.ath9k_update_bssid_mask.exit_crit_edge:   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_update_bssid_mask.exit

if.end.i18:                                       ; preds = %for.end
  %112 = ptrtoint ptr %vifs to i32
  call void @__asan_load4_noabort(i32 %112)
  %avp.042.i = load ptr, ptr %vifs, align 4
  %cmp.not43.i = icmp eq ptr %avp.042.i, %vifs
  br i1 %cmp.not43.i, label %if.end.i18.ath9k_update_bssid_mask.exit_crit_edge, label %for.body.lr.ph.i

if.end.i18.ath9k_update_bssid_mask.exit_crit_edge: ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_update_bssid_mask.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i18
  %nvifs_assigned.i = getelementptr inbounds %struct.ath_chanctx, ptr %ctx, i32 0, i32 19
  %has_hw_macaddr.i19 = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 2
  %curbssid.i = getelementptr inbounds %struct.ath_hw, ptr %111, i32 0, i32 3, i32 10
  %add.ptr1.i.i = getelementptr %struct.ath_hw, ptr %111, i32 0, i32 3, i32 10, i32 4
  %arrayidx.1.i20 = getelementptr [6 x i8], ptr %iter_data, i32 0, i32 1
  %arrayidx17.1.i = getelementptr %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 1, i32 1
  %arrayidx.2.i21 = getelementptr [6 x i8], ptr %iter_data, i32 0, i32 2
  %arrayidx17.2.i = getelementptr %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 1, i32 2
  %arrayidx.3.i22 = getelementptr [6 x i8], ptr %iter_data, i32 0, i32 3
  %arrayidx17.3.i = getelementptr %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 1, i32 3
  %arrayidx.4.i23 = getelementptr [6 x i8], ptr %iter_data, i32 0, i32 4
  %arrayidx17.4.i = getelementptr %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 1, i32 4
  %arrayidx.5.i24 = getelementptr [6 x i8], ptr %iter_data, i32 0, i32 5
  %arrayidx17.5.i = getelementptr %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 1, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc20.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %avp.044.i = phi ptr [ %avp.042.i, %for.body.lr.ph.i ], [ %avp.0.i, %for.inc20.i.for.body.i_crit_edge ]
  %113 = ptrtoint ptr %nvifs_assigned.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %nvifs_assigned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %114)
  %cmp3.not.i = icmp eq i16 %114, 1
  br i1 %cmp3.not.i, label %if.end6.i, label %for.body.i.for.inc20.i_crit_edge

for.body.i.for.inc20.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc20.i

if.end6.i:                                        ; preds = %for.body.i
  %115 = ptrtoint ptr %has_hw_macaddr.i19 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %has_hw_macaddr.i19, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool.not.i25 = icmp eq i8 %116, 0
  br i1 %tobool.not.i25, label %if.end6.i.for.inc20.i_crit_edge, label %if.end8.i

if.end6.i.for.inc20.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc20.i

if.end8.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %bssid.i = getelementptr inbounds %struct.ath_vif, ptr %avp.044.i, i32 0, i32 2
  %117 = ptrtoint ptr %bssid.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %bssid.i, align 4
  %119 = ptrtoint ptr %curbssid.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %curbssid.i, align 4
  %add.ptr.i.i = getelementptr %struct.ath_vif, ptr %avp.044.i, i32 0, i32 2, i32 4
  %120 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %add.ptr.i.i, align 2
  %122 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %121, ptr %add.ptr1.i.i, align 2
  %123 = ptrtoint ptr %iter_data to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %iter_data, align 1
  %125 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %sc, align 8
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %wiphy.i, align 8
  %arrayidx15.i = getelementptr %struct.wiphy, ptr %128, i32 0, i32 1, i32 0
  %129 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx15.i, align 1
  %131 = xor i8 %124, %130
  %neg.i26 = xor i8 %131, -1
  %132 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %mask, align 1
  %and.i27 = and i8 %133, %neg.i26
  store i8 %and.i27, ptr %mask, align 1
  %134 = ptrtoint ptr %arrayidx.1.i20 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx.1.i20, align 1
  %136 = load ptr, ptr %sc, align 8
  %wiphy.1.i = getelementptr inbounds %struct.ieee80211_hw, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %wiphy.1.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %wiphy.1.i, align 8
  %arrayidx15.1.i = getelementptr %struct.wiphy, ptr %138, i32 0, i32 1, i32 1
  %139 = ptrtoint ptr %arrayidx15.1.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx15.1.i, align 1
  %141 = xor i8 %135, %140
  %neg.1.i28 = xor i8 %141, -1
  %142 = ptrtoint ptr %arrayidx17.1.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx17.1.i, align 1
  %and.1.i29 = and i8 %143, %neg.1.i28
  store i8 %and.1.i29, ptr %arrayidx17.1.i, align 1
  %144 = ptrtoint ptr %arrayidx.2.i21 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx.2.i21, align 1
  %146 = load ptr, ptr %sc, align 8
  %wiphy.2.i = getelementptr inbounds %struct.ieee80211_hw, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %wiphy.2.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %wiphy.2.i, align 8
  %arrayidx15.2.i = getelementptr %struct.wiphy, ptr %148, i32 0, i32 1, i32 2
  %149 = ptrtoint ptr %arrayidx15.2.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx15.2.i, align 1
  %151 = xor i8 %145, %150
  %neg.2.i30 = xor i8 %151, -1
  %152 = ptrtoint ptr %arrayidx17.2.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx17.2.i, align 1
  %and.2.i31 = and i8 %153, %neg.2.i30
  store i8 %and.2.i31, ptr %arrayidx17.2.i, align 1
  %154 = ptrtoint ptr %arrayidx.3.i22 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx.3.i22, align 1
  %156 = load ptr, ptr %sc, align 8
  %wiphy.3.i = getelementptr inbounds %struct.ieee80211_hw, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %wiphy.3.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %wiphy.3.i, align 8
  %arrayidx15.3.i = getelementptr %struct.wiphy, ptr %158, i32 0, i32 1, i32 3
  %159 = ptrtoint ptr %arrayidx15.3.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx15.3.i, align 1
  %161 = xor i8 %155, %160
  %neg.3.i32 = xor i8 %161, -1
  %162 = ptrtoint ptr %arrayidx17.3.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx17.3.i, align 1
  %and.3.i33 = and i8 %163, %neg.3.i32
  store i8 %and.3.i33, ptr %arrayidx17.3.i, align 1
  %164 = ptrtoint ptr %arrayidx.4.i23 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx.4.i23, align 1
  %166 = load ptr, ptr %sc, align 8
  %wiphy.4.i = getelementptr inbounds %struct.ieee80211_hw, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %wiphy.4.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %wiphy.4.i, align 8
  %arrayidx15.4.i = getelementptr %struct.wiphy, ptr %168, i32 0, i32 1, i32 4
  %169 = ptrtoint ptr %arrayidx15.4.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx15.4.i, align 1
  %171 = xor i8 %165, %170
  %neg.4.i34 = xor i8 %171, -1
  %172 = ptrtoint ptr %arrayidx17.4.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx17.4.i, align 1
  %and.4.i35 = and i8 %173, %neg.4.i34
  store i8 %and.4.i35, ptr %arrayidx17.4.i, align 1
  %174 = ptrtoint ptr %arrayidx.5.i24 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx.5.i24, align 1
  %176 = load ptr, ptr %sc, align 8
  %wiphy.5.i = getelementptr inbounds %struct.ieee80211_hw, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %wiphy.5.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %wiphy.5.i, align 8
  %arrayidx15.5.i = getelementptr %struct.wiphy, ptr %178, i32 0, i32 1, i32 5
  %179 = ptrtoint ptr %arrayidx15.5.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx15.5.i, align 1
  %181 = xor i8 %175, %180
  %neg.5.i36 = xor i8 %181, -1
  %182 = ptrtoint ptr %arrayidx17.5.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx17.5.i, align 1
  %and.5.i37 = and i8 %183, %neg.5.i36
  store i8 %and.5.i37, ptr %arrayidx17.5.i, align 1
  br label %for.inc20.i

for.inc20.i:                                      ; preds = %if.end8.i, %if.end6.i.for.inc20.i_crit_edge, %for.body.i.for.inc20.i_crit_edge
  %184 = ptrtoint ptr %avp.044.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %avp.0.i = load ptr, ptr %avp.044.i, align 4
  %cmp.not.i = icmp eq ptr %avp.0.i, %vifs
  br i1 %cmp.not.i, label %for.inc20.i.ath9k_update_bssid_mask.exit_crit_edge, label %for.inc20.i.for.body.i_crit_edge

for.inc20.i.for.body.i_crit_edge:                 ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc20.i.ath9k_update_bssid_mask.exit_crit_edge: ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_update_bssid_mask.exit

ath9k_update_bssid_mask.exit:                     ; preds = %for.inc20.i.ath9k_update_bssid_mask.exit_crit_edge, %if.end.i18.ath9k_update_bssid_mask.exit_crit_edge, %for.end.ath9k_update_bssid_mask.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_calculate_summary_state(ptr noundef %sc, ptr noundef %ctx) local_unnamed_addr #1 align 64 {
entry:
  %iter_data = alloca %struct.ath9k_vif_iter_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %iter_data) #10
  %2 = call ptr @memset(ptr %iter_data, i32 255, i32 48)
  tail call void @ath_chanctx_check_active(ptr noundef %sc, ptr noundef %ctx) #10
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %3 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cur_chan, align 8
  %cmp.not = icmp eq ptr %4, %ctx
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %offchannel = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22
  %cmp1 = icmp eq ptr %offchannel, %ctx
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %5 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sc_ah, align 4
  tail call void @ath9k_ps_wakeup(ptr noundef %sc) #10
  %state.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 5
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp.i = icmp ult i32 %8, 4
  %scan_vif.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 3
  %roc_vif.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 7
  %vif.0.in.i = select i1 %cmp.i, ptr %scan_vif.i, ptr %roc_vif.i
  %9 = ptrtoint ptr %vif.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %vif.0.i = load ptr, ptr %vif.0.in.i, align 4
  %tobool.not.i = icmp eq ptr %vif.0.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end27.critedge.i, !prof !125

do.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1157, i32 noundef 9, ptr noundef null) #10
  br label %ath9k_set_offchannel_state.exit

if.end27.critedge.i:                              ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %6, i32 0, i32 3
  %curbssid.i = getelementptr inbounds %struct.ath_hw, ptr %6, i32 0, i32 3, i32 10
  %10 = call ptr @memset(ptr %curbssid.i, i32 0, i32 6)
  %bssidmask.i = getelementptr inbounds %struct.ath_hw, ptr %6, i32 0, i32 3, i32 11
  %11 = call ptr @memset(ptr %bssidmask.i, i32 255, i32 6)
  %macaddr.i = getelementptr inbounds %struct.ath_hw, ptr %6, i32 0, i32 3, i32 9
  %addr.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif.0.i, i32 0, i32 2
  %12 = call ptr @memcpy(ptr %macaddr.i, ptr %addr.i, i32 6)
  %curaid.i = getelementptr inbounds %struct.ath_hw, ptr %6, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %curaid.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %curaid.i, align 2
  %14 = ptrtoint ptr %vif.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vif.0.i, align 8
  %opmode.i = getelementptr inbounds %struct.ath_hw, ptr %6, i32 0, i32 28
  %16 = ptrtoint ptr %opmode.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %opmode.i, align 4
  %imask.i = getelementptr inbounds %struct.ath_hw, ptr %6, i32 0, i32 36
  %17 = ptrtoint ptr %imask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %imask.i, align 4
  %and32.i = and i32 %18, -67174401
  store i32 %and32.i, ptr %imask.i, align 4
  %slottime.i = getelementptr inbounds %struct.ath_hw, ptr %6, i32 0, i32 66
  %19 = ptrtoint ptr %slottime.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 9, ptr %slottime.i, align 4
  tail call void @ath_hw_setbssidmask(ptr noundef %common.i.i) #10
  tail call void @ath9k_hw_setopmode(ptr noundef %6) #10
  %20 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sc_ah, align 4
  tail call void @ath9k_hw_write_associd(ptr noundef %21) #10
  tail call void @ath9k_hw_set_interrupts(ptr noundef %6) #10
  tail call void @ath9k_hw_init_global_settings(ptr noundef %6) #10
  br label %ath9k_set_offchannel_state.exit

ath9k_set_offchannel_state.exit:                  ; preds = %if.end27.critedge.i, %do.end.i
  tail call void @ath9k_ps_restore(ptr noundef %sc) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @ath9k_ps_wakeup(ptr noundef %sc)
  call void @ath9k_calculate_iter_data(ptr noundef %sc, ptr noundef %ctx, ptr noundef nonnull %iter_data)
  %has_hw_macaddr = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 2
  %22 = ptrtoint ptr %has_hw_macaddr to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %has_hw_macaddr, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not = icmp eq i8 %23, 0
  br i1 %tobool.not, label %if.end3.if.end6_crit_edge, label %if.then4

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %macaddr = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 9
  %24 = call ptr @memcpy(ptr %macaddr, ptr %iter_data, i32 6)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end3.if.end6_crit_edge
  %bssidmask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 11
  %mask = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 1
  %25 = call ptr @memcpy(ptr %bssidmask, ptr %mask, i32 6)
  call void @ath_hw_setbssidmask(ptr noundef %common.i) #10
  %naps = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 5
  %26 = ptrtoint ptr %naps to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %naps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp9 = icmp sgt i32 %27, 0
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  call void @ath9k_hw_set_tsfadjust(ptr noundef %1, i1 noundef zeroext true) #10
  %opmode = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 28
  %28 = ptrtoint ptr %opmode to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %opmode, align 4
  br label %if.end30

if.else:                                          ; preds = %if.end6
  call void @ath9k_hw_set_tsfadjust(ptr noundef %1, i1 noundef zeroext false) #10
  %beacons = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 4
  %29 = ptrtoint ptr %beacons to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %beacons, align 2, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool11.not = icmp eq i8 %30, 0
  br i1 %tobool11.not, label %if.else.if.end13_crit_edge, label %if.then12

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @ath9k_beacon_ensure_primary_slot(ptr noundef %sc) #10
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.else.if.end13_crit_edge
  %nmeshes = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 6
  %31 = ptrtoint ptr %nmeshes to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nmeshes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool14.not = icmp eq i32 %32, 0
  br i1 %tobool14.not, label %if.else17, label %if.then15

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %opmode16 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 28
  %33 = ptrtoint ptr %opmode16 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 7, ptr %opmode16, align 4
  br label %if.end30

if.else17:                                        ; preds = %if.end13
  %nocbs = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 9
  %34 = ptrtoint ptr %nocbs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nocbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool18.not = icmp eq i32 %35, 0
  br i1 %tobool18.not, label %if.else21, label %if.then19

if.then19:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #12
  %opmode20 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 28
  %36 = ptrtoint ptr %opmode20 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 11, ptr %opmode20, align 4
  br label %if.end30

if.else21:                                        ; preds = %if.else17
  %nadhocs = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 8
  %37 = ptrtoint ptr %nadhocs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nadhocs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool22.not = icmp eq i32 %38, 0
  %opmode26 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 28
  br i1 %tobool22.not, label %if.else25, label %if.then23

if.then23:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %opmode26 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %opmode26, align 4
  br label %if.end30

if.else25:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %opmode26 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %opmode26, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else25, %if.then23, %if.then19, %if.then15, %if.then10
  call void @ath9k_hw_setopmode(ptr noundef %1) #10
  %switch_after_beacon = getelementptr inbounds %struct.ath_chanctx, ptr %ctx, i32 0, i32 17
  %41 = ptrtoint ptr %switch_after_beacon to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %switch_after_beacon, align 8
  %nstations = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 7
  %42 = ptrtoint ptr %nstations to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nstations, align 4
  %nadhocs31 = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 8
  %44 = ptrtoint ptr %nadhocs31 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nadhocs31, align 4
  %add = add i32 %45, %43
  %nmeshes32 = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 6
  %46 = ptrtoint ptr %nmeshes32 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nmeshes32, align 4
  %add33 = add i32 %add, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add33)
  %cmp34 = icmp sgt i32 %add33, 0
  %imask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 36
  %48 = ptrtoint ptr %imask to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %imask, align 4
  br i1 %cmp34, label %if.then35, label %if.else36

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %49, 67108864
  %50 = ptrtoint ptr %imask to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or, ptr %imask, align 4
  br label %if.end45

if.else36:                                        ; preds = %if.end30
  %and = and i32 %49, -67108865
  %51 = ptrtoint ptr %imask to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %and, ptr %imask, align 4
  %52 = ptrtoint ptr %naps to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %naps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp39 = icmp eq i32 %53, 1
  br i1 %cmp39, label %land.lhs.true, label %if.else36.if.end45_crit_edge

if.else36.if.end45_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

land.lhs.true:                                    ; preds = %if.else36
  %beacons40 = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 4
  %54 = ptrtoint ptr %beacons40 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %beacons40, align 2, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool41.not = icmp eq i8 %55, 0
  br i1 %tobool41.not, label %land.lhs.true.if.end45_crit_edge, label %if.then42

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %switch_after_beacon to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %switch_after_beacon, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %land.lhs.true.if.end45_crit_edge, %if.else36.if.end45_crit_edge, %if.then35
  %opmode46 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 28
  %57 = ptrtoint ptr %opmode46 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %opmode46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %cmp47 = icmp eq i32 %58, 2
  br i1 %cmp47, label %if.then48, label %if.end45.if.end69_crit_edge

if.end45.if.end69_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then48:                                        ; preds = %if.end45
  %primary_sta = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 12
  %59 = ptrtoint ptr %primary_sta to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %primary_sta, align 4
  %primary_sta49 = getelementptr inbounds %struct.ath_chanctx, ptr %ctx, i32 0, i32 4
  %tobool52.not = icmp eq ptr %60, null
  br i1 %tobool52.not, label %if.else60, label %if.then53

if.then53:                                        ; preds = %if.then48
  %61 = ptrtoint ptr %primary_sta49 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %primary_sta49, align 8
  %cmp50.not = icmp eq ptr %60, %62
  %primary_beacon_vif = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 11
  %63 = ptrtoint ptr %primary_beacon_vif to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %primary_beacon_vif, align 4
  %beacons55 = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 4
  %64 = ptrtoint ptr %beacons55 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %beacons55, align 2
  %65 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sc_ah, align 4
  %common.i.i150 = getelementptr inbounds %struct.ath_hw, ptr %66, i32 0, i32 3
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %60, i32 0, i32 19
  %op_flags.i = getelementptr inbounds %struct.ath_hw, ptr %66, i32 0, i32 3, i32 5
  call void @_set_bit(i32 noundef 3, ptr noundef %op_flags.i) #10
  %curbssid.i151 = getelementptr inbounds %struct.ath_hw, ptr %66, i32 0, i32 3, i32 10
  %bssid.i = getelementptr inbounds %struct.ath_vif, ptr %drv_priv.i, i32 0, i32 2
  %67 = ptrtoint ptr %bssid.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bssid.i, align 4
  %69 = ptrtoint ptr %curbssid.i151 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %curbssid.i151, align 4
  %add.ptr.i.i = getelementptr %struct.ieee80211_vif, ptr %60, i32 1, i32 1, i32 3
  %70 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.ath_hw, ptr %66, i32 0, i32 3, i32 10, i32 4
  %72 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %add.ptr1.i.i, align 2
  %aid.i = getelementptr inbounds %struct.ieee80211_vif, ptr %60, i32 1, i32 1, i32 4
  %73 = ptrtoint ptr %aid.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %aid.i, align 8
  %curaid.i152 = getelementptr inbounds %struct.ath_hw, ptr %66, i32 0, i32 3, i32 8
  %75 = ptrtoint ptr %curaid.i152 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %curaid.i152, align 2
  %76 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sc_ah, align 4
  call void @ath9k_hw_write_associd(ptr noundef %77) #10
  br i1 %cmp50.not, label %if.then53.if.end.i_crit_edge, label %if.then.i

if.then53.if.end.i_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  %last_rssi.i = getelementptr inbounds %struct.ath_hw, ptr %66, i32 0, i32 3, i32 30
  %78 = ptrtoint ptr %last_rssi.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 127, ptr %last_rssi.i, align 4
  %79 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %sc_ah, align 4
  %avgbrssi.i = getelementptr inbounds %struct.ath_hw, ptr %80, i32 0, i32 33, i32 12
  %81 = ptrtoint ptr %avgbrssi.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 127, ptr %avgbrssi.i, align 4
  %sc_pm_lock.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 11
  %call7.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %sc_pm_lock.i) #10
  %ps_flags.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 29
  %82 = ptrtoint ptr %ps_flags.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %ps_flags.i, align 4
  %84 = or i16 %83, 17
  store i16 %84, ptr %ps_flags.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %sc_pm_lock.i, i32 noundef %call7.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then53.if.end.i_crit_edge
  %85 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sc_ah, align 4
  %btcoex_enabled.i.i = getelementptr inbounds %struct.ath_hw, ptr %86, i32 0, i32 3, i32 27
  %87 = ptrtoint ptr %btcoex_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %btcoex_enabled.i.i, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not.i.i = icmp eq i8 %88, 0
  br i1 %tobool.not.i.i, label %if.end.i.do.body17.i_crit_edge, label %ath9k_hw_mci_is_enabled.exit.i

if.end.i.do.body17.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17.i

ath9k_hw_mci_is_enabled.exit.i:                   ; preds = %if.end.i
  %caps.i.i = getelementptr inbounds %struct.ath_hw, ptr %86, i32 0, i32 6
  %89 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %caps.i.i, align 4
  %and.i.i = and i32 %90, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.i.not.i, label %ath9k_hw_mci_is_enabled.exit.i.do.body17.i_crit_edge, label %if.then15.i

ath9k_hw_mci_is_enabled.exit.i.do.body17.i_crit_edge: ; preds = %ath9k_hw_mci_is_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17.i

if.then15.i:                                      ; preds = %ath9k_hw_mci_is_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @ath9k_mci_update_wlan_channels(ptr noundef %sc, i1 noundef zeroext false) #10
  br label %do.body17.i

do.body17.i:                                      ; preds = %if.then15.i, %ath9k_hw_mci_is_enabled.exit.i.do.body17.i_crit_edge, %if.end.i.do.body17.i_crit_edge
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %66, i32 0, i32 3, i32 3
  %91 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %92, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool18.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool18.not.i, label %do.body17.i.ath9k_set_assoc_state.exit_crit_edge, label %if.then19.i

do.body17.i.ath9k_set_assoc_state.exit_crit_edge: ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_set_assoc_state.exit

if.then19.i:                                      ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #12
  %addr.i153 = getelementptr inbounds %struct.ieee80211_vif, ptr %60, i32 0, i32 2
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i150, ptr noundef nonnull @.str.13, ptr noundef %addr.i153, ptr noundef %curbssid.i151) #10
  br label %ath9k_set_assoc_state.exit

ath9k_set_assoc_state.exit:                       ; preds = %if.then19.i, %do.body17.i.ath9k_set_assoc_state.exit_crit_edge
  %93 = ptrtoint ptr %primary_sta to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %primary_sta, align 4
  %95 = ptrtoint ptr %primary_sta49 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %94, ptr %primary_sta49, align 8
  br label %if.end69

if.else60:                                        ; preds = %if.then48
  %96 = ptrtoint ptr %primary_sta49 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %primary_sta49, align 8
  %curbssid = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 10
  %97 = call ptr @memset(ptr %curbssid, i32 0, i32 6)
  %curaid = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 8
  %98 = ptrtoint ptr %curaid to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 0, ptr %curaid, align 2
  %99 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %sc_ah, align 4
  call void @ath9k_hw_write_associd(ptr noundef %100) #10
  %101 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sc_ah, align 4
  %btcoex_enabled.i = getelementptr inbounds %struct.ath_hw, ptr %102, i32 0, i32 3, i32 27
  %103 = ptrtoint ptr %btcoex_enabled.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %btcoex_enabled.i, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool.not.i154 = icmp eq i8 %104, 0
  br i1 %tobool.not.i154, label %if.else60.if.end69_crit_edge, label %ath9k_hw_mci_is_enabled.exit

if.else60.if.end69_crit_edge:                     ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

ath9k_hw_mci_is_enabled.exit:                     ; preds = %if.else60
  %caps.i = getelementptr inbounds %struct.ath_hw, ptr %102, i32 0, i32 6
  %105 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %caps.i, align 4
  %and.i155 = and i32 %106, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i155)
  %tobool1.i.not = icmp eq i32 %and.i155, 0
  br i1 %tobool1.i.not, label %ath9k_hw_mci_is_enabled.exit.if.end69_crit_edge, label %if.then66

ath9k_hw_mci_is_enabled.exit.if.end69_crit_edge:  ; preds = %ath9k_hw_mci_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then66:                                        ; preds = %ath9k_hw_mci_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @ath9k_mci_update_wlan_channels(ptr noundef %sc, i1 noundef zeroext true) #10
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %ath9k_hw_mci_is_enabled.exit.if.end69_crit_edge, %if.else60.if.end69_crit_edge, %ath9k_set_assoc_state.exit, %if.end45.if.end69_crit_edge
  %nbcnvifs = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 10
  %107 = ptrtoint ptr %nbcnvifs to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %nbcnvifs, align 4
  %conv = trunc i32 %108 to i16
  %nbcnvifs70 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 32
  %109 = ptrtoint ptr %nbcnvifs70 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %conv, ptr %nbcnvifs70, align 8
  %primary_beacon_vif71 = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 11
  %110 = ptrtoint ptr %primary_beacon_vif71 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %primary_beacon_vif71, align 4
  %beacons72 = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 4
  %112 = ptrtoint ptr %beacons72 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %beacons72, align 2, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool73 = icmp ne i8 %113, 0
  call void @ath9k_beacon_config(ptr noundef %sc, ptr noundef %111, i1 noundef zeroext %tobool73) #10
  call void @ath9k_hw_set_interrupts(ptr noundef %1) #10
  %slottime = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 66
  %114 = ptrtoint ptr %slottime to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %slottime, align 4
  %slottime74 = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 3
  %116 = ptrtoint ptr %slottime74 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %slottime74, align 1
  %conv75 = zext i8 %117 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %conv75)
  %cmp76.not = icmp eq i32 %115, %conv75
  br i1 %cmp76.not, label %if.end69.if.end82_crit_edge, label %if.then78

if.end69.if.end82_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then78:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  %118 = ptrtoint ptr %slottime to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %conv75, ptr %slottime, align 4
  call void @ath9k_hw_init_global_settings(ptr noundef %1) #10
  br label %if.end82

if.end82:                                         ; preds = %if.then78, %if.end69.if.end82_crit_edge
  %primary_sta83 = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data, i32 0, i32 12
  %119 = ptrtoint ptr %primary_sta83 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %primary_sta83, align 4
  %tobool84.not = icmp eq ptr %120, null
  %op_flags87 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  br i1 %tobool84.not, label %if.else86, label %if.then85

if.then85:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 3, ptr noundef %op_flags87) #10
  br label %do.body

if.else86:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  call void @_clear_bit(i32 noundef 3, ptr noundef %op_flags87) #10
  br label %do.body

do.body:                                          ; preds = %if.else86, %if.then85
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %121 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %debug_mask, align 4
  %and89 = and i32 %122, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %do.body.do.end_crit_edge, label %if.then91

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then91:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %macaddr92 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 9
  %curbssid94 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 10
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.6, ptr noundef %macaddr92, ptr noundef %curbssid94, ptr noundef %bssidmask) #10
  br label %do.end

do.end:                                           ; preds = %if.then91, %do.body.do.end_crit_edge
  call void @ath9k_ps_restore(ptr noundef %sc)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %ath9k_set_offchannel_state.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %iter_data) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_chanctx_check_active(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_hw_setbssidmask(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_set_tsfadjust(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_beacon_ensure_primary_slot(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_setopmode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_write_associd(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_mci_update_wlan_channels(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_beacon_config(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_init_global_settings(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_set_txpower(ptr noundef %sc, ptr noundef readonly %vif) local_unnamed_addr #1 align 64 {
entry:
  %power = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %power) #10
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  tail call void @ath9k_ps_wakeup(ptr noundef %sc)
  %tpc_enabled = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 137
  %2 = ptrtoint ptr %tpc_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tpc_enabled, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %tobool1.not = icmp eq ptr %vif, null
  br i1 %tobool1.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %txpower = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 42
  %4 = ptrtoint ptr %txpower to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %txpower, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %5, %cond.true ], [ -1, %if.then.cond.end_crit_edge ]
  %6 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %power, align 4
  %7 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sc, align 8
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %8, i32 noundef 1, ptr noundef nonnull @ath9k_tpc_vif_iter, ptr noundef nonnull %power) #10
  %9 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %power, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp = icmp eq i32 %10, -1
  br i1 %cmp, label %if.then2, label %cond.end.if.end7_crit_edge

cond.end.if.end7_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then2:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sc, align 8
  %power_level = getelementptr inbounds %struct.ieee80211_conf, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %power_level to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %power_level, align 4
  %15 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %power, align 4
  br label %if.end7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sc, align 8
  %power_level6 = getelementptr inbounds %struct.ieee80211_conf, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %power_level6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %power_level6, align 4
  %20 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %power, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then2, %cond.end.if.end7_crit_edge
  %21 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %power, align 4
  %.tr = trunc i32 %22 to i16
  %conv = shl i16 %.tr, 1
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %23 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cur_chan, align 8
  %txpower8 = getelementptr inbounds %struct.ath_chanctx, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %txpower8 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv, ptr %txpower8, align 8
  %26 = load ptr, ptr %cur_chan, align 8
  %txpower10 = getelementptr inbounds %struct.ath_chanctx, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %txpower10 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %txpower10, align 8
  %conv11 = zext i16 %28 to i32
  call void @ath9k_hw_set_txpowerlimit(ptr noundef %1, i32 noundef %conv11, i1 noundef zeroext false) #10
  %max_power_level = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 22, i32 3
  %29 = ptrtoint ptr %max_power_level to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %max_power_level, align 2
  %31 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cur_chan, align 8
  %cur_txpower = getelementptr inbounds %struct.ath_chanctx, ptr %32, i32 0, i32 12
  %33 = ptrtoint ptr %cur_txpower to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %30, ptr %cur_txpower, align 2
  call void @ath9k_ps_restore(ptr noundef %sc)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %power) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_active_interfaces_atomic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ath9k_tpc_vif_iter(ptr nocapture noundef %data, ptr nocapture noundef readnone %mac, ptr nocapture noundef readonly %vif) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %txpower = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 42
  %0 = ptrtoint ptr %txpower to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %txpower, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %1)
  %cmp = icmp eq i32 %1, -2147483648
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp3 = icmp slt i32 %3, %1
  br i1 %cmp3, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_set_txpowerlimit(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__ath9k_flush(ptr noundef %hw, i32 %queues, i1 noundef zeroext %drop, i1 noundef zeroext %sw_pending, i1 noundef zeroext %timeout_override) local_unnamed_addr #1 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  %hw_check_work = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 45
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %hw_check_work) #10
  %ah_flags = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %ah_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ah_flags, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %do.body.cleanup91_crit_edge, label %if.then6

do.body.cleanup91_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup91

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.7) #10
  br label %cleanup91

if.end7:                                          ; preds = %entry
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 5
  %8 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %op_flags, align 4
  %and1.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool9.not = icmp eq i32 %and1.i, 0
  br i1 %tobool9.not, label %if.end19, label %do.body11

do.body11:                                        ; preds = %if.end7
  %debug_mask12 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %debug_mask12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug_mask12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool14.not = icmp eq i32 %11, 0
  br i1 %tobool14.not, label %do.body11.cleanup91_crit_edge, label %if.then15

do.body11.cleanup91_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup91

if.then15:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.8) #10
  br label %cleanup91

if.end19:                                         ; preds = %if.end7
  %chan_lock = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 40
  tail call void @_raw_spin_lock_bh(ptr noundef %chan_lock) #10
  br i1 %timeout_override, label %if.end19.if.end22_crit_edge, label %if.else

if.end19.if.end22_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 39
  %12 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cur_chan, align 8
  %flush_timeout = getelementptr inbounds %struct.ath_chanctx, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %flush_timeout to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flush_timeout, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.end19.if.end22_crit_edge
  %timeout.0 = phi i32 [ %15, %if.else ], [ 20, %if.end19.if.end22_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %chan_lock) #10
  %debug_mask25 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %debug_mask25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug_mask25, align 4
  %and26 = and i32 %17, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end22.do.end32_crit_edge, label %if.then28

if.end22.do.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %call29 = tail call i32 @jiffies_to_msecs(i32 noundef %timeout.0) #10
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.9, i32 noundef %call29) #10
  br label %do.end32

do.end32:                                         ; preds = %if.then28, %if.end22.do.end32_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 2225) #10
  %call40 = tail call fastcc zeroext i1 @ath9k_has_tx_pending(ptr noundef %1, i1 noundef zeroext %sw_pending)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0)
  %tobool43.not = icmp eq i32 %timeout.0, 0
  %spec.store.select = select i1 %tobool43.not, i32 1, i32 %timeout.0
  %__ret.0 = select i1 %call40, i32 %timeout.0, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool47.not = icmp eq i32 %__ret.0, 0
  %not.call40 = xor i1 %call40, true
  %18 = select i1 %not.call40, i1 true, i1 %tobool47.not
  br i1 %18, label %do.end32.if.end76_crit_edge, label %if.then50

do.end32.if.end76_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

if.then50:                                        ; preds = %do.end32
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %19 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %tx_wait = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 17
  %call52136 = call i32 @prepare_to_wait_event(ptr noundef %tx_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %call55137 = call fastcc zeroext i1 @ath9k_has_tx_pending(ptr noundef %1, i1 noundef zeroext %sw_pending)
  %__ret51.1140 = select i1 %call55137, i32 %timeout.0, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret51.1140)
  %tobool66.not141 = icmp eq i32 %__ret51.1140, 0
  %not.call55142 = xor i1 %call55137, true
  %20 = select i1 %not.call55142, i1 true, i1 %tobool66.not141
  br i1 %20, label %if.then50.for.end_crit_edge, label %if.then50.cleanup_crit_edge

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  br label %cleanup

if.then50.for.end_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then50.cleanup_crit_edge
  %__ret51.1143 = phi i32 [ %__ret51.1, %cleanup.cleanup_crit_edge ], [ %__ret51.1140, %if.then50.cleanup_crit_edge ]
  %call73 = call i32 @schedule_timeout(i32 noundef %__ret51.1143) #10
  %call52 = call i32 @prepare_to_wait_event(ptr noundef %tx_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %call55 = call fastcc zeroext i1 @ath9k_has_tx_pending(ptr noundef %1, i1 noundef zeroext %sw_pending)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool60.not = icmp eq i32 %call73, 0
  %spec.store.select98 = select i1 %tobool60.not, i32 1, i32 %call73
  %__ret51.1 = select i1 %call55, i32 %call73, i32 %spec.store.select98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret51.1)
  %tobool66.not = icmp eq i32 %__ret51.1, 0
  %not.call55 = xor i1 %call55, true
  %21 = select i1 %not.call55, i1 true, i1 %tobool66.not
  br i1 %21, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then50.for.end_crit_edge
  %__ret51.1.lcssa = phi i32 [ %__ret51.1140, %if.then50.for.end_crit_edge ], [ %__ret51.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %tx_wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end76

if.end76:                                         ; preds = %for.end, %do.end32.if.end76_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %do.end32.if.end76_crit_edge ], [ %__ret51.1.lcssa, %for.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret.1)
  %cmp = icmp slt i32 %__ret.1, 1
  %spec.select = and i1 %cmp, %drop
  br i1 %spec.select, label %if.then81, label %if.end76.if.end89_crit_edge

if.end76.if.end89_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

if.then81:                                        ; preds = %if.end76
  call void @ath9k_ps_wakeup(ptr noundef %1)
  %sc_pcu_lock = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 12
  call void @_raw_spin_lock_bh(ptr noundef %sc_pcu_lock) #10
  %call82 = call zeroext i1 @ath_drain_all_txq(ptr noundef %1) #10
  call void @_raw_spin_unlock_bh(ptr noundef %sc_pcu_lock) #10
  br i1 %call82, label %if.then81.if.end88_crit_edge, label %if.then86

if.then81.if.end88_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

if.then86:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sc_ah, align 4
  call void @ath9k_hw_kill_interrupts(ptr noundef %23) #10
  %op_flags.i = getelementptr inbounds %struct.ath_hw, ptr %23, i32 0, i32 3, i32 5
  call void @_set_bit(i32 noundef 4, ptr noundef %op_flags.i) #10
  call void @ath9k_ps_wakeup(ptr noundef %1) #10
  %call2.i = call fastcc i32 @ath_reset_internal(ptr noundef %1, ptr noundef null) #10
  call void @ath9k_ps_restore(ptr noundef %1) #10
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %if.then81.if.end88_crit_edge
  call void @ath9k_ps_restore(ptr noundef %1)
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.end76.if.end89_crit_edge
  call void @ieee80211_queue_delayed_work(ptr noundef %hw, ptr noundef %hw_check_work, i32 noundef 1000) #10
  br label %cleanup91

cleanup91:                                        ; preds = %if.end89, %if.then15, %do.body11.cleanup91_crit_edge, %if.then6, %do.body.cleanup91_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ath9k_has_tx_pending(ptr noundef %sc, i1 noundef zeroext %sw_pending) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35
  %sw_pending.not.i = xor i1 %sw_pending, true
  %cur_chan.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %cmp23 = phi i1 [ true, %entry ], [ %cmp, %for.inc.for.body_crit_edge ]
  %i.021 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx, align 4
  %shl = shl nuw nsw i32 1, %i.021
  %and = and i32 %1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %axq_lock.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %i.021, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %axq_lock.i) #10
  %axq_depth.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %i.021, i32 5
  %2 = ptrtoint ptr %axq_depth.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %axq_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp ne i32 %3, 0
  %brmerge.i = or i1 %tobool.not.i, %sw_pending.not.i
  br i1 %brmerge.i, label %ath9k_has_pending_frames.exit, label %if.end3.i

if.end3.i:                                        ; preds = %if.end
  %arrayidx = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %i.021
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i = icmp sgt i32 %5, -1
  br i1 %cmp.i, label %if.then4.i, label %if.end3.i.ath9k_has_pending_frames.exit.thread_crit_edge

if.end3.i.ath9k_has_pending_frames.exit.thread_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_has_pending_frames.exit.thread

if.then4.i:                                       ; preds = %if.end3.i
  %6 = ptrtoint ptr %cur_chan.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_chan.i, align 8
  %arrayidx.i = getelementptr %struct.ath_chanctx, ptr %7, i32 0, i32 2, i32 %5
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %9, %arrayidx.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i, label %if.then4.i.ath9k_has_pending_frames.exit.thread16_crit_edge

if.then4.i.ath9k_has_pending_frames.exit.thread16_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_has_pending_frames.exit.thread16

lor.lhs.false.i:                                  ; preds = %if.then4.i
  %acq_old.i = getelementptr %struct.ath_chanctx, ptr %7, i32 0, i32 2, i32 %5, i32 1
  %10 = ptrtoint ptr %acq_old.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %acq_old.i, align 4
  %cmp.i20.not.i = icmp eq ptr %11, %acq_old.i
  br i1 %cmp.i20.not.i, label %lor.lhs.false.i.ath9k_has_pending_frames.exit.thread_crit_edge, label %lor.lhs.false.i.ath9k_has_pending_frames.exit.thread16_crit_edge

lor.lhs.false.i.ath9k_has_pending_frames.exit.thread16_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_has_pending_frames.exit.thread16

lor.lhs.false.i.ath9k_has_pending_frames.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_has_pending_frames.exit.thread

ath9k_has_pending_frames.exit.thread16:           ; preds = %lor.lhs.false.i.ath9k_has_pending_frames.exit.thread16_crit_edge, %if.then4.i.ath9k_has_pending_frames.exit.thread16_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %axq_lock.i) #10
  br label %for.end

ath9k_has_pending_frames.exit.thread:             ; preds = %lor.lhs.false.i.ath9k_has_pending_frames.exit.thread_crit_edge, %if.end3.i.ath9k_has_pending_frames.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %axq_lock.i) #10
  br label %for.inc

ath9k_has_pending_frames.exit:                    ; preds = %if.end
  tail call void @_raw_spin_unlock_bh(ptr noundef %axq_lock.i) #10
  br i1 %tobool.not.i, label %ath9k_has_pending_frames.exit.for.end_crit_edge, label %ath9k_has_pending_frames.exit.for.inc_crit_edge

ath9k_has_pending_frames.exit.for.inc_crit_edge:  ; preds = %ath9k_has_pending_frames.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

ath9k_has_pending_frames.exit.for.end_crit_edge:  ; preds = %ath9k_has_pending_frames.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %ath9k_has_pending_frames.exit.for.inc_crit_edge, %ath9k_has_pending_frames.exit.thread, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.021, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.021)
  %cmp = icmp ult i32 %i.021, 9
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %ath9k_has_pending_frames.exit.for.end_crit_edge, %ath9k_has_pending_frames.exit.thread16
  %cmp20 = phi i1 [ %cmp23, %ath9k_has_pending_frames.exit.thread16 ], [ %cmp, %for.inc.for.end_crit_edge ], [ %cmp23, %ath9k_has_pending_frames.exit.for.end_crit_edge ]
  ret i1 %cmp20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath_drain_all_txq(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_fill_chanctx_ops() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @ath9k_is_chanctx_enabled() #10
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  store ptr @ath9k_hw_scan, ptr getelementptr inbounds (%struct.ieee80211_ops, ptr @ath9k_ops, i32 0, i32 21), align 4
  store ptr @ath9k_cancel_hw_scan, ptr getelementptr inbounds (%struct.ieee80211_ops, ptr @ath9k_ops, i32 0, i32 22), align 4
  store ptr @ath9k_remain_on_channel, ptr getelementptr inbounds (%struct.ieee80211_ops, ptr @ath9k_ops, i32 0, i32 57), align 4
  store ptr @ath9k_cancel_remain_on_channel, ptr getelementptr inbounds (%struct.ieee80211_ops, ptr @ath9k_ops, i32 0, i32 58), align 4
  store ptr @ath9k_add_chanctx, ptr getelementptr inbounds (%struct.ieee80211_ops, ptr @ath9k_ops, i32 0, i32 72), align 4
  store ptr @ath9k_remove_chanctx, ptr getelementptr inbounds (%struct.ieee80211_ops, ptr @ath9k_ops, i32 0, i32 73), align 4
  store ptr @ath9k_change_chanctx, ptr getelementptr inbounds (%struct.ieee80211_ops, ptr @ath9k_ops, i32 0, i32 74), align 4
  store ptr @ath9k_assign_vif_chanctx, ptr getelementptr inbounds (%struct.ieee80211_ops, ptr @ath9k_ops, i32 0, i32 75), align 4
  store ptr @ath9k_unassign_vif_chanctx, ptr getelementptr inbounds (%struct.ieee80211_ops, ptr @ath9k_ops, i32 0, i32 76), align 4
  store ptr @ath9k_mgd_prepare_tx, ptr getelementptr inbounds (%struct.ieee80211_ops, ptr @ath9k_ops, i32 0, i32 69), align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_is_chanctx_enabled() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_hw_scan(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %hw_req) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  %mutex = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %scan_req = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 22, i32 2
  %4 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scan_req, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end23, label %do.end, !prof !119

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2430, i32 noundef 9, ptr noundef null) #10
  br label %out

if.end23:                                         ; preds = %entry
  %req1 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %hw_req, i32 0, i32 1
  tail call void @ath9k_ps_wakeup(ptr noundef %1)
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 5
  tail call void @_set_bit(i32 noundef 5, ptr noundef %op_flags) #10
  %scan_vif = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 22, i32 3
  %6 = ptrtoint ptr %scan_vif to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %vif, ptr %scan_vif, align 4
  %7 = ptrtoint ptr %scan_req to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %req1, ptr %scan_req, align 8
  %scan_idx = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 22, i32 4
  %8 = ptrtoint ptr %scan_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %scan_idx, align 8
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug_mask, align 4
  %and = and i32 %10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.end23.do.end33_crit_edge, label %if.then30

if.end23.do.end33_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

if.then30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.14, ptr noundef %addr) #10
  br label %do.end33

do.end33:                                         ; preds = %if.then30, %if.end23.do.end33_crit_edge
  %state = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 22, i32 5
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %do.body36, label %do.end33.out_crit_edge

do.end33.out_crit_edge:                           ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body36:                                        ; preds = %do.end33
  %13 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug_mask, align 4
  %and38 = and i32 %14, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.body36.do.end43_crit_edge, label %if.then40

do.body36.do.end43_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43

if.then40:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.15) #10
  br label %do.end43

do.end43:                                         ; preds = %if.then40, %do.body36.do.end43_crit_edge
  tail call void @ath_offchannel_next(ptr noundef %1) #10
  br label %out

out:                                              ; preds = %do.end43, %do.end33.out_crit_edge, %do.end
  %ret.0 = phi i32 [ -16, %do.end ], [ 0, %do.end43 ], [ 0, %do.end33.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_cancel_hw_scan(ptr nocapture noundef readonly %hw, ptr noundef %vif) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug_mask, align 4
  %and = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.16, ptr noundef %addr) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %mutex = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %timer = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 22, i32 1
  %call1 = tail call i32 @del_timer_sync(ptr noundef %timer) #10
  tail call void @ath_scan_complete(ptr noundef %1, i1 noundef zeroext true) #10
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_remain_on_channel(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %chan, i32 noundef %duration, i32 noundef %type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  %mutex = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %roc_vif = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 22, i32 7
  %4 = ptrtoint ptr %roc_vif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %roc_vif, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end22, label %do.end, !prof !119

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2480, i32 noundef 9, ptr noundef null) #10
  br label %out

if.end22:                                         ; preds = %entry
  tail call void @ath9k_ps_wakeup(ptr noundef %1)
  %6 = ptrtoint ptr %roc_vif to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %vif, ptr %roc_vif, align 4
  %roc_chan = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 22, i32 6
  %7 = ptrtoint ptr %roc_chan to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %chan, ptr %roc_chan, align 8
  %roc_duration = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 22, i32 8
  %8 = ptrtoint ptr %roc_duration to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %duration, ptr %roc_duration, align 8
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug_mask, align 4
  %and = and i32 %10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.end22.do.end32_crit_edge, label %if.then29

if.end22.do.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end32

if.then29:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.17, ptr noundef %addr, i32 noundef %type, i32 noundef %duration) #10
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %if.end22.do.end32_crit_edge
  %state = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 22, i32 5
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %do.body35, label %do.end32.out_crit_edge

do.end32.out_crit_edge:                           ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body35:                                        ; preds = %do.end32
  %13 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug_mask, align 4
  %and37 = and i32 %14, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %do.body35.do.end42_crit_edge, label %if.then39

do.body35.do.end42_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42

if.then39:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.18) #10
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %do.body35.do.end42_crit_edge
  tail call void @ath_offchannel_next(ptr noundef %1) #10
  br label %out

out:                                              ; preds = %do.end42, %do.end32.out_crit_edge, %do.end
  %ret.0 = phi i32 [ -16, %do.end ], [ 0, %do.end42 ], [ 0, %do.end32.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_cancel_remain_on_channel(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %mutex = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug_mask, align 4
  %and = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.19) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %timer = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 22, i32 1
  %call1 = tail call i32 @del_timer_sync(ptr noundef %timer) #10
  %roc_vif = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 22, i32 7
  %6 = ptrtoint ptr %roc_vif to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %roc_vif, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %do.end.if.end8_crit_edge, label %if.then4

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then4:                                         ; preds = %do.end
  %state = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 22, i32 5
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp = icmp ugt i32 %9, 3
  br i1 %cmp, label %if.then6, label %if.then4.if.end8_crit_edge

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ath_roc_complete(ptr noundef %1, i32 noundef 2) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then4.if.end8_crit_edge, %do.end.if.end8_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_add_chanctx(ptr nocapture noundef readonly %hw, ptr noundef %conf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  %mutex = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %chanctx = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 38
  %arrayidx2 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 38, i32 1
  %cmp.not34 = icmp ugt ptr %chanctx, %arrayidx2
  br i1 %cmp.not34, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %ctx.035 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %chanctx, %entry.for.body_crit_edge ]
  %assigned = getelementptr inbounds %struct.ath_chanctx, ptr %ctx.035, i32 0, i32 16
  %4 = ptrtoint ptr %assigned to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %assigned, align 1, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %assigned.le = getelementptr inbounds %struct.ath_chanctx, ptr %ctx.035, i32 0, i32 16
  %drv_priv = getelementptr inbounds %struct.ieee80211_chanctx_conf, ptr %conf, i32 0, i32 6
  %6 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ctx.035, ptr %drv_priv, align 4
  %7 = ptrtoint ptr %assigned.le to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %assigned.le, align 1
  %sub.ptr.lhs.cast = ptrtoint ptr %ctx.035 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %chanctx to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 1144
  %mul = shl nsw i32 %sub.ptr.div, 2
  %hw_queue_base = getelementptr inbounds %struct.ath_chanctx, ptr %ctx.035, i32 0, i32 3
  %8 = ptrtoint ptr %hw_queue_base to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %hw_queue_base, align 4
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug_mask, align 4
  %and = and i32 %10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end.do.end_crit_edge, label %if.then7

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %conf, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %center_freq, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.20, i32 noundef %14) #10
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.end.do.end_crit_edge
  tail call void @ath_chanctx_set_channel(ptr noundef %1, ptr noundef %ctx.035, ptr noundef %conf) #10
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.ath_chanctx, ptr %ctx.035, i32 1
  %cmp.not = icmp ugt ptr %incdec.ptr, %arrayidx2
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -28, %entry.cleanup_crit_edge ], [ -28, %for.inc.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_remove_chanctx(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %conf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_chanctx_conf, ptr %conf, i32 0, i32 6
  %4 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_priv.i, align 4
  %mutex = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_mask, align 4
  %and = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %conf, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %center_freq, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.21, i32 noundef %11) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %assigned = getelementptr inbounds %struct.ath_chanctx, ptr %5, i32 0, i32 16
  %12 = ptrtoint ptr %assigned to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %assigned, align 1
  %hw_queue_base = getelementptr inbounds %struct.ath_chanctx, ptr %5, i32 0, i32 3
  %13 = ptrtoint ptr %hw_queue_base to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %hw_queue_base, align 4
  tail call void @ath_chanctx_event(ptr noundef %1, ptr noundef null, i32 noundef 7) #10
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_change_chanctx(ptr nocapture noundef readonly %hw, ptr noundef %conf, i32 noundef %changed) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_chanctx_conf, ptr %conf, i32 0, i32 6
  %4 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_priv.i, align 4
  %mutex = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_mask, align 4
  %and = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %conf, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %center_freq, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.22, i32 noundef %11) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  tail call void @ath_chanctx_set_channel(ptr noundef %1, ptr noundef %5, ptr noundef %conf) #10
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_assign_vif_chanctx(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr nocapture noundef readonly %conf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_chanctx_conf, ptr %conf, i32 0, i32 6
  %4 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_priv.i, align 4
  tail call fastcc void @ath9k_cancel_pending_offchannel(ptr noundef %1)
  %mutex = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_mask, align 4
  %and = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %8 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vif, align 8
  %p2p = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %10 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %p2p, align 2, !range !118
  %12 = zext i8 %11 to i32
  %13 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %conf, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %center_freq, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.23, ptr noundef %addr, i32 noundef %9, i32 noundef %12, i32 noundef %16) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %chanctx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %chanctx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %5, ptr %chanctx, align 4
  %nvifs_assigned = getelementptr inbounds %struct.ath_chanctx, ptr %5, i32 0, i32 19
  %18 = ptrtoint ptr %nvifs_assigned to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %nvifs_assigned, align 4
  %inc = add i16 %19, 1
  store i16 %inc, ptr %nvifs_assigned, align 4
  %vifs = getelementptr inbounds %struct.ath_chanctx, ptr %5, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.ath_chanctx, ptr %5, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %drv_priv, ptr noundef %21, ptr noundef %vifs) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_add_tail.exit_crit_edge

do.end.list_add_tail.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %drv_priv, ptr %prev.i, align 4
  %23 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %vifs, ptr %drv_priv, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %drv_priv, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %drv_priv, ptr %21, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end.list_add_tail.exit_crit_edge
  tail call void @ath9k_calculate_summary_state(ptr noundef %1, ptr noundef %5)
  %hw_queue_base = getelementptr inbounds %struct.ath_chanctx, ptr %5, i32 0, i32 3
  %26 = ptrtoint ptr %hw_queue_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hw_queue_base, align 4
  %conv5 = trunc i32 %27 to i8
  %arrayidx = getelementptr %struct.ieee80211_vif, ptr %vif, i32 0, i32 7, i32 0
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv5, ptr %arrayidx, align 1
  %29 = load i32, ptr %hw_queue_base, align 4
  %30 = trunc i32 %29 to i8
  %conv5.1 = add i8 %30, 1
  %arrayidx.1 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 0, i32 7, i32 1
  %31 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv5.1, ptr %arrayidx.1, align 1
  %32 = load i32, ptr %hw_queue_base, align 4
  %33 = trunc i32 %32 to i8
  %conv5.2 = add i8 %33, 2
  %arrayidx.2 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 0, i32 7, i32 2
  %34 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv5.2, ptr %arrayidx.2, align 1
  %35 = load i32, ptr %hw_queue_base, align 4
  %36 = trunc i32 %35 to i8
  %conv5.3 = add i8 %36, 3
  %arrayidx.3 = getelementptr %struct.ieee80211_vif, ptr %vif, i32 0, i32 7, i32 3
  %37 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv5.3, ptr %arrayidx.3, align 1
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_unassign_vif_chanctx(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr nocapture noundef readonly %conf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_chanctx_conf, ptr %conf, i32 0, i32 6
  %4 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_priv.i, align 4
  tail call fastcc void @ath9k_cancel_pending_offchannel(ptr noundef %1)
  %mutex = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_mask, align 4
  %and = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %8 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vif, align 8
  %p2p = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 3
  %10 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %p2p, align 2, !range !118
  %12 = zext i8 %11 to i32
  %13 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %conf, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %center_freq, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.26, ptr noundef %addr, i32 noundef %9, i32 noundef %12, i32 noundef %16) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %chanctx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %chanctx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %chanctx, align 4
  %nvifs_assigned = getelementptr inbounds %struct.ath_chanctx, ptr %5, i32 0, i32 19
  %18 = ptrtoint ptr %nvifs_assigned to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %nvifs_assigned, align 4
  %dec = add i16 %19, -1
  store i16 %dec, ptr %nvifs_assigned, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %drv_priv) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del.exit_crit_edge

do.end.list_del.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %drv_priv, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %drv_priv, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end.list_del.exit_crit_edge
  %26 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %drv_priv, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %drv_priv, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @ath9k_calculate_summary_state(ptr noundef %1, ptr noundef %5)
  %uglygep = getelementptr i8, ptr %vif, i32 810
  %28 = ptrtoint ptr %uglygep to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 -1, ptr %uglygep, align 1
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_mgd_prepare_tx(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr nocapture noundef readnone %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 5
  %4 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %op_flags, align 4
  %6 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %chanctx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %chanctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chanctx, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %mutex = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %chan_lock = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 40
  tail call void @_raw_spin_lock_bh(ptr noundef %chan_lock) #10
  %next_chan = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 23
  %9 = ptrtoint ptr %next_chan to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %next_chan, align 8
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end4.if.end12.critedge_crit_edge

if.end4.if.end12.critedge_crit_edge:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.critedge

lor.lhs.false:                                    ; preds = %if.end4
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 39
  %11 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur_chan, align 8
  %13 = ptrtoint ptr %chanctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chanctx, align 4
  %cmp.not = icmp eq ptr %12, %14
  br i1 %cmp.not, label %if.end8, label %lor.lhs.false.if.end12.critedge_crit_edge

lor.lhs.false.if.end12.critedge_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.critedge

if.end8:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %chan_lock) #10
  br label %out

if.end12.critedge:                                ; preds = %lor.lhs.false.if.end12.critedge_crit_edge, %if.end4.if.end12.critedge_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %chan_lock) #10
  tail call fastcc void @ath9k_cancel_pending_offchannel(ptr noundef %1)
  %call13 = tail call ptr @ath_is_go_chanctx_present(ptr noundef %1) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end12.critedge.do.body34_crit_edge, label %if.then15

if.end12.critedge.do.body34_crit_edge:            ; preds = %if.end12.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body34

if.then15:                                        ; preds = %if.end12.critedge
  tail call void @_raw_spin_lock_bh(ptr noundef %chan_lock) #10
  %mgd_prepare_tx = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 21, i32 6
  %15 = ptrtoint ptr %mgd_prepare_tx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %mgd_prepare_tx, align 2
  %beacon_interval = getelementptr inbounds %struct.ath_chanctx, ptr %call13, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %beacon_interval, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %chan_lock) #10
  %mul = shl i32 %17, 11
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %mul) #10
  %go_beacon = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 24
  %18 = ptrtoint ptr %go_beacon to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %go_beacon, align 4
  %wait.i = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 24, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @init_completion.__key) #10
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  %call21 = tail call i32 @wait_for_completion_timeout(ptr noundef %go_beacon, i32 noundef %call3.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %do.body, label %if.then15.if.end31_crit_edge

if.then15.if.end31_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

do.body:                                          ; preds = %if.then15
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debug_mask, align 4
  %and = and i32 %20, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %do.body.do.end_crit_edge, label %if.then25

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.27) #10
  br label %do.end

do.end:                                           ; preds = %if.then25, %do.body.do.end_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %chan_lock) #10
  %21 = ptrtoint ptr %mgd_prepare_tx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %mgd_prepare_tx, align 2
  tail call void @_raw_spin_unlock_bh(ptr noundef %chan_lock) #10
  br label %if.end31

if.end31:                                         ; preds = %do.end, %if.then15.if.end31_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  br label %do.body34

do.body34:                                        ; preds = %if.end31, %if.end12.critedge.do.body34_crit_edge
  %debug_mask35 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %debug_mask35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %debug_mask35, align 4
  %and36 = and i32 %23, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.body34.do.end42_crit_edge, label %if.then38

do.body34.do.end42_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42

if.then38:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #12
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.ath9k_mgd_prepare_tx, ptr noundef %addr) #10
  br label %do.end42

do.end42:                                         ; preds = %if.then38, %do.body34.do.end42_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %chan_lock) #10
  %24 = ptrtoint ptr %chanctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chanctx, align 4
  %26 = ptrtoint ptr %next_chan to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %next_chan, align 8
  %state = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 21, i32 7
  %27 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %state, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %chan_lock) #10
  tail call void @ath_chanctx_set_next(ptr noundef %1, i1 noundef zeroext true) #10
  br label %out

out:                                              ; preds = %do.end42, %if.end8
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_tx(ptr noundef %hw, ptr nocapture noundef readonly %control, ptr noundef %skb) #1 align 64 {
entry:
  %txctl = alloca %struct.ath_tx_control, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %txctl) #10
  %4 = call ptr @memset(ptr %txctl, i32 255, i32 16)
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %ps_enabled = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 30
  %7 = ptrtoint ptr %ps_enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ps_enabled, align 2, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %6, align 2
  %11 = and i16 %10, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %11)
  %cmp.i = icmp ne i16 %11, 2048
  %12 = and i16 %10, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 18432, i16 %12)
  %cmp.i142 = icmp eq i16 %12, 18432
  %or.cond = or i1 %cmp.i, %cmp.i142
  %13 = and i16 %10, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp.i143 = icmp ne i16 %13, 0
  %or.cond145 = select i1 %or.cond, i1 true, i1 %cmp.i143
  br i1 %or.cond145, label %if.then.if.end13_crit_edge, label %do.body

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

do.body:                                          ; preds = %if.then
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug_mask, align 4
  %and = and i32 %15, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.body.do.end_crit_edge, label %if.then9

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.30) #10
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body.do.end_crit_edge
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %6, align 2
  %18 = or i16 %17, 16
  store i16 %18, ptr %6, align 2
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  %19 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sc_ah, align 4
  %power_mode = getelementptr inbounds %struct.ath_hw, ptr %20, i32 0, i32 29
  %21 = ptrtoint ptr %power_mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %power_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp = icmp eq i32 %22, 2
  br i1 %cmp, label %if.then18, label %if.end13.if.end64_crit_edge, !prof !125

if.end13.if.end64_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then18:                                        ; preds = %if.end13
  tail call void @ath9k_ps_wakeup(ptr noundef %1)
  %sc_pm_lock = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 11
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sc_pm_lock) #10
  %23 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sc_ah, align 4
  %caps = getelementptr inbounds %struct.ath_hw, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %caps, align 4
  %and30 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.then32, label %if.then18.if.end35_crit_edge

if.then18.if.end35_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then32:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %call34 = tail call zeroext i1 @ath9k_hw_setrxabort(ptr noundef %24, i1 noundef zeroext false) #10
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.then18.if.end35_crit_edge
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %6, align 2
  %29 = and i16 %28, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -23552, i16 %29)
  %cmp.i144 = icmp eq i16 %29, -23552
  %debug_mask40 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %debug_mask40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug_mask40, align 4
  %and41 = and i32 %31, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %. = select i1 %cmp.i144, i16 4, i16 8
  br i1 %tobool42.not, label %if.end35.if.end62_crit_edge, label %if.end62.sink.split

if.end35.if.end62_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.end62.sink.split:                              ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %.str.31..str.32 = select i1 %cmp.i144, ptr @.str.31, ptr @.str.32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull %.str.31..str.32) #10
  br label %if.end62

if.end62:                                         ; preds = %if.end62.sink.split, %if.end35.if.end62_crit_edge
  %ps_flags58 = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 29
  %32 = ptrtoint ptr %ps_flags58 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %ps_flags58, align 4
  %34 = or i16 %33, %.
  store i16 %34, ptr %ps_flags58, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sc_pm_lock, i32 noundef %call24) #10
  tail call void @ath9k_ps_restore(ptr noundef %1)
  br label %if.end64

if.end64:                                         ; preds = %if.end62, %if.end13.if.end64_crit_edge
  %35 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sc_ah, align 4
  %power_mode66 = getelementptr inbounds %struct.ath_hw, ptr %36, i32 0, i32 29
  %37 = ptrtoint ptr %power_mode66 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %power_mode66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp67 = icmp eq i32 %38, 1
  br i1 %cmp67, label %if.then75, label %if.end76, !prof !125

if.then75:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.11, ptr noundef %common.i, ptr noundef nonnull @.str.33) #10
  br label %exit

if.end76:                                         ; preds = %if.end64
  %39 = getelementptr inbounds i8, ptr %txctl, i32 4
  %40 = call ptr @memset(ptr %39, i32 0, i32 12)
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %41 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %queue_mapping.i, align 8
  %idxprom = zext i16 %42 to i32
  %arrayidx = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 35, i32 5, i32 %idxprom
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx, align 4
  %45 = ptrtoint ptr %txctl to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %txctl, align 4
  %46 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %control, align 4
  %sta78 = getelementptr inbounds %struct.ath_tx_control, ptr %txctl, i32 0, i32 2
  %48 = ptrtoint ptr %sta78 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %sta78, align 4
  %debug_mask80 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %49 = ptrtoint ptr %debug_mask80 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %debug_mask80, align 4
  %and81 = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.end76.do.end86_crit_edge, label %if.then83

if.end76.do.end86_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end86

if.then83:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.34, ptr noundef %skb) #10
  br label %do.end86

do.end86:                                         ; preds = %if.then83, %if.end76.do.end86_crit_edge
  %call87 = call i32 @ath_tx_start(ptr noundef %hw, ptr noundef %skb, ptr noundef nonnull %txctl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88.not = icmp eq i32 %call87, 0
  br i1 %cmp88.not, label %do.end86.cleanup_crit_edge, label %do.body91

do.end86.cleanup_crit_edge:                       ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body91:                                        ; preds = %do.end86
  %51 = ptrtoint ptr %debug_mask80 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %debug_mask80, align 4
  %and93 = and i32 %52, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %do.body91.do.body99_crit_edge, label %if.then95

do.body91.do.body99_crit_edge:                    ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body99

if.then95:                                        ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.35) #10
  br label %do.body99

do.body99:                                        ; preds = %if.then95, %do.body91.do.body99_crit_edge
  %53 = ptrtoint ptr %txctl to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %txctl, align 4
  %axq_qnum = getelementptr inbounds %struct.ath_txq, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %axq_qnum to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %axq_qnum, align 4
  %txfailed = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %56, i32 20
  %57 = ptrtoint ptr %txfailed to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %txfailed, align 4
  %inc = add i32 %58, 1
  store i32 %inc, ptr %txfailed, align 4
  br label %exit

exit:                                             ; preds = %do.body99, %if.then75
  call void @ieee80211_free_txskb(ptr noundef %hw, ptr noundef %skb) #10
  br label %cleanup

cleanup:                                          ; preds = %exit, %do.end86.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %txctl) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_start(ptr noundef %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 39
  %4 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_chan, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug_mask, align 4
  %and = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %center_freq, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.36, i32 noundef %11) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  tail call void @ath9k_ps_wakeup(ptr noundef %1)
  %mutex = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %call3 = tail call ptr @ath9k_cmn_get_channel(ptr noundef %hw, ptr noundef %3, ptr noundef %5) #10
  %cur_chandef = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 37
  %chandef4 = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %12 = call ptr @memcpy(ptr %cur_chandef, ptr %chandef4, i32 28)
  %aspm_enabled.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 14
  %13 = ptrtoint ptr %aspm_enabled.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %aspm_enabled.i, align 1, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %do.end.ath9k_hw_configpcipowersave.exit_crit_edge, label %if.end.i

do.end.ath9k_hw_configpcipowersave.exit_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_hw_configpcipowersave.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %ops.i.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 63
  %15 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i.i, align 4
  tail call void %16(ptr noundef %3, i1 noundef zeroext false) #10
  br label %ath9k_hw_configpcipowersave.exit

ath9k_hw_configpcipowersave.exit:                 ; preds = %if.end.i, %do.end.ath9k_hw_configpcipowersave.exit_crit_edge
  %sc_pcu_lock = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %sc_pcu_lock) #10
  %intr_ref_cnt = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 43
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %intr_ref_cnt, i32 noundef 4) #10
  %17 = ptrtoint ptr %intr_ref_cnt to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 -1, ptr %intr_ref_cnt, align 4
  %caldata = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 31
  %18 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %caldata, align 4
  %call5 = tail call i32 @ath9k_hw_reset(ptr noundef %3, ptr noundef %call3, ptr noundef %19, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %ath9k_hw_configpcipowersave.exit.if.end9_crit_edge, label %if.then7

ath9k_hw_configpcipowersave.exit.if.end9_crit_edge: ; preds = %ath9k_hw_configpcipowersave.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then7:                                         ; preds = %ath9k_hw_configpcipowersave.exit
  call void @__sanitizer_cov_trace_pc() #12
  %center_freq8 = getelementptr inbounds %struct.ieee80211_channel, ptr %7, i32 0, i32 1
  %20 = ptrtoint ptr %center_freq8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %center_freq8, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.11, ptr noundef %common.i, ptr noundef nonnull @.str.37, i32 noundef %call5, i32 noundef %21) #10
  %reset_power_on = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 26
  %22 = ptrtoint ptr %reset_power_on to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %reset_power_on, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %ath9k_hw_configpcipowersave.exit.if.end9_crit_edge
  %imask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 36
  %caps = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 6
  %23 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %caps, align 4
  %and10 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %. = select i1 %tobool11.not, i32 -1073741711, i32 -1073741709
  %25 = ptrtoint ptr %imask to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %., ptr %imask, align 4
  %hw_hang_checks = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 5, i32 15
  %26 = ptrtoint ptr %hw_hang_checks to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %hw_hang_checks, align 2
  %28 = and i16 %27, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool18.not = icmp eq i16 %28, 0
  br i1 %tobool18.not, label %if.end9.if.end22_crit_edge, label %if.then19

if.end9.if.end22_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then19:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %or21 = or i32 %., 1024
  %29 = ptrtoint ptr %imask to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or21, ptr %imask, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end9.if.end22_crit_edge
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 4, i32 3
  %30 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %31)
  %cmp = icmp ugt i32 %31, 447
  br i1 %cmp, label %if.then24, label %if.end22.if.end27_crit_edge

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %imask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %imask, align 4
  %or26 = or i32 %33, 536870912
  store i32 %or26, ptr %imask, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end22.if.end27_crit_edge
  %34 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %caps, align 4
  %and30 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end27.if.end35_crit_edge, label %if.then32

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %imask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %imask, align 4
  %or34 = or i32 %37, 268435456
  store i32 %or34, ptr %imask, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end27.if.end35_crit_edge
  tail call void @ath_mci_enable(ptr noundef %1) #10
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 5
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %op_flags) #10
  %38 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sc_ah, align 4
  %is_monitoring = getelementptr inbounds %struct.ath_hw, ptr %39, i32 0, i32 15
  %40 = ptrtoint ptr %is_monitoring to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %is_monitoring, align 4
  %41 = load ptr, ptr %sc_ah, align 4
  %42 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cur_chan, align 8
  tail call void @ath9k_calculate_summary_state(ptr noundef %1, ptr noundef %43) #10
  tail call void @ath_startrecv(ptr noundef %1) #10
  %44 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cur_chan, align 8
  %cur_txpower.i = getelementptr inbounds %struct.ath_chanctx, ptr %45, i32 0, i32 12
  %46 = ptrtoint ptr %cur_txpower.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %cur_txpower.i, align 2
  %txpower.i = getelementptr inbounds %struct.ath_chanctx, ptr %45, i32 0, i32 11
  %48 = ptrtoint ptr %txpower.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %txpower.i, align 8
  tail call void @ath9k_cmn_update_txpow(ptr noundef %41, i16 noundef zeroext %47, i16 noundef zeroext %49, ptr noundef %cur_txpower.i) #10
  %op_flags.i = getelementptr inbounds %struct.ath_hw, ptr %41, i32 0, i32 3, i32 5
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %op_flags.i) #10
  %gtt_cnt.i = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 27
  %50 = ptrtoint ptr %gtt_cnt.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %gtt_cnt.i, align 4
  tail call void @ath9k_hw_set_interrupts(ptr noundef %41) #10
  tail call void @ath9k_hw_enable_interrupts(ptr noundef %41) #10
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 8
  tail call void @ieee80211_wake_queues(ptr noundef %52) #10
  tail call void @ath9k_p2p_ps_timer(ptr noundef %1) #10
  %led_pin = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 80
  %53 = ptrtoint ptr %led_pin to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %led_pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %cmp41 = icmp sgt i32 %54, -1
  br i1 %cmp41, label %if.then43, label %if.end35.if.end49_crit_edge

if.end35.if.end49_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then43:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %led_active_high = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 5, i32 25
  %55 = ptrtoint ptr %led_active_high to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %led_active_high, align 4, !range !118
  %57 = zext i8 %56 to i32
  tail call void @ath9k_hw_set_gpio(ptr noundef %3, i32 noundef %54, i32 noundef %57) #10
  %58 = ptrtoint ptr %led_pin to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %led_pin, align 4
  tail call void @ath9k_hw_gpio_request_out(ptr noundef %3, i32 noundef %59, ptr noundef null, i32 noundef 0) #10
  br label %if.end49

if.end49:                                         ; preds = %if.then43, %if.end35.if.end49_crit_edge
  %60 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sc_ah, align 4
  tail call void @ath9k_cmn_init_crypto(ptr noundef %61) #10
  tail call void @ath9k_hw_reset_tsf(ptr noundef %3) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %sc_pcu_lock) #10
  tail call void @ath9k_rng_start(ptr noundef %1) #10
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  tail call void @ath9k_ps_restore(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_stop(ptr noundef %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  tail call void @ath9k_deinit_channel_context(ptr noundef %1) #10
  %mutex = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  tail call void @ath9k_rng_stop(ptr noundef %1) #10
  %paprd_work.i.i = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %paprd_work.i.i) #10
  %hw_check_work.i.i = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 45
  %call1.i.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %hw_check_work.i.i) #10
  %hw_pll_work.i.i = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 46
  %call2.i.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %hw_pll_work.i.i) #10
  %4 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc_ah, align 4
  %btcoex_enabled.i.i.i = getelementptr inbounds %struct.ath_hw, ptr %5, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %btcoex_enabled.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %btcoex_enabled.i.i.i, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i.i, label %entry.ath_cancel_work.exit_crit_edge, label %ath9k_hw_mci_is_enabled.exit.i.i

entry.ath_cancel_work.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath_cancel_work.exit

ath9k_hw_mci_is_enabled.exit.i.i:                 ; preds = %entry
  %caps.i.i.i = getelementptr inbounds %struct.ath_hw, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %caps.i.i.i, align 4
  %and.i.i.i = and i32 %9, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool1.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool1.i.not.i.i, label %ath9k_hw_mci_is_enabled.exit.i.i.ath_cancel_work.exit_crit_edge, label %if.then.i.i

ath9k_hw_mci_is_enabled.exit.i.i.ath_cancel_work.exit_crit_edge: ; preds = %ath9k_hw_mci_is_enabled.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath_cancel_work.exit

if.then.i.i:                                      ; preds = %ath9k_hw_mci_is_enabled.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %mci_work.i.i = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 50
  %call4.i.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %mci_work.i.i) #10
  br label %ath_cancel_work.exit

ath_cancel_work.exit:                             ; preds = %if.then.i.i, %ath9k_hw_mci_is_enabled.exit.i.i.ath_cancel_work.exit_crit_edge, %entry.ath_cancel_work.exit_crit_edge
  %hw_reset_work.i = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 15
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %hw_reset_work.i) #10
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 5
  %10 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %op_flags, align 4
  %and1.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end5, label %do.body

do.body:                                          ; preds = %ath_cancel_work.exit
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool2.not = icmp eq i32 %13, 0
  br i1 %tobool2.not, label %do.body.do.end_crit_edge, label %if.then3

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.8) #10
  br label %do.end

do.end:                                           ; preds = %if.then3, %do.body.do.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

if.end5:                                          ; preds = %ath_cancel_work.exit
  tail call void @ath9k_ps_wakeup(ptr noundef %1)
  %sc_pcu_lock = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %sc_pcu_lock) #10
  %imask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 36
  %14 = ptrtoint ptr %imask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %imask, align 4
  %and6 = and i32 %15, 2147483647
  store i32 %and6, ptr %imask, align 4
  tail call void @ath9k_hw_disable_interrupts(ptr noundef %3) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %sc_pcu_lock) #10
  %irq = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %17) #10
  %intr_tq = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 5
  tail call void @tasklet_kill(ptr noundef %intr_tq) #10
  %bcon_tasklet = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 6
  tail call void @tasklet_kill(ptr noundef %bcon_tasklet) #10
  %ps_idle = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 31
  %18 = ptrtoint ptr %ps_idle to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ps_idle, align 1, !range !118
  store i8 1, ptr %ps_idle, align 1
  tail call void @_raw_spin_lock_bh(ptr noundef %sc_pcu_lock) #10
  %led_pin = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 80
  %20 = ptrtoint ptr %led_pin to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %led_pin, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp = icmp sgt i32 %21, -1
  br i1 %cmp, label %if.then11, label %if.end5.if.end15_crit_edge

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %led_active_high = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 5, i32 25
  %22 = ptrtoint ptr %led_active_high to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %led_active_high, align 4, !range !118
  %24 = xor i8 %23, 1
  %25 = zext i8 %24 to i32
  tail call void @ath9k_hw_set_gpio(ptr noundef %3, i32 noundef %21, i32 noundef %25) #10
  %26 = ptrtoint ptr %led_pin to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %led_pin, align 4
  tail call void @ath9k_hw_gpio_request_in(ptr noundef %3, i32 noundef %27, ptr noundef null) #10
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end5.if.end15_crit_edge
  %call16 = tail call fastcc zeroext i1 @ath_prepare_reset(ptr noundef %1)
  %frag = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 34, i32 9
  %28 = ptrtoint ptr %frag to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %frag, align 4
  %tobool17.not = icmp eq ptr %29, null
  br i1 %tobool17.not, label %if.end15.if.end23_crit_edge, label %if.then18

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %29, i32 noundef 1) #10
  %30 = ptrtoint ptr %frag to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %frag, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end15.if.end23_crit_edge
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 8
  %31 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %curchan, align 4
  %tobool24.not = icmp eq ptr %32, null
  br i1 %tobool24.not, label %if.then25, label %if.end23.if.end28_crit_edge

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 39
  %33 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur_chan, align 8
  %call26 = tail call ptr @ath9k_cmn_get_channel(ptr noundef %hw, ptr noundef %3, ptr noundef %34) #10
  %35 = ptrtoint ptr %curchan to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call26, ptr %curchan, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end23.if.end28_crit_edge
  %36 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %curchan, align 4
  %caldata = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 31
  %38 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %caldata, align 4
  %call30 = tail call i32 @ath9k_hw_reset(ptr noundef %3, ptr noundef %37, ptr noundef %39, i1 noundef zeroext false) #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %op_flags) #10
  %call32 = tail call zeroext i1 @ath9k_hw_phy_disable(ptr noundef %3) #10
  %aspm_enabled.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 14
  %40 = ptrtoint ptr %aspm_enabled.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %aspm_enabled.i, align 1, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i = icmp eq i8 %41, 0
  br i1 %tobool.not.i, label %if.end28.ath9k_hw_configpcipowersave.exit_crit_edge, label %if.end.i

if.end28.ath9k_hw_configpcipowersave.exit_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_hw_configpcipowersave.exit

if.end.i:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %ops.i.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 63
  %42 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i.i, align 4
  tail call void %43(ptr noundef %3, i1 noundef zeroext true) #10
  br label %ath9k_hw_configpcipowersave.exit

ath9k_hw_configpcipowersave.exit:                 ; preds = %if.end.i, %if.end28.ath9k_hw_configpcipowersave.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sc_pcu_lock) #10
  br label %for.body

for.body:                                         ; preds = %ath9k_pending_key_del.exit.for.body_crit_edge, %ath9k_hw_configpcipowersave.exit
  %i.0104 = phi i32 [ 0, %ath9k_hw_configpcipowersave.exit ], [ %inc, %ath9k_pending_key_del.exit.for.body_crit_edge ]
  %conv = trunc i32 %i.0104 to i8
  %44 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sc_ah, align 4
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %45, i32 0, i32 3
  %pending_del_keymap.i = getelementptr inbounds %struct.ath_hw, ptr %45, i32 0, i32 35
  %div3.i.i = lshr i32 %i.0104, 5
  %arrayidx.i.i = getelementptr i32, ptr %pending_del_keymap.i, i32 %div3.i.i
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %i.0104, 31
  %48 = shl nuw i32 1, %and.i.i
  %49 = and i32 %47, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i102 = icmp eq i32 %49, 0
  br i1 %tobool.not.i102, label %for.body.ath9k_pending_key_del.exit_crit_edge, label %lor.lhs.false.i

for.body.ath9k_pending_key_del.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_pending_key_del.exit

lor.lhs.false.i:                                  ; preds = %for.body
  %call3.i = tail call fastcc zeroext i1 @ath9k_txq_has_key(ptr noundef %1, i32 noundef %i.0104) #10
  br i1 %call3.i, label %lor.lhs.false.i.ath9k_pending_key_del.exit_crit_edge, label %if.end.i103

lor.lhs.false.i.ath9k_pending_key_del.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_pending_key_del.exit

if.end.i103:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef %i.0104, ptr noundef %pending_del_keymap.i) #10
  tail call void @ath_key_delete(ptr noundef %common.i.i, i8 noundef zeroext %conv) #10
  br label %ath9k_pending_key_del.exit

ath9k_pending_key_del.exit:                       ; preds = %if.end.i103, %lor.lhs.false.i.ath9k_pending_key_del.exit_crit_edge, %for.body.ath9k_pending_key_del.exit_crit_edge
  %inc = add nuw nsw i32 %i.0104, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %ath9k_pending_key_del.exit.for.body_crit_edge

ath9k_pending_key_del.exit.for.body_crit_edge:    ; preds = %ath9k_pending_key_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %ath9k_pending_key_del.exit
  %50 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sc_ah, align 4
  tail call void @ath9k_cmn_init_crypto(ptr noundef %51) #10
  tail call void @ath9k_ps_restore(ptr noundef %1)
  %52 = ptrtoint ptr %ps_idle to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %19, ptr %ps_idle, align 1
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  %debug_mask41 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %53 = ptrtoint ptr %debug_mask41 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %debug_mask41, align 4
  %and42 = and i32 %54, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %for.end.cleanup_crit_edge, label %if.then44

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then44:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.38) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %for.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_suspend(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_resume(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_set_wakeup(ptr noundef, i1 noundef zeroext) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_add_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %mcast_node = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 11
  %mutex = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 39
  %4 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_chan, align 8
  %nvifs = getelementptr inbounds %struct.ath_chanctx, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %nvifs to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nvifs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp = icmp sgt i16 %7, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx99_vif = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 59
  %8 = ptrtoint ptr %tx99_vif to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %vif, ptr %tx99_vif, align 8
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug_mask, align 4
  %and = and i32 %10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.end_crit_edge, label %if.then3

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vif, align 8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.39, i32 noundef %12) #10
  br label %do.end

do.end:                                           ; preds = %if.then3, %if.end.do.end_crit_edge
  %13 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cur_chan, align 8
  %nvifs6 = getelementptr inbounds %struct.ath_chanctx, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %nvifs6 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %nvifs6, align 2
  %inc = add i16 %16, 1
  store i16 %inc, ptr %nvifs6, align 2
  %17 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp8 = icmp eq i32 %18, 2
  br i1 %cmp8, label %land.lhs.true, label %do.end.if.end13_crit_edge

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

land.lhs.true:                                    ; preds = %do.end
  %call10 = tail call zeroext i1 @ath9k_is_chanctx_enabled() #10
  br i1 %call10, label %if.then12, label %land.lhs.true.if.end13thread-pre-split_crit_edge

land.lhs.true.if.end13thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13thread-pre-split

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %driver_flags = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 10
  %19 = ptrtoint ptr %driver_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %driver_flags, align 8
  %or = or i32 %20, 8
  store i32 %or, ptr %driver_flags, align 8
  br label %if.end13thread-pre-split

if.end13thread-pre-split:                         ; preds = %if.then12, %land.lhs.true.if.end13thread-pre-split_crit_edge
  %21 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load i32, ptr %vif, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.end13thread-pre-split, %do.end.if.end13_crit_edge
  %22 = phi i32 [ %.pr, %if.end13thread-pre-split ], [ %18, %do.end.if.end13_crit_edge ]
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %22, label %if.end13.if.end17_crit_edge [
    i32 3, label %if.end13.if.then16_crit_edge
    i32 1, label %if.end13.if.then16_crit_edge66
    i32 7, label %if.end13.if.then16_crit_edge67
  ]

if.end13.if.then16_crit_edge67:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.end13.if.then16_crit_edge66:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.end13.if.then16_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then16:                                        ; preds = %if.end13.if.then16_crit_edge, %if.end13.if.then16_crit_edge66, %if.end13.if.then16_crit_edge67
  tail call void @ath9k_beacon_assign_slot(ptr noundef %1, ptr noundef %vif) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13.if.end17_crit_edge
  %vif18 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 7
  %24 = ptrtoint ptr %vif18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %vif, ptr %vif18, align 4
  %call19 = tail call zeroext i1 @ath9k_is_chanctx_enabled() #10
  br i1 %call19, label %if.end17.if.end23_crit_edge, label %if.then20

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then20:                                        ; preds = %if.end17
  %25 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur_chan, align 8
  %chanctx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %chanctx to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %chanctx, align 4
  %vifs = getelementptr inbounds %struct.ath_chanctx, ptr %26, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.ath_chanctx, ptr %26, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %drv_priv, ptr noundef %29, ptr noundef %vifs) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then20.if.end23_crit_edge

if.then20.if.end23_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end.i.i:                                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %drv_priv, ptr %prev.i, align 4
  %31 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %vifs, ptr %drv_priv, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %drv_priv, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %drv_priv, ptr %29, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end.i.i, %if.then20.if.end23_crit_edge, %if.end17.if.end23_crit_edge
  %chanctx24 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 4
  %34 = ptrtoint ptr %chanctx24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chanctx24, align 4
  tail call void @ath9k_calculate_summary_state(ptr noundef %1, ptr noundef %35)
  %call.i = tail call zeroext i1 @ath9k_is_chanctx_enabled() #10
  br i1 %call.i, label %for.body.preheader.i, label %if.end23.ath9k_assign_hw_queues.exit_crit_edge

if.end23.ath9k_assign_hw_queues.exit_crit_edge:   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_assign_hw_queues.exit

for.body.preheader.i:                             ; preds = %if.end23
  %arrayidx.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 0, i32 7, i32 0
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayidx.i, align 1
  %arrayidx.1.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 0, i32 7, i32 1
  %37 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %arrayidx.1.i, align 1
  %arrayidx.2.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 0, i32 7, i32 2
  %38 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 2, ptr %arrayidx.2.i, align 1
  %arrayidx.3.i = getelementptr %struct.ieee80211_vif, ptr %vif, i32 0, i32 7, i32 3
  %39 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 3, ptr %arrayidx.3.i, align 1
  %40 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vif, align 8
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %41, label %for.body.preheader.i.cleanup.sink.split.i_crit_edge [
    i32 3, label %for.body.preheader.i.if.then6.i_crit_edge
    i32 7, label %for.body.preheader.i.if.then6.i_crit_edge68
  ]

for.body.preheader.i.if.then6.i_crit_edge68:      ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6.i

for.body.preheader.i.if.then6.i_crit_edge:        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6.i

for.body.preheader.i.cleanup.sink.split.i_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.then6.i:                                       ; preds = %for.body.preheader.i.if.then6.i_crit_edge, %for.body.preheader.i.if.then6.i_crit_edge68
  %queues.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 11
  %43 = ptrtoint ptr %queues.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %queues.i, align 4
  %conv7.i = trunc i16 %44 to i8
  %sub.i = add i8 %conv7.i, -2
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then6.i, %for.body.preheader.i.cleanup.sink.split.i_crit_edge
  %sub.sink.i = phi i8 [ %sub.i, %if.then6.i ], [ -1, %for.body.preheader.i.cleanup.sink.split.i_crit_edge ]
  %cab_queue.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 6
  %45 = ptrtoint ptr %cab_queue.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %sub.sink.i, ptr %cab_queue.i, align 1
  br label %ath9k_assign_hw_queues.exit

ath9k_assign_hw_queues.exit:                      ; preds = %cleanup.sink.split.i, %if.end23.ath9k_assign_hw_queues.exit_crit_edge
  tail call void @ath9k_set_txpower(ptr noundef %1, ptr noundef %vif)
  %46 = ptrtoint ptr %mcast_node to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %1, ptr %mcast_node, align 4
  %sta = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 14
  %47 = ptrtoint ptr %sta to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %sta, align 4
  %vif26 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 18
  %48 = ptrtoint ptr %vif26 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %vif, ptr %vif26, align 4
  %no_ps_filter = getelementptr inbounds %struct.ath_node, ptr %mcast_node, i32 0, i32 7
  %49 = ptrtoint ptr %no_ps_filter to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %no_ps_filter, align 1
  tail call void @ath_tx_node_init(ptr noundef %1, ptr noundef %mcast_node) #10
  br label %cleanup

cleanup:                                          ; preds = %ath9k_assign_hw_queues.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ath9k_assign_hw_queues.exit ], [ -95, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_change_interface(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, i32 noundef %new_type, i1 noundef zeroext %p2p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_remove_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug_mask, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.40) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %mutex = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  tail call void @ath9k_p2p_remove_vif(ptr noundef %1, ptr noundef %vif) #10
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 39
  %6 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_chan, align 8
  %nvifs = getelementptr inbounds %struct.ath_chanctx, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %nvifs to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nvifs, align 2
  %dec = add i16 %9, -1
  store i16 %dec, ptr %nvifs, align 2
  %tx99_vif = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 59
  %10 = ptrtoint ptr %tx99_vif to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %tx99_vif, align 8
  %call1 = tail call zeroext i1 @ath9k_is_chanctx_enabled() #10
  br i1 %call1, label %do.end.if.end3_crit_edge, label %if.then2

do.end.if.end3_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %do.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %drv_priv) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then2.list_del.exit_crit_edge

if.then2.list_del.exit_crit_edge:                 ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %drv_priv, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drv_priv, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then2.list_del.exit_crit_edge
  %17 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %drv_priv, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %drv_priv, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end3

if.end3:                                          ; preds = %list_del.exit, %do.end.if.end3_crit_edge
  %19 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vif, align 8
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %20, label %if.end3.if.end6_crit_edge [
    i32 3, label %if.end3.if.then5_crit_edge
    i32 1, label %if.end3.if.then5_crit_edge24
    i32 7, label %if.end3.if.then5_crit_edge25
  ]

if.end3.if.then5_crit_edge25:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.end3.if.then5_crit_edge24:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.end3.if.then5_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then5:                                         ; preds = %if.end3.if.then5_crit_edge, %if.end3.if.then5_crit_edge24, %if.end3.if.then5_crit_edge25
  tail call void @ath9k_beacon_remove_slot(ptr noundef %1, ptr noundef %vif) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  %mcast_node = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 11
  tail call void @ath_tx_node_cleanup(ptr noundef %1, ptr noundef %mcast_node) #10
  %chanctx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %chanctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chanctx, align 4
  tail call void @ath9k_calculate_summary_state(ptr noundef %1, ptr noundef %23)
  tail call void @ath9k_set_txpower(ptr noundef %1, ptr noundef null)
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_config(ptr noundef %hw, i32 noundef %changed) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 39
  %4 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_chan, align 8
  tail call void @ath9k_ps_wakeup(ptr noundef %1)
  %mutex = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %and = and i32 %changed, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw, align 4
  %and2 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %ps_idle = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 31
  %and2.lobit = lshr exact i32 %and2, 2
  %8 = trunc i32 %and2.lobit to i8
  %9 = ptrtoint ptr %ps_idle to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %ps_idle, align 1
  br i1 %tobool3.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then
  %paprd_work.i.i = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %paprd_work.i.i) #10
  %hw_check_work.i.i = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 45
  %call1.i.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %hw_check_work.i.i) #10
  %hw_pll_work.i.i = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 46
  %call2.i.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %hw_pll_work.i.i) #10
  %10 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sc_ah, align 4
  %btcoex_enabled.i.i.i = getelementptr inbounds %struct.ath_hw, ptr %11, i32 0, i32 3, i32 27
  %12 = ptrtoint ptr %btcoex_enabled.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %btcoex_enabled.i.i.i, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i.i, label %if.then7.ath_cancel_work.exit_crit_edge, label %ath9k_hw_mci_is_enabled.exit.i.i

if.then7.ath_cancel_work.exit_crit_edge:          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath_cancel_work.exit

ath9k_hw_mci_is_enabled.exit.i.i:                 ; preds = %if.then7
  %caps.i.i.i = getelementptr inbounds %struct.ath_hw, ptr %11, i32 0, i32 6
  %14 = ptrtoint ptr %caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %caps.i.i.i, align 4
  %and.i.i.i = and i32 %15, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool1.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool1.i.not.i.i, label %ath9k_hw_mci_is_enabled.exit.i.i.ath_cancel_work.exit_crit_edge, label %if.then.i.i

ath9k_hw_mci_is_enabled.exit.i.i.ath_cancel_work.exit_crit_edge: ; preds = %ath9k_hw_mci_is_enabled.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath_cancel_work.exit

if.then.i.i:                                      ; preds = %ath9k_hw_mci_is_enabled.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %mci_work.i.i = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 50
  %call4.i.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %mci_work.i.i) #10
  br label %ath_cancel_work.exit

ath_cancel_work.exit:                             ; preds = %if.then.i.i, %ath9k_hw_mci_is_enabled.exit.i.i.ath_cancel_work.exit_crit_edge, %if.then7.ath_cancel_work.exit_crit_edge
  %hw_reset_work.i = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 15
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %hw_reset_work.i) #10
  tail call void @ath9k_stop_btcoex(ptr noundef %1) #10
  br label %if.end8

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ath9k_start_btcoex(ptr noundef %1) #10
  tail call void @ath_chanctx_set_channel(ptr noundef %1, ptr noundef %5, ptr noundef %5) #10
  br label %if.end8

if.end8:                                          ; preds = %if.else, %ath_cancel_work.exit, %entry.if.end8_crit_edge
  %and9 = and i32 %changed, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end25_crit_edge, label %if.then11

if.end8.if.end25_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %sc_pm_lock = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 11
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sc_pm_lock) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sc_pm_lock, i32 noundef %call15) #10
  br label %if.end25

if.end25:                                         ; preds = %if.then11, %if.end8.if.end25_crit_edge
  %and26 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end53_crit_edge, label %if.then28

if.end25.if.end53_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then28:                                        ; preds = %if.end25
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hw, align 4
  %and30 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  %debug_mask43 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %debug_mask43 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug_mask43, align 4
  %and44 = and i32 %19, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %not.tobool31.not = xor i1 %tobool31.not, true
  %. = zext i1 %not.tobool31.not to i8
  br i1 %tobool45.not, label %if.then28.if.end53.sink.split_crit_edge, label %if.end53.sink.split.sink.split

if.then28.if.end53.sink.split_crit_edge:          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.sink.split

if.end53.sink.split.sink.split:                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %.str.42..str.41 = select i1 %tobool31.not, ptr @.str.42, ptr @.str.41
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull %.str.42..str.41) #10
  br label %if.end53.sink.split

if.end53.sink.split:                              ; preds = %if.end53.sink.split.sink.split, %if.then28.if.end53.sink.split_crit_edge
  %20 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sc_ah, align 4
  %is_monitoring = getelementptr inbounds %struct.ath_hw, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %is_monitoring to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %., ptr %is_monitoring, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end53.sink.split, %if.end25.if.end53_crit_edge
  %call54 = tail call zeroext i1 @ath9k_is_chanctx_enabled() #10
  %and55 = and i32 %changed, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  %or.cond = or i1 %tobool56.not, %call54
  br i1 %or.cond, label %if.end53.if.end66_crit_edge, label %if.then57

if.end53.if.end66_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hw, align 4
  %offchannel = getelementptr inbounds %struct.ath_chanctx, ptr %5, i32 0, i32 13
  %25 = trunc i32 %24 to i8
  %26 = lshr i8 %25, 3
  %27 = and i8 %26, 1
  %28 = ptrtoint ptr %offchannel to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %offchannel, align 4
  %chandef65 = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  tail call void @ath_chanctx_set_channel(ptr noundef %1, ptr noundef %5, ptr noundef %chandef65) #10
  br label %if.end66

if.end66:                                         ; preds = %if.then57, %if.end53.if.end66_crit_edge
  %and67 = and i32 %changed, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.if.end70_crit_edge, label %if.then69

if.end66.if.end70_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ath9k_set_txpower(ptr noundef %1, ptr noundef null)
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end66.if.end70_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  tail call void @ath9k_ps_restore(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_bss_info_changed(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr nocapture noundef readonly %bss_conf, i32 noundef %changed) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  tail call void @ath9k_ps_wakeup(ptr noundef %1)
  %mutex = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %and = and i32 %changed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %do.body

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug_mask, align 4
  %and1 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %do.body.do.end_crit_edge, label %if.then3

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bss_conf, align 8
  %assoc = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 10
  %8 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %assoc, align 1, !range !118
  %10 = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.43, ptr noundef %7, i32 noundef %10) #10
  br label %do.end

do.end:                                           ; preds = %if.then3, %do.body.do.end_crit_edge
  %bssid5 = getelementptr inbounds %struct.ath_vif, ptr %drv_priv, i32 0, i32 2
  %11 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bss_conf, align 8
  %13 = call ptr @memcpy(ptr %bssid5, ptr %12, i32 6)
  %aid = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 13
  %14 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %aid, align 2
  %aid8 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 4
  %16 = ptrtoint ptr %aid8 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %aid8, align 8
  %assoc9 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 10
  %17 = ptrtoint ptr %assoc9 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %assoc9, align 1, !range !118
  %assoc11 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 5
  %19 = ptrtoint ptr %assoc11 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %assoc11, align 2
  %chanctx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %chanctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chanctx, align 4
  tail call void @ath9k_calculate_summary_state(ptr noundef %1, ptr noundef %21)
  br label %if.end12

if.end12:                                         ; preds = %do.end, %entry.if.end12_crit_edge
  %22 = and i32 %changed, 4196352
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %if.end12.if.end22_crit_edge, label %if.then17

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %curbssid = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 10
  %24 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bss_conf, align 8
  %26 = call ptr @memcpy(ptr %curbssid, ptr %25, i32 6)
  %aid20 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 13
  %27 = ptrtoint ptr %aid20 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %aid20, align 2
  %curaid = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 8
  %29 = ptrtoint ptr %curaid to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %curaid, align 2
  %30 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sc_ah, align 4
  tail call void @ath9k_hw_write_associd(ptr noundef %31) #10
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.end12.if.end22_crit_edge
  %32 = and i32 %changed, 1049152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %if.end22.if.end33_crit_edge, label %if.then31

if.end22.if.end33_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then31:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %chanctx32 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 4
  %34 = ptrtoint ptr %chanctx32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chanctx32, align 4
  tail call void @ath9k_calculate_summary_state(ptr noundef %1, ptr noundef %35)
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end22.if.end33_crit_edge
  %chanctx34 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 4
  %36 = ptrtoint ptr %chanctx34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chanctx34, align 4
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 39
  %38 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cur_chan, align 8
  %cmp = icmp ne ptr %37, %39
  %and36 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %or.cond123 = or i1 %tobool37.not, %cmp
  br i1 %or.cond123, label %if.end33.if.end50_crit_edge, label %if.then38

if.end33.if.end50_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then38:                                        ; preds = %if.end33
  %use_short_slot = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 16
  %40 = ptrtoint ptr %use_short_slot to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %use_short_slot, align 2, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool39.not = icmp eq i8 %41, 0
  %. = select i1 %tobool39.not, i32 20, i32 9
  %42 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %43)
  %cmp42 = icmp eq i32 %43, 3
  br i1 %cmp42, label %if.then44, label %if.else47

if.then44:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  %beacon = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 36
  %slottime45 = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 36, i32 4
  %44 = ptrtoint ptr %slottime45 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %., ptr %slottime45, align 4
  %45 = ptrtoint ptr %beacon to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %beacon, align 4
  br label %if.end50

if.else47:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  %slottime48 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 66
  %46 = ptrtoint ptr %slottime48 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %., ptr %slottime48, align 4
  tail call void @ath9k_hw_init_global_settings(ptr noundef %3) #10
  br label %if.end50

if.end50:                                         ; preds = %if.else47, %if.then44, %if.end33.if.end50_crit_edge
  %and51 = and i32 %changed, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end50.if.end54_crit_edge, label %if.then53

if.end50.if.end54_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ath9k_p2p_bss_info_changed(ptr noundef %1, ptr noundef %vif) #10
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end50.if.end54_crit_edge
  %and55 = and i32 %changed, 2561
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end54.if.end58_crit_edge, label %if.then57

if.end54.if.end58_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ath_check_ani(ptr noundef %1) #10
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end54.if.end58_crit_edge
  %and59 = and i32 %changed, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end58.if.end71_crit_edge, label %do.body62

if.end58.if.end71_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

do.body62:                                        ; preds = %if.end58
  %debug_mask63 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %47 = ptrtoint ptr %debug_mask63 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %debug_mask63, align 4
  %and64 = and i32 %48, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %do.body62.do.end70_crit_edge, label %if.then66

do.body62.do.end70_crit_edge:                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end70

if.then66:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #12
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %txpower = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 42
  %49 = ptrtoint ptr %txpower to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %txpower, align 8
  %txpower_type = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 43
  %51 = ptrtoint ptr %txpower_type to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %txpower_type, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.44, ptr noundef %addr, i32 noundef %50, i32 noundef %52) #10
  br label %do.end70

do.end70:                                         ; preds = %if.then66, %do.body62.do.end70_crit_edge
  tail call void @ath9k_set_txpower(ptr noundef %1, ptr noundef %vif)
  br label %if.end71

if.end71:                                         ; preds = %do.end70, %if.end58.if.end71_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  tail call void @ath9k_ps_restore(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_configure_filter(ptr nocapture noundef readonly %hw, i32 noundef %changed_flags, ptr nocapture noundef %total_flags, i64 noundef %multicast) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %total_flags, align 4
  %and1 = and i32 %3, 1014
  store i32 %and1, ptr %total_flags, align 4
  %chan_lock = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 40
  tail call void @_raw_spin_lock_bh(ptr noundef %chan_lock) #10
  %chanctx = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 38
  %arrayidx3 = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 38, i32 1
  %cmp.not27 = icmp ugt ptr %chanctx, %arrayidx3
  br i1 %cmp.not27, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %ctx.028 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %chanctx, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %total_flags, align 4
  %rxfilter = getelementptr inbounds %struct.ath_chanctx, ptr %ctx.028, i32 0, i32 20
  %6 = ptrtoint ptr %rxfilter to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %rxfilter, align 8
  %incdec.ptr = getelementptr %struct.ath_chanctx, ptr %ctx.028, i32 1
  %cmp.not = icmp ugt ptr %incdec.ptr, %arrayidx3
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %7 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %total_flags, align 4
  %rxfilter4 = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 22, i32 0, i32 20
  %9 = ptrtoint ptr %rxfilter4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %rxfilter4, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %chan_lock) #10
  tail call void @ath9k_ps_wakeup(ptr noundef %1)
  %call = tail call i32 @ath_calcrxfilter(ptr noundef %1) #10
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sc_ah, align 4
  tail call void @ath9k_hw_setrxfilter(ptr noundef %11, i32 noundef %call) #10
  tail call void @ath9k_ps_restore(ptr noundef %1)
  %12 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sc_ah, align 4
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %13, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug_mask, align 4
  %and8 = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %for.end.do.end_crit_edge, label %if.then

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %13, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.45, i32 noundef %call) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %for.end.do.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_set_key(ptr noundef %hw, i32 noundef %cmd, ptr noundef %vif, ptr noundef %sta, ptr noundef %key) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath9k_modparam_nohwcrypt to i32))
  %4 = load i32, ptr @ath9k_modparam_nohwcrypt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vif, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %6, label %if.end.if.end10_crit_edge [
    i32 1, label %if.end.land.lhs.true_crit_edge
    i32 7, label %if.end.land.lhs.true_crit_edge236
  ]

if.end.land.lhs.true_crit_edge236:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge236
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %8 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cipher, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %9, label %land.lhs.true.if.end10_crit_edge [
    i32 1027074, label %land.lhs.true.land.lhs.true7_crit_edge
    i32 1027076, label %land.lhs.true.land.lhs.true7_crit_edge237
  ]

land.lhs.true.land.lhs.true7_crit_edge237:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true7

land.lhs.true.land.lhs.true7_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true7

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

land.lhs.true7:                                   ; preds = %land.lhs.true.land.lhs.true7_crit_edge, %land.lhs.true.land.lhs.true7_crit_edge237
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags, align 8
  %13 = and i16 %12, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool8.not = icmp eq i16 %13, 0
  br i1 %tobool8.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end10_crit_edge

land.lhs.true7.if.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true7.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cmd)
  %cmp11 = icmp eq i32 %cmd, 1
  br i1 %cmp11, label %land.lhs.true13, label %if.end10.if.end19_crit_edge

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

land.lhs.true13:                                  ; preds = %if.end10
  %flags14 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %14 = ptrtoint ptr %flags14 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags14, align 8
  %16 = and i16 %15, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool17.not = icmp eq i16 %16, 0
  br i1 %tobool17.not, label %land.lhs.true13.if.end19_crit_edge, label %if.then18

land.lhs.true13.if.end19_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then18:                                        ; preds = %land.lhs.true13
  tail call void @ieee80211_stop_queues(ptr noundef %hw) #10
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 8
  %sc_ah.i = getelementptr inbounds %struct.ath_softc, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sc_ah.i, align 4
  %call1.i = tail call zeroext i1 @ath9k_is_chanctx_enabled() #10
  br i1 %call1.i, label %if.then.i, label %if.then18.flush.i_crit_edge

if.then18.flush.i_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %flush.i

if.then.i:                                        ; preds = %if.then18
  %op_flags.i = getelementptr inbounds %struct.ath_hw, ptr %20, i32 0, i32 3, i32 5
  %21 = ptrtoint ptr %op_flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %op_flags.i, align 4
  %23 = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %if.then.i.flush.i_crit_edge, label %if.end.i

if.then.i.flush.i_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %flush.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__ath9k_flush(ptr noundef %hw, i32 undef, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true) #10
  br label %ath9k_flush.exit

flush.i:                                          ; preds = %if.then.i.flush.i_crit_edge, %if.then18.flush.i_crit_edge
  %mutex.i = getelementptr inbounds %struct.ath_softc, ptr %18, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  tail call void @__ath9k_flush(ptr noundef %hw, i32 undef, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #10
  tail call void @mutex_unlock(ptr noundef %mutex.i) #10
  br label %ath9k_flush.exit

ath9k_flush.exit:                                 ; preds = %flush.i, %if.end.i
  tail call void @ieee80211_wake_queues(ptr noundef %hw) #10
  br label %if.end19

if.end19:                                         ; preds = %ath9k_flush.exit, %land.lhs.true13.if.end19_crit_edge, %if.end10.if.end19_crit_edge
  %mutex = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  tail call void @ath9k_ps_wakeup(ptr noundef %1)
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %debug_mask, align 4
  %and20 = and i32 %25, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.do.end_crit_edge, label %if.then22

if.end19.do.end_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.46, i32 noundef %cmd) #10
  br label %do.end

do.end:                                           ; preds = %if.then22, %if.end19.do.end_crit_edge
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  br label %for.body

for.body:                                         ; preds = %ath9k_pending_key_del.exit.for.body_crit_edge, %do.end
  %i.0229 = phi i32 [ 0, %do.end ], [ %inc, %ath9k_pending_key_del.exit.for.body_crit_edge ]
  %conv29 = trunc i32 %i.0229 to i8
  %26 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sc_ah, align 4
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %27, i32 0, i32 3
  %pending_del_keymap.i = getelementptr inbounds %struct.ath_hw, ptr %27, i32 0, i32 35
  %div3.i.i = lshr i32 %i.0229, 5
  %arrayidx.i.i = getelementptr i32, ptr %pending_del_keymap.i, i32 %div3.i.i
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %i.0229, 31
  %30 = shl nuw i32 1, %and.i.i
  %31 = and i32 %29, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i218 = icmp eq i32 %31, 0
  br i1 %tobool.not.i218, label %for.body.ath9k_pending_key_del.exit_crit_edge, label %lor.lhs.false.i

for.body.ath9k_pending_key_del.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_pending_key_del.exit

lor.lhs.false.i:                                  ; preds = %for.body
  %call3.i = tail call fastcc zeroext i1 @ath9k_txq_has_key(ptr noundef %1, i32 noundef %i.0229) #10
  br i1 %call3.i, label %lor.lhs.false.i.ath9k_pending_key_del.exit_crit_edge, label %if.end.i219

lor.lhs.false.i.ath9k_pending_key_del.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_pending_key_del.exit

if.end.i219:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef %i.0229, ptr noundef %pending_del_keymap.i) #10
  tail call void @ath_key_delete(ptr noundef %common.i.i, i8 noundef zeroext %conv29) #10
  br label %ath9k_pending_key_del.exit

ath9k_pending_key_del.exit:                       ; preds = %if.end.i219, %lor.lhs.false.i.ath9k_pending_key_del.exit_crit_edge, %for.body.ath9k_pending_key_del.exit_crit_edge
  %inc = add nuw nsw i32 %i.0229, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %ath9k_pending_key_del.exit.for.body_crit_edge

ath9k_pending_key_del.exit.for.body_crit_edge:    ; preds = %ath9k_pending_key_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %ath9k_pending_key_del.exit
  %tobool24.not = icmp eq ptr %sta, null
  %spec.select = select i1 %tobool24.not, ptr null, ptr %drv_priv
  %32 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %cmd, label %for.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb111
  ]

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %for.end
  br i1 %tobool24.not, label %sw.bb.if.end32_crit_edge, label %if.then31

sw.bb.if.end32_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then31:                                        ; preds = %sw.bb
  %ps_key.i = getelementptr inbounds %struct.ath_node, ptr %drv_priv, i32 0, i32 5
  %33 = ptrtoint ptr %ps_key.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ps_key.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i220 = icmp eq i8 %34, 0
  br i1 %tobool.not.i220, label %if.then31.if.end32_crit_edge, label %if.end.i223

if.then31.if.end32_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.end.i223:                                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sc_ah, align 4
  %common.i.i222 = getelementptr inbounds %struct.ath_hw, ptr %36, i32 0, i32 3
  tail call void @ath_key_delete(ptr noundef %common.i.i222, i8 noundef zeroext %34) #10
  %37 = ptrtoint ptr %ps_key.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %ps_key.i, align 1
  %key_idx.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28
  %38 = ptrtoint ptr %key_idx.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %key_idx.i, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end.i223, %if.then31.if.end32_crit_edge, %sw.bb.if.end32_crit_edge
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %39 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %hw_key_idx, align 2
  %call33 = tail call i32 @ath_key_config(ptr noundef %common.i, ptr noundef %vif, ptr noundef %sta, ptr noundef %key) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call33)
  %cmp34 = icmp sgt i32 %call33, -1
  br i1 %cmp34, label %if.then36, label %if.end32.if.end64_crit_edge

if.end32.if.end64_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then36:                                        ; preds = %if.end32
  %conv37 = trunc i32 %call33 to i8
  %40 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv37, ptr %hw_key_idx, align 2
  %flags39 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %41 = ptrtoint ptr %flags39 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %flags39, align 8
  %43 = or i16 %42, 2
  store i16 %43, ptr %flags39, align 8
  %cipher42 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %44 = ptrtoint ptr %cipher42 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cipher42, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %45)
  %cmp43 = icmp eq i32 %45, 1027074
  br i1 %cmp43, label %if.end50.thread, label %if.end50

if.end50:                                         ; preds = %if.then36
  %46 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sc_ah, align 4
  %sw_mgmt_crypto_tx = getelementptr inbounds %struct.ath_hw, ptr %47, i32 0, i32 11
  %48 = ptrtoint ptr %sw_mgmt_crypto_tx to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %sw_mgmt_crypto_tx, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool52.not = icmp ne i8 %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027076, i32 %45)
  %cmp56 = icmp eq i32 %45, 1027076
  %or.cond = select i1 %tobool52.not, i1 %cmp56, i1 false
  br i1 %or.cond, label %if.then58, label %if.end50.if.end64_crit_edge

if.end50.if.end64_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.end50.thread:                                  ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  %50 = or i16 %42, 6
  br label %if.end64.sink.split

if.then58:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %flags39 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %flags39, align 8
  %53 = or i16 %52, 16
  br label %if.end64.sink.split

if.end64.sink.split:                              ; preds = %if.then58, %if.end50.thread
  %.sink = phi i16 [ %50, %if.end50.thread ], [ %53, %if.then58 ]
  %54 = ptrtoint ptr %flags39 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %.sink, ptr %flags39, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.end64.sink.split, %if.end50.if.end64_crit_edge, %if.end32.if.end64_crit_edge
  %ret.0 = phi i32 [ %call33, %if.end32.if.end64_crit_edge ], [ 0, %if.end50.if.end64_crit_edge ], [ 0, %if.end64.sink.split ]
  %tobool65.not = icmp eq ptr %spec.select, null
  br i1 %tobool65.not, label %if.end64.sw.epilog_crit_edge, label %land.lhs.true66

if.end64.sw.epilog_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true66:                                  ; preds = %if.end64
  %55 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %hw_key_idx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool69.not = icmp eq i8 %56, 0
  br i1 %tobool69.not, label %land.lhs.true66.sw.epilog_crit_edge, label %for.body74.preheader

land.lhs.true66.sw.epilog_crit_edge:              ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.body74.preheader:                             ; preds = %land.lhs.true66
  %arrayidx = getelementptr %struct.ath_node, ptr %spec.select, i32 0, i32 9, i32 0
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool75.not = icmp eq i8 %58, 0
  br i1 %tobool75.not, label %for.body74.preheader.for.end83.thread_crit_edge, label %for.inc81

for.body74.preheader.for.end83.thread_crit_edge:  ; preds = %for.body74.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end83.thread

for.end83.thread:                                 ; preds = %for.inc81.2.for.end83.thread_crit_edge, %for.inc81.1.for.end83.thread_crit_edge, %for.inc81.for.end83.thread_crit_edge, %for.body74.preheader.for.end83.thread_crit_edge
  %arrayidx.lcssa = phi ptr [ %arrayidx, %for.body74.preheader.for.end83.thread_crit_edge ], [ %arrayidx.1, %for.inc81.for.end83.thread_crit_edge ], [ %arrayidx.2, %for.inc81.1.for.end83.thread_crit_edge ], [ %arrayidx.3, %for.inc81.2.for.end83.thread_crit_edge ]
  %59 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %56, ptr %arrayidx.lcssa, align 1
  br label %sw.epilog

for.inc81:                                        ; preds = %for.body74.preheader
  %arrayidx.1 = getelementptr %struct.ath_node, ptr %spec.select, i32 0, i32 9, i32 1
  %60 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool75.not.1 = icmp eq i8 %61, 0
  br i1 %tobool75.not.1, label %for.inc81.for.end83.thread_crit_edge, label %for.inc81.1

for.inc81.for.end83.thread_crit_edge:             ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end83.thread

for.inc81.1:                                      ; preds = %for.inc81
  %arrayidx.2 = getelementptr %struct.ath_node, ptr %spec.select, i32 0, i32 9, i32 2
  %62 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool75.not.2 = icmp eq i8 %63, 0
  br i1 %tobool75.not.2, label %for.inc81.1.for.end83.thread_crit_edge, label %for.inc81.2

for.inc81.1.for.end83.thread_crit_edge:           ; preds = %for.inc81.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end83.thread

for.inc81.2:                                      ; preds = %for.inc81.1
  %arrayidx.3 = getelementptr %struct.ath_node, ptr %spec.select, i32 0, i32 9, i32 3
  %64 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool75.not.3 = icmp eq i8 %65, 0
  br i1 %tobool75.not.3, label %for.inc81.2.for.end83.thread_crit_edge, label %do.end97

for.inc81.2.for.end83.thread_crit_edge:           ; preds = %for.inc81.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end83.thread

do.end97:                                         ; preds = %for.inc81.2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1830, i32 noundef 9, ptr noundef null) #10
  br label %sw.epilog

sw.bb111:                                         ; preds = %for.end
  %hw_key_idx112 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %66 = ptrtoint ptr %hw_key_idx112 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %hw_key_idx112, align 2
  %conv113 = zext i8 %67 to i32
  %call114 = tail call fastcc zeroext i1 @ath9k_txq_has_key(ptr noundef %1, i32 noundef %conv113)
  %68 = ptrtoint ptr %hw_key_idx112 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %hw_key_idx112, align 2
  br i1 %call114, label %if.then115, label %if.else

if.then115:                                       ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #12
  %conv117 = zext i8 %69 to i32
  %70 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sc_ah, align 4
  %pending_del_keymap = getelementptr inbounds %struct.ath_hw, ptr %71, i32 0, i32 35
  tail call void @_set_bit(i32 noundef %conv117, ptr noundef %pending_del_keymap) #10
  %72 = ptrtoint ptr %hw_key_idx112 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %hw_key_idx112, align 2
  %conv121 = zext i8 %73 to i16
  %call122 = tail call zeroext i1 @ath_hw_keysetmac(ptr noundef %common.i, i16 noundef zeroext %conv121, ptr noundef null) #10
  br label %if.end124

if.else:                                          ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ath_key_delete(ptr noundef %common.i, i8 noundef zeroext %69) #10
  br label %if.end124

if.end124:                                        ; preds = %if.else, %if.then115
  %tobool125.not = icmp eq ptr %spec.select, null
  br i1 %tobool125.not, label %if.end124.if.end145_crit_edge, label %for.cond127.preheader

if.end124.if.end145_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end145

for.cond127.preheader:                            ; preds = %if.end124
  %74 = ptrtoint ptr %hw_key_idx112 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %hw_key_idx112, align 2
  %arrayidx132 = getelementptr %struct.ath_node, ptr %spec.select, i32 0, i32 9, i32 0
  %76 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx132, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %77, i8 %75)
  %cmp136.not = icmp eq i8 %77, %75
  br i1 %cmp136.not, label %for.cond127.preheader.if.end139_crit_edge, label %for.cond127

for.cond127.preheader.if.end139_crit_edge:        ; preds = %for.cond127.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end139

for.cond127:                                      ; preds = %for.cond127.preheader
  %arrayidx132.1 = getelementptr %struct.ath_node, ptr %spec.select, i32 0, i32 9, i32 1
  %78 = ptrtoint ptr %arrayidx132.1 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx132.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %79, i8 %75)
  %cmp136.not.1 = icmp eq i8 %79, %75
  br i1 %cmp136.not.1, label %for.cond127.if.end139_crit_edge, label %for.cond127.1

for.cond127.if.end139_crit_edge:                  ; preds = %for.cond127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end139

for.cond127.1:                                    ; preds = %for.cond127
  %arrayidx132.2 = getelementptr %struct.ath_node, ptr %spec.select, i32 0, i32 9, i32 2
  %80 = ptrtoint ptr %arrayidx132.2 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx132.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %81, i8 %75)
  %cmp136.not.2 = icmp eq i8 %81, %75
  br i1 %cmp136.not.2, label %for.cond127.1.if.end139_crit_edge, label %for.cond127.2

for.cond127.1.if.end139_crit_edge:                ; preds = %for.cond127.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end139

for.cond127.2:                                    ; preds = %for.cond127.1
  %arrayidx132.3 = getelementptr %struct.ath_node, ptr %spec.select, i32 0, i32 9, i32 3
  %82 = ptrtoint ptr %arrayidx132.3 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx132.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %83, i8 %75)
  %cmp136.not.3 = icmp eq i8 %83, %75
  br i1 %cmp136.not.3, label %for.cond127.2.if.end139_crit_edge, label %for.cond127.2.if.end145_crit_edge

for.cond127.2.if.end145_crit_edge:                ; preds = %for.cond127.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end145

for.cond127.2.if.end139_crit_edge:                ; preds = %for.cond127.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end139

if.end139:                                        ; preds = %for.cond127.2.if.end139_crit_edge, %for.cond127.1.if.end139_crit_edge, %for.cond127.if.end139_crit_edge, %for.cond127.preheader.if.end139_crit_edge
  %arrayidx132.lcssa = phi ptr [ %arrayidx132, %for.cond127.preheader.if.end139_crit_edge ], [ %arrayidx132.1, %for.cond127.if.end139_crit_edge ], [ %arrayidx132.2, %for.cond127.1.if.end139_crit_edge ], [ %arrayidx132.3, %for.cond127.2.if.end139_crit_edge ]
  %84 = ptrtoint ptr %arrayidx132.lcssa to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %arrayidx132.lcssa, align 1
  br label %if.end145

if.end145:                                        ; preds = %if.end139, %for.cond127.2.if.end145_crit_edge, %if.end124.if.end145_crit_edge
  %85 = ptrtoint ptr %hw_key_idx112 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %hw_key_idx112, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end145, %do.end97, %for.end83.thread, %land.lhs.true66.sw.epilog_crit_edge, %if.end64.sw.epilog_crit_edge, %for.end.sw.epilog_crit_edge
  %ret.1 = phi i32 [ 0, %if.end145 ], [ %ret.0, %land.lhs.true66.sw.epilog_crit_edge ], [ %ret.0, %if.end64.sw.epilog_crit_edge ], [ %ret.0, %do.end97 ], [ -22, %for.end.sw.epilog_crit_edge ], [ %ret.0, %for.end83.thread ]
  tail call void @ath9k_ps_restore(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %land.lhs.true7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %sw.epilog ], [ -28, %entry.cleanup_crit_edge ], [ -95, %land.lhs.true7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_sw_scan_start(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, ptr nocapture noundef readnone %mac_addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 5
  tail call void @_set_bit(i32 noundef 5, ptr noundef %op_flags) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_sw_scan_complete(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 5
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %op_flags) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath9k_get_stats(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %stats) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %ast_mibstats = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 33, i32 13
  %4 = ptrtoint ptr %ast_mibstats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ast_mibstats, align 4
  %6 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %stats, align 4
  %rts_bad = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 33, i32 13, i32 1
  %7 = ptrtoint ptr %rts_bad to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rts_bad, align 4
  %dot11RTSFailureCount = getelementptr inbounds %struct.ieee80211_low_level_stats, ptr %stats, i32 0, i32 1
  %9 = ptrtoint ptr %dot11RTSFailureCount to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %dot11RTSFailureCount, align 4
  %fcs_bad = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 33, i32 13, i32 3
  %10 = ptrtoint ptr %fcs_bad to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fcs_bad, align 4
  %dot11FCSErrorCount = getelementptr inbounds %struct.ieee80211_low_level_stats, ptr %stats, i32 0, i32 2
  %12 = ptrtoint ptr %dot11FCSErrorCount to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %dot11FCSErrorCount, align 4
  %rts_good = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 33, i32 13, i32 2
  %13 = ptrtoint ptr %rts_good to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rts_good, align 4
  %dot11RTSSuccessCount = getelementptr inbounds %struct.ieee80211_low_level_stats, ptr %stats, i32 0, i32 3
  %15 = ptrtoint ptr %dot11RTSSuccessCount to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %dot11RTSSuccessCount, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_sta_add_debugfs(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_sta_notify(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, i32 noundef %cmd, ptr noundef %sta) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %sleeping = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 4
  %3 = ptrtoint ptr %sleeping to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %sleeping, align 4
  tail call void @ath_tx_aggr_sleep(ptr noundef %sta, ptr noundef %1, ptr noundef %drv_priv) #10
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc_ah, align 4
  %arrayidx.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 2, i32 28
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %sw.bb.for.inc.i_crit_edge, label %if.end.i

sw.bb.for.inc.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ath9k_hw_set_tx_filter(ptr noundef %5, i8 noundef zeroext %7, i1 noundef zeroext true) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %sw.bb.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.ath_node, ptr %drv_priv, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.1.i = icmp eq i8 %9, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ath9k_hw_set_tx_filter(ptr noundef %5, i8 noundef zeroext %9, i1 noundef zeroext true) #10
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.ath_node, ptr %drv_priv, i32 0, i32 9, i32 2
  %10 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.2.i = icmp eq i8 %11, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

if.end.2.i:                                       ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ath9k_hw_set_tx_filter(ptr noundef %5, i8 noundef zeroext %11, i1 noundef zeroext true) #10
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.ath_node, ptr %drv_priv, i32 0, i32 9, i32 3
  %12 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.3.i = icmp eq i8 %13, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.sw.epilog_crit_edge, label %if.end.3.i

for.inc.2.i.sw.epilog_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.3.i:                                       ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ath9k_hw_set_tx_filter(ptr noundef %5, i8 noundef zeroext %13, i1 noundef zeroext true) #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %sc_ah2 = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %sc_ah2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sc_ah2, align 4
  %arrayidx.i13 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 2, i32 28
  %16 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i14 = icmp eq i8 %17, 0
  br i1 %tobool.not.i14, label %sw.bb1.for.inc.i18_crit_edge, label %if.end.i15

sw.bb1.for.inc.i18_crit_edge:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i18

if.end.i15:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ath9k_hw_set_tx_filter(ptr noundef %15, i8 noundef zeroext %17, i1 noundef zeroext false) #10
  br label %for.inc.i18

for.inc.i18:                                      ; preds = %if.end.i15, %sw.bb1.for.inc.i18_crit_edge
  %arrayidx.1.i16 = getelementptr %struct.ath_node, ptr %drv_priv, i32 0, i32 9, i32 1
  %18 = ptrtoint ptr %arrayidx.1.i16 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.1.i16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.1.i17 = icmp eq i8 %19, 0
  br i1 %tobool.not.1.i17, label %for.inc.i18.for.inc.1.i22_crit_edge, label %if.end.1.i19

for.inc.i18.for.inc.1.i22_crit_edge:              ; preds = %for.inc.i18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i22

if.end.1.i19:                                     ; preds = %for.inc.i18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ath9k_hw_set_tx_filter(ptr noundef %15, i8 noundef zeroext %19, i1 noundef zeroext false) #10
  br label %for.inc.1.i22

for.inc.1.i22:                                    ; preds = %if.end.1.i19, %for.inc.i18.for.inc.1.i22_crit_edge
  %arrayidx.2.i20 = getelementptr %struct.ath_node, ptr %drv_priv, i32 0, i32 9, i32 2
  %20 = ptrtoint ptr %arrayidx.2.i20 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.2.i20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.2.i21 = icmp eq i8 %21, 0
  br i1 %tobool.not.2.i21, label %for.inc.1.i22.for.inc.2.i26_crit_edge, label %if.end.2.i23

for.inc.1.i22.for.inc.2.i26_crit_edge:            ; preds = %for.inc.1.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i26

if.end.2.i23:                                     ; preds = %for.inc.1.i22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ath9k_hw_set_tx_filter(ptr noundef %15, i8 noundef zeroext %21, i1 noundef zeroext false) #10
  br label %for.inc.2.i26

for.inc.2.i26:                                    ; preds = %if.end.2.i23, %for.inc.1.i22.for.inc.2.i26_crit_edge
  %arrayidx.3.i24 = getelementptr %struct.ath_node, ptr %drv_priv, i32 0, i32 9, i32 3
  %22 = ptrtoint ptr %arrayidx.3.i24 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.3.i24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.3.i25 = icmp eq i8 %23, 0
  br i1 %tobool.not.3.i25, label %for.inc.2.i26.ath9k_sta_set_tx_filter.exit28_crit_edge, label %if.end.3.i27

for.inc.2.i26.ath9k_sta_set_tx_filter.exit28_crit_edge: ; preds = %for.inc.2.i26
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_sta_set_tx_filter.exit28

if.end.3.i27:                                     ; preds = %for.inc.2.i26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ath9k_hw_set_tx_filter(ptr noundef %15, i8 noundef zeroext %23, i1 noundef zeroext false) #10
  br label %ath9k_sta_set_tx_filter.exit28

ath9k_sta_set_tx_filter.exit28:                   ; preds = %if.end.3.i27, %for.inc.2.i26.ath9k_sta_set_tx_filter.exit28_crit_edge
  %sleeping3 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 4
  %24 = ptrtoint ptr %sleeping3 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %sleeping3, align 4
  tail call void @ath_tx_aggr_wakeup(ptr noundef %1, ptr noundef %drv_priv) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %ath9k_sta_set_tx_filter.exit28, %if.end.3.i, %for.inc.2.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_sta_state(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %sta, i32 noundef %old_state, i32 noundef %new_state) #1 align 64 {
entry:
  %ps_key.i = alloca %struct.ieee80211_key_conf, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %old_state)
  %cmp = icmp eq i32 %old_state, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %new_state)
  %cmp1 = icmp eq i32 %new_state, 1
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ps_key.i) #10
  %4 = call ptr @memset(ptr %ps_key.i, i32 0, i32 24)
  %5 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %drv_priv.i, align 4
  %sta2.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %sta2.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %sta, ptr %sta2.i.i, align 4
  %vif3.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 2
  %7 = ptrtoint ptr %vif3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %vif, ptr %vif3.i.i, align 4
  %key_idx.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28
  %8 = ptrtoint ptr %key_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %key_idx.i.i, align 4
  tail call void @ath_tx_node_init(ptr noundef %1, ptr noundef %drv_priv.i) #10
  %9 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sc_ah, align 4
  tail call void @ath_dynack_node_init(ptr noundef %10, ptr noundef %drv_priv.i) #10
  %11 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vif, align 8
  %.off.i = add i32 %12, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end.i, label %if.then.ath9k_sta_add.exit_crit_edge

if.then.ath9k_sta_add.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_sta_add.exit

if.end.i:                                         ; preds = %if.then
  %call3.i = call i32 @ath_key_config(ptr noundef %common.i, ptr noundef %vif, ptr noundef %sta, ptr noundef nonnull %ps_key.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp sgt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end.i.ath9k_sta_add.exit_crit_edge

if.end.i.ath9k_sta_add.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_sta_add.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = trunc i32 %call3.i to i8
  %ps_key6.i = getelementptr inbounds %struct.ath_node, ptr %drv_priv.i, i32 0, i32 5
  %13 = ptrtoint ptr %ps_key6.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i, ptr %ps_key6.i, align 1
  %14 = ptrtoint ptr %key_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i, ptr %key_idx.i.i, align 4
  br label %ath9k_sta_add.exit

ath9k_sta_add.exit:                               ; preds = %if.then5.i, %if.end.i.ath9k_sta_add.exit_crit_edge, %if.then.ath9k_sta_add.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ps_key.i) #10
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %debug_mask, align 4
  %and = and i32 %16, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %ath9k_sta_add.exit.if.end20_crit_edge, label %if.then3

ath9k_sta_add.exit.if.end20_crit_edge:            ; preds = %ath9k_sta_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then3:                                         ; preds = %ath9k_sta_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.47, ptr noundef %addr) #10
  br label %if.end20

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %old_state)
  %cmp4 = icmp eq i32 %old_state, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_state)
  %cmp6 = icmp eq i32 %new_state, 0
  %or.cond48 = and i1 %cmp4, %cmp6
  br i1 %or.cond48, label %if.then7, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then7:                                         ; preds = %if.else
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %ps_key.i.i = getelementptr inbounds %struct.ath_node, ptr %drv_priv.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %ps_key.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ps_key.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i.i, label %if.then7.ath9k_sta_remove.exit_crit_edge, label %if.end.i.i

if.then7.ath9k_sta_remove.exit_crit_edge:         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_sta_remove.exit

if.end.i.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ath_key_delete(ptr noundef %common.i, i8 noundef zeroext %18) #10
  %19 = ptrtoint ptr %ps_key.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %ps_key.i.i, align 1
  %key_idx.i.i52 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 2, i32 28
  %20 = ptrtoint ptr %key_idx.i.i52 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %key_idx.i.i52, align 4
  br label %ath9k_sta_remove.exit

ath9k_sta_remove.exit:                            ; preds = %if.end.i.i, %if.then7.ath9k_sta_remove.exit_crit_edge
  tail call void @ath_tx_node_cleanup(ptr noundef %1, ptr noundef %drv_priv.i.i) #10
  %21 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sc_ah, align 4
  tail call void @ath_dynack_node_deinit(ptr noundef %22, ptr noundef %drv_priv.i.i) #10
  %debug_mask10 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %debug_mask10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug_mask10, align 4
  %and11 = and i32 %24, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %ath9k_sta_remove.exit.if.end20_crit_edge, label %if.then13

ath9k_sta_remove.exit.if.end20_crit_edge:         ; preds = %ath9k_sta_remove.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then13:                                        ; preds = %ath9k_sta_remove.exit
  call void @__sanitizer_cov_trace_pc() #12
  %addr14 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.48, ptr noundef %addr14) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %ath9k_sta_remove.exit.if.end20_crit_edge, %if.else.if.end20_crit_edge, %if.then3, %ath9k_sta_add.exit.if.end20_crit_edge
  %call21 = call zeroext i1 @ath9k_is_chanctx_enabled() #10
  br i1 %call21, label %if.then22, label %if.end20.if.end31_crit_edge

if.end20.if.end31_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then22:                                        ; preds = %if.end20
  %25 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp23 = icmp eq i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %old_state)
  %cmp25 = icmp eq i32 %old_state, 3
  %or.cond49 = and i1 %cmp25, %cmp23
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %new_state)
  %cmp27 = icmp eq i32 %new_state, 4
  %or.cond50 = and i1 %cmp27, %or.cond49
  br i1 %or.cond50, label %if.then28, label %if.then22.if.end31_crit_edge

if.then22.if.end31_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then28:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  call void @ath_chanctx_event(ptr noundef %1, ptr noundef %vif, i32 noundef 4) #10
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.then22.if.end31_crit_edge, %if.end20.if.end31_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_conf_tx(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, i16 noundef zeroext %queue, ptr nocapture noundef readonly %params) #1 align 64 {
entry:
  %qi = alloca %struct.ath9k_tx_queue_info, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %qi) #10
  %conv = zext i16 %queue to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %queue)
  %cmp = icmp ugt i16 %queue, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 35, i32 5, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @ath9k_ps_wakeup(ptr noundef %1)
  %mutex = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %6 = call ptr @memset(ptr %qi, i32 0, i32 60)
  %aifs = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 3
  %7 = ptrtoint ptr %aifs to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %aifs, align 2
  %conv2 = zext i8 %8 to i32
  %tqi_aifs = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 5
  %9 = ptrtoint ptr %tqi_aifs to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv2, ptr %tqi_aifs, align 4
  %cw_min = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 1
  %10 = ptrtoint ptr %cw_min to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cw_min, align 2
  %conv3 = zext i16 %11 to i32
  %tqi_cwmin = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 6
  %12 = ptrtoint ptr %tqi_cwmin to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv3, ptr %tqi_cwmin, align 4
  %cw_max = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 2
  %13 = ptrtoint ptr %cw_max to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %cw_max, align 2
  %conv4 = zext i16 %14 to i32
  %tqi_cwmax = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 7
  %15 = ptrtoint ptr %tqi_cwmax to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv4, ptr %tqi_cwmax, align 4
  %16 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %params, align 2
  %conv5 = zext i16 %17 to i32
  %mul = shl nuw nsw i32 %conv5, 5
  %tqi_burstTime = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 12
  %18 = ptrtoint ptr %tqi_burstTime to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %tqi_burstTime, align 4
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debug_mask, align 4
  %and = and i32 %20, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.end_crit_edge, label %if.then6

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %axq_qnum = getelementptr inbounds %struct.ath_txq, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %axq_qnum to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %axq_qnum, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.49, i32 noundef %conv, i32 noundef %22, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %conv5) #10
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end.do.end_crit_edge
  %23 = ptrtoint ptr %tqi_burstTime to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tqi_burstTime, align 4
  tail call void @ath_update_max_aggr_framelen(ptr noundef %1, i32 noundef %conv, i32 noundef %24) #10
  %axq_qnum19 = getelementptr inbounds %struct.ath_txq, ptr %5, i32 0, i32 1
  %25 = ptrtoint ptr %axq_qnum19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %axq_qnum19, align 4
  %call20 = call i32 @ath_txq_update(ptr noundef %1, i32 noundef %26, ptr noundef nonnull %qi) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.end.if.end23_crit_edge, label %if.then22

do.end.if.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then22:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.11, ptr noundef %common.i, ptr noundef nonnull @.str.50) #10
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %do.end.if.end23_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #10
  call void @ath9k_ps_restore(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end23 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %qi) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ath9k_get_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %vif) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  tail call void @ath9k_ps_wakeup(ptr noundef %1)
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_chan, align 8
  %chanctx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 4
  %4 = ptrtoint ptr %chanctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chanctx, align 4
  %cmp = icmp eq ptr %3, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc_ah, align 4
  %call = tail call i64 @ath9k_hw_gettsf64(ptr noundef %7) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tsf_val = getelementptr inbounds %struct.ath_chanctx, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %tsf_val to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %tsf_val, align 8
  %tsf_ts = getelementptr inbounds %struct.ath_chanctx, ptr %3, i32 0, i32 7
  %call3 = tail call i32 @ath9k_hw_get_tsf_offset(ptr noundef %tsf_ts, ptr noundef null) #10
  %conv = zext i32 %call3 to i64
  %add = add i64 %9, %conv
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tsf.0 = phi i64 [ %call, %if.then ], [ %add, %if.else ]
  %tsf_adjust = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 3, i32 3
  %10 = ptrtoint ptr %tsf_adjust to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tsf_adjust, align 8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  %add4 = add i64 %12, %tsf.0
  tail call void @ath9k_ps_restore(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i64 %add4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_set_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %vif, i64 noundef %tsf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  tail call void @ath9k_ps_wakeup(ptr noundef %1)
  %tsf_adjust = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 3, i32 3
  %2 = ptrtoint ptr %tsf_adjust to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %tsf_adjust, align 8
  %4 = tail call i64 @llvm.bswap.i64(i64 %3)
  %sub = sub i64 %tsf, %4
  %chanctx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 4
  %5 = ptrtoint ptr %chanctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chanctx, align 4
  %tsf_ts = getelementptr inbounds %struct.ath_chanctx, ptr %6, i32 0, i32 7
  tail call void @ktime_get_raw_ts64(ptr noundef %tsf_ts) #10
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 39
  %7 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cur_chan, align 8
  %9 = ptrtoint ptr %chanctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chanctx, align 4
  %cmp = icmp eq ptr %8, %10
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sc_ah, align 4
  tail call void @ath9k_hw_settsf64(ptr noundef %12, i64 noundef %sub) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %chanctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chanctx, align 4
  %tsf_val = getelementptr inbounds %struct.ath_chanctx, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %tsf_val to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %sub, ptr %tsf_val, align 8
  tail call void @ath9k_ps_restore(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_reset_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %vif) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  tail call void @ath9k_ps_wakeup(ptr noundef %1)
  %chanctx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %chanctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chanctx, align 4
  %tsf_ts = getelementptr inbounds %struct.ath_chanctx, ptr %3, i32 0, i32 7
  tail call void @ktime_get_raw_ts64(ptr noundef %tsf_ts) #10
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 39
  %4 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_chan, align 8
  %6 = ptrtoint ptr %chanctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chanctx, align 4
  %cmp = icmp eq ptr %5, %7
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sc_ah, align 4
  tail call void @ath9k_hw_reset_tsf(ptr noundef %9) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %chanctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chanctx, align 4
  %tsf_val = getelementptr inbounds %struct.ath_chanctx, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %tsf_val to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %tsf_val, align 8
  tail call void @ath9k_ps_restore(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_tx_last_beacon(ptr nocapture noundef readonly %hw) #1 align 64 {
entry:
  %ts = alloca %struct.ath_tx_status, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ts) #10
  %4 = call ptr @memset(ptr %ts, i32 255, i32 48)
  %caps = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %caps, align 4
  %and = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %bslot = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 36, i32 3
  %7 = ptrtoint ptr %bslot to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bslot, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %enable_beacon = getelementptr inbounds %struct.ieee80211_vif, ptr %8, i32 0, i32 1, i32 17
  %9 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enable_beacon, align 1, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not = icmp eq i8 %10, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %tx_processed = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 36, i32 9
  %11 = ptrtoint ptr %tx_processed to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tx_processed, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not = icmp ne i8 %12, 0
  %brmerge = select i1 %tobool7.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.end5.if.end24_crit_edge, label %if.then9

if.end5.if.end24_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then9:                                         ; preds = %if.end5
  %bcon_tasklet = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 6
  %count.i.i = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 6, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #10, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !121
  tail call void @tasklet_unlock_wait(ptr noundef %bcon_tasklet) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !122
  %av_bcbuf = getelementptr inbounds %struct.ieee80211_vif, ptr %8, i32 1, i32 1, i32 62, i32 0, i32 2, i32 3, i32 7
  %14 = ptrtoint ptr %av_bcbuf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %av_bcbuf, align 8
  %tobool10.not = icmp eq ptr %15, null
  br i1 %tobool10.not, label %if.then9.skip_crit_edge, label %lor.lhs.false

if.then9.skip_crit_edge:                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip

lor.lhs.false:                                    ; preds = %if.then9
  %bf_mpdu = getelementptr inbounds %struct.ath_buf, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %bf_mpdu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bf_mpdu, align 4
  %tobool11.not = icmp eq ptr %17, null
  br i1 %tobool11.not, label %lor.lhs.false.skip_crit_edge, label %if.end13

lor.lhs.false.skip_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip

if.end13:                                         ; preds = %lor.lhs.false
  %bf_desc = getelementptr inbounds %struct.ath_buf, ptr %15, i32 0, i32 4
  %18 = ptrtoint ptr %bf_desc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bf_desc, align 4
  %proc_txdesc.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 63, i32 6
  %20 = ptrtoint ptr %proc_txdesc.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %proc_txdesc.i, align 4
  %call1.i = call i32 %21(ptr noundef %3, ptr noundef %19, ptr noundef nonnull %ts) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call1.i)
  %cmp = icmp eq i32 %call1.i, -115
  br i1 %cmp, label %if.end13.skip_crit_edge, label %if.end15

if.end13.skip_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip

if.end15:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %tx_processed to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %tx_processed, align 4
  %ts_status = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 2
  %23 = ptrtoint ptr %ts_status to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ts_status, align 2
  %25 = and i8 %24, 95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool19.not = icmp eq i8 %25, 0
  %tx_last = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 36, i32 10
  %frombool22 = zext i1 %tobool19.not to i8
  %26 = ptrtoint ptr %tx_last to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool22, ptr %tx_last, align 1
  br label %skip

skip:                                             ; preds = %if.end15, %if.end13.skip_crit_edge, %lor.lhs.false.skip_crit_edge, %if.then9.skip_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !123
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #10
  %27 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #10, !srcloc !124
  br label %if.end24

if.end24:                                         ; preds = %skip, %if.end5.if.end24_crit_edge
  %tx_last26 = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 36, i32 10
  %28 = ptrtoint ptr %tx_last26 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tx_last26, align 1, !range !118
  %30 = zext i8 %29 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %30, %if.end24 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ts) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_ampdu_action(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %params) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %sta1 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 1
  %4 = ptrtoint ptr %sta1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sta1, align 4
  %6 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %params, align 4
  %tid3 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 2
  %8 = ptrtoint ptr %tid3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %tid3, align 4
  %ssn4 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 3
  %mutex = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %10 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %7, label %sw.default [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %entry.sw.epilog_crit_edge47
    i32 2, label %sw.bb
    i32 4, label %entry.sw.bb13_crit_edge
    i32 5, label %entry.sw.bb13_crit_edge48
    i32 3, label %if.then16.critedge
    i32 6, label %sw.bb19
  ]

entry.sw.bb13_crit_edge48:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb13

entry.sw.bb13_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb13

entry.sw.epilog_crit_edge47:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call5 = tail call zeroext i1 @ath9k_is_chanctx_enabled() #10
  br i1 %call5, label %if.then, label %sw.bb.if.end8_crit_edge

sw.bb.if.end8_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %sw.bb
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 5
  %11 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %op_flags, align 4
  %13 = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.then.if.end8_crit_edge, label %if.then.sw.epilog_crit_edge

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %sw.bb.if.end8_crit_edge
  tail call void @ath9k_ps_wakeup(ptr noundef %1)
  %call9 = tail call i32 @ath_tx_aggr_start(ptr noundef %1, ptr noundef %5, i16 noundef zeroext %9, ptr noundef %ssn4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  %spec.store.select = select i1 %tobool10.not, i32 1, i32 %call9
  tail call void @ath9k_ps_restore(ptr noundef %1)
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry.sw.bb13_crit_edge, %entry.sw.bb13_crit_edge48
  tail call void @ath9k_ps_wakeup(ptr noundef %1)
  tail call void @ath_tx_aggr_stop(ptr noundef %1, ptr noundef %5, i16 noundef zeroext %9) #10
  br label %if.end18

if.then16.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ath9k_ps_wakeup(ptr noundef %1)
  tail call void @ath_tx_aggr_stop(ptr noundef %1, ptr noundef %5, i16 noundef zeroext %9) #10
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %5, i32 0, i32 1
  tail call void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef %vif, ptr noundef %addr, i16 noundef zeroext %9) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then16.critedge, %sw.bb13
  tail call void @ath9k_ps_restore(ptr noundef %1)
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  %vif2.i = getelementptr inbounds %struct.ieee80211_sta, ptr %5, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %vif2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vif2.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %do.body6.i, label %ath_node_to_tid.exit, !prof !125

do.body6.i:                                       ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath9k/ath9k.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #10, !srcloc !126
  unreachable

ath_node_to_tid.exit:                             ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  %conv = trunc i16 %9 to i8
  %sta1.i = getelementptr inbounds %struct.ieee80211_sta, ptr %5, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %sta1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sta1.i, align 4
  %tobool12.not.i = icmp eq ptr %17, null
  %18 = urem i8 %conv, 17
  %rem.i = zext i8 %18 to i32
  %arrayidx.i = getelementptr %struct.ieee80211_sta, ptr %17, i32 0, i32 28, i32 %rem.i
  %txq15.i = getelementptr inbounds %struct.ieee80211_vif, ptr %15, i32 0, i32 8
  %txq.0.in.i = select i1 %tobool12.not.i, ptr %txq15.i, ptr %arrayidx.i
  %19 = ptrtoint ptr %txq.0.in.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %txq.0.i = load ptr, ptr %txq.0.in.i, align 4
  %ampdu_factor = getelementptr inbounds %struct.ieee80211_sta, ptr %5, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %ampdu_factor to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ampdu_factor, align 1
  %conv21 = zext i8 %21 to i32
  %shl = shl i32 8, %conv21
  %conv22 = trunc i32 %shl to i16
  %baw_size = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 8, i32 2
  %22 = ptrtoint ptr %baw_size to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv22, ptr %baw_size, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sc_ah, align 4
  %common.i46 = getelementptr inbounds %struct.ath_hw, ptr %24, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.11, ptr noundef %common.i46, ptr noundef nonnull @.str.51) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %ath_node_to_tid.exit, %if.end18, %if.end8, %if.then.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge47
  %ret.0 = phi i32 [ 0, %sw.default ], [ 0, %ath_node_to_tid.exit ], [ 0, %if.end18 ], [ %spec.store.select, %if.end8 ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge47 ], [ -16, %if.then.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath9k_get_survey(ptr nocapture noundef readonly %hw, i32 noundef %idx, ptr nocapture noundef readnone %survey) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_rfkill_poll_state(ptr noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ath9k_set_coverage_class(ptr nocapture noundef %hw, i16 noundef signext %coverage_class) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_flush(ptr noundef %hw, ptr nocapture noundef readnone %vif, i32 noundef %queues, i1 noundef zeroext %drop) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %call1 = tail call zeroext i1 @ath9k_is_chanctx_enabled() #10
  br i1 %call1, label %if.then, label %entry.flush_crit_edge

entry.flush_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %flush

if.then:                                          ; preds = %entry
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 5
  %4 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %op_flags, align 4
  %6 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then.flush_crit_edge, label %if.end

if.then.flush_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %flush

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__ath9k_flush(ptr noundef %hw, i32 undef, i1 noundef zeroext %drop, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %cleanup

flush:                                            ; preds = %if.then.flush_crit_edge, %entry.flush_crit_edge
  %mutex = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  tail call void @__ath9k_flush(ptr noundef %hw, i32 undef, i1 noundef zeroext %drop, i1 noundef zeroext true, i1 noundef zeroext false)
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %flush, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_set_antenna(ptr nocapture noundef readonly %hw, i32 noundef %tx_ant, i32 noundef %rx_ant) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %rx_chainmask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 6, i32 3
  %4 = ptrtoint ptr %rx_chainmask to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rx_chainmask, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.not = icmp eq i8 %5, 1
  %or = select i1 %cmp.not, i32 0, i32 %tx_ant
  %spec.select = or i32 %or, %rx_ant
  %macVersion.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %7)
  %cmp.i = icmp ugt i32 %7, 447
  br i1 %cmp.i, label %entry.validate_antenna_mask.exit_crit_edge, label %if.end.i

entry.validate_antenna_mask.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_antenna_mask.exit

if.end.i:                                         ; preds = %entry
  %and.i = and i32 %spec.select, 7
  %8 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %and.i, label %if.end.i.cleanup_crit_edge [
    i32 1, label %if.end.i.validate_antenna_mask.exit_crit_edge
    i32 3, label %if.end.i.validate_antenna_mask.exit_crit_edge78
    i32 7, label %if.end.i.validate_antenna_mask.exit_crit_edge79
    i32 2, label %sw.bb1.i
  ]

if.end.i.validate_antenna_mask.exit_crit_edge79:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_antenna_mask.exit

if.end.i.validate_antenna_mask.exit_crit_edge78:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_antenna_mask.exit

if.end.i.validate_antenna_mask.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %validate_antenna_mask.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %phi.bo = xor i1 %cmp.not, true
  br label %validate_antenna_mask.exit

validate_antenna_mask.exit:                       ; preds = %sw.bb1.i, %if.end.i.validate_antenna_mask.exit_crit_edge, %if.end.i.validate_antenna_mask.exit_crit_edge78, %if.end.i.validate_antenna_mask.exit_crit_edge79, %entry.validate_antenna_mask.exit_crit_edge
  %retval.0.i = phi i1 [ %phi.bo, %sw.bb1.i ], [ false, %entry.validate_antenna_mask.exit_crit_edge ], [ false, %if.end.i.validate_antenna_mask.exit_crit_edge ], [ false, %if.end.i.validate_antenna_mask.exit_crit_edge78 ], [ false, %if.end.i.validate_antenna_mask.exit_crit_edge79 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_ant)
  %tobool.not = icmp eq i32 %tx_ant, 0
  %or.cond = or i1 %tobool.not, %retval.0.i
  br i1 %or.cond, label %validate_antenna_mask.exit.cleanup_crit_edge, label %if.end3

validate_antenna_mask.exit.cleanup_crit_edge:     ; preds = %validate_antenna_mask.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %validate_antenna_mask.exit
  %conv4 = trunc i32 %spec.select to i8
  %ant_rx = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 54
  %9 = ptrtoint ptr %ant_rx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv4, ptr %ant_rx, align 1
  %conv5 = trunc i32 %tx_ant to i8
  %ant_tx = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 53
  %10 = ptrtoint ptr %ant_tx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv5, ptr %ant_tx, align 4
  %11 = ptrtoint ptr %rx_chainmask to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rx_chainmask, align 1
  %conv8 = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp9 = icmp eq i8 %12, 1
  br i1 %cmp9, label %if.end3.cleanup_crit_edge, label %if.end12

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end3
  %13 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %14)
  %cmp13 = icmp eq i32 %14, 20
  br i1 %cmp13, label %if.end12.if.end22_crit_edge, label %if.else

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not14.i = icmp eq i8 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool1.not15.i = icmp eq i32 %spec.select, 0
  %or.cond16.i = or i1 %tobool1.not15.i, %tobool.not14.i
  br i1 %or.cond16.i, label %if.else.fill_chainmask.exit_crit_edge, label %if.else.for.body.i_crit_edge

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

if.else.fill_chainmask.exit_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %fill_chainmask.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %i.020.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.else.for.body.i_crit_edge ]
  %filled.019.i = phi i32 [ %filled.2.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.else.for.body.i_crit_edge ]
  %new.addr.018.i = phi i32 [ %new.addr.1.i, %for.inc.i.for.body.i_crit_edge ], [ %spec.select, %if.else.for.body.i_crit_edge ]
  %cap.addr.017.i = phi i32 [ %shr7.i, %for.inc.i.for.body.i_crit_edge ], [ %conv8, %if.else.for.body.i_crit_edge ]
  %and.i45 = and i32 %cap.addr.017.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45)
  %tobool2.not.i = icmp eq i32 %and.i45, 0
  br i1 %tobool2.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i46

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i46:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %and3.i = and i32 %new.addr.018.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %shl.i = shl nuw i32 1, %i.020.i
  %or.i = select i1 %tobool4.not.i, i32 0, i32 %shl.i
  %filled.1.i = or i32 %or.i, %filled.019.i
  %shr.i = lshr i32 %new.addr.018.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i46, %for.body.i.for.inc.i_crit_edge
  %new.addr.1.i = phi i32 [ %shr.i, %if.end.i46 ], [ %new.addr.018.i, %for.body.i.for.inc.i_crit_edge ]
  %filled.2.i = phi i32 [ %filled.1.i, %if.end.i46 ], [ %filled.019.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %shr7.i = lshr i32 %cap.addr.017.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cap.addr.017.i)
  %tobool.not.i = icmp ult i32 %cap.addr.017.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new.addr.1.i)
  %tobool1.not.i = icmp eq i32 %new.addr.1.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %for.inc.i.fill_chainmask.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.fill_chainmask.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fill_chainmask.exit

fill_chainmask.exit:                              ; preds = %for.inc.i.fill_chainmask.exit_crit_edge, %if.else.fill_chainmask.exit_crit_edge
  %filled.0.lcssa.i = phi i32 [ 0, %if.else.fill_chainmask.exit_crit_edge ], [ %filled.2.i, %for.inc.i.fill_chainmask.exit_crit_edge ]
  %conv20 = trunc i32 %filled.0.lcssa.i to i8
  br label %if.end22

if.end22:                                         ; preds = %fill_chainmask.exit, %if.end12.if.end22_crit_edge
  %conv20.sink = phi i8 [ %conv20, %fill_chainmask.exit ], [ 7, %if.end12.if.end22_crit_edge ]
  %rxchainmask21 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 75
  %15 = ptrtoint ptr %rxchainmask21 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv20.sink, ptr %rxchainmask21, align 1
  %tx_chainmask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 6, i32 2
  %16 = ptrtoint ptr %tx_chainmask to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tx_chainmask, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not14.i47 = icmp eq i8 %17, 0
  br i1 %tobool.not14.i47, label %if.end22.fill_chainmask.exit73_crit_edge, label %for.body.i56.preheader

if.end22.fill_chainmask.exit73_crit_edge:         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %fill_chainmask.exit73

for.body.i56.preheader:                           ; preds = %if.end22
  %conv24 = zext i8 %17 to i32
  br label %for.body.i56

for.body.i56:                                     ; preds = %for.inc.i71.for.body.i56_crit_edge, %for.body.i56.preheader
  %i.020.i50 = phi i32 [ %inc.i66, %for.inc.i71.for.body.i56_crit_edge ], [ 0, %for.body.i56.preheader ]
  %filled.019.i51 = phi i32 [ %filled.2.i65, %for.inc.i71.for.body.i56_crit_edge ], [ 0, %for.body.i56.preheader ]
  %new.addr.018.i52 = phi i32 [ %new.addr.1.i64, %for.inc.i71.for.body.i56_crit_edge ], [ %tx_ant, %for.body.i56.preheader ]
  %cap.addr.017.i53 = phi i32 [ %shr7.i67, %for.inc.i71.for.body.i56_crit_edge ], [ %conv24, %for.body.i56.preheader ]
  %and.i54 = and i32 %cap.addr.017.i53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i54)
  %tobool2.not.i55 = icmp eq i32 %and.i54, 0
  br i1 %tobool2.not.i55, label %for.body.i56.for.inc.i71_crit_edge, label %if.end.i63

for.body.i56.for.inc.i71_crit_edge:               ; preds = %for.body.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i71

if.end.i63:                                       ; preds = %for.body.i56
  call void @__sanitizer_cov_trace_pc() #12
  %and3.i57 = and i32 %new.addr.018.i52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i57)
  %tobool4.not.i58 = icmp eq i32 %and3.i57, 0
  %shl.i59 = shl nuw i32 1, %i.020.i50
  %or.i60 = select i1 %tobool4.not.i58, i32 0, i32 %shl.i59
  %filled.1.i61 = or i32 %or.i60, %filled.019.i51
  %shr.i62 = lshr i32 %new.addr.018.i52, 1
  br label %for.inc.i71

for.inc.i71:                                      ; preds = %if.end.i63, %for.body.i56.for.inc.i71_crit_edge
  %new.addr.1.i64 = phi i32 [ %shr.i62, %if.end.i63 ], [ %new.addr.018.i52, %for.body.i56.for.inc.i71_crit_edge ]
  %filled.2.i65 = phi i32 [ %filled.1.i61, %if.end.i63 ], [ %filled.019.i51, %for.body.i56.for.inc.i71_crit_edge ]
  %inc.i66 = add nuw nsw i32 %i.020.i50, 1
  %shr7.i67 = lshr i32 %cap.addr.017.i53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cap.addr.017.i53)
  %tobool.not.i68 = icmp ult i32 %cap.addr.017.i53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new.addr.1.i64)
  %tobool1.not.i69 = icmp eq i32 %new.addr.1.i64, 0
  %or.cond.i70 = select i1 %tobool.not.i68, i1 true, i1 %tobool1.not.i69
  br i1 %or.cond.i70, label %for.inc.i71.fill_chainmask.exit73_crit_edge, label %for.inc.i71.for.body.i56_crit_edge

for.inc.i71.for.body.i56_crit_edge:               ; preds = %for.inc.i71
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i56

for.inc.i71.fill_chainmask.exit73_crit_edge:      ; preds = %for.inc.i71
  call void @__sanitizer_cov_trace_pc() #12
  br label %fill_chainmask.exit73

fill_chainmask.exit73:                            ; preds = %for.inc.i71.fill_chainmask.exit73_crit_edge, %if.end22.fill_chainmask.exit73_crit_edge
  %filled.0.lcssa.i72 = phi i32 [ 0, %if.end22.fill_chainmask.exit73_crit_edge ], [ %filled.2.i65, %for.inc.i71.fill_chainmask.exit73_crit_edge ]
  %conv26 = trunc i32 %filled.0.lcssa.i72 to i8
  %txchainmask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 74
  %18 = ptrtoint ptr %txchainmask to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv26, ptr %txchainmask, align 4
  tail call void @ath9k_cmn_reload_chainmask(ptr noundef %3) #10
  br label %cleanup

cleanup:                                          ; preds = %fill_chainmask.exit73, %if.end3.cleanup_crit_edge, %validate_antenna_mask.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %fill_chainmask.exit73 ], [ -22, %validate_antenna_mask.exit.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath9k_get_antenna(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %tx_ant, ptr nocapture noundef writeonly %rx_ant) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %ant_tx = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %ant_tx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ant_tx, align 4
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %tx_ant to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %tx_ant, align 4
  %ant_rx = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 54
  %5 = ptrtoint ptr %ant_rx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ant_rx, align 1
  %conv1 = zext i8 %6 to i32
  %7 = ptrtoint ptr %rx_ant to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv1, ptr %rx_ant, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ath9k_tx_frames_pending(ptr nocapture noundef readonly %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call fastcc zeroext i1 @ath9k_has_tx_pending(ptr noundef %1, i1 noundef zeroext true)
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_release_buffered_frames(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_get_et_sset_count(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_get_et_stats(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_get_et_strings(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_get_txpower(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %vif, ptr nocapture noundef %dbm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mutex = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %chanctx = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %chanctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chanctx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 39
  %4 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_chan, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %.pn = phi ptr [ %5, %if.else ], [ %3, %entry.if.end_crit_edge ]
  %storemerge.in.in = getelementptr inbounds %struct.ath_chanctx, ptr %.pn, i32 0, i32 12
  %6 = ptrtoint ptr %storemerge.in.in to i32
  call void @__asan_load2_noabort(i32 %6)
  %storemerge.in = load i16, ptr %storemerge.in.in, align 2
  %storemerge = zext i16 %storemerge.in to i32
  %7 = ptrtoint ptr %dbm to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge, ptr %dbm, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  %8 = ptrtoint ptr %dbm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dbm, align 4
  %div = sdiv i32 %9, 2
  store i32 %div, ptr %dbm, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_wake_tx_queue(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath9k_cmn_get_channel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ath_prepare_reset(ptr noundef %sc) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc, align 8
  tail call void @ieee80211_stop_queues(ptr noundef %3) #10
  tail call void @ath_stop_ani(ptr noundef %sc) #10
  tail call void @ath9k_hw_disable_interrupts(ptr noundef %1) #10
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %5)
  %cmp = icmp ugt i32 %5, 447
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call zeroext i1 @ath_stoprecv(ptr noundef %sc) #10
  %call3 = tail call zeroext i1 @ath_drain_all_txq(ptr noundef %sc) #10
  %and737 = and i1 %call, %call3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call zeroext i1 @ath_drain_all_txq(ptr noundef %sc) #10
  %call17 = tail call zeroext i1 @ath_stoprecv(ptr noundef %sc) #10
  %and2136 = and i1 %call10, %call17
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0.in = phi i1 [ %and737, %if.then ], [ %and2136, %if.else ]
  ret i1 %ret.0.in
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_hw_reset(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_enable_interrupts(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_mci_set_txpower(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath_complete_reset(ptr noundef %sc, i1 noundef zeroext %start) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %2 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_chan, align 8
  tail call void @ath9k_calculate_summary_state(ptr noundef %sc, ptr noundef %3)
  tail call void @ath_startrecv(ptr noundef %sc) #10
  %4 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_chan, align 8
  %cur_txpower = getelementptr inbounds %struct.ath_chanctx, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %cur_txpower to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cur_txpower, align 2
  %txpower = getelementptr inbounds %struct.ath_chanctx, ptr %5, i32 0, i32 11
  %8 = ptrtoint ptr %txpower to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %txpower, align 8
  tail call void @ath9k_cmn_update_txpow(ptr noundef %1, i16 noundef zeroext %7, i16 noundef zeroext %9, ptr noundef %cur_txpower) #10
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %op_flags) #10
  %10 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cur_chan, align 8
  %offchannel = getelementptr inbounds %struct.ath_chanctx, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %offchannel to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %offchannel, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %14 = and i1 %tobool.not, %start
  br i1 %14, label %if.then, label %entry.if.end36_crit_edge

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then:                                          ; preds = %entry
  %tsf_val = getelementptr inbounds %struct.ath_chanctx, ptr %11, i32 0, i32 8
  %15 = ptrtoint ptr %tsf_val to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %tsf_val, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool8.not = icmp eq i64 %16, 0
  br i1 %tobool8.not, label %if.then.if.end_crit_edge, label %if.then9

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %tsf_ts = getelementptr inbounds %struct.ath_chanctx, ptr %11, i32 0, i32 7
  %call11 = tail call i32 @ath9k_hw_get_tsf_offset(ptr noundef %tsf_ts, ptr noundef null) #10
  %17 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cur_chan, align 8
  %tsf_val13 = getelementptr inbounds %struct.ath_chanctx, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %tsf_val13 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %tsf_val13, align 8
  %conv = zext i32 %call11 to i64
  %add = add i64 %20, %conv
  tail call void @ath9k_hw_settsf64(ptr noundef %1, i64 noundef %add) #10
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then.if.end_crit_edge
  %21 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %op_flags, align 4
  %23 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool16.not = icmp eq i32 %23, 0
  br i1 %tobool16.not, label %if.end.work_crit_edge, label %if.end18

if.end.work_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %work

if.end18:                                         ; preds = %if.end
  %opmode = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 28
  %24 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %opmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp = icmp eq i32 %25, 2
  br i1 %cmp, label %land.lhs.true20, label %if.end18.if.else_crit_edge

if.end18.if.else_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true20:                                  ; preds = %if.end18
  %26 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %op_flags, align 4
  %28 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool23.not = icmp eq i32 %28, 0
  br i1 %tobool23.not, label %land.lhs.true20.if.else_crit_edge, label %do.body25

land.lhs.true20.if.else_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

do.body25:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  %sc_pm_lock = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 11
  %call29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sc_pm_lock) #10
  %ps_flags = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 29
  %29 = ptrtoint ptr %ps_flags to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %ps_flags, align 4
  %31 = or i16 %30, 17
  store i16 %31, ptr %ps_flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sc_pm_lock, i32 noundef %call29) #10
  br label %work

if.else:                                          ; preds = %land.lhs.true20.if.else_crit_edge, %if.end18.if.else_crit_edge
  tail call void @ath9k_set_beacon(ptr noundef %sc) #10
  br label %work

work:                                             ; preds = %if.else, %do.body25, %if.end.work_crit_edge
  %32 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sc, align 8
  %hw_check_work.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 45
  tail call void @ieee80211_queue_delayed_work(ptr noundef %33, ptr noundef %hw_check_work.i, i32 noundef 1000) #10
  %34 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sc_ah, align 4
  %macVersion.i = getelementptr inbounds %struct.ath_hw, ptr %35, i32 0, i32 4, i32 3
  %36 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %macVersion.i, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %37, label %work.ath_restart_work.exit_crit_edge [
    i32 768, label %work.if.then.i_crit_edge
    i32 512, label %work.if.then.i_crit_edge3
  ]

work.if.then.i_crit_edge3:                        ; preds = %work
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

work.if.then.i_crit_edge:                         ; preds = %work
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

work.ath_restart_work.exit_crit_edge:             ; preds = %work
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath_restart_work.exit

if.then.i:                                        ; preds = %work.if.then.i_crit_edge, %work.if.then.i_crit_edge3
  %39 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sc, align 8
  %hw_pll_work.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 46
  tail call void @ieee80211_queue_delayed_work(ptr noundef %40, ptr noundef %hw_pll_work.i, i32 noundef 10) #10
  br label %ath_restart_work.exit

ath_restart_work.exit:                            ; preds = %if.then.i, %work.ath_restart_work.exit_crit_edge
  tail call void @ath_start_ani(ptr noundef %sc) #10
  tail call void @ath_txq_schedule_all(ptr noundef %sc) #10
  br label %if.end36

if.end36:                                         ; preds = %ath_restart_work.exit, %entry.if.end36_crit_edge
  %gtt_cnt = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 27
  %41 = ptrtoint ptr %gtt_cnt to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %gtt_cnt, align 4
  tail call void @ath9k_hw_set_interrupts(ptr noundef %1) #10
  tail call void @ath9k_hw_enable_interrupts(ptr noundef %1) #10
  %42 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sc, align 8
  tail call void @ieee80211_wake_queues(ptr noundef %43) #10
  tail call void @ath9k_p2p_ps_timer(ptr noundef %sc) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_stop_ani(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_disable_interrupts(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath_stoprecv(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_startrecv(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_cmn_update_txpow(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_hw_get_tsf_offset(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_settsf64(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_set_beacon(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_txq_schedule_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_p2p_ps_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_offchannel_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_scan_complete(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_roc_complete(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_chanctx_set_channel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_chanctx_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath9k_cancel_pending_offchannel(ptr noundef %sc) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %roc_vif = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 7
  %2 = ptrtoint ptr %roc_vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %roc_vif, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %do.body

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug_mask, align 4
  %and = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end_crit_edge, label %if.then2

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.ath9k_cancel_pending_offchannel) #10
  br label %do.end

do.end:                                           ; preds = %if.then2, %do.body.do.end_crit_edge
  %timer = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 1
  %call4 = tail call i32 @del_timer_sync(ptr noundef %timer) #10
  %state = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 5
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp ugt i32 %7, 3
  br i1 %cmp, label %if.then6, label %do.end.if.end8_crit_edge

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ath_roc_complete(ptr noundef %sc, i32 noundef 1) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  %8 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %op_flags, align 4
  %10 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not = icmp eq i32 %10, 0
  br i1 %tobool10.not, label %if.end8.if.end23_crit_edge, label %do.body12

if.end8.if.end23_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.body12:                                        ; preds = %if.end8
  %debug_mask13 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %debug_mask13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debug_mask13, align 4
  %and14 = and i32 %12, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.body12.do.end19_crit_edge, label %if.then16

do.body12.do.end19_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19

if.then16:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.ath9k_cancel_pending_offchannel) #10
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %do.body12.do.end19_crit_edge
  %timer21 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 1
  %call22 = tail call i32 @del_timer_sync(ptr noundef %timer21) #10
  tail call void @ath_scan_complete(ptr noundef %sc, i1 noundef zeroext true) #10
  br label %if.end23

if.end23:                                         ; preds = %do.end19, %if.end8.if.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath_is_go_chanctx_present(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_chanctx_set_next(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_tx_start(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_mci_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_set_gpio(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_gpio_request_out(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_cmn_init_crypto(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_reset_tsf(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_rng_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_deinit_channel_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_rng_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_gpio_request_in(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_phy_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ath9k_txq_has_key(ptr noundef %sc, i32 noundef %keyix) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %tx = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %key_in_use.0.off081 = phi i1 [ false, %entry ], [ %key_in_use.3.off0, %for.inc.for.body_crit_edge ]
  %i.077 = phi i32 [ 0, %entry ], [ %inc27, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx, align 4
  %shl = shl nuw nsw i32 1, %i.077
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %axq_depth = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %i.077, i32 5
  %4 = ptrtoint ptr %axq_depth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %axq_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.end.for.inc_crit_edge, label %if.end6

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end6:                                          ; preds = %if.end
  %axq_qnum = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %i.077, i32 1
  %6 = ptrtoint ptr %axq_qnum to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %axq_qnum, align 4
  %call = tail call i32 @ath9k_hw_numtxpending(ptr noundef %1, i32 noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end6.for.inc_crit_edge, label %if.end9

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end9:                                          ; preds = %if.end6
  %axq_lock.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %i.077, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %axq_lock.i) #10
  %axq_q = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %i.077, i32 3
  %8 = ptrtoint ptr %axq_q to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.020.i = load ptr, ptr %axq_q, align 4
  %cmp.not21.i = icmp eq ptr %bf.020.i, %axq_q
  br i1 %cmp.not21.i, label %if.end9.ath9k_txq_list_has_key.exit_crit_edge, label %if.end9.for.body.i_crit_edge

if.end9.for.body.i_crit_edge:                     ; preds = %if.end9
  br label %for.body.i

if.end9.ath9k_txq_list_has_key.exit_crit_edge:    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_txq_list_has_key.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end9.for.body.i_crit_edge
  %bf.022.i = phi ptr [ %bf.0.i, %for.inc.i.for.body.i_crit_edge ], [ %bf.020.i, %if.end9.for.body.i_crit_edge ]
  %stale.i = getelementptr inbounds %struct.ath_buf, ptr %bf.022.i, i32 0, i32 8, i32 3
  %9 = ptrtoint ptr %stale.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %stale.i, align 1, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %bf_mpdu.i = getelementptr inbounds %struct.ath_buf, ptr %bf.022.i, i32 0, i32 3
  %11 = ptrtoint ptr %bf_mpdu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bf_mpdu.i, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %keyix3.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 3, i32 31
  %13 = ptrtoint ptr %keyix3.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %keyix3.i, align 1
  %conv.i = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %keyix)
  %cmp4.i = icmp eq i32 %conv.i, %keyix
  br i1 %cmp4.i, label %if.end.i.if.end26_crit_edge, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i.if.end26_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %15 = ptrtoint ptr %bf.022.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.0.i = load ptr, ptr %bf.022.i, align 4
  %cmp.not.i = icmp eq ptr %bf.0.i, %axq_q
  br i1 %cmp.not.i, label %for.inc.i.ath9k_txq_list_has_key.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.ath9k_txq_list_has_key.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath9k_txq_list_has_key.exit

ath9k_txq_list_has_key.exit:                      ; preds = %for.inc.i.ath9k_txq_list_has_key.exit_crit_edge, %if.end9.ath9k_txq_list_has_key.exit_crit_edge
  %16 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sc_ah, align 4
  %caps = getelementptr inbounds %struct.ath_hw, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %caps, align 4
  %and12 = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %ath9k_txq_list_has_key.exit.if.end26_crit_edge, label %land.rhs16.preheader

ath9k_txq_list_has_key.exit.if.end26_crit_edge:   ; preds = %ath9k_txq_list_has_key.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

land.rhs16.preheader:                             ; preds = %ath9k_txq_list_has_key.exit
  %txq_tailidx = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %i.077, i32 10
  %20 = ptrtoint ptr %txq_tailidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %txq_tailidx, align 1
  %conv = zext i8 %21 to i32
  %arrayidx1795 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %i.077, i32 8, i32 %conv
  %22 = ptrtoint ptr %arrayidx1795 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %arrayidx1795, align 4
  %cmp.i96 = icmp eq ptr %23, %arrayidx1795
  br i1 %cmp.i96, label %land.rhs16.preheader.if.end26_crit_edge, label %land.rhs16.preheader.for.body.i60.preheader_crit_edge

land.rhs16.preheader.for.body.i60.preheader_crit_edge: ; preds = %land.rhs16.preheader
  br label %for.body.i60.preheader

land.rhs16.preheader.if.end26_crit_edge:          ; preds = %land.rhs16.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

for.body.i60.preheader:                           ; preds = %ath9k_txq_list_has_key.exit72.for.body.i60.preheader_crit_edge, %land.rhs16.preheader.for.body.i60.preheader_crit_edge
  %24 = phi ptr [ %33, %ath9k_txq_list_has_key.exit72.for.body.i60.preheader_crit_edge ], [ %23, %land.rhs16.preheader.for.body.i60.preheader_crit_edge ]
  %arrayidx1798 = phi ptr [ %arrayidx17, %ath9k_txq_list_has_key.exit72.for.body.i60.preheader_crit_edge ], [ %arrayidx1795, %land.rhs16.preheader.for.body.i60.preheader_crit_edge ]
  %idx.07597 = phi i32 [ %and25, %ath9k_txq_list_has_key.exit72.for.body.i60.preheader_crit_edge ], [ %conv, %land.rhs16.preheader.for.body.i60.preheader_crit_edge ]
  br label %for.body.i60

for.body.i60:                                     ; preds = %for.inc.i70.for.body.i60_crit_edge, %for.body.i60.preheader
  %bf.022.i57 = phi ptr [ %bf.0.i68, %for.inc.i70.for.body.i60_crit_edge ], [ %24, %for.body.i60.preheader ]
  %stale.i58 = getelementptr inbounds %struct.ath_buf, ptr %bf.022.i57, i32 0, i32 8, i32 3
  %25 = ptrtoint ptr %stale.i58 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %stale.i58, align 1, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i59 = icmp eq i8 %26, 0
  br i1 %tobool.not.i59, label %lor.lhs.false.i63, label %for.body.i60.for.inc.i70_crit_edge

for.body.i60.for.inc.i70_crit_edge:               ; preds = %for.body.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i70

lor.lhs.false.i63:                                ; preds = %for.body.i60
  %bf_mpdu.i61 = getelementptr inbounds %struct.ath_buf, ptr %bf.022.i57, i32 0, i32 3
  %27 = ptrtoint ptr %bf_mpdu.i61 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bf_mpdu.i61, align 4
  %tobool1.not.i62 = icmp eq ptr %28, null
  br i1 %tobool1.not.i62, label %lor.lhs.false.i63.for.inc.i70_crit_edge, label %if.end.i67

lor.lhs.false.i63.for.inc.i70_crit_edge:          ; preds = %lor.lhs.false.i63
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i70

if.end.i67:                                       ; preds = %lor.lhs.false.i63
  %keyix3.i64 = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 3, i32 31
  %29 = ptrtoint ptr %keyix3.i64 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %keyix3.i64, align 1
  %conv.i65 = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i65, i32 %keyix)
  %cmp4.i66 = icmp eq i32 %conv.i65, %keyix
  br i1 %cmp4.i66, label %if.end.i67.if.end26_crit_edge, label %if.end.i67.for.inc.i70_crit_edge

if.end.i67.for.inc.i70_crit_edge:                 ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i70

if.end.i67.if.end26_crit_edge:                    ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

for.inc.i70:                                      ; preds = %if.end.i67.for.inc.i70_crit_edge, %lor.lhs.false.i63.for.inc.i70_crit_edge, %for.body.i60.for.inc.i70_crit_edge
  %31 = ptrtoint ptr %bf.022.i57 to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.0.i68 = load ptr, ptr %bf.022.i57, align 4
  %cmp.not.i69 = icmp eq ptr %bf.0.i68, %arrayidx1798
  br i1 %cmp.not.i69, label %ath9k_txq_list_has_key.exit72, label %for.inc.i70.for.body.i60_crit_edge

for.inc.i70.for.body.i60_crit_edge:               ; preds = %for.inc.i70
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i60

ath9k_txq_list_has_key.exit72:                    ; preds = %for.inc.i70
  %inc = add nuw nsw i32 %idx.07597, 1
  %and25 = and i32 %inc, 7
  %arrayidx17 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %i.077, i32 8, i32 %and25
  %32 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %arrayidx17, align 4
  %cmp.i = icmp eq ptr %33, %arrayidx17
  br i1 %cmp.i, label %ath9k_txq_list_has_key.exit72.if.end26_crit_edge, label %ath9k_txq_list_has_key.exit72.for.body.i60.preheader_crit_edge

ath9k_txq_list_has_key.exit72.for.body.i60.preheader_crit_edge: ; preds = %ath9k_txq_list_has_key.exit72
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i60.preheader

ath9k_txq_list_has_key.exit72.if.end26_crit_edge: ; preds = %ath9k_txq_list_has_key.exit72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end26:                                         ; preds = %ath9k_txq_list_has_key.exit72.if.end26_crit_edge, %if.end.i67.if.end26_crit_edge, %land.rhs16.preheader.if.end26_crit_edge, %ath9k_txq_list_has_key.exit.if.end26_crit_edge, %if.end.i.if.end26_crit_edge
  %extract.t50 = phi i1 [ false, %ath9k_txq_list_has_key.exit.if.end26_crit_edge ], [ false, %land.rhs16.preheader.if.end26_crit_edge ], [ true, %if.end.i67.if.end26_crit_edge ], [ false, %ath9k_txq_list_has_key.exit72.if.end26_crit_edge ], [ true, %if.end.i.if.end26_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %axq_lock.i) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end26, %if.end6.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %key_in_use.3.off0 = phi i1 [ %extract.t50, %if.end26 ], [ %key_in_use.0.off081, %if.end6.for.inc_crit_edge ], [ %key_in_use.0.off081, %if.end.for.inc_crit_edge ], [ %key_in_use.0.off081, %for.body.for.inc_crit_edge ]
  %inc27 = add nuw nsw i32 %i.077, 1
  %key_in_use.0.off0.not = xor i1 %key_in_use.3.off0, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.077)
  %cmp = icmp ult i32 %i.077, 9
  %or.cond = select i1 %key_in_use.0.off0.not, i1 %cmp, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  ret i1 %key_in_use.3.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_key_delete(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_hw_numtxpending(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_beacon_assign_slot(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_tx_node_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_p2p_remove_vif(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_beacon_remove_slot(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_tx_node_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_stop_btcoex(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_start_btcoex(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_p2p_bss_info_changed(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_check_ani(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_calcrxfilter(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_setrxfilter(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_key_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath_hw_keysetmac(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_tx_aggr_sleep(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_tx_aggr_wakeup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_set_tx_filter(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_dynack_node_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_dynack_node_deinit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_update_max_aggr_framelen(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_txq_update(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ath9k_hw_gettsf64(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_raw_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_tx_aggr_start(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_tx_aggr_stop(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_cmn_reload_chainmask(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !54, !56, !58, !60, !61, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 400, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 415, i32 4}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 427, i32 4}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 439, i32 3}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 580, i32 8}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 1269, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 2205, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 2210, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 2221, i32 2}
!20 = !{ptr @ath9k_ops, !21, !"ath9k_ops", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 2770, i32 22}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 325, i32 2}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 330, i32 3}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 1138, i32 2}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 2441, i32 2}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 2445, i32 3}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 2461, i32 2}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 2490, i32 2}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 2495, i32 3}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 2513, i32 2}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 2546, i32 3}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 2570, i32 2}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 2590, i32 2}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 2611, i32 2}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 2403, i32 3}
!51 = !{ptr @__func__.ath9k_cancel_pending_offchannel, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 2412, i32 3}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 2642, i32 2}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 2708, i32 4}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 2719, i32 2}
!60 = !{ptr @__func__.ath9k_mgd_prepare_tx, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @init_completion.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../include/linux/completion.h", i32 87, i32 2}
!63 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 772, i32 4}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 789, i32 4}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 793, i32 4}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 810, i32 3}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 818, i32 2}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 821, i32 3}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 664, i32 2}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 690, i32 3}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 986, i32 2}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 1347, i32 2}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 1421, i32 2}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 1531, i32 4}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 1534, i32 4}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 1883, i32 3}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 1934, i32 3}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 1589, i32 2}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 1795, i32 2}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 1658, i32 3}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 1663, i32 3}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 1739, i32 2}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 1747, i32 3}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ath/ath9k/main.c", i32 2054, i32 3}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{!"auto-init"}
!118 = !{i8 0, i8 2}
!119 = !{!"branch_weights", i32 2000, i32 1}
!120 = !{i64 2148577896, i64 2148577922, i64 2148577951, i64 2148577985, i64 2148578016, i64 2148578039}
!121 = !{i64 2155677951}
!122 = !{i64 2155678593}
!123 = !{i64 2155678940}
!124 = !{i64 2148580361, i64 2148580387, i64 2148580416, i64 2148580450, i64 2148580481, i64 2148580504}
!125 = !{!"branch_weights", i32 1, i32 2000}
!126 = !{i64 2157799819, i64 2157800322, i64 2157799856, i64 2157799912, i64 2157799946, i64 2157799970, i64 2157800011, i64 2157800032, i64 2157800060, i64 2157800094}
