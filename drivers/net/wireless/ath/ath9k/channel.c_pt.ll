; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/channel.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/channel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
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
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.ath_tx_control = type { ptr, ptr, ptr, i8 }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
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
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.anon.128 = type { i32, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }

@ath_chanctx_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&ctx->acq[j].lock\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Current context differs from the new context\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"cur_chan: %d MHz, event: %s, state: %s, delta: %u ms\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Clearing oneshot NoA\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Contexts differ, not preparing beacon\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Setting offchannel_pending to false\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Set next context, move chanctx state to WAIT_FOR_BEACON\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Move chanctx state from WAIT_FOR_TIMER to WAIT_FOR_BEACON\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Clearing NoA schedule\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Preparing beacon for vif: %pM\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No pending beacon\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Beacon sent, complete go_beacon\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Move chanctx state to WAIT_FOR_TIMER\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Move chanctx state to SWITCH\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Move chanctx state from FORCE_ACTIVE to IDLE\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Move chanctx state to WAIT_FOR_TIMER (event SWITCH)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RoC aborted\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RoC expired\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RoC canceled\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HW scan aborted\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HW scan complete\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: current: %d MHz, next: %d MHz\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.ath_chanctx_set_next = private unnamed_addr constant [21 x i8] c"ath_chanctx_set_next\00", align 1
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Stopping current chanctx: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Set channel %d MHz\0A\00", [40 x i8] zeroinitializer }, align 32
@ath9k_offchannel_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&ctx->acq[i].lock\00", [46 x i8] zeroinitializer }, align 32
@ath9k_init_channel_context.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&sc->chanctx_work)\00", [59 x i8] zeroinitializer }, align 32
@ath9k_init_channel_context.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(&sc->offchannel.timer)\00", [40 x i8] zeroinitializer }, align 32
@ath9k_init_channel_context.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&sc->sched.timer)\00", [45 x i8] zeroinitializer }, align 32
@ath9k_use_chanctx = external dso_local local_unnamed_addr global i32, align 4
@ath9k_beacon_add_noa.noa_ie_hdr = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\DD\00Po\9A\09\0C\00\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Set channel: %d MHz width: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DFS enabled at freq %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ATH_CHANCTX_EVENT_BEACON_PREPARE\00", [63 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ATH_CHANCTX_EVENT_BEACON_SENT\00", [34 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ATH_CHANCTX_EVENT_TSF_TIMER\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ATH_CHANCTX_EVENT_BEACON_RECEIVED\00", [62 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ATH_CHANCTX_EVENT_AUTHORIZED\00", [35 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ATH_CHANCTX_EVENT_SWITCH\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ATH_CHANCTX_EVENT_ASSIGN\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ATH_CHANCTX_EVENT_UNASSIGN\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ATH_CHANCTX_EVENT_CHANGE\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ATH_CHANCTX_EVENT_ENABLE_MULTICHANNEL\00", [58 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ATH_CHANCTX_STATE_IDLE\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ATH_CHANCTX_STATE_WAIT_FOR_BEACON\00", [62 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ATH_CHANCTX_STATE_WAIT_FOR_TIMER\00", [63 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ATH_CHANCTX_STATE_SWITCH\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ATH_CHANCTX_STATE_FORCE_ACTIVE\00", [33 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"offchannel noa_duration: %d, noa_start: %u, noa_index: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"oneshot noa_duration: %d, noa_start: %u, noa_index: %d, periodic: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"noa_duration: %d, noa_start: %u, noa_index: %d, periodic: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.52 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Setup chanctx timer with timeout: %d (%d) ms\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"Moving offchannel state to ATH_OFFCHANNEL_IDLE, scan_idx: %d, n_channels: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Moving offchannel state to ATH_OFFCHANNEL_PROBE_SEND, scan_idx: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Channel definition created: %d MHz\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Set offchannel_pending to true\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Assigned next_chan to %d MHz\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Offchannel duration for chan %d MHz : %u\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Defer switch, set chanctx state to WAIT_FOR_BEACON\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: offchannel state: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.ath_offchannel_channel_change = private unnamed_addr constant [30 x i8] c"ath_offchannel_channel_change\00", align 1
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ATH_OFFCHANNEL_IDLE\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ATH_OFFCHANNEL_PROBE_SEND\00", [38 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ATH_OFFCHANNEL_PROBE_WAIT\00", [38 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ATH_OFFCHANNEL_SUSPEND\00", [41 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ATH_OFFCHANNEL_ROC_START\00", [39 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ATH_OFFCHANNEL_ROC_WAIT\00", [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ATH_OFFCHANNEL_ROC_DONE\00", [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Moving offchannel state to ATH_OFFCHANNEL_PROBE_WAIT\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.ath_offchannel_timer = private unnamed_addr constant [21 x i8] c"ath_offchannel_timer\00", align 1
@.str.69 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"Switch to oper/active context, move offchannel state to ATH_OFFCHANNEL_SUSPEND\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Channel context timer invoked\0A\00", [33 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s absent %d tsf 0x%08X next_tsf 0x%08X (%dms)\0A\00", [48 x i8] zeroinitializer }, align 32
@__func__.ath9k_update_p2p_ps_timer = private unnamed_addr constant [26 x i8] c"ath9k_update_p2p_ps_timer\00", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.75 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@switch.table.ath_chanctx_event = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], [56 x i8] zeroinitializer }, align 32
@switch.table.ath_chanctx_event.76 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], [44 x i8] zeroinitializer }, align 32
@switch.table.ath_chanctx_set_next = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67], [36 x i8] zeroinitializer }, align 32
@switch.table.ath_offchannel_timer = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.78 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.82 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 125, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 143, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 510, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 525, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 530, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 539, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 547, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 554, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 572, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 579, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 636, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 646, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 654, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 668, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 705, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 723, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 948, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 952, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 956, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 972, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 974, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1249, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1256, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1300, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1355, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1363, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1365, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1366, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant [11 x i8] c"noa_ie_hdr\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1503, i32 18 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 42, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 91, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 205, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 206, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 207, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 208, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 209, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 210, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 211, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 212, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 213, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 214, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 216, i32 10 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 223, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 224, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 225, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 226, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 227, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 425, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 486, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 465, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 384, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 887, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 899, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 855, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 820, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 828, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 838, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1177, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1193, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 190, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 191, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 192, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 193, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 194, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 195, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 196, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1039, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1074, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1051, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 87, i32 2 }
@___asan_gen_.315 = private constant [44 x i8] c"../drivers/net/wireless/ath/ath9k/channel.c\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1448, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 695, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.324 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 723, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant [31 x i8] c"switch.table.ath_chanctx_event\00", align 1
@___asan_gen_.327 = private unnamed_addr constant [34 x i8] c"switch.table.ath_chanctx_event.76\00", align 1
@___asan_gen_.328 = private unnamed_addr constant [34 x i8] c"switch.table.ath_chanctx_set_next\00", align 1
@___asan_gen_.329 = private unnamed_addr constant [34 x i8] c"switch.table.ath_offchannel_timer\00", align 1
@llvm.compiler.used = appending global [85 x ptr] [ptr @ath_chanctx_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @ath9k_offchannel_init.__key, ptr @.str.25, ptr @ath9k_init_channel_context.__key, ptr @.str.26, ptr @ath9k_init_channel_context.__key.27, ptr @.str.28, ptr @ath9k_init_channel_context.__key.29, ptr @.str.30, ptr @ath9k_beacon_add_noa.noa_ie_hdr, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @init_completion.__key, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @switch.table.ath_chanctx_event, ptr @switch.table.ath_chanctx_event.76, ptr @switch.table.ath_chanctx_set_next, ptr @switch.table.ath_offchannel_timer], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_chanctx_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_offchannel_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_channel_context.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_channel_context.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_init_channel_context.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_beacon_add_noa.noa_ie_hdr to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath_chanctx_event to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath_chanctx_event.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath_chanctx_set_next to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ath_offchannel_timer to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_chanctx_init(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %sbands = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 31
  %n_channels = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 31, i32 0, i32 3
  %2 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %arrayidx2 = getelementptr %struct.ath_hw, ptr %1, i32 0, i32 3, i32 31, i32 1
  %spec.select = select i1 %tobool.not, ptr %arrayidx2, ptr %sbands
  %4 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec.select, align 4
  %arrayidx4 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 0
  tail call void @cfg80211_chandef_create(ptr noundef %arrayidx4, ptr noundef %5, i32 noundef 1) #8
  %vifs = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 0, i32 1
  %6 = ptrtoint ptr %vifs to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %vifs, ptr %vifs, align 4
  %prev.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %vifs, ptr %prev.i, align 4
  %txpower = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 0, i32 11
  %8 = ptrtoint ptr %txpower to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 100, ptr %txpower, align 8
  %flush_timeout = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 0, i32 10
  %9 = ptrtoint ptr %flush_timeout to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 20, ptr %flush_timeout, align 4
  %arrayidx8 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 0, i32 2, i32 0
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %arrayidx8, ptr %arrayidx8, align 4
  %prev.i32 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 0, i32 2, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i32 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx8, ptr %prev.i32, align 4
  %acq_old = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 0, i32 2, i32 0, i32 1
  %12 = ptrtoint ptr %acq_old to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %acq_old, ptr %acq_old, align 4
  %prev.i33 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 0, i32 2, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i33 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %acq_old, ptr %prev.i33, align 4
  %lock = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 0, i32 2, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @ath_chanctx_init.__key, i16 noundef signext 3) #8
  %arrayidx8.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %arrayidx8.1, ptr %arrayidx8.1, align 4
  %prev.i32.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 0, i32 2, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i32.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx8.1, ptr %prev.i32.1, align 4
  %acq_old.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 0, i32 2, i32 1, i32 1
  %16 = ptrtoint ptr %acq_old.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %acq_old.1, ptr %acq_old.1, align 4
  %prev.i33.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 0, i32 2, i32 1, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i33.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %acq_old.1, ptr %prev.i33.1, align 4
  %lock.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 0, i32 2, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.1, ptr noundef nonnull @.str, ptr noundef nonnull @ath_chanctx_init.__key, i16 noundef signext 3) #8
  %arrayidx8.2 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %arrayidx8.2, ptr %arrayidx8.2, align 4
  %prev.i32.2 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 0, i32 2, i32 2, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i32.2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx8.2, ptr %prev.i32.2, align 4
  %acq_old.2 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 0, i32 2, i32 2, i32 1
  %20 = ptrtoint ptr %acq_old.2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %acq_old.2, ptr %acq_old.2, align 4
  %prev.i33.2 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 0, i32 2, i32 2, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i33.2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %acq_old.2, ptr %prev.i33.2, align 4
  %lock.2 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 0, i32 2, i32 2, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.2, ptr noundef nonnull @.str, ptr noundef nonnull @ath_chanctx_init.__key, i16 noundef signext 3) #8
  %arrayidx8.3 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %arrayidx8.3, ptr %arrayidx8.3, align 4
  %prev.i32.3 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 0, i32 2, i32 3, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i32.3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx8.3, ptr %prev.i32.3, align 4
  %acq_old.3 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 0, i32 2, i32 3, i32 1
  %24 = ptrtoint ptr %acq_old.3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %acq_old.3, ptr %acq_old.3, align 4
  %prev.i33.3 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 0, i32 2, i32 3, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i33.3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %acq_old.3, ptr %prev.i33.3, align 4
  %lock.3 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 0, i32 2, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.3, ptr noundef nonnull @.str, ptr noundef nonnull @ath_chanctx_init.__key, i16 noundef signext 3) #8
  %arrayidx4.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 1
  tail call void @cfg80211_chandef_create(ptr noundef %arrayidx4.1, ptr noundef %5, i32 noundef 1) #8
  %vifs.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 1, i32 1
  %26 = ptrtoint ptr %vifs.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %vifs.1, ptr %vifs.1, align 4
  %prev.i.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 1, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %vifs.1, ptr %prev.i.1, align 4
  %txpower.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 1, i32 11
  %28 = ptrtoint ptr %txpower.1 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 100, ptr %txpower.1, align 8
  %flush_timeout.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 1, i32 10
  %29 = ptrtoint ptr %flush_timeout.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 20, ptr %flush_timeout.1, align 4
  %arrayidx8.136 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 1, i32 2, i32 0
  %30 = ptrtoint ptr %arrayidx8.136 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %arrayidx8.136, ptr %arrayidx8.136, align 4
  %prev.i32.137 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 1, i32 2, i32 0, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i32.137 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx8.136, ptr %prev.i32.137, align 4
  %acq_old.138 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 1, i32 2, i32 0, i32 1
  %32 = ptrtoint ptr %acq_old.138 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %acq_old.138, ptr %acq_old.138, align 4
  %prev.i33.139 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 1, i32 2, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %prev.i33.139 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %acq_old.138, ptr %prev.i33.139, align 4
  %lock.140 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 1, i32 2, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.140, ptr noundef nonnull @.str, ptr noundef nonnull @ath_chanctx_init.__key, i16 noundef signext 3) #8
  %arrayidx8.1.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 1, i32 2, i32 1
  %34 = ptrtoint ptr %arrayidx8.1.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %arrayidx8.1.1, ptr %arrayidx8.1.1, align 4
  %prev.i32.1.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 1, i32 2, i32 1, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i32.1.1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %arrayidx8.1.1, ptr %prev.i32.1.1, align 4
  %acq_old.1.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 1, i32 2, i32 1, i32 1
  %36 = ptrtoint ptr %acq_old.1.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %acq_old.1.1, ptr %acq_old.1.1, align 4
  %prev.i33.1.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 1, i32 2, i32 1, i32 1, i32 1
  %37 = ptrtoint ptr %prev.i33.1.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %acq_old.1.1, ptr %prev.i33.1.1, align 4
  %lock.1.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 1, i32 2, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.1.1, ptr noundef nonnull @.str, ptr noundef nonnull @ath_chanctx_init.__key, i16 noundef signext 3) #8
  %arrayidx8.2.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 1, i32 2, i32 2
  %38 = ptrtoint ptr %arrayidx8.2.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %arrayidx8.2.1, ptr %arrayidx8.2.1, align 4
  %prev.i32.2.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 1, i32 2, i32 2, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i32.2.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx8.2.1, ptr %prev.i32.2.1, align 4
  %acq_old.2.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 1, i32 2, i32 2, i32 1
  %40 = ptrtoint ptr %acq_old.2.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %acq_old.2.1, ptr %acq_old.2.1, align 4
  %prev.i33.2.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 1, i32 2, i32 2, i32 1, i32 1
  %41 = ptrtoint ptr %prev.i33.2.1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %acq_old.2.1, ptr %prev.i33.2.1, align 4
  %lock.2.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 1, i32 2, i32 2, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.2.1, ptr noundef nonnull @.str, ptr noundef nonnull @ath_chanctx_init.__key, i16 noundef signext 3) #8
  %arrayidx8.3.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 1, i32 2, i32 3
  %42 = ptrtoint ptr %arrayidx8.3.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %arrayidx8.3.1, ptr %arrayidx8.3.1, align 4
  %prev.i32.3.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 1, i32 2, i32 3, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i32.3.1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %arrayidx8.3.1, ptr %prev.i32.3.1, align 4
  %acq_old.3.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 1, i32 2, i32 3, i32 1
  %44 = ptrtoint ptr %acq_old.3.1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %acq_old.3.1, ptr %acq_old.3.1, align 4
  %prev.i33.3.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 1, i32 2, i32 3, i32 1, i32 1
  %45 = ptrtoint ptr %prev.i33.3.1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %acq_old.3.1, ptr %prev.i33.3.1, align 4
  %lock.3.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 1, i32 2, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.3.1, ptr noundef nonnull @.str, ptr noundef nonnull @ath_chanctx_init.__key, i16 noundef signext 3) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfg80211_chandef_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_chanctx_set_channel(ptr noundef %sc, ptr noundef writeonly %ctx, ptr noundef readonly %chandef) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %chan_lock = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 40
  tail call void @_raw_spin_lock_bh(ptr noundef %chan_lock) #8
  %tobool.not = icmp eq ptr %chandef, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = call ptr @memcpy(ptr %ctx, ptr %chandef, i32 28)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cur_chan2 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %3 = ptrtoint ptr %cur_chan2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cur_chan2, align 8
  %cmp = icmp eq ptr %4, %ctx
  tail call void @_raw_spin_unlock_bh(ptr noundef %chan_lock) #8
  br i1 %cmp, label %if.end9, label %do.body

do.body:                                          ; preds = %if.end
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_mask, align 4
  %and = and i32 %6, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.body.cleanup_crit_edge, label %if.then7

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ath_set_channel(ptr noundef %sc)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath_set_channel(ptr noundef %sc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc, align 8
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %4 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_chan, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hw_value, align 2
  %conv = zext i16 %9 to i32
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  %10 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %op_flags, align 4
  %and1.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %curchan, align 4
  %tobool5.not = icmp eq ptr %13, null
  %channels = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 7
  %sub.ptr.lhs.cast = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %channels to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 12
  %old_pos.0 = select i1 %tobool5.not, i32 -1, i32 %sub.ptr.div
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug_mask, align 4
  %and = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end.do.body13_crit_edge, label %if.then10

if.end.do.body13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %7, i32 0, i32 1
  %16 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %center_freq, align 4
  %width = getelementptr inbounds %struct.cfg80211_chan_def, ptr %5, i32 0, i32 1
  %18 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.31, i32 noundef %17, i32 noundef %19) #8
  br label %do.body13

do.body13:                                        ; preds = %if.then10, %if.end.do.body13_crit_edge
  %cc_lock = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 19
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cc_lock) #8
  %call21 = tail call i32 @ath_update_survey_stats(ptr noundef %sc) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cc_lock, i32 noundef %call16) #8
  %call23 = tail call ptr @ath9k_cmn_get_channel(ptr noundef %3, ptr noundef %1, ptr noundef %5) #8
  %20 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur_chan, align 8
  %offchannel = getelementptr inbounds %struct.ath_chanctx, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %offchannel to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %offchannel, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool25.not = icmp eq i8 %23, 0
  br i1 %tobool25.not, label %land.lhs.true, label %do.body13.if.else_crit_edge

do.body13.if.else_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %do.body13
  %cur_survey = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 2
  %24 = ptrtoint ptr %cur_survey to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cur_survey, align 8
  %arrayidx26 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 3, i32 %conv
  %cmp27.not = icmp eq ptr %25, %arrayidx26
  br i1 %cmp27.not, label %land.lhs.true.if.else_crit_edge, label %if.then29

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then29:                                        ; preds = %land.lhs.true
  %tobool31.not = icmp eq ptr %25, null
  br i1 %tobool31.not, label %if.then29.if.end35_crit_edge, label %if.then32

if.then29.if.end35_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %filled = getelementptr inbounds %struct.survey_info, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %filled to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %filled, align 8
  %and34 = and i32 %27, -3
  store i32 %and34, ptr %filled, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.then29.if.end35_crit_edge
  %28 = ptrtoint ptr %cur_survey to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx26, ptr %cur_survey, align 8
  %29 = call ptr @memset(ptr %arrayidx26, i32 0, i32 72)
  %filled41 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 3, i32 %conv, i32 8
  %30 = ptrtoint ptr %filled41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %filled41, align 8
  %or = or i32 %31, 2
  store i32 %or, ptr %filled41, align 8
  br label %if.end51

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.body13.if.else_crit_edge
  %filled44 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 3, i32 %conv, i32 8
  %32 = ptrtoint ptr %filled44 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %filled44, align 8
  %and45 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.then47, label %if.else.if.end51_crit_edge

if.else.if.end51_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx43 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 3, i32 %conv
  %34 = call ptr @memset(ptr %arrayidx43, i32 0, i32 72)
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %if.else.if.end51_crit_edge, %if.end35
  %35 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sc_ah, align 4
  %arrayidx54 = getelementptr %struct.ath_hw, ptr %36, i32 0, i32 7, i32 %conv
  %call55 = tail call i32 @ath_reset(ptr noundef %sc, ptr noundef %arrayidx54) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end58:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %old_pos.0)
  %cmp59 = icmp sgt i32 %old_pos.0, -1
  br i1 %cmp59, label %if.then61, label %if.end58.if.end62_crit_edge

if.end58.if.end62_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ath_update_survey_nf(ptr noundef %sc, i32 noundef %old_pos.0) #8
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end58.if.end62_crit_edge
  %radar_enabled = getelementptr inbounds %struct.ieee80211_conf, ptr %3, i32 0, i32 8
  %37 = ptrtoint ptr %radar_enabled to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %radar_enabled, align 8, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool63.not = icmp eq i8 %38, 0
  br i1 %tobool63.not, label %if.else76, label %if.then64

if.then64:                                        ; preds = %if.end62
  %call65 = tail call i32 @ath9k_hw_getrxfilter(ptr noundef %1) #8
  %or66 = or i32 %call65, 8448
  tail call void @ath9k_hw_setrxfilter(ptr noundef %1, i32 noundef %or66) #8
  %39 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %debug_mask, align 4
  %and69 = and i32 %40, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.then64.cleanup_crit_edge, label %if.then71

if.then64.cleanup_crit_edge:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then71:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  %center_freq72 = getelementptr inbounds %struct.ieee80211_channel, ptr %7, i32 0, i32 1
  %41 = ptrtoint ptr %center_freq72 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %center_freq72, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.32, i32 noundef %42) #8
  br label %cleanup

if.else76:                                        ; preds = %if.end62
  %43 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %op_flags, align 4
  %45 = and i32 %44, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool79.not = icmp eq i32 %45, 0
  br i1 %tobool79.not, label %if.else76.cleanup_crit_edge, label %land.lhs.true80

if.else76.cleanup_crit_edge:                      ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true80:                                  ; preds = %if.else76
  %spectral_mode = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 58, i32 2
  %46 = ptrtoint ptr %spectral_mode to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %spectral_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %47)
  %cmp81 = icmp eq i32 %47, 3
  br i1 %cmp81, label %if.then83, label %land.lhs.true80.cleanup_crit_edge

