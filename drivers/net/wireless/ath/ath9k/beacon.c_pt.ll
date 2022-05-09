; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/beacon.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/beacon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ath_softc = type { ptr, ptr, ptr, [38 x %struct.survey_info], %struct.spinlock, %struct.tasklet_struct, %struct.tasklet_struct, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.completion, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.ath_chanctx_sched, %struct.ath_offchannel, ptr, %struct.completion, %struct.timespec64, i32, i8, i32, i16, i8, i8, i16, i32, %struct.ath_rx, %struct.ath_tx, %struct.ath_beacon, %struct.cfg80211_chan_def, [2 x %struct.ath_chanctx], ptr, %struct.spinlock, i8, [32 x i8], %struct.led_classdev, %struct.ath9k_debug, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.ath_btcoex, %struct.ath_mci_coex, %struct.work_struct, %struct.ath_descdma, %struct.ath_ant_comb, i8, i8, ptr, i64, i32, %struct.ath_spec_scan_priv, ptr, ptr, i8, i16, i32, i8, i32, ptr }
%struct.survey_info = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.129, i32 }
%struct.atomic_t = type { i32 }
%union.anon.129 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.ieee80211_edmg = type { i8, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ath_btcoex = type { %struct.spinlock, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ath_mci_profile, i8 }
%struct.ath_mci_profile = type { %struct.list_head, [1 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ath_mci_coex = type { %struct.ath_mci_buf, %struct.ath_mci_buf }
%struct.ath_mci_buf = type { ptr, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ath_descdma = type { ptr, i32, i32 }
%struct.ath_ant_comb = type { i16, i16, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i8, i8, i32, i32, i32 }
%struct.ath_spec_scan_priv = type { ptr, ptr, i32, %struct.ath_spec_scan }
%struct.ath_spec_scan = type { i8, i8, i8, i8, i8, i8 }
%struct.ath_hw = type { %struct.ath_ops, ptr, ptr, %struct.ath_common, %struct.ath9k_hw_version, %struct.ath9k_ops_config, %struct.ath9k_hw_capabilities, [38 x %struct.ath9k_channel], ptr, %union.anon.130, ptr, i8, i8, i8, i8, i8, i8, i16, [6 x i32], %struct.ath_nf_limits, %struct.ath_nf_limits, i16, i32, i32, i32, i16, i8, i8, i32, i32, i8, ptr, %struct.ath9k_pacal_info, %struct.ar5416Stats, [10 x %struct.ath9k_tx_queue_info], [4 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i8, i32, i32, i32, %struct.ath9k_cal_list, %struct.ath9k_cal_list, %struct.ath9k_cal_list, ptr, ptr, ptr, %union.anon.131, %union.anon.132, %union.anon.133, %union.anon.134, i16, i8, i32, i32, %struct.ath_hw_private_ops, %struct.ath_hw_ops, ptr, i32, i32, i32, i32, i32, i32, %struct.ar5416AniState, %struct.ath_btcoex_hw, i32, i8, i8, %struct.ath_hw_radar_conf, [22 x i32], i32, i32, i32, i32, i32, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], i32, i32, %struct.ath_gen_timer_table, ptr, i32, i32, i16, i16, i32, i32, i8, i32, i32, i32, i32, i8, [32 x i32], [32 x i8], i32, i32, %struct.ath9k_hw_wow, i8, ptr, ptr, i8, i8, ptr, ptr, i32, %struct.ath_dynack, i8, [36 x i8], [36 x i8], i8, i32, i32 }
%struct.ath_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.ath_cycle_counters = type { i32, i32, i32, i32 }
%struct.ath_regulatory = type { [2 x i8], i32, i16, i16, i16, i16, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
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
%struct.ath_dyn_rxbuf = type { i16, i16, [64 x i32] }
%struct.ath_dyn_txbuf = type { i16, i16, [64 x %struct.haddr_pair], [64 x %struct.ts_info] }
%struct.haddr_pair = type { [6 x i8], [6 x i8] }
%struct.ts_info = type { i32, i32 }
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
%struct.ath_buf = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, [4 x %struct.ieee80211_tx_rate], %struct.ath_buf_state }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.ath_buf_state = type { i8, i8, i8, i8, i16, i32 }
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
%struct.ath_tx_info = type { i8, i8, i8, i32, i8, i16, i32, i32, i32, [4 x i32], [4 x i32], [4 x %struct.ath9k_11n_rate_series], i8, i8, i32, i32, i8, [4 x i8] }
%struct.ath9k_11n_rate_series = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.149 }
%union.anon.149 = type { %struct.anon.155, [16 x i8] }
%struct.anon.155 = type { i16, i16, [6 x i8], [0 x i8] }
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
%struct.page = type { i32, %union.anon.17, %union.anon.86, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.86 = type { %struct.atomic_t }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ath9k_beacon_state = type { i32, i32, i32, i32, i16, i32, i32 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Added interface at beacon slot: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Removing interface at beacon slot: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/wireless/ath/ath9k/beacon.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Adjusting global TSF after beacon slot reassignment: %lld\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"reset work is pending, skip beaconing now\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"missed %u consecutive beacons\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"beacon is officially stuck\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"resume beacon xmit after %u misses\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Transmitting beacon for slot: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported beaconing mode\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"slot 0, tsf: %llu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"slot: %d tsf: %llu tsftu: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dma_mapping_error on beaconing\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Flushing previous cabq traffic\0A\00", [32 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Caching beacon data for BSS: %pM\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"tsfadjust is: %lld for bslot: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Unable to update h/w beacon queue parameters\0A\00", [50 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 213, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 223, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 282, i32 6 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 289, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 399, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 426, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 433, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 465, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 499, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 714, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 317, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 328, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 161, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 181, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 326, i32 6 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 593, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 358, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [43 x i8] c"../drivers/net/wireless/ath/ath9k/beacon.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 61, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_beacon_assign_slot(ptr nocapture noundef %sc, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %bbuf = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 8
  %2 = ptrtoint ptr %bbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bbuf, align 4
  %av_bcbuf = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 3, i32 7
  %4 = ptrtoint ptr %av_bcbuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %av_bcbuf, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %arrayidx = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 0
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %cmp3 = icmp eq ptr %14, null
  br i1 %cmp3, label %list_del.exit.if.then_crit_edge, label %for.inc

list_del.exit.if.then_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %for.inc.6.if.then_crit_edge, %for.inc.5.if.then_crit_edge, %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %list_del.exit.if.then_crit_edge
  %slot.024.lcssa = phi i32 [ 0, %list_del.exit.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ], [ 4, %for.inc.3.if.then_crit_edge ], [ 5, %for.inc.4.if.then_crit_edge ], [ 6, %for.inc.5.if.then_crit_edge ], [ 7, %for.inc.6.if.then_crit_edge ]
  %av_bslot = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 3, i32 1
  %15 = ptrtoint ptr %av_bslot to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %slot.024.lcssa, ptr %av_bslot, align 4
  br label %for.end

for.inc:                                          ; preds = %list_del.exit
  %arrayidx.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.1, align 4
  %cmp3.1 = icmp eq ptr %17, null
  br i1 %cmp3.1, label %for.inc.if.then_crit_edge, label %for.inc.1

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.2, align 4
  %cmp3.2 = icmp eq ptr %19, null
  br i1 %cmp3.2, label %for.inc.1.if.then_crit_edge, label %for.inc.2

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.3, align 4
  %cmp3.3 = icmp eq ptr %21, null
  br i1 %cmp3.3, label %for.inc.2.if.then_crit_edge, label %for.inc.3

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 4
  %22 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.4, align 4
  %cmp3.4 = icmp eq ptr %23, null
  br i1 %cmp3.4, label %for.inc.3.if.then_crit_edge, label %for.inc.4

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 5
  %24 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.5, align 4
  %cmp3.5 = icmp eq ptr %25, null
  br i1 %cmp3.5, label %for.inc.4.if.then_crit_edge, label %for.inc.5

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 6
  %26 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.6, align 4
  %cmp3.6 = icmp eq ptr %27, null
  br i1 %cmp3.6, label %for.inc.5.if.then_crit_edge, label %for.inc.6

for.inc.5.if.then_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 7
  %28 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.7, align 4
  %cmp3.7 = icmp eq ptr %29, null
  br i1 %cmp3.7, label %for.inc.6.if.then_crit_edge, label %for.inc.6.for.end_crit_edge

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.6.if.then_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

for.end:                                          ; preds = %for.inc.6.for.end_crit_edge, %if.then
  %av_bslot6 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 3, i32 1
  %30 = ptrtoint ptr %av_bslot6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %av_bslot6, align 4
  %arrayidx7 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 %31
  %32 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %vif, ptr %arrayidx7, align 4
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %33 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %debug_mask, align 4
  %and = and i32 %34, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.end.do.end_crit_edge, label %if.then8

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then8:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %av_bslot6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %av_bslot6, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1, i32 noundef %36) #5
  br label %do.end

do.end:                                           ; preds = %if.then8, %for.end.do.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_beacon_remove_slot(ptr noundef %sc, ptr nocapture noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %av_bcbuf = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 3, i32 7
  %2 = ptrtoint ptr %av_bcbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %av_bcbuf, align 8
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug_mask, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %av_bslot = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 3, i32 1
  %6 = ptrtoint ptr %av_bslot to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %av_bslot, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.2, i32 noundef %7) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %bcon_tasklet = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 6
  %count.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 6, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #5
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #5, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @tasklet_unlock_wait(ptr noundef %bcon_tasklet) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !51
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %do.end.if.end7_crit_edge, label %land.lhs.true

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

land.lhs.true:                                    ; preds = %do.end
  %bf_mpdu = getelementptr inbounds %struct.ath_buf, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %bf_mpdu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bf_mpdu, align 4
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %land.lhs.true.if.end7_crit_edge, label %if.then3

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %bf_buf_addr = getelementptr inbounds %struct.ath_buf, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %bf_buf_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bf_buf_addr, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 6
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef 1, i32 noundef 0) #5
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %10, i32 noundef 1) #5
  %17 = ptrtoint ptr %bf_mpdu to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %bf_mpdu, align 4
  %18 = ptrtoint ptr %bf_buf_addr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %bf_buf_addr, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %land.lhs.true.if.end7_crit_edge, %do.end.if.end7_crit_edge
  %19 = ptrtoint ptr %av_bcbuf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %av_bcbuf, align 8
  %av_bslot9 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 3, i32 1
  %20 = ptrtoint ptr %av_bslot9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %av_bslot9, align 4
  %arrayidx = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 %21
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx, align 4
  %bbuf = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 8
  %prev.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 8, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %3, ptr noundef %24, ptr noundef %bbuf) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end7.list_add_tail.exit_crit_edge

if.end7.list_add_tail.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %3, ptr %prev.i, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %bbuf, ptr %3, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %3, ptr %24, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end7.list_add_tail.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !52
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #5
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #5, !srcloc !53
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_beacon_ensure_primary_slot(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %bcon_tasklet = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 6
  %count.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 6, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #5
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #5, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @tasklet_unlock_spin_wait(ptr noundef %bcon_tasklet) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !54
  %arrayidx = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.inc, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %6, null
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.if.then8_crit_edge

for.inc.if.then8_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 2
  %7 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %8, null
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.if.then8_crit_edge

for.inc.1.if.then8_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 3
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %10, null
  br i1 %tobool.not.3, label %for.inc.3, label %for.inc.2.if.then8_crit_edge

for.inc.2.if.then8_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 4
  %11 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %12, null
  br i1 %tobool.not.4, label %for.inc.4, label %for.inc.3.if.then8_crit_edge

for.inc.3.if.then8_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 5
  %13 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %14, null
  br i1 %tobool.not.5, label %for.inc.5, label %for.inc.4.if.then8_crit_edge

for.inc.4.if.then8_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 6
  %15 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %16, null
  br i1 %tobool.not.6, label %for.inc.6, label %for.inc.5.if.then8_crit_edge

for.inc.5.if.then8_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 7
  %17 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.7, align 4
  %tobool.not.7 = icmp eq ptr %18, null
  br i1 %tobool.not.7, label %for.inc23.thread, label %if.then8.thread

if.then8:                                         ; preds = %for.inc.5.if.then8_crit_edge, %for.inc.4.if.then8_crit_edge, %for.inc.3.if.then8_crit_edge, %for.inc.2.if.then8_crit_edge, %for.inc.1.if.then8_crit_edge, %for.inc.if.then8_crit_edge
  %cmp7.2.ph.ph = phi i1 [ false, %for.inc.5.if.then8_crit_edge ], [ true, %for.inc.4.if.then8_crit_edge ], [ true, %for.inc.3.if.then8_crit_edge ], [ true, %for.inc.2.if.then8_crit_edge ], [ true, %for.inc.1.if.then8_crit_edge ], [ true, %for.inc.if.then8_crit_edge ]
  %cmp7.3.ph.ph = phi i1 [ false, %for.inc.5.if.then8_crit_edge ], [ false, %for.inc.4.if.then8_crit_edge ], [ true, %for.inc.3.if.then8_crit_edge ], [ true, %for.inc.2.if.then8_crit_edge ], [ true, %for.inc.1.if.then8_crit_edge ], [ true, %for.inc.if.then8_crit_edge ]
  %cmp7.4.ph.ph = phi i1 [ false, %for.inc.5.if.then8_crit_edge ], [ false, %for.inc.4.if.then8_crit_edge ], [ false, %for.inc.3.if.then8_crit_edge ], [ true, %for.inc.2.if.then8_crit_edge ], [ true, %for.inc.1.if.then8_crit_edge ], [ true, %for.inc.if.then8_crit_edge ]
  %cmp7.5.ph.ph = phi i1 [ false, %for.inc.5.if.then8_crit_edge ], [ false, %for.inc.4.if.then8_crit_edge ], [ false, %for.inc.3.if.then8_crit_edge ], [ false, %for.inc.2.if.then8_crit_edge ], [ true, %for.inc.1.if.then8_crit_edge ], [ true, %for.inc.if.then8_crit_edge ]
  %first_slot.0.ph.ph = phi i32 [ 6, %for.inc.5.if.then8_crit_edge ], [ 5, %for.inc.4.if.then8_crit_edge ], [ 4, %for.inc.3.if.then8_crit_edge ], [ 3, %for.inc.2.if.then8_crit_edge ], [ 2, %for.inc.1.if.then8_crit_edge ], [ 1, %for.inc.if.then8_crit_edge ]
  %arrayidx12 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 %first_slot.0.ph.ph
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx12, align 4
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %arrayidx, align 4
  %tobool16.not = icmp eq ptr %20, null
  br i1 %tobool16.not, label %if.then8.if.then8.1_crit_edge, label %if.then17

if.then8.if.then8.1_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8.1

if.then8.thread:                                  ; preds = %for.inc.6
  %arrayidx12227 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 7
  %22 = ptrtoint ptr %arrayidx12227 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx12227, align 4
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %arrayidx, align 4
  %tobool16.not228 = icmp eq ptr %23, null
  br i1 %tobool16.not228, label %if.then8.thread.if.else.5.thread_crit_edge, label %if.then17.thread

if.then8.thread.if.else.5.thread_crit_edge:       ; preds = %if.then8.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.5.thread

if.then17.thread:                                 ; preds = %if.then8.thread
  call void @__sanitizer_cov_trace_pc() #7
  %av_bslot243 = getelementptr inbounds %struct.ieee80211_vif, ptr %23, i32 1, i32 1, i32 62, i32 0, i32 2, i32 3, i32 1
  %25 = ptrtoint ptr %av_bslot243 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %av_bslot243, align 4
  br label %if.else.5.thread

if.then17:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  %av_bslot = getelementptr inbounds %struct.ieee80211_vif, ptr %20, i32 1, i32 1, i32 62, i32 0, i32 2, i32 3, i32 1
  %26 = ptrtoint ptr %av_bslot to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %av_bslot, align 4
  br label %if.then8.1

for.inc23.thread:                                 ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx, align 4
  br label %if.else.5.thread

if.else.5.thread:                                 ; preds = %for.inc23.thread, %if.then17.thread, %if.then8.thread.if.else.5.thread_crit_edge
  %arrayidx21.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 1
  %28 = call ptr @memset(ptr %arrayidx21.1, i32 0, i32 20)
  br label %if.else.6

if.then8.1:                                       ; preds = %if.then17, %if.then8.if.then8.1_crit_edge
  %add.1 = add nuw nsw i32 %first_slot.0.ph.ph, 1
  %arrayidx12.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 %add.1
  %29 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx12.1, align 4
  %arrayidx15.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 1
  %31 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %arrayidx15.1, align 4
  %tobool16.not.1 = icmp eq ptr %30, null
  br i1 %tobool16.not.1, label %for.inc23.1, label %if.then17.1

if.then17.1:                                      ; preds = %if.then8.1
  %av_bslot.1 = getelementptr inbounds %struct.ieee80211_vif, ptr %30, i32 1, i32 1, i32 62, i32 0, i32 2, i32 3, i32 1
  %32 = ptrtoint ptr %av_bslot.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %av_bslot.1, align 4
  br i1 %cmp7.2.ph.ph, label %if.then17.1.if.then8.2_crit_edge, label %if.then17.1.if.else.2_crit_edge

if.then17.1.if.else.2_crit_edge:                  ; preds = %if.then17.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.2

if.then17.1.if.then8.2_crit_edge:                 ; preds = %if.then17.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8.2

for.inc23.1:                                      ; preds = %if.then8.1
  br i1 %cmp7.2.ph.ph, label %for.inc23.1.if.then8.2_crit_edge, label %for.inc23.1.if.else.2_crit_edge

for.inc23.1.if.else.2_crit_edge:                  ; preds = %for.inc23.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.2

for.inc23.1.if.then8.2_crit_edge:                 ; preds = %for.inc23.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8.2

if.else.2:                                        ; preds = %for.inc23.1.if.else.2_crit_edge, %if.then17.1.if.else.2_crit_edge
  %arrayidx21.2 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 2
  %33 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx21.2, align 4
  br i1 %cmp7.3.ph.ph, label %if.else.2.if.then8.3_crit_edge, label %if.else.2.if.else.3_crit_edge

if.else.2.if.else.3_crit_edge:                    ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.3

if.else.2.if.then8.3_crit_edge:                   ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8.3

if.then8.2:                                       ; preds = %for.inc23.1.if.then8.2_crit_edge, %if.then17.1.if.then8.2_crit_edge
  %add.2 = add nuw nsw i32 %first_slot.0.ph.ph, 2
  %arrayidx12.2 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 %add.2
  %34 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx12.2, align 4
  %arrayidx15.2 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 2
  %36 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %arrayidx15.2, align 4
  %tobool16.not.2 = icmp eq ptr %35, null
  br i1 %tobool16.not.2, label %for.inc23.2, label %if.then17.2

if.then17.2:                                      ; preds = %if.then8.2
  %av_bslot.2 = getelementptr inbounds %struct.ieee80211_vif, ptr %35, i32 1, i32 1, i32 62, i32 0, i32 2, i32 3, i32 1
  %37 = ptrtoint ptr %av_bslot.2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %av_bslot.2, align 4
  br i1 %cmp7.3.ph.ph, label %if.then17.2.if.then8.3_crit_edge, label %if.then17.2.if.else.3_crit_edge

if.then17.2.if.else.3_crit_edge:                  ; preds = %if.then17.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.3

if.then17.2.if.then8.3_crit_edge:                 ; preds = %if.then17.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8.3

for.inc23.2:                                      ; preds = %if.then8.2
  br i1 %cmp7.3.ph.ph, label %for.inc23.2.if.then8.3_crit_edge, label %for.inc23.2.if.else.3_crit_edge

for.inc23.2.if.else.3_crit_edge:                  ; preds = %for.inc23.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.3

for.inc23.2.if.then8.3_crit_edge:                 ; preds = %for.inc23.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8.3

if.else.3:                                        ; preds = %for.inc23.2.if.else.3_crit_edge, %if.then17.2.if.else.3_crit_edge, %if.else.2.if.else.3_crit_edge
  %arrayidx21.3 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 3
  %38 = ptrtoint ptr %arrayidx21.3 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %arrayidx21.3, align 4
  br i1 %cmp7.4.ph.ph, label %if.else.3.if.then8.4_crit_edge, label %if.else.3.if.else.4_crit_edge

if.else.3.if.else.4_crit_edge:                    ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.4

if.else.3.if.then8.4_crit_edge:                   ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8.4

if.then8.3:                                       ; preds = %for.inc23.2.if.then8.3_crit_edge, %if.then17.2.if.then8.3_crit_edge, %if.else.2.if.then8.3_crit_edge
  %add.3 = add nuw nsw i32 %first_slot.0.ph.ph, 3
  %arrayidx12.3 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 %add.3
  %39 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx12.3, align 4
  %arrayidx15.3 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 3
  %41 = ptrtoint ptr %arrayidx15.3 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %arrayidx15.3, align 4
  %tobool16.not.3 = icmp eq ptr %40, null
  br i1 %tobool16.not.3, label %for.inc23.3, label %if.then17.3

if.then17.3:                                      ; preds = %if.then8.3
  %av_bslot.3 = getelementptr inbounds %struct.ieee80211_vif, ptr %40, i32 1, i32 1, i32 62, i32 0, i32 2, i32 3, i32 1
  %42 = ptrtoint ptr %av_bslot.3 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3, ptr %av_bslot.3, align 4
  br i1 %cmp7.4.ph.ph, label %if.then17.3.if.then8.4_crit_edge, label %if.then17.3.if.else.4_crit_edge

if.then17.3.if.else.4_crit_edge:                  ; preds = %if.then17.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.4

if.then17.3.if.then8.4_crit_edge:                 ; preds = %if.then17.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8.4

for.inc23.3:                                      ; preds = %if.then8.3
  br i1 %cmp7.4.ph.ph, label %for.inc23.3.if.then8.4_crit_edge, label %for.inc23.3.if.else.4_crit_edge

for.inc23.3.if.else.4_crit_edge:                  ; preds = %for.inc23.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.4

for.inc23.3.if.then8.4_crit_edge:                 ; preds = %for.inc23.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8.4

if.else.4:                                        ; preds = %for.inc23.3.if.else.4_crit_edge, %if.then17.3.if.else.4_crit_edge, %if.else.3.if.else.4_crit_edge
  %arrayidx21.4 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 4
  %43 = ptrtoint ptr %arrayidx21.4 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %arrayidx21.4, align 4
  br i1 %cmp7.5.ph.ph, label %if.else.4.if.then8.5_crit_edge, label %if.else.4.if.else.5_crit_edge

if.else.4.if.else.5_crit_edge:                    ; preds = %if.else.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.5

if.else.4.if.then8.5_crit_edge:                   ; preds = %if.else.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8.5

if.then8.4:                                       ; preds = %for.inc23.3.if.then8.4_crit_edge, %if.then17.3.if.then8.4_crit_edge, %if.else.3.if.then8.4_crit_edge
  %add.4 = add nuw nsw i32 %first_slot.0.ph.ph, 4
  %arrayidx12.4 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 %add.4
  %44 = ptrtoint ptr %arrayidx12.4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx12.4, align 4
  %arrayidx15.4 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 4
  %46 = ptrtoint ptr %arrayidx15.4 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %arrayidx15.4, align 4
  %tobool16.not.4 = icmp eq ptr %45, null
  br i1 %tobool16.not.4, label %for.inc23.4, label %if.then17.4

if.then17.4:                                      ; preds = %if.then8.4
  %av_bslot.4 = getelementptr inbounds %struct.ieee80211_vif, ptr %45, i32 1, i32 1, i32 62, i32 0, i32 2, i32 3, i32 1
  %47 = ptrtoint ptr %av_bslot.4 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 4, ptr %av_bslot.4, align 4
  br i1 %cmp7.5.ph.ph, label %if.then17.4.if.then8.5_crit_edge, label %if.then17.4.if.else.5_crit_edge

if.then17.4.if.else.5_crit_edge:                  ; preds = %if.then17.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.5

if.then17.4.if.then8.5_crit_edge:                 ; preds = %if.then17.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8.5

for.inc23.4:                                      ; preds = %if.then8.4
  br i1 %cmp7.5.ph.ph, label %for.inc23.4.if.then8.5_crit_edge, label %for.inc23.4.if.else.5_crit_edge

for.inc23.4.if.else.5_crit_edge:                  ; preds = %for.inc23.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.5

for.inc23.4.if.then8.5_crit_edge:                 ; preds = %for.inc23.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8.5

if.else.5:                                        ; preds = %for.inc23.4.if.else.5_crit_edge, %if.then17.4.if.else.5_crit_edge, %if.else.4.if.else.5_crit_edge
  %arrayidx21.5 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 5
  %48 = ptrtoint ptr %arrayidx21.5 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %arrayidx21.5, align 4
  br i1 %tobool.not.1, label %if.else.5.if.else.6_crit_edge, label %if.else.5.if.then8.6_crit_edge

if.else.5.if.then8.6_crit_edge:                   ; preds = %if.else.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8.6

if.else.5.if.else.6_crit_edge:                    ; preds = %if.else.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.6

if.then8.5:                                       ; preds = %for.inc23.4.if.then8.5_crit_edge, %if.then17.4.if.then8.5_crit_edge, %if.else.4.if.then8.5_crit_edge
  %add.5 = add nuw nsw i32 %first_slot.0.ph.ph, 5
  %arrayidx12.5 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 %add.5
  %49 = ptrtoint ptr %arrayidx12.5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx12.5, align 4
  %arrayidx15.5 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 5
  %51 = ptrtoint ptr %arrayidx15.5 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %arrayidx15.5, align 4
  %tobool16.not.5 = icmp eq ptr %50, null
  br i1 %tobool16.not.5, label %for.inc23.5, label %if.then17.5

if.then17.5:                                      ; preds = %if.then8.5
  %av_bslot.5 = getelementptr inbounds %struct.ieee80211_vif, ptr %50, i32 1, i32 1, i32 62, i32 0, i32 2, i32 3, i32 1
  %52 = ptrtoint ptr %av_bslot.5 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 5, ptr %av_bslot.5, align 4
  br i1 %tobool.not.1, label %if.then17.5.if.else.6_crit_edge, label %if.then17.5.if.then8.6_crit_edge

if.then17.5.if.then8.6_crit_edge:                 ; preds = %if.then17.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8.6

if.then17.5.if.else.6_crit_edge:                  ; preds = %if.then17.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.6

for.inc23.5:                                      ; preds = %if.then8.5
  br i1 %tobool.not.1, label %for.inc23.5.if.else.6_crit_edge, label %for.inc23.5.if.then8.6_crit_edge

for.inc23.5.if.then8.6_crit_edge:                 ; preds = %for.inc23.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8.6

for.inc23.5.if.else.6_crit_edge:                  ; preds = %for.inc23.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.6

if.else.6:                                        ; preds = %for.inc23.5.if.else.6_crit_edge, %if.then17.5.if.else.6_crit_edge, %if.else.5.if.else.6_crit_edge, %if.else.5.thread
  %arrayidx21.6 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 6
  %53 = ptrtoint ptr %arrayidx21.6 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %arrayidx21.6, align 4
  br label %for.inc23.7

if.then8.6:                                       ; preds = %for.inc23.5.if.then8.6_crit_edge, %if.then17.5.if.then8.6_crit_edge, %if.else.5.if.then8.6_crit_edge
  %add.6 = add nuw nsw i32 %first_slot.0.ph.ph, 6
  %arrayidx12.6 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 %add.6
  %54 = ptrtoint ptr %arrayidx12.6 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx12.6, align 4
  %arrayidx15.6 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 6
  %56 = ptrtoint ptr %arrayidx15.6 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %arrayidx15.6, align 4
  %tobool16.not.6 = icmp eq ptr %55, null
  br i1 %tobool16.not.6, label %if.then8.6.for.inc23.7_crit_edge, label %if.then17.6

if.then8.6.for.inc23.7_crit_edge:                 ; preds = %if.then8.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc23.7

if.then17.6:                                      ; preds = %if.then8.6
  call void @__sanitizer_cov_trace_pc() #7
  %av_bslot.6 = getelementptr inbounds %struct.ieee80211_vif, ptr %55, i32 1, i32 1, i32 62, i32 0, i32 2, i32 3, i32 1
  %57 = ptrtoint ptr %av_bslot.6 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 6, ptr %av_bslot.6, align 4
  br label %for.inc23.7

for.inc23.7:                                      ; preds = %if.then17.6, %if.then8.6.for.inc23.7_crit_edge, %if.else.6
  %arrayidx21.7 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 7
  %58 = ptrtoint ptr %arrayidx21.7 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %arrayidx21.7, align 4
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx, align 4
  %tobool29.not = icmp eq ptr %60, null
  br i1 %tobool29.not, label %do.end, label %if.end54.critedge, !prof !55

do.end:                                           ; preds = %for.inc23.7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 282, i32 noundef 9, ptr noundef null) #5
  br label %out

if.end54.critedge:                                ; preds = %for.inc23.7
  %tsf_adjust = getelementptr inbounds %struct.ieee80211_vif, ptr %60, i32 1, i32 1, i32 62, i32 0, i32 2, i32 3, i32 3
  %61 = ptrtoint ptr %tsf_adjust to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %tsf_adjust, align 8
  %63 = tail call i64 @llvm.bswap.i64(i64 %62)
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %64 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %debug_mask, align 4
  %and = and i32 %65, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool58.not = icmp eq i32 %and, 0
  br i1 %tobool58.not, label %if.end54.critedge.do.end62_crit_edge, label %if.then59

if.end54.critedge.do.end62_crit_edge:             ; preds = %if.end54.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end62

if.then59:                                        ; preds = %if.end54.critedge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.4, i64 noundef %63) #5
  br label %do.end62

do.end62:                                         ; preds = %if.then59, %if.end54.critedge.do.end62_crit_edge
  %chanctx = getelementptr inbounds %struct.ieee80211_vif, ptr %60, i32 1, i32 1, i32 62, i32 0, i32 2, i32 4
  %66 = ptrtoint ptr %chanctx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %chanctx, align 4
  %tsf_val = getelementptr inbounds %struct.ath_chanctx, ptr %67, i32 0, i32 8
  %68 = ptrtoint ptr %tsf_val to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %tsf_val, align 8
  %add63 = add i64 %69, %63
  store i64 %add63, ptr %tsf_val, align 8
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %70 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cur_chan, align 8
  %72 = load ptr, ptr %chanctx, align 4
  %cmp65 = icmp eq ptr %71, %72
  br i1 %cmp65, label %if.then66, label %do.end62.out_crit_edge

do.end62.out_crit_edge:                           ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then66:                                        ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #7
  %tsf_ts = getelementptr inbounds %struct.ath_chanctx, ptr %71, i32 0, i32 7
  %call68 = tail call i32 @ath9k_hw_get_tsf_offset(ptr noundef %tsf_ts, ptr noundef null) #5
  %73 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sc_ah, align 4
  %75 = ptrtoint ptr %chanctx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %chanctx, align 4
  %tsf_val71 = getelementptr inbounds %struct.ath_chanctx, ptr %76, i32 0, i32 8
  %77 = ptrtoint ptr %tsf_val71 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %tsf_val71, align 8
  %conv = zext i32 %call68 to i64
  %add72 = add i64 %78, %conv
  tail call void @ath9k_hw_settsf64(ptr noundef %74, i64 noundef %add72) #5
  br label %out

out:                                              ; preds = %if.then66, %do.end62.out_crit_edge, %do.end, %entry.out_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !52
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %count.i.i, i32 1, i32 3, i32 1) #5
  %79 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i, ptr %count.i.i, i32 1, ptr elementtype(i32) %count.i.i) #5, !srcloc !53
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_hw_get_tsf_offset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_settsf64(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ath9k_csa_is_finished(ptr nocapture readnone %sc, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vif, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %csa_active = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 4
  %0 = ptrtoint ptr %csa_active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %csa_active, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call zeroext i1 @ieee80211_beacon_cntdwn_is_complete(ptr noundef nonnull %vif) #5
  br i1 %call, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ieee80211_csa_finish(ptr noundef nonnull %vif) #5
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %if.end3 ], [ false, %lor.lhs.false.return_crit_edge ], [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_beacon_cntdwn_is_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_csa_finish(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_csa_update(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 8
  tail call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @ath9k_csa_update_vif, ptr noundef %sc) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_active_interfaces_atomic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_csa_update_vif(ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %mac, ptr noundef %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %vif, null
  br i1 %tobool.not.i, label %entry.ath9k_csa_is_finished.exit_crit_edge, label %lor.lhs.false.i

entry.ath9k_csa_is_finished.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath9k_csa_is_finished.exit

lor.lhs.false.i:                                  ; preds = %entry
  %csa_active.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 4
  %0 = ptrtoint ptr %csa_active.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %csa_active.i, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not.i = icmp eq i8 %1, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.ath9k_csa_is_finished.exit_crit_edge, label %if.end.i

lor.lhs.false.i.ath9k_csa_is_finished.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath9k_csa_is_finished.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i = tail call zeroext i1 @ieee80211_beacon_cntdwn_is_complete(ptr noundef nonnull %vif) #5
  br i1 %call.i, label %if.end3.i, label %if.end.i.ath9k_csa_is_finished.exit_crit_edge

if.end.i.ath9k_csa_is_finished.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath9k_csa_is_finished.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ieee80211_csa_finish(ptr noundef nonnull %vif) #5
  br label %ath9k_csa_is_finished.exit

ath9k_csa_is_finished.exit:                       ; preds = %if.end3.i, %if.end.i.ath9k_csa_is_finished.exit_crit_edge, %lor.lhs.false.i.ath9k_csa_is_finished.exit_crit_edge, %entry.ath9k_csa_is_finished.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_beacon_tasklet(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  %info.i.i = alloca %struct.ath_tx_info, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -2820
  %sc_ah = getelementptr i8, ptr %t, i32 24
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %caps = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps, align 4
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  %4 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %op_flags, align 4
  %6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug_mask, align 4
  %and4 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %if.then6

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.5) #5
  br label %cleanup

if.end7:                                          ; preds = %entry
  %beacon = getelementptr i8, ptr %t, i32 5232
  %beaconq = getelementptr i8, ptr %t, i32 5236
  %9 = ptrtoint ptr %beaconq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %beaconq, align 4
  %call8 = tail call i32 @ath9k_hw_numtxpending(ptr noundef %1, i32 noundef %10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp.not = icmp eq i32 %call8, 0
  br i1 %cmp.not, label %if.end55, label %if.then9

if.then9:                                         ; preds = %if.end7
  %bmisscnt = getelementptr i8, ptr %t, i32 5240
  %11 = ptrtoint ptr %bmisscnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bmisscnt, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %bmisscnt, align 4
  tail call void @ath9k_hw_check_nav(ptr noundef %1) #5
  %call11 = tail call zeroext i1 @ath_hw_check(ptr noundef %add.ptr) #5
  br i1 %call11, label %if.end13, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.then9
  %13 = ptrtoint ptr %bmisscnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bmisscnt, align 4
  %nbcnvifs = getelementptr i8, ptr %t, i32 1908
  %15 = ptrtoint ptr %nbcnvifs to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %nbcnvifs, align 8
  %conv = sext i16 %16 to i32
  %mul = mul nsw i32 %conv, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %mul)
  %cmp16 = icmp ult i32 %14, %mul
  br i1 %cmp16, label %do.body19, label %if.else

do.body19:                                        ; preds = %if.end13
  %debug_mask20 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %debug_mask20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %debug_mask20, align 4
  %and21 = and i32 %18, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body19.do.end28_crit_edge, label %if.then23

do.body19.do.end28_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

if.then23:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.6, i32 noundef %14) #5
  br label %do.end28

do.end28:                                         ; preds = %if.then23, %do.body19.do.end28_crit_edge
  %19 = ptrtoint ptr %beaconq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %beaconq, align 4
  %call31 = tail call zeroext i1 @ath9k_hw_stop_dma_queue(ptr noundef %1, i32 noundef %20) #5
  %21 = ptrtoint ptr %bmisscnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bmisscnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp34 = icmp ugt i32 %22, 3
  br i1 %cmp34, label %if.then36, label %do.end28.cleanup_crit_edge

do.end28.cleanup_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then36:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ath9k_hw_bstuck_nfcal(ptr noundef %1) #5
  br label %cleanup

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %14)
  %cmp40 = icmp ugt i32 %14, 8
  br i1 %cmp40, label %do.body43, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body43:                                        ; preds = %if.else
  %debug_mask44 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %debug_mask44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug_mask44, align 4
  %and45 = and i32 %24, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %do.body43.do.end50_crit_edge, label %if.then47

do.body43.do.end50_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50

if.then47:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.7) #5
  br label %do.end50

do.end50:                                         ; preds = %if.then47, %do.body43.do.end50_crit_edge
  %25 = ptrtoint ptr %bmisscnt to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %bmisscnt, align 4
  tail call void @ath9k_queue_reset(ptr noundef %add.ptr, i32 noundef 9) #5
  br label %cleanup

if.end55:                                         ; preds = %if.end7
  %26 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sc_ah, align 4
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %27, i32 0, i32 3
  %opmode.i = getelementptr inbounds %struct.ath_hw, ptr %27, i32 0, i32 28
  %28 = ptrtoint ptr %opmode.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %opmode.i, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %29, label %do.body.i [
    i32 3, label %if.end55.if.end8.i_crit_edge
    i32 7, label %if.end55.if.end8.i_crit_edge215
  ]

if.end55.if.end8.i_crit_edge215:                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.end55.if.end8.i_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

do.body.i:                                        ; preds = %if.end55
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %27, i32 0, i32 3, i32 3
  %31 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %32, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.ath9k_beacon_choose_slot.exit_crit_edge, label %if.then5.i

do.body.i.ath9k_beacon_choose_slot.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath9k_beacon_choose_slot.exit

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i = tail call i64 @ath9k_hw_gettsf64(ptr noundef %27) #5
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.11, i64 noundef %call7.i) #5
  br label %ath9k_beacon_choose_slot.exit