land.lhs.true80.cleanup_crit_edge:                ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then83:                                        ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #10
  %spec_priv = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 58
  tail call void @ath9k_cmn_spectral_scan_trigger(ptr noundef %common.i, ptr noundef %spec_priv) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then83, %land.lhs.true80.cleanup_crit_edge, %if.else76.cleanup_crit_edge, %if.then71, %if.then64.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath_is_go_chanctx_present(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_lock = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 40
  tail call void @_raw_spin_lock_bh(ptr noundef %chan_lock) #8
  %chanctx = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 38
  %arrayidx2 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 1
  %cmp.not36 = icmp ugt ptr %chanctx, %arrayidx2
  br i1 %cmp.not36, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc17.for.body_crit_edge, %entry.for.body_crit_edge
  %ctx.037 = phi ptr [ %incdec.ptr, %for.inc17.for.body_crit_edge ], [ %chanctx, %entry.for.body_crit_edge ]
  %active = getelementptr inbounds %struct.ath_chanctx, ptr %ctx.037, i32 0, i32 15
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active, align 2, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.body.for.inc17_crit_edge, label %if.end

for.body.for.inc17_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc17

if.end:                                           ; preds = %for.body
  %vifs = getelementptr inbounds %struct.ath_chanctx, ptr %ctx.037, i32 0, i32 1
  br label %for.cond3

for.cond3:                                        ; preds = %ieee80211_vif_type_p2p.exit.for.cond3_crit_edge, %if.end
  %avp.0.in = phi ptr [ %vifs, %if.end ], [ %avp.0, %ieee80211_vif_type_p2p.exit.for.cond3_crit_edge ]
  %2 = ptrtoint ptr %avp.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %avp.0 = load ptr, ptr %avp.0.in, align 4
  %cmp5.not = icmp eq ptr %avp.0, %vifs
  br i1 %cmp5.not, label %for.cond3.for.inc17_crit_edge, label %for.body6

for.cond3.for.inc17_crit_edge:                    ; preds = %for.cond3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc17

for.body6:                                        ; preds = %for.cond3
  %vif7 = getelementptr inbounds %struct.ath_vif, ptr %avp.0, i32 0, i32 5
  %3 = ptrtoint ptr %vif7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vif7, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %p2p.i = getelementptr inbounds %struct.ieee80211_vif, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %p2p.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %p2p.i, align 2, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %for.body6.if.end.i.i_crit_edge, label %if.then.i.i

for.body6.if.end.i.i_crit_edge:                   ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body6
  %9 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.then.i.i.if.end.i.i_crit_edge [
    i32 2, label %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge
    i32 3, label %if.then.i.i.cleanup_crit_edge
  ]

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ieee80211_vif_type_p2p.exit

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i.if.end.i.i_crit_edge, %for.body6.if.end.i.i_crit_edge
  br label %ieee80211_vif_type_p2p.exit

ieee80211_vif_type_p2p.exit:                      ; preds = %if.end.i.i, %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge
  %retval.0.i.i = phi i32 [ %6, %if.end.i.i ], [ 8, %if.then.i.i.ieee80211_vif_type_p2p.exit_crit_edge ]
  %cmp8 = icmp eq i32 %retval.0.i.i, 9
  br i1 %cmp8, label %ieee80211_vif_type_p2p.exit.cleanup_crit_edge, label %ieee80211_vif_type_p2p.exit.for.cond3_crit_edge

ieee80211_vif_type_p2p.exit.for.cond3_crit_edge:  ; preds = %ieee80211_vif_type_p2p.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond3

ieee80211_vif_type_p2p.exit.cleanup_crit_edge:    ; preds = %ieee80211_vif_type_p2p.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc17:                                        ; preds = %for.cond3.for.inc17_crit_edge, %for.body.for.inc17_crit_edge
  %incdec.ptr = getelementptr %struct.ath_chanctx, ptr %ctx.037, i32 1
  %cmp.not = icmp ugt ptr %incdec.ptr, %arrayidx2
  br i1 %cmp.not, label %for.inc17.cleanup_crit_edge, label %for.inc17.for.body_crit_edge

for.inc17.for.body_crit_edge:                     ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc17.cleanup_crit_edge:                      ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc17.cleanup_crit_edge, %ieee80211_vif_type_p2p.exit.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %ctx.037, %if.then.i.i.cleanup_crit_edge ], [ %ctx.037, %ieee80211_vif_type_p2p.exit.cleanup_crit_edge ], [ null, %for.inc17.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %chan_lock) #8
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_chanctx_check_active(ptr noundef %sc, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %offchannel = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22
  %cmp = icmp eq ptr %offchannel, %ctx
  br i1 %cmp, label %if.then1, label %if.end13

if.then1:                                         ; preds = %if.end
  %chan_lock = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 40
  tail call void @_raw_spin_lock_bh(ptr noundef %chan_lock) #8
  %channel_switch_time = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 12
  %2 = ptrtoint ptr %channel_switch_time to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel_switch_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.then1.if.end11_crit_edge, label %if.else.i, !prof !172

if.then1.if.end11_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.else.i:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %3) #8
  br label %if.end11

if.end11:                                         ; preds = %if.else.i, %if.then1.if.end11_crit_edge
  %.sink = phi i32 [ %call3.i, %if.else.i ], [ 1, %if.then1.if.end11_crit_edge ]
  %flush_timeout10 = getelementptr inbounds %struct.ath_chanctx, ptr %ctx, i32 0, i32 10
  %4 = ptrtoint ptr %flush_timeout10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink, ptr %flush_timeout10, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %chan_lock) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %vifs = getelementptr inbounds %struct.ath_chanctx, ptr %ctx, i32 0, i32 1
  %5 = ptrtoint ptr %vifs to i32
  call void @__asan_load4_noabort(i32 %5)
  %avp.0114 = load ptr, ptr %vifs, align 4
  %cmp15.not115 = icmp eq ptr %avp.0114, %vifs
  br i1 %cmp15.not115, label %if.end13.for.end_crit_edge, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  br label %for.body

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %if.end13.for.body_crit_edge
  %avp.0117 = phi ptr [ %avp.0, %sw.epilog.for.body_crit_edge ], [ %avp.0114, %if.end13.for.body_crit_edge ]
  %active.0.off0116 = phi i1 [ %active.1.off0, %sw.epilog.for.body_crit_edge ], [ false, %if.end13.for.body_crit_edge ]
  %vif18 = getelementptr inbounds %struct.ath_vif, ptr %avp.0117, i32 0, i32 5
  %6 = ptrtoint ptr %vif18 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vif18, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %9, label %for.body.sw.epilog_crit_edge [
    i32 8, label %for.body.sw.bb_crit_edge
    i32 2, label %for.body.sw.bb_crit_edge127
  ]

for.body.sw.bb_crit_edge127:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

for.body.sw.bb_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %for.body.sw.bb_crit_edge, %for.body.sw.bb_crit_edge127
  %assoc = getelementptr inbounds %struct.ath_vif, ptr %avp.0117, i32 0, i32 4
  %11 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %assoc, align 2, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool19.not = icmp ne i8 %12, 0
  %spec.select = select i1 %tobool19.not, i1 true, i1 %active.0.off0116
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %for.body.sw.epilog_crit_edge
  %active.1.off0 = phi i1 [ %spec.select, %sw.bb ], [ true, %for.body.sw.epilog_crit_edge ]
  %13 = ptrtoint ptr %avp.0117 to i32
  call void @__asan_load4_noabort(i32 %13)
  %avp.0 = load ptr, ptr %avp.0117, align 4
  %cmp15.not = icmp eq ptr %avp.0, %vifs
  br i1 %cmp15.not, label %sw.epilog.for.end_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %sw.epilog.for.end_crit_edge, %if.end13.for.end_crit_edge
  %active.0.off0.lcssa = phi i1 [ false, %if.end13.for.end_crit_edge ], [ %active.1.off0, %sw.epilog.for.end_crit_edge ]
  %active28 = getelementptr inbounds %struct.ath_chanctx, ptr %ctx, i32 0, i32 15
  %frombool = zext i1 %active.0.off0.lcssa to i8
  %14 = ptrtoint ptr %active28 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool, ptr %active28, align 2
  %chanctx = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 38
  %arrayidx31 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 1
  %cmp32.not118 = icmp ugt ptr %chanctx, %arrayidx31
  br i1 %cmp32.not118, label %for.end41.thread, label %for.end.for.body33_crit_edge

for.end.for.body33_crit_edge:                     ; preds = %for.end
  br label %for.body33

for.end41.thread:                                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %chan_lock42124 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 40
  tail call void @_raw_spin_lock_bh(ptr noundef %chan_lock42124) #8
  br label %if.then45

for.body33:                                       ; preds = %for.inc40.for.body33_crit_edge, %for.end.for.body33_crit_edge
  %ctx.addr.0120 = phi ptr [ %incdec.ptr, %for.inc40.for.body33_crit_edge ], [ %chanctx, %for.end.for.body33_crit_edge ]
  %n_active.0119 = phi i8 [ %n_active.1, %for.inc40.for.body33_crit_edge ], [ 0, %for.end.for.body33_crit_edge ]
  %assigned = getelementptr inbounds %struct.ath_chanctx, ptr %ctx.addr.0120, i32 0, i32 16
  %15 = ptrtoint ptr %assigned to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %assigned, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool34.not = icmp eq i8 %16, 0
  br i1 %tobool34.not, label %for.body33.for.inc40_crit_edge, label %lor.lhs.false

for.body33.for.inc40_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc40

lor.lhs.false:                                    ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #10
  %vifs35 = getelementptr inbounds %struct.ath_chanctx, ptr %ctx.addr.0120, i32 0, i32 1
  %17 = ptrtoint ptr %vifs35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %vifs35, align 4
  %cmp.i112.not = icmp ne ptr %18, %vifs35
  %inc = zext i1 %cmp.i112.not to i8
  %spec.select98 = add i8 %n_active.0119, %inc
  br label %for.inc40

for.inc40:                                        ; preds = %lor.lhs.false, %for.body33.for.inc40_crit_edge
  %n_active.1 = phi i8 [ %n_active.0119, %for.body33.for.inc40_crit_edge ], [ %spec.select98, %lor.lhs.false ]
  %incdec.ptr = getelementptr %struct.ath_chanctx, ptr %ctx.addr.0120, i32 1
  %cmp32.not = icmp ugt ptr %incdec.ptr, %arrayidx31
  br i1 %cmp32.not, label %for.end41, label %for.inc40.for.body33_crit_edge

for.inc40.for.body33_crit_edge:                   ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body33

for.end41:                                        ; preds = %for.inc40
  %chan_lock42 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 40
  tail call void @_raw_spin_lock_bh(ptr noundef %chan_lock42) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %n_active.1)
  %cmp43 = icmp ult i8 %n_active.1, 2
  br i1 %cmp43, label %for.end41.if.then45_crit_edge, label %if.else.i109

for.end41.if.then45_crit_edge:                    ; preds = %for.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then45

if.then45:                                        ; preds = %for.end41.if.then45_crit_edge, %for.end41.thread
  %chan_lock42126 = phi ptr [ %chan_lock42124, %for.end41.thread ], [ %chan_lock42, %for.end41.if.then45_crit_edge ]
  %flush_timeout46 = getelementptr inbounds %struct.ath_chanctx, ptr %ctx, i32 0, i32 10
  %19 = ptrtoint ptr %flush_timeout46 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 20, ptr %flush_timeout46, align 4
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %op_flags) #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %chan_lock42126) #8
  br label %cleanup

if.else.i109:                                     ; preds = %for.end41
  %channel_switch_time50 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 12
  %20 = ptrtoint ptr %channel_switch_time50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel_switch_time50, align 4
  %call3.i108 = tail call i32 @__usecs_to_jiffies(i32 noundef %21) #8
  %flush_timeout52 = getelementptr inbounds %struct.ath_chanctx, ptr %ctx, i32 0, i32 10
  %22 = ptrtoint ptr %flush_timeout52 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call3.i108, ptr %flush_timeout52, align 4
  %op_flags53 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  %call54 = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %op_flags53) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  tail call void @_raw_spin_unlock_bh(ptr noundef %chan_lock42) #8
  br i1 %tobool55.not, label %if.end58, label %if.else.i109.cleanup_crit_edge

if.else.i109.cleanup_crit_edge:                   ; preds = %if.else.i109
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end58:                                         ; preds = %if.else.i109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath9k_use_chanctx to i32))
  %23 = load i32, ptr @ath9k_use_chanctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.i113 = icmp eq i32 %23, 1
  br i1 %cmp.i113, label %if.then61, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ath_chanctx_event(ptr noundef %sc, ptr noundef null, i32 noundef 9)
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %if.end58.cleanup_crit_edge, %if.else.i109.cleanup_crit_edge, %if.then45, %if.end11, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ath9k_is_chanctx_enabled() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ath9k_use_chanctx to i32))
  %0 = load i32, ptr @ath9k_use_chanctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp eq i32 %0, 1
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_chanctx_event(ptr noundef %sc, ptr noundef %vif, i32 noundef %ev) local_unnamed_addr #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %tobool.not = icmp eq ptr %vif, null
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %spec.select = select i1 %tobool.not, ptr null, ptr %drv_priv
  %chan_lock = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 40
  tail call void @_raw_spin_lock_bh(ptr noundef %chan_lock) #8
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_mask, align 4
  %and = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %entry.do.end_crit_edge, label %if.then2

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then2:                                         ; preds = %entry
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %4 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_chan, align 8
  %center_freq1 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %center_freq1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %center_freq1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %ev)
  %8 = icmp ult i32 %ev, 10
  br i1 %8, label %switch.lookup, label %if.then2.chanctx_event_string.exit_crit_edge

if.then2.chanctx_event_string.exit_crit_edge:     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %chanctx_event_string.exit

switch.lookup:                                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [10 x ptr], ptr @switch.table.ath_chanctx_event, i32 0, i32 %ev
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %chanctx_event_string.exit

chanctx_event_string.exit:                        ; preds = %switch.lookup, %if.then2.chanctx_event_string.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.43, %if.then2.chanctx_event_string.exit_crit_edge ]
  %state = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 7
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %11)
  %12 = icmp ult i32 %11, 5
  br i1 %12, label %switch.lookup626, label %chanctx_event_string.exit.chanctx_state_string.exit_crit_edge

chanctx_event_string.exit.chanctx_state_string.exit_crit_edge: ; preds = %chanctx_event_string.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %chanctx_state_string.exit

switch.lookup626:                                 ; preds = %chanctx_event_string.exit
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep627 = getelementptr inbounds [5 x ptr], ptr @switch.table.ath_chanctx_event.76, i32 0, i32 %11
  %13 = ptrtoint ptr %switch.gep627 to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load628 = load ptr, ptr %switch.gep627, align 4
  br label %chanctx_state_string.exit

chanctx_state_string.exit:                        ; preds = %switch.lookup626, %chanctx_event_string.exit.chanctx_state_string.exit_crit_edge
  %retval.0.i613 = phi ptr [ %switch.load628, %switch.lookup626 ], [ @.str.43, %chanctx_event_string.exit.chanctx_state_string.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #8
  %14 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_raw_ts64(ptr noundef nonnull %ts.i) #8
  %last_event_time.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 25
  %15 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ts.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %17 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %18, 1000000
  %19 = ptrtoint ptr %last_event_time.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %last_event_time.i, align 8
  %tv_nsec3.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 25, i32 1
  %21 = ptrtoint ptr %tv_nsec3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tv_nsec3.i, align 8
  %div4.i.neg = sdiv i32 %22, -1000000
  %reass.add.i = sub i64 %16, %20
  %23 = call ptr @memcpy(ptr %last_event_time.i, ptr %ts.i, i32 16)
  %24 = trunc i64 %reass.add.i to i32
  %25 = mul i32 %24, 1000
  %26 = add i32 %25, %div.i
  %conv8.i = add i32 %div4.i.neg, %26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #8
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.3, i32 noundef %7, ptr noundef nonnull %retval.0.i, ptr noundef nonnull %retval.0.i613, i32 noundef %conv8.i) #8
  br label %do.end

do.end:                                           ; preds = %chanctx_state_string.exit, %entry.do.end_crit_edge
  %27 = zext i32 %ev to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %ev, label %do.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb175
    i32 2, label %sw.bb223
    i32 3, label %sw.bb248
    i32 4, label %sw.bb285
    i32 5, label %do.end.sw.bb307_crit_edge
    i32 9, label %sw.bb366
    i32 7, label %sw.bb384
  ]

do.end.sw.bb307_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb307

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  %offchannel_duration = getelementptr inbounds %struct.ath_vif, ptr %spec.select, i32 0, i32 14
  %28 = ptrtoint ptr %offchannel_duration to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offchannel_duration, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool7.not = icmp eq i32 %29, 0
  br i1 %tobool7.not, label %sw.bb.if.end10_crit_edge, label %if.then8

sw.bb.if.end10_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %offchannel_duration to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %offchannel_duration, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %sw.bb.if.end10_crit_edge
  %oneshot_noa = getelementptr inbounds %struct.ath_vif, ptr %spec.select, i32 0, i32 18
  %31 = ptrtoint ptr %oneshot_noa to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %oneshot_noa, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool11.not = icmp eq i8 %32, 0
  br i1 %tobool11.not, label %if.end10.if.end22_crit_edge, label %if.then12

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then12:                                        ; preds = %if.end10
  %noa_duration = getelementptr inbounds %struct.ath_vif, ptr %spec.select, i32 0, i32 16
  %33 = ptrtoint ptr %noa_duration to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %noa_duration, align 4
  %34 = ptrtoint ptr %oneshot_noa to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %oneshot_noa, align 1
  %35 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %debug_mask, align 4
  %and16 = and i32 %36, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then12.if.end22_crit_edge, label %if.then18

if.then12.if.end22_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then18:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.4) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.then12.if.end22_crit_edge, %if.end10.if.end22_crit_edge
  %chanctx = getelementptr inbounds %struct.ath_vif, ptr %spec.select, i32 0, i32 10
  %37 = ptrtoint ptr %chanctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chanctx, align 4
  %cur_chan23 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %39 = ptrtoint ptr %cur_chan23 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur_chan23, align 8
  %cmp.not = icmp eq ptr %38, %40
  br i1 %cmp.not, label %if.end33, label %do.body25

do.body25:                                        ; preds = %if.end22
  %41 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %debug_mask, align 4
  %and27 = and i32 %42, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.body25.sw.epilog_crit_edge, label %if.then29

do.body25.sw.epilog_crit_edge:                    ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then29:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.5) #8
  br label %sw.epilog

if.end33:                                         ; preds = %if.end22
  %sched34 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21
  %offchannel_pending = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 2
  %43 = ptrtoint ptr %offchannel_pending to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %offchannel_pending, align 2, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool35.not = icmp eq i8 %44, 0
  br i1 %tobool35.not, label %if.end33.if.end51_crit_edge, label %land.lhs.true

if.end33.if.end51_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

land.lhs.true:                                    ; preds = %if.end33
  %wait_switch = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 3
  %45 = ptrtoint ptr %wait_switch to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %wait_switch, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool37.not = icmp eq i8 %46, 0
  br i1 %tobool37.not, label %if.then38, label %land.lhs.true.if.end51_crit_edge

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then38:                                        ; preds = %land.lhs.true
  %47 = ptrtoint ptr %offchannel_pending to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %offchannel_pending, align 2
  %offchannel = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22
  %next_chan = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 23
  %48 = ptrtoint ptr %next_chan to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %offchannel, ptr %next_chan, align 8
  %state42 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 7
  %49 = ptrtoint ptr %state42 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %state42, align 8
  %50 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %debug_mask, align 4
  %and45 = and i32 %51, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.then38.if.end51_crit_edge, label %if.then47

if.then38.if.end51_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then47:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.6) #8
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %if.then38.if.end51_crit_edge, %land.lhs.true.if.end51_crit_edge, %if.end33.if.end51_crit_edge
  %52 = ptrtoint ptr %cur_chan23 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cur_chan23, align 8
  %chanctx.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 38
  %54 = icmp eq ptr %chanctx.i, %53
  %lnot.ext.i = zext i1 %54 to i32
  %arrayidx2.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 %lnot.ext.i
  %active = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 %lnot.ext.i, i32 15
  %55 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %active, align 2, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool54.not = icmp eq i8 %56, 0
  br i1 %tobool54.not, label %if.end51.if.end71_crit_edge, label %land.lhs.true55

if.end51.if.end71_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

land.lhs.true55:                                  ; preds = %if.end51
  %state57 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 7
  %57 = ptrtoint ptr %state57 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %state57, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp58 = icmp eq i32 %58, 0
  br i1 %cmp58, label %if.then59, label %land.lhs.true55.if.end71_crit_edge

land.lhs.true55.if.end71_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then59:                                        ; preds = %land.lhs.true55
  %next_chan60 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 23
  %59 = ptrtoint ptr %next_chan60 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %arrayidx2.i, ptr %next_chan60, align 8
  %60 = ptrtoint ptr %state57 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %state57, align 8
  %61 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %debug_mask, align 4
  %and65 = and i32 %62, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.then59.if.end71_crit_edge, label %if.then67

if.then59.if.end71_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then67:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.7) #8
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %if.then59.if.end71_crit_edge, %land.lhs.true55.if.end71_crit_edge, %if.end51.if.end71_crit_edge
  %state73 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 7
  %63 = ptrtoint ptr %state73 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %state73, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp74 = icmp eq i32 %64, 2
  br i1 %cmp74, label %if.then75, label %if.end71.if.end86_crit_edge

if.end71.if.end86_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then75:                                        ; preds = %if.end71
  %65 = ptrtoint ptr %state73 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %state73, align 8
  %66 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %debug_mask, align 4
  %and80 = and i32 %67, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.then75.if.end86_crit_edge, label %if.then82

if.then75.if.end86_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then82:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.8) #8
  br label %if.end86

if.end86:                                         ; preds = %if.then82, %if.then75.if.end86_crit_edge, %if.end71.if.end86_crit_edge
  %mgd_prepare_tx = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 6
  %68 = ptrtoint ptr %mgd_prepare_tx to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %mgd_prepare_tx, align 2, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool88.not = icmp eq i8 %69, 0
  br i1 %tobool88.not, label %if.end86.if.end92_crit_edge, label %if.then89

if.end86.if.end92_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then89:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %state73 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %state73, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %if.end86.if.end92_crit_edge
  %71 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %active, align 2, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool94.not = icmp eq i8 %72, 0
  br i1 %tobool94.not, label %land.lhs.true95, label %if.end92.if.end112_crit_edge

if.end92.if.end112_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

land.lhs.true95:                                  ; preds = %if.end92
  %noa_duration96 = getelementptr inbounds %struct.ath_vif, ptr %spec.select, i32 0, i32 16
  %73 = ptrtoint ptr %noa_duration96 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %noa_duration96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool97.not = icmp eq i32 %74, 0
  br i1 %tobool97.not, label %land.lhs.true95.if.end112_crit_edge, label %land.lhs.true98

land.lhs.true95.if.end112_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

land.lhs.true98:                                  ; preds = %land.lhs.true95
  %75 = ptrtoint ptr %state73 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %state73, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp101.not = icmp eq i32 %76, 1
  br i1 %cmp101.not, label %land.lhs.true98.do.body118_crit_edge, label %if.then102

land.lhs.true98.do.body118_crit_edge:             ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body118

if.then102:                                       ; preds = %land.lhs.true98
  %77 = ptrtoint ptr %noa_duration96 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %noa_duration96, align 4
  %periodic_noa = getelementptr inbounds %struct.ath_vif, ptr %spec.select, i32 0, i32 17
  %78 = ptrtoint ptr %periodic_noa to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %periodic_noa, align 8
  %79 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %debug_mask, align 4
  %and106 = and i32 %80, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.then102.if.end112_crit_edge, label %if.then108

if.then102.if.end112_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

if.then108:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.9) #8
  br label %if.end112

if.end112:                                        ; preds = %if.then108, %if.then102.if.end112_crit_edge, %land.lhs.true95.if.end112_crit_edge, %if.end92.if.end112_crit_edge
  %81 = ptrtoint ptr %state73 to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pr = load i32, ptr %state73, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp115.not = icmp eq i32 %.pr, 1
  br i1 %cmp115.not, label %if.end112.do.body118_crit_edge, label %if.end112.sw.epilog_crit_edge

if.end112.sw.epilog_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end112.do.body118_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body118

do.body118:                                       ; preds = %if.end112.do.body118_crit_edge, %land.lhs.true98.do.body118_crit_edge
  %82 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %debug_mask, align 4
  %and120 = and i32 %83, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %do.body118.do.end126_crit_edge, label %if.then122

do.body118.do.end126_crit_edge:                   ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end126

if.then122:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #10
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.10, ptr noundef %addr) #8
  br label %do.end126

do.end126:                                        ; preds = %if.then122, %do.body118.do.end126_crit_edge
  %84 = ptrtoint ptr %sched34 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %sched34, align 8
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 4
  %call128 = call i32 %86(ptr noundef %1, i32 noundef 33280) #8
  %next_tbtt = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 9
  %87 = ptrtoint ptr %next_tbtt to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %call128, ptr %next_tbtt, align 8
  %88 = ptrtoint ptr %cur_chan23 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cur_chan23, align 8
  %beacon = getelementptr inbounds %struct.ath_chanctx, ptr %89, i32 0, i32 5
  %beacon_interval = getelementptr inbounds %struct.ath_chanctx, ptr %89, i32 0, i32 5, i32 1
  %90 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %beacon_interval, align 4
  %shl = shl i32 %91, 10
  %div604 = lshr exact i32 %shl, 2
  %add = add i32 %div604, %call128
  %switch_start_time = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 10
  %92 = ptrtoint ptr %switch_start_time to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %add, ptr %switch_start_time, align 4
  %last_beacon = getelementptr inbounds %struct.ath_chanctx, ptr %89, i32 0, i32 9
  %93 = ptrtoint ptr %last_beacon to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %call128, ptr %last_beacon, align 8
  %next_chan137 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 23
  %94 = ptrtoint ptr %next_chan137 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %next_chan137, align 8
  %offchannel138 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22
  %cmp140 = icmp eq ptr %95, %offchannel138
  br i1 %cmp140, label %if.then141, label %if.end142

if.then141:                                       ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @ath_chanctx_offchannel_noa(ptr noundef %sc, ptr noundef %arrayidx2.i, ptr noundef %spec.select, i32 noundef %add)
  br label %sw.epilog

if.end142:                                        ; preds = %do.end126
  %96 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %active, align 2, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i = icmp eq i8 %97, 0
  br i1 %tobool.not.i, label %if.end142.ath_chanctx_handle_bmiss.exit_crit_edge, label %land.lhs.true.i

if.end142.ath_chanctx_handle_bmiss.exit_crit_edge: ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_chanctx_handle_bmiss.exit

land.lhs.true.i:                                  ; preds = %if.end142
  %extend_absence.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 5
  %98 = ptrtoint ptr %extend_absence.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %extend_absence.i, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool1.not.i = icmp eq i8 %99, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %noa_duration.i = getelementptr inbounds %struct.ath_vif, ptr %spec.select, i32 0, i32 16
  %100 = ptrtoint ptr %noa_duration.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %noa_duration.i, align 4
  %101 = ptrtoint ptr %extend_absence.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %extend_absence.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge
  %102 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %102)
  %.pr.i = load i8, ptr %active, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool5.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool5.not.i, label %if.end.i.ath_chanctx_handle_bmiss.exit_crit_edge, label %land.lhs.true6.i

if.end.i.ath_chanctx_handle_bmiss.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_chanctx_handle_bmiss.exit

land.lhs.true6.i:                                 ; preds = %if.end.i
  %beacon_miss.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 8
  %103 = ptrtoint ptr %beacon_miss.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %beacon_miss.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %104)
  %cmp.i = icmp ugt i8 %104, 1
  br i1 %cmp.i, label %if.then9.i, label %land.lhs.true6.i.ath_chanctx_handle_bmiss.exit_crit_edge

land.lhs.true6.i.ath_chanctx_handle_bmiss.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_chanctx_handle_bmiss.exit

if.then9.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  %noa_duration10.i = getelementptr inbounds %struct.ath_vif, ptr %spec.select, i32 0, i32 16
  %105 = ptrtoint ptr %noa_duration10.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %noa_duration10.i, align 4
  %106 = ptrtoint ptr %extend_absence.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %extend_absence.i, align 1
  br label %ath_chanctx_handle_bmiss.exit

ath_chanctx_handle_bmiss.exit:                    ; preds = %if.then9.i, %land.lhs.true6.i.ath_chanctx_handle_bmiss.exit_crit_edge, %if.end.i.ath_chanctx_handle_bmiss.exit_crit_edge, %if.end142.ath_chanctx_handle_bmiss.exit_crit_edge
  %107 = ptrtoint ptr %mgd_prepare_tx to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %mgd_prepare_tx, align 2, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool145.not = icmp eq i8 %108, 0
  br i1 %tobool145.not, label %if.end148, label %if.then146

if.then146:                                       ; preds = %ath_chanctx_handle_bmiss.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call147 = call i32 @jiffies_to_usecs(i32 noundef 20) #8
  call fastcc void @ath_chanctx_set_oneshot_noa(ptr noundef %sc, ptr noundef %spec.select, i32 noundef %add, i32 noundef %call147)
  br label %sw.epilog

if.end148:                                        ; preds = %ath_chanctx_handle_bmiss.exit
  %noa_duration149 = getelementptr inbounds %struct.ath_vif, ptr %spec.select, i32 0, i32 16
  %109 = ptrtoint ptr %noa_duration149 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %noa_duration149, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool150.not = icmp eq i32 %110, 0
  br i1 %tobool150.not, label %if.end148.if.end155_crit_edge, label %land.lhs.true151

if.end148.if.end155_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end155

land.lhs.true151:                                 ; preds = %if.end148
  %noa_start = getelementptr inbounds %struct.ath_vif, ptr %spec.select, i32 0, i32 15
  %111 = ptrtoint ptr %noa_start to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %noa_start, align 8
  %sub = sub i32 %add, %112
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %sub)
  %cmp152 = icmp ugt i32 %sub, 1073741824
  br i1 %cmp152, label %if.then153, label %land.lhs.true151.if.end155_crit_edge

land.lhs.true151.if.end155_crit_edge:             ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end155

if.then153:                                       ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %noa_duration149 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %noa_duration149, align 4
  br label %if.end155

if.end155:                                        ; preds = %if.then153, %land.lhs.true151.if.end155_crit_edge, %if.end148.if.end155_crit_edge
  %114 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %active, align 2, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool157.not = icmp eq i8 %115, 0
  br i1 %tobool157.not, label %if.end155.sw.epilog_crit_edge, label %land.lhs.true158

if.end155.sw.epilog_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true158:                                 ; preds = %if.end155
  %116 = ptrtoint ptr %noa_duration149 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %noa_duration149, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool160.not = icmp eq i32 %117, 0
  br i1 %tobool160.not, label %land.lhs.true158.if.then163_crit_edge, label %lor.lhs.false

land.lhs.true158.if.then163_crit_edge:            ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then163

lor.lhs.false:                                    ; preds = %land.lhs.true158
  %force_noa_update = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 4
  %118 = ptrtoint ptr %force_noa_update to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %force_noa_update, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool162.not = icmp eq i8 %119, 0
  br i1 %tobool162.not, label %lor.lhs.false.if.end164_crit_edge, label %lor.lhs.false.if.then163_crit_edge

lor.lhs.false.if.then163_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then163

lor.lhs.false.if.end164_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end164

if.then163:                                       ; preds = %lor.lhs.false.if.then163_crit_edge, %land.lhs.true158.if.then163_crit_edge
  call fastcc void @ath_chanctx_set_periodic_noa(ptr noundef %sc, ptr noundef %spec.select, ptr noundef %beacon, i32 noundef %add, i32 noundef %shl)
  br label %if.end164

if.end164:                                        ; preds = %if.then163, %lor.lhs.false.if.end164_crit_edge
  %120 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %120)
  %.pr624 = load i8, ptr %active, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr624)
  %tobool166.not = icmp eq i8 %.pr624, 0
  br i1 %tobool166.not, label %if.end164.sw.epilog_crit_edge, label %land.lhs.true167

if.end164.sw.epilog_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true167:                                 ; preds = %if.end164
  %force_noa_update169 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 4
  %121 = ptrtoint ptr %force_noa_update169 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %force_noa_update169, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool170.not = icmp eq i8 %122, 0
  br i1 %tobool170.not, label %land.lhs.true167.sw.epilog_crit_edge, label %if.then171

land.lhs.true167.sw.epilog_crit_edge:             ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then171:                                       ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #10
  %123 = ptrtoint ptr %force_noa_update169 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %force_noa_update169, align 4
  br label %sw.epilog

sw.bb175:                                         ; preds = %do.end
  %sched176 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21
  %124 = ptrtoint ptr %sched176 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %sched176, align 8, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool178.not = icmp eq i8 %125, 0
  br i1 %tobool178.not, label %do.body180, label %if.end188

do.body180:                                       ; preds = %sw.bb175
  %126 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %debug_mask, align 4
  %and182 = and i32 %127, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182)
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %do.body180.sw.epilog_crit_edge, label %if.then184

do.body180.sw.epilog_crit_edge:                   ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then184:                                       ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.11) #8
  br label %sw.epilog

if.end188:                                        ; preds = %sw.bb175
  %128 = ptrtoint ptr %sched176 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %sched176, align 8
  %mgd_prepare_tx192 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 6
  %129 = ptrtoint ptr %mgd_prepare_tx192 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %mgd_prepare_tx192, align 2, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool193.not = icmp eq i8 %130, 0
  br i1 %tobool193.not, label %if.end205, label %if.then194

if.then194:                                       ; preds = %if.end188
  %131 = ptrtoint ptr %mgd_prepare_tx192 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %mgd_prepare_tx192, align 2
  %go_beacon = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 24
  call void @complete(ptr noundef %go_beacon) #8
  %132 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %debug_mask, align 4
  %and199 = and i32 %133, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %tobool200.not = icmp eq i32 %and199, 0
  br i1 %tobool200.not, label %if.then194.sw.epilog_crit_edge, label %if.then201

if.then194.sw.epilog_crit_edge:                   ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then201:                                       ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.12) #8
  br label %sw.epilog

if.end205:                                        ; preds = %if.end188
  %state207 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 7
  %134 = ptrtoint ptr %state207 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %state207, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %135)
  %cmp208.not = icmp eq i32 %135, 1
  br i1 %cmp208.not, label %do.body211, label %if.end205.sw.epilog_crit_edge

if.end205.sw.epilog_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body211:                                       ; preds = %if.end205
  %136 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %debug_mask, align 4
  %and213 = and i32 %137, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and213)
  %tobool214.not = icmp eq i32 %and213, 0
  br i1 %tobool214.not, label %do.body211.do.end218_crit_edge, label %if.then215

do.body211.do.end218_crit_edge:                   ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end218

if.then215:                                       ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.13) #8
  br label %do.end218

do.end218:                                        ; preds = %if.then215, %do.body211.do.end218_crit_edge
  %138 = ptrtoint ptr %state207 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 2, ptr %state207, align 8
  %switch_start_time222 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 10
  %139 = ptrtoint ptr %switch_start_time222 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %switch_start_time222, align 4
  call fastcc void @ath_chanctx_setup_timer(ptr noundef %sc, i32 noundef %140)
  br label %sw.epilog

sw.bb223:                                         ; preds = %do.end
  %sched224 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21
  %state225 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 7
  %141 = ptrtoint ptr %state225 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %state225, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %142)
  %cmp226.not = icmp eq i32 %142, 2
  br i1 %cmp226.not, label %if.end228, label %sw.bb223.sw.epilog_crit_edge

sw.bb223.sw.epilog_crit_edge:                     ; preds = %sw.bb223
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end228:                                        ; preds = %sw.bb223
  %cur_chan229 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %143 = ptrtoint ptr %cur_chan229 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %cur_chan229, align 8
  %switch_after_beacon = getelementptr inbounds %struct.ath_chanctx, ptr %144, i32 0, i32 17
  %145 = ptrtoint ptr %switch_after_beacon to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %switch_after_beacon, align 8, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool230.not = icmp eq i8 %146, 0
  br i1 %tobool230.not, label %land.lhs.true231, label %if.end228.do.body238_crit_edge

if.end228.do.body238_crit_edge:                   ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body238

land.lhs.true231:                                 ; preds = %if.end228
  %147 = ptrtoint ptr %sched224 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %sched224, align 8, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool234.not = icmp eq i8 %148, 0
  br i1 %tobool234.not, label %land.lhs.true231.do.body238_crit_edge, label %if.then235

land.lhs.true231.do.body238_crit_edge:            ; preds = %land.lhs.true231
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body238

if.then235:                                       ; preds = %land.lhs.true231
  call void @__sanitizer_cov_trace_pc() #10
  %beacon_miss = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 8
  %149 = ptrtoint ptr %beacon_miss to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %beacon_miss, align 4
  %inc = add i8 %150, 1
  store i8 %inc, ptr %beacon_miss, align 4
  br label %do.body238

do.body238:                                       ; preds = %if.then235, %land.lhs.true231.do.body238_crit_edge, %if.end228.do.body238_crit_edge
  %151 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %debug_mask, align 4
  %and240 = and i32 %152, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and240)
  %tobool241.not = icmp eq i32 %and240, 0
  br i1 %tobool241.not, label %do.body238.do.end245_crit_edge, label %if.then242

do.body238.do.end245_crit_edge:                   ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end245

if.then242:                                       ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.14) #8
  br label %do.end245

do.end245:                                        ; preds = %if.then242, %do.body238.do.end245_crit_edge
  %153 = ptrtoint ptr %state225 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 3, ptr %state225, align 8
  %154 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %sc, align 8
  %chanctx_work = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 18
  call void @ieee80211_queue_work(ptr noundef %155, ptr noundef %chanctx_work) #8
  br label %sw.epilog

sw.bb248:                                         ; preds = %do.end
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  %156 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile i32, ptr %op_flags, align 4
  %158 = and i32 %157, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool250.not = icmp eq i32 %158, 0
  br i1 %tobool250.not, label %sw.bb248.sw.epilog_crit_edge, label %lor.lhs.false251

sw.bb248.sw.epilog_crit_edge:                     ; preds = %sw.bb248
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false251:                                 ; preds = %sw.bb248
  %cur_chan252 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %159 = ptrtoint ptr %cur_chan252 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %cur_chan252, align 8
  %offchannel253 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22
  %cmp255 = icmp eq ptr %160, %offchannel253
  br i1 %cmp255, label %lor.lhs.false251.sw.epilog_crit_edge, label %if.end257

lor.lhs.false251.sw.epilog_crit_edge:             ; preds = %lor.lhs.false251
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end257:                                        ; preds = %lor.lhs.false251
  %sched258 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21
  %161 = ptrtoint ptr %sched258 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 0, ptr %sched258, align 8
  %beacon_miss261 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 8
  %162 = ptrtoint ptr %beacon_miss261 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %beacon_miss261, align 4
  %state263 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 7
  %163 = ptrtoint ptr %state263 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %state263, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %164)
  %cmp264 = icmp eq i32 %164, 4
  br i1 %cmp264, label %if.end257.sw.epilog_crit_edge, label %lor.lhs.false265

if.end257.sw.epilog_crit_edge:                    ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false265:                                 ; preds = %if.end257
  %beacon_adjust = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 1
  %165 = ptrtoint ptr %beacon_adjust to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %beacon_adjust, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool267.not = icmp eq i8 %166, 0
  br i1 %tobool267.not, label %lor.lhs.false265.sw.epilog_crit_edge, label %lor.lhs.false268

lor.lhs.false265.sw.epilog_crit_edge:             ; preds = %lor.lhs.false265
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false268:                                 ; preds = %lor.lhs.false265
  %tsf_val = getelementptr inbounds %struct.ath_chanctx, ptr %160, i32 0, i32 8
  %167 = ptrtoint ptr %tsf_val to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %tsf_val, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %168)
  %tobool270.not = icmp eq i64 %168, 0
  br i1 %tobool270.not, label %lor.lhs.false268.sw.epilog_crit_edge, label %if.end272

lor.lhs.false268.sw.epilog_crit_edge:             ; preds = %lor.lhs.false268
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end272:                                        ; preds = %lor.lhs.false268
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @ath_chanctx_adjust_tbtt_delta(ptr noundef %sc)
  %switch_start_time274 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 10
  %169 = ptrtoint ptr %switch_start_time274 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %switch_start_time274, align 4
  %171 = ptrtoint ptr %cur_chan252 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %cur_chan252, align 8
  %tsf_val276 = getelementptr inbounds %struct.ath_chanctx, ptr %172, i32 0, i32 8
  %173 = ptrtoint ptr %tsf_val276 to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %tsf_val276, align 8
  %conv = trunc i64 %174 to i32
  %tsf_ts = getelementptr inbounds %struct.ath_chanctx, ptr %172, i32 0, i32 7
  %call278 = call i32 @ath9k_hw_get_tsf_offset(ptr noundef %tsf_ts, ptr noundef null) #8
  %call281 = call i32 @ath9k_hw_gettsf32(ptr noundef %1) #8
  %175 = add i32 %call278, %conv
  %sub280 = sub i32 %170, %175
  %add282 = add i32 %sub280, %call281
  %176 = ptrtoint ptr %beacon_adjust to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 0, ptr %beacon_adjust, align 1
  call fastcc void @ath_chanctx_setup_timer(ptr noundef %sc, i32 noundef %add282)
  br label %sw.epilog

sw.bb285:                                         ; preds = %do.end
  %state287 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 7
  %177 = ptrtoint ptr %state287 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %state287, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %178)
  %cmp288.not = icmp eq i32 %178, 4
  br i1 %cmp288.not, label %lor.lhs.false290, label %sw.bb285.sw.epilog_crit_edge

sw.bb285.sw.epilog_crit_edge:                     ; preds = %sw.bb285
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false290:                                 ; preds = %sw.bb285
  %chanctx291 = getelementptr inbounds %struct.ath_vif, ptr %spec.select, i32 0, i32 10
  %179 = ptrtoint ptr %chanctx291 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %chanctx291, align 4
  %cur_chan292 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %181 = ptrtoint ptr %cur_chan292 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %cur_chan292, align 8
  %cmp293.not = icmp eq ptr %180, %182
  br i1 %cmp293.not, label %do.body297, label %lor.lhs.false290.sw.epilog_crit_edge

lor.lhs.false290.sw.epilog_crit_edge:             ; preds = %lor.lhs.false290
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body297:                                       ; preds = %lor.lhs.false290
  %183 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %debug_mask, align 4
  %and299 = and i32 %184, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and299)
  %tobool300.not = icmp eq i32 %and299, 0
  br i1 %tobool300.not, label %do.body297.do.end304_crit_edge, label %if.then301

do.body297.do.end304_crit_edge:                   ; preds = %do.body297
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end304

if.then301:                                       ; preds = %do.body297
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.15) #8
  br label %do.end304

do.end304:                                        ; preds = %if.then301, %do.body297.do.end304_crit_edge
  %185 = ptrtoint ptr %state287 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 0, ptr %state287, align 8
  br label %sw.bb307

sw.bb307:                                         ; preds = %do.end304, %do.end.sw.bb307_crit_edge
  %op_flags308 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  %186 = ptrtoint ptr %op_flags308 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load volatile i32, ptr %op_flags308, align 4
  %188 = and i32 %187, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool310.not = icmp eq i32 %188, 0
  br i1 %tobool310.not, label %sw.bb307.sw.epilog_crit_edge, label %lor.lhs.false311

sw.bb307.sw.epilog_crit_edge:                     ; preds = %sw.bb307
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false311:                                 ; preds = %sw.bb307
  %sched312 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21
  %state313 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 7
  %189 = ptrtoint ptr %state313 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %state313, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %190)
  %cmp314 = icmp eq i32 %190, 4
  br i1 %cmp314, label %lor.lhs.false311.sw.epilog_crit_edge, label %lor.lhs.false316

lor.lhs.false311.sw.epilog_crit_edge:             ; preds = %lor.lhs.false311
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false316:                                 ; preds = %lor.lhs.false311
  %cur_chan317 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %191 = ptrtoint ptr %cur_chan317 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %cur_chan317, align 8
  %switch_after_beacon318 = getelementptr inbounds %struct.ath_chanctx, ptr %192, i32 0, i32 17
  %193 = ptrtoint ptr %switch_after_beacon318 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %switch_after_beacon318, align 8, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool319.not = icmp ne i8 %194, 0
  %offchannel323 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22
  %cmp325 = icmp eq ptr %192, %offchannel323
  %or.cond = select i1 %tobool319.not, i1 true, i1 %cmp325
  br i1 %or.cond, label %lor.lhs.false316.sw.epilog_crit_edge, label %if.end328

lor.lhs.false316.sw.epilog_crit_edge:             ; preds = %lor.lhs.false316
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end328:                                        ; preds = %lor.lhs.false316
  %chanctx.i614 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 38
  %195 = icmp eq ptr %chanctx.i614, %192
  %lnot.ext.i615 = zext i1 %195 to i32
  %arrayidx2.i616 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 %lnot.ext.i615
  %next_chan331 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 23
  %196 = ptrtoint ptr %next_chan331 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %arrayidx2.i616, ptr %next_chan331, align 8
  %197 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %debug_mask, align 4
  %and336 = and i32 %198, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and336)
  %tobool337.not = icmp eq i32 %and336, 0
  br i1 %tobool337.not, label %if.end328.do.end341_crit_edge, label %if.then338

if.end328.do.end341_crit_edge:                    ; preds = %if.end328
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end341

if.then338:                                       ; preds = %if.end328
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.16) #8
  br label %do.end341