if.end8.i:                                        ; preds = %if.end55.if.end8.i_crit_edge, %if.end55.if.end8.i_crit_edge215
  %cur_chan.i = getelementptr i8, ptr %t, i32 7628
  %33 = ptrtoint ptr %cur_chan.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur_chan.i, align 8
  %beacon_interval.i = getelementptr inbounds %struct.ath_chanctx, ptr %34, i32 0, i32 5, i32 1
  %35 = ptrtoint ptr %beacon_interval.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %beacon_interval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool9.not.i = icmp eq i32 %36, 0
  %call11.i = tail call i64 @ath9k_hw_gettsf64(ptr noundef %27) #5
  %37 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sc_ah, align 4
  %sw_beacon_response_time.i = getelementptr inbounds %struct.ath_hw, ptr %38, i32 0, i32 5, i32 1
  %39 = ptrtoint ptr %sw_beacon_response_time.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sw_beacon_response_time.i, align 4
  %shl.i = shl i32 %40, 10
  %conv13.i = sext i32 %shl.i to i64
  %add.i = add i64 %call11.i, %conv13.i
  %mul.i = shl i64 %add.i, 3
  %sh.diff.i = lshr i64 %mul.i, 10
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %shl15.i = and i32 %tr.sh.diff.i, -4194304
  %conv17.i = trunc i64 %mul.i to i32
  %shr18.i = lshr i32 %conv17.i, 10
  %or.i = or i32 %shl15.i, %shr18.i
  %41 = and i32 %36, 65535
  %conv19.i = select i1 %tobool9.not.i, i32 100, i32 %41
  %mul20.i = shl nuw nsw i32 %conv19.i, 3
  %rem.i = urem i32 %or.i, %mul20.i
  %div.i = udiv i32 %rem.i, %conv19.i
  %debug_mask23.i = getelementptr inbounds %struct.ath_hw, ptr %27, i32 0, i32 3, i32 3
  %42 = ptrtoint ptr %debug_mask23.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %debug_mask23.i, align 4
  %and24.i = and i32 %43, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end8.i.ath9k_beacon_choose_slot.exit_crit_edge, label %if.then26.i

if.end8.i.ath9k_beacon_choose_slot.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath9k_beacon_choose_slot.exit

if.then26.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %div2751.i = lshr i32 %or.i, 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.12, i32 noundef %div.i, i64 noundef %add.i, i32 noundef %div2751.i) #5
  br label %ath9k_beacon_choose_slot.exit

ath9k_beacon_choose_slot.exit:                    ; preds = %if.then26.i, %if.end8.i.ath9k_beacon_choose_slot.exit_crit_edge, %if.then5.i, %do.body.i.ath9k_beacon_choose_slot.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then5.i ], [ 0, %do.body.i.ath9k_beacon_choose_slot.exit_crit_edge ], [ %div.i, %if.then26.i ], [ %div.i, %if.end8.i.ath9k_beacon_choose_slot.exit_crit_edge ]
  %bslot = getelementptr i8, ptr %t, i32 5244
  %arrayidx = getelementptr [8 x ptr], ptr %bslot, i32 0, i32 %retval.0.i
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx, align 4
  br i1 %tobool.not, label %if.then59, label %if.end66

if.then59:                                        ; preds = %ath9k_beacon_choose_slot.exit
  %call60 = tail call zeroext i1 @ath9k_is_chanctx_enabled() #5
  br i1 %call60, label %if.then61, label %if.then59.if.end62_crit_edge