do.end341:                                        ; preds = %if.then338, %if.end328.do.end341_crit_edge
  %199 = ptrtoint ptr %state313 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 2, ptr %state313, align 8
  %wait_switch345 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 3
  %200 = ptrtoint ptr %wait_switch345 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 0, ptr %wait_switch345, align 1
  %beacon_interval346 = getelementptr inbounds %struct.ath_chanctx, ptr %192, i32 0, i32 5, i32 1
  %201 = ptrtoint ptr %beacon_interval346 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %beacon_interval346, align 4
  %shl347 = shl i32 %202, 10
  %div348 = sdiv i32 %shl347, 2
  %extend_absence = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 5
  %203 = ptrtoint ptr %extend_absence to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %extend_absence, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %tobool350.not = icmp eq i8 %204, 0
  br i1 %tobool350.not, label %do.end341.if.end354_crit_edge, label %if.then351

do.end341.if.end354_crit_edge:                    ; preds = %do.end341
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end354

if.then351:                                       ; preds = %do.end341
  call void @__sanitizer_cov_trace_pc() #10
  %beacon_miss353 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 8
  %205 = ptrtoint ptr %beacon_miss353 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 0, ptr %beacon_miss353, align 4
  %mul = mul i32 %div348, 3
  br label %if.end354

if.end354:                                        ; preds = %if.then351, %do.end341.if.end354_crit_edge
  %tsf_time.0 = phi i32 [ %mul, %if.then351 ], [ %div348, %do.end341.if.end354_crit_edge ]
  %channel_switch_time = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 12
  %206 = ptrtoint ptr %channel_switch_time to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %channel_switch_time, align 4
  %sub356 = sub i32 %tsf_time.0, %207
  %208 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %sc_ah, align 4
  %call358 = call i32 @ath9k_hw_gettsf32(ptr noundef %209) #8
  %add359 = add i32 %call358, %sub356
  %switch_start_time361 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 10
  %210 = ptrtoint ptr %switch_start_time361 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %add359, ptr %switch_start_time361, align 4
  call fastcc void @ath_chanctx_setup_timer(ptr noundef %sc, i32 noundef %add359)
  %211 = ptrtoint ptr %sched312 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 1, ptr %sched312, align 8
  %beacon_adjust365 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 1
  %212 = ptrtoint ptr %beacon_adjust365 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 1, ptr %beacon_adjust365, align 1
  br label %sw.epilog

sw.bb366:                                         ; preds = %do.end
  %cur_chan367 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %213 = ptrtoint ptr %cur_chan367 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %cur_chan367, align 8
  %offchannel368 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22
  %cmp370 = icmp eq ptr %214, %offchannel368
  br i1 %cmp370, label %sw.bb366.sw.epilog_crit_edge, label %lor.lhs.false372

sw.bb366.sw.epilog_crit_edge:                     ; preds = %sw.bb366
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false372:                                 ; preds = %sw.bb366
  %switch_after_beacon374 = getelementptr inbounds %struct.ath_chanctx, ptr %214, i32 0, i32 17
  %215 = ptrtoint ptr %switch_after_beacon374 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %switch_after_beacon374, align 8, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool375.not = icmp eq i8 %216, 0
  br i1 %tobool375.not, label %if.end378, label %lor.lhs.false372.sw.epilog_crit_edge

lor.lhs.false372.sw.epilog_crit_edge:             ; preds = %lor.lhs.false372
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end378:                                        ; preds = %lor.lhs.false372
  call void @__sanitizer_cov_trace_pc() #10
  %chanctx.i617 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 38
  %217 = icmp eq ptr %chanctx.i617, %214
  %lnot.ext.i618 = zext i1 %217 to i32
  %arrayidx2.i619 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 %lnot.ext.i618
  %next_chan381 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 23
  %218 = ptrtoint ptr %next_chan381 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %arrayidx2.i619, ptr %next_chan381, align 8
  %219 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %sc, align 8
  %chanctx_work383 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 18
  call void @ieee80211_queue_work(ptr noundef %220, ptr noundef %chanctx_work383) #8
  br label %sw.epilog

sw.bb384:                                         ; preds = %do.end
  %cur_chan385 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %221 = ptrtoint ptr %cur_chan385 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %cur_chan385, align 8
  %assigned = getelementptr inbounds %struct.ath_chanctx, ptr %222, i32 0, i32 16
  %223 = ptrtoint ptr %assigned to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %assigned, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %tobool386.not = icmp eq i8 %224, 0
  br i1 %tobool386.not, label %if.end404, label %if.then387

if.then387:                                       ; preds = %sw.bb384
  %next_chan388 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 23
  %225 = ptrtoint ptr %next_chan388 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %next_chan388, align 8
  %tobool389.not = icmp eq ptr %226, null
  br i1 %tobool389.not, label %if.then387.sw.epilog_crit_edge, label %land.lhs.true390

if.then387.sw.epilog_crit_edge:                   ; preds = %if.then387
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true390:                                 ; preds = %if.then387
  %assigned392 = getelementptr inbounds %struct.ath_chanctx, ptr %226, i32 0, i32 16
  %227 = ptrtoint ptr %assigned392 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %assigned392, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %228)
  %tobool393.not = icmp ne i8 %228, 0
  %offchannel396 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22
  %cmp398.not = icmp eq ptr %226, %offchannel396
  %or.cond605 = select i1 %tobool393.not, i1 true, i1 %cmp398.not
  br i1 %or.cond605, label %land.lhs.true390.sw.epilog_crit_edge, label %if.then400

land.lhs.true390.sw.epilog_crit_edge:             ; preds = %land.lhs.true390
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then400:                                       ; preds = %land.lhs.true390
  call void @__sanitizer_cov_trace_pc() #10
  %state402 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 7
  %229 = ptrtoint ptr %state402 to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 0, ptr %state402, align 8
  br label %sw.epilog

if.end404:                                        ; preds = %sw.bb384
  %chanctx.i620 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 38
  %230 = icmp eq ptr %chanctx.i620, %222
  %lnot.ext.i621 = zext i1 %230 to i32
  %state408 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 7
  %231 = ptrtoint ptr %state408 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 0, ptr %state408, align 8
  %assigned409 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 %lnot.ext.i621, i32 16
  %232 = ptrtoint ptr %assigned409 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %assigned409, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %tobool410.not = icmp eq i8 %233, 0
  br i1 %tobool410.not, label %if.end404.sw.epilog_crit_edge, label %if.end412

if.end404.sw.epilog_crit_edge:                    ; preds = %if.end404
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end412:                                        ; preds = %if.end404
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx2.i622 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 %lnot.ext.i621
  %next_chan413 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 23
  %234 = ptrtoint ptr %next_chan413 to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %arrayidx2.i622, ptr %next_chan413, align 8
  %235 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %sc, align 8
  %chanctx_work415 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 18
  call void @ieee80211_queue_work(ptr noundef %236, ptr noundef %chanctx_work415) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end412, %if.end404.sw.epilog_crit_edge, %if.then400, %land.lhs.true390.sw.epilog_crit_edge, %if.then387.sw.epilog_crit_edge, %if.end378, %lor.lhs.false372.sw.epilog_crit_edge, %sw.bb366.sw.epilog_crit_edge, %if.end354, %lor.lhs.false316.sw.epilog_crit_edge, %lor.lhs.false311.sw.epilog_crit_edge, %sw.bb307.sw.epilog_crit_edge, %lor.lhs.false290.sw.epilog_crit_edge, %sw.bb285.sw.epilog_crit_edge, %if.end272, %lor.lhs.false268.sw.epilog_crit_edge, %lor.lhs.false265.sw.epilog_crit_edge, %if.end257.sw.epilog_crit_edge, %lor.lhs.false251.sw.epilog_crit_edge, %sw.bb248.sw.epilog_crit_edge, %do.end245, %sw.bb223.sw.epilog_crit_edge, %do.end218, %if.end205.sw.epilog_crit_edge, %if.then201, %if.then194.sw.epilog_crit_edge, %if.then184, %do.body180.sw.epilog_crit_edge, %if.then171, %land.lhs.true167.sw.epilog_crit_edge, %if.end164.sw.epilog_crit_edge, %if.end155.sw.epilog_crit_edge, %if.then146, %if.then141, %if.end112.sw.epilog_crit_edge, %if.then29, %do.body25.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %chan_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath_chanctx_offchannel_noa(ptr nocapture noundef readonly %sc, ptr nocapture noundef readonly %ctx, ptr nocapture noundef %avp, i32 noundef %tsf_time) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %noa_index = getelementptr inbounds %struct.ath_vif, ptr %avp, i32 0, i32 12
  %2 = ptrtoint ptr %noa_index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %noa_index, align 4
  %inc = add i8 %3, 1
  store i8 %inc, ptr %noa_index, align 4
  %offchannel_start = getelementptr inbounds %struct.ath_vif, ptr %avp, i32 0, i32 13
  %4 = ptrtoint ptr %offchannel_start to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %tsf_time, ptr %offchannel_start, align 8
  %offchannel_duration = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 11
  %5 = ptrtoint ptr %offchannel_duration to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offchannel_duration, align 8
  %offchannel_duration1 = getelementptr inbounds %struct.ath_vif, ptr %avp, i32 0, i32 14
  %7 = ptrtoint ptr %offchannel_duration1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %offchannel_duration1, align 4
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug_mask, align 4
  %and = and i32 %9, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %conv = zext i8 %inc to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.49, i32 noundef %6, i32 noundef %tsf_time, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %active = getelementptr inbounds %struct.ath_chanctx, ptr %ctx, i32 0, i32 15
  %10 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %active, align 2, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool5.not = icmp eq i8 %11, 0
  br i1 %tobool5.not, label %do.end.if.end10_crit_edge, label %land.lhs.true

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true:                                    ; preds = %do.end
  %noa_duration = getelementptr inbounds %struct.ath_vif, ptr %avp, i32 0, i32 16
  %12 = ptrtoint ptr %noa_duration to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %noa_duration, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7.not = icmp eq i32 %13, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end10_crit_edge, label %if.then8

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %noa_duration to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %noa_duration, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.lhs.true.if.end10_crit_edge, %do.end.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath_chanctx_set_oneshot_noa(ptr nocapture noundef readonly %sc, ptr nocapture noundef %avp, i32 noundef %tsf_time, i32 noundef %duration) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %noa_index = getelementptr inbounds %struct.ath_vif, ptr %avp, i32 0, i32 12
  %2 = ptrtoint ptr %noa_index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %noa_index, align 4
  %inc = add i8 %3, 1
  store i8 %inc, ptr %noa_index, align 4
  %noa_start = getelementptr inbounds %struct.ath_vif, ptr %avp, i32 0, i32 15
  %4 = ptrtoint ptr %noa_start to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %tsf_time, ptr %noa_start, align 8
  %periodic_noa = getelementptr inbounds %struct.ath_vif, ptr %avp, i32 0, i32 17
  %5 = ptrtoint ptr %periodic_noa to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %periodic_noa, align 8
  %oneshot_noa = getelementptr inbounds %struct.ath_vif, ptr %avp, i32 0, i32 18
  %6 = ptrtoint ptr %oneshot_noa to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %oneshot_noa, align 1
  %channel_switch_time = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 12
  %7 = ptrtoint ptr %channel_switch_time to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel_switch_time, align 4
  %add = add i32 %8, %duration
  %noa_duration = getelementptr inbounds %struct.ath_vif, ptr %avp, i32 0, i32 16
  %9 = ptrtoint ptr %noa_duration to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %noa_duration, align 4
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug_mask, align 4
  %and = and i32 %11, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %conv = zext i8 %inc to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.50, i32 noundef %add, i32 noundef %tsf_time, i32 noundef %conv, i32 noundef 0) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath_chanctx_set_periodic_noa(ptr nocapture noundef readonly %sc, ptr nocapture noundef %avp, ptr nocapture noundef readonly %cur_conf, i32 noundef %tsf_time, i32 noundef %beacon_int) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %noa_index = getelementptr inbounds %struct.ath_vif, ptr %avp, i32 0, i32 12
  %2 = ptrtoint ptr %noa_index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %noa_index, align 4
  %inc = add i8 %3, 1
  store i8 %inc, ptr %noa_index, align 4
  %noa_start = getelementptr inbounds %struct.ath_vif, ptr %avp, i32 0, i32 15
  %4 = ptrtoint ptr %noa_start to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %tsf_time, ptr %noa_start, align 8
  %extend_absence = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 5
  %5 = ptrtoint ptr %extend_absence to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %extend_absence, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mul = mul i32 %beacon_int, 3
  %div40 = lshr i32 %mul, 1
  %channel_switch_time = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 12
  %7 = ptrtoint ptr %channel_switch_time to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel_switch_time, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %beacon_interval = getelementptr inbounds %struct.ath_beacon_config, ptr %cur_conf, i32 0, i32 1
  %9 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %beacon_interval, align 4
  %shl = shl i32 %10, 10
  %div2 = sdiv i32 %shl, 2
  %channel_switch_time4 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 12
  %11 = ptrtoint ptr %channel_switch_time4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %channel_switch_time4, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ %12, %if.else ], [ %div40, %if.then ]
  %div2.sink = phi i32 [ %div2, %if.else ], [ %8, %if.then ]
  %add5 = add i32 %div2.sink, %.sink
  %13 = getelementptr inbounds %struct.ath_vif, ptr %avp, i32 0, i32 16
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add5, ptr %13, align 4
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  %15 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %op_flags, align 4
  %17 = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool8.not = icmp eq i32 %17, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %extend_absence to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %extend_absence, align 1, !range !171
  %20 = xor i8 %19, 1
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false, %if.end.do.body_crit_edge
  %.sink41 = phi i8 [ 0, %if.end.do.body_crit_edge ], [ %20, %lor.lhs.false ]
  %periodic_noa = getelementptr inbounds %struct.ath_vif, ptr %avp, i32 0, i32 17
  %21 = ptrtoint ptr %periodic_noa to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.sink41, ptr %periodic_noa, align 8
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %debug_mask, align 4
  %and = and i32 %23, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %do.body.do.end_crit_edge, label %if.then17

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %13, align 4
  %conv = zext i8 %inc to i32
  %periodic_noa21 = getelementptr inbounds %struct.ath_vif, ptr %avp, i32 0, i32 17
  %26 = ptrtoint ptr %periodic_noa21 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %periodic_noa21, align 8, !range !171
  %28 = zext i8 %27 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.51, i32 noundef %25, i32 noundef %tsf_time, i32 noundef %conv, i32 noundef %28) #8
  br label %do.end

do.end:                                           ; preds = %if.then17, %do.body.do.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath_chanctx_setup_timer(ptr noundef %sc, i32 noundef %tsf_time) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %p2p_ps_timer = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 19
  %2 = ptrtoint ptr %p2p_ps_timer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p2p_ps_timer, align 8
  tail call void @ath9k_hw_gen_timer_start(ptr noundef %1, ptr noundef %3, i32 noundef %tsf_time, i32 noundef 1000000) #8
  %call2 = tail call i32 @ath9k_hw_gettsf32(ptr noundef %1) #8
  %sub = sub i32 %tsf_time, %call2
  %div = udiv i32 %sub, 1000
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %div) #8
  %add = add i32 %call2.i, 1
  %timer = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add4 = add i32 %4, %add
  %call5 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add4) #8
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_mask, align 4
  %and = and i32 %6, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %call7 = tail call i32 @jiffies_to_msecs(i32 noundef %add) #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.52, i32 noundef %div, i32 noundef %call7) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath_chanctx_adjust_tbtt_delta(ptr noundef %sc) unnamed_addr #0 align 64 {
entry:
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #8
  %0 = call ptr @memset(ptr %ts, i32 255, i32 16)
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %1 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cur_chan, align 8
  %beacon_interval = getelementptr inbounds %struct.ath_chanctx, ptr %2, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %beacon_interval, align 4
  %shl = shl i32 %4, 10
  %chanctx.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 38
  %5 = icmp eq ptr %chanctx.i, %2
  %lnot.ext.i = zext i1 %5 to i32
  %switch_after_beacon = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 %lnot.ext.i, i32 17
  %6 = ptrtoint ptr %switch_after_beacon to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %switch_after_beacon, align 8, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @ktime_get_raw_ts64(ptr noundef nonnull %ts) #8
  %tsf_ts = getelementptr inbounds %struct.ath_chanctx, ptr %2, i32 0, i32 7
  %call2 = call i32 @ath9k_hw_get_tsf_offset(ptr noundef %tsf_ts, ptr noundef nonnull %ts) #8
  %last_beacon = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 %lnot.ext.i, i32 9
  %8 = ptrtoint ptr %last_beacon to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_beacon, align 8
  %tsf_val3 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 %lnot.ext.i, i32 8
  %10 = ptrtoint ptr %tsf_val3 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tsf_val3, align 8
  %conv4 = trunc i64 %11 to i32
  %tsf_ts6 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 %lnot.ext.i, i32 7
  %call7 = call i32 @ath9k_hw_get_tsf_offset(ptr noundef %tsf_ts6, ptr noundef nonnull %ts) #8
  %sub8.neg = sub i32 %conv4, %9
  %sub9 = add i32 %sub8.neg, %call7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub9)
  %cmp = icmp slt i32 %sub9, 0
  %mul = mul i32 %4, 3072
  call void @__sanitizer_cov_trace_cmp4(i32 %sub9, i32 %mul)
  %cmp11 = icmp ugt i32 %sub9, %mul
  %or.cond = select i1 %cmp, i1 true, i1 %cmp11
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %div40 = lshr exact i32 %shl, 1
  %rem = urem i32 %sub9, %shl
  %sub15 = sub nsw i32 %div40, %rem
  %conv16 = sext i32 %sub15 to i64
  %12 = ptrtoint ptr %tsf_val3 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tsf_val3, align 8
  %add18 = add i64 %13, %conv16
  store i64 %add18, ptr %tsf_val3, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_hw_get_tsf_offset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_hw_gettsf32(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_chanctx_beacon_sent_ev(ptr noundef %sc, i32 noundef %ev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sched = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21
  %0 = ptrtoint ptr %sched to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sched, align 8, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ath_chanctx_event(ptr noundef %sc, ptr noundef null, i32 noundef %ev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_chanctx_beacon_recv_ev(ptr noundef %sc, i32 noundef %ev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ath_chanctx_event(ptr noundef %sc, ptr noundef null, i32 noundef %ev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_offchannel_next(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  %chandef.i = alloca %struct.cfg80211_chan_def, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %scan_req = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 2
  %0 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scan_req, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %scan_vif = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 3
  %2 = ptrtoint ptr %scan_vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scan_vif, align 4
  %txpower = getelementptr inbounds %struct.ieee80211_vif, ptr %3, i32 0, i32 1, i32 42
  %4 = ptrtoint ptr %txpower to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %txpower, align 8
  %conv = trunc i32 %5 to i16
  %txpower3 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 0, i32 11
  %6 = ptrtoint ptr %txpower3 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %txpower3, align 8
  tail call fastcc void @ath_scan_next_channel(ptr noundef %sc)
  br label %if.end28

if.else:                                          ; preds = %entry
  %roc_vif = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 7
  %7 = ptrtoint ptr %roc_vif to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %roc_vif, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %if.else19, label %if.then6

if.then6:                                         ; preds = %if.else
  %txpower10 = getelementptr inbounds %struct.ieee80211_vif, ptr %8, i32 0, i32 1, i32 42
  %9 = ptrtoint ptr %txpower10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %txpower10, align 8
  %conv11 = trunc i32 %10 to i16
  %txpower14 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 0, i32 11
  %11 = ptrtoint ptr %txpower14 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv11, ptr %txpower14, align 8
  %roc_duration = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 8
  %12 = ptrtoint ptr %roc_duration to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %roc_duration, align 8
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %13) #8
  %duration = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 9
  %14 = ptrtoint ptr %duration to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call2.i, ptr %duration, align 4
  %state = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 5
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %state, align 4
  %roc_chan = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 6
  %16 = ptrtoint ptr %roc_chan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %roc_chan, align 8
  %sc_ah.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %18 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sc_ah.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %chandef.i) #8
  %20 = call ptr @memset(ptr %chandef.i, i32 255, i32 28)
  call void @cfg80211_chandef_create(ptr noundef nonnull %chandef.i, ptr noundef %17, i32 noundef 0) #8
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %19, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %22, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then6.ath_chanctx_offchan_switch.exit_crit_edge, label %if.then.i50

if.then6.ath_chanctx_offchan_switch.exit_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_chanctx_offchan_switch.exit

if.then.i50:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %19, i32 0, i32 3
  %center_freq1.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef.i, i32 0, i32 2
  %23 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %center_freq1.i, align 4
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i.i, ptr noundef nonnull @.str.55, i32 noundef %24) #8
  br label %ath_chanctx_offchan_switch.exit

ath_chanctx_offchan_switch.exit:                  ; preds = %if.then.i50, %if.then6.ath_chanctx_offchan_switch.exit_crit_edge
  %offchannel.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22
  call fastcc void @ath_chanctx_switch(ptr noundef %sc, ptr noundef %offchannel.i, ptr noundef nonnull %chandef.i) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %chandef.i) #8
  br label %if.end28

if.else19:                                        ; preds = %if.else
  %chan_lock = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 40
  tail call void @_raw_spin_lock_bh(ptr noundef %chan_lock) #8
  %offchannel_pending = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 2
  %25 = ptrtoint ptr %offchannel_pending to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %offchannel_pending, align 2
  %wait_switch = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 3
  %26 = ptrtoint ptr %wait_switch to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %wait_switch, align 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %chan_lock) #8
  %chanctx.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 38
  %arrayidx2.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 1
  %cmp.not22.i = icmp ugt ptr %chanctx.i, %arrayidx2.i
  br i1 %cmp.not22.i, label %if.else19.ath_chanctx_get_oper_chan.exit_crit_edge, label %if.else19.for.body.i_crit_edge

if.else19.for.body.i_crit_edge:                   ; preds = %if.else19
  br label %for.body.i

if.else19.ath_chanctx_get_oper_chan.exit_crit_edge: ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_chanctx_get_oper_chan.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else19.for.body.i_crit_edge
  %ctx.023.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %chanctx.i, %if.else19.for.body.i_crit_edge ]
  %assigned.i = getelementptr inbounds %struct.ath_chanctx, ptr %ctx.023.i, i32 0, i32 16
  %27 = ptrtoint ptr %assigned.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %assigned.i, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i51 = icmp eq i8 %28, 0
  br i1 %tobool.not.i51, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %vifs.i = getelementptr inbounds %struct.ath_chanctx, ptr %ctx.023.i, i32 0, i32 1
  %29 = ptrtoint ptr %vifs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %vifs.i, align 4
  %cmp.i.not.i = icmp eq ptr %30, %vifs.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end.i52

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i52:                                       ; preds = %lor.lhs.false.i
  %switch_after_beacon.i = getelementptr inbounds %struct.ath_chanctx, ptr %ctx.023.i, i32 0, i32 17
  %31 = ptrtoint ptr %switch_after_beacon.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %switch_after_beacon.i, align 8, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool9.not.i = icmp eq i8 %32, 0
  br i1 %tobool9.not.i, label %if.end.i52.for.inc.i_crit_edge, label %if.end.i52.ath_chanctx_get_oper_chan.exit_crit_edge

if.end.i52.ath_chanctx_get_oper_chan.exit_crit_edge: ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_chanctx_get_oper_chan.exit

if.end.i52.for.inc.i_crit_edge:                   ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i52.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.ath_chanctx, ptr %ctx.023.i, i32 1
  %cmp.not.i = icmp ugt ptr %incdec.ptr.i, %arrayidx2.i
  br i1 %cmp.not.i, label %for.inc.i.ath_chanctx_get_oper_chan.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.ath_chanctx_get_oper_chan.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_chanctx_get_oper_chan.exit

ath_chanctx_get_oper_chan.exit:                   ; preds = %for.inc.i.ath_chanctx_get_oper_chan.exit_crit_edge, %if.end.i52.ath_chanctx_get_oper_chan.exit_crit_edge, %if.else19.ath_chanctx_get_oper_chan.exit_crit_edge
  %retval.0.i53 = phi ptr [ %chanctx.i, %if.else19.ath_chanctx_get_oper_chan.exit_crit_edge ], [ %ctx.023.i, %if.end.i52.ath_chanctx_get_oper_chan.exit_crit_edge ], [ %chanctx.i, %for.inc.i.ath_chanctx_get_oper_chan.exit_crit_edge ]
  tail call fastcc void @ath_chanctx_switch(ptr noundef %sc, ptr noundef %retval.0.i53, ptr noundef null)
  %state24 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 5
  %33 = ptrtoint ptr %state24 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %state24, align 4
  %ps_idle = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 31
  %34 = ptrtoint ptr %ps_idle to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ps_idle, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool25.not = icmp eq i8 %35, 0
  br i1 %tobool25.not, label %ath_chanctx_get_oper_chan.exit.if.end28_crit_edge, label %if.then26

ath_chanctx_get_oper_chan.exit.if.end28_crit_edge: ; preds = %ath_chanctx_get_oper_chan.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then26:                                        ; preds = %ath_chanctx_get_oper_chan.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ath_cancel_work(ptr noundef %sc) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %ath_chanctx_get_oper_chan.exit.if.end28_crit_edge, %ath_chanctx_offchan_switch.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath_scan_next_channel(ptr noundef %sc) unnamed_addr #0 align 64 {
entry:
  %chandef.i = alloca %struct.cfg80211_chan_def, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %scan_req = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 2
  %2 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scan_req, align 8
  %scan_idx = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 4
  %4 = ptrtoint ptr %scan_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scan_idx, align 8
  %n_channels = getelementptr inbounds %struct.cfg80211_scan_request, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_channels, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp ult i32 %5, %7
  %debug_mask10 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %debug_mask10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug_mask10, align 4
  %and11 = and i32 %9, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %cmp.not, label %do.body9, label %do.body

do.body:                                          ; preds = %entry
  br i1 %tobool12.not, label %do.body.do.end_crit_edge, label %if.then2

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.53, i32 noundef %5, i32 noundef %7) #8
  br label %do.end

do.end:                                           ; preds = %if.then2, %do.body.do.end_crit_edge
  %state = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 5
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %state, align 4
  %chanctx.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 38
  %arrayidx2.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 38, i32 1
  %cmp.not22.i = icmp ugt ptr %chanctx.i, %arrayidx2.i
  br i1 %cmp.not22.i, label %do.end.ath_chanctx_get_oper_chan.exit_crit_edge, label %do.end.for.body.i_crit_edge

do.end.for.body.i_crit_edge:                      ; preds = %do.end
  br label %for.body.i

do.end.ath_chanctx_get_oper_chan.exit_crit_edge:  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_chanctx_get_oper_chan.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.for.body.i_crit_edge
  %ctx.023.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %chanctx.i, %do.end.for.body.i_crit_edge ]
  %assigned.i = getelementptr inbounds %struct.ath_chanctx, ptr %ctx.023.i, i32 0, i32 16
  %11 = ptrtoint ptr %assigned.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %assigned.i, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %vifs.i = getelementptr inbounds %struct.ath_chanctx, ptr %ctx.023.i, i32 0, i32 1
  %13 = ptrtoint ptr %vifs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %vifs.i, align 4
  %cmp.i.not.i = icmp eq ptr %14, %vifs.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %switch_after_beacon.i = getelementptr inbounds %struct.ath_chanctx, ptr %ctx.023.i, i32 0, i32 17
  %15 = ptrtoint ptr %switch_after_beacon.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %switch_after_beacon.i, align 8, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool9.not.i = icmp eq i8 %16, 0
  br i1 %tobool9.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end.i.ath_chanctx_get_oper_chan.exit_crit_edge

if.end.i.ath_chanctx_get_oper_chan.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_chanctx_get_oper_chan.exit

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.ath_chanctx, ptr %ctx.023.i, i32 1
  %cmp.not.i = icmp ugt ptr %incdec.ptr.i, %arrayidx2.i
  br i1 %cmp.not.i, label %for.inc.i.ath_chanctx_get_oper_chan.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.ath_chanctx_get_oper_chan.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_chanctx_get_oper_chan.exit

ath_chanctx_get_oper_chan.exit:                   ; preds = %for.inc.i.ath_chanctx_get_oper_chan.exit_crit_edge, %if.end.i.ath_chanctx_get_oper_chan.exit_crit_edge, %do.end.ath_chanctx_get_oper_chan.exit_crit_edge
  %retval.0.i = phi ptr [ %chanctx.i, %do.end.ath_chanctx_get_oper_chan.exit_crit_edge ], [ %ctx.023.i, %if.end.i.ath_chanctx_get_oper_chan.exit_crit_edge ], [ %chanctx.i, %for.inc.i.ath_chanctx_get_oper_chan.exit_crit_edge ]
  tail call fastcc void @ath_chanctx_switch(ptr noundef %sc, ptr noundef %retval.0.i, ptr noundef null)
  br label %cleanup

do.body9:                                         ; preds = %entry
  br i1 %tobool12.not, label %do.body9.do.end18_crit_edge, label %if.then13

do.body9.do.end18_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

if.then13:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.54, i32 noundef %5) #8
  br label %do.end18

do.end18:                                         ; preds = %if.then13, %do.body9.do.end18_crit_edge
  %17 = ptrtoint ptr %scan_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %scan_idx, align 8
  %inc = add i32 %18, 1
  store i32 %inc, ptr %scan_idx, align 8
  %arrayidx = getelementptr %struct.cfg80211_scan_request, ptr %3, i32 0, i32 22, i32 %18
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %21 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %scan_req, align 8
  %n_ssids.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %n_ssids.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_ssids.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i46 = icmp eq i32 %24, 0
  br i1 %tobool.not.i46, label %do.end18.ath_scan_channel_duration.exit_crit_edge, label %lor.lhs.false.i47

do.end18.ath_scan_channel_duration.exit_crit_edge: ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_scan_channel_duration.exit

lor.lhs.false.i47:                                ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i = getelementptr inbounds %struct.ieee80211_channel, ptr %20, i32 0, i32 4
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool1.not.i, i32 6, i32 11
  br label %ath_scan_channel_duration.exit

ath_scan_channel_duration.exit:                   ; preds = %lor.lhs.false.i47, %do.end18.ath_scan_channel_duration.exit_crit_edge
  %retval.0.i48 = phi i32 [ 11, %do.end18.ath_scan_channel_duration.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i47 ]
  %duration = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 9
  %27 = ptrtoint ptr %duration to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %retval.0.i48, ptr %duration, align 4
  %state24 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 5
  %28 = ptrtoint ptr %state24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %state24, align 4
  %29 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sc_ah, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %chandef.i) #8
  %31 = call ptr @memset(ptr %chandef.i, i32 255, i32 28)
  call void @cfg80211_chandef_create(ptr noundef nonnull %chandef.i, ptr noundef %20, i32 noundef 0) #8
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %30, i32 0, i32 3, i32 3
  %32 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %debug_mask.i, align 4
  %and.i49 = and i32 %33, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i49)
  %tobool.not.i50 = icmp eq i32 %and.i49, 0
  br i1 %tobool.not.i50, label %ath_scan_channel_duration.exit.ath_chanctx_offchan_switch.exit_crit_edge, label %if.then.i

ath_scan_channel_duration.exit.ath_chanctx_offchan_switch.exit_crit_edge: ; preds = %ath_scan_channel_duration.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_chanctx_offchan_switch.exit

if.then.i:                                        ; preds = %ath_scan_channel_duration.exit
  call void @__sanitizer_cov_trace_pc() #10
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %30, i32 0, i32 3
  %center_freq1.i = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef.i, i32 0, i32 2
  %34 = ptrtoint ptr %center_freq1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %center_freq1.i, align 4
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i.i, ptr noundef nonnull @.str.55, i32 noundef %35) #8
  br label %ath_chanctx_offchan_switch.exit

ath_chanctx_offchan_switch.exit:                  ; preds = %if.then.i, %ath_scan_channel_duration.exit.ath_chanctx_offchan_switch.exit_crit_edge
  %offchannel.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22
  call fastcc void @ath_chanctx_switch(ptr noundef %sc, ptr noundef %offchannel.i, ptr noundef nonnull %chandef.i) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %chandef.i) #8
  br label %cleanup

cleanup:                                          ; preds = %ath_chanctx_offchan_switch.exit, %ath_chanctx_get_oper_chan.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath_chanctx_switch(ptr noundef %sc, ptr noundef %ctx, ptr noundef readonly %chandef) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %chan_lock = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 40
  tail call void @_raw_spin_lock_bh(ptr noundef %chan_lock) #8
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  %2 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %op_flags, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %land.lhs.true

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

land.lhs.true:                                    ; preds = %entry
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %5 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cur_chan, align 8
  %cmp.not = icmp ne ptr %6, %ctx
  %offchannel = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22
  %cmp3 = icmp eq ptr %offchannel, %ctx
  %or.cond = select i1 %cmp.not, i1 %cmp3, i1 false
  br i1 %or.cond, label %if.then, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then:                                          ; preds = %land.lhs.true
  %tobool4.not = icmp eq ptr %chandef, null
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %7 = call ptr @memcpy(ptr %ctx, ptr %chandef, i32 28)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %offchannel_pending = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 2
  %8 = ptrtoint ptr %offchannel_pending to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %offchannel_pending, align 2
  %wait_switch = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 3
  %9 = ptrtoint ptr %wait_switch to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %wait_switch, align 1
  %duration = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 9
  %10 = ptrtoint ptr %duration to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %duration, align 4
  %call9 = tail call i32 @jiffies_to_usecs(i32 noundef %11) #8
  %channel_switch_time = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 12
  %12 = ptrtoint ptr %channel_switch_time to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel_switch_time, align 4
  %add = add i32 %13, %call9
  %offchannel_duration = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 11
  %14 = ptrtoint ptr %offchannel_duration to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %offchannel_duration, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %chan_lock) #8
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %debug_mask, align 4
  %and = and i32 %16, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end.cleanup_crit_edge, label %if.then14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.56) #8
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %entry.if.end16_crit_edge
  %next_chan = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 23
  %17 = ptrtoint ptr %next_chan to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %ctx, ptr %next_chan, align 8
  %tobool17.not = icmp eq ptr %chandef, null
  br i1 %tobool17.not, label %if.end16.if.end28_crit_edge, label %if.then18

if.end16.if.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then18:                                        ; preds = %if.end16
  %18 = call ptr @memcpy(ptr %ctx, ptr %chandef, i32 28)
  %debug_mask21 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %debug_mask21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debug_mask21, align 4
  %and22 = and i32 %20, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.then18.if.end28_crit_edge, label %if.then24

if.then18.if.end28_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then24:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %center_freq1 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 2
  %21 = ptrtoint ptr %center_freq1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %center_freq1, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.57, i32 noundef %22) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.then18.if.end28_crit_edge, %if.end16.if.end28_crit_edge
  %23 = ptrtoint ptr %next_chan to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %next_chan, align 8
  %offchannel30 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22
  %cmp32 = icmp eq ptr %24, %offchannel30
  br i1 %cmp32, label %if.then33, label %if.end28.if.end56_crit_edge

if.end28.if.end56_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then33:                                        ; preds = %if.end28
  %duration35 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 9
  %25 = ptrtoint ptr %duration35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %duration35, align 4
  %call36 = tail call i32 @jiffies_to_usecs(i32 noundef %26) #8
  %channel_switch_time38 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 12
  %27 = ptrtoint ptr %channel_switch_time38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %channel_switch_time38, align 4
  %add39 = add i32 %28, %call36
  %offchannel_duration41 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 11
  %29 = ptrtoint ptr %offchannel_duration41 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add39, ptr %offchannel_duration41, align 8
  br i1 %tobool17.not, label %if.then33.if.end56_crit_edge, label %do.body44

if.then33.if.end56_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

do.body44:                                        ; preds = %if.then33
  %debug_mask45 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %debug_mask45 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug_mask45, align 4
  %and46 = and i32 %31, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %do.body44.if.end56_crit_edge, label %if.then48

do.body44.if.end56_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then48:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  %center_freq149 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %chandef, i32 0, i32 2
  %32 = ptrtoint ptr %center_freq149 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %center_freq149, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.58, i32 noundef %33, i32 noundef %add39) #8
  br label %if.end56

if.end56:                                         ; preds = %if.then48, %do.body44.if.end56_crit_edge, %if.then33.if.end56_crit_edge, %if.end28.if.end56_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %chan_lock) #8
  %34 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sc, align 8
  %chanctx_work = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 18
  tail call void @ieee80211_queue_work(ptr noundef %35, ptr noundef %chanctx_work) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.then14, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_cancel_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_roc_complete(ptr noundef %sc, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %roc_vif = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 7
  %2 = ptrtoint ptr %roc_vif to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %roc_vif, align 4
  %roc_chan = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 6
  %3 = ptrtoint ptr %roc_chan to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %roc_chan, align 8
  %4 = zext i32 %reason to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %reason, label %entry.sw.epilog_crit_edge [
    i32 1, label %do.body
    i32 0, label %do.body3
    i32 2, label %do.body13
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_mask, align 4
  %and = and i32 %6, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.then

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.17) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body.do.end_crit_edge
  %7 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sc, align 8
  tail call void @ieee80211_remain_on_channel_expired(ptr noundef %8) #8
  br label %sw.epilog

do.body3:                                         ; preds = %entry
  %debug_mask4 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %debug_mask4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug_mask4, align 4
  %and5 = and i32 %10, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %do.body3.do.end10_crit_edge, label %if.then7

do.body3.do.end10_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.18) #8
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body3.do.end10_crit_edge
  %11 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sc, align 8
  tail call void @ieee80211_remain_on_channel_expired(ptr noundef %12) #8
  br label %sw.epilog

do.body13:                                        ; preds = %entry
  %debug_mask14 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %debug_mask14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug_mask14, align 4
  %and15 = and i32 %14, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.body13.sw.epilog_crit_edge, label %if.then17

do.body13.sw.epilog_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then17:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.19) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then17, %do.body13.sw.epilog_crit_edge, %do.end10, %do.end, %entry.sw.epilog_crit_edge
  tail call void @ath_offchannel_next(ptr noundef %sc)
  tail call void @ath9k_ps_restore(ptr noundef %sc) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_remain_on_channel_expired(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_ps_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_scan_complete(ptr noundef %sc, i1 noundef zeroext %abort) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %abort to i8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #8
  %2 = getelementptr inbounds i8, ptr %info, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %2, align 8
  %aborted = getelementptr inbounds %struct.cfg80211_scan_info, ptr %info, i32 0, i32 2
  %4 = call ptr @memset(ptr %info, i32 0, i32 14)
  %5 = ptrtoint ptr %aborted to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %aborted, align 2
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_mask, align 4
  %and = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %entry.if.end13_crit_edge, label %if.end13.sink.split

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end13.sink.split:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %.str.20..str.21 = select i1 %abort, ptr @.str.20, ptr @.str.21
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull %.str.20..str.21) #8
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %entry.if.end13_crit_edge
  %scan_req = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 2
  %8 = ptrtoint ptr %scan_req to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %scan_req, align 8
  %scan_vif = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 3
  %9 = ptrtoint ptr %scan_vif to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %scan_vif, align 4
  %state = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 5
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %state, align 4
  %11 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sc, align 8
  call void @ieee80211_scan_completed(ptr noundef %12, ptr noundef nonnull %info) #8
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  call void @_clear_bit(i32 noundef 5, ptr noundef %op_flags) #8
  %chan_lock = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 40
  call void @_raw_spin_lock_bh(ptr noundef %chan_lock) #8
  %13 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %op_flags, align 4
  %15 = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool18.not = icmp eq i32 %15, 0
  br i1 %tobool18.not, label %if.end13.if.end20_crit_edge, label %if.then19

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %force_noa_update = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 4
  %16 = ptrtoint ptr %force_noa_update to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %force_noa_update, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end13.if.end20_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %chan_lock) #8
  call void @ath_offchannel_next(ptr noundef %sc)
  call void @ath9k_ps_restore(ptr noundef %sc) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_scan_completed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_chanctx_set_next(ptr noundef %sc, i1 noundef zeroext %force) local_unnamed_addr #0 align 64 {
entry:
  %txctl.i.i.i = alloca %struct.ath_tx_control, align 4
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #8
  %2 = call ptr @memset(ptr %ts, i32 255, i32 16)
  %chan_lock = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 40
  tail call void @_raw_spin_lock_bh(ptr noundef %chan_lock) #8
  %next_chan = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 23
  %3 = ptrtoint ptr %next_chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %next_chan, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %chan_lock) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %force, label %if.end.do.body_crit_edge, label %land.lhs.true

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true:                                    ; preds = %if.end
  %5 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sc_ah, align 4
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %6, i32 0, i32 3
  %cur_chan.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %7 = ptrtoint ptr %cur_chan.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cur_chan.i, align 8
  %offchannel.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22
  %cmp.i = icmp eq ptr %8, %offchannel.i
  br i1 %cmp.i, label %land.lhs.true.do.body_crit_edge, label %if.end.i

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end.i:                                         ; preds = %land.lhs.true
  %state.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 7
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state.i, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %10, label %if.end.i.if.then4_crit_edge [
    i32 3, label %if.end.i.do.body_crit_edge
    i32 0, label %sw.bb1.i
  ]

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end.i.if.then4_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

sw.bb1.i:                                         ; preds = %if.end.i
  %switch_after_beacon.i = getelementptr inbounds %struct.ath_chanctx, ptr %8, i32 0, i32 17
  %12 = ptrtoint ptr %switch_after_beacon.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %switch_after_beacon.i, align 8, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %sw.bb1.i.do.body_crit_edge, label %do.body.i

sw.bb1.i.do.body_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body.i:                                        ; preds = %sw.bb1.i
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %6, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %15, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %do.body.i.do.end.i_crit_edge, label %if.then6.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i.i, ptr noundef nonnull @.str.59) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %do.body.i.do.end.i_crit_edge
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %state.i, align 8
  br label %if.then4

if.then4:                                         ; preds = %do.end.i, %if.end.i.if.then4_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %chan_lock) #8
  br label %cleanup

do.body:                                          ; preds = %sw.bb1.i.do.body_crit_edge, %if.end.i.do.body_crit_edge, %land.lhs.true.do.body_crit_edge, %if.end.do.body_crit_edge
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %debug_mask, align 4
  %and = and i32 %18, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.body.do.end_crit_edge, label %if.then8

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %19 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cur_chan, align 8
  %center_freq1 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %center_freq1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %center_freq1, align 8
  %23 = ptrtoint ptr %next_chan to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %next_chan, align 8
  %center_freq111 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %center_freq111 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %center_freq111, align 8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.ath_chanctx_set_next, i32 noundef %22, i32 noundef %26) #8
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body.do.end_crit_edge
  %cur_chan13 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %27 = ptrtoint ptr %cur_chan13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cur_chan13, align 8
  %29 = ptrtoint ptr %next_chan to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %next_chan, align 8
  %cmp.not = icmp eq ptr %28, %30
  br i1 %cmp.not, label %do.end.if.end49_crit_edge, label %do.body16

do.end.if.end49_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

do.body16:                                        ; preds = %do.end
  %31 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %debug_mask, align 4
  %and18 = and i32 %32, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.body16.do.end26_crit_edge, label %if.then20

do.body16.do.end26_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end26

if.then20:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  %center_freq123 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %28, i32 0, i32 2
  %33 = ptrtoint ptr %center_freq123 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %center_freq123, align 8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.23, i32 noundef %34) #8
  br label %do.end26

do.end26:                                         ; preds = %if.then20, %do.body16.do.end26_crit_edge
  %35 = ptrtoint ptr %cur_chan13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cur_chan13, align 8
  %stopped = getelementptr inbounds %struct.ath_chanctx, ptr %36, i32 0, i32 14
  %37 = ptrtoint ptr %stopped to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %stopped, align 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %chan_lock) #8
  %38 = ptrtoint ptr %next_chan to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %next_chan, align 8
  %offchannel = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22
  %cmp30 = icmp eq ptr %39, %offchannel
  br i1 %cmp30, label %if.then31, label %do.end26.if.end32_crit_edge