if.then59.if.end62_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.then61:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ath_chanctx_beacon_sent_ev(ptr noundef %add.ptr, i32 noundef 1) #5
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.then59.if.end62_crit_edge
  %tobool.not.i201 = icmp eq ptr %45, null
  br i1 %tobool.not.i201, label %if.end62.cleanup_crit_edge, label %lor.lhs.false.i

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end62
  %csa_active.i = getelementptr inbounds %struct.ieee80211_vif, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %csa_active.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %csa_active.i, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool1.not.i = icmp eq i8 %47, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.lor.lhs.false_crit_edge, label %if.end.i

lor.lhs.false.i.lor.lhs.false_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i = tail call zeroext i1 @ieee80211_beacon_cntdwn_is_complete(ptr noundef nonnull %45) #5
  br i1 %call.i, label %if.end3.i, label %if.end.i.lor.lhs.false_crit_edge

if.end.i.lor.lhs.false_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ieee80211_csa_finish(ptr noundef nonnull %45) #5
  br label %cleanup

if.end66:                                         ; preds = %ath9k_beacon_choose_slot.exit
  %tobool67.not.old = icmp eq ptr %45, null
  br i1 %tobool67.not.old, label %if.end66.cleanup_crit_edge, label %if.end66.lor.lhs.false_crit_edge

if.end66.lor.lhs.false_crit_edge:                 ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end66.lor.lhs.false_crit_edge, %if.end.i.lor.lhs.false_crit_edge, %lor.lhs.false.i.lor.lhs.false_crit_edge
  %enable_beacon = getelementptr inbounds %struct.ieee80211_vif, ptr %45, i32 0, i32 1, i32 17
  %48 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %enable_beacon, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool68.not = icmp eq i8 %49, 0
  br i1 %tobool68.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end70

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end70:                                         ; preds = %lor.lhs.false
  %call71 = tail call zeroext i1 @ath9k_is_chanctx_enabled() #5
  br i1 %call71, label %if.then72, label %if.end70.if.end73_crit_edge

if.end70.if.end73_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73

if.then72:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ath_chanctx_event(ptr noundef %add.ptr, ptr noundef nonnull %45, i32 noundef 0) #5
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end70.if.end73_crit_edge
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr, align 8
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv.i, align 8
  %sc_ah.i203 = getelementptr inbounds %struct.ath_softc, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %sc_ah.i203 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sc_ah.i203, align 4
  %common.i.i204 = getelementptr inbounds %struct.ath_hw, ptr %55, i32 0, i32 3
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %45, i32 0, i32 19
  %cabq1.i = getelementptr inbounds %struct.ath_softc, ptr %53, i32 0, i32 36, i32 7
  %56 = ptrtoint ptr %cabq1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cabq1.i, align 4
  %av_bcbuf.i = getelementptr inbounds %struct.ieee80211_vif, ptr %45, i32 1, i32 1, i32 62, i32 0, i32 2, i32 3, i32 7
  %58 = ptrtoint ptr %av_bcbuf.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %av_bcbuf.i, align 8
  %cmp.i = icmp eq ptr %59, null
  br i1 %cmp.i, label %if.end73.ath9k_beacon_generate.exit_crit_edge, label %if.end.i206

if.end73.ath9k_beacon_generate.exit_crit_edge:    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath9k_beacon_generate.exit

if.end.i206:                                      ; preds = %if.end73
  %bf_mpdu.i = getelementptr inbounds %struct.ath_buf, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %bf_mpdu.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bf_mpdu.i, align 4
  %tobool.not.i205 = icmp eq ptr %61, null
  br i1 %tobool.not.i205, label %if.end.i206.if.end6.i_crit_edge, label %if.then3.i

if.end.i206.if.end6.i_crit_edge:                  ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i206
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.ath_softc, ptr %53, i32 0, i32 1
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 4
  %bf_buf_addr.i = getelementptr inbounds %struct.ath_buf, ptr %59, i32 0, i32 6
  %64 = ptrtoint ptr %bf_buf_addr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bf_buf_addr.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %61, i32 0, i32 6
  %66 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %63, i32 noundef %65, i32 noundef %67, i32 noundef 1, i32 noundef 0) #5
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %61, i32 noundef 1) #5
  %68 = ptrtoint ptr %bf_buf_addr.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %bf_buf_addr.i, align 4
  %69 = ptrtoint ptr %bf_mpdu.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %bf_mpdu.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end.i206.if.end6.i_crit_edge
  %call.i.i = tail call ptr @ieee80211_beacon_get_tim(ptr noundef %51, ptr noundef nonnull %45, ptr noundef null, ptr noundef null) #5
  %cmp8.i = icmp eq ptr %call.i.i, null
  br i1 %cmp8.i, label %if.end6.i.ath9k_beacon_generate.exit_crit_edge, label %if.end10.i

if.end6.i.ath9k_beacon_generate.exit_crit_edge:   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath9k_beacon_generate.exit

if.end10.i:                                       ; preds = %if.end6.i
  %70 = ptrtoint ptr %bf_mpdu.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.i.i, ptr %bf_mpdu.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %71 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data.i, align 4
  %tsf_adjust.i = getelementptr inbounds %struct.ieee80211_vif, ptr %45, i32 1, i32 1, i32 62, i32 0, i32 2, i32 3, i32 3
  %73 = ptrtoint ptr %tsf_adjust.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %tsf_adjust.i, align 8
  %u.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %72, i32 0, i32 6
  %75 = ptrtoint ptr %u.i to i32
  call void @__asan_storeN_noabort(i32 %75, i32 8)
  store i64 %74, ptr %u.i, align 2
  tail call void @ath_assign_seq(ptr noundef %common.i.i204, ptr noundef nonnull %call.i.i) #5
  %call13.i = tail call zeroext i1 @ath9k_is_chanctx_enabled() #5
  br i1 %call13.i, label %if.then14.i, label %if.end10.i.if.end15.i_crit_edge

if.end10.i.if.end15.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.i

if.then14.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ath9k_beacon_add_noa(ptr noundef %53, ptr noundef %drv_priv.i, ptr noundef nonnull %call.i.i) #5
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then14.i, %if.end10.i.if.end15.i_crit_edge
  %dev16.i = getelementptr inbounds %struct.ath_softc, ptr %53, i32 0, i32 1
  %76 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev16.i, align 4
  %78 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i, align 4
  %len18.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %80 = ptrtoint ptr %len18.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len18.i, align 4
  %call.i105.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %79) #5
  br i1 %call.i105.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end15.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !57

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %77) #5
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %77, i32 0, i32 3
  %82 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %83, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %77, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %85, %if.end.i.i.i ], [ %83, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #5
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @debug_dma_map_single(ptr noundef %77, ptr noundef %79, i32 noundef %81) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %86 = load ptr, ptr @mem_map, align 4
  %87 = ptrtoint ptr %79 to i32
  %sub.i.i = add i32 %87, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %86, i32 %shr.i.i
  %and.i.i = and i32 %87, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %77, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %81, i32 noundef 1, i32 noundef 0) #5
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %bf_buf_addr20.i = getelementptr inbounds %struct.ath_buf, ptr %59, i32 0, i32 6
  %88 = ptrtoint ptr %bf_buf_addr20.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %retval.0.i.i, ptr %bf_buf_addr20.i, align 4
  %89 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev16.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %90, i32 noundef %retval.0.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %if.then27.i, label %if.end30.i

if.then27.i:                                      ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i, i32 noundef 1) #5
  %91 = ptrtoint ptr %bf_mpdu.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %bf_mpdu.i, align 4
  %92 = ptrtoint ptr %bf_buf_addr20.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %bf_buf_addr20.i, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.13, ptr noundef %common.i.i204, ptr noundef nonnull @.str.14) #5
  br label %ath9k_beacon_generate.exit

if.end30.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %call31.i = tail call ptr @ieee80211_get_buffered_bc(ptr noundef %51, ptr noundef nonnull %45) #5
  %axq_lock.i = getelementptr inbounds %struct.ath_txq, ptr %57, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %axq_lock.i) #5
  %axq_depth.i = getelementptr inbounds %struct.ath_txq, ptr %57, i32 0, i32 5
  %93 = ptrtoint ptr %axq_depth.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %axq_depth.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %axq_lock.i) #5
  %tobool33.not.i = icmp eq ptr %call31.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool34.not.i = icmp eq i32 %94, 0
  %or.cond.i = select i1 %tobool33.not.i, i1 true, i1 %tobool34.not.i
  br i1 %or.cond.i, label %if.end30.i.if.end43.i_crit_edge, label %if.then35.i

if.end30.i.if.end43.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.i

if.then35.i:                                      ; preds = %if.end30.i
  %cur_chan.i207 = getelementptr inbounds %struct.ath_softc, ptr %53, i32 0, i32 39
  %95 = ptrtoint ptr %cur_chan.i207 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cur_chan.i207, align 8
  %nvifs.i = getelementptr inbounds %struct.ath_chanctx, ptr %96, i32 0, i32 18
  %97 = ptrtoint ptr %nvifs.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %nvifs.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %98)
  %cmp36.i = icmp sgt i16 %98, 1
  br i1 %cmp36.i, label %do.body.i210, label %if.then35.i.if.end43.i_crit_edge

if.then35.i.if.end43.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.i

do.body.i210:                                     ; preds = %if.then35.i
  %debug_mask.i208 = getelementptr inbounds %struct.ath_hw, ptr %55, i32 0, i32 3, i32 3
  %99 = ptrtoint ptr %debug_mask.i208 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %debug_mask.i208, align 4
  %and.i209 = and i32 %100, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i209)
  %tobool39.not.i = icmp eq i32 %and.i209, 0
  br i1 %tobool39.not.i, label %do.body.i210.do.end.i_crit_edge, label %if.then40.i

do.body.i210.do.end.i_crit_edge:                  ; preds = %do.body.i210
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.then40.i:                                      ; preds = %do.body.i210
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i204, ptr noundef nonnull @.str.15) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then40.i, %do.body.i210.do.end.i_crit_edge
  tail call void @ath_draintxq(ptr noundef %53, ptr noundef %57) #5
  br label %if.end43.i

if.end43.i:                                       ; preds = %do.end.i, %if.then35.i.if.end43.i_crit_edge, %if.end30.i.if.end43.i_crit_edge
  %101 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 8
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %101, align 8
  %conv44.i = sext i8 %103 to i32
  %104 = ptrtoint ptr %bf_mpdu.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bf_mpdu.i, align 4
  %106 = ptrtoint ptr %sc_ah.i203 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %sc_ah.i203, align 4
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %info.i.i) #5
  %txchainmask.i.i = getelementptr inbounds %struct.ath_hw, ptr %107, i32 0, i32 74
  %108 = ptrtoint ptr %txchainmask.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %txchainmask.i.i, align 4
  %cur_chandef.i.i = getelementptr inbounds %struct.ath_softc, ptr %53, i32 0, i32 37
  %110 = ptrtoint ptr %cur_chandef.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cur_chandef.i.i, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %111, align 4
  %bitrates.i.i = getelementptr %struct.ath_hw, ptr %107, i32 0, i32 3, i32 31, i32 %113, i32 1
  %114 = ptrtoint ptr %bitrates.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %bitrates.i.i, align 4
  %hw_value.i.i = getelementptr %struct.ieee80211_rate, ptr %115, i32 %conv44.i, i32 2
  %116 = ptrtoint ptr %hw_value.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %hw_value.i.i, align 2
  %use_short_preamble.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %45, i32 0, i32 1, i32 15
  %118 = ptrtoint ptr %use_short_preamble.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %use_short_preamble.i.i, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool.not.i.i = icmp eq i8 %119, 0
  br i1 %tobool.not.i.i, label %if.end43.i.ath9k_beacon_setup.exit.i_crit_edge, label %if.then.i106.i