do.end26.if.end32_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then31:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #10
  call void @ktime_get_raw_ts64(ptr noundef nonnull %ts) #8
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %do.end26.if.end32_crit_edge
  %40 = ptrtoint ptr %cur_chan13 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cur_chan13, align 8
  call void @ath9k_chanctx_stop_queues(ptr noundef %sc, ptr noundef %41)
  %42 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sc, align 8
  call void @__ath9k_flush(ptr noundef %43, i32 noundef -1, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call34 = call fastcc zeroext i1 @ath_chanctx_send_ps_frame(ptr noundef %sc, i1 noundef zeroext true)
  br i1 %call34, label %if.then35, label %if.end32.if.end37_crit_edge

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sc, align 8
  call void @__ath9k_flush(ptr noundef %45, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end32.if.end37_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef %chan_lock) #8
  %46 = ptrtoint ptr %cur_chan13 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cur_chan13, align 8
  %cmp42.not = icmp eq ptr %47, %offchannel
  br i1 %cmp42.not, label %if.end37.if.end49_crit_edge, label %if.then43

if.end37.if.end49_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then43:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %tsf_ts = getelementptr inbounds %struct.ath_chanctx, ptr %47, i32 0, i32 7
  call void @ktime_get_raw_ts64(ptr noundef %tsf_ts) #8
  %48 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sc_ah, align 4
  %call46 = call i64 @ath9k_hw_gettsf64(ptr noundef %49) #8
  %50 = ptrtoint ptr %cur_chan13 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cur_chan13, align 8
  %tsf_val = getelementptr inbounds %struct.ath_chanctx, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %tsf_val to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %call46, ptr %tsf_val, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.then43, %if.end37.if.end49_crit_edge, %do.end.if.end49_crit_edge
  %measure_time.1.off0 = phi i1 [ %cmp30, %if.then43 ], [ %cmp30, %if.end37.if.end49_crit_edge ], [ false, %do.end.if.end49_crit_edge ]
  %53 = ptrtoint ptr %cur_chan13 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cur_chan13, align 8
  %55 = ptrtoint ptr %next_chan to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %next_chan, align 8
  store ptr %56, ptr %cur_chan13, align 8
  %stopped54 = getelementptr inbounds %struct.ath_chanctx, ptr %56, i32 0, i32 14
  %57 = ptrtoint ptr %stopped54 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %stopped54, align 1
  store ptr null, ptr %next_chan, align 8
  %offchannel_pending = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 2
  %58 = ptrtoint ptr %offchannel_pending to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %offchannel_pending, align 2, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool56.not = icmp eq i8 %59, 0
  br i1 %tobool56.not, label %if.then57, label %if.end49.if.end59_crit_edge

if.end49.if.end59_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then57:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %offchannel_duration = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 11
  %60 = ptrtoint ptr %offchannel_duration to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %offchannel_duration, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end49.if.end59_crit_edge
  %state = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 7
  %61 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %62)
  %cmp61.not = icmp eq i32 %62, 4
  br i1 %cmp61.not, label %if.end59.if.end65_crit_edge, label %if.then62

if.end59.if.end65_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %state, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end59.if.end65_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %chan_lock) #8
  %64 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sc_ah, align 4
  %chip_fullsleep = getelementptr inbounds %struct.ath_hw, ptr %65, i32 0, i32 44
  %66 = ptrtoint ptr %chip_fullsleep to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %chip_fullsleep, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool68.not = icmp eq i8 %67, 0
  br i1 %tobool68.not, label %lor.lhs.false, label %if.end65.do.body74_crit_edge

if.end65.do.body74_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body74

lor.lhs.false:                                    ; preds = %if.end65
  %cur_chandef = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 37
  %68 = ptrtoint ptr %cur_chan13 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cur_chan13, align 8
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(28) %cur_chandef, ptr noundef dereferenceable(28) %69, i32 28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool72.not = icmp eq i32 %bcmp, 0
  br i1 %tobool72.not, label %if.end91, label %lor.lhs.false.do.body74_crit_edge

lor.lhs.false.do.body74_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body74

do.body74:                                        ; preds = %lor.lhs.false.do.body74_crit_edge, %if.end65.do.body74_crit_edge
  %70 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %debug_mask, align 4
  %and76 = and i32 %71, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %do.body74.do.end84_crit_edge, label %if.then78

do.body74.do.end84_crit_edge:                     ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end84

if.then78:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %cur_chan13 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cur_chan13, align 8
  %center_freq181 = getelementptr inbounds %struct.cfg80211_chan_def, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %center_freq181 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %center_freq181, align 8
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.ath_chanctx_set_next, i32 noundef %75) #8
  br label %do.end84

do.end84:                                         ; preds = %if.then78, %do.body74.do.end84_crit_edge
  call fastcc void @ath_set_channel(ptr noundef %sc)
  br i1 %measure_time.1.off0, label %if.then87, label %do.end84.out_crit_edge

do.end84.out_crit_edge:                           ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then87:                                        ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #10
  %call88 = call i32 @ath9k_hw_get_tsf_offset(ptr noundef nonnull %ts, ptr noundef null) #8
  %channel_switch_time = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 12
  %76 = ptrtoint ptr %channel_switch_time to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call88, ptr %channel_switch_time, align 4
  br label %out

if.end91:                                         ; preds = %lor.lhs.false
  br i1 %cmp.not, label %if.end91.if.end98_crit_edge, label %if.then93

if.end91.if.end98_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then93:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  call void @ath9k_chanctx_wake_queues(ptr noundef %sc, ptr noundef %54)
  br label %if.then96

out:                                              ; preds = %if.then87, %do.end84.out_crit_edge
  br i1 %cmp.not, label %out.if.end98_crit_edge, label %out.if.then96_crit_edge

out.if.then96_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then96

out.if.end98_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then96:                                        ; preds = %out.if.then96_crit_edge, %if.then93
  %call97 = call fastcc zeroext i1 @ath_chanctx_send_ps_frame(ptr noundef %sc, i1 noundef zeroext false)
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %out.if.end98_crit_edge, %if.end91.if.end98_crit_edge
  %77 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sc_ah, align 4
  %common.i.i157 = getelementptr inbounds %struct.ath_hw, ptr %78, i32 0, i32 3
  %debug_mask.i158 = getelementptr inbounds %struct.ath_hw, ptr %78, i32 0, i32 3, i32 3
  %79 = ptrtoint ptr %debug_mask.i158 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %debug_mask.i158, align 4
  %and.i159 = and i32 %80, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i159)
  %tobool.not.i160 = icmp eq i32 %and.i159, 0
  br i1 %tobool.not.i160, label %if.end98.do.end.i162_crit_edge, label %if.then.i

if.end98.do.end.i162_crit_edge:                   ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i162

if.then.i:                                        ; preds = %if.end98
  %state.i161 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 5
  %81 = ptrtoint ptr %state.i161 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %state.i161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %82)
  %83 = icmp ult i32 %82, 7
  br i1 %83, label %switch.lookup, label %if.then.i.offchannel_state_string.exit.i_crit_edge

if.then.i.offchannel_state_string.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %offchannel_state_string.exit.i

switch.lookup:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.ath_chanctx_set_next, i32 0, i32 %82
  %84 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %84)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %offchannel_state_string.exit.i

offchannel_state_string.exit.i:                   ; preds = %switch.lookup, %if.then.i.offchannel_state_string.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.43, %if.then.i.offchannel_state_string.exit.i_crit_edge ]
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i.i157, ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.ath_offchannel_channel_change, ptr noundef nonnull %retval.0.i.i) #8
  br label %do.end.i162

do.end.i162:                                      ; preds = %offchannel_state_string.exit.i, %if.end98.do.end.i162_crit_edge
  %offchannel2.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22
  %state3.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 5
  %85 = ptrtoint ptr %state3.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %state3.i, align 4
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %86, label %do.end.i162.ath_offchannel_channel_change.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb14.i
    i32 4, label %sw.bb20.i
  ]

do.end.i162.ath_offchannel_channel_change.exit_crit_edge: ; preds = %do.end.i162
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_offchannel_channel_change.exit

sw.bb.i:                                          ; preds = %do.end.i162
  %scan_req.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 2
  %88 = ptrtoint ptr %scan_req.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %scan_req.i, align 8
  %tobool5.not.i163 = icmp eq ptr %89, null
  br i1 %tobool5.not.i163, label %sw.bb.i.ath_offchannel_channel_change.exit_crit_edge, label %if.end7.i

sw.bb.i.ath_offchannel_channel_change.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_offchannel_channel_change.exit

if.end7.i:                                        ; preds = %sw.bb.i
  %90 = ptrtoint ptr %cur_chan13 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cur_chan13, align 8
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 8
  %94 = ptrtoint ptr %offchannel2.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %offchannel2.i, align 8
  %cmp.not.i = icmp eq ptr %93, %95
  br i1 %cmp.not.i, label %if.end13.i, label %if.end7.i.ath_offchannel_channel_change.exit_crit_edge

if.end7.i.ath_offchannel_channel_change.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_offchannel_channel_change.exit

if.end13.i:                                       ; preds = %if.end7.i
  %96 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sc_ah, align 4
  %common.i.i.i = getelementptr inbounds %struct.ath_hw, ptr %97, i32 0, i32 3
  %flags.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %93, i32 0, i32 4
  %98 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %99, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end13.i.do.body.i.i_crit_edge

if.end13.i.do.body.i.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

land.lhs.true.i.i:                                ; preds = %if.end13.i
  %n_ssids.i.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %89, i32 0, i32 1
  %100 = ptrtoint ptr %n_ssids.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %n_ssids.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp22.i.i = icmp sgt i32 %101, 0
  br i1 %cmp22.i.i, label %for.body.lr.ph.i.i, label %land.lhs.true.i.i.do.body.i.i_crit_edge

land.lhs.true.i.i.do.body.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

for.body.lr.ph.i.i:                               ; preds = %land.lhs.true.i.i
  %scan_vif.i.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 3
  %txq_map.i.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %ath_scan_send_probe.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.023.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %ath_scan_send_probe.exit.i.i.for.body.i.i_crit_edge ]
  %102 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %89, align 8
  %arrayidx.i.i = getelementptr %struct.cfg80211_ssid, ptr %103, i32 %i.023.i.i
  %104 = ptrtoint ptr %scan_req.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %scan_req.i, align 8
  %106 = ptrtoint ptr %scan_vif.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %scan_vif.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %txctl.i.i.i) #8
  %108 = call ptr @memset(ptr %txctl.i.i.i, i32 0, i32 16)
  %109 = ptrtoint ptr %offchannel2.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %offchannel2.i, align 8
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  %113 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %sc, align 8
  %addr.i.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %107, i32 0, i32 2
  %ssid_len.i.i.i = getelementptr %struct.cfg80211_ssid, ptr %103, i32 %i.023.i.i, i32 1
  %115 = ptrtoint ptr %ssid_len.i.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %ssid_len.i.i.i, align 1
  %conv.i.i.i = zext i8 %116 to i32
  %ie_len.i.i.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %105, i32 0, i32 5
  %117 = ptrtoint ptr %ie_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %ie_len.i.i.i, align 4
  %call.i.i.i = call ptr @ieee80211_probereq_get(ptr noundef %114, ptr noundef %addr.i.i.i, ptr noundef %arrayidx.i.i, i32 noundef %conv.i.i.i, i32 noundef %118) #8
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.ath_scan_send_probe.exit.i.i_crit_edge, label %if.end.i.i.i

for.body.i.i.ath_scan_send_probe.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_scan_send_probe.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i
  %no_cck.i.i.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %105, i32 0, i32 18
  %119 = ptrtoint ptr %no_cck.i.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %no_cck.i.i.i, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool8.not.i.i.i = icmp eq i8 %120, 0
  br i1 %tobool8.not.i.i.i, label %if.end.i.i.i.if.end10.i.i.i_crit_edge, label %if.then9.i.i.i

if.end.i.i.i.if.end10.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i.i

if.then9.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %121 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %cb.i.i.i.i, align 8
  %or.i.i.i = or i32 %122, 134217728
  store i32 %or.i.i.i, ptr %cb.i.i.i.i, align 8
  br label %if.end10.i.i.i

if.end10.i.i.i:                                   ; preds = %if.then9.i.i.i, %if.end.i.i.i.if.end10.i.i.i_crit_edge
  %123 = ptrtoint ptr %ie_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %ie_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool12.not.i.i.i = icmp eq i32 %124, 0
  br i1 %tobool12.not.i.i.i, label %if.end10.i.i.i.if.end16.i.i.i_crit_edge, label %if.then13.i.i.i

if.end10.i.i.i.if.end16.i.i.i_crit_edge:          ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i.i.i

if.then13.i.i.i:                                  ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %ie.i.i.i = getelementptr inbounds %struct.cfg80211_scan_request, ptr %105, i32 0, i32 4
  %125 = ptrtoint ptr %ie.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ie.i.i.i, align 8
  %call.i.i.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %124) #8
  %127 = call ptr @memcpy(ptr %call.i.i.i.i, ptr %126, i32 %124)
  br label %if.end16.i.i.i

if.end16.i.i.i:                                   ; preds = %if.then13.i.i.i, %if.end10.i.i.i.if.end16.i.i.i_crit_edge
  %queue_mapping1.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 10
  %128 = ptrtoint ptr %queue_mapping1.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 0, ptr %queue_mapping1.i.i.i.i, align 8
  %129 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %sc, align 8
  %call18.i.i.i = call zeroext i1 @ieee80211_tx_prepare_skb(ptr noundef %130, ptr noundef %107, ptr noundef nonnull %call.i.i.i, i32 noundef %112, ptr noundef null) #8
  br i1 %call18.i.i.i, label %if.end20.i.i.i, label %if.end16.i.i.i.error.i.i.i_crit_edge

if.end16.i.i.i.error.i.i.i_crit_edge:             ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error.i.i.i

if.end20.i.i.i:                                   ; preds = %if.end16.i.i.i
  %131 = ptrtoint ptr %txq_map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %txq_map.i.i.i, align 4
  %133 = ptrtoint ptr %txctl.i.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %132, ptr %txctl.i.i.i, align 4
  %134 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %sc, align 8
  %call22.i.i.i = call i32 @ath_tx_start(ptr noundef %135, ptr noundef nonnull %call.i.i.i, ptr noundef nonnull %txctl.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i.i)
  %tobool23.not.i.i.i = icmp eq i32 %call22.i.i.i, 0
  br i1 %tobool23.not.i.i.i, label %if.end20.i.i.i.ath_scan_send_probe.exit.i.i_crit_edge, label %if.end20.i.i.i.error.i.i.i_crit_edge

if.end20.i.i.i.error.i.i.i_crit_edge:             ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error.i.i.i

if.end20.i.i.i.ath_scan_send_probe.exit.i.i_crit_edge: ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_scan_send_probe.exit.i.i

error.i.i.i:                                      ; preds = %if.end20.i.i.i.error.i.i.i_crit_edge, %if.end16.i.i.i.error.i.i.i_crit_edge
  %136 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %sc, align 8
  call void @ieee80211_free_txskb(ptr noundef %137, ptr noundef nonnull %call.i.i.i) #8
  br label %ath_scan_send_probe.exit.i.i

ath_scan_send_probe.exit.i.i:                     ; preds = %error.i.i.i, %if.end20.i.i.i.ath_scan_send_probe.exit.i.i_crit_edge, %for.body.i.i.ath_scan_send_probe.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %txctl.i.i.i) #8
  %inc.i.i = add nuw nsw i32 %i.023.i.i, 1
  %138 = ptrtoint ptr %n_ssids.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %n_ssids.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %139
  br i1 %cmp.i.i, label %ath_scan_send_probe.exit.i.i.for.body.i.i_crit_edge, label %ath_scan_send_probe.exit.i.i.do.body.i.i_crit_edge

ath_scan_send_probe.exit.i.i.do.body.i.i_crit_edge: ; preds = %ath_scan_send_probe.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

ath_scan_send_probe.exit.i.i.for.body.i.i_crit_edge: ; preds = %ath_scan_send_probe.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

do.body.i.i:                                      ; preds = %ath_scan_send_probe.exit.i.i.do.body.i.i_crit_edge, %land.lhs.true.i.i.do.body.i.i_crit_edge, %if.end13.i.do.body.i.i_crit_edge
  %debug_mask.i.i = getelementptr inbounds %struct.ath_hw, ptr %97, i32 0, i32 3, i32 3
  %140 = ptrtoint ptr %debug_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %debug_mask.i.i, align 4
  %and3.i.i = and i32 %141, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body.i.i.ath_scan_channel_start.exit.i_crit_edge, label %if.then5.i.i

do.body.i.i.ath_scan_channel_start.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_scan_channel_start.exit.i

if.then5.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i.i.i, ptr noundef nonnull @.str.68) #8
  br label %ath_scan_channel_start.exit.i

ath_scan_channel_start.exit.i:                    ; preds = %if.then5.i.i, %do.body.i.i.ath_scan_channel_start.exit.i_crit_edge
  %142 = ptrtoint ptr %state3.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 2, ptr %state3.i, align 4
  %timer.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %143 = load volatile i32, ptr @jiffies, align 128
  %duration.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 9
  %144 = ptrtoint ptr %duration.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %duration.i.i, align 4
  %add.i.i = add i32 %145, %143
  %call10.i.i = call i32 @mod_timer(ptr noundef %timer.i.i, i32 noundef %add.i.i) #8
  br label %ath_offchannel_channel_change.exit

sw.bb14.i:                                        ; preds = %do.end.i162
  %scan_req16.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 2
  %146 = ptrtoint ptr %scan_req16.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %scan_req16.i, align 8
  %tobool17.not.i = icmp eq ptr %147, null
  br i1 %tobool17.not.i, label %sw.bb14.i.ath_offchannel_channel_change.exit_crit_edge, label %if.end19.i

sw.bb14.i.ath_offchannel_channel_change.exit_crit_edge: ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_offchannel_channel_change.exit

if.end19.i:                                       ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @ath_scan_complete(ptr noundef %sc, i1 noundef zeroext false) #8
  br label %ath_offchannel_channel_change.exit

sw.bb20.i:                                        ; preds = %do.end.i162
  %148 = ptrtoint ptr %cur_chan13 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %cur_chan13, align 8
  %cmp24.not.i = icmp eq ptr %149, %offchannel2.i
  br i1 %cmp24.not.i, label %if.end26.i, label %sw.bb20.i.ath_offchannel_channel_change.exit_crit_edge

sw.bb20.i.ath_offchannel_channel_change.exit_crit_edge: ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_offchannel_channel_change.exit

if.end26.i:                                       ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #10
  %150 = ptrtoint ptr %state3.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 5, ptr %state3.i, align 4
  %timer.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %151 = load volatile i32, ptr @jiffies, align 128
  %duration.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 9
  %152 = ptrtoint ptr %duration.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %duration.i, align 4
  %add.i = add i32 %153, %151
  %call31.i = call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #8
  %154 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %sc, align 8
  call void @ieee80211_ready_on_channel(ptr noundef %155) #8
  br label %ath_offchannel_channel_change.exit

ath_offchannel_channel_change.exit:               ; preds = %if.end26.i, %sw.bb20.i.ath_offchannel_channel_change.exit_crit_edge, %if.end19.i, %sw.bb14.i.ath_offchannel_channel_change.exit_crit_edge, %ath_scan_channel_start.exit.i, %if.end7.i.ath_offchannel_channel_change.exit_crit_edge, %sw.bb.i.ath_offchannel_channel_change.exit_crit_edge, %do.end.i162.ath_offchannel_channel_change.exit_crit_edge
  call void @ath_chanctx_event(ptr noundef %sc, ptr noundef null, i32 noundef 5)
  br label %cleanup

cleanup:                                          ; preds = %ath_offchannel_channel_change.exit, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_raw_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_chanctx_stop_queues(ptr noundef readonly %sc, ptr noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %offchannel = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22
  %cmp = icmp eq ptr %offchannel, %ctx
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hw_queue_base = getelementptr inbounds %struct.ath_chanctx, ptr %ctx, i32 0, i32 3
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc, align 8
  %4 = ptrtoint ptr %hw_queue_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_queue_base, align 4
  tail call void @ieee80211_stop_queue(ptr noundef %3, i32 noundef %5) #8
  %6 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc, align 8
  %8 = ptrtoint ptr %hw_queue_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hw_queue_base, align 4
  %add.1 = add i32 %9, 1
  tail call void @ieee80211_stop_queue(ptr noundef %7, i32 noundef %add.1) #8
  %10 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sc, align 8
  %12 = ptrtoint ptr %hw_queue_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_queue_base, align 4
  %add.2 = add i32 %13, 2
  tail call void @ieee80211_stop_queue(ptr noundef %11, i32 noundef %add.2) #8
  %14 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sc, align 8
  %16 = ptrtoint ptr %hw_queue_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hw_queue_base, align 4
  %add.3 = add i32 %17, 3
  tail call void @ieee80211_stop_queue(ptr noundef %15, i32 noundef %add.3) #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sc, align 8
  %offchannel_tx_hw_queue = getelementptr inbounds %struct.ieee80211_hw, ptr %19, i32 0, i32 20
  %20 = ptrtoint ptr %offchannel_tx_hw_queue to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %offchannel_tx_hw_queue, align 1
  %conv = zext i8 %21 to i32
  tail call void @ieee80211_stop_queue(ptr noundef %19, i32 noundef %conv) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond.preheader
  %opmode = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 28
  %22 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %opmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp5 = icmp eq i32 %23, 3
  br i1 %cmp5, label %if.then7, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sc, align 8
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %queues to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %queues, align 4
  %conv10 = zext i16 %27 to i32
  %sub = add nsw i32 %conv10, -2
  tail call void @ieee80211_stop_queue(ptr noundef %25, i32 noundef %sub) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ath9k_flush(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ath_chanctx_send_ps_frame(ptr nocapture noundef readonly %sc, i1 noundef zeroext %powersave) unnamed_addr #0 align 64 {
entry:
  %sta.i = alloca ptr, align 4
  %txctl.i = alloca %struct.ath_tx_control, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !161) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !173
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.73, i32 noundef 696, ptr noundef nonnull @.str.74) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %4 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_chan, align 8
  %vifs = getelementptr inbounds %struct.ath_chanctx, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %vifs to i32
  call void @__asan_load4_noabort(i32 %6)
  %avp.025 = load ptr, ptr %vifs, align 4
  %cmp.not27 = icmp eq ptr %avp.025, %vifs
  br i1 %cmp.not27, label %rcu_read_lock.exit.for.end_crit_edge, label %for.body.lr.ph

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %rcu_read_lock.exit
  %7 = getelementptr inbounds i8, ptr %txctl.i, i32 4
  %txq_map.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 5
  %sta14.i = getelementptr inbounds %struct.ath_tx_control, ptr %txctl.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %ath_chanctx_send_vif_ps_frame.exit.for.body_crit_edge, %for.body.lr.ph
  %8 = phi ptr [ %5, %for.body.lr.ph ], [ %44, %ath_chanctx_send_vif_ps_frame.exit.for.body_crit_edge ]
  %avp.029 = phi ptr [ %avp.025, %for.body.lr.ph ], [ %avp.0, %ath_chanctx_send_vif_ps_frame.exit.for.body_crit_edge ]
  %sent.0.off028 = phi i1 [ false, %for.body.lr.ph ], [ %retval.0.i, %ath_chanctx_send_vif_ps_frame.exit.for.body_crit_edge ]
  %vif1.i = getelementptr inbounds %struct.ath_vif, ptr %avp.029, i32 0, i32 5
  %9 = ptrtoint ptr %vif1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vif1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sta.i) #8
  %11 = ptrtoint ptr %sta.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %sta.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %txctl.i) #8
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %8, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cond.i = icmp eq i32 %17, 2
  br i1 %cond.i, label %sw.bb.i, label %for.body.ath_chanctx_send_vif_ps_frame.exit_crit_edge