if.end43.i.ath9k_beacon_setup.exit.i_crit_edge:   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath9k_beacon_setup.exit.i

if.then.i106.i:                                   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  %hw_value_short.i.i = getelementptr %struct.ieee80211_rate, ptr %115, i32 %conv44.i, i32 3
  %120 = ptrtoint ptr %hw_value_short.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %hw_value_short.i.i, align 4
  %or41.i.i = or i16 %121, %117
  br label %ath9k_beacon_setup.exit.i

ath9k_beacon_setup.exit.i:                        ; preds = %if.then.i106.i, %if.end43.i.ath9k_beacon_setup.exit.i_crit_edge
  %rate.0.in.i.i = phi i16 [ %or41.i.i, %if.then.i106.i ], [ %117, %if.end43.i.ath9k_beacon_setup.exit.i_crit_edge ]
  %122 = call ptr @memset(ptr %info.i.i, i32 0, i32 156)
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %105, i32 0, i32 6
  %123 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %len.i.i, align 4
  %add.i.i = add i32 %124, 4
  %pkt_len.i.i = getelementptr inbounds %struct.ath_tx_info, ptr %info.i.i, i32 0, i32 7
  %125 = ptrtoint ptr %pkt_len.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %add.i.i, ptr %pkt_len.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.ath_tx_info, ptr %info.i.i, i32 0, i32 14
  %126 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 3, ptr %type.i.i, align 4
  %uglygep.i.i = getelementptr inbounds i8, ptr %info.i.i, i32 149
  %127 = ptrtoint ptr %uglygep.i.i to i32
  call void @__asan_storeN_noabort(i32 %127, i32 4)
  store i32 1061109567, ptr %uglygep.i.i, align 1
  %keyix.i.i = getelementptr inbounds %struct.ath_tx_info, ptr %info.i.i, i32 0, i32 16
  %128 = ptrtoint ptr %keyix.i.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 -1, ptr %keyix.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.ath_tx_info, ptr %info.i.i, i32 0, i32 8
  %129 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 4098, ptr %flags.i.i, align 4
  %130 = ptrtoint ptr %bf_buf_addr20.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %bf_buf_addr20.i, align 4
  %buf_addr.i.i = getelementptr inbounds %struct.ath_tx_info, ptr %info.i.i, i32 0, i32 9
  %132 = ptrtoint ptr %buf_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %buf_addr.i.i, align 4
  %133 = load i32, ptr %len.i.i, align 4
  %add12.i.i = add i32 %133, 3
  %div40.i.i = and i32 %add12.i.i, -4
  %buf_len.i.i = getelementptr inbounds %struct.ath_tx_info, ptr %info.i.i, i32 0, i32 10
  %134 = ptrtoint ptr %buf_len.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %div40.i.i, ptr %buf_len.i.i, align 4
  %is_first.i.i = getelementptr inbounds %struct.ath_tx_info, ptr %info.i.i, i32 0, i32 1
  %135 = ptrtoint ptr %is_first.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 1, ptr %is_first.i.i, align 1
  %is_last.i.i = getelementptr inbounds %struct.ath_tx_info, ptr %info.i.i, i32 0, i32 2
  %136 = ptrtoint ptr %is_last.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 1, ptr %is_last.i.i, align 2
  %beaconq.i.i = getelementptr inbounds %struct.ath_softc, ptr %53, i32 0, i32 36, i32 1
  %137 = ptrtoint ptr %beaconq.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %beaconq.i.i, align 4
  %conv14.i.i = trunc i32 %138 to i8
  %139 = ptrtoint ptr %info.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv14.i.i, ptr %info.i.i, align 4
  %rates.i.i = getelementptr inbounds %struct.ath_tx_info, ptr %info.i.i, i32 0, i32 11
  %140 = ptrtoint ptr %rates.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 1, ptr %rates.i.i, align 4
  %141 = and i16 %rate.0.in.i.i, 255
  %conv16.i.i = zext i16 %141 to i32
  %Rate.i.i = getelementptr inbounds %struct.ath_tx_info, ptr %info.i.i, i32 0, i32 11, i32 0, i32 1
  %142 = ptrtoint ptr %Rate.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %conv16.i.i, ptr %Rate.i.i, align 4
  %call20.i.i = tail call zeroext i8 @ath_txchainmask_reduction(ptr noundef %53, i8 noundef zeroext %109, i32 noundef %conv16.i.i) #5
  %conv21.i.i = zext i8 %call20.i.i to i32
  %ChSel.i.i = getelementptr inbounds %struct.ath_tx_info, ptr %info.i.i, i32 0, i32 11, i32 0, i32 3
  %143 = ptrtoint ptr %ChSel.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %conv21.i.i, ptr %ChSel.i.i, align 4
  %bf_desc.i.i = getelementptr inbounds %struct.ath_buf, ptr %59, i32 0, i32 4
  %144 = ptrtoint ptr %bf_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %bf_desc.i.i, align 4
  %set_txdesc.i.i.i = getelementptr inbounds %struct.ath_hw, ptr %107, i32 0, i32 63, i32 5
  %146 = ptrtoint ptr %set_txdesc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %set_txdesc.i.i.i, align 4
  call void %147(ptr noundef %107, ptr noundef %145, ptr noundef nonnull %info.i.i) #5
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %info.i.i) #5
  br i1 %tobool33.not.i, label %ath9k_beacon_setup.exit.i.ath9k_beacon_generate.exit_crit_edge, label %if.then46.i

ath9k_beacon_setup.exit.i.ath9k_beacon_generate.exit_crit_edge: ; preds = %ath9k_beacon_setup.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath9k_beacon_generate.exit

if.then46.i:                                      ; preds = %ath9k_beacon_setup.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @ath_tx_cabq(ptr noundef %51, ptr noundef nonnull %45, ptr noundef nonnull %call31.i) #5
  br label %ath9k_beacon_generate.exit

ath9k_beacon_generate.exit:                       ; preds = %if.then46.i, %ath9k_beacon_setup.exit.i.ath9k_beacon_generate.exit_crit_edge, %if.then27.i, %if.end6.i.ath9k_beacon_generate.exit_crit_edge, %if.end73.ath9k_beacon_generate.exit_crit_edge
  %retval.0.i211 = phi ptr [ null, %if.then27.i ], [ null, %if.end73.ath9k_beacon_generate.exit_crit_edge ], [ null, %if.end6.i.ath9k_beacon_generate.exit_crit_edge ], [ %59, %if.then46.i ], [ %59, %ath9k_beacon_setup.exit.i.ath9k_beacon_generate.exit_crit_edge ]
  %bmisscnt76 = getelementptr i8, ptr %t, i32 5240
  %148 = ptrtoint ptr %bmisscnt76 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %bmisscnt76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %cmp77.not = icmp eq i32 %149, 0
  br i1 %cmp77.not, label %ath9k_beacon_generate.exit.if.end92_crit_edge, label %do.body80

ath9k_beacon_generate.exit.if.end92_crit_edge:    ; preds = %ath9k_beacon_generate.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end92

do.body80:                                        ; preds = %ath9k_beacon_generate.exit
  %debug_mask81 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %150 = ptrtoint ptr %debug_mask81 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %debug_mask81, align 4
  %and82 = and i32 %151, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %do.body80.do.end89_crit_edge, label %if.then84

do.body80.do.end89_crit_edge:                     ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end89

if.then84:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.8, i32 noundef %149) #5
  br label %do.end89

do.end89:                                         ; preds = %if.then84, %do.body80.do.end89_crit_edge
  %152 = ptrtoint ptr %bmisscnt76 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %bmisscnt76, align 4
  br label %if.end92

if.end92:                                         ; preds = %do.end89, %ath9k_beacon_generate.exit.if.end92_crit_edge
  %153 = ptrtoint ptr %beacon to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %beacon, align 4
  %155 = zext i32 %154 to i64
  call void @__sanitizer_cov_trace_switch(i64 %155, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %154, label %if.end92.if.end115_crit_edge [
    i32 1, label %if.then96
    i32 2, label %land.lhs.true
  ]

if.end92.if.end115_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115

if.then96:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  %156 = ptrtoint ptr %beacon to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 2, ptr %beacon, align 4
  %slotupdate = getelementptr i8, ptr %t, i32 5280
  %157 = ptrtoint ptr %slotupdate to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %retval.0.i, ptr %slotupdate, align 4
  br label %if.end115

land.lhs.true:                                    ; preds = %if.end92
  %slotupdate106 = getelementptr i8, ptr %t, i32 5280
  %158 = ptrtoint ptr %slotupdate106 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %slotupdate106, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %159, i32 %retval.0.i)
  %cmp107 = icmp eq i32 %159, %retval.0.i
  br i1 %cmp107, label %if.then109, label %land.lhs.true.if.end115_crit_edge

land.lhs.true.if.end115_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115

if.then109:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %slottime = getelementptr i8, ptr %t, i32 5276
  %160 = ptrtoint ptr %slottime to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %slottime, align 4
  %slottime111 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 66
  %162 = ptrtoint ptr %slottime111 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %slottime111, align 4
  call void @ath9k_hw_init_global_settings(ptr noundef %1) #5
  %163 = ptrtoint ptr %beacon to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %beacon, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then109, %land.lhs.true.if.end115_crit_edge, %if.then96, %if.end92.if.end115_crit_edge
  %tobool116.not = icmp eq ptr %retval.0.i211, null
  br i1 %tobool116.not, label %if.end115.cleanup_crit_edge, label %if.then117

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then117:                                       ; preds = %if.end115
  %tx_processed.i = getelementptr i8, ptr %t, i32 5308
  %164 = ptrtoint ptr %tx_processed.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 0, ptr %tx_processed.i, align 4
  %tx_last.i = getelementptr i8, ptr %t, i32 5309
  %165 = ptrtoint ptr %tx_last.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 0, ptr %tx_last.i, align 1
  %debug_mask119 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %166 = ptrtoint ptr %debug_mask119 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %debug_mask119, align 4
  %and120 = and i32 %167, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.then117.do.end125_crit_edge, label %if.then122

if.then117.do.end125_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end125

if.then122:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.9, i32 noundef %retval.0.i) #5
  br label %do.end125