for.body.ath_chanctx_send_vif_ps_frame.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_chanctx_send_vif_ps_frame.exit

sw.bb.i:                                          ; preds = %for.body
  %assoc.i = getelementptr inbounds %struct.ath_vif, ptr %avp.029, i32 0, i32 4
  %18 = ptrtoint ptr %assoc.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %assoc.i, align 2, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i14 = icmp eq i8 %19, 0
  br i1 %tobool.not.i14, label %sw.bb.i.ath_chanctx_send_vif_ps_frame.exit_crit_edge, label %if.end.i

sw.bb.i.ath_chanctx_send_vif_ps_frame.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_chanctx_send_vif_ps_frame.exit

if.end.i:                                         ; preds = %sw.bb.i
  %20 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sc, align 8
  %call.i15 = call ptr @ieee80211_nullfunc_get(ptr noundef %21, ptr noundef %10, i1 noundef zeroext false) #8
  %tobool3.not.i = icmp eq ptr %call.i15, null
  br i1 %tobool3.not.i, label %if.end.i.ath_chanctx_send_vif_ps_frame.exit_crit_edge, label %if.end5.i

if.end.i.ath_chanctx_send_vif_ps_frame.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_chanctx_send_vif_ps_frame.exit

if.end5.i:                                        ; preds = %if.end.i
  br i1 %powersave, label %if.then7.i, label %if.end5.i.if.end9.i_crit_edge

if.end5.i.if.end9.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i15, i32 0, i32 19
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %23, align 2
  %26 = or i16 %25, 16
  store i16 %26, ptr %23, align 2
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end5.i.if.end9.i_crit_edge
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %call.i15, i32 0, i32 15, i32 0, i32 6
  %27 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 7, ptr %priority.i, align 4
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i15, i32 0, i32 10
  %28 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %queue_mapping1.i.i, align 8
  %29 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sc, align 8
  %call11.i = call zeroext i1 @ieee80211_tx_prepare_skb(ptr noundef %30, ptr noundef %10, ptr noundef nonnull %call.i15, i32 noundef %15, ptr noundef nonnull %sta.i) #8
  br i1 %call11.i, label %sw.epilog.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i15, i32 noundef 1) #8
  br label %ath_chanctx_send_vif_ps_frame.exit

sw.epilog.i:                                      ; preds = %if.end9.i
  %31 = call ptr @memset(ptr %7, i32 0, i32 12)
  %32 = ptrtoint ptr %txq_map.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %txq_map.i, align 4
  %34 = ptrtoint ptr %txctl.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %txctl.i, align 4
  %35 = ptrtoint ptr %sta.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sta.i, align 4
  %37 = ptrtoint ptr %sta14.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %sta14.i, align 4
  %38 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sc, align 8
  %call16.i = call i32 @ath_tx_start(ptr noundef %39, ptr noundef nonnull %call.i15, ptr noundef nonnull %txctl.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %sw.epilog.i.ath_chanctx_send_vif_ps_frame.exit_crit_edge, label %if.then18.i

sw.epilog.i.ath_chanctx_send_vif_ps_frame.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_chanctx_send_vif_ps_frame.exit

if.then18.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sc, align 8
  call void @ieee80211_free_txskb(ptr noundef %41, ptr noundef nonnull %call.i15) #8
  br label %ath_chanctx_send_vif_ps_frame.exit

ath_chanctx_send_vif_ps_frame.exit:               ; preds = %if.then18.i, %sw.epilog.i.ath_chanctx_send_vif_ps_frame.exit_crit_edge, %if.then12.i, %if.end.i.ath_chanctx_send_vif_ps_frame.exit_crit_edge, %sw.bb.i.ath_chanctx_send_vif_ps_frame.exit_crit_edge, %for.body.ath_chanctx_send_vif_ps_frame.exit_crit_edge
  %retval.0.i = phi i1 [ %sent.0.off028, %if.then18.i ], [ %sent.0.off028, %if.then12.i ], [ %sent.0.off028, %sw.bb.i.ath_chanctx_send_vif_ps_frame.exit_crit_edge ], [ %sent.0.off028, %if.end.i.ath_chanctx_send_vif_ps_frame.exit_crit_edge ], [ %sent.0.off028, %for.body.ath_chanctx_send_vif_ps_frame.exit_crit_edge ], [ true, %sw.epilog.i.ath_chanctx_send_vif_ps_frame.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %txctl.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sta.i) #8
  %42 = ptrtoint ptr %avp.029 to i32
  call void @__asan_load4_noabort(i32 %42)
  %avp.0 = load ptr, ptr %avp.029, align 4
  %43 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cur_chan, align 8
  %vifs2 = getelementptr inbounds %struct.ath_chanctx, ptr %44, i32 0, i32 1
  %cmp.not = icmp eq ptr %avp.0, %vifs2
  br i1 %cmp.not, label %ath_chanctx_send_vif_ps_frame.exit.for.end_crit_edge, label %ath_chanctx_send_vif_ps_frame.exit.for.body_crit_edge

ath_chanctx_send_vif_ps_frame.exit.for.body_crit_edge: ; preds = %ath_chanctx_send_vif_ps_frame.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

ath_chanctx_send_vif_ps_frame.exit.for.end_crit_edge: ; preds = %ath_chanctx_send_vif_ps_frame.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %ath_chanctx_send_vif_ps_frame.exit.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %sent.0.off0.lcssa = phi i1 [ false, %rcu_read_lock.exit.for.end_crit_edge ], [ %retval.0.i, %ath_chanctx_send_vif_ps_frame.exit.for.end_crit_edge ]
  %call.i16 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i16, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i19

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i19:                                ; preds = %for.end
  %call1.i17 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.73, i32 noundef 724, ptr noundef nonnull @.str.75) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !174
  %45 = call i32 @llvm.read_register.i32(metadata !161) #8
  %and.i.i.i.i.i23 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i = add i32 %48, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i24, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret i1 %sent.0.off0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ath9k_hw_gettsf64(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_chanctx_wake_queues(ptr noundef readonly %sc, ptr noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %offchannel = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22
  %cmp = icmp eq ptr %offchannel, %ctx
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hw_queue_base = getelementptr inbounds %struct.ath_chanctx, ptr %ctx, i32 0, i32 3
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc, align 8
  %4 = ptrtoint ptr %hw_queue_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_queue_base, align 4
  tail call void @ieee80211_wake_queue(ptr noundef %3, i32 noundef %5) #8
  %6 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc, align 8
  %8 = ptrtoint ptr %hw_queue_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hw_queue_base, align 4
  %add.1 = add i32 %9, 1
  tail call void @ieee80211_wake_queue(ptr noundef %7, i32 noundef %add.1) #8
  %10 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sc, align 8
  %12 = ptrtoint ptr %hw_queue_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_queue_base, align 4
  %add.2 = add i32 %13, 2
  tail call void @ieee80211_wake_queue(ptr noundef %11, i32 noundef %add.2) #8
  %14 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sc, align 8
  %16 = ptrtoint ptr %hw_queue_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hw_queue_base, align 4
  %add.3 = add i32 %17, 3
  tail call void @ieee80211_wake_queue(ptr noundef %15, i32 noundef %add.3) #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sc, align 8
  %offchannel_tx_hw_queue = getelementptr inbounds %struct.ieee80211_hw, ptr %19, i32 0, i32 20
  %20 = ptrtoint ptr %offchannel_tx_hw_queue to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %offchannel_tx_hw_queue, align 1
  %conv = zext i8 %21 to i32
  tail call void @ieee80211_wake_queue(ptr noundef %19, i32 noundef %conv) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond.preheader
  %opmode = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 28
  %22 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %opmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp5 = icmp eq i32 %23, 3
  br i1 %cmp5, label %if.then7, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sc, align 8
  %queues = getelementptr inbounds %struct.ieee80211_hw, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %queues to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %queues, align 4
  %conv10 = zext i16 %27 to i32
  %sub = add nsw i32 %conv10, -2
  tail call void @ieee80211_wake_queue(ptr noundef %25, i32 noundef %sub) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_offchannel_init(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %sbands = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 31
  %n_channels = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 31, i32 0, i32 3
  %2 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %arrayidx2 = getelementptr %struct.ath_hw, ptr %1, i32 0, i32 3, i32 31, i32 1
  %spec.select = select i1 %tobool.not, ptr %arrayidx2, ptr %sbands
  %4 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spec.select, align 4
  %offchannel = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22
  %vifs = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 0, i32 1
  %6 = ptrtoint ptr %vifs to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %vifs, ptr %vifs, align 4
  %prev.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %vifs, ptr %prev.i, align 4
  %txpower = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 0, i32 11
  %8 = ptrtoint ptr %txpower to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 100, ptr %txpower, align 8
  tail call void @cfg80211_chandef_create(ptr noundef %offchannel, ptr noundef %5, i32 noundef 1) #8
  %arrayidx5 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 0, i32 2, i32 0
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %arrayidx5, ptr %arrayidx5, align 4
  %prev.i27 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 0, i32 2, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i27 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx5, ptr %prev.i27, align 4
  %acq_old = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 0, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %acq_old to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %acq_old, ptr %acq_old, align 4
  %prev.i28 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 0, i32 2, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i28 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %acq_old, ptr %prev.i28, align 4
  %lock = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 0, i32 2, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.25, ptr noundef nonnull @ath9k_offchannel_init.__key, i16 noundef signext 3) #8
  %arrayidx5.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %arrayidx5.1, ptr %arrayidx5.1, align 4
  %prev.i27.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 0, i32 2, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i27.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx5.1, ptr %prev.i27.1, align 4
  %acq_old.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 0, i32 2, i32 1, i32 1
  %15 = ptrtoint ptr %acq_old.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %acq_old.1, ptr %acq_old.1, align 4
  %prev.i28.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 0, i32 2, i32 1, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i28.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %acq_old.1, ptr %prev.i28.1, align 4
  %lock.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 0, i32 2, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.1, ptr noundef nonnull @.str.25, ptr noundef nonnull @ath9k_offchannel_init.__key, i16 noundef signext 3) #8
  %arrayidx5.2 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %arrayidx5.2, ptr %arrayidx5.2, align 4
  %prev.i27.2 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 0, i32 2, i32 2, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i27.2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx5.2, ptr %prev.i27.2, align 4
  %acq_old.2 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 0, i32 2, i32 2, i32 1
  %19 = ptrtoint ptr %acq_old.2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %acq_old.2, ptr %acq_old.2, align 4
  %prev.i28.2 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 0, i32 2, i32 2, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i28.2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %acq_old.2, ptr %prev.i28.2, align 4
  %lock.2 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 0, i32 2, i32 2, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.2, ptr noundef nonnull @.str.25, ptr noundef nonnull @ath9k_offchannel_init.__key, i16 noundef signext 3) #8
  %arrayidx5.3 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %arrayidx5.3, ptr %arrayidx5.3, align 4
  %prev.i27.3 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 0, i32 2, i32 3, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i27.3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx5.3, ptr %prev.i27.3, align 4
  %acq_old.3 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 0, i32 2, i32 3, i32 1
  %23 = ptrtoint ptr %acq_old.3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %acq_old.3, ptr %acq_old.3, align 4
  %prev.i28.3 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 0, i32 2, i32 3, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i28.3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %acq_old.3, ptr %prev.i28.3, align 4
  %lock.3 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 0, i32 2, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.3, ptr noundef nonnull @.str.25, ptr noundef nonnull @ath9k_offchannel_init.__key, i16 noundef signext 3) #8
  %offchannel13 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 0, i32 13
  %25 = ptrtoint ptr %offchannel13 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %offchannel13, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_init_channel_context(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chanctx_work = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 18
  tail call void @__init_work(ptr noundef %chanctx_work, i32 noundef 0) #8
  %0 = ptrtoint ptr %chanctx_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %chanctx_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 18, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.26, ptr noundef nonnull @ath9k_init_channel_context.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry4 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 18, i32 1
  %1 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 18, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 18, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ath_chanctx_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @ath_offchannel_timer, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @ath9k_init_channel_context.__key.27) #8
  %timer9 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 21, i32 13
  tail call void @init_timer_key(ptr noundef %timer9, ptr noundef nonnull @ath_chanctx_timer, i32 noundef 0, ptr noundef nonnull @.str.30, ptr noundef nonnull @ath9k_init_channel_context.__key.29) #8
  %go_beacon = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 24
  %4 = ptrtoint ptr %go_beacon to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %go_beacon, align 4
  %wait.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 24, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.71, ptr noundef nonnull @init_completion.__key) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath_chanctx_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -3276
  %mutex = getelementptr i8, ptr %work, i32 -288
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call void @ath_chanctx_set_next(ptr noundef %add.ptr, i1 noundef zeroext false)
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath_offchannel_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -4552
  %sc_ah = getelementptr i8, ptr %t, i32 -1708
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_mask, align 4
  %and = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %entry
  %state = getelementptr i8, ptr %t, i32 60
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %6 = icmp ult i32 %5, 7
  br i1 %6, label %switch.lookup, label %if.then.offchannel_state_string.exit_crit_edge

if.then.offchannel_state_string.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %offchannel_state_string.exit

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.ath_offchannel_timer, i32 0, i32 %5
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %offchannel_state_string.exit

offchannel_state_string.exit:                     ; preds = %switch.lookup, %if.then.offchannel_state_string.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.43, %if.then.offchannel_state_string.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.ath_offchannel_timer, ptr noundef nonnull %retval.0.i) #8
  br label %do.end

do.end:                                           ; preds = %offchannel_state_string.exit, %entry.do.end_crit_edge
  %state3 = getelementptr i8, ptr %t, i32 60
  %8 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state3, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %9, label %do.end.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %do.end.sw.bb24_crit_edge
    i32 4, label %do.end.sw.bb30_crit_edge
    i32 5, label %do.end.sw.bb30_crit_edge52
  ]

do.end.sw.bb30_crit_edge52:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30

do.end.sw.bb30_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30

do.end.sw.bb24_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb24

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  %scan_req = getelementptr i8, ptr %t, i32 48
  %11 = ptrtoint ptr %scan_req to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %scan_req, align 8
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %sw.bb.cleanup_crit_edge, label %if.end7

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %sw.bb
  %chanctx.i = getelementptr i8, ptr %t, i32 3608
  %arrayidx2.i = getelementptr i8, ptr %t, i32 4752
  %cmp.not22.i = icmp ugt ptr %chanctx.i, %arrayidx2.i
  br i1 %cmp.not22.i, label %if.end7.ath_chanctx_get_oper_chan.exit_crit_edge, label %if.end7.for.body.i_crit_edge

if.end7.for.body.i_crit_edge:                     ; preds = %if.end7
  br label %for.body.i

if.end7.ath_chanctx_get_oper_chan.exit_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_chanctx_get_oper_chan.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end7.for.body.i_crit_edge
  %ctx.023.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %chanctx.i, %if.end7.for.body.i_crit_edge ]
  %assigned.i = getelementptr inbounds %struct.ath_chanctx, ptr %ctx.023.i, i32 0, i32 16
  %13 = ptrtoint ptr %assigned.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %assigned.i, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %vifs.i = getelementptr inbounds %struct.ath_chanctx, ptr %ctx.023.i, i32 0, i32 1
  %15 = ptrtoint ptr %vifs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %vifs.i, align 4
  %cmp.i.not.i = icmp eq ptr %16, %vifs.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %active5.i = getelementptr inbounds %struct.ath_chanctx, ptr %ctx.023.i, i32 0, i32 15
  %17 = ptrtoint ptr %active5.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %active5.i, align 2, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool6.not.i = icmp eq i8 %18, 0
  br i1 %tobool6.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end8.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end8.i:                                        ; preds = %if.end.i
  %switch_after_beacon.i = getelementptr inbounds %struct.ath_chanctx, ptr %ctx.023.i, i32 0, i32 17
  %19 = ptrtoint ptr %switch_after_beacon.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %switch_after_beacon.i, align 8, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool9.not.i = icmp eq i8 %20, 0
  br i1 %tobool9.not.i, label %if.end8.i.for.inc.i_crit_edge, label %if.end8.i.ath_chanctx_get_oper_chan.exit_crit_edge

if.end8.i.ath_chanctx_get_oper_chan.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_chanctx_get_oper_chan.exit

if.end8.i.for.inc.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end8.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.ath_chanctx, ptr %ctx.023.i, i32 1
  %cmp.not.i = icmp ugt ptr %incdec.ptr.i, %arrayidx2.i
  br i1 %cmp.not.i, label %for.inc.i.ath_chanctx_get_oper_chan.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.ath_chanctx_get_oper_chan.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_chanctx_get_oper_chan.exit

ath_chanctx_get_oper_chan.exit:                   ; preds = %for.inc.i.ath_chanctx_get_oper_chan.exit_crit_edge, %if.end8.i.ath_chanctx_get_oper_chan.exit_crit_edge, %if.end7.ath_chanctx_get_oper_chan.exit_crit_edge
  %retval.0.i50 = phi ptr [ %chanctx.i, %if.end7.ath_chanctx_get_oper_chan.exit_crit_edge ], [ %ctx.023.i, %if.end8.i.ath_chanctx_get_oper_chan.exit_crit_edge ], [ %chanctx.i, %for.inc.i.ath_chanctx_get_oper_chan.exit_crit_edge ]
  %active = getelementptr inbounds %struct.ath_chanctx, ptr %retval.0.i50, i32 0, i32 15
  %21 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %active, align 2, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool9.not = icmp eq i8 %22, 0
  br i1 %tobool9.not, label %ath_chanctx_get_oper_chan.exit.sw.bb24_crit_edge, label %do.body11

ath_chanctx_get_oper_chan.exit.sw.bb24_crit_edge: ; preds = %ath_chanctx_get_oper_chan.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb24

do.body11:                                        ; preds = %ath_chanctx_get_oper_chan.exit
  %23 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug_mask, align 4
  %and13 = and i32 %24, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body11.do.end18_crit_edge, label %if.then15

do.body11.do.end18_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18

if.then15:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.69) #8
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %do.body11.do.end18_crit_edge
  %25 = ptrtoint ptr %state3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %state3, align 4
  tail call fastcc void @ath_chanctx_switch(ptr noundef %add.ptr, ptr noundef %retval.0.i50, ptr noundef null)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %26, 10
  %call22 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #8
  br label %cleanup

sw.bb24:                                          ; preds = %ath_chanctx_get_oper_chan.exit.sw.bb24_crit_edge, %do.end.sw.bb24_crit_edge
  %scan_req26 = getelementptr i8, ptr %t, i32 48
  %27 = ptrtoint ptr %scan_req26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %scan_req26, align 8
  %tobool27.not = icmp eq ptr %28, null
  br i1 %tobool27.not, label %sw.bb24.cleanup_crit_edge, label %if.end29

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ath_scan_next_channel(ptr noundef %add.ptr)
  br label %cleanup

sw.bb30:                                          ; preds = %do.end.sw.bb30_crit_edge, %do.end.sw.bb30_crit_edge52
  %29 = ptrtoint ptr %state3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 6, ptr %state3, align 4
  %30 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sc_ah, align 4
  %roc_vif.i = getelementptr i8, ptr %t, i32 68
  %32 = ptrtoint ptr %roc_vif.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %roc_vif.i, align 4
  %roc_chan.i = getelementptr i8, ptr %t, i32 64
  %33 = ptrtoint ptr %roc_chan.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %roc_chan.i, align 8
  %debug_mask4.i = getelementptr inbounds %struct.ath_hw, ptr %31, i32 0, i32 3, i32 3
  %34 = ptrtoint ptr %debug_mask4.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %debug_mask4.i, align 4
  %and5.i = and i32 %35, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i51 = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i51, label %sw.bb30.ath_roc_complete.exit_crit_edge, label %if.then7.i

sw.bb30.ath_roc_complete.exit_crit_edge:          ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath_roc_complete.exit

if.then7.i:                                       ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %31, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i.i, ptr noundef nonnull @.str.18) #8
  br label %ath_roc_complete.exit

ath_roc_complete.exit:                            ; preds = %if.then7.i, %sw.bb30.ath_roc_complete.exit_crit_edge
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr, align 8
  tail call void @ieee80211_remain_on_channel_expired(ptr noundef %37) #8
  tail call void @ath_offchannel_next(ptr noundef %add.ptr) #8
  tail call void @ath9k_ps_restore(ptr noundef %add.ptr) #8
  br label %cleanup

cleanup:                                          ; preds = %ath_roc_complete.exit, %if.end29, %sw.bb24.cleanup_crit_edge, %do.end18, %sw.bb.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath_chanctx_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr i8, ptr %t, i32 -516
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_mask, align 4
  %and = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.70) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %add.ptr = getelementptr i8, ptr %t, i32 -3360
  tail call void @ath_chanctx_event(ptr noundef %add.ptr, ptr noundef null, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_deinit_channel_context(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chanctx_work = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 18
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %chanctx_work) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_beacon_add_noa(ptr nocapture noundef readonly %sc, ptr nocapture noundef readonly %avp, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %offchannel_duration = getelementptr inbounds %struct.ath_vif, ptr %avp, i32 0, i32 14
  %0 = ptrtoint ptr %offchannel_duration to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offchannel_duration, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %noa_duration = getelementptr inbounds %struct.ath_vif, ptr %avp, i32 0, i32 16
  %2 = ptrtoint ptr %noa_duration to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %noa_duration, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool3 = icmp ne i32 %1, 0
  %lnot.ext = zext i1 %tobool3 to i32
  %noa_duration5 = getelementptr inbounds %struct.ath_vif, ptr %avp, i32 0, i32 16
  %4 = ptrtoint ptr %noa_duration5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %noa_duration5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6 = icmp ne i32 %5, 0
  %lnot.ext10 = zext i1 %tobool6 to i32
  %add = add nuw nsw i32 %lnot.ext10, %lnot.ext
  %mul = mul nuw nsw i32 %add, 13
  %add11 = add nuw nsw i32 %mul, 2
  %call.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 9) #8
  %6 = call ptr @memcpy(ptr %call.i, ptr @ath9k_beacon_add_noa.noa_ie_hdr, i32 9)
  %7 = trunc i32 %mul to i8
  %conv = add nuw nsw i8 %7, 9
  %arrayidx = getelementptr i8, ptr %call.i, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %arrayidx, align 1
  %conv13 = trunc i32 %add11 to i8
  %arrayidx14 = getelementptr i8, ptr %call.i, i32 7
  %9 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv13, ptr %arrayidx14, align 1
  %call.i97 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %add11) #8
  %10 = call ptr @memset(ptr %call.i97, i32 0, i32 %add11)
  %noa_index = getelementptr inbounds %struct.ath_vif, ptr %avp, i32 0, i32 12
  %11 = ptrtoint ptr %noa_index to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %noa_index, align 4
  %13 = ptrtoint ptr %call.i97 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %call.i97, align 1
  %cur_chan.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %14 = ptrtoint ptr %cur_chan.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur_chan.i, align 8
  %beacon_interval.i = getelementptr inbounds %struct.ath_chanctx, ptr %15, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %beacon_interval.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %beacon_interval.i, align 4
  %div.i = sdiv i32 %17, 4
  %vif.i = getelementptr inbounds %struct.ath_vif, ptr %avp, i32 0, i32 5
  %18 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vif.i, align 4
  %oppps_ctwindow.i = getelementptr inbounds %struct.ieee80211_vif, ptr %19, i32 0, i32 1, i32 44, i32 1
  %20 = ptrtoint ptr %oppps_ctwindow.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %oppps_ctwindow.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp ne i8 %21, 0
  %conv1.i = zext i8 %21 to i32
  %conv3.i = and i32 %div.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.i, i32 %conv1.i)
  %cmp.i = icmp ugt i32 %conv3.i, %conv1.i
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  %conv5.i = and i32 %div.i, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %conv5.i)
  %cmp6.i = icmp ult i32 %conv5.i, 10
  %..i = select i1 %cmp6.i, i8 0, i8 10
  %retval.0.i = select i1 %or.cond.i, i8 %21, i8 %..i
  %oppps_ctwindow = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, ptr %call.i97, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.i)
  %tobool18.not = icmp eq i8 %retval.0.i, 0
  %22 = or i8 %retval.0.i, -128
  %spec.select = select i1 %tobool18.not, i8 0, i8 %22
  %23 = ptrtoint ptr %oppps_ctwindow to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %spec.select, ptr %oppps_ctwindow, align 1
  %24 = ptrtoint ptr %noa_duration5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %noa_duration5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool25.not = icmp eq i32 %25, 0
  br i1 %tobool25.not, label %if.end.if.end42_crit_edge, label %if.then26

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then26:                                        ; preds = %if.end
  %periodic_noa = getelementptr inbounds %struct.ath_vif, ptr %avp, i32 0, i32 17
  %26 = ptrtoint ptr %periodic_noa to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %periodic_noa, align 8, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool27.not = icmp eq i8 %27, 0
  br i1 %tobool27.not, label %if.then26.if.end36_crit_edge, label %if.then28

if.then26.if.end36_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then28:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %cur_chan.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cur_chan.i, align 8
  %beacon_interval = getelementptr inbounds %struct.ath_chanctx, ptr %29, i32 0, i32 5, i32 1
  %30 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %beacon_interval, align 4
  %shl = shl i32 %31, 10
  %32 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %interval32 = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, ptr %call.i97, i32 0, i32 2, i32 0, i32 2
  %33 = ptrtoint ptr %interval32 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %interval32, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then28, %if.then26.if.end36_crit_edge
  %.sink = phi i8 [ -1, %if.then28 ], [ 1, %if.then26.if.end36_crit_edge ]
  %34 = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, ptr %call.i97, i32 0, i32 2
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %.sink, ptr %34, align 1
  %noa_start = getelementptr inbounds %struct.ath_vif, ptr %avp, i32 0, i32 15
  %36 = ptrtoint ptr %noa_start to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %noa_start, align 8
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %start_time = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, ptr %call.i97, i32 0, i32 2, i32 0, i32 3
  %39 = ptrtoint ptr %start_time to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %38, ptr %start_time, align 1
  %40 = ptrtoint ptr %noa_duration5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %noa_duration5, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %duration = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, ptr %call.i97, i32 0, i32 2, i32 0, i32 1
  %43 = ptrtoint ptr %duration to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %42, ptr %duration, align 1
  br label %if.end42

if.end42:                                         ; preds = %if.end36, %if.end.if.end42_crit_edge
  %i.0 = phi i32 [ 1, %if.end36 ], [ 0, %if.end.if.end42_crit_edge ]
  %44 = ptrtoint ptr %offchannel_duration to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offchannel_duration, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool44.not = icmp eq i32 %45, 0
  br i1 %tobool44.not, label %if.end42.cleanup_crit_edge, label %if.then45

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx47 = getelementptr %struct.ieee80211_p2p_noa_attr, ptr %call.i97, i32 0, i32 2, i32 %i.0
  %46 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %arrayidx47, align 1
  %offchannel_start = getelementptr inbounds %struct.ath_vif, ptr %avp, i32 0, i32 13
  %47 = ptrtoint ptr %offchannel_start to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %offchannel_start, align 8
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %start_time51 = getelementptr %struct.ieee80211_p2p_noa_attr, ptr %call.i97, i32 0, i32 2, i32 %i.0, i32 3
  %50 = ptrtoint ptr %start_time51 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %49, ptr %start_time51, align 1
  %51 = ptrtoint ptr %offchannel_duration to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %offchannel_duration, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %duration55 = getelementptr %struct.ieee80211_p2p_noa_attr, ptr %call.i97, i32 0, i32 2, i32 %i.0, i32 1
  %54 = ptrtoint ptr %duration55 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %53, ptr %duration55, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end42.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_p2p_ps_timer(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %p2p_ps_vif = getelementptr inbounds %struct.ath_softc, ptr %priv, i32 0, i32 20
  %0 = ptrtoint ptr %p2p_ps_vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p2p_ps_vif, align 4
  %timer = getelementptr inbounds %struct.ath_softc, ptr %priv, i32 0, i32 21, i32 13
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %priv, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %p2p_ps_timer = getelementptr inbounds %struct.ath_softc, ptr %priv, i32 0, i32 19
  %4 = ptrtoint ptr %p2p_ps_timer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p2p_ps_timer, align 8
  tail call void @ath9k_hw_gen_timer_stop(ptr noundef %3, ptr noundef %5) #8
  tail call void @ath_chanctx_event(ptr noundef %priv, ptr noundef null, i32 noundef 2)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %chanctx = getelementptr inbounds %struct.ath_vif, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %chanctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chanctx, align 4
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %priv, i32 0, i32 39
  %8 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur_chan, align 8
  %cmp.not = icmp eq ptr %7, %9
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sc_ah, align 4
  %call2 = tail call i32 @ath9k_hw_gettsf32(ptr noundef %11) #8
  %noa = getelementptr inbounds %struct.ath_vif, ptr %1, i32 0, i32 11
  %absent = getelementptr inbounds %struct.ath_vif, ptr %1, i32 0, i32 11, i32 2
  %12 = ptrtoint ptr %absent to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %absent, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not = icmp eq i8 %13, 0
  %tsf.0.v = select i1 %tobool3.not, i32 1000, i32 -1000
  %tsf.0 = add i32 %tsf.0.v, %call2
  %has_next_tsf = getelementptr inbounds %struct.ath_vif, ptr %1, i32 0, i32 11, i32 1
  %14 = ptrtoint ptr %has_next_tsf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %has_next_tsf, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool7.not = icmp eq i8 %15, 0
  br i1 %tobool7.not, label %if.end.if.then12_crit_edge, label %lor.lhs.false8

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

lor.lhs.false8:                                   ; preds = %if.end
  %16 = ptrtoint ptr %noa to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %noa, align 8
  %sub10 = sub i32 %17, %tsf.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %sub10)
  %cmp11 = icmp ugt i32 %sub10, -2147483648
  br i1 %cmp11, label %lor.lhs.false8.if.then12_crit_edge, label %lor.lhs.false8.if.end14_crit_edge

lor.lhs.false8.if.end14_crit_edge:                ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

lor.lhs.false8.if.then12_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false8.if.then12_crit_edge, %if.end.if.then12_crit_edge
  tail call void @ieee80211_update_p2p_noa(ptr noundef %noa, i32 noundef %tsf.0) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %lor.lhs.false8.if.end14_crit_edge
  tail call fastcc void @ath9k_update_p2p_ps_timer(ptr noundef %priv, ptr noundef nonnull %1)
  %18 = tail call i32 @llvm.read_register.i32(metadata !161) #8
  %and.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !173
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end14.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end14.rcu_read_lock.exit_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end14
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.73, i32 noundef 696, ptr noundef nonnull @.str.74) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end14.rcu_read_lock.exit_crit_edge
  %vif15 = getelementptr inbounds %struct.ath_vif, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %vif15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vif15, align 4
  %bssid = getelementptr inbounds %struct.ath_vif, ptr %1, i32 0, i32 2
  %call16 = tail call ptr @ieee80211_find_sta(ptr noundef %23, ptr noundef %bssid) #8
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %rcu_read_lock.exit.out_crit_edge, label %if.end19

rcu_read_lock.exit.out_crit_edge:                 ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end19:                                         ; preds = %rcu_read_lock.exit
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %call16, i32 0, i32 29
  %sleeping = getelementptr inbounds %struct.ieee80211_sta, ptr %call16, i32 1, i32 0, i32 4
  %24 = ptrtoint ptr %sleeping to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %sleeping, align 4, !range !171
  %26 = ptrtoint ptr %absent to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %absent, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool24 = icmp ne i8 %27, 0
  %28 = zext i1 %tobool24 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %28)
  %cmp26 = icmp eq i8 %25, %28
  br i1 %cmp26, label %if.end19.out_crit_edge, label %if.end29

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end29:                                         ; preds = %if.end19
  %29 = ptrtoint ptr %sleeping to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %sleeping, align 4
  br i1 %tobool24, label %if.then36, label %if.else37

if.then36:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ath_tx_aggr_sleep(ptr noundef nonnull %call16, ptr noundef %priv, ptr noundef %drv_priv) #8
  br label %out

if.else37:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ath_tx_aggr_wakeup(ptr noundef %priv, ptr noundef %drv_priv) #8
  br label %out

out:                                              ; preds = %if.else37, %if.then36, %if.end19.out_crit_edge, %rcu_read_lock.exit.out_crit_edge
  %call.i72 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i72, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i75

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i75:                                ; preds = %out
  %call1.i73 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i73)
  %tobool.not.i74 = icmp eq i32 %call1.i73, 0
  br i1 %tobool.not.i74, label %land.lhs.true.i75.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i77

land.lhs.true.i75.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i75
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i77:                               ; preds = %land.lhs.true.i75
  %.b4.i76 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i76, label %land.lhs.true2.i77.rcu_read_unlock.exit_crit_edge, label %if.then.i78

land.lhs.true2.i77.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i77
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i78:                                      ; preds = %land.lhs.true2.i77
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.73, i32 noundef 724, ptr noundef nonnull @.str.75) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i78, %land.lhs.true2.i77.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i75.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !174
  %30 = tail call i32 @llvm.read_register.i32(metadata !161) #8
  %and.i.i.i.i.i79 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i79 to ptr
  %preempt_count.i.i.i.i80 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i80, align 4
  %sub.i.i.i = add i32 %33, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i80, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_gen_timer_stop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_update_p2p_noa(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath9k_update_p2p_ps_timer(ptr nocapture noundef readonly %sc, ptr noundef readonly %avp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %tobool.not = icmp eq ptr %avp, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %has_next_tsf = getelementptr inbounds %struct.ath_vif, ptr %avp, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %has_next_tsf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_next_tsf, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %noa = getelementptr inbounds %struct.ath_vif, ptr %avp, i32 0, i32 11
  %p2p_ps_timer = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 19
  %4 = ptrtoint ptr %p2p_ps_timer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p2p_ps_timer, align 8
  tail call void @ath9k_hw_gen_timer_stop(ptr noundef %1, ptr noundef %5) #8
  %6 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc_ah, align 4
  %call4 = tail call i32 @ath9k_hw_gettsf32(ptr noundef %7) #8
  %8 = ptrtoint ptr %noa to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %noa, align 8
  %absent = getelementptr inbounds %struct.ath_vif, ptr %avp, i32 0, i32 11, i32 2
  %10 = ptrtoint ptr %absent to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %absent, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not = icmp eq i8 %11, 0
  %target_tsf.0.v = select i1 %tobool7.not, i32 -1000, i32 1000
  %target_tsf.0 = add i32 %target_tsf.0.v, %9
  %sub10 = sub i32 %target_tsf.0, %call4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %sub10)
  %cmp = icmp ult i32 %sub10, 1000
  %add12 = add i32 %call4, 1000
  %target_tsf.1 = select i1 %cmp, i32 %add12, i32 %target_tsf.0
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug_mask, align 4
  %and = and i32 %13, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end.do.end_crit_edge, label %if.then15

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %11 to i32
  %sub18 = sub i32 %target_tsf.1, %call4
  %div = udiv i32 %sub18, 1000
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.72, ptr noundef nonnull @__func__.ath9k_update_p2p_ps_timer, i32 noundef %conv, i32 noundef %call4, i32 noundef %target_tsf.1, i32 noundef %div) #8
  br label %do.end

do.end:                                           ; preds = %if.then15, %if.end.do.end_crit_edge
  %14 = ptrtoint ptr %p2p_ps_timer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p2p_ps_timer, align 8
  tail call void @ath9k_hw_gen_timer_start(ptr noundef %1, ptr noundef %15, i32 noundef %target_tsf.1, i32 noundef 1000000) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_tx_aggr_sleep(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_tx_aggr_wakeup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_p2p_bss_info_changed(ptr noundef %sc, ptr noundef %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_pcu_lock = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %sc_pcu_lock) #8
  %sc_pm_lock = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sc_pm_lock) #8
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %p2p_ps_timer.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 19
  %0 = ptrtoint ptr %p2p_ps_timer.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p2p_ps_timer.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.ath9k_update_p2p_ps.exit_crit_edge, label %if.end.i

entry.ath9k_update_p2p_ps.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_update_p2p_ps.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 2
  br i1 %cmp.not.i, label %if.end2.i, label %if.end.i.ath9k_update_p2p_ps.exit_crit_edge

if.end.i.ath9k_update_p2p_ps.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_update_p2p_ps.exit

if.end2.i:                                        ; preds = %if.end.i
  %p2p_ps_vif.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 20
  %4 = ptrtoint ptr %p2p_ps_vif.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %drv_priv.i, ptr %p2p_ps_vif.i, align 4
  %ps_flags.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 29
  %5 = ptrtoint ptr %ps_flags.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ps_flags.i, align 4
  %7 = and i16 %6, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool3.not.i = icmp eq i16 %7, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end2.i.ath9k_update_p2p_ps.exit_crit_edge

if.end2.i.ath9k_update_p2p_ps.exit_crit_edge:     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_update_p2p_ps.exit

if.end5.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  %sc_ah.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %8 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sc_ah.i, align 4
  %call.i = tail call i32 @ath9k_hw_gettsf32(ptr noundef %9) #8
  %p2p_noa_attr.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 44
  %noa.i = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 1, i32 1, i32 62, i32 0, i32 2, i32 5
  %call6.i = tail call i32 @ieee80211_parse_p2p_noa(ptr noundef %p2p_noa_attr.i, ptr noundef %noa.i, i32 noundef %call.i) #8
  tail call fastcc void @ath9k_update_p2p_ps_timer(ptr noundef %sc, ptr noundef %drv_priv.i) #8
  br label %ath9k_update_p2p_ps.exit

ath9k_update_p2p_ps.exit:                         ; preds = %if.end5.i, %if.end2.i.ath9k_update_p2p_ps.exit_crit_edge, %if.end.i.ath9k_update_p2p_ps.exit_crit_edge, %entry.ath9k_update_p2p_ps.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sc_pm_lock, i32 noundef %call2) #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %sc_pcu_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_p2p_beacon_sync(ptr nocapture noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %p2p_ps_vif = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 20
  %0 = ptrtoint ptr %p2p_ps_vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p2p_ps_vif, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %vif = getelementptr inbounds %struct.ath_vif, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vif, align 4
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_vif, ptr %3, i32 0, i32 19
  %p2p_ps_timer.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 19
  %4 = ptrtoint ptr %p2p_ps_timer.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p2p_ps_timer.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 2
  br i1 %cmp.not.i, label %if.end2.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end2.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %p2p_ps_vif to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %drv_priv.i, ptr %p2p_ps_vif, align 4
  %ps_flags.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 29
  %9 = ptrtoint ptr %ps_flags.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ps_flags.i, align 4
  %11 = and i16 %10, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool3.not.i = icmp eq i16 %11, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end2.i.if.end_crit_edge

if.end2.i.if.end_crit_edge:                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end5.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  %sc_ah.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %12 = ptrtoint ptr %sc_ah.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sc_ah.i, align 4
  %call.i = tail call i32 @ath9k_hw_gettsf32(ptr noundef %13) #8
  %p2p_noa_attr.i = getelementptr inbounds %struct.ieee80211_vif, ptr %3, i32 0, i32 1, i32 44
  %noa.i = getelementptr inbounds %struct.ieee80211_vif, ptr %3, i32 1, i32 1, i32 62, i32 0, i32 2, i32 5
  %call6.i = tail call i32 @ieee80211_parse_p2p_noa(ptr noundef %p2p_noa_attr.i, ptr noundef %noa.i, i32 noundef %call.i) #8
  tail call fastcc void @ath9k_update_p2p_ps_timer(ptr noundef %sc, ptr noundef %drv_priv.i) #8
  br label %if.end

if.end:                                           ; preds = %if.end5.i, %if.end2.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_p2p_remove_vif(ptr noundef %sc, ptr noundef readnone %vif) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %sc_pcu_lock = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %sc_pcu_lock) #8
  %p2p_ps_vif = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 20
  %0 = ptrtoint ptr %p2p_ps_vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p2p_ps_vif, align 4
  %cmp = icmp eq ptr %drv_priv, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %p2p_ps_vif to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %p2p_ps_vif, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sc_pcu_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath9k_init_p2p(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %call = tail call ptr @ath_gen_timer_alloc(ptr noundef %1, ptr noundef nonnull @ath9k_p2p_ps_timer, ptr noundef null, ptr noundef %sc, i8 noundef zeroext 7) #8
  %p2p_ps_timer = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 19
  %2 = ptrtoint ptr %p2p_ps_timer to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %p2p_ps_timer, align 8
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath_gen_timer_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_deinit_p2p(ptr nocapture noundef readonly %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %p2p_ps_timer = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 19
  %0 = ptrtoint ptr %p2p_ps_timer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p2p_ps_timer, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  tail call void @ath_gen_timer_free(ptr noundef %3, ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_gen_timer_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_update_survey_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath9k_cmn_get_channel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_update_survey_nf(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_hw_getrxfilter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_setrxfilter(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_cmn_spectral_scan_trigger(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_gen_timer_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_nullfunc_get(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ieee80211_tx_prepare_skb(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_tx_start(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_ready_on_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_probereq_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_parse_p2p_noa(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !49, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !151, !153, !154, !156, !157, !158, !160}
!llvm.named.register.sp = !{!161}
!llvm.module.flags = !{!162, !163, !164, !165, !166, !167, !168, !169}
!llvm.ident = !{!170}

!0 = !{ptr @ath_chanctx_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 125, i32 4}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 143, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 510, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 525, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 530, i32 4}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 539, i32 4}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 547, i32 4}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 554, i32 4}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 572, i32 4}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 579, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 636, i32 4}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 646, i32 4}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 654, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 668, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 705, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 723, i32 3}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 948, i32 3}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 952, i32 3}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 956, i32 3}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 972, i32 3}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 974, i32 3}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 1249, i32 2}
!46 = !{ptr @__func__.ath_chanctx_set_next, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 1256, i32 3}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 1300, i32 3}
!51 = !{ptr @ath9k_offchannel_init.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 1355, i32 3}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ath9k_init_channel_context.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 1363, i32 2}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @ath9k_init_channel_context.__key.27, !58, !"__key", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 1365, i32 2}
!59 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ath9k_init_channel_context.__key.29, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 1366, i32 2}
!62 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @ath9k_beacon_add_noa.noa_ie_hdr, !64, !"noa_ie_hdr", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 1503, i32 18}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 42, i32 2}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 91, i32 3}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 205, i32 3}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 206, i32 3}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 207, i32 3}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 208, i32 3}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 209, i32 3}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 210, i32 3}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 211, i32 3}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 212, i32 3}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 213, i32 3}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 214, i32 3}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 216, i32 10}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 223, i32 3}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 224, i32 3}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 225, i32 3}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 226, i32 3}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 227, i32 3}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 425, i32 2}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 486, i32 2}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 465, i32 2}
!107 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 384, i32 2}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 887, i32 3}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 899, i32 2}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 855, i32 2}
!115 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 820, i32 3}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 828, i32 3}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 838, i32 4}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 1177, i32 3}
!123 = !{ptr @.str.60, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 1193, i32 2}
!125 = !{ptr @__func__.ath_offchannel_channel_change, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 190, i32 3}
!128 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 191, i32 3}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 192, i32 3}
!132 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 193, i32 3}
!134 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 194, i32 3}
!136 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 195, i32 3}
!138 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 196, i32 3}
!140 = !{ptr @.str.68, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 1039, i32 2}
!142 = !{ptr @__func__.ath_offchannel_timer, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 1063, i32 2}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 1074, i32 4}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 1051, i32 2}
!148 = !{ptr @init_completion.__key, !149, !"__key", i1 false, i1 false}
!149 = !{!"../include/linux/completion.h", i32 87, i32 2}
!150 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.72, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/ath/ath9k/channel.c", i32 1448, i32 2}
!153 = !{ptr @__func__.ath9k_update_p2p_ps_timer, !152, !"<string literal>", i1 false, i1 false}
!154 = distinct !{null, !155, !"__warned", i1 false, i1 false}
!155 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!156 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.74, !155, !"<string literal>", i1 false, i1 false}
!158 = distinct !{null, !159, !"__warned", i1 false, i1 false}
!159 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!160 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!161 = !{!"sp"}
!162 = !{i32 1, !"wchar_size", i32 2}
!163 = !{i32 1, !"min_enum_size", i32 4}
!164 = !{i32 8, !"branch-target-enforcement", i32 0}
!165 = !{i32 8, !"sign-return-address", i32 0}
!166 = !{i32 8, !"sign-return-address-all", i32 0}
!167 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!168 = !{i32 7, !"uwtable", i32 1}
!169 = !{i32 7, !"frame-pointer", i32 2}
!170 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!171 = !{i8 0, i8 2}
!172 = !{!"branch_weights", i32 1, i32 2000}
!173 = !{i64 2149737377}
!174 = !{i64 2149737643}