do.end125:                                        ; preds = %if.then122, %if.then117.do.end125_crit_edge
  %168 = ptrtoint ptr %beaconq to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %beaconq, align 4
  %bf_daddr = getelementptr inbounds %struct.ath_buf, ptr %retval.0.i211, i32 0, i32 5
  %170 = ptrtoint ptr %bf_daddr to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %bf_daddr, align 4
  call void @ath9k_hw_puttxbuf(ptr noundef %1, i32 noundef %169, i32 noundef %171) #5
  br i1 %tobool.not, label %if.then129, label %do.end125.cleanup_crit_edge

do.end125.cleanup_crit_edge:                      ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then129:                                       ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #7
  %172 = ptrtoint ptr %beaconq to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %beaconq, align 4
  call void @ath9k_hw_txstart(ptr noundef %1, i32 noundef %173) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then129, %do.end125.cleanup_crit_edge, %if.end115.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %if.end3.i, %if.end62.cleanup_crit_edge, %do.end50, %if.else.cleanup_crit_edge, %if.then36, %do.end28.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.then6, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_hw_numtxpending(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_check_nav(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath_hw_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_stop_dma_queue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_bstuck_nfcal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_queue_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_is_chanctx_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_chanctx_beacon_sent_ev(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_chanctx_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_init_global_settings(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_puttxbuf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_txstart(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_beacon_config(ptr noundef %sc, ptr noundef readonly %main_vif, i1 noundef zeroext %beacons) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %beacons to i8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  br i1 %beacons, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %op_flags) #5
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  tail call void @ath9k_hw_disable_interrupts(ptr noundef %3) #5
  %4 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc_ah, align 4
  %imask.i = getelementptr inbounds %struct.ath_hw, ptr %5, i32 0, i32 36
  %6 = ptrtoint ptr %imask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %imask.i, align 4
  %and.i = and i32 %7, -327681
  store i32 %and.i, ptr %imask.i, align 4
  %bmisscnt.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 2
  %8 = ptrtoint ptr %bmisscnt.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %bmisscnt.i, align 4
  %9 = load ptr, ptr %sc_ah, align 4
  tail call void @ath9k_hw_set_interrupts(ptr noundef %9) #5
  %10 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sc_ah, align 4
  tail call void @ath9k_hw_enable_interrupts(ptr noundef %11) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %main_vif, null
  br i1 %tobool1.not, label %do.end, label %if.end26, !prof !55

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 642, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %chanctx = getelementptr inbounds %struct.ieee80211_vif, ptr %main_vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %chanctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chanctx, align 4
  %enable_beacon = getelementptr inbounds %struct.ath_chanctx, ptr %13, i32 0, i32 5, i32 5
  %14 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enable_beacon, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool27.not = icmp ne i8 %15, 0
  %16 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool, ptr %enable_beacon, align 1
  %17 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sc_ah, align 4
  %opmode = getelementptr inbounds %struct.ath_hw, ptr %18, i32 0, i32 28
  %19 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %opmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp = icmp eq i32 %20, 2
  %bss_conf = getelementptr inbounds %struct.ieee80211_vif, ptr %main_vif, i32 0, i32 1
  tail call fastcc void @ath9k_cache_beacon_config(ptr noundef %sc, ptr noundef %13, ptr noundef %bss_conf)
  br i1 %cmp, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ath9k_set_beacon(ptr noundef %sc)
  %op_flags34 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  tail call void @_set_bit(i32 noundef 1, ptr noundef %op_flags34) #5
  br label %cleanup

if.end35:                                         ; preds = %if.end26
  %beacon_interval = getelementptr inbounds %struct.ath_chanctx, ptr %13, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %beacon_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool37.not = icmp eq i32 %22, 0
  br i1 %tobool37.not, label %if.else74, label %if.then38

if.then38:                                        ; preds = %if.end35
  %23 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sc_ah, align 4
  %opmode40 = getelementptr inbounds %struct.ath_hw, ptr %24, i32 0, i32 28
  %25 = ptrtoint ptr %opmode40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %opmode40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp41 = icmp ne i32 %26, 1
  %brmerge = select i1 %cmp41, i1 true, i1 %tobool27.not
  br i1 %brmerge, label %if.then38.if.then70_crit_edge, label %land.lhs.true47

if.then38.if.then70_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then70

land.lhs.true47:                                  ; preds = %if.then38
  %ibss_creator = getelementptr inbounds %struct.ieee80211_vif, ptr %main_vif, i32 0, i32 1, i32 12
  %27 = ptrtoint ptr %ibss_creator to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ibss_creator, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool49.not = icmp eq i8 %28, 0
  br i1 %tobool49.not, label %do.body52, label %land.lhs.true47.if.then70_crit_edge

land.lhs.true47.if.then70_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then70

do.body52:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #7
  %sc_pm_lock = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 11
  %call57 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sc_pm_lock) #5
  %ps_flags = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 29
  %29 = ptrtoint ptr %ps_flags to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %ps_flags, align 4
  %31 = or i16 %30, 17
  store i16 %31, ptr %ps_flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sc_pm_lock, i32 noundef %call57) #5
  %op_flags72 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %op_flags72) #5
  %32 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sc_ah, align 4
  tail call void @ath9k_hw_disable_interrupts(ptr noundef %33) #5
  %34 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sc_ah, align 4
  %imask.i113 = getelementptr inbounds %struct.ath_hw, ptr %35, i32 0, i32 36
  %36 = ptrtoint ptr %imask.i113 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %imask.i113, align 4
  %and.i114 = and i32 %37, -327681
  store i32 %and.i114, ptr %imask.i113, align 4
  %bmisscnt.i115 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 2
  %38 = ptrtoint ptr %bmisscnt.i115 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %bmisscnt.i115, align 4
  %39 = load ptr, ptr %sc_ah, align 4
  tail call void @ath9k_hw_set_interrupts(ptr noundef %39) #5
  %40 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sc_ah, align 4
  tail call void @ath9k_hw_enable_interrupts(ptr noundef %41) #5
  br label %cleanup

if.then70:                                        ; preds = %land.lhs.true47.if.then70_crit_edge, %if.then38.if.then70_crit_edge
  %op_flags71 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  tail call void @_set_bit(i32 noundef 1, ptr noundef %op_flags71) #5
  tail call void @ath9k_set_beacon(ptr noundef %sc)
  br label %cleanup

if.else74:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %op_flags75 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %op_flags75) #5
  %42 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sc_ah, align 4
  tail call void @ath9k_hw_disable_interrupts(ptr noundef %43) #5
  %44 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sc_ah, align 4
  %imask.i117 = getelementptr inbounds %struct.ath_hw, ptr %45, i32 0, i32 36
  %46 = ptrtoint ptr %imask.i117 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %imask.i117, align 4
  %and.i118 = and i32 %47, -327681
  store i32 %and.i118, ptr %imask.i117, align 4
  %bmisscnt.i119 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 2
  %48 = ptrtoint ptr %bmisscnt.i119 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %bmisscnt.i119, align 4
  %49 = load ptr, ptr %sc_ah, align 4
  tail call void @ath9k_hw_set_interrupts(ptr noundef %49) #5
  %50 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sc_ah, align 4
  tail call void @ath9k_hw_enable_interrupts(ptr noundef %51) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else74, %if.then70, %do.body52, %if.then33, %do.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath9k_cache_beacon_config(ptr nocapture noundef readonly %sc, ptr nocapture noundef %ctx, ptr nocapture noundef readonly %bss_conf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_mask, align 4
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bss_conf, align 8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.18, ptr noundef %5) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %beacon_int = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 19
  %6 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %beacon_int, align 2
  %conv = zext i16 %7 to i32
  %beacon_interval = getelementptr inbounds %struct.ath_chanctx, ptr %ctx, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %beacon_interval, align 4
  %dtim_period = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 18
  %9 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dtim_period, align 8
  %conv1 = zext i8 %10 to i16
  %dtim_period2 = getelementptr inbounds %struct.ath_chanctx, ptr %ctx, i32 0, i32 5, i32 2
  %11 = ptrtoint ptr %dtim_period2 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv1, ptr %dtim_period2, align 4
  %dtim_count = getelementptr inbounds %struct.ath_chanctx, ptr %ctx, i32 0, i32 5, i32 4
  %12 = ptrtoint ptr %dtim_count to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %dtim_count, align 4
  %ibss_creator = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 12
  %13 = ptrtoint ptr %ibss_creator to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ibss_creator, align 1, !range !56
  %ibss_creator4 = getelementptr inbounds %struct.ath_chanctx, ptr %ctx, i32 0, i32 5, i32 6
  %15 = ptrtoint ptr %ibss_creator4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %ibss_creator4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp = icmp eq i16 %7, 0
  br i1 %cmp, label %if.then7, label %do.end.if.end9_crit_edge

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 100, ptr %beacon_interval, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %do.end.if.end9_crit_edge
  %17 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %beacon_interval, align 4
  %19 = trunc i32 %18 to i16
  %conv11 = mul i16 %19, 10
  %bmiss_timeout = getelementptr inbounds %struct.ath_chanctx, ptr %ctx, i32 0, i32 5, i32 3
  %20 = ptrtoint ptr %bmiss_timeout to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv11, ptr %bmiss_timeout, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp14 = icmp eq i8 %10, 0
  br i1 %cmp14, label %if.then16, label %if.end9.if.end18_crit_edge

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %dtim_period2 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %dtim_period2, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end9.if.end18_crit_edge
  %22 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sc_ah, align 4
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %23, i32 0, i32 3
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %23, i32 0, i32 3, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end18
  %slot.018.i = phi i32 [ 0, %if.end18 ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 3, i32 %slot.018.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %26 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %beacon_interval, align 4
  %av_bslot.i = getelementptr inbounds %struct.ieee80211_vif, ptr %25, i32 1, i32 1, i32 62, i32 0, i32 2, i32 3, i32 1
  %28 = ptrtoint ptr %av_bslot.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %av_bslot.i, align 4
  %mul.i = mul i32 %29, %27
  %conv.i = sext i32 %mul.i to i64
  %div.i = mul nsw i64 %conv.i, -128
  %30 = tail call i64 @llvm.bswap.i64(i64 %div.i) #5
  %tsf_adjust.i = getelementptr inbounds %struct.ieee80211_vif, ptr %25, i32 1, i32 1, i32 62, i32 0, i32 2, i32 3, i32 3
  %31 = ptrtoint ptr %tsf_adjust.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %tsf_adjust.i, align 8
  %32 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %33, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end.i.cleanup.i_crit_edge, label %if.then5.i

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.19, i64 noundef %div.i, i32 noundef %29) #5
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then5.i, %if.end.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %slot.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %ath9k_set_tsfadjust.exit, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

ath9k_set_tsfadjust.exit:                         ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_set_beacon(ptr nocapture noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  %bs.i = alloca %struct.ath9k_beacon_state, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %2 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_chan, align 8
  %beacon = getelementptr inbounds %struct.ath_chanctx, ptr %3, i32 0, i32 5
  %opmode = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %opmode, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %5, label %do.body [
    i32 3, label %entry.sw.bb_crit_edge
    i32 7, label %entry.sw.bb_crit_edge17
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
  ]

entry.sw.bb_crit_edge17:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge17
  tail call void @ath9k_cmn_beacon_config_ap(ptr noundef %1, ptr noundef %beacon, i32 noundef 8) #5
  %nexttbtt.i = getelementptr inbounds %struct.ath_chanctx, ptr %3, i32 0, i32 5, i32 7
  %7 = ptrtoint ptr %nexttbtt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nexttbtt.i, align 4
  %intval.i = getelementptr inbounds %struct.ath_chanctx, ptr %3, i32 0, i32 5, i32 8
  %9 = ptrtoint ptr %intval.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %intval.i, align 4
  tail call fastcc void @ath9k_beacon_init(ptr noundef %sc, i32 noundef %8, i32 noundef %10) #5
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %tx_processed.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 9
  %11 = ptrtoint ptr %tx_processed.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %tx_processed.i.i, align 4
  %tx_last.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 10
  %12 = ptrtoint ptr %tx_last.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %tx_last.i.i, align 1
  tail call void @ath9k_cmn_beacon_config_adhoc(ptr noundef %1, ptr noundef %beacon) #5
  %nexttbtt.i15 = getelementptr inbounds %struct.ath_chanctx, ptr %3, i32 0, i32 5, i32 7
  %13 = ptrtoint ptr %nexttbtt.i15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nexttbtt.i15, align 4
  %intval.i16 = getelementptr inbounds %struct.ath_chanctx, ptr %3, i32 0, i32 5, i32 8
  %15 = ptrtoint ptr %intval.i16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %intval.i16, align 4
  tail call fastcc void @ath9k_beacon_init(ptr noundef %sc, i32 noundef %14, i32 noundef %16) #5
  %ibss_creator.i = getelementptr inbounds %struct.ath_chanctx, ptr %3, i32 0, i32 5, i32 6
  %17 = ptrtoint ptr %ibss_creator.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ibss_creator.i, align 2, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i:                                  ; preds = %sw.bb2
  %enable_beacon.i = getelementptr inbounds %struct.ath_chanctx, ptr %3, i32 0, i32 5, i32 5
  %19 = ptrtoint ptr %enable_beacon.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %enable_beacon.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool1.not.i = icmp eq i8 %20, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %op_flags.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  tail call void @_set_bit(i32 noundef 1, ptr noundef %op_flags.i) #5
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %bs.i) #5
  %21 = call ptr @memset(ptr %bs.i, i32 255, i32 28)
  %call.i = call i32 @ath9k_cmn_beacon_config_sta(ptr noundef %1, ptr noundef %beacon, ptr noundef nonnull %bs.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -1
  br i1 %cmp.i, label %sw.bb3.ath9k_beacon_config_sta.exit_crit_edge, label %if.end.i

sw.bb3.ath9k_beacon_config_sta.exit_crit_edge:    ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %ath9k_beacon_config_sta.exit

if.end.i:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  call void @ath9k_hw_disable_interrupts(ptr noundef %1) #5
  call void @ath9k_hw_set_sta_beacon_timers(ptr noundef %1, ptr noundef nonnull %bs.i) #5
  %imask.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 36
  %22 = ptrtoint ptr %imask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %imask.i, align 4
  %or.i = or i32 %23, 262144
  store i32 %or.i, ptr %imask.i, align 4
  call void @ath9k_hw_set_interrupts(ptr noundef %1) #5
  call void @ath9k_hw_enable_interrupts(ptr noundef %1) #5
  br label %ath9k_beacon_config_sta.exit

ath9k_beacon_config_sta.exit:                     ; preds = %if.end.i, %sw.bb3.ath9k_beacon_config_sta.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %bs.i) #5
  br label %cleanup

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %debug_mask, align 4
  %and = and i32 %25, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.10) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %do.body.cleanup_crit_edge, %ath9k_beacon_config_sta.exit, %if.then.i, %land.lhs.true.i.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_spin_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ath9k_hw_gettsf64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_assign_seq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_beacon_add_noa(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_buffered_bc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_draintxq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_tx_cabq(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_beacon_get_tim(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ath_txchainmask_reduction(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_disable_interrupts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_set_interrupts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_enable_interrupts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_cmn_beacon_config_ap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath9k_beacon_init(ptr nocapture noundef %sc, i32 noundef %nexttbtt, i32 noundef %intval) unnamed_addr #0 align 64 {
entry:
  %qi.i = alloca %struct.ath9k_tx_queue_info, align 4
  %qi_be.i = alloca %struct.ath9k_tx_queue_info, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  tail call void @ath9k_hw_disable_interrupts(ptr noundef %1) #5
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %qi.i) #5
  %4 = call ptr @memset(ptr %qi.i, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %qi_be.i) #5
  %5 = call ptr @memset(ptr %qi_be.i, i32 255, i32 60)
  %beaconq.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 1
  %6 = ptrtoint ptr %beaconq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %beaconq.i, align 4
  %call1.i = call zeroext i1 @ath9k_hw_get_txq_props(ptr noundef %3, i32 noundef %7, ptr noundef nonnull %qi.i) #5
  %8 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sc_ah, align 4
  %opmode.i = getelementptr inbounds %struct.ath_hw, ptr %9, i32 0, i32 28
  %10 = ptrtoint ptr %opmode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %opmode.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %11, label %if.else.i [
    i32 3, label %entry.if.then.i_crit_edge
    i32 7, label %entry.if.then.i_crit_edge7
  ]

entry.if.then.i_crit_edge7:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge7
  %tqi_aifs.i = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi.i, i32 0, i32 5
  %13 = ptrtoint ptr %tqi_aifs.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %tqi_aifs.i, align 4
  %tqi_cwmin.i = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi.i, i32 0, i32 6
  %14 = ptrtoint ptr %tqi_cwmin.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %tqi_cwmin.i, align 4
  br label %if.end19.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 5, i32 2
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %axq_qnum.i = getelementptr inbounds %struct.ath_txq, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %axq_qnum.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %axq_qnum.i, align 4
  %call6.i = call zeroext i1 @ath9k_hw_get_txq_props(ptr noundef %3, i32 noundef %18, ptr noundef nonnull %qi_be.i) #5
  %tqi_aifs7.i = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi_be.i, i32 0, i32 5
  %19 = ptrtoint ptr %tqi_aifs7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tqi_aifs7.i, align 4
  %tqi_aifs8.i = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi.i, i32 0, i32 5
  %21 = ptrtoint ptr %tqi_aifs8.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %tqi_aifs8.i, align 4
  %slottime.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 66
  %22 = ptrtoint ptr %slottime.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %slottime.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %23)
  %cmp9.i = icmp eq i32 %23, 20
  %tqi_cwmin11.i = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi_be.i, i32 0, i32 6
  %24 = ptrtoint ptr %tqi_cwmin11.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tqi_cwmin11.i, align 4
  %..i = select i1 %cmp9.i, i32 1, i32 2
  %mul15.i = shl i32 %25, %..i
  %26 = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi.i, i32 0, i32 6
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul15.i, ptr %26, align 4
  %tqi_cwmax17.i = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi_be.i, i32 0, i32 7
  %28 = ptrtoint ptr %tqi_cwmax17.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tqi_cwmax17.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else.i, %if.then.i
  %.sink40.i = phi i32 [ %29, %if.else.i ], [ 0, %if.then.i ]
  %tqi_cwmax18.i = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi.i, i32 0, i32 7
  %30 = ptrtoint ptr %tqi_cwmax18.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink40.i, ptr %tqi_cwmax18.i, align 4
  %31 = ptrtoint ptr %beaconq.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %beaconq.i, align 4
  %call22.i = call zeroext i1 @ath9k_hw_set_txq_props(ptr noundef %3, i32 noundef %32, ptr noundef nonnull %qi.i) #5
  br i1 %call22.i, label %if.else24.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.13, ptr noundef %common.i.i, ptr noundef nonnull @.str.20) #5
  br label %ath9k_beaconq_config.exit

if.else24.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %beaconq.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %beaconq.i, align 4
  %call27.i = call zeroext i1 @ath9k_hw_resettxqueue(ptr noundef %3, i32 noundef %34) #5
  br label %ath9k_beaconq_config.exit

ath9k_beaconq_config.exit:                        ; preds = %if.else24.i, %if.then23.i
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %qi_be.i) #5
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %qi.i) #5
  call void @ath9k_hw_beaconinit(ptr noundef %1, i32 noundef %nexttbtt, i32 noundef %intval) #5
  %imask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 36
  %35 = ptrtoint ptr %imask to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %imask, align 4
  %or = or i32 %36, 65536
  store i32 %or, ptr %imask, align 4
  %bmisscnt = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 2
  %37 = ptrtoint ptr %bmisscnt to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %bmisscnt, align 4
  call void @ath9k_hw_set_interrupts(ptr noundef %1) #5
  call void @ath9k_hw_enable_interrupts(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_beaconinit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_get_txq_props(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_set_txq_props(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_resettxqueue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_cmn_beacon_config_adhoc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_cmn_beacon_config_sta(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_set_sta_beacon_timers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !30, !32, !33, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/beacon.c", i32 213, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath9k/beacon.c", i32 223, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath9k/beacon.c", i32 282, i32 6}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath9k/beacon.c", i32 289, i32 2}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/ath/ath9k/beacon.c", i32 399, i32 3}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath9k/beacon.c", i32 426, i32 4}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/ath9k/beacon.c", i32 433, i32 4}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ath/ath9k/beacon.c", i32 465, i32 3}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/ath9k/beacon.c", i32 499, i32 3}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/ath9k/beacon.c", i32 714, i32 3}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath9k/beacon.c", i32 317, i32 3}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/ath9k/beacon.c", i32 328, i32 2}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/ath9k/beacon.c", i32 161, i32 3}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath9k/beacon.c", i32 181, i32 4}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath9k/beacon.c", i32 593, i32 2}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath9k/beacon.c", i32 358, i32 3}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath9k/beacon.c", i32 61, i32 3}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 2148526346, i64 2148526372, i64 2148526401, i64 2148526435, i64 2148526466, i64 2148526489}
!50 = !{i64 2155307146}
!51 = !{i64 2155307788}
!52 = !{i64 2155308135}
!53 = !{i64 2148528811, i64 2148528837, i64 2148528866, i64 2148528900, i64 2148528931, i64 2148528954}
!54 = !{i64 2155307467}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{i8 0, i8 2}
!57 = !{!"branch_weights", i32 2000, i32 1}
