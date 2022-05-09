; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/xmit.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/xmit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ieee80211_tx_status = type { ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.ath_txq = type { i32, i32, ptr, %struct.list_head, %struct.spinlock, i32, i32, i8, [8 x %struct.list_head], i8, i8, i32, %struct.sk_buff_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
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
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
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
%struct.ath_tx = type { i32, %struct.spinlock, %struct.list_head, [10 x %struct.ath_txq], %struct.ath_descdma, [4 x ptr], ptr, [4 x [4 x [32 x i16]]] }
%struct.ath_beacon = type { i32, i32, i32, [8 x ptr], i32, i32, %struct.ath_descdma, ptr, %struct.list_head, i8, i8 }
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
%struct.ieee80211_txq = type { ptr, ptr, i8, i8, [2 x i8], [0 x i8] }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ath_buf = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, [4 x %struct.ieee80211_tx_rate], %struct.ath_buf_state }
%struct.ieee80211_tx_rate = type <{ i8, i16 }>
%struct.ath_buf_state = type { i8, i8, i8, i8, i16, i32 }
%struct.ath_node = type { ptr, ptr, ptr, i16, i8, i8, i8, i8, %struct.ath_rx_rate_stats, [4 x i8], i32, %struct.list_head }
%struct.ath_rx_rate_stats = type { [24 x %struct.anon.138], [8 x %struct.anon.139], [4 x %struct.anon.140] }
%struct.anon.138 = type { i32, i32, i32, i32 }
%struct.anon.139 = type { i32 }
%struct.anon.140 = type { i32, i32 }
%struct.ath_atx_tid = type { %struct.list_head, %struct.sk_buff_head, ptr, ptr, [4 x i32], i16, i16, i16, i8, i32, i32, i8, i8, i8 }
%struct.ath_tx_status = type { i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_sta_rates = type { %struct.callback_head, [4 x %struct.anon.137] }
%struct.callback_head = type { ptr, ptr }
%struct.anon.137 = type { i8, i8, i8, i8, i16 }
%struct.ath_tx_info = type { i8, i8, i8, i32, i8, i16, i32, i32, i32, [4 x i32], [4 x i32], [4 x %struct.ath9k_11n_rate_series], i8, i8, i32, i32, i8, [4 x i8] }
%struct.ath9k_11n_rate_series = type { i32, i32, i32, i32, i32 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.127, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
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
%struct.possible_net_t = type { ptr }
%struct.anon.127 = type { i64, i64, i8 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ath_tx_control = type { ptr, ptr, ptr, i8 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.page = type { i32, %union.anon.17, %union.anon.86, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.86 = type { %struct.atomic_t }
%struct.eeprom_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Waking TX queue: %pM (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@bits_per_symbol = internal constant { [8 x [2 x i16]], [32 x i8] } { [8 x [2 x i16]] [[2 x i16] [i16 26, i16 54], [2 x i16] [i16 52, i16 108], [2 x i16] [i16 78, i16 162], [2 x i16] [i16 104, i16 216], [2 x i16] [i16 156, i16 324], [2 x i16] [i16 208, i16 432], [2 x i16] [i16 234, i16 486], [2 x i16] [i16 260, i16 540]], [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s called\0A\00", [21 x i8] zeroinitializer }, align 32
@__func__.ath_tx_aggr_start = private unnamed_addr constant [18 x i8] c"ath_tx_aggr_start\00", align 1
@__func__.ath_tx_aggr_stop = private unnamed_addr constant [17 x i8] c"ath_tx_aggr_stop\00", align 1
@__func__.ath_tx_aggr_sleep = private unnamed_addr constant [18 x i8] c"ath_tx_aggr_sleep\00", align 1
@__func__.ath_tx_aggr_wakeup = private unnamed_addr constant [19 x i8] c"ath_tx_aggr_wakeup\00", align 1
@ath_txq_setup.subtype_txq_to_hwq = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 2, i32 1, i32 0], [16 x i8] zeroinitializer }, align 32
@ath_txq_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&txq->axq_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to update hardware queue %u!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to stop TX DMA, queues=0x%03x!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ath_tx_sched_aggr returned %d\0A\00", [33 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error processing tx status\0A\00", [36 x i8] zeroinitializer }, align 32
@ath_tx_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&sc->tx.txbuflock\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to allocate tx descriptors: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"beacon\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to allocate beacon descriptors: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx99 padding failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tx99 buffer setup failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TX complete: skb: %p\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Going back to sleep after having received TX status (0x%lx)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ath/ath9k/xmit.c\00", [58 x i8] zeroinitializer }, align 32
@ath_merge_ratetbl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qnum: %d, txq depth: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"link[%u] (%p)=%llx (%p)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TXDP[%u] = %llx (%p)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TX buffers are full\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dma_mapping_error() on TX\0A\00", [37 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tx queue %d (%x), link %p\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 20480, i64 32768, i64 36864]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967291]
@__sancov_gen_cov_switch_values.32 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 192, i64 320, i64 384]
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 131, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"bits_per_symbol\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 38, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1565, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c"subtype_txq_to_hwq\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1743, i32 19 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1798, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1828, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1937, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1988, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2712, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2813, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2816, i32 7 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2818, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2824, i32 7 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2826, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2906, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2921, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2457, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2485, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 994, i32 9 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 166, i32 12 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 695, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 723, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2043, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2055, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2067, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2208, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2235, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 326, i32 6 }
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private constant [41 x i8] c"../drivers/net/wireless/ath/ath9k/xmit.c\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2613, i32 2 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @.str, ptr @.str.1, ptr @bits_per_symbol, ptr @.str.2, ptr @ath_txq_setup.subtype_txq_to_hwq, ptr @ath_txq_setup.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ath_tx_init.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bits_per_symbol to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_txq_setup.subtype_txq_to_hwq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_txq_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_tx_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_txq_unlock_complete(ptr nocapture noundef readonly %sc, ptr noundef %txq) local_unnamed_addr #0 align 64 {
entry:
  %status.i.i = alloca %struct.ieee80211_tx_status, align 4
  %q = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %q) #11
  %2 = getelementptr inbounds i8, ptr %q, i32 12
  %3 = call ptr @memset(ptr %2, i32 255, i32 44)
  %4 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %q, ptr %q, align 4
  %prev.i = getelementptr inbounds %struct.anon.62, ptr %q, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %q, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %q, i32 0, i32 1
  %6 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %qlen.i, align 4
  %complete_q = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 12
  %7 = ptrtoint ptr %complete_q to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %complete_q, align 4
  %cmp.i.not.i = icmp eq ptr %8, %complete_q
  br i1 %cmp.i.not.i, label %entry.skb_queue_splice_init.exit_crit_edge, label %if.then.i

entry.skb_queue_splice_init.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_queue_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev2.i.i = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 12, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev2.i.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon.41, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %q, ptr %prev5.i.i, align 4
  %12 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %8, ptr %q, align 8
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %q, ptr %10, align 8
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %10, ptr %prev.i, align 4
  %qlen.i3 = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 12, i32 1
  %15 = ptrtoint ptr %qlen.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qlen.i3, align 4
  %17 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qlen.i, align 4
  %add.i = add i32 %18, %16
  store i32 %add.i, ptr %qlen.i, align 4
  %19 = ptrtoint ptr %complete_q to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %complete_q, ptr %complete_q, align 4
  store ptr %complete_q, ptr %prev2.i.i, align 4
  store i32 0, ptr %qlen.i3, align 4
  br label %skb_queue_splice_init.exit

skb_queue_splice_init.exit:                       ; preds = %if.then.i, %entry.skb_queue_splice_init.exit_crit_edge
  %axq_lock = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 4
  call void @_raw_spin_unlock_bh(ptr noundef %axq_lock) #11
  %20 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %q, align 4
  %cmp.i.i8 = icmp eq ptr %21, %q
  %tobool.not.i79 = icmp eq ptr %21, null
  %tobool.not.i10 = or i1 %cmp.i.i8, %tobool.not.i79
  br i1 %tobool.not.i10, label %skb_queue_splice_init.exit.while.end_crit_edge, label %while.body.lr.ph

skb_queue_splice_init.exit.while.end_crit_edge:   ; preds = %skb_queue_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %skb_queue_splice_init.exit
  %22 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %status.i.i, i32 0, i32 1
  %23 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %status.i.i, i32 0, i32 2
  %24 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %status.i.i, i32 0, i32 3
  %25 = getelementptr inbounds %struct.ieee80211_tx_status, ptr %status.i.i, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %ath_tx_status.exit.while.body_crit_edge, %while.body.lr.ph
  %26 = phi ptr [ %21, %while.body.lr.ph ], [ %45, %ath_tx_status.exit.while.body_crit_edge ]
  %27 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qlen.i, align 4
  %sub.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.41, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %26, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.41, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %32, ptr %prev17.i.i, align 4
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %30, ptr %32, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 3
  %status_driver_data.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 3, i32 32
  %35 = ptrtoint ptr %status_driver_data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %status_driver_data.i, align 8
  %37 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cb.i.i, align 8
  %and.i = and i32 %38, 268435457
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i5 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i5, label %if.end.i, label %if.then.i6

if.then.i6:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @ieee80211_tx_status(ptr noundef %1, ptr noundef nonnull %26) #11
  br label %ath_tx_status.exit

if.end.i:                                         ; preds = %while.body
  %tobool1.not.i = icmp eq ptr %36, null
  br i1 %tobool1.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then2.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %status.i.i) #11
  %39 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %status.i.i, align 4
  %40 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %cb.i.i, ptr %22, align 4
  %41 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %23, align 4
  %42 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %24, align 4
  %43 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %25, align 4
  call void @ieee80211_tx_status_ext(ptr noundef %1, ptr noundef nonnull %status.i.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %status.i.i) #11
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  call void @consume_skb(ptr noundef nonnull %26) #11
  br label %ath_tx_status.exit

ath_tx_status.exit:                               ; preds = %if.end3.i, %if.then.i6
  %44 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %q, align 4
  %cmp.i.i = icmp eq ptr %45, %q
  %tobool.not.i7 = icmp eq ptr %45, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i7
  br i1 %tobool.not.i, label %ath_tx_status.exit.while.end_crit_edge, label %ath_tx_status.exit.while.body_crit_edge

ath_tx_status.exit.while.body_crit_edge:          ; preds = %ath_tx_status.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

ath_tx_status.exit.while.end_crit_edge:           ; preds = %ath_tx_status.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %ath_tx_status.exit.while.end_crit_edge, %skb_queue_splice_init.exit.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %q) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_tx_queue_tid(ptr nocapture noundef readonly %sc, ptr noundef %tid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %tid, i32 -12
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 8
  tail call void @ieee80211_schedule_txq(ptr noundef %1, ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_schedule_txq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_wake_tx_queue(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %txq1 = getelementptr inbounds %struct.ieee80211_txq, ptr %queue, i32 6, i32 2
  %4 = ptrtoint ptr %txq1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %txq1, align 4
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_mask, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %entry
  %sta = getelementptr inbounds %struct.ieee80211_txq, ptr %queue, i32 0, i32 1
  %8 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sta, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %9, i32 0, i32 1
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queue, align 4
  %addr5 = getelementptr inbounds %struct.ieee80211_vif, ptr %11, i32 0, i32 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %addr, %cond.true ], [ %addr5, %cond.false ]
  %tidno = getelementptr inbounds %struct.ieee80211_txq, ptr %queue, i32 8, i32 4
  %12 = ptrtoint ptr %tidno to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tidno, align 2
  %conv = zext i8 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1, ptr noundef %cond, i32 noundef %conv) #11
  br label %do.end

do.end:                                           ; preds = %cond.end, %entry.do.end_crit_edge
  %axq_lock.i = getelementptr inbounds %struct.ath_txq, ptr %5, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %axq_lock.i) #11
  tail call void @ath_txq_schedule(ptr noundef %1, ptr noundef %5)
  tail call void @_raw_spin_unlock_bh(ptr noundef %axq_lock.i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_txq_schedule(ptr noundef %sc, ptr noundef %txq) local_unnamed_addr #0 align 64 {
entry:
  %bf.i56.i = alloca ptr, align 4
  %bf.i.i = alloca ptr, align 4
  %bf.i = alloca ptr, align 4
  %bf_q.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %txq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 5
  %6 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %op_flags, align 4
  %8 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %conv = trunc i32 %5 to i8
  tail call void @ieee80211_txq_schedule_start(ptr noundef %1, i8 noundef zeroext %conv) #11
  %chan_lock = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 40
  tail call void @_raw_spin_lock_bh(ptr noundef %chan_lock) #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !75) #11
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !85
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.end4.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end4.rcu_read_lock.exit_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end4
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end4.rcu_read_lock.exit_crit_edge
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %13 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cur_chan, align 8
  %stopped = getelementptr inbounds %struct.ath_chanctx, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %stopped, align 1, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool6.not = icmp eq i8 %16, 0
  br i1 %tobool6.not, label %while.cond.preheader, label %rcu_read_lock.exit.out_crit_edge

rcu_read_lock.exit.out_crit_edge:                 ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

while.cond.preheader:                             ; preds = %rcu_read_lock.exit
  %17 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %txq, align 4
  %conv1058 = trunc i32 %18 to i8
  %call1159 = call ptr @ieee80211_next_txq(ptr noundef %1, i8 noundef zeroext %conv1058) #11
  %tobool12.not60 = icmp eq ptr %call1159, null
  br i1 %tobool12.not60, label %while.cond.preheader.out_crit_edge, label %while.body.lr.ph

while.cond.preheader.out_crit_edge:               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %19 = getelementptr inbounds %struct.list_head, ptr %bf_q.i, i32 0, i32 1
  %axq_ampdu_depth.i = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 6
  %axq_depth.i = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 5
  %axq_qnum.i.i = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 1
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  br label %while.body

while.body:                                       ; preds = %do.end.while.body_crit_edge, %while.body.lr.ph
  %call1161 = phi ptr [ %call1159, %while.body.lr.ph ], [ %call11, %do.end.while.body_crit_edge ]
  %drv_priv = getelementptr inbounds %struct.ieee80211_txq, ptr %call1161, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bf.i) #11
  %20 = ptrtoint ptr %bf.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %bf.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bf_q.i) #11
  %21 = ptrtoint ptr %bf_q.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %bf_q.i, ptr %bf_q.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %bf_q.i, ptr %19, align 4
  %call.i43 = call fastcc i32 @ath_tx_get_tid_subframe(ptr noundef %sc, ptr noundef %txq, ptr noundef %drv_priv, ptr noundef nonnull %bf.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %cmp.i = icmp slt i32 %call.i43, 0
  br i1 %cmp.i, label %while.body.ath_tx_sched_aggr.exit_crit_edge, label %if.end.i

while.body.ath_tx_sched_aggr.exit_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tx_sched_aggr.exit

if.end.i:                                         ; preds = %while.body
  %23 = ptrtoint ptr %bf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bf.i, align 4
  %bf_mpdu.i = getelementptr inbounds %struct.ath_buf, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %bf_mpdu.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bf_mpdu.i, align 4
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cb.i.i, align 8
  %and.i = and i32 %28, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i44 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i44, label %land.lhs.true6.critedge.i, label %land.lhs.true.i45

land.lhs.true.i45:                                ; preds = %if.end.i
  %29 = ptrtoint ptr %axq_ampdu_depth.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %axq_ampdu_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp4.i = icmp ugt i32 %30, 1
  br i1 %cmp4.i, label %land.lhs.true.i45.if.then8.i_crit_edge, label %land.lhs.true.i45.if.end10.i_crit_edge

land.lhs.true.i45.if.end10.i_crit_edge:           ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

land.lhs.true.i45.if.then8.i_crit_edge:           ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8.i

land.lhs.true6.critedge.i:                        ; preds = %if.end.i
  %31 = ptrtoint ptr %axq_depth.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %axq_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %32)
  %cmp7.i = icmp ugt i32 %32, 7
  br i1 %cmp7.i, label %land.lhs.true6.critedge.i.if.then8.i_crit_edge, label %land.lhs.true6.critedge.i.if.end10.i_crit_edge

land.lhs.true6.critedge.i.if.end10.i_crit_edge:   ; preds = %land.lhs.true6.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

land.lhs.true6.critedge.i.if.then8.i_crit_edge:   ; preds = %land.lhs.true6.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8.i

if.then8.i:                                       ; preds = %land.lhs.true6.critedge.i.if.then8.i_crit_edge, %land.lhs.true.i45.if.then8.i_crit_edge
  %retry_q.i = getelementptr inbounds %struct.ieee80211_txq, ptr %call1161, i32 1, i32 2
  %prev.i.i.i = getelementptr inbounds %struct.ieee80211_txq, ptr %call1161, i32 2
  %33 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i.i, align 4
  %35 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %retry_q.i, ptr %26, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.41, ptr %26, i32 0, i32 1
  %36 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %26, ptr %prev.i.i.i, align 4
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %26, ptr %34, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.ieee80211_txq, ptr %call1161, i32 2, i32 1
  %38 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %qlen.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %39, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  br label %ath_tx_sched_aggr.exit

if.end10.i:                                       ; preds = %land.lhs.true6.critedge.i.if.end10.i_crit_edge, %land.lhs.true.i45.if.end10.i_crit_edge
  %an.i = getelementptr inbounds %struct.ieee80211_txq, ptr %call1161, i32 6, i32 1
  %40 = ptrtoint ptr %an.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %an.i, align 4
  %vif.i = getelementptr inbounds %struct.ath_node, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vif.i, align 4
  %sta.i = getelementptr inbounds %struct.ath_node, ptr %41, i32 0, i32 1
  %44 = ptrtoint ptr %sta.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sta.i, align 4
  call fastcc void @ath_set_rates(ptr noundef %43, ptr noundef %45, ptr noundef %24) #11
  br i1 %tobool.not.i44, label %if.else.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bf.i.i) #11
  %baw_size.i.i = getelementptr inbounds %struct.ieee80211_txq, ptr %call1161, i32 8, i32 2
  %46 = ptrtoint ptr %baw_size.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %baw_size.i.i, align 4
  %48 = lshr i16 %47, 1
  %49 = ptrtoint ptr %bf.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %24, ptr %bf.i.i, align 4
  %txq.i.i.i = getelementptr inbounds %struct.ieee80211_txq, ptr %call1161, i32 6, i32 2
  %50 = ptrtoint ptr %txq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %txq.i.i.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %54 = ptrtoint ptr %bf_mpdu.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bf_mpdu.i, align 4
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 3
  %rates1.i.i.i = getelementptr inbounds %struct.ath_buf, ptr %24, i32 0, i32 7
  %count.i.i.i = getelementptr %struct.ath_buf, ptr %24, i32 0, i32 7, i32 0, i32 1
  %56 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %bf.load.i.i.i = load i16, ptr %count.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp ult i16 %bf.load.i.i.i, 2048
  br i1 %tobool.not.i.i.i, label %if.then13.i.for.inc.i.i.i_crit_edge, label %if.end.i.i.i

if.then13.i.for.inc.i.i.i_crit_edge:              ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.i

if.end.i.i.i:                                     ; preds = %if.then13.i
  %bf.clear.i.i.i = and i16 %bf.load.i.i.i, 2047
  %conv.i.i.i = zext i16 %bf.clear.i.i.i to i32
  %and.i.i.i = and i32 %conv.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.ath_lookup_rate.exit.i.i_crit_edge, label %if.end6.i.i.i

if.end.i.i.i.ath_lookup_rate.exit.i.i_crit_edge:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_lookup_rate.exit.i.i

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and12.i.i.i = lshr i32 %conv.i.i.i, 4
  %57 = and i32 %and12.i.i.i, 2
  %58 = lshr i16 %bf.load.i.i.i, 7
  %59 = and i16 %58, 1
  %60 = zext i16 %59 to i32
  %61 = or i32 %57, %60
  %62 = ptrtoint ptr %rates1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %rates1.i.i.i, align 1
  %idxprom.i.i.i = sext i8 %63 to i32
  %arrayidx28.i.i.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 7, i32 %53, i32 %61, i32 %idxprom.i.i.i
  %64 = ptrtoint ptr %arrayidx28.i.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx28.i.i.i, align 2
  %conv29.i.i.i = zext i16 %65 to i32
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.end6.i.i.i, %if.then13.i.for.inc.i.i.i_crit_edge
  %max_4ms_framelen.1.ph.i.i.i = phi i32 [ 65535, %if.then13.i.for.inc.i.i.i_crit_edge ], [ %conv29.i.i.i, %if.end6.i.i.i ]
  %arrayidx.1.i.i.i = getelementptr %struct.ath_buf, ptr %24, i32 0, i32 7, i32 1
  %count.1.i.i.i = getelementptr %struct.ath_buf, ptr %24, i32 0, i32 7, i32 1, i32 1
  %66 = ptrtoint ptr %count.1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %bf.load.1.i.i.i = load i16, ptr %count.1.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %bf.load.1.i.i.i)
  %tobool.not.1.i.i.i = icmp ult i16 %bf.load.1.i.i.i, 2048
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge, label %if.end.1.i.i.i

for.inc.i.i.i.for.inc.1.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i.i.i

if.end.1.i.i.i:                                   ; preds = %for.inc.i.i.i
  %bf.clear.1.i.i.i = and i16 %bf.load.1.i.i.i, 2047
  %conv.1.i.i.i = zext i16 %bf.clear.1.i.i.i to i32
  %and.1.i.i.i = and i32 %conv.1.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i.i)
  %tobool4.not.1.i.i.i = icmp eq i32 %and.1.i.i.i, 0
  br i1 %tobool4.not.1.i.i.i, label %if.end.1.i.i.i.ath_lookup_rate.exit.i.i_crit_edge, label %if.end6.1.i.i.i

if.end.1.i.i.i.ath_lookup_rate.exit.i.i_crit_edge: ; preds = %if.end.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_lookup_rate.exit.i.i

if.end6.1.i.i.i:                                  ; preds = %if.end.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and12.1.i.i.i = lshr i32 %conv.1.i.i.i, 4
  %67 = and i32 %and12.1.i.i.i, 2
  %68 = lshr i16 %bf.load.1.i.i.i, 7
  %69 = and i16 %68, 1
  %70 = zext i16 %69 to i32
  %71 = or i32 %67, %70
  %72 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.1.i.i.i, align 1
  %idxprom.1.i.i.i = sext i8 %73 to i32
  %arrayidx28.1.i.i.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 7, i32 %53, i32 %71, i32 %idxprom.1.i.i.i
  %74 = ptrtoint ptr %arrayidx28.1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx28.1.i.i.i, align 2
  %conv29.1.i.i.i = zext i16 %75 to i32
  %76 = call i32 @llvm.umin.i32(i32 %max_4ms_framelen.1.ph.i.i.i, i32 %conv29.1.i.i.i) #11
  br label %for.inc.1.i.i.i

for.inc.1.i.i.i:                                  ; preds = %if.end6.1.i.i.i, %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge
  %max_4ms_framelen.1.ph.1.i.i.i = phi i32 [ %max_4ms_framelen.1.ph.i.i.i, %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge ], [ %76, %if.end6.1.i.i.i ]
  %arrayidx.2.i.i.i = getelementptr %struct.ath_buf, ptr %24, i32 0, i32 7, i32 2
  %count.2.i.i.i = getelementptr %struct.ath_buf, ptr %24, i32 0, i32 7, i32 2, i32 1
  %77 = ptrtoint ptr %count.2.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %bf.load.2.i.i.i = load i16, ptr %count.2.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %bf.load.2.i.i.i)
  %tobool.not.2.i.i.i = icmp ult i16 %bf.load.2.i.i.i, 2048
  br i1 %tobool.not.2.i.i.i, label %for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge, label %if.end.2.i.i.i

for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge:        ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2.i.i.i

if.end.2.i.i.i:                                   ; preds = %for.inc.1.i.i.i
  %bf.clear.2.i.i.i = and i16 %bf.load.2.i.i.i, 2047
  %conv.2.i.i.i = zext i16 %bf.clear.2.i.i.i to i32
  %and.2.i.i.i = and i32 %conv.2.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.i.i)
  %tobool4.not.2.i.i.i = icmp eq i32 %and.2.i.i.i, 0
  br i1 %tobool4.not.2.i.i.i, label %if.end.2.i.i.i.ath_lookup_rate.exit.i.i_crit_edge, label %if.end6.2.i.i.i

if.end.2.i.i.i.ath_lookup_rate.exit.i.i_crit_edge: ; preds = %if.end.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_lookup_rate.exit.i.i

if.end6.2.i.i.i:                                  ; preds = %if.end.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and12.2.i.i.i = lshr i32 %conv.2.i.i.i, 4
  %78 = and i32 %and12.2.i.i.i, 2
  %79 = lshr i16 %bf.load.2.i.i.i, 7
  %80 = and i16 %79, 1
  %81 = zext i16 %80 to i32
  %82 = or i32 %78, %81
  %83 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx.2.i.i.i, align 1
  %idxprom.2.i.i.i = sext i8 %84 to i32
  %arrayidx28.2.i.i.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 7, i32 %53, i32 %82, i32 %idxprom.2.i.i.i
  %85 = ptrtoint ptr %arrayidx28.2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx28.2.i.i.i, align 2
  %conv29.2.i.i.i = zext i16 %86 to i32
  %87 = call i32 @llvm.umin.i32(i32 %max_4ms_framelen.1.ph.1.i.i.i, i32 %conv29.2.i.i.i) #11
  br label %for.inc.2.i.i.i

for.inc.2.i.i.i:                                  ; preds = %if.end6.2.i.i.i, %for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge
  %max_4ms_framelen.1.ph.2.i.i.i = phi i32 [ %max_4ms_framelen.1.ph.1.i.i.i, %for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge ], [ %87, %if.end6.2.i.i.i ]
  %arrayidx.3.i.i.i = getelementptr %struct.ath_buf, ptr %24, i32 0, i32 7, i32 3
  %count.3.i.i.i = getelementptr %struct.ath_buf, ptr %24, i32 0, i32 7, i32 3, i32 1
  %88 = ptrtoint ptr %count.3.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %bf.load.3.i.i.i = load i16, ptr %count.3.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %bf.load.3.i.i.i)
  %tobool.not.3.i.i.i = icmp ult i16 %bf.load.3.i.i.i, 2048
  br i1 %tobool.not.3.i.i.i, label %for.inc.2.i.i.i.for.inc.3.i.i.i_crit_edge, label %if.end.3.i.i.i

for.inc.2.i.i.i.for.inc.3.i.i.i_crit_edge:        ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3.i.i.i

if.end.3.i.i.i:                                   ; preds = %for.inc.2.i.i.i
  %bf.clear.3.i.i.i = and i16 %bf.load.3.i.i.i, 2047
  %conv.3.i.i.i = zext i16 %bf.clear.3.i.i.i to i32
  %and.3.i.i.i = and i32 %conv.3.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.i.i)
  %tobool4.not.3.i.i.i = icmp eq i32 %and.3.i.i.i, 0
  br i1 %tobool4.not.3.i.i.i, label %if.end.3.i.i.i.ath_lookup_rate.exit.i.i_crit_edge, label %if.end6.3.i.i.i

if.end.3.i.i.i.ath_lookup_rate.exit.i.i_crit_edge: ; preds = %if.end.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_lookup_rate.exit.i.i

if.end6.3.i.i.i:                                  ; preds = %if.end.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and12.3.i.i.i = lshr i32 %conv.3.i.i.i, 4
  %89 = and i32 %and12.3.i.i.i, 2
  %90 = lshr i16 %bf.load.3.i.i.i, 7
  %91 = and i16 %90, 1
  %92 = zext i16 %91 to i32
  %93 = or i32 %89, %92
  %94 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx.3.i.i.i, align 1
  %idxprom.3.i.i.i = sext i8 %95 to i32
  %arrayidx28.3.i.i.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 7, i32 %53, i32 %93, i32 %idxprom.3.i.i.i
  %96 = ptrtoint ptr %arrayidx28.3.i.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %arrayidx28.3.i.i.i, align 2
  %conv29.3.i.i.i = zext i16 %97 to i32
  %98 = call i32 @llvm.umin.i32(i32 %max_4ms_framelen.1.ph.2.i.i.i, i32 %conv29.3.i.i.i) #11
  br label %for.inc.3.i.i.i

for.inc.3.i.i.i:                                  ; preds = %if.end6.3.i.i.i, %for.inc.2.i.i.i.for.inc.3.i.i.i_crit_edge
  %max_4ms_framelen.1.ph.3.i.i.i = phi i32 [ %max_4ms_framelen.1.ph.2.i.i.i, %for.inc.2.i.i.i.for.inc.3.i.i.i_crit_edge ], [ %98, %if.end6.3.i.i.i ]
  %99 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %cb.i.i.i.i, align 8
  %and34.i.i.i = and i32 %100, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i.i.i)
  %tobool35.not.i.i.i = icmp eq i32 %and34.i.i.i, 0
  br i1 %tobool35.not.i.i.i, label %if.end39.i.i.i, label %for.inc.3.i.i.i.ath_lookup_rate.exit.i.i_crit_edge

for.inc.3.i.i.i.ath_lookup_rate.exit.i.i_crit_edge: ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_lookup_rate.exit.i.i

if.end39.i.i.i:                                   ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv47.i.i.i = trunc i32 %max_4ms_framelen.1.ph.3.i.i.i to i16
  %call48.i.i.i = call zeroext i16 @ath9k_btcoex_aggr_limit(ptr noundef %sc, i32 noundef %max_4ms_framelen.1.ph.3.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call48.i.i.i)
  %tobool49.not.i.i.i = icmp eq i16 %call48.i.i.i, 0
  %aggr_limit.0.i.i.i = select i1 %tobool49.not.i.i.i, i16 %conv47.i.i.i, i16 %call48.i.i.i
  %101 = ptrtoint ptr %an.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %an.i, align 4
  %maxampdu.i.i.i = getelementptr inbounds %struct.ath_node, ptr %102, i32 0, i32 3
  %103 = ptrtoint ptr %maxampdu.i.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %maxampdu.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %tobool52.not.i.i.i = icmp eq i16 %104, 0
  %105 = call i16 @llvm.umin.i16(i16 %aggr_limit.0.i.i.i, i16 %104) #11
  %aggr_limit.1.i.i.i = select i1 %tobool52.not.i.i.i, i16 %aggr_limit.0.i.i.i, i16 %105
  %conv69.i.i.i = zext i16 %aggr_limit.1.i.i.i to i32
  br label %ath_lookup_rate.exit.i.i

ath_lookup_rate.exit.i.i:                         ; preds = %if.end39.i.i.i, %for.inc.3.i.i.i.ath_lookup_rate.exit.i.i_crit_edge, %if.end.3.i.i.i.ath_lookup_rate.exit.i.i_crit_edge, %if.end.2.i.i.i.ath_lookup_rate.exit.i.i_crit_edge, %if.end.1.i.i.i.ath_lookup_rate.exit.i.i_crit_edge, %if.end.i.i.i.ath_lookup_rate.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %conv69.i.i.i, %if.end39.i.i.i ], [ 0, %for.inc.3.i.i.i.ath_lookup_rate.exit.i.i_crit_edge ], [ 0, %if.end.3.i.i.i.ath_lookup_rate.exit.i.i_crit_edge ], [ 0, %if.end.2.i.i.i.ath_lookup_rate.exit.i.i_crit_edge ], [ 0, %if.end.1.i.i.i.ath_lookup_rate.exit.i.i_crit_edge ], [ 0, %if.end.i.i.i.ath_lookup_rate.exit.i.i_crit_edge ]
  %conv17.i.i = zext i16 %48 to i32
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end49.i.i.while.cond.i.i_crit_edge, %ath_lookup_rate.exit.i.i
  %bf_prev.0.i.i = phi ptr [ null, %ath_lookup_rate.exit.i.i ], [ %107, %if.end49.i.i.while.cond.i.i_crit_edge ]
  %nframes.0.i.i = phi i32 [ 0, %ath_lookup_rate.exit.i.i ], [ %inc.i.i, %if.end49.i.i.while.cond.i.i_crit_edge ]
  %al.0.i.i = phi i16 [ 0, %ath_lookup_rate.exit.i.i ], [ %add35.i.i, %if.end49.i.i.while.cond.i.i_crit_edge ]
  %bpad.0.i.i = phi i16 [ 0, %ath_lookup_rate.exit.i.i ], [ %conv43.i.i, %if.end49.i.i.while.cond.i.i_crit_edge ]
  %106 = ptrtoint ptr %bf.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %bf.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %107, null
  br i1 %tobool.not.i.i, label %while.cond.i.i.finish.i.i_crit_edge, label %while.body.i.i

while.cond.i.i.finish.i.i_crit_edge:              ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %finish.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %bf_mpdu.i.i = getelementptr inbounds %struct.ath_buf, ptr %107, i32 0, i32 3
  %108 = ptrtoint ptr %bf_mpdu.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %bf_mpdu.i.i, align 4
  %framelen.i.i = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 3, i32 28
  %110 = ptrtoint ptr %framelen.i.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %framelen.i.i, align 4
  %add.i.i = add i16 %111, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nframes.0.i.i)
  %tobool6.not.i.i = icmp eq i32 %nframes.0.i.i, 0
  br i1 %tobool6.not.i.i, label %while.body.i.i.if.end30.i.i_crit_edge, label %if.then.i.i

while.body.i.i.if.end30.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  %conv8.i.i = zext i16 %al.0.i.i to i32
  %conv9.i.i = zext i16 %bpad.0.i.i to i32
  %add10.i.i = add nuw nsw i32 %conv9.i.i, %conv8.i.i
  %conv11.i.i = zext i16 %add.i.i to i32
  %add12.i.i = add nuw nsw i32 %add10.i.i, %conv11.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %add12.i.i)
  %cmp.i.i = icmp ult i32 %retval.0.i.i.i, %add12.i.i
  br i1 %cmp.i.i, label %if.then.i.i.stop.i.i_crit_edge, label %lor.lhs.false.i.i

if.then.i.i.stop.i.i_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stop.i.i

lor.lhs.false.i.i:                                ; preds = %if.then.i.i
  %count.i94.i.i = getelementptr %struct.sk_buff, ptr %109, i32 0, i32 3, i32 9
  %112 = ptrtoint ptr %count.i94.i.i to i32
  call void @__asan_loadN_noabort(i32 %112, i32 2)
  %bf.load.i95.i.i = load i16, ptr %count.i94.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %bf.load.i95.i.i)
  %tobool.not.i96.i.i = icmp ult i16 %bf.load.i95.i.i, 2048
  br i1 %tobool.not.i96.i.i, label %lor.lhs.false.i.i.ath_lookup_legacy.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i

lor.lhs.false.i.i.ath_lookup_legacy.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_lookup_legacy.exit.i.i

for.cond.i.i.i:                                   ; preds = %if.end.i112.i.i
  %count.1.i97.i.i = getelementptr %struct.sk_buff, ptr %109, i32 0, i32 3, i32 12
  %113 = ptrtoint ptr %count.1.i97.i.i to i32
  call void @__asan_loadN_noabort(i32 %113, i32 2)
  %bf.load.1.i98.i.i = load i16, ptr %count.1.i97.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %bf.load.1.i98.i.i)
  %tobool.not.1.i99.i.i = icmp ult i16 %bf.load.1.i98.i.i, 2048
  br i1 %tobool.not.1.i99.i.i, label %for.cond.i.i.i.ath_lookup_legacy.exit.i.i_crit_edge, label %lor.lhs.false.1.i.i.i

for.cond.i.i.i.ath_lookup_legacy.exit.i.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_lookup_legacy.exit.i.i

lor.lhs.false.1.i.i.i:                            ; preds = %for.cond.i.i.i
  %arrayidx.1.i100.i.i = getelementptr %struct.sk_buff, ptr %109, i32 0, i32 3, i32 11
  %114 = ptrtoint ptr %arrayidx.1.i100.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx.1.i100.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %cmp3.1.i.i.i = icmp slt i8 %115, 0
  br i1 %cmp3.1.i.i.i, label %lor.lhs.false.1.i.i.i.ath_lookup_legacy.exit.i.i_crit_edge, label %if.end.1.i101.i.i

lor.lhs.false.1.i.i.i.ath_lookup_legacy.exit.i.i_crit_edge: ; preds = %lor.lhs.false.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_lookup_legacy.exit.i.i

if.end.1.i101.i.i:                                ; preds = %lor.lhs.false.1.i.i.i
  %116 = and i16 %bf.load.1.i98.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %tobool8.not.1.i.i.i = icmp eq i16 %116, 0
  br i1 %tobool8.not.1.i.i.i, label %if.end.1.i101.i.i.stop.i.i_crit_edge, label %for.cond.1.i.i.i

if.end.1.i101.i.i.stop.i.i_crit_edge:             ; preds = %if.end.1.i101.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stop.i.i

for.cond.1.i.i.i:                                 ; preds = %if.end.1.i101.i.i
  %count.2.i102.i.i = getelementptr %struct.sk_buff, ptr %109, i32 0, i32 3, i32 15
  %117 = ptrtoint ptr %count.2.i102.i.i to i32
  call void @__asan_loadN_noabort(i32 %117, i32 2)
  %bf.load.2.i103.i.i = load i16, ptr %count.2.i102.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %bf.load.2.i103.i.i)
  %tobool.not.2.i104.i.i = icmp ult i16 %bf.load.2.i103.i.i, 2048
  br i1 %tobool.not.2.i104.i.i, label %for.cond.1.i.i.i.ath_lookup_legacy.exit.i.i_crit_edge, label %lor.lhs.false.2.i.i.i

for.cond.1.i.i.i.ath_lookup_legacy.exit.i.i_crit_edge: ; preds = %for.cond.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_lookup_legacy.exit.i.i

lor.lhs.false.2.i.i.i:                            ; preds = %for.cond.1.i.i.i
  %arrayidx.2.i105.i.i = getelementptr %struct.sk_buff, ptr %109, i32 0, i32 3, i32 14
  %118 = ptrtoint ptr %arrayidx.2.i105.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx.2.i105.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %cmp3.2.i.i.i = icmp slt i8 %119, 0
  br i1 %cmp3.2.i.i.i, label %lor.lhs.false.2.i.i.i.ath_lookup_legacy.exit.i.i_crit_edge, label %if.end.2.i106.i.i

lor.lhs.false.2.i.i.i.ath_lookup_legacy.exit.i.i_crit_edge: ; preds = %lor.lhs.false.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_lookup_legacy.exit.i.i

if.end.2.i106.i.i:                                ; preds = %lor.lhs.false.2.i.i.i
  %120 = and i16 %bf.load.2.i103.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %120)
  %tobool8.not.2.i.i.i = icmp eq i16 %120, 0
  br i1 %tobool8.not.2.i.i.i, label %if.end.2.i106.i.i.stop.i.i_crit_edge, label %for.cond.2.i.i.i

if.end.2.i106.i.i.stop.i.i_crit_edge:             ; preds = %if.end.2.i106.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stop.i.i

for.cond.2.i.i.i:                                 ; preds = %if.end.2.i106.i.i
  %count.3.i107.i.i = getelementptr %struct.sk_buff, ptr %109, i32 0, i32 3, i32 18
  %121 = ptrtoint ptr %count.3.i107.i.i to i32
  call void @__asan_loadN_noabort(i32 %121, i32 2)
  %bf.load.3.i108.i.i = load i16, ptr %count.3.i107.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %bf.load.3.i108.i.i)
  %tobool.not.3.i109.i.i = icmp ult i16 %bf.load.3.i108.i.i, 2048
  br i1 %tobool.not.3.i109.i.i, label %for.cond.2.i.i.i.ath_lookup_legacy.exit.i.i_crit_edge, label %lor.lhs.false.3.i.i.i

for.cond.2.i.i.i.ath_lookup_legacy.exit.i.i_crit_edge: ; preds = %for.cond.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_lookup_legacy.exit.i.i

lor.lhs.false.3.i.i.i:                            ; preds = %for.cond.2.i.i.i
  %arrayidx.3.i110.i.i = getelementptr %struct.sk_buff, ptr %109, i32 0, i32 3, i32 17
  %122 = ptrtoint ptr %arrayidx.3.i110.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx.3.i110.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %cmp3.3.i.i.i = icmp slt i8 %123, 0
  br i1 %cmp3.3.i.i.i, label %lor.lhs.false.3.i.i.i.ath_lookup_legacy.exit.i.i_crit_edge, label %if.end.3.i111.i.i

lor.lhs.false.3.i.i.i.ath_lookup_legacy.exit.i.i_crit_edge: ; preds = %lor.lhs.false.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_lookup_legacy.exit.i.i

if.end.3.i111.i.i:                                ; preds = %lor.lhs.false.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %124 = and i16 %bf.load.3.i108.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %124)
  %tobool8.not.3.i.i.i = icmp eq i16 %124, 0
  br label %ath_lookup_legacy.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %lor.lhs.false.i.i
  %125 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 3, i32 8
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %125, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %cmp3.i.i.i = icmp slt i8 %127, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.ath_lookup_legacy.exit.i.i_crit_edge, label %if.end.i112.i.i

lor.lhs.false.i.i.i.ath_lookup_legacy.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_lookup_legacy.exit.i.i

if.end.i112.i.i:                                  ; preds = %lor.lhs.false.i.i.i
  %128 = and i16 %bf.load.i95.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %128)
  %tobool8.not.i.i.i = icmp eq i16 %128, 0
  br i1 %tobool8.not.i.i.i, label %if.end.i112.i.i.stop.i.i_crit_edge, label %for.cond.i.i.i

if.end.i112.i.i.stop.i.i_crit_edge:               ; preds = %if.end.i112.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stop.i.i

ath_lookup_legacy.exit.i.i:                       ; preds = %lor.lhs.false.i.i.i.ath_lookup_legacy.exit.i.i_crit_edge, %if.end.3.i111.i.i, %lor.lhs.false.3.i.i.i.ath_lookup_legacy.exit.i.i_crit_edge, %for.cond.2.i.i.i.ath_lookup_legacy.exit.i.i_crit_edge, %lor.lhs.false.2.i.i.i.ath_lookup_legacy.exit.i.i_crit_edge, %for.cond.1.i.i.i.ath_lookup_legacy.exit.i.i_crit_edge, %lor.lhs.false.1.i.i.i.ath_lookup_legacy.exit.i.i_crit_edge, %for.cond.i.i.i.ath_lookup_legacy.exit.i.i_crit_edge, %lor.lhs.false.i.i.ath_lookup_legacy.exit.i.i_crit_edge
  %retval.0.i113.i.i = phi i1 [ false, %lor.lhs.false.i.i.ath_lookup_legacy.exit.i.i_crit_edge ], [ false, %lor.lhs.false.i.i.i.ath_lookup_legacy.exit.i.i_crit_edge ], [ false, %for.cond.i.i.i.ath_lookup_legacy.exit.i.i_crit_edge ], [ false, %lor.lhs.false.1.i.i.i.ath_lookup_legacy.exit.i.i_crit_edge ], [ false, %for.cond.1.i.i.i.ath_lookup_legacy.exit.i.i_crit_edge ], [ false, %lor.lhs.false.2.i.i.i.ath_lookup_legacy.exit.i.i_crit_edge ], [ false, %for.cond.2.i.i.i.ath_lookup_legacy.exit.i.i_crit_edge ], [ false, %lor.lhs.false.3.i.i.i.ath_lookup_legacy.exit.i.i_crit_edge ], [ %tobool8.not.3.i.i.i, %if.end.3.i111.i.i ]
  %call14.not.i.i = xor i1 %retval.0.i113.i.i, true
  call void @__sanitizer_cov_trace_cmp4(i32 %nframes.0.i.i, i32 %conv17.i.i)
  %cmp18.not.i.i = icmp slt i32 %nframes.0.i.i, %conv17.i.i
  %or.cond.i.i = select i1 %call14.not.i.i, i1 %cmp18.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i.i, label %ath_lookup_legacy.exit.i.i.stop.i.i_crit_edge

ath_lookup_legacy.exit.i.i.stop.i.i_crit_edge:    ; preds = %ath_lookup_legacy.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stop.i.i

if.end.i.i:                                       ; preds = %ath_lookup_legacy.exit.i.i
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 3
  %129 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %cb.i.i.i, align 8
  %131 = and i32 %130, 4160
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %131)
  %.not.i.i = icmp eq i32 %131, 64
  br i1 %.not.i.i, label %if.end.i.i.if.end30.i.i_crit_edge, label %if.end.i.i.stop.i.i_crit_edge

if.end.i.i.stop.i.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %stop.i.i

if.end.i.i.if.end30.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.end.i.i.if.end30.i.i_crit_edge, %while.body.i.i.if.end30.i.i_crit_edge
  %add33.i.i = add i16 %bpad.0.i.i, %al.0.i.i
  %add35.i.i = add i16 %add33.i.i, %add.i.i
  %132 = ptrtoint ptr %bf_mpdu.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %bf_mpdu.i, align 4
  %conv.i115.i.i = zext i16 %111 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %111)
  %cmp.i.i.i = icmp ugt i16 %111, 255
  %sub3.i.i.i = sub nsw i32 259, %conv.i115.i.i
  %div.i.i.i = sdiv i32 %sub3.i.i.i, 4
  %cond.i.i.i = select i1 %cmp.i.i.i, i32 0, i32 %div.i.i.i
  %keyix.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %133, i32 0, i32 3, i32 31
  %134 = ptrtoint ptr %keyix.i.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %keyix.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %135)
  %cmp5.not.i.i.i = icmp eq i8 %135, -1
  br i1 %cmp5.not.i.i.i, label %if.end30.i.i.if.end.i118.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end30.i.i.if.end.i118.i.i_crit_edge:           ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i118.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %136 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %sc_ah, align 4
  %caps.i.i.i = getelementptr inbounds %struct.ath_hw, ptr %137, i32 0, i32 6
  %138 = ptrtoint ptr %caps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %caps.i.i.i, align 4
  %and.i116.i.i = and i32 %139, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i116.i.i)
  %tobool.not.i117.i.i = icmp eq i32 %and.i116.i.i, 0
  %add7.i.i.i = add nsw i32 %cond.i.i.i, 10
  %spec.select.i.i.i = select i1 %tobool.not.i117.i.i, i32 %add7.i.i.i, i32 %cond.i.i.i
  br label %if.end.i118.i.i

if.end.i118.i.i:                                  ; preds = %land.lhs.true.i.i.i, %if.end30.i.i.if.end.i118.i.i_crit_edge
  %ndelim.0.i.i.i = phi i32 [ %cond.i.i.i, %if.end30.i.i.if.end.i118.i.i_crit_edge ], [ %spec.select.i.i.i, %land.lhs.true.i.i.i ]
  br i1 %tobool6.not.i.i, label %land.lhs.true10.i.i.i, label %if.end.i118.i.i.if.end31.i.i.i_crit_edge

if.end.i118.i.i.if.end31.i.i.i_crit_edge:         ; preds = %if.end.i118.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i.i.i

land.lhs.true10.i.i.i:                            ; preds = %if.end.i118.i.i
  %140 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %sc_ah, align 4
  %macVersion.i.i.i = getelementptr inbounds %struct.ath_hw, ptr %141, i32 0, i32 4, i32 3
  %142 = ptrtoint ptr %macVersion.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %macVersion.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 448, i32 %143)
  %cmp12.i.i.i = icmp eq i32 %143, 448
  br i1 %cmp12.i.i.i, label %land.lhs.true14.i.i.i, label %land.lhs.true10.i.i.i.land.lhs.true20.i.i.i_crit_edge

land.lhs.true10.i.i.i.land.lhs.true20.i.i.i_crit_edge: ; preds = %land.lhs.true10.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true20.i.i.i

land.lhs.true14.i.i.i:                            ; preds = %land.lhs.true10.i.i.i
  %macRev.i.i.i = getelementptr inbounds %struct.ath_hw, ptr %141, i32 0, i32 4, i32 4
  %144 = ptrtoint ptr %macRev.i.i.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %macRev.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %145)
  %cmp18.i.i.i = icmp ugt i16 %145, 3
  br i1 %cmp18.i.i.i, label %land.lhs.true14.i.i.i.if.end31.i.i.i_crit_edge, label %land.lhs.true14.i.i.i.land.lhs.true20.i.i.i_crit_edge

land.lhs.true14.i.i.i.land.lhs.true20.i.i.i_crit_edge: ; preds = %land.lhs.true14.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true20.i.i.i

land.lhs.true14.i.i.i.if.end31.i.i.i_crit_edge:   ; preds = %land.lhs.true14.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i.i.i

land.lhs.true20.i.i.i:                            ; preds = %land.lhs.true14.i.i.i.land.lhs.true20.i.i.i_crit_edge, %land.lhs.true10.i.i.i.land.lhs.true20.i.i.i_crit_edge
  %ent_mode.i.i.i = getelementptr inbounds %struct.ath_hw, ptr %141, i32 0, i32 126
  %146 = ptrtoint ptr %ent_mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %ent_mode.i.i.i, align 4
  %and22.i.i.i = and i32 %147, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i.i.i)
  %tobool23.not.i.i.i = icmp eq i32 %and22.i.i.i, 0
  %148 = call i32 @llvm.smax.i32(i32 %ndelim.0.i.i.i, i32 60) #11
  %spec.select127.i.i.i = select i1 %tobool23.not.i.i.i, i32 %ndelim.0.i.i.i, i32 %148
  br label %if.end31.i.i.i

if.end31.i.i.i:                                   ; preds = %land.lhs.true20.i.i.i, %land.lhs.true14.i.i.i.if.end31.i.i.i_crit_edge, %if.end.i118.i.i.if.end31.i.i.i_crit_edge
  %ndelim.1.i.i.i = phi i32 [ %ndelim.0.i.i.i, %land.lhs.true14.i.i.i.if.end31.i.i.i_crit_edge ], [ %ndelim.0.i.i.i, %if.end.i118.i.i.if.end31.i.i.i_crit_edge ], [ %spec.select127.i.i.i, %land.lhs.true20.i.i.i ]
  %149 = ptrtoint ptr %an.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %an.i, align 4
  %mpdudensity.i.i.i = getelementptr inbounds %struct.ath_node, ptr %150, i32 0, i32 4
  %151 = ptrtoint ptr %mpdudensity.i.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %mpdudensity.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %cmp33.i.i.i = icmp eq i8 %152, 0
  br i1 %cmp33.i.i.i, label %if.end31.i.i.i.ath_compute_num_delims.exit.i.i_crit_edge, label %if.end36.i.i.i

if.end31.i.i.i.ath_compute_num_delims.exit.i.i_crit_edge: ; preds = %if.end31.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_compute_num_delims.exit.i.i

if.end36.i.i.i:                                   ; preds = %if.end31.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %153 = ptrtoint ptr %rates1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %rates1.i.i.i, align 4
  %155 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %155, i32 2)
  %bf.load.i120.i.i = load i16, ptr %count.i.i.i, align 1
  %156 = and i16 %bf.load.i120.i.i, 255
  %conv41.i.i.i = zext i16 %156 to i32
  %and42.i.i.i = lshr i32 %conv41.i.i.i, 5
  %and42.lobit.i.i.i = and i32 %and42.i.i.i, 1
  %and46.i.i.i = and i32 %conv41.i.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i.i.i)
  %tobool47.not.i.i.i = icmp eq i32 %and46.i.i.i, 0
  %157 = zext i8 %152 to i16
  %158 = mul nuw nsw i16 %157, 5
  %div55.lhs.trunc.i.i.i = add nsw i16 %158, -4
  %div55126128.i.i.i = udiv i16 %div55.lhs.trunc.i.i.i, 18
  %159 = zext i16 %div55126128.i.i.i to i32
  %160 = lshr i8 %152, 2
  %161 = zext i8 %160 to i32
  %nsymbols.0.i.i.i = select i1 %tobool47.not.i.i.i, i32 %161, i32 %159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nsymbols.0.i.i.i)
  %cmp60.i.i.i = icmp eq i32 %nsymbols.0.i.i.i, 0
  %spec.store.select.i.i.i = select i1 %cmp60.i.i.i, i32 1, i32 %nsymbols.0.i.i.i
  %conv64.i.i.i = zext i8 %154 to i32
  %and65.i.i.i = lshr i32 %conv64.i.i.i, 3
  %162 = and i32 %and65.i.i.i, 15
  %add67.i.i.i = add nuw nsw i32 %162, 1
  %rem.i.i.i = and i32 %conv64.i.i.i, 7
  %arrayidx70.i.i.i = getelementptr [8 x [2 x i16]], ptr @bits_per_symbol, i32 0, i32 %rem.i.i.i, i32 %and42.lobit.i.i.i
  %163 = ptrtoint ptr %arrayidx70.i.i.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %arrayidx70.i.i.i, align 2
  %conv71.i.i.i = zext i16 %164 to i32
  %mul72.i.i.i = mul nuw nsw i32 %add67.i.i.i, %conv71.i.i.i
  %mul73.i.i.i = mul nuw nsw i32 %mul72.i.i.i, %spec.store.select.i.i.i
  %div74125.i.i.i = lshr i32 %mul73.i.i.i, 3
  %conv77.i.i.i = and i32 %div74125.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv77.i.i.i, i32 %conv.i115.i.i)
  %cmp78.i.i.i = icmp ugt i32 %conv77.i.i.i, %conv.i115.i.i
  %sub83.i.i.i = sub nsw i32 %conv77.i.i.i, %conv.i115.i.i
  %div84.i.i.i = sdiv i32 %sub83.i.i.i, 4
  %165 = call i32 @llvm.smax.i32(i32 %div84.i.i.i, i32 %ndelim.1.i.i.i) #11
  %ndelim.2.i.i.i = select i1 %cmp78.i.i.i, i32 %165, i32 %ndelim.1.i.i.i
  br label %ath_compute_num_delims.exit.i.i

ath_compute_num_delims.exit.i.i:                  ; preds = %if.end36.i.i.i, %if.end31.i.i.i.ath_compute_num_delims.exit.i.i_crit_edge
  %retval.0.i121.i.i = phi i32 [ %ndelim.2.i.i.i, %if.end36.i.i.i ], [ %ndelim.1.i.i.i, %if.end31.i.i.i.ath_compute_num_delims.exit.i.i_crit_edge ]
  %narrow.i.i = sub i16 0, %111
  %166 = and i16 %narrow.i.i, 3
  %call39.tr.i.i = trunc i32 %retval.0.i121.i.i to i16
  %167 = shl i16 %call39.tr.i.i, 2
  %conv43.i.i = or i16 %167, %166
  %inc.i.i = add i32 %nframes.0.i.i, 1
  %bf_next.i.i = getelementptr inbounds %struct.ath_buf, ptr %107, i32 0, i32 2
  %168 = ptrtoint ptr %bf_next.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr null, ptr %bf_next.i.i, align 4
  %conv44.i.i = trunc i32 %retval.0.i121.i.i to i8
  %ndelim45.i.i = getelementptr inbounds %struct.ath_buf, ptr %107, i32 0, i32 8, i32 2
  %169 = ptrtoint ptr %ndelim45.i.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %conv44.i.i, ptr %ndelim45.i.i, align 2
  %170 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %19, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %107, ptr noundef %171, ptr noundef nonnull %bf_q.i) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %ath_compute_num_delims.exit.i.i.list_add_tail.exit.i.i_crit_edge

ath_compute_num_delims.exit.i.i.list_add_tail.exit.i.i_crit_edge: ; preds = %ath_compute_num_delims.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %ath_compute_num_delims.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %172 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %107, ptr %19, align 4
  %173 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %bf_q.i, ptr %107, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %107, i32 0, i32 1
  %174 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %171, ptr %prev3.i.i.i.i, align 4
  %175 = ptrtoint ptr %171 to i32
  call void @__asan_store4_noabort(i32 %175)
  store volatile ptr %107, ptr %171, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %ath_compute_num_delims.exit.i.i.list_add_tail.exit.i.i_crit_edge
  %tobool46.not.i.i = icmp eq ptr %bf_prev.0.i.i, null
  br i1 %tobool46.not.i.i, label %list_add_tail.exit.i.i.if.end49.i.i_crit_edge, label %if.then47.i.i

list_add_tail.exit.i.i.if.end49.i.i_crit_edge:    ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.i.i

if.then47.i.i:                                    ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf_next48.i.i = getelementptr inbounds %struct.ath_buf, ptr %bf_prev.0.i.i, i32 0, i32 2
  %176 = ptrtoint ptr %bf_next48.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %107, ptr %bf_next48.i.i, align 4
  br label %if.end49.i.i

if.end49.i.i:                                     ; preds = %if.then47.i.i, %list_add_tail.exit.i.i.if.end49.i.i_crit_edge
  %call50.i.i = call fastcc i32 @ath_tx_get_tid_subframe(ptr noundef %sc, ptr noundef %txq, ptr noundef %drv_priv, ptr noundef nonnull %bf.i.i) #11
  %cmp51.i.i = icmp slt i32 %call50.i.i, 0
  br i1 %cmp51.i.i, label %if.end49.i.i.finish.i.i_crit_edge, label %if.end49.i.i.while.cond.i.i_crit_edge

if.end49.i.i.while.cond.i.i_crit_edge:            ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i

if.end49.i.i.finish.i.i_crit_edge:                ; preds = %if.end49.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %finish.i.i

stop.i.i:                                         ; preds = %if.end.i.i.stop.i.i_crit_edge, %ath_lookup_legacy.exit.i.i.stop.i.i_crit_edge, %if.end.i112.i.i.stop.i.i_crit_edge, %if.end.2.i106.i.i.stop.i.i_crit_edge, %if.end.1.i101.i.i.stop.i.i_crit_edge, %if.then.i.i.stop.i.i_crit_edge
  %retry_q.i.i = getelementptr inbounds %struct.ieee80211_txq, ptr %call1161, i32 1, i32 2
  %prev.i.i.i.i = getelementptr inbounds %struct.ieee80211_txq, ptr %call1161, i32 2
  %177 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %prev.i.i.i.i, align 4
  %179 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %179)
  store volatile ptr %retry_q.i.i, ptr %109, align 8
  %prev10.i.i.i.i.i = getelementptr inbounds %struct.anon.41, ptr %109, i32 0, i32 1
  %180 = ptrtoint ptr %prev10.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store volatile ptr %178, ptr %prev10.i.i.i.i.i, align 4
  store volatile ptr %109, ptr %prev.i.i.i.i, align 4
  %181 = ptrtoint ptr %178 to i32
  call void @__asan_store4_noabort(i32 %181)
  store volatile ptr %109, ptr %178, align 4
  %qlen.i.i.i.i.i = getelementptr inbounds %struct.ieee80211_txq, ptr %call1161, i32 2, i32 1
  %182 = ptrtoint ptr %qlen.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %qlen.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %183, 1
  store volatile i32 %add.i.i.i.i.i, ptr %qlen.i.i.i.i.i, align 4
  br label %finish.i.i

finish.i.i:                                       ; preds = %stop.i.i, %if.end49.i.i.finish.i.i_crit_edge, %while.cond.i.i.finish.i.i_crit_edge
  %bf_prev.1.i.i = phi ptr [ %bf_prev.0.i.i, %stop.i.i ], [ %bf_prev.0.i.i, %while.cond.i.i.finish.i.i_crit_edge ], [ %107, %if.end49.i.i.finish.i.i_crit_edge ]
  %al.1.i.i = phi i16 [ %al.0.i.i, %stop.i.i ], [ %al.0.i.i, %while.cond.i.i.finish.i.i_crit_edge ], [ %add35.i.i, %if.end49.i.i.finish.i.i_crit_edge ]
  %bf_lastbf.i.i = getelementptr inbounds %struct.ath_buf, ptr %24, i32 0, i32 1
  %184 = ptrtoint ptr %bf_lastbf.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %bf_prev.1.i.i, ptr %bf_lastbf.i.i, align 4
  %cmp56.i.i = icmp eq ptr %bf_prev.1.i.i, %24
  br i1 %cmp56.i.i, label %if.then58.i.i, label %do.body.i.i

if.then58.i.i:                                    ; preds = %finish.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %185 = ptrtoint ptr %bf_mpdu.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %bf_mpdu.i, align 4
  %framelen61.i.i = getelementptr inbounds %struct.sk_buff, ptr %186, i32 0, i32 3, i32 28
  %187 = ptrtoint ptr %framelen61.i.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %framelen61.i.i, align 4
  %bf_state62.i.i = getelementptr inbounds %struct.ath_buf, ptr %24, i32 0, i32 8
  %189 = ptrtoint ptr %bf_state62.i.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 1, ptr %bf_state62.i.i, align 4
  br label %ath_tx_form_aggr.exit.i

do.body.i.i:                                      ; preds = %finish.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %190 = ptrtoint ptr %axq_qnum.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %axq_qnum.i.i, align 4
  %a_aggr.i.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 1, i32 %191, i32 5
  %192 = ptrtoint ptr %a_aggr.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %a_aggr.i.i, align 4
  %inc63.i.i = add i32 %193, 1
  store i32 %inc63.i.i, ptr %a_aggr.i.i, align 4
  br label %ath_tx_form_aggr.exit.i

ath_tx_form_aggr.exit.i:                          ; preds = %do.body.i.i, %if.then58.i.i
  %al.2.i.i = phi i16 [ %188, %if.then58.i.i ], [ %al.1.i.i, %do.body.i.i ]
  %conv65.i.i = zext i16 %al.2.i.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bf.i.i) #11
  br label %if.end15.i

if.else.i:                                        ; preds = %if.end10.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bf.i56.i) #11
  %194 = ptrtoint ptr %bf.i56.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %24, ptr %bf.i56.i, align 4
  %195 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %19, align 4
  %call.i.i.i58.i = call zeroext i1 @__list_add_valid(ptr noundef %24, ptr noundef %196, ptr noundef nonnull %bf_q.i) #11
  br i1 %call.i.i.i58.i, label %if.end.i.i.i60.i, label %if.else.i.if.end.i61.i_crit_edge

if.else.i.if.end.i61.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i61.i

if.end.i.i.i60.i:                                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %197 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %24, ptr %19, align 4
  %198 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %bf_q.i, ptr %24, align 4
  %prev3.i.i.i59.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %199 = ptrtoint ptr %prev3.i.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %196, ptr %prev3.i.i.i59.i, align 4
  %200 = ptrtoint ptr %196 to i32
  call void @__asan_store4_noabort(i32 %200)
  store volatile ptr %24, ptr %196, align 4
  br label %if.end.i61.i

if.end.i61.i:                                     ; preds = %if.end.i.i.i60.i, %if.else.i.if.end.i61.i_crit_edge
  %call.i.i = call fastcc i32 @ath_tx_get_tid_subframe(ptr noundef %sc, ptr noundef %txq, ptr noundef %drv_priv, ptr noundef nonnull %bf.i56.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %if.end.i61.i.ath_tx_form_burst.exit.i_crit_edge, label %if.end5.i.i

if.end.i61.i.ath_tx_form_burst.exit.i_crit_edge:  ; preds = %if.end.i61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tx_form_burst.exit.i

if.end5.i.i:                                      ; preds = %if.end.i61.i
  %201 = ptrtoint ptr %bf.i56.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %bf.i56.i, align 4
  %bf_mpdu.i62.i = getelementptr inbounds %struct.ath_buf, ptr %202, i32 0, i32 3
  %203 = ptrtoint ptr %bf_mpdu.i62.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %bf_mpdu.i62.i, align 4
  %cb.i.i63.i = getelementptr inbounds %struct.sk_buff, ptr %204, i32 0, i32 3
  %205 = ptrtoint ptr %cb.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %cb.i.i63.i, align 8
  %and.i.i = and i32 %206, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool7.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool7.not.i.i, label %cleanup.i.i, label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %retry_q.i64.i = getelementptr inbounds %struct.ieee80211_txq, ptr %call1161, i32 1, i32 2
  %prev.i.i.i65.i = getelementptr inbounds %struct.ieee80211_txq, ptr %call1161, i32 2
  %207 = ptrtoint ptr %prev.i.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %prev.i.i.i65.i, align 4
  %209 = ptrtoint ptr %204 to i32
  call void @__asan_store4_noabort(i32 %209)
  store volatile ptr %retry_q.i64.i, ptr %204, align 8
  %prev10.i.i.i.i66.i = getelementptr inbounds %struct.anon.41, ptr %204, i32 0, i32 1
  %210 = ptrtoint ptr %prev10.i.i.i.i66.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store volatile ptr %208, ptr %prev10.i.i.i.i66.i, align 4
  store volatile ptr %204, ptr %prev.i.i.i65.i, align 4
  %211 = ptrtoint ptr %208 to i32
  call void @__asan_store4_noabort(i32 %211)
  store volatile ptr %204, ptr %208, align 4
  %qlen.i.i.i.i67.i = getelementptr inbounds %struct.ieee80211_txq, ptr %call1161, i32 2, i32 1
  %212 = ptrtoint ptr %qlen.i.i.i.i67.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %qlen.i.i.i.i67.i, align 4
  %add.i.i.i.i68.i = add i32 %213, 1
  store volatile i32 %add.i.i.i.i68.i, ptr %qlen.i.i.i.i67.i, align 4
  br label %ath_tx_form_burst.exit.i

cleanup.i.i:                                      ; preds = %if.end5.i.i
  %214 = ptrtoint ptr %an.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %an.i, align 4
  %vif.i.i = getelementptr inbounds %struct.ath_node, ptr %215, i32 0, i32 2
  %216 = ptrtoint ptr %vif.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %vif.i.i, align 4
  %sta.i.i = getelementptr inbounds %struct.ath_node, ptr %215, i32 0, i32 1
  %218 = ptrtoint ptr %sta.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %sta.i.i, align 4
  call fastcc void @ath_set_rates(ptr noundef %217, ptr noundef %219, ptr noundef %202) #11
  %220 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %19, align 4
  %call.i.i.1.i.i = call zeroext i1 @__list_add_valid(ptr noundef %202, ptr noundef %221, ptr noundef nonnull %bf_q.i) #11
  br i1 %call.i.i.1.i.i, label %if.end.i.i.1.i.i, label %cleanup.i.i.list_add_tail.exit.1.i.i_crit_edge

cleanup.i.i.list_add_tail.exit.1.i.i_crit_edge:   ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.1.i.i

if.end.i.i.1.i.i:                                 ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %222 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %202, ptr %19, align 4
  %223 = ptrtoint ptr %202 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %bf_q.i, ptr %202, align 4
  %prev3.i.i.1.i.i = getelementptr inbounds %struct.list_head, ptr %202, i32 0, i32 1
  %224 = ptrtoint ptr %prev3.i.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %221, ptr %prev3.i.i.1.i.i, align 4
  %225 = ptrtoint ptr %221 to i32
  call void @__asan_store4_noabort(i32 %225)
  store volatile ptr %202, ptr %221, align 4
  br label %list_add_tail.exit.1.i.i

list_add_tail.exit.1.i.i:                         ; preds = %if.end.i.i.1.i.i, %cleanup.i.i.list_add_tail.exit.1.i.i_crit_edge
  %tobool.not.1.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.1.i.i, label %list_add_tail.exit.1.i.i.ath_tx_form_burst.exit.i_crit_edge, label %if.then.1.i.i

list_add_tail.exit.1.i.i.ath_tx_form_burst.exit.i_crit_edge: ; preds = %list_add_tail.exit.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tx_form_burst.exit.i

if.then.1.i.i:                                    ; preds = %list_add_tail.exit.1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf_next.1.i.i = getelementptr inbounds %struct.ath_buf, ptr %24, i32 0, i32 2
  %226 = ptrtoint ptr %bf_next.1.i.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %202, ptr %bf_next.1.i.i, align 4
  br label %ath_tx_form_burst.exit.i

ath_tx_form_burst.exit.i:                         ; preds = %if.then.1.i.i, %list_add_tail.exit.1.i.i.ath_tx_form_burst.exit.i_crit_edge, %if.then8.i.i, %if.end.i61.i.ath_tx_form_burst.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bf.i56.i) #11
  br label %if.end15.i

if.end15.i:                                       ; preds = %ath_tx_form_burst.exit.i, %ath_tx_form_aggr.exit.i
  %aggr_len.0.i = phi i32 [ %conv65.i.i, %ath_tx_form_aggr.exit.i ], [ 0, %ath_tx_form_burst.exit.i ]
  %227 = ptrtoint ptr %bf_q.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load volatile ptr, ptr %bf_q.i, align 4
  %cmp.i69.not.i = icmp eq ptr %228, %bf_q.i
  br i1 %cmp.i69.not.i, label %if.end15.i.ath_tx_sched_aggr.exit_crit_edge, label %if.end19.i

if.end15.i.ath_tx_sched_aggr.exit_crit_edge:      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tx_sched_aggr.exit

if.end19.i:                                       ; preds = %if.end15.i
  %clear_ps_filter.i = getelementptr inbounds %struct.ieee80211_txq, ptr %call1161, i32 9, i32 4
  %229 = ptrtoint ptr %clear_ps_filter.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %clear_ps_filter.i, align 2, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %230)
  %tobool20.not.i = icmp eq i8 %230, 0
  br i1 %tobool20.not.i, label %lor.lhs.false21.i, label %if.end19.i.if.then24.i_crit_edge

if.end19.i.if.then24.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24.i

lor.lhs.false21.i:                                ; preds = %if.end19.i
  %231 = ptrtoint ptr %an.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %an.i, align 4
  %no_ps_filter.i = getelementptr inbounds %struct.ath_node, ptr %232, i32 0, i32 7
  %233 = ptrtoint ptr %no_ps_filter.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %no_ps_filter.i, align 1, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %234)
  %tobool23.not.i = icmp eq i8 %234, 0
  br i1 %tobool23.not.i, label %lor.lhs.false21.i.if.end27.i_crit_edge, label %lor.lhs.false21.i.if.then24.i_crit_edge

lor.lhs.false21.i.if.then24.i_crit_edge:          ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24.i

lor.lhs.false21.i.if.end27.i_crit_edge:           ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

if.then24.i:                                      ; preds = %lor.lhs.false21.i.if.then24.i_crit_edge, %if.end19.i.if.then24.i_crit_edge
  %235 = ptrtoint ptr %clear_ps_filter.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 0, ptr %clear_ps_filter.i, align 2
  %236 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %cb.i.i, align 8
  %or.i = or i32 %237, 8
  store i32 %or.i, ptr %cb.i.i, align 8
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then24.i, %lor.lhs.false21.i.if.end27.i_crit_edge
  call fastcc void @ath_tx_fill_desc(ptr noundef %sc, ptr noundef %24, ptr noundef %txq, i32 noundef %aggr_len.0.i) #11
  call fastcc void @ath_tx_txqaddbuf(ptr noundef %sc, ptr noundef %txq, ptr noundef nonnull %bf_q.i, i1 noundef zeroext false) #11
  br label %ath_tx_sched_aggr.exit

ath_tx_sched_aggr.exit:                           ; preds = %if.end27.i, %if.end15.i.ath_tx_sched_aggr.exit_crit_edge, %if.then8.i, %while.body.ath_tx_sched_aggr.exit_crit_edge
  %retval.0.i = phi i32 [ -16, %if.then8.i ], [ 0, %if.end27.i ], [ %call.i43, %while.body.ath_tx_sched_aggr.exit_crit_edge ], [ -11, %if.end15.i.ath_tx_sched_aggr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bf_q.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bf.i) #11
  %238 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %debug_mask, align 4
  %and = and i32 %239, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %ath_tx_sched_aggr.exit.do.end_crit_edge, label %if.then15

ath_tx_sched_aggr.exit.do.end_crit_edge:          ; preds = %ath_tx_sched_aggr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then15:                                        ; preds = %ath_tx_sched_aggr.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i) #11
  br label %do.end

do.end:                                           ; preds = %if.then15, %ath_tx_sched_aggr.exit.do.end_crit_edge
  %retry_q = getelementptr inbounds %struct.ieee80211_txq, ptr %call1161, i32 1, i32 2
  %240 = ptrtoint ptr %retry_q to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %retry_q, align 4
  %cmp.i46 = icmp ne ptr %241, %retry_q
  call void @ieee80211_return_txq(ptr noundef %1, ptr noundef nonnull %call1161, i1 noundef zeroext %cmp.i46) #11
  %242 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %txq, align 4
  %conv10 = trunc i32 %243 to i8
  %call11 = call ptr @ieee80211_next_txq(ptr noundef %1, i8 noundef zeroext %conv10) #11
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %do.end.out_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %do.end.out_crit_edge, %while.cond.preheader.out_crit_edge, %rcu_read_lock.exit.out_crit_edge
  %call.i47 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i47, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i50

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i50:                                ; preds = %out
  %call1.i48 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48)
  %tobool.not.i49 = icmp eq i32 %call1.i48, 0
  br i1 %tobool.not.i49, label %land.lhs.true.i50.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i52

land.lhs.true.i50.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i52:                               ; preds = %land.lhs.true.i50
  %.b4.i51 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i51, label %land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge, label %if.then.i53

land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i53:                                      ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i53, %land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i50.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !87
  %244 = call i32 @llvm.read_register.i32(metadata !75) #11
  %and.i.i.i.i.i54 = and i32 %244, -16384
  %245 = inttoptr i32 %and.i.i.i.i.i54 to ptr
  %preempt_count.i.i.i.i55 = getelementptr inbounds %struct.thread_info, ptr %245, i32 0, i32 1
  %246 = ptrtoint ptr %preempt_count.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load volatile i32, ptr %preempt_count.i.i.i.i55, align 4
  %sub.i.i.i = add i32 %247, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i55, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  call void @_raw_spin_unlock_bh(ptr noundef %chan_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ath_pkt_duration(ptr nocapture readnone %sc, i8 noundef zeroext %rix, i32 noundef %pktlen, i32 noundef %width, i32 noundef %half_gi, i1 zeroext %shortPreamble) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %rix to i32
  %and = lshr i32 %conv, 3
  %0 = and i32 %and, 15
  %add = add nuw nsw i32 %0, 1
  %shl = shl i32 %pktlen, 3
  %rem = and i32 %conv, 7
  %arrayidx3 = getelementptr [8 x [2 x i16]], ptr @bits_per_symbol, i32 0, i32 %rem, i32 %width
  %1 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx3, align 2
  %conv4 = zext i16 %2 to i32
  %mul = mul nuw nsw i32 %add, %conv4
  %add5 = add i32 %shl, 21
  %sub = add i32 %add5, %mul
  %div = udiv i32 %sub, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %half_gi)
  %tobool.not = icmp eq i32 %half_gi, 0
  %mul7 = mul i32 %div, 18
  %add8 = add i32 %mul7, 4
  %div9 = udiv i32 %add8, 5
  %shl6 = shl i32 %div, 2
  %duration.0 = select i1 %tobool.not, i32 %shl6, i32 %div9
  %mul10 = shl nuw nsw i32 %add, 2
  %add11 = add nuw nsw i32 %mul10, 32
  %add12 = add i32 %add11, %duration.0
  ret i32 %add12
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @ath_update_max_aggr_framelen(ptr nocapture noundef writeonly %sc, i32 noundef %queue, i32 noundef %txop) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %txop)
  %tobool.not = icmp eq i32 %txop, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %txop)
  %cmp = icmp sgt i32 %txop, 4096
  %or.cond = or i1 %tobool.not, %cmp
  %arrayidx = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 7, i32 %queue
  %arrayidx5 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 7, i32 %queue, i32 1
  %arrayidx10 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 7, i32 %queue, i32 2
  %arrayidx15 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 7, i32 %queue, i32 3
  %txop.op = add i32 %txop, -32
  %add2.neg.i = select i1 %or.cond, i32 4064, i32 %txop.op
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %mcs.096 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %and.i = lshr i32 %mcs.096, 3
  %0 = and i32 %and.i, 15
  %add.i = add nuw nsw i32 %0, 1
  %mul.neg.i = mul nsw i32 %add.i, -4
  %sub.i = add i32 %mul.neg.i, %add2.neg.i
  %mul3.i = mul i32 %sub.i, 5
  %sub4.i = add i32 %mul3.i, -4
  %shr5.i = ashr i32 %sub.i, 2
  %rem.i = and i32 %mcs.096, 7
  %arrayidx7.i = getelementptr [8 x [2 x i16]], ptr @bits_per_symbol, i32 0, i32 %rem.i, i32 0
  %1 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx7.i, align 2
  %conv.i = zext i16 %2 to i32
  %mul8.i = mul i32 %shr5.i, %add.i
  %mul9.i = mul i32 %mul8.i, %conv.i
  %sub10.i = add i32 %mul9.i, -22
  %div11.i = sdiv i32 %sub10.i, 8
  %3 = tail call i32 @llvm.smin.i32(i32 %div11.i, i32 65532) #11
  %conv = trunc i32 %3 to i16
  %arrayidx18 = getelementptr i16, ptr %arrayidx, i32 %mcs.096
  %4 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %arrayidx18, align 2
  %div.i55 = sdiv i32 %sub4.i, 18
  %mul8.i60 = mul nsw i32 %div.i55, %add.i
  %mul9.i61 = mul i32 %mul8.i60, %conv.i
  %sub10.i62 = add i32 %mul9.i61, -22
  %div11.i63 = sdiv i32 %sub10.i62, 8
  %5 = tail call i32 @llvm.smin.i32(i32 %div11.i63, i32 65532) #11
  %conv20 = trunc i32 %5 to i16
  %arrayidx21 = getelementptr i16, ptr %arrayidx5, i32 %mcs.096
  %6 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv20, ptr %arrayidx21, align 2
  %arrayidx7.i74 = getelementptr [8 x [2 x i16]], ptr @bits_per_symbol, i32 0, i32 %rem.i, i32 1
  %7 = ptrtoint ptr %arrayidx7.i74 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx7.i74, align 2
  %conv.i75 = zext i16 %8 to i32
  %mul9.i77 = mul i32 %mul8.i, %conv.i75
  %sub10.i78 = add i32 %mul9.i77, -22
  %div11.i79 = sdiv i32 %sub10.i78, 8
  %9 = tail call i32 @llvm.smin.i32(i32 %div11.i79, i32 65532) #11
  %conv23 = trunc i32 %9 to i16
  %arrayidx24 = getelementptr i16, ptr %arrayidx10, i32 %mcs.096
  %10 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv23, ptr %arrayidx24, align 2
  %mul9.i93 = mul i32 %mul8.i60, %conv.i75
  %sub10.i94 = add i32 %mul9.i93, -22
  %div11.i95 = sdiv i32 %sub10.i94, 8
  %11 = tail call i32 @llvm.smin.i32(i32 %div11.i95, i32 65532) #11
  %conv26 = trunc i32 %11 to i16
  %arrayidx27 = getelementptr i16, ptr %arrayidx15, i32 %mcs.096
  %12 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv26, ptr %arrayidx27, align 2
  %inc = add nuw nsw i32 %mcs.096, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath_tx_aggr_start(ptr nocapture noundef readonly %sc, ptr nocapture noundef %sta, i16 noundef zeroext %tid, ptr nocapture noundef writeonly %ssn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_mask, align 4
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ath_tx_aggr_start) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %vif2.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %vif2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vif2.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.body6.i, label %ath_node_to_tid.exit, !prof !88

do.body6.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath9k/ath9k.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #11, !srcloc !89
  unreachable

ath_node_to_tid.exit:                             ; preds = %do.end
  %conv = trunc i16 %tid to i8
  %sta1.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %sta1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sta1.i, align 4
  %tobool12.not.i = icmp eq ptr %7, null
  %8 = urem i8 %conv, 17
  %rem.i = zext i8 %8 to i32
  %arrayidx.i = getelementptr %struct.ieee80211_sta, ptr %7, i32 0, i32 28, i32 %rem.i
  %txq15.i = getelementptr inbounds %struct.ieee80211_vif, ptr %5, i32 0, i32 8
  %txq.0.in.i = select i1 %tobool12.not.i, ptr %txq15.i, ptr %arrayidx.i
  %9 = ptrtoint ptr %txq.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %txq.0.i = load ptr, ptr %txq.0.in.i, align 4
  %txq2 = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 6, i32 2
  %10 = ptrtoint ptr %txq2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %txq2, align 4
  %axq_lock.i = getelementptr inbounds %struct.ath_txq, ptr %11, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %axq_lock.i) #11
  %ht_supported = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ht_supported, align 2, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not = icmp eq i8 %13, 0
  br i1 %tobool3.not, label %ath_node_to_tid.exit.if.end10_crit_edge, label %if.then4

ath_node_to_tid.exit.if.end10_crit_edge:          ; preds = %ath_node_to_tid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then4:                                         ; preds = %ath_node_to_tid.exit
  call void @__sanitizer_cov_trace_pc() #13
  %ampdu_factor = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %ampdu_factor to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ampdu_factor, align 1
  %conv6 = zext i8 %15 to i32
  %shl = shl i32 8192, %conv6
  %16 = trunc i32 %shl to i16
  %conv7 = add i16 %16, -1
  %maxampdu = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 3
  %17 = ptrtoint ptr %maxampdu to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv7, ptr %maxampdu, align 4
  %ampdu_density = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %ampdu_density to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ampdu_density, align 4
  %call9 = tail call zeroext i8 @ath9k_parse_mpdudensity(i8 noundef zeroext %19) #11
  %mpdudensity = getelementptr inbounds %struct.ath_node, ptr %drv_priv, i32 0, i32 4
  %20 = ptrtoint ptr %mpdudensity to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %call9, ptr %mpdudensity, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.then4, %ath_node_to_tid.exit.if.end10_crit_edge
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 0, i32 5
  %active = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 9, i32 3
  %21 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %active, align 1
  %seq_next = getelementptr inbounds %struct.ath_atx_tid, ptr %drv_priv.i, i32 0, i32 6
  %22 = ptrtoint ptr %seq_next to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %seq_next, align 2
  %seq_start = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 8, i32 1
  %24 = ptrtoint ptr %seq_start to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %seq_start, align 4
  %25 = ptrtoint ptr %ssn to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %23, ptr %ssn, align 2
  %bar_index = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 9, i32 2
  %26 = ptrtoint ptr %bar_index to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %bar_index, align 4
  %tx_buf = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 7
  %27 = call ptr @memset(ptr %tx_buf, i32 0, i32 16)
  %baw_tail = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 9, i32 1
  %28 = ptrtoint ptr %baw_tail to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %baw_tail, align 4
  %baw_head = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 9
  %29 = ptrtoint ptr %baw_head to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %baw_head, align 4
  tail call void @ath_txq_unlock_complete(ptr noundef %sc, ptr noundef %11)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ath9k_parse_mpdudensity(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_tx_aggr_stop(ptr noundef %sc, ptr nocapture noundef readonly %sta, i16 noundef zeroext %tid) local_unnamed_addr #0 align 64 {
entry:
  %bf_head.i = alloca %struct.list_head, align 4
  %ts.i = alloca %struct.ath_tx_status, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %vif2.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %vif2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vif2.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body6.i, label %ath_node_to_tid.exit, !prof !88

do.body6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath9k/ath9k.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #11, !srcloc !89
  unreachable

ath_node_to_tid.exit:                             ; preds = %entry
  %conv = trunc i16 %tid to i8
  %sta1.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %sta1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sta1.i, align 4
  %tobool12.not.i = icmp eq ptr %5, null
  %6 = urem i8 %conv, 17
  %rem.i = zext i8 %6 to i32
  %arrayidx.i = getelementptr %struct.ieee80211_sta, ptr %5, i32 0, i32 28, i32 %rem.i
  %txq15.i = getelementptr inbounds %struct.ieee80211_vif, ptr %3, i32 0, i32 8
  %txq.0.in.i = select i1 %tobool12.not.i, ptr %txq15.i, ptr %arrayidx.i
  %7 = ptrtoint ptr %txq.0.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %txq.0.i = load ptr, ptr %txq.0.in.i, align 4
  %txq2 = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 6, i32 2
  %8 = ptrtoint ptr %txq2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %txq2, align 4
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug_mask, align 4
  %and = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %ath_node_to_tid.exit.do.end_crit_edge, label %if.then

ath_node_to_tid.exit.do.end_crit_edge:            ; preds = %ath_node_to_tid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %ath_node_to_tid.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ath_tx_aggr_stop) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %ath_node_to_tid.exit.do.end_crit_edge
  %axq_lock.i = getelementptr inbounds %struct.ath_txq, ptr %9, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %axq_lock.i) #11
  %active = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 9, i32 3
  %12 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %active, align 1
  %13 = ptrtoint ptr %txq2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %txq2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bf_head.i) #11
  %15 = getelementptr inbounds %struct.list_head, ptr %bf_head.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ts.i) #11
  %16 = ptrtoint ptr %bf_head.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %bf_head.i, ptr %bf_head.i, align 4
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %bf_head.i, ptr %15, align 4
  %18 = call ptr @memset(ptr %ts.i, i32 0, i32 48)
  %retry_q.i = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 1, i32 2
  %19 = ptrtoint ptr %retry_q.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %retry_q.i, align 4
  %cmp.i.i4145.i = icmp eq ptr %20, %retry_q.i
  %tobool.not.i384246.i = icmp eq ptr %20, null
  %tobool.not.i4347.i = or i1 %cmp.i.i4145.i, %tobool.not.i384246.i
  br i1 %tobool.not.i4347.i, label %do.end.ath_tx_flush_tid.exit_crit_edge, label %while.body.lr.ph.lr.ph.i

do.end.ath_tx_flush_tid.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tx_flush_tid.exit

while.body.lr.ph.lr.ph.i:                         ; preds = %do.end
  %qlen.i.i.i = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 2, i32 1
  %seq_start.i.i = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 8, i32 1
  %baw_head.i.i = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 9
  %tx_buf.i.i = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 7
  %baw_tail.i.i = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 9, i32 1
  %bar_index.i.i = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 9, i32 2
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %list_add_tail.exit.i.while.body.lr.ph.i_crit_edge, %while.body.lr.ph.lr.ph.i
  %21 = phi ptr [ %20, %while.body.lr.ph.lr.ph.i ], [ %77, %list_add_tail.exit.i.while.body.lr.ph.i_crit_edge ]
  %sendbar.0.off0.ph48.i = phi i1 [ false, %while.body.lr.ph.lr.ph.i ], [ %sendbar.1.off0.i, %list_add_tail.exit.i.while.body.lr.ph.i_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %ath_txq_skb_done.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %22 = phi ptr [ %21, %while.body.lr.ph.i ], [ %43, %ath_txq_skb_done.exit.i.while.body.i_crit_edge ]
  %23 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.41, ptr %22, i32 0, i32 1
  %27 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %22, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.41, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %28, ptr %prev17.i.i.i, align 4
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %26, ptr %28, align 8
  %rate_driver_data.i.i = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 3, i32 24
  %31 = ptrtoint ptr %rate_driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rate_driver_data.i.i, align 4
  %tobool4.not.i = icmp eq ptr %32, null
  br i1 %tobool4.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  %txq1.i.i = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 3, i32 30
  %33 = ptrtoint ptr %txq1.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %txq1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp.i.i = icmp slt i8 %34, 0
  br i1 %cmp.i.i, label %if.then.i.ath_txq_skb_done.exit.i_crit_edge, label %if.end.i.i

if.then.i.ath_txq_skb_done.exit.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_txq_skb_done.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %conv1.i.i = zext i8 %34 to i32
  %arrayidx.i.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 5, i32 %conv1.i.i
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.i, align 4
  %pending_frames.i.i = getelementptr inbounds %struct.ath_txq, ptr %36, i32 0, i32 11
  %37 = ptrtoint ptr %pending_frames.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pending_frames.i.i, align 4
  %dec.i.i = add i32 %38, -1
  store i32 %dec.i.i, ptr %pending_frames.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp3.i.i = icmp slt i32 %dec.i.i, 0
  br i1 %cmp3.i.i, label %do.end.i.i, label %if.end.i.i.ath_txq_skb_done.exit.i_crit_edge, !prof !88

if.end.i.i.ath_txq_skb_done.exit.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_txq_skb_done.exit.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 215, i32 noundef 9, ptr noundef null) #11
  %39 = ptrtoint ptr %pending_frames.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %pending_frames.i.i, align 4
  br label %ath_txq_skb_done.exit.i

ath_txq_skb_done.exit.i:                          ; preds = %do.end.i.i, %if.end.i.i.ath_txq_skb_done.exit.i_crit_edge, %if.then.i.ath_txq_skb_done.exit.i_crit_edge
  %40 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sc, align 8
  call void @ieee80211_free_txskb(ptr noundef %41, ptr noundef nonnull %22) #11
  %42 = ptrtoint ptr %retry_q.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %retry_q.i, align 4
  %cmp.i.i.i = icmp eq ptr %43, %retry_q.i
  %tobool.not.i38.i = icmp eq ptr %43, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i38.i
  br i1 %tobool.not.i.i, label %ath_txq_skb_done.exit.i.while.end.i_crit_edge, label %ath_txq_skb_done.exit.i.while.body.i_crit_edge

ath_txq_skb_done.exit.i.while.body.i_crit_edge:   ; preds = %ath_txq_skb_done.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

ath_txq_skb_done.exit.i.while.end.i_crit_edge:    ; preds = %ath_txq_skb_done.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

if.end.i:                                         ; preds = %while.body.i
  %baw_tracked.i = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 3, i32 33
  %44 = ptrtoint ptr %baw_tracked.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load.i = load i8, ptr %baw_tracked.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %tobool5.not.i = icmp eq i8 %bf.clear.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then6.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  %bf_mpdu.i.i = getelementptr inbounds %struct.ath_buf, ptr %32, i32 0, i32 3
  %45 = ptrtoint ptr %bf_mpdu.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bf_mpdu.i.i, align 4
  %baw_tracked.i.i = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 3, i32 33
  %47 = ptrtoint ptr %baw_tracked.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load.i.i = load i8, ptr %baw_tracked.i.i, align 1
  %bf.clear.i.i = and i8 %bf.load.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i.i)
  %tobool.not.i30.i = icmp eq i8 %bf.clear.i.i, 0
  br i1 %tobool.not.i30.i, label %if.then6.i.if.end7.i_crit_edge, label %if.end.i31.i

if.then6.i.if.end7.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.end.i31.i:                                     ; preds = %if.then6.i
  %seqno1.i.i = getelementptr inbounds %struct.ath_buf, ptr %32, i32 0, i32 8, i32 4
  %48 = ptrtoint ptr %seqno1.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %seqno1.i.i, align 4
  %conv.i.i = zext i16 %49 to i32
  %50 = ptrtoint ptr %seq_start.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %seq_start.i.i, align 4
  %conv2.i.i = zext i16 %51 to i32
  %sub.i.i = sub nsw i32 %conv.i.i, %conv2.i.i
  %52 = ptrtoint ptr %baw_head.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %baw_head.i.i, align 4
  %add.i.i = add i32 %sub.i.i, %53
  %rem.i.i.i = and i32 %add.i.i, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %and3.i.i = lshr i32 %add.i.i, 5
  %div2.i.i.i = and i32 %and3.i.i, 3
  %add.ptr.i.i.i = getelementptr i32, ptr %tx_buf.i.i, i32 %div2.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %54 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i.i = and i32 %55, %neg.i.i.i
  store i32 %and.i.i.i, ptr %add.ptr.i.i.i, align 4
  %56 = ptrtoint ptr %baw_tail.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %baw_tail.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %57)
  %cmp.not2.i.i = icmp eq i32 %53, %57
  br i1 %cmp.not2.i.i, label %if.end.i31.i.if.end7.i_crit_edge, label %if.end.i31.i.land.rhs.i.i_crit_edge

if.end.i31.i.land.rhs.i.i_crit_edge:              ; preds = %if.end.i31.i
  br label %land.rhs.i.i

if.end.i31.i.if.end7.i_crit_edge:                 ; preds = %if.end.i31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

land.rhs.i.i:                                     ; preds = %if.end28.i.i.land.rhs.i.i_crit_edge, %if.end.i31.i.land.rhs.i.i_crit_edge
  %58 = phi i32 [ %and20.i.i, %if.end28.i.i.land.rhs.i.i_crit_edge ], [ %53, %if.end.i31.i.land.rhs.i.i_crit_edge ]
  %div3.i.i.i = lshr i32 %58, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %tx_buf.i.i, i32 %div3.i.i.i
  %59 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i1.i.i = and i32 %58, 31
  %61 = shl nuw i32 1, %and.i1.i.i
  %62 = and i32 %61, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool10.not.i.i = icmp eq i32 %62, 0
  br i1 %tobool10.not.i.i, label %do.body.i.i, label %land.rhs.i.i.if.end7.i_crit_edge

land.rhs.i.i.if.end7.i_crit_edge:                 ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

do.body.i.i:                                      ; preds = %land.rhs.i.i
  %63 = ptrtoint ptr %seq_start.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %seq_start.i.i, align 4
  %inc.i.i = add i16 %64, 1
  %65 = and i16 %inc.i.i, 4095
  store i16 %65, ptr %seq_start.i.i, align 4
  %inc18.i.i = add i32 %58, 1
  %and20.i.i = and i32 %inc18.i.i, 127
  %66 = ptrtoint ptr %baw_head.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %and20.i.i, ptr %baw_head.i.i, align 4
  %67 = ptrtoint ptr %bar_index.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %bar_index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %68)
  %cmp24.i.i = icmp sgt i8 %68, -1
  br i1 %cmp24.i.i, label %if.then26.i.i, label %do.body.i.i.if.end28.i.i_crit_edge

do.body.i.i.if.end28.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i.i

if.then26.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec.i32.i = add nsw i8 %68, -1
  %69 = ptrtoint ptr %bar_index.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %dec.i32.i, ptr %bar_index.i.i, align 4
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then26.i.i, %do.body.i.i.if.end28.i.i_crit_edge
  %cmp.not.i.i = icmp eq i32 %and20.i.i, %57
  br i1 %cmp.not.i.i, label %if.end28.i.i.if.end7.i_crit_edge, label %if.end28.i.i.land.rhs.i.i_crit_edge

if.end28.i.i.land.rhs.i.i_crit_edge:              ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i

if.end28.i.i.if.end7.i_crit_edge:                 ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end28.i.i.if.end7.i_crit_edge, %land.rhs.i.i.if.end7.i_crit_edge, %if.end.i31.i.if.end7.i_crit_edge, %if.then6.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %sendbar.1.off0.i = phi i1 [ %sendbar.0.off0.ph48.i, %if.end.i.if.end7.i_crit_edge ], [ true, %if.then6.i.if.end7.i_crit_edge ], [ true, %if.end.i31.i.if.end7.i_crit_edge ], [ true, %land.rhs.i.i.if.end7.i_crit_edge ], [ true, %if.end28.i.i.if.end7.i_crit_edge ]
  %70 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %15, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %32, ptr noundef %71, ptr noundef nonnull %bf_head.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end7.i.list_add_tail.exit.i_crit_edge

if.end7.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %32, ptr %15, align 4
  %73 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %bf_head.i, ptr %32, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %74 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev3.i.i.i, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %32, ptr %71, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end7.i.list_add_tail.exit.i_crit_edge
  call fastcc void @ath_tx_complete_buf(ptr noundef %sc, ptr noundef nonnull %32, ptr noundef %14, ptr noundef nonnull %bf_head.i, ptr noundef null, ptr noundef nonnull %ts.i, i32 noundef 0) #11
  %76 = ptrtoint ptr %retry_q.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %retry_q.i, align 4
  %cmp.i.i41.i = icmp eq ptr %77, %retry_q.i
  %tobool.not.i3842.i = icmp eq ptr %77, null
  %tobool.not.i43.i = or i1 %cmp.i.i41.i, %tobool.not.i3842.i
  br i1 %tobool.not.i43.i, label %list_add_tail.exit.i.while.end.i_crit_edge, label %list_add_tail.exit.i.while.body.lr.ph.i_crit_edge

list_add_tail.exit.i.while.body.lr.ph.i_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.lr.ph.i

list_add_tail.exit.i.while.end.i_crit_edge:       ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %list_add_tail.exit.i.while.end.i_crit_edge, %ath_txq_skb_done.exit.i.while.end.i_crit_edge
  %sendbar.0.off0.ph.lcssa.i = phi i1 [ %sendbar.0.off0.ph48.i, %ath_txq_skb_done.exit.i.while.end.i_crit_edge ], [ %sendbar.1.off0.i, %list_add_tail.exit.i.while.end.i_crit_edge ]
  br i1 %sendbar.0.off0.ph.lcssa.i, label %if.then9.i, label %while.end.i.ath_tx_flush_tid.exit_crit_edge

while.end.i.ath_tx_flush_tid.exit_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tx_flush_tid.exit

if.then9.i:                                       ; preds = %while.end.i
  %axq_lock.i.i = getelementptr inbounds %struct.ath_txq, ptr %14, i32 0, i32 4
  call void @_raw_spin_unlock_bh(ptr noundef %axq_lock.i.i) #11
  %an.i.i = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 6, i32 1
  %78 = ptrtoint ptr %an.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %an.i.i, align 4
  %sta.i.i = getelementptr inbounds %struct.ath_node, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %sta.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sta.i.i, align 4
  %tobool.not.i34.i = icmp eq ptr %81, null
  br i1 %tobool.not.i34.i, label %if.then9.i.ath_send_bar.exit.i_crit_edge, label %if.end.i36.i

if.then9.i.ath_send_bar.exit.i_crit_edge:         ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_send_bar.exit.i

if.end.i36.i:                                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  %82 = ptrtoint ptr %seq_start.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %seq_start.i.i, align 4
  %vif.i.i = getelementptr inbounds %struct.ath_node, ptr %79, i32 0, i32 2
  %84 = ptrtoint ptr %vif.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %vif.i.i, align 4
  %addr.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %81, i32 0, i32 1
  %tidno.i.i = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 8, i32 4
  %86 = ptrtoint ptr %tidno.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %tidno.i.i, align 2
  %conv.i35.i = zext i8 %87 to i16
  %shl.i.i = shl i16 %83, 4
  call void @ieee80211_send_bar(ptr noundef %85, ptr noundef %addr.i.i, i16 noundef zeroext %conv.i35.i, i16 noundef zeroext %shl.i.i) #11
  br label %ath_send_bar.exit.i

ath_send_bar.exit.i:                              ; preds = %if.end.i36.i, %if.then9.i.ath_send_bar.exit.i_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef %axq_lock.i.i) #11
  br label %ath_tx_flush_tid.exit

ath_tx_flush_tid.exit:                            ; preds = %ath_send_bar.exit.i, %while.end.i.ath_tx_flush_tid.exit_crit_edge, %do.end.ath_tx_flush_tid.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ts.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bf_head.i) #11
  call void @ath_txq_unlock_complete(ptr noundef %sc, ptr noundef %9)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_tx_aggr_sleep(ptr noundef %sta, ptr nocapture noundef readonly %sc, ptr nocapture noundef readonly %an) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_mask, align 4
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ath_tx_aggr_sleep) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %vif2.i = getelementptr inbounds %struct.ath_node, ptr %an, i32 0, i32 2
  %sta1.i = getelementptr inbounds %struct.ath_node, ptr %an, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end
  %tidno.011 = phi i32 [ 0, %do.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %vif2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vif2.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.body6.i, label %ath_node_to_tid.exit, !prof !88

do.body6.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath9k/ath9k.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #11, !srcloc !89
  unreachable

ath_node_to_tid.exit:                             ; preds = %for.body
  %conv = trunc i32 %tidno.011 to i8
  %6 = ptrtoint ptr %sta1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sta1.i, align 4
  %tobool12.not.i = icmp eq ptr %7, null
  %8 = urem i8 %conv, 17
  %rem.i = zext i8 %8 to i32
  %arrayidx.i = getelementptr %struct.ieee80211_sta, ptr %7, i32 0, i32 28, i32 %rem.i
  %txq15.i = getelementptr inbounds %struct.ieee80211_vif, ptr %5, i32 0, i32 8
  %txq.0.in.i = select i1 %tobool12.not.i, ptr %txq15.i, ptr %arrayidx.i
  %9 = ptrtoint ptr %txq.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %txq.0.i = load ptr, ptr %txq.0.in.i, align 4
  %retry_q = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 1, i32 2
  %10 = ptrtoint ptr %retry_q to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %retry_q, align 4
  %cmp.i.not = icmp eq ptr %11, %retry_q
  br i1 %cmp.i.not, label %ath_node_to_tid.exit.for.inc_crit_edge, label %if.then4

ath_node_to_tid.exit.for.inc_crit_edge:           ; preds = %ath_node_to_tid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then4:                                         ; preds = %ath_node_to_tid.exit
  call void @__sanitizer_cov_trace_pc() #13
  %tidno5 = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 8, i32 4
  %12 = ptrtoint ptr %tidno5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tidno5, align 2
  tail call void @ieee80211_sta_set_buffered(ptr noundef %sta, i8 noundef zeroext %13, i1 noundef zeroext true) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %ath_node_to_tid.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %tidno.011, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_set_buffered(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_tx_aggr_wakeup(ptr noundef %sc, ptr nocapture noundef readonly %an) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug_mask, align 4
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ath_tx_aggr_wakeup) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %vif2.i = getelementptr inbounds %struct.ath_node, ptr %an, i32 0, i32 2
  %sta1.i = getelementptr inbounds %struct.ath_node, ptr %an, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end6.for.body_crit_edge, %do.end
  %tidno.019 = phi i32 [ 0, %do.end ], [ %inc, %if.end6.for.body_crit_edge ]
  %4 = ptrtoint ptr %vif2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vif2.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.body6.i, label %ath_node_to_tid.exit, !prof !88

do.body6.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath9k/ath9k.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #11, !srcloc !89
  unreachable

ath_node_to_tid.exit:                             ; preds = %for.body
  %conv = trunc i32 %tidno.019 to i8
  %6 = ptrtoint ptr %sta1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sta1.i, align 4
  %tobool12.not.i = icmp eq ptr %7, null
  %8 = urem i8 %conv, 17
  %rem.i = zext i8 %8 to i32
  %arrayidx.i = getelementptr %struct.ieee80211_sta, ptr %7, i32 0, i32 28, i32 %rem.i
  %txq15.i = getelementptr inbounds %struct.ieee80211_vif, ptr %5, i32 0, i32 8
  %txq.0.in.i = select i1 %tobool12.not.i, ptr %txq15.i, ptr %arrayidx.i
  %9 = ptrtoint ptr %txq.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %txq.0.i = load ptr, ptr %txq.0.in.i, align 4
  %txq2 = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 6, i32 2
  %10 = ptrtoint ptr %txq2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %txq2, align 4
  %axq_lock.i = getelementptr inbounds %struct.ath_txq, ptr %11, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %axq_lock.i) #11
  %clear_ps_filter = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 9, i32 4
  %12 = ptrtoint ptr %clear_ps_filter to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %clear_ps_filter, align 2
  %retry_q = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 1, i32 2
  %13 = ptrtoint ptr %retry_q to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %retry_q, align 4
  %cmp.i.not = icmp eq ptr %14, %retry_q
  br i1 %cmp.i.not, label %ath_node_to_tid.exit.if.end6_crit_edge, label %if.then5

ath_node_to_tid.exit.if.end6_crit_edge:           ; preds = %ath_node_to_tid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then5:                                         ; preds = %ath_node_to_tid.exit
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sc, align 8
  tail call void @ieee80211_schedule_txq(ptr noundef %16, ptr noundef %txq.0.i) #11
  tail call void @ath_txq_schedule(ptr noundef %sc, ptr noundef %11)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %ath_node_to_tid.exit.if.end6_crit_edge
  tail call void @ath_txq_unlock_complete(ptr noundef %sc, ptr noundef %11)
  %inc = add nuw nsw i32 %tidno.019, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_release_buffered_frames(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %sta, i16 noundef zeroext %tids, i32 noundef %nframes, i32 noundef %reason, i1 noundef zeroext %more_data) local_unnamed_addr #0 align 64 {
entry:
  %bf_q = alloca %struct.list_head, align 4
  %bf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %uapsdq = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 35, i32 6
  %2 = ptrtoint ptr %uapsdq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uapsdq, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bf_q) #11
  %4 = getelementptr inbounds %struct.list_head, ptr %bf_q, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bf) #11
  %5 = ptrtoint ptr %bf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %bf, align 4
  %6 = ptrtoint ptr %bf_q to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %bf_q, ptr %bf_q, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %bf_q, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tids)
  %tobool.not121 = icmp eq i16 %tids, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nframes)
  %tobool1.not122 = icmp eq i32 %nframes, 0
  %or.cond123 = or i1 %tobool.not121, %tobool1.not122
  br i1 %or.cond123, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vif2.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 2
  %sta1.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 1
  %dev.i = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 1
  %axq_qnum = getelementptr inbounds %struct.ath_txq, ptr %3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %tids.addr.0128 = phi i16 [ %tids, %for.body.lr.ph ], [ %60, %cleanup.for.body_crit_edge ]
  %nframes.addr.0127 = phi i32 [ %nframes, %for.body.lr.ph ], [ %nframes.addr.2, %cleanup.for.body_crit_edge ]
  %i.0126 = phi i32 [ 0, %for.body.lr.ph ], [ %inc40, %cleanup.for.body_crit_edge ]
  %bf_tail.0124 = phi ptr [ null, %for.body.lr.ph ], [ %bf_tail.2, %cleanup.for.body_crit_edge ]
  %8 = and i16 %tids.addr.0128, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool3.not = icmp eq i16 %8, 0
  br i1 %tobool3.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %for.body
  %conv4 = trunc i32 %i.0126 to i8
  %9 = ptrtoint ptr %vif2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vif2.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %do.body6.i, label %ath_node_to_tid.exit, !prof !88

do.body6.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath9k/ath9k.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #11, !srcloc !89
  unreachable

ath_node_to_tid.exit:                             ; preds = %if.end
  %11 = ptrtoint ptr %sta1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sta1.i, align 4
  %tobool12.not.i = icmp eq ptr %12, null
  %13 = urem i8 %conv4, 17
  %rem.i = zext i8 %13 to i32
  %arrayidx.i = getelementptr %struct.ieee80211_sta, ptr %12, i32 0, i32 28, i32 %rem.i
  %txq15.i = getelementptr inbounds %struct.ieee80211_vif, ptr %10, i32 0, i32 8
  %txq.0.in.i = select i1 %tobool12.not.i, ptr %txq15.i, ptr %arrayidx.i
  %14 = ptrtoint ptr %txq.0.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %txq.0.i = load ptr, ptr %txq.0.in.i, align 4
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 0, i32 5
  %txq5 = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 6, i32 2
  %15 = ptrtoint ptr %txq5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %txq5, align 4
  %axq_lock.i = getelementptr inbounds %struct.ath_txq, ptr %16, i32 0, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %axq_lock.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nframes.addr.0127)
  %cmp112 = icmp sgt i32 %nframes.addr.0127, 0
  br i1 %cmp112, label %while.body.lr.ph, label %ath_node_to_tid.exit.while.end_crit_edge

ath_node_to_tid.exit.while.end_crit_edge:         ; preds = %ath_node_to_tid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %ath_node_to_tid.exit
  %an14 = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 6, i32 1
  %retry_q = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 1, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end38.while.body_crit_edge, %while.body.lr.ph
  %nframes.addr.1115 = phi i32 [ %nframes.addr.0127, %while.body.lr.ph ], [ %dec, %if.end38.while.body_crit_edge ]
  %bf_tail.1113 = phi ptr [ %bf_tail.0124, %while.body.lr.ph ], [ %20, %if.end38.while.body_crit_edge ]
  %17 = ptrtoint ptr %uapsdq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %uapsdq, align 4
  %call9 = call fastcc i32 @ath_tx_get_tid_subframe(ptr noundef %1, ptr noundef %18, ptr noundef %drv_priv.i, ptr noundef nonnull %bf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %while.body.while.end_crit_edge, label %if.end13

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end13:                                         ; preds = %while.body
  %19 = ptrtoint ptr %bf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bf, align 4
  %bf_mpdu.i = getelementptr inbounds %struct.ath_buf, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %bf_mpdu.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bf_mpdu.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 19
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %24, align 2
  %27 = and i16 %26, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp.not.i.not = icmp eq i16 %27, 0
  br i1 %cmp.not.i.not, label %if.then.i, label %if.end13.ath9k_set_moredata.exit_crit_edge

if.end13.ath9k_set_moredata.exit_crit_edge:       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath9k_set_moredata.exit

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %or.i = or i16 %26, 32
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %or.i, ptr %24, align 2
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  %bf_buf_addr.i = getelementptr inbounds %struct.ath_buf, ptr %20, i32 0, i32 6
  %31 = ptrtoint ptr %bf_buf_addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bf_buf_addr.i, align 4
  call void @dma_sync_single_for_device(ptr noundef %30, i32 noundef %32, i32 noundef 30, i32 noundef 1) #11
  br label %ath9k_set_moredata.exit

ath9k_set_moredata.exit:                          ; preds = %if.then.i, %if.end13.ath9k_set_moredata.exit_crit_edge
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %4, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %20, ptr noundef %34, ptr noundef nonnull %bf_q) #11
  br i1 %call.i.i, label %if.end.i.i, label %ath9k_set_moredata.exit.list_add_tail.exit_crit_edge

ath9k_set_moredata.exit.list_add_tail.exit_crit_edge: ; preds = %ath9k_set_moredata.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %ath9k_set_moredata.exit
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %20, ptr %4, align 4
  %36 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %bf_q, ptr %20, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %37 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %20, ptr %34, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %ath9k_set_moredata.exit.list_add_tail.exit_crit_edge
  %39 = ptrtoint ptr %an14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %an14, align 4
  %vif = getelementptr inbounds %struct.ath_node, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vif, align 4
  %sta16 = getelementptr inbounds %struct.ath_node, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %sta16 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sta16, align 4
  call fastcc void @ath_set_rates(ptr noundef %42, ptr noundef %44, ptr noundef %20)
  %bf_state = getelementptr inbounds %struct.ath_buf, ptr %20, i32 0, i32 8
  %45 = ptrtoint ptr %bf_state to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %bf_state, align 4
  %47 = and i8 %46, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool19.not = icmp eq i8 %47, 0
  br i1 %tobool19.not, label %list_add_tail.exit.if.end26_crit_edge, label %if.then20

list_add_tail.exit.if.end26_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then20:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  %and24 = and i8 %46, -3
  %48 = ptrtoint ptr %bf_state to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %and24, ptr %bf_state, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %list_add_tail.exit.if.end26_crit_edge
  %tobool27.not = icmp eq ptr %bf_tail.1113, null
  br i1 %tobool27.not, label %if.end26.if.end29_crit_edge, label %if.then28

if.end26.if.end29_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %bf_next = getelementptr inbounds %struct.ath_buf, ptr %bf_tail.1113, i32 0, i32 2
  %49 = ptrtoint ptr %bf_next to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %20, ptr %bf_next, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end26.if.end29_crit_edge
  %dec = add nsw i32 %nframes.addr.1115, -1
  %50 = ptrtoint ptr %axq_qnum to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %axq_qnum, align 4
  %a_queued_hw = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %51, i32 6
  %52 = ptrtoint ptr %a_queued_hw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %a_queued_hw, align 4
  %inc30 = add i32 %53, 1
  store i32 %inc30, ptr %a_queued_hw, align 4
  %54 = ptrtoint ptr %sta1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sta1.i, align 4
  %tobool32.not = icmp eq ptr %55, null
  br i1 %tobool32.not, label %if.end29.if.end38_crit_edge, label %land.lhs.true

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end29
  %56 = ptrtoint ptr %retry_q to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %retry_q, align 4
  %cmp.i.not = icmp eq ptr %57, %retry_q
  br i1 %cmp.i.not, label %if.then35, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then35:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  call void @ieee80211_sta_set_buffered(ptr noundef nonnull %55, i8 noundef zeroext %conv4, i1 noundef zeroext false) #11
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %land.lhs.true.if.end38_crit_edge, %if.end29.if.end38_crit_edge
  %cmp = icmp sgt i32 %nframes.addr.1115, 1
  br i1 %cmp, label %if.end38.while.body_crit_edge, label %if.end38.while.end_crit_edge

if.end38.while.end_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end38.while.body_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %if.end38.while.end_crit_edge, %while.body.while.end_crit_edge, %ath_node_to_tid.exit.while.end_crit_edge
  %bf_tail.1.lcssa = phi ptr [ %bf_tail.0124, %ath_node_to_tid.exit.while.end_crit_edge ], [ %bf_tail.1113, %while.body.while.end_crit_edge ], [ %20, %if.end38.while.end_crit_edge ]
  %nframes.addr.1.lcssa = phi i32 [ %nframes.addr.0127, %ath_node_to_tid.exit.while.end_crit_edge ], [ %nframes.addr.1115, %while.body.while.end_crit_edge ], [ 0, %if.end38.while.end_crit_edge ]
  %58 = ptrtoint ptr %txq5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %txq5, align 4
  call void @ath_txq_unlock_complete(ptr noundef %1, ptr noundef %59)
  br label %cleanup

cleanup:                                          ; preds = %while.end, %for.body.cleanup_crit_edge
  %bf_tail.2 = phi ptr [ %bf_tail.1.lcssa, %while.end ], [ %bf_tail.0124, %for.body.cleanup_crit_edge ]
  %nframes.addr.2 = phi i32 [ %nframes.addr.1.lcssa, %while.end ], [ %nframes.addr.0127, %for.body.cleanup_crit_edge ]
  %inc40 = add nuw nsw i32 %i.0126, 1
  %60 = lshr i16 %tids.addr.0128, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %tids.addr.0128)
  %tobool.not = icmp ult i16 %tids.addr.0128, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nframes.addr.2)
  %tobool1.not = icmp eq i32 %nframes.addr.2, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %bf_tail.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %bf_tail.2, %cleanup.for.end_crit_edge ]
  %61 = ptrtoint ptr %bf_q to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %bf_q, align 4
  %cmp.i95.not = icmp eq ptr %62, %bf_q
  br i1 %cmp.i95.not, label %for.end.cleanup51_crit_edge, label %if.end46

for.end.cleanup51_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup51

if.end46:                                         ; preds = %for.end
  br i1 %more_data, label %if.end46.if.end49_crit_edge, label %if.then48

if.end46.if.end49_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then48:                                        ; preds = %if.end46
  %bf_mpdu.i97 = getelementptr inbounds %struct.ath_buf, ptr %bf_tail.0.lcssa, i32 0, i32 3
  %63 = ptrtoint ptr %bf_mpdu.i97 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bf_mpdu.i97, align 4
  %data.i98 = getelementptr inbounds %struct.sk_buff, ptr %64, i32 0, i32 19
  %65 = ptrtoint ptr %data.i98 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data.i98, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %66, align 2
  %69 = and i16 %68, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %cmp.not.i101 = icmp eq i16 %69, 0
  br i1 %cmp.not.i101, label %if.then48.if.end49_crit_edge, label %if.then.i106

if.then48.if.end49_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then.i106:                                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  %and10.i102 = and i16 %68, -33
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %and10.i102, ptr %66, align 2
  %dev.i104 = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 1
  %71 = ptrtoint ptr %dev.i104 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i104, align 4
  %bf_buf_addr.i105 = getelementptr inbounds %struct.ath_buf, ptr %bf_tail.0.lcssa, i32 0, i32 6
  %73 = ptrtoint ptr %bf_buf_addr.i105 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bf_buf_addr.i105, align 4
  call void @dma_sync_single_for_device(ptr noundef %72, i32 noundef %74, i32 noundef 30, i32 noundef 1) #11
  br label %if.end49

if.end49:                                         ; preds = %if.then.i106, %if.then48.if.end49_crit_edge, %if.end46.if.end49_crit_edge
  %bf_mpdu = getelementptr inbounds %struct.ath_buf, ptr %bf_tail.0.lcssa, i32 0, i32 3
  %75 = ptrtoint ptr %bf_mpdu to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bf_mpdu, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cb.i, align 8
  %or = or i32 %78, 268435456
  store i32 %or, ptr %cb.i, align 8
  %79 = ptrtoint ptr %bf_q to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bf_q, align 4
  %axq_lock.i108 = getelementptr inbounds %struct.ath_txq, ptr %3, i32 0, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %axq_lock.i108) #11
  call fastcc void @ath_tx_fill_desc(ptr noundef %1, ptr noundef %80, ptr noundef %3, i32 noundef 0)
  call fastcc void @ath_tx_txqaddbuf(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %bf_q, i1 noundef zeroext false)
  call void @_raw_spin_unlock_bh(ptr noundef %axq_lock.i108) #11
  br label %cleanup51

cleanup51:                                        ; preds = %if.end49, %for.end.cleanup51_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bf) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bf_q) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath_tx_get_tid_subframe(ptr noundef %sc, ptr noundef %txq, ptr noundef %tid, ptr nocapture noundef writeonly %buf) unnamed_addr #0 align 64 {
entry:
  %skb = alloca ptr, align 4
  %ts = alloca %struct.ath_tx_status, align 4
  %bf_head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #11
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb, align 4, !annotation !90
  %call165168 = call fastcc i32 @ath_tid_dequeue(ptr noundef %tid, ptr noundef nonnull %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165168)
  %cmp166169 = icmp slt i32 %call165168, 0
  br i1 %cmp166169, label %entry.cleanup_crit_edge, label %if.end.lr.ph.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.lr.ph.lr.ph:                               ; preds = %entry
  %active = getelementptr inbounds %struct.ath_atx_tid, ptr %tid, i32 0, i32 12
  %seq_start = getelementptr inbounds %struct.ath_atx_tid, ptr %tid, i32 0, i32 5
  %baw_size = getelementptr inbounds %struct.ath_atx_tid, ptr %tid, i32 0, i32 7
  %bar_index = getelementptr inbounds %struct.ath_atx_tid, ptr %tid, i32 0, i32 11
  %1 = getelementptr inbounds %struct.list_head, ptr %bf_head, i32 0, i32 1
  %baw_head.i = getelementptr inbounds %struct.ath_atx_tid, ptr %tid, i32 0, i32 9
  %tx_buf.i = getelementptr inbounds %struct.ath_atx_tid, ptr %tid, i32 0, i32 4
  %baw_tail.i = getelementptr inbounds %struct.ath_atx_tid, ptr %tid, i32 0, i32 10
  %retry_q = getelementptr inbounds %struct.ath_atx_tid, ptr %tid, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.ath_atx_tid, ptr %tid, i32 0, i32 1, i32 0, i32 0, i32 1
  %qlen.i.i.i = getelementptr inbounds %struct.ath_atx_tid, ptr %tid, i32 0, i32 1, i32 1
  br label %if.end.lr.ph

if.end.lr.ph:                                     ; preds = %if.then58.critedge.if.end.lr.ph_crit_edge, %if.end.lr.ph.lr.ph
  %first_skb.0.ph170 = phi ptr [ null, %if.end.lr.ph.lr.ph ], [ %spec.select, %if.then58.critedge.if.end.lr.ph_crit_edge ]
  br label %if.end

if.end:                                           ; preds = %while.cond.backedge.if.end_crit_edge, %if.end.lr.ph
  %2 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skb, align 4
  %rate_driver_data.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 24
  %4 = ptrtoint ptr %rate_driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rate_driver_data.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end6, label %if.end6.thread

if.end6.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %stale = getelementptr inbounds %struct.ath_buf, ptr %5, i32 0, i32 8, i32 3
  %6 = ptrtoint ptr %stale to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %stale, align 1
  br label %if.end9

if.end6:                                          ; preds = %if.end
  %call5 = call fastcc ptr @ath_tx_setup_buffer(ptr noundef %sc, ptr noundef %tid, ptr noundef %3)
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.then8, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  %txq1.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 30
  %7 = ptrtoint ptr %txq1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %txq1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.i = icmp slt i8 %8, 0
  br i1 %cmp.i, label %if.then8.ath_txq_skb_done.exit_crit_edge, label %if.end.i

if.then8.ath_txq_skb_done.exit_crit_edge:         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_txq_skb_done.exit

if.end.i:                                         ; preds = %if.then8
  %conv1.i = zext i8 %8 to i32
  %arrayidx.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 5, i32 %conv1.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %pending_frames.i = getelementptr inbounds %struct.ath_txq, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %pending_frames.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pending_frames.i, align 4
  %dec.i = add i32 %12, -1
  store i32 %dec.i, ptr %pending_frames.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp3.i = icmp slt i32 %dec.i, 0
  br i1 %cmp3.i, label %do.end.i, label %if.end.i.ath_txq_skb_done.exit_crit_edge, !prof !88

if.end.i.ath_txq_skb_done.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_txq_skb_done.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 215, i32 noundef 9, ptr noundef null) #11
  %13 = ptrtoint ptr %pending_frames.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %pending_frames.i, align 4
  br label %ath_txq_skb_done.exit

ath_txq_skb_done.exit:                            ; preds = %do.end.i, %if.end.i.ath_txq_skb_done.exit_crit_edge, %if.then8.ath_txq_skb_done.exit_crit_edge
  %14 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sc, align 8
  call void @ieee80211_free_txskb(ptr noundef %15, ptr noundef %3) #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %ath_tx_update_baw.exit, %ath_txq_skb_done.exit
  %call = call fastcc i32 @ath_tid_dequeue(ptr noundef %tid, ptr noundef nonnull %skb)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.if.end_crit_edge

while.cond.backedge.if.end_crit_edge:             ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end6.if.end9_crit_edge, %if.end6.thread
  %bf.0152 = phi ptr [ %5, %if.end6.thread ], [ %call5, %if.end6.if.end9_crit_edge ]
  %bf_next = getelementptr inbounds %struct.ath_buf, ptr %bf.0152, i32 0, i32 2
  %16 = ptrtoint ptr %bf_next to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %bf_next, align 4
  %bf_lastbf = getelementptr inbounds %struct.ath_buf, ptr %bf.0152, i32 0, i32 1
  %17 = ptrtoint ptr %bf_lastbf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %bf.0152, ptr %bf_lastbf, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cb.i, align 8
  %and = and i32 %19, -268435465
  store i32 %and, ptr %cb.i, align 8
  %20 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %active, align 1, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool11.not = icmp eq i8 %21, 0
  br i1 %tobool11.not, label %if.then12, label %if.end9.if.end15_crit_edge

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %and14 = and i32 %19, -268435529
  %22 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and14, ptr %cb.i, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end9.if.end15_crit_edge
  %23 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cb.i, align 8
  %and17 = and i32 %24, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %bf_state20 = getelementptr inbounds %struct.ath_buf, ptr %bf.0152, i32 0, i32 8
  br i1 %tobool18.not, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %bf_state20 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %bf_state20, align 4
  br label %while.end

if.end21:                                         ; preds = %if.end15
  %26 = ptrtoint ptr %bf_state20 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 3, ptr %bf_state20, align 4
  %seqno25 = getelementptr inbounds %struct.ath_buf, ptr %bf.0152, i32 0, i32 8, i32 4
  %27 = ptrtoint ptr %seqno25 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %seqno25, align 4
  %conv = zext i16 %28 to i32
  %29 = ptrtoint ptr %seq_start to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %seq_start, align 4
  %conv26 = zext i16 %30 to i32
  %sub = sub nsw i32 %conv, %conv26
  %and27 = and i32 %sub, 4095
  %31 = ptrtoint ptr %baw_size to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %baw_size, align 4
  %conv28 = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and27, i32 %conv28)
  %cmp29 = icmp ult i32 %and27, %conv28
  br i1 %cmp29, label %if.end63, label %if.then31

if.then31:                                        ; preds = %if.end21
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %retry_q, ptr %3, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.41, ptr %3, i32 0, i32 1
  %36 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %prev10.i.i.i, align 4
  store volatile ptr %3, ptr %prev.i.i, align 4
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %3, ptr %34, align 4
  %38 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %39, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %40 = load ptr, ptr %prev10.i.i.i, align 4
  %cmp.i124 = icmp eq ptr %40, %retry_q
  br i1 %cmp.i124, label %if.then31.cleanup_crit_edge, label %land.lhs.true

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then31
  %cmp34 = icmp eq ptr %3, %first_skb.0.ph170
  br i1 %cmp34, label %do.end, label %if.then58.critedge, !prof !88

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 994, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.then58.critedge:                               ; preds = %land.lhs.true
  %tobool59.not = icmp eq ptr %first_skb.0.ph170, null
  %spec.select = select i1 %tobool59.not, ptr %3, ptr %first_skb.0.ph170
  %call165 = call fastcc i32 @ath_tid_dequeue(ptr noundef %tid, ptr noundef nonnull %skb)
  %cmp166 = icmp slt i32 %call165, 0
  br i1 %cmp166, label %if.then58.critedge.cleanup_crit_edge, label %if.then58.critedge.if.end.lr.ph_crit_edge

if.then58.critedge.if.end.lr.ph_crit_edge:        ; preds = %if.then58.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.lr.ph

if.then58.critedge.cleanup_crit_edge:             ; preds = %if.then58.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end63:                                         ; preds = %if.end21
  %41 = ptrtoint ptr %bar_index to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bar_index, align 4
  %conv64 = sext i8 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and27, i32 %conv64)
  %cmp70 = icmp slt i32 %and27, %conv64
  br i1 %cmp70, label %if.then72, label %if.then79

if.then72:                                        ; preds = %if.end63
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ts) #11
  %43 = call ptr @memset(ptr %ts, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bf_head) #11
  %44 = ptrtoint ptr %bf_head to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %bf_head, ptr %bf_head, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %bf_head, ptr %1, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %bf.0152, ptr noundef nonnull %bf_head, ptr noundef nonnull %bf_head) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then72.list_add.exit_crit_edge

if.then72.list_add.exit_crit_edge:                ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %bf.0152, ptr %1, align 4
  %47 = ptrtoint ptr %bf.0152 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %bf_head, ptr %bf.0152, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %bf.0152, i32 0, i32 1
  %48 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %bf_head, ptr %prev3.i.i, align 4
  %49 = ptrtoint ptr %bf_head to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %bf.0152, ptr %bf_head, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then72.list_add.exit_crit_edge
  %bf_mpdu.i = getelementptr inbounds %struct.ath_buf, ptr %bf.0152, i32 0, i32 3
  %50 = ptrtoint ptr %bf_mpdu.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bf_mpdu.i, align 4
  %baw_tracked.i = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 3, i32 33
  %52 = ptrtoint ptr %baw_tracked.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load.i = load i8, ptr %baw_tracked.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %tobool.not.i = icmp eq i8 %bf.clear.i, 0
  br i1 %tobool.not.i, label %list_add.exit.ath_tx_update_baw.exit_crit_edge, label %if.end.i126

list_add.exit.ath_tx_update_baw.exit_crit_edge:   ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tx_update_baw.exit

if.end.i126:                                      ; preds = %list_add.exit
  %53 = ptrtoint ptr %seqno25 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %seqno25, align 4
  %conv.i = zext i16 %54 to i32
  %55 = ptrtoint ptr %seq_start to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %seq_start, align 4
  %conv2.i = zext i16 %56 to i32
  %sub.i = sub nsw i32 %conv.i, %conv2.i
  %57 = ptrtoint ptr %baw_head.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %baw_head.i, align 4
  %add.i = add i32 %sub.i, %58
  %rem.i.i = and i32 %add.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %and3.i = lshr i32 %add.i, 5
  %div2.i.i = and i32 %and3.i, 3
  %add.ptr.i.i = getelementptr i32, ptr %tx_buf.i, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %59 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %60, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %61 = ptrtoint ptr %baw_tail.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %baw_tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %62)
  %cmp.not2.i = icmp eq i32 %58, %62
  br i1 %cmp.not2.i, label %if.end.i126.ath_tx_update_baw.exit_crit_edge, label %if.end.i126.land.rhs.i_crit_edge

if.end.i126.land.rhs.i_crit_edge:                 ; preds = %if.end.i126
  br label %land.rhs.i

if.end.i126.ath_tx_update_baw.exit_crit_edge:     ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tx_update_baw.exit

land.rhs.i:                                       ; preds = %if.end28.i.land.rhs.i_crit_edge, %if.end.i126.land.rhs.i_crit_edge
  %63 = phi i32 [ %and20.i, %if.end28.i.land.rhs.i_crit_edge ], [ %58, %if.end.i126.land.rhs.i_crit_edge ]
  %div3.i.i = lshr i32 %63, 5
  %arrayidx.i.i = getelementptr i32, ptr %tx_buf.i, i32 %div3.i.i
  %64 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i1.i = and i32 %63, 31
  %66 = shl nuw i32 1, %and.i1.i
  %67 = and i32 %66, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool10.not.i = icmp eq i32 %67, 0
  br i1 %tobool10.not.i, label %do.body.i, label %land.rhs.i.ath_tx_update_baw.exit_crit_edge

land.rhs.i.ath_tx_update_baw.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tx_update_baw.exit

do.body.i:                                        ; preds = %land.rhs.i
  %68 = ptrtoint ptr %seq_start to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %seq_start, align 4
  %inc.i = add i16 %69, 1
  %70 = and i16 %inc.i, 4095
  store i16 %70, ptr %seq_start, align 4
  %inc18.i = add i32 %63, 1
  %and20.i = and i32 %inc18.i, 127
  %71 = ptrtoint ptr %baw_head.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %and20.i, ptr %baw_head.i, align 4
  %72 = ptrtoint ptr %bar_index to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %bar_index, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %73)
  %cmp24.i = icmp sgt i8 %73, -1
  br i1 %cmp24.i, label %if.then26.i, label %do.body.i.if.end28.i_crit_edge

do.body.i.if.end28.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

if.then26.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec.i127 = add nsw i8 %73, -1
  %74 = ptrtoint ptr %bar_index to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %dec.i127, ptr %bar_index, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then26.i, %do.body.i.if.end28.i_crit_edge
  %cmp.not.i = icmp eq i32 %and20.i, %62
  br i1 %cmp.not.i, label %if.end28.i.ath_tx_update_baw.exit_crit_edge, label %if.end28.i.land.rhs.i_crit_edge

if.end28.i.land.rhs.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

if.end28.i.ath_tx_update_baw.exit_crit_edge:      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tx_update_baw.exit

ath_tx_update_baw.exit:                           ; preds = %if.end28.i.ath_tx_update_baw.exit_crit_edge, %land.rhs.i.ath_tx_update_baw.exit_crit_edge, %if.end.i126.ath_tx_update_baw.exit_crit_edge, %list_add.exit.ath_tx_update_baw.exit_crit_edge
  call fastcc void @ath_tx_complete_buf(ptr noundef %sc, ptr noundef nonnull %bf.0152, ptr noundef %txq, ptr noundef nonnull %bf_head, ptr noundef null, ptr noundef nonnull %ts, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bf_head) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ts) #11
  br label %while.cond.backedge

if.then79:                                        ; preds = %if.end63
  %bf_mpdu.i128 = getelementptr inbounds %struct.ath_buf, ptr %bf.0152, i32 0, i32 3
  %75 = ptrtoint ptr %bf_mpdu.i128 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bf_mpdu.i128, align 4
  %baw_tracked.i129 = getelementptr inbounds %struct.sk_buff, ptr %76, i32 0, i32 3, i32 33
  %77 = ptrtoint ptr %baw_tracked.i129 to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load.i130 = load i8, ptr %baw_tracked.i129, align 1
  %bf.clear.i131 = and i8 %bf.load.i130, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i131)
  %tobool.not.i132 = icmp eq i8 %bf.clear.i131, 0
  br i1 %tobool.not.i132, label %if.end.i148, label %if.then79.while.end_crit_edge

if.then79.while.end_crit_edge:                    ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end.i148:                                      ; preds = %if.then79
  %78 = ptrtoint ptr %baw_head.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %baw_head.i, align 4
  %add.i139 = add i32 %79, %sub
  %rem.i.i141 = and i32 %add.i139, 31
  %shl.i.i142 = shl nuw i32 1, %rem.i.i141
  %and3.i143 = lshr i32 %add.i139, 5
  %div2.i.i144 = and i32 %and3.i143, 3
  %add.ptr.i.i145 = getelementptr i32, ptr %tx_buf.i, i32 %div2.i.i144
  %80 = ptrtoint ptr %add.ptr.i.i145 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr.i.i145, align 4
  %or.i.i = or i32 %shl.i.i142, %81
  store i32 %or.i.i, ptr %add.ptr.i.i145, align 4
  %82 = ptrtoint ptr %baw_tracked.i129 to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load5.i = load i8, ptr %baw_tracked.i129, align 1
  %bf.set.i = or i8 %bf.load5.i, 1
  store i8 %bf.set.i, ptr %baw_tracked.i129, align 1
  %83 = ptrtoint ptr %baw_tail.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %baw_tail.i, align 4
  %85 = load i32, ptr %baw_head.i, align 4
  %sub8.i = sub i32 %84, %85
  %and9.i = and i32 %sub8.i, 127
  call void @__sanitizer_cov_trace_cmp4(i32 %and27, i32 %and9.i)
  %cmp.not.i147 = icmp ult i32 %and27, %and9.i
  br i1 %cmp.not.i147, label %if.end.i148.while.end_crit_edge, label %if.then11.i

if.end.i148.while.end_crit_edge:                  ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.then11.i:                                      ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #13
  %inc.i149 = add i32 %add.i139, 1
  %and15.i = and i32 %inc.i149, 127
  %86 = ptrtoint ptr %baw_tail.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %and15.i, ptr %baw_tail.i, align 4
  br label %while.end

while.end:                                        ; preds = %if.then11.i, %if.end.i148.while.end_crit_edge, %if.then79.while.end_crit_edge, %if.then19
  %87 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %bf.0152, ptr %buf, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then58.critedge.cleanup_crit_edge, %do.end, %if.then31.cleanup_crit_edge, %while.cond.backedge.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -115, %do.end ], [ %call165168, %entry.cleanup_crit_edge ], [ %call, %while.cond.backedge.cleanup_crit_edge ], [ %call165, %if.then58.critedge.cleanup_crit_edge ], [ -115, %if.then31.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath_set_rates(ptr noundef %vif, ptr noundef %sta, ptr noundef %bf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bf_mpdu = getelementptr inbounds %struct.ath_buf, ptr %bf, i32 0, i32 3
  %0 = ptrtoint ptr %bf_mpdu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bf_mpdu, align 4
  %tobool.not.i = icmp eq ptr %sta, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end.i:                                         ; preds = %entry
  %rates.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 16
  %2 = ptrtoint ptr %rates.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %rates.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i, label %if.end.i.do.end10.i_crit_edge

if.end.i.do.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b124.i = load i1, ptr @ath_merge_ratetbl.__warned, align 1
  br i1 %.b124.i, label %land.lhs.true5.i.do.end10.i_crit_edge, label %if.then7.i

land.lhs.true5.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10.i

if.then7.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ath_merge_ratetbl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 166, ptr noundef nonnull @.str.19) #11
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then7.i, %land.lhs.true5.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %if.end.i.do.end10.i_crit_edge
  %tobool12.not.i = icmp eq ptr %3, null
  br i1 %tobool12.not.i, label %do.end10.i.if.then_crit_edge, label %if.end14.i

do.end10.i.if.then_crit_edge:                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end14.i:                                       ; preds = %do.end10.i
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.i = icmp slt i8 %6, 0
  br i1 %cmp.i, label %if.end14.i.if.end27.i_crit_edge, label %lor.lhs.false.i

if.end14.i.if.end27.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

lor.lhs.false.i:                                  ; preds = %if.end14.i
  %count.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 9
  %7 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %bf.load.i = load i16, ptr %count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %bf.load.i)
  %cmp20.i = icmp ult i16 %bf.load.i, 2048
  br i1 %cmp20.i, label %lor.lhs.false.i.if.end27.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.end27.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %rates23.i = getelementptr inbounds %struct.ath_buf, ptr %bf, i32 0, i32 7
  %8 = call ptr @memcpy(ptr %rates23.i, ptr %4, i32 3)
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.else.i, %lor.lhs.false.i.if.end27.i_crit_edge, %if.end14.i.if.end27.i_crit_edge
  %i.0.i = phi i32 [ 1, %if.else.i ], [ 0, %lor.lhs.false.i.if.end27.i_crit_edge ], [ 0, %if.end14.i.if.end27.i_crit_edge ]
  %use_rts.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 21
  %arrayidx31.i = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 %i.0.i
  %9 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx31.i, align 2
  %arrayidx35.i = getelementptr %struct.ath_buf, ptr %bf, i32 0, i32 7, i32 %i.0.i
  %11 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx35.i, align 1
  %flags.i = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 %i.0.i, i32 4
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags.i, align 2
  %flags43.i = getelementptr %struct.ath_buf, ptr %bf, i32 0, i32 7, i32 %i.0.i, i32 1
  %14 = ptrtoint ptr %flags43.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %bf.load44.i = load i16, ptr %flags43.i, align 1
  %bf.value.i = and i16 %13, 2047
  %bf.clear.i = and i16 %bf.load44.i, -2048
  %bf.set.i = or i16 %bf.clear.i, %bf.value.i
  store i16 %bf.set.i, ptr %flags43.i, align 1
  %15 = ptrtoint ptr %use_rts.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load45.i = load i8, ptr %use_rts.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load45.i)
  %tobool47.not.i = icmp sgt i8 %bf.load45.i, -1
  br i1 %tobool47.not.i, label %if.else61.i, label %if.then48.i

if.then48.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  %count_rts.i = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 %i.0.i, i32 3
  br label %for.inc.i

if.else61.i:                                      ; preds = %if.end27.i
  %16 = and i8 %bf.load45.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool65.not.i = icmp eq i8 %16, 0
  br i1 %tobool65.not.i, label %if.else80.i, label %if.then66.i

if.then66.i:                                      ; preds = %if.else61.i
  call void @__sanitizer_cov_trace_pc() #13
  %count_cts.i = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 %i.0.i, i32 2
  br label %for.inc.i

if.else80.i:                                      ; preds = %if.else61.i
  call void @__sanitizer_cov_trace_pc() #13
  %count84.i = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 %i.0.i, i32 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else80.i, %if.then66.i, %if.then48.i
  %.sink.in.i = phi ptr [ %count_rts.i, %if.then48.i ], [ %count84.i, %if.else80.i ], [ %count_cts.i, %if.then66.i ]
  %17 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %.sink.i = load i8, ptr %.sink.in.i, align 1
  %bf.value58.i = zext i8 %.sink.i to i16
  %bf.shl.i = shl i16 %bf.value58.i, 11
  %bf.set60.i = or i16 %bf.shl.i, %bf.value.i
  %18 = ptrtoint ptr %flags43.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %bf.set60.i, ptr %flags43.i, align 1
  %indvars.iv.next.i = add nuw nsw i32 %i.0.i, 1
  %arrayidx31.i.1 = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 %indvars.iv.next.i
  %19 = ptrtoint ptr %arrayidx31.i.1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx31.i.1, align 2
  %arrayidx35.i.1 = getelementptr %struct.ath_buf, ptr %bf, i32 0, i32 7, i32 %indvars.iv.next.i
  %21 = ptrtoint ptr %arrayidx35.i.1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx35.i.1, align 1
  %flags.i.1 = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 %indvars.iv.next.i, i32 4
  %22 = ptrtoint ptr %flags.i.1 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %flags.i.1, align 2
  %flags43.i.1 = getelementptr %struct.ath_buf, ptr %bf, i32 0, i32 7, i32 %indvars.iv.next.i, i32 1
  %24 = ptrtoint ptr %flags43.i.1 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %bf.load44.i.1 = load i16, ptr %flags43.i.1, align 1
  %bf.value.i.1 = and i16 %23, 2047
  %bf.clear.i.1 = and i16 %bf.load44.i.1, -2048
  %bf.set.i.1 = or i16 %bf.clear.i.1, %bf.value.i.1
  store i16 %bf.set.i.1, ptr %flags43.i.1, align 1
  %25 = ptrtoint ptr %use_rts.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load45.i.1 = load i8, ptr %use_rts.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load45.i.1)
  %tobool47.not.i.1 = icmp sgt i8 %bf.load45.i.1, -1
  br i1 %tobool47.not.i.1, label %if.else61.i.1, label %if.then48.i.1

if.then48.i.1:                                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  %count_rts.i.1 = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 %indvars.iv.next.i, i32 3
  br label %for.inc.i.1

if.else61.i.1:                                    ; preds = %for.inc.i
  %26 = and i8 %bf.load45.i.1, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool65.not.i.1 = icmp eq i8 %26, 0
  br i1 %tobool65.not.i.1, label %if.else80.i.1, label %if.then66.i.1

if.then66.i.1:                                    ; preds = %if.else61.i.1
  call void @__sanitizer_cov_trace_pc() #13
  %count_cts.i.1 = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 %indvars.iv.next.i, i32 2
  br label %for.inc.i.1

if.else80.i.1:                                    ; preds = %if.else61.i.1
  call void @__sanitizer_cov_trace_pc() #13
  %count84.i.1 = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 %indvars.iv.next.i, i32 1
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.else80.i.1, %if.then66.i.1, %if.then48.i.1
  %.sink.in.i.1 = phi ptr [ %count_rts.i.1, %if.then48.i.1 ], [ %count84.i.1, %if.else80.i.1 ], [ %count_cts.i.1, %if.then66.i.1 ]
  %27 = ptrtoint ptr %.sink.in.i.1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %.sink.i.1 = load i8, ptr %.sink.in.i.1, align 1
  %bf.value58.i.1 = zext i8 %.sink.i.1 to i16
  %bf.shl.i.1 = shl i16 %bf.value58.i.1, 11
  %bf.set60.i.1 = or i16 %bf.shl.i.1, %bf.value.i.1
  %28 = ptrtoint ptr %flags43.i.1 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %bf.set60.i.1, ptr %flags43.i.1, align 1
  %indvars.iv.next.i.1 = or i32 %i.0.i, 2
  %arrayidx31.i.2 = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 %indvars.iv.next.i.1
  %29 = ptrtoint ptr %arrayidx31.i.2 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx31.i.2, align 2
  %arrayidx35.i.2 = getelementptr %struct.ath_buf, ptr %bf, i32 0, i32 7, i32 %indvars.iv.next.i.1
  %31 = ptrtoint ptr %arrayidx35.i.2 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx35.i.2, align 1
  %flags.i.2 = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 %indvars.iv.next.i.1, i32 4
  %32 = ptrtoint ptr %flags.i.2 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flags.i.2, align 2
  %flags43.i.2 = getelementptr %struct.ath_buf, ptr %bf, i32 0, i32 7, i32 %indvars.iv.next.i.1, i32 1
  %34 = ptrtoint ptr %flags43.i.2 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %bf.load44.i.2 = load i16, ptr %flags43.i.2, align 1
  %bf.value.i.2 = and i16 %33, 2047
  %bf.clear.i.2 = and i16 %bf.load44.i.2, -2048
  %bf.set.i.2 = or i16 %bf.clear.i.2, %bf.value.i.2
  store i16 %bf.set.i.2, ptr %flags43.i.2, align 1
  %35 = ptrtoint ptr %use_rts.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load45.i.2 = load i8, ptr %use_rts.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load45.i.2)
  %tobool47.not.i.2 = icmp sgt i8 %bf.load45.i.2, -1
  br i1 %tobool47.not.i.2, label %if.else61.i.2, label %if.then48.i.2

if.then48.i.2:                                    ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #13
  %count_rts.i.2 = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 %indvars.iv.next.i.1, i32 3
  br label %for.inc.i.2

if.else61.i.2:                                    ; preds = %for.inc.i.1
  %36 = and i8 %bf.load45.i.2, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool65.not.i.2 = icmp eq i8 %36, 0
  br i1 %tobool65.not.i.2, label %if.else80.i.2, label %if.then66.i.2

if.then66.i.2:                                    ; preds = %if.else61.i.2
  call void @__sanitizer_cov_trace_pc() #13
  %count_cts.i.2 = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 %indvars.iv.next.i.1, i32 2
  br label %for.inc.i.2

if.else80.i.2:                                    ; preds = %if.else61.i.2
  call void @__sanitizer_cov_trace_pc() #13
  %count84.i.2 = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 %indvars.iv.next.i.1, i32 1
  br label %for.inc.i.2

for.inc.i.2:                                      ; preds = %if.else80.i.2, %if.then66.i.2, %if.then48.i.2
  %.sink.in.i.2 = phi ptr [ %count_rts.i.2, %if.then48.i.2 ], [ %count84.i.2, %if.else80.i.2 ], [ %count_cts.i.2, %if.then66.i.2 ]
  %37 = ptrtoint ptr %.sink.in.i.2 to i32
  call void @__asan_load1_noabort(i32 %37)
  %.sink.i.2 = load i8, ptr %.sink.in.i.2, align 1
  %bf.value58.i.2 = zext i8 %.sink.i.2 to i16
  %bf.shl.i.2 = shl i16 %bf.value58.i.2, 11
  %bf.set60.i.2 = or i16 %bf.shl.i.2, %bf.value.i.2
  %38 = ptrtoint ptr %flags43.i.2 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %bf.set60.i.2, ptr %flags43.i.2, align 1
  %indvars.iv.next.i.2 = add nuw nsw i32 %i.0.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %indvars.iv.next.i.2)
  %exitcond.not.i.2 = icmp eq i32 %indvars.iv.next.i.2, 4
  br i1 %exitcond.not.i.2, label %for.inc.i.2.if.end_crit_edge, label %for.body.i.3

for.inc.i.2.if.end_crit_edge:                     ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i.3:                                     ; preds = %for.inc.i.2
  %arrayidx31.i.3 = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 %indvars.iv.next.i.2
  %39 = ptrtoint ptr %arrayidx31.i.3 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx31.i.3, align 2
  %arrayidx35.i.3 = getelementptr %struct.ath_buf, ptr %bf, i32 0, i32 7, i32 %indvars.iv.next.i.2
  %41 = ptrtoint ptr %arrayidx35.i.3 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx35.i.3, align 1
  %flags.i.3 = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 %indvars.iv.next.i.2, i32 4
  %42 = ptrtoint ptr %flags.i.3 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %flags.i.3, align 2
  %flags43.i.3 = getelementptr %struct.ath_buf, ptr %bf, i32 0, i32 7, i32 %indvars.iv.next.i.2, i32 1
  %44 = ptrtoint ptr %flags43.i.3 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %bf.load44.i.3 = load i16, ptr %flags43.i.3, align 1
  %bf.value.i.3 = and i16 %43, 2047
  %bf.clear.i.3 = and i16 %bf.load44.i.3, -2048
  %bf.set.i.3 = or i16 %bf.clear.i.3, %bf.value.i.3
  store i16 %bf.set.i.3, ptr %flags43.i.3, align 1
  %45 = ptrtoint ptr %use_rts.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load45.i.3 = load i8, ptr %use_rts.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load45.i.3)
  %tobool47.not.i.3 = icmp sgt i8 %bf.load45.i.3, -1
  br i1 %tobool47.not.i.3, label %if.else61.i.3, label %if.then48.i.3

if.then48.i.3:                                    ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #13
  %count_rts.i.3 = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 %indvars.iv.next.i.2, i32 3
  br label %for.inc.i.3

if.else61.i.3:                                    ; preds = %for.body.i.3
  %46 = and i8 %bf.load45.i.3, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool65.not.i.3 = icmp eq i8 %46, 0
  br i1 %tobool65.not.i.3, label %if.else80.i.3, label %if.then66.i.3

if.then66.i.3:                                    ; preds = %if.else61.i.3
  call void @__sanitizer_cov_trace_pc() #13
  %count_cts.i.3 = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 %indvars.iv.next.i.2, i32 2
  br label %for.inc.i.3

if.else80.i.3:                                    ; preds = %if.else61.i.3
  call void @__sanitizer_cov_trace_pc() #13
  %count84.i.3 = getelementptr %struct.ieee80211_sta_rates, ptr %3, i32 0, i32 1, i32 %indvars.iv.next.i.2, i32 1
  br label %for.inc.i.3

for.inc.i.3:                                      ; preds = %if.else80.i.3, %if.then66.i.3, %if.then48.i.3
  %.sink.in.i.3 = phi ptr [ %count_rts.i.3, %if.then48.i.3 ], [ %count84.i.3, %if.else80.i.3 ], [ %count_cts.i.3, %if.then66.i.3 ]
  %47 = ptrtoint ptr %.sink.in.i.3 to i32
  call void @__asan_load1_noabort(i32 %47)
  %.sink.i.3 = load i8, ptr %.sink.in.i.3, align 1
  %bf.value58.i.3 = zext i8 %.sink.i.3 to i16
  %bf.shl.i.3 = shl i16 %bf.value58.i.3, 11
  %bf.set60.i.3 = or i16 %bf.shl.i.3, %bf.value.i.3
  %48 = ptrtoint ptr %flags43.i.3 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 %bf.set60.i.3, ptr %flags43.i.3, align 1
  br label %if.end

if.then:                                          ; preds = %do.end10.i.if.then_crit_edge, %entry.if.then_crit_edge
  %49 = ptrtoint ptr %bf_mpdu to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bf_mpdu, align 4
  %rates = getelementptr inbounds %struct.ath_buf, ptr %bf, i32 0, i32 7
  tail call void @ieee80211_get_tx_rates(ptr noundef %vif, ptr noundef %sta, ptr noundef %50, ptr noundef %rates, i32 noundef 4) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %for.inc.i.3, %for.inc.i.2.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath_tx_fill_desc(ptr nocapture noundef readonly %sc, ptr noundef readonly %bf, ptr noundef readonly %txq, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.ath_tx_info, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %info) #11
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy, align 8
  %rts_threshold = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 36
  %6 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rts_threshold, align 4
  %8 = call ptr @memset(ptr %info, i32 0, i32 156)
  %is_first = getelementptr inbounds %struct.ath_tx_info, ptr %info, i32 0, i32 1
  %9 = ptrtoint ptr %is_first to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %is_first, align 1
  %is_last = getelementptr inbounds %struct.ath_tx_info, ptr %info, i32 0, i32 2
  %10 = ptrtoint ptr %is_last to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %is_last, align 2
  %axq_qnum = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 1
  %11 = ptrtoint ptr %axq_qnum to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %axq_qnum, align 4
  %conv = trunc i32 %12 to i8
  %13 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %info, align 4
  %tobool.not152 = icmp eq ptr %bf, null
  br i1 %tobool.not152, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %type = getelementptr inbounds %struct.ath_tx_info, ptr %info, i32 0, i32 14
  %link = getelementptr inbounds %struct.ath_tx_info, ptr %info, i32 0, i32 6
  %tx99_state = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 61
  %flags = getelementptr inbounds %struct.ath_tx_info, ptr %info, i32 0, i32 8
  %uapsdq = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp53.not = icmp eq i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool59.not = icmp eq i32 %7, 0
  %buf_addr = getelementptr inbounds %struct.ath_tx_info, ptr %info, i32 0, i32 9
  %buf_len = getelementptr inbounds %struct.ath_tx_info, ptr %info, i32 0, i32 10
  %pkt_len = getelementptr inbounds %struct.ath_tx_info, ptr %info, i32 0, i32 7
  %keyix76 = getelementptr inbounds %struct.ath_tx_info, ptr %info, i32 0, i32 16
  %keytype77 = getelementptr inbounds %struct.ath_tx_info, ptr %info, i32 0, i32 15
  %aggr90 = getelementptr inbounds %struct.ath_tx_info, ptr %info, i32 0, i32 3
  %ndelim94 = getelementptr inbounds %struct.ath_tx_info, ptr %info, i32 0, i32 4
  %aggr_len = getelementptr inbounds %struct.ath_tx_info, ptr %info, i32 0, i32 5
  %set_txdesc.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 63, i32 5
  br label %while.body

while.body:                                       ; preds = %if.end96.while.body_crit_edge, %while.body.lr.ph
  %rts.0.off0158 = phi i1 [ false, %while.body.lr.ph ], [ %rts.2.off0, %if.end96.while.body_crit_edge ]
  %bf_first.0157 = phi ptr [ null, %while.body.lr.ph ], [ %spec.store.select, %if.end96.while.body_crit_edge ]
  %len.addr.0155 = phi i32 [ %len, %while.body.lr.ph ], [ %len.addr.2, %if.end96.while.body_crit_edge ]
  %bf.addr.0153 = phi ptr [ %bf, %while.body.lr.ph ], [ %84, %if.end96.while.body_crit_edge ]
  %bf_mpdu = getelementptr inbounds %struct.ath_buf, ptr %bf.addr.0153, i32 0, i32 3
  %14 = ptrtoint ptr %bf_mpdu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bf_mpdu, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 3
  %bf_state = getelementptr inbounds %struct.ath_buf, ptr %bf.addr.0153, i32 0, i32 8
  %16 = ptrtoint ptr %bf_state to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bf_state, align 4
  %18 = and i8 %17, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool3.not = icmp eq i8 %18, 0
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 19
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %20, align 2
  %23 = and i16 %22, -1024
  %24 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i16 %23, label %if.else6.i [
    i16 -32768, label %while.body.get_hw_packet_type.exit_crit_edge
    i16 20480, label %if.end12.fold.split.i
    i16 -28672, label %if.end12.fold.split19.i
  ]

while.body.get_hw_packet_type.exit_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_hw_packet_type.exit

if.else6.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 -23552, i16 %23)
  %cmp.i18.i = icmp eq i16 %23, -23552
  %..i = select i1 %cmp.i18.i, i32 2, i32 0
  br label %get_hw_packet_type.exit

if.end12.fold.split.i:                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_hw_packet_type.exit

if.end12.fold.split19.i:                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_hw_packet_type.exit

get_hw_packet_type.exit:                          ; preds = %if.end12.fold.split19.i, %if.end12.fold.split.i, %if.else6.i, %while.body.get_hw_packet_type.exit_crit_edge
  %htype.0.i = phi i32 [ 3, %while.body.get_hw_packet_type.exit_crit_edge ], [ %..i, %if.else6.i ], [ 4, %if.end12.fold.split.i ], [ 1, %if.end12.fold.split19.i ]
  %25 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %htype.0.i, ptr %type, align 4
  %bf_next = getelementptr inbounds %struct.ath_buf, ptr %bf.addr.0153, i32 0, i32 2
  %26 = ptrtoint ptr %bf_next to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bf_next, align 4
  %tobool6.not = icmp eq ptr %27, null
  br i1 %tobool6.not, label %if.else, label %get_hw_packet_type.exit.if.end.sink.split_crit_edge

get_hw_packet_type.exit.if.end.sink.split_crit_edge: ; preds = %get_hw_packet_type.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.sink.split

if.else:                                          ; preds = %get_hw_packet_type.exit
  %28 = ptrtoint ptr %tx99_state to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tx99_state, align 8, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool8.not = icmp eq i8 %29, 0
  br i1 %tobool8.not, label %if.else.if.end_crit_edge, label %if.else.if.end.sink.split_crit_edge

if.else.if.end.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.sink.split

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.sink.split:                                ; preds = %if.else.if.end.sink.split_crit_edge, %get_hw_packet_type.exit.if.end.sink.split_crit_edge
  %bf.addr.0153.sink = phi ptr [ %27, %get_hw_packet_type.exit.if.end.sink.split_crit_edge ], [ %bf.addr.0153, %if.else.if.end.sink.split_crit_edge ]
  %bf_daddr10 = getelementptr inbounds %struct.ath_buf, ptr %bf.addr.0153.sink, i32 0, i32 5
  %30 = ptrtoint ptr %bf_daddr10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bf_daddr10, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge
  %storemerge = phi i32 [ 0, %if.else.if.end_crit_edge ], [ %31, %if.end.sink.split ]
  %32 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %storemerge, ptr %link, align 4
  %tobool12.not = icmp eq ptr %bf_first.0157, null
  br i1 %tobool12.not, label %if.then13, label %if.end.if.end71_crit_edge

if.end.if.end71_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

if.then13:                                        ; preds = %if.end
  %33 = ptrtoint ptr %tx99_state to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tx99_state, align 8, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool15.not = icmp eq i8 %34, 0
  br i1 %tobool15.not, label %if.then16, label %if.then13.if.end17_crit_edge

if.then13.if.end17_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 16, ptr %flags, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then13.if.end17_crit_edge
  %36 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cb.i, align 8
  %and19 = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %lor.lhs.false, label %if.end17.if.then22_crit_edge

if.end17.if.then22_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22

lor.lhs.false:                                    ; preds = %if.end17
  %38 = ptrtoint ptr %uapsdq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %uapsdq, align 4
  %cmp = icmp eq ptr %39, %txq
  br i1 %cmp, label %lor.lhs.false.if.then22_crit_edge, label %lor.lhs.false.if.end24_crit_edge

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22

if.then22:                                        ; preds = %lor.lhs.false.if.then22_crit_edge, %if.end17.if.then22_crit_edge
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags, align 4
  %or = or i32 %41, 4096
  store i32 %or, ptr %flags, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %lor.lhs.false.if.end24_crit_edge
  %42 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cb.i, align 8
  %and26 = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end24.if.end31_crit_edge, label %if.then28

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags, align 4
  %or30 = or i32 %45, 2
  store i32 %or30, ptr %flags, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end24.if.end31_crit_edge
  %46 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cb.i, align 8
  %and33 = and i32 %47, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end31.if.end38_crit_edge, label %if.then35

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags, align 4
  %or37 = or i32 %49, 2048
  store i32 %or37, ptr %flags, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end31.if.end38_crit_edge
  %bfs_paprd = getelementptr inbounds %struct.ath_buf, ptr %bf.addr.0153, i32 0, i32 8, i32 1
  %50 = ptrtoint ptr %bfs_paprd to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bfs_paprd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool40.not = icmp eq i8 %51, 0
  br i1 %tobool40.not, label %if.end38.if.end47_crit_edge, label %if.then41

if.end38.if.end47_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %conv44 = zext i8 %51 to i32
  %shl = shl nuw nsw i32 %conv44, 16
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags, align 4
  %or46 = or i32 %53, %shl
  store i32 %or46, ptr %flags, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then41, %if.end38.if.end47_crit_edge
  %or.cond = select i1 %tobool3.not, i1 true, i1 %cmp53.not
  br i1 %or.cond, label %if.end47.if.end65_crit_edge, label %if.then58, !prof !91

if.end47.if.end65_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

if.then58:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.0155, i32 %7)
  %cmp61 = icmp ugt i32 %len.addr.0155, %7
  %or.cond151 = select i1 %tobool59.not, i1 true, i1 %cmp61
  %spec.select = select i1 %or.cond151, i1 true, i1 %rts.0.off0158
  br label %if.end65

if.end65:                                         ; preds = %if.then58, %if.end47.if.end65_crit_edge
  %rts.1.off0 = phi i1 [ %rts.0.off0158, %if.end47.if.end65_crit_edge ], [ %spec.select, %if.then58 ]
  br i1 %tobool3.not, label %if.then67, label %if.end65.if.end69_crit_edge

if.end65.if.end69_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  %framelen = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 3, i32 28
  %54 = ptrtoint ptr %framelen to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %framelen, align 4
  %conv68 = zext i16 %55 to i32
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.end65.if.end69_crit_edge
  %len.addr.1 = phi i32 [ %len.addr.0155, %if.end65.if.end69_crit_edge ], [ %conv68, %if.then67 ]
  call fastcc void @ath_buf_set_rate(ptr noundef %sc, ptr noundef nonnull %bf.addr.0153, ptr noundef nonnull %info, i32 noundef %len.addr.1, i1 noundef zeroext %rts.1.off0)
  br label %if.end71

if.end71:                                         ; preds = %if.end69, %if.end.if.end71_crit_edge
  %len.addr.2 = phi i32 [ %len.addr.0155, %if.end.if.end71_crit_edge ], [ %len.addr.1, %if.end69 ]
  %bf_first.1 = phi ptr [ %bf_first.0157, %if.end.if.end71_crit_edge ], [ %bf.addr.0153, %if.end69 ]
  %rts.2.off0 = phi i1 [ %rts.0.off0158, %if.end.if.end71_crit_edge ], [ %rts.1.off0, %if.end69 ]
  %bf_buf_addr = getelementptr inbounds %struct.ath_buf, ptr %bf.addr.0153, i32 0, i32 6
  %56 = ptrtoint ptr %bf_buf_addr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bf_buf_addr, align 4
  %58 = ptrtoint ptr %buf_addr to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %buf_addr, align 4
  %len72 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 6
  %59 = ptrtoint ptr %len72 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len72, align 4
  %61 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %buf_len, align 4
  %framelen74 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 3, i32 28
  %62 = ptrtoint ptr %framelen74 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %framelen74, align 4
  %conv75 = zext i16 %63 to i32
  %64 = ptrtoint ptr %pkt_len to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv75, ptr %pkt_len, align 4
  %keyix = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 3, i32 31
  %65 = ptrtoint ptr %keyix to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %keyix, align 1
  %67 = ptrtoint ptr %keyix76 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %keyix76, align 4
  %keytype = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 3, i32 35
  %68 = ptrtoint ptr %keytype to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load = load i8, ptr %keytype, align 1
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.cast = zext i8 %bf.lshr to i32
  %69 = ptrtoint ptr %keytype77 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %bf.cast, ptr %keytype77, align 4
  br i1 %tobool3.not, label %if.end71.if.end96_crit_edge, label %if.then79

if.end71.if.end96_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96

if.then79:                                        ; preds = %if.end71
  %cmp80 = icmp eq ptr %bf.addr.0153, %bf_first.1
  br i1 %cmp80, label %if.then79.if.end92_crit_edge, label %if.else84

if.then79.if.end92_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

if.else84:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #13
  %bf_lastbf = getelementptr inbounds %struct.ath_buf, ptr %bf_first.1, i32 0, i32 1
  %70 = ptrtoint ptr %bf_lastbf to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bf_lastbf, align 4
  %cmp85 = icmp eq ptr %bf.addr.0153, %71
  %. = select i1 %cmp85, i32 3, i32 2
  br label %if.end92

if.end92:                                         ; preds = %if.else84, %if.then79.if.end92_crit_edge
  %.sink = phi i32 [ 1, %if.then79.if.end92_crit_edge ], [ %., %if.else84 ]
  %72 = ptrtoint ptr %aggr90 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %.sink, ptr %aggr90, align 4
  %ndelim = getelementptr inbounds %struct.ath_buf, ptr %bf.addr.0153, i32 0, i32 8, i32 2
  %73 = ptrtoint ptr %ndelim to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %ndelim, align 2
  %75 = ptrtoint ptr %ndelim94 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %ndelim94, align 4
  %conv95 = trunc i32 %len.addr.2 to i16
  %76 = ptrtoint ptr %aggr_len to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv95, ptr %aggr_len, align 2
  br label %if.end96

if.end96:                                         ; preds = %if.end92, %if.end71.if.end96_crit_edge
  %bf_lastbf97 = getelementptr inbounds %struct.ath_buf, ptr %bf_first.1, i32 0, i32 1
  %77 = ptrtoint ptr %bf_lastbf97 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bf_lastbf97, align 4
  %cmp98 = icmp eq ptr %bf.addr.0153, %78
  %spec.store.select = select i1 %cmp98, ptr null, ptr %bf_first.1
  %bf_desc = getelementptr inbounds %struct.ath_buf, ptr %bf.addr.0153, i32 0, i32 4
  %79 = ptrtoint ptr %bf_desc to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bf_desc, align 4
  %81 = ptrtoint ptr %set_txdesc.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %set_txdesc.i, align 4
  call void %82(ptr noundef %1, ptr noundef %80, ptr noundef nonnull %info) #11
  %83 = ptrtoint ptr %bf_next to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bf_next, align 4
  %tobool.not = icmp eq ptr %84, null
  br i1 %tobool.not, label %if.end96.while.end_crit_edge, label %if.end96.while.body_crit_edge

if.end96.while.body_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end96.while.end_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end96.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %info) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath_tx_txqaddbuf(ptr nocapture noundef %sc, ptr noundef %txq, ptr noundef %head, i1 noundef zeroext %internal) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %head, align 4
  %cmp.i.not = icmp eq ptr %3, %head
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %caps = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %prev = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %6 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev, align 4
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug_mask, align 4
  %and8 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.do.end_crit_edge, label %if.then10

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %axq_qnum = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 1
  %10 = ptrtoint ptr %axq_qnum to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %axq_qnum, align 4
  %axq_depth = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 5
  %12 = ptrtoint ptr %axq_depth to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %axq_depth, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.23, i32 noundef %11, i32 noundef %13) #11
  br label %do.end

do.end:                                           ; preds = %if.then10, %if.end.do.end_crit_edge
  br i1 %tobool2.not, label %do.end.if.else_crit_edge, label %land.lhs.true

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %do.end
  %txq_headidx = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 9
  %14 = ptrtoint ptr %txq_headidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %txq_headidx, align 4
  %idxprom = zext i8 %15 to i32
  %arrayidx = getelementptr %struct.ath_txq, ptr %txq, i32 0, i32 8, i32 %idxprom
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i157.not = icmp eq ptr %17, %arrayidx
  br i1 %cmp.i157.not, label %if.then15, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then15:                                        ; preds = %land.lhs.true
  %18 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %head, align 4
  %cmp.i.not.i = icmp eq ptr %19, %head
  br i1 %cmp.i.not.i, label %if.then15.list_splice_tail_init.exit_crit_edge, label %if.then.i

if.then15.list_splice_tail_init.exit_crit_edge:   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i = getelementptr %struct.ath_txq, ptr %txq, i32 0, i32 8, i32 %idxprom, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i, align 4
  %22 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %19, ptr %21, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx, ptr %23, align 4
  store ptr %23, ptr %prev.i, align 4
  %27 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %head, ptr %head, align 4
  store ptr %head, ptr %prev, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %if.then15.list_splice_tail_init.exit_crit_edge
  %28 = ptrtoint ptr %txq_headidx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %txq_headidx, align 4
  %inc = add i8 %29, 1
  %30 = and i8 %inc, 7
  store i8 %30, ptr %txq_headidx, align 4
  br label %do.body53

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end.if.else_crit_edge
  %31 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %head, align 4
  %cmp.i.not.i159 = icmp eq ptr %32, %head
  br i1 %cmp.i.not.i159, label %if.else.list_splice_tail_init.exit164_crit_edge, label %if.then.i163

if.else.list_splice_tail_init.exit164_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit164

if.then.i163:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %axq_q = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 3
  %prev.i160 = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %prev.i160 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i160, align 4
  %35 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev, align 4
  %prev3.i.i162 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %37 = ptrtoint ptr %prev3.i.i162 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i162, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %32, ptr %34, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %axq_q, ptr %36, align 4
  store ptr %36, ptr %prev.i160, align 4
  %40 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %head, ptr %head, align 4
  store ptr %head, ptr %prev, align 4
  br label %list_splice_tail_init.exit164

list_splice_tail_init.exit164:                    ; preds = %if.then.i163, %if.else.list_splice_tail_init.exit164_crit_edge
  %axq_link = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 2
  %41 = ptrtoint ptr %axq_link to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %axq_link, align 4
  %tobool27.not = icmp eq ptr %42, null
  br i1 %tobool27.not, label %if.else43, label %if.then28

if.then28:                                        ; preds = %list_splice_tail_init.exit164
  %bf_daddr = getelementptr inbounds %struct.ath_buf, ptr %3, i32 0, i32 5
  %43 = ptrtoint ptr %bf_daddr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bf_daddr, align 4
  %set_desc_link.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 63, i32 2
  %45 = ptrtoint ptr %set_desc_link.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %set_desc_link.i, align 4
  tail call void %46(ptr noundef nonnull %42, i32 noundef %44) #11
  %47 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %debug_mask, align 4
  %and32 = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end75.critedge155, label %if.then34

if.then34:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  %axq_qnum35 = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 1
  %49 = ptrtoint ptr %axq_qnum35 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %axq_qnum35, align 4
  %51 = ptrtoint ptr %axq_link to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %axq_link, align 4
  %53 = ptrtoint ptr %bf_daddr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bf_daddr, align 4
  %conv38 = zext i32 %54 to i64
  %bf_desc = getelementptr inbounds %struct.ath_buf, ptr %3, i32 0, i32 4
  %55 = ptrtoint ptr %bf_desc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bf_desc, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.24, i32 noundef %50, ptr noundef %52, i64 noundef %conv38, ptr noundef %56) #11
  %bf_desc48.c = getelementptr inbounds %struct.ath_buf, ptr %7, i32 0, i32 4
  %57 = ptrtoint ptr %bf_desc48.c to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bf_desc48.c, align 4
  %59 = ptrtoint ptr %axq_link to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %axq_link, align 4
  br label %if.end75

if.else43:                                        ; preds = %list_splice_tail_init.exit164
  %bf_desc48 = getelementptr inbounds %struct.ath_buf, ptr %7, i32 0, i32 4
  %60 = ptrtoint ptr %bf_desc48 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bf_desc48, align 4
  %62 = ptrtoint ptr %axq_link to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %axq_link, align 4
  br i1 %tobool2.not, label %if.else43.do.body53_crit_edge, label %if.else43.lor.lhs.false_crit_edge

if.else43.lor.lhs.false_crit_edge:                ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

if.else43.do.body53_crit_edge:                    ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body53

do.body53:                                        ; preds = %if.else43.do.body53_crit_edge, %list_splice_tail_init.exit
  %axq_qnum54 = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 1
  %63 = ptrtoint ptr %axq_qnum54 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %axq_qnum54, align 4
  %puttxbuf56 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 1, i32 %64, i32 17
  %65 = ptrtoint ptr %puttxbuf56 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %puttxbuf56, align 4
  %inc57 = add i32 %66, 1
  store i32 %inc57, ptr %puttxbuf56, align 4
  %67 = load i32, ptr %axq_qnum54, align 4
  %bf_daddr61 = getelementptr inbounds %struct.ath_buf, ptr %3, i32 0, i32 5
  %68 = ptrtoint ptr %bf_daddr61 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bf_daddr61, align 4
  tail call void @ath9k_hw_puttxbuf(ptr noundef %1, i32 noundef %67, i32 noundef %69) #11
  %70 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %debug_mask, align 4
  %and64 = and i32 %71, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %do.body53.if.end75_crit_edge, label %if.then66

do.body53.if.end75_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then66:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %axq_qnum54 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %axq_qnum54, align 4
  %74 = ptrtoint ptr %bf_daddr61 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bf_daddr61, align 4
  %conv69 = zext i32 %75 to i64
  %bf_desc71 = getelementptr inbounds %struct.ath_buf, ptr %3, i32 0, i32 4
  %76 = ptrtoint ptr %bf_desc71 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bf_desc71, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.25, i32 noundef %73, i64 noundef %conv69, ptr noundef %77) #11
  br label %if.end75

if.end75.critedge155:                             ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  %bf_desc48.c156 = getelementptr inbounds %struct.ath_buf, ptr %7, i32 0, i32 4
  %78 = ptrtoint ptr %bf_desc48.c156 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bf_desc48.c156, align 4
  %80 = ptrtoint ptr %axq_link to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %79, ptr %axq_link, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.end75.critedge155, %if.then66, %do.body53.if.end75_crit_edge, %if.then34
  br i1 %tobool2.not, label %if.end75.do.body80_crit_edge, label %if.end75.lor.lhs.false_crit_edge

if.end75.lor.lhs.false_crit_edge:                 ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

if.end75.do.body80_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body80

lor.lhs.false:                                    ; preds = %if.end75.lor.lhs.false_crit_edge, %if.else43.lor.lhs.false_crit_edge
  %tx99_state = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 61
  %81 = ptrtoint ptr %tx99_state to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %tx99_state, align 8, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool77.not = icmp eq i8 %82, 0
  br i1 %tobool77.not, label %lor.lhs.false.if.end90_crit_edge, label %lor.lhs.false.do.body80_crit_edge

lor.lhs.false.do.body80_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body80

lor.lhs.false.if.end90_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

do.body80:                                        ; preds = %lor.lhs.false.do.body80_crit_edge, %if.end75.do.body80_crit_edge
  %axq_qnum84 = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 1
  %83 = ptrtoint ptr %axq_qnum84 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %axq_qnum84, align 4
  %txstart = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 1, i32 %84, i32 18
  %85 = ptrtoint ptr %txstart to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %txstart, align 4
  %inc86 = add i32 %86, 1
  store i32 %inc86, ptr %txstart, align 4
  %87 = load i32, ptr %axq_qnum84, align 4
  tail call void @ath9k_hw_txstart(ptr noundef %1, i32 noundef %87) #11
  br label %if.end90

if.end90:                                         ; preds = %do.body80, %lor.lhs.false.if.end90_crit_edge
  %tobool93.not165 = icmp eq ptr %3, null
  %or.cond = select i1 %internal, i1 true, i1 %tobool93.not165
  br i1 %or.cond, label %if.end90.cleanup_crit_edge, label %while.body.lr.ph

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end90
  %axq_depth94 = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 5
  %axq_ampdu_depth = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %if.end99.while.body_crit_edge, %while.body.lr.ph
  %bf.0166 = phi ptr [ %3, %while.body.lr.ph ], [ %102, %if.end99.while.body_crit_edge ]
  %88 = ptrtoint ptr %axq_depth94 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %axq_depth94, align 4
  %inc95 = add i32 %89, 1
  store i32 %inc95, ptr %axq_depth94, align 4
  %bf_state.i = getelementptr inbounds %struct.ath_buf, ptr %bf.0166, i32 0, i32 8
  %90 = ptrtoint ptr %bf_state.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %bf_state.i, align 4
  %92 = and i8 %91, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i = icmp eq i8 %92, 0
  br i1 %tobool.not.i, label %while.body.if.end99_crit_edge, label %bf_is_ampdu_not_probing.exit

while.body.if.end99_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

bf_is_ampdu_not_probing.exit:                     ; preds = %while.body
  %bf_mpdu.i = getelementptr inbounds %struct.ath_buf, ptr %bf.0166, i32 0, i32 3
  %93 = ptrtoint ptr %bf_mpdu.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bf_mpdu.i, align 4
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cb.i.i, align 8
  %and1.i = and i32 %96, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.then97, label %bf_is_ampdu_not_probing.exit.if.end99_crit_edge

bf_is_ampdu_not_probing.exit.if.end99_crit_edge:  ; preds = %bf_is_ampdu_not_probing.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

if.then97:                                        ; preds = %bf_is_ampdu_not_probing.exit
  call void @__sanitizer_cov_trace_pc() #13
  %97 = ptrtoint ptr %axq_ampdu_depth to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %axq_ampdu_depth, align 4
  %inc98 = add i32 %98, 1
  store i32 %inc98, ptr %axq_ampdu_depth, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %bf_is_ampdu_not_probing.exit.if.end99_crit_edge, %while.body.if.end99_crit_edge
  %bf_lastbf = getelementptr inbounds %struct.ath_buf, ptr %bf.0166, i32 0, i32 1
  %99 = ptrtoint ptr %bf_lastbf to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bf_lastbf, align 4
  %bf_next = getelementptr inbounds %struct.ath_buf, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %bf_next to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %bf_next, align 4
  store ptr null, ptr %bf_next, align 4
  %tobool93.not = icmp eq ptr %102, null
  br i1 %tobool93.not, label %if.end99.cleanup_crit_edge, label %if.end99.while.body_crit_edge

if.end99.while.body_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end99.cleanup_crit_edge, %if.end90.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ath_txq_setup(ptr noundef %sc, i32 noundef %qtype, i32 noundef %subtype) local_unnamed_addr #0 align 64 {
entry:
  %qi = alloca %struct.ath9k_tx_queue_info, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %qi) #11
  %2 = call ptr @memset(ptr %qi, i32 0, i32 60)
  %arrayidx = getelementptr [4 x i32], ptr @ath_txq_setup.subtype_txq_to_hwq, i32 0, i32 %subtype
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %tqi_subtype = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 2
  %5 = ptrtoint ptr %tqi_subtype to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tqi_subtype, align 4
  %tqi_aifs = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 5
  %6 = ptrtoint ptr %tqi_aifs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %tqi_aifs, align 4
  %tqi_cwmin = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 6
  %7 = ptrtoint ptr %tqi_cwmin to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %tqi_cwmin, align 4
  %tqi_cwmax = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 7
  %8 = ptrtoint ptr %tqi_cwmax to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %tqi_cwmax, align 4
  %caps = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %caps, align 4
  %and = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tqi_qflags = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 3
  %11 = ptrtoint ptr %tqi_qflags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %tqi_qflags, align 4
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %qtype)
  %cmp = icmp eq i32 %qtype, 4
  %tqi_qflags2 = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 3
  br i1 %cmp, label %if.then1, label %if.else3

if.then1:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %tqi_qflags2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %tqi_qflags2, align 4
  br label %if.end5

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %tqi_qflags2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 6, ptr %tqi_qflags2, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else3, %if.then1, %if.then
  %call = call i32 @ath9k_hw_setuptxqueue(ptr noundef %1, i32 noundef %qtype, ptr noundef nonnull %qi) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp6 = icmp eq i32 %call, -1
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %tx = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35
  %14 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx, align 4
  %shl = shl nuw i32 1, %call
  %and9 = and i32 %15, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end8.if.end22_crit_edge

if.end8.if.end22_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx14 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %call
  %axq_qnum15 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %call, i32 1
  %16 = ptrtoint ptr %axq_qnum15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call, ptr %axq_qnum15, align 4
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %arrayidx14, align 4
  %axq_link = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %call, i32 2
  %18 = ptrtoint ptr %axq_link to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %axq_link, align 4
  %complete_q = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %call, i32 12
  %19 = ptrtoint ptr %complete_q to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %complete_q, ptr %complete_q, align 4
  %prev.i = getelementptr inbounds %struct.anon.62, ptr %complete_q, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %complete_q, ptr %prev.i, align 4
  %qlen.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %call, i32 12, i32 1
  %21 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %qlen.i, align 4
  %axq_q = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %call, i32 3
  %22 = ptrtoint ptr %axq_q to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %axq_q, ptr %axq_q, align 4
  %prev.i53 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %call, i32 3, i32 1
  %23 = ptrtoint ptr %prev.i53 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %axq_q, ptr %prev.i53, align 4
  %axq_lock = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %call, i32 4
  call void @__raw_spin_lock_init(ptr noundef %axq_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @ath_txq_setup.__key, i16 noundef signext 3) #11
  %axq_depth = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %call, i32 5
  %24 = ptrtoint ptr %axq_depth to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %axq_depth, align 4
  %axq_ampdu_depth = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %call, i32 6
  %25 = ptrtoint ptr %axq_ampdu_depth to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %axq_ampdu_depth, align 4
  %axq_tx_inprogress = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %call, i32 7
  %26 = ptrtoint ptr %axq_tx_inprogress to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %axq_tx_inprogress, align 4
  %27 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx, align 4
  %or = or i32 %28, %shl
  store i32 %or, ptr %tx, align 4
  %txq_tailidx = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %call, i32 10
  %29 = ptrtoint ptr %txq_tailidx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %txq_tailidx, align 1
  %txq_headidx = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %call, i32 9
  %30 = ptrtoint ptr %txq_headidx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %txq_headidx, align 4
  %arrayidx21 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %call, i32 8, i32 0
  %31 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %arrayidx21, ptr %arrayidx21, align 4
  %prev.i54 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %call, i32 8, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i54 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx21, ptr %prev.i54, align 4
  %arrayidx21.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %call, i32 8, i32 1
  %33 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %arrayidx21.1, ptr %arrayidx21.1, align 4
  %prev.i54.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %call, i32 8, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i54.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %arrayidx21.1, ptr %prev.i54.1, align 4
  %arrayidx21.2 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %call, i32 8, i32 2
  %35 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %arrayidx21.2, ptr %arrayidx21.2, align 4
  %prev.i54.2 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %call, i32 8, i32 2, i32 1
  %36 = ptrtoint ptr %prev.i54.2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx21.2, ptr %prev.i54.2, align 4
  %arrayidx21.3 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %call, i32 8, i32 3
  %37 = ptrtoint ptr %arrayidx21.3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %arrayidx21.3, ptr %arrayidx21.3, align 4
  %prev.i54.3 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %call, i32 8, i32 3, i32 1
  %38 = ptrtoint ptr %prev.i54.3 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %arrayidx21.3, ptr %prev.i54.3, align 4
  %arrayidx21.4 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %call, i32 8, i32 4
  %39 = ptrtoint ptr %arrayidx21.4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %arrayidx21.4, ptr %arrayidx21.4, align 4
  %prev.i54.4 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %call, i32 8, i32 4, i32 1
  %40 = ptrtoint ptr %prev.i54.4 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %arrayidx21.4, ptr %prev.i54.4, align 4
  %arrayidx21.5 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %call, i32 8, i32 5
  %41 = ptrtoint ptr %arrayidx21.5 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %arrayidx21.5, ptr %arrayidx21.5, align 4
  %prev.i54.5 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %call, i32 8, i32 5, i32 1
  %42 = ptrtoint ptr %prev.i54.5 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %arrayidx21.5, ptr %prev.i54.5, align 4
  %arrayidx21.6 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %call, i32 8, i32 6
  %43 = ptrtoint ptr %arrayidx21.6 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %arrayidx21.6, ptr %arrayidx21.6, align 4
  %prev.i54.6 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %call, i32 8, i32 6, i32 1
  %44 = ptrtoint ptr %prev.i54.6 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %arrayidx21.6, ptr %prev.i54.6, align 4
  %arrayidx21.7 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %call, i32 8, i32 7
  %45 = ptrtoint ptr %arrayidx21.7 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %arrayidx21.7, ptr %arrayidx21.7, align 4
  %prev.i54.7 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %call, i32 8, i32 7, i32 1
  %46 = ptrtoint ptr %prev.i54.7 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %arrayidx21.7, ptr %prev.i54.7, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then11, %if.end8.if.end22_crit_edge
  %arrayidx25 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %call
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end5.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx25, %if.end22 ], [ null, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %qi) #11
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_hw_setuptxqueue(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath_txq_update(ptr nocapture noundef readonly %sc, i32 noundef %qnum, ptr nocapture noundef readonly %qinfo) local_unnamed_addr #0 align 64 {
entry:
  %qi = alloca %struct.ath9k_tx_queue_info, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %qi) #11
  %2 = call ptr @memset(ptr %qi, i32 255, i32 60)
  %axq_qnum = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %qnum, i32 1
  %3 = ptrtoint ptr %axq_qnum to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %axq_qnum, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %qnum)
  %cmp.not = icmp eq i32 %4, %qnum
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !92

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath9k/xmit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1818, 0\0A.popsection", ""() #11, !srcloc !93
  unreachable

do.end7:                                          ; preds = %entry
  %call = call zeroext i1 @ath9k_hw_get_txq_props(ptr noundef %1, i32 noundef %qnum, ptr noundef nonnull %qi) #11
  %tqi_aifs = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qinfo, i32 0, i32 5
  %5 = ptrtoint ptr %tqi_aifs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tqi_aifs, align 4
  %tqi_aifs8 = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 5
  %7 = ptrtoint ptr %tqi_aifs8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tqi_aifs8, align 4
  %tqi_cwmin = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qinfo, i32 0, i32 6
  %8 = ptrtoint ptr %tqi_cwmin to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tqi_cwmin, align 4
  %tqi_cwmin9 = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 6
  %10 = ptrtoint ptr %tqi_cwmin9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tqi_cwmin9, align 4
  %tqi_cwmax = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qinfo, i32 0, i32 7
  %11 = ptrtoint ptr %tqi_cwmax to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tqi_cwmax, align 4
  %tqi_cwmax10 = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 7
  %13 = ptrtoint ptr %tqi_cwmax10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tqi_cwmax10, align 4
  %tqi_burstTime = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qinfo, i32 0, i32 12
  %14 = ptrtoint ptr %tqi_burstTime to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tqi_burstTime, align 4
  %tqi_burstTime11 = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 12
  %16 = ptrtoint ptr %tqi_burstTime11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tqi_burstTime11, align 4
  %tqi_readyTime = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qinfo, i32 0, i32 13
  %17 = ptrtoint ptr %tqi_readyTime to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tqi_readyTime, align 4
  %tqi_readyTime12 = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 13
  %19 = ptrtoint ptr %tqi_readyTime12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %tqi_readyTime12, align 4
  %call13 = call zeroext i1 @ath9k_hw_set_txq_props(ptr noundef %1, i32 noundef %qnum, ptr noundef nonnull %qi) #11
  br i1 %call13, label %if.else, label %if.then14

if.then14:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %21, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.4, ptr noundef %common.i, ptr noundef nonnull @.str.5, i32 noundef %qnum) #11
  br label %if.end18

if.else:                                          ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = call zeroext i1 @ath9k_hw_resettxqueue(ptr noundef %1, i32 noundef %qnum) #11
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then14
  %error.0 = phi i32 [ 0, %if.else ], [ -5, %if.then14 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %qi) #11
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_get_txq_props(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_set_txq_props(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_resettxqueue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath_cabq_update(ptr nocapture noundef readonly %sc) local_unnamed_addr #0 align 64 {
entry:
  %qi.i = alloca %struct.ath9k_tx_queue_info, align 4
  %qi = alloca %struct.ath9k_tx_queue_info, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %qi) #11
  %0 = call ptr @memset(ptr %qi, i32 255, i32 60)
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %1 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cur_chan, align 8
  %cabq = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 7
  %3 = ptrtoint ptr %cabq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cabq, align 4
  %axq_qnum = getelementptr inbounds %struct.ath_txq, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %axq_qnum to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %axq_qnum, align 4
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %7 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sc_ah, align 4
  %call = call zeroext i1 @ath9k_hw_get_txq_props(ptr noundef %8, i32 noundef %6, ptr noundef nonnull %qi) #11
  %beacon_interval = getelementptr inbounds %struct.ath_chanctx, ptr %2, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %beacon_interval, align 4
  %mul = mul i32 %10, 81920
  %div = sdiv i32 %mul, 100
  %tqi_readyTime = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 13
  %11 = ptrtoint ptr %tqi_readyTime to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div, ptr %tqi_readyTime, align 4
  %12 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sc_ah, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %qi.i) #11
  %14 = call ptr @memset(ptr %qi.i, i32 255, i32 60)
  %axq_qnum.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %6, i32 1
  %15 = ptrtoint ptr %axq_qnum.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %axq_qnum.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %6)
  %cmp.not.i = icmp eq i32 %16, %6
  br i1 %cmp.not.i, label %do.end7.i, label %do.body2.i, !prof !92

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath9k/xmit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1818, 0\0A.popsection", ""() #11, !srcloc !93
  unreachable

do.end7.i:                                        ; preds = %entry
  %call.i = call zeroext i1 @ath9k_hw_get_txq_props(ptr noundef %13, i32 noundef %6, ptr noundef nonnull %qi.i) #11
  %tqi_aifs.i = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 5
  %17 = ptrtoint ptr %tqi_aifs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tqi_aifs.i, align 4
  %tqi_aifs8.i = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi.i, i32 0, i32 5
  %19 = ptrtoint ptr %tqi_aifs8.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %tqi_aifs8.i, align 4
  %tqi_cwmin.i = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 6
  %20 = ptrtoint ptr %tqi_cwmin.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tqi_cwmin.i, align 4
  %tqi_cwmin9.i = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi.i, i32 0, i32 6
  %22 = ptrtoint ptr %tqi_cwmin9.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %tqi_cwmin9.i, align 4
  %tqi_cwmax.i = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 7
  %23 = ptrtoint ptr %tqi_cwmax.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tqi_cwmax.i, align 4
  %tqi_cwmax10.i = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi.i, i32 0, i32 7
  %25 = ptrtoint ptr %tqi_cwmax10.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %tqi_cwmax10.i, align 4
  %tqi_burstTime.i = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 12
  %26 = ptrtoint ptr %tqi_burstTime.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tqi_burstTime.i, align 4
  %tqi_burstTime11.i = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi.i, i32 0, i32 12
  %28 = ptrtoint ptr %tqi_burstTime11.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %tqi_burstTime11.i, align 4
  %29 = ptrtoint ptr %tqi_readyTime to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tqi_readyTime, align 4
  %tqi_readyTime12.i = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi.i, i32 0, i32 13
  %31 = ptrtoint ptr %tqi_readyTime12.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %tqi_readyTime12.i, align 4
  %call13.i = call zeroext i1 @ath9k_hw_set_txq_props(ptr noundef %13, i32 noundef %6, ptr noundef nonnull %qi.i) #11
  br i1 %call13.i, label %if.else.i, label %if.then14.i

if.then14.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sc_ah, align 4
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %33, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.4, ptr noundef %common.i.i, ptr noundef nonnull @.str.5, i32 noundef %6) #11
  br label %ath_txq_update.exit

if.else.i:                                        ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %call17.i = call zeroext i1 @ath9k_hw_resettxqueue(ptr noundef %13, i32 noundef %6) #11
  br label %ath_txq_update.exit

ath_txq_update.exit:                              ; preds = %if.else.i, %if.then14.i
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %qi.i) #11
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %qi) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_draintxq(ptr noundef %sc, ptr noundef %txq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !75) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !85
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %axq_lock.i = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %axq_lock.i) #11
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %4 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc_ah, align 4
  %caps = getelementptr inbounds %struct.ath_hw, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %caps, align 4
  %and = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %rcu_read_lock.exit.if.end_crit_edge, label %if.then

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %txq_tailidx = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 10
  %8 = ptrtoint ptr %txq_tailidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %txq_tailidx, align 1
  %conv = zext i8 %9 to i32
  %arrayidx34 = getelementptr %struct.ath_txq, ptr %txq, i32 0, i32 8, i32 %conv
  %10 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %arrayidx34, align 4
  %cmp.i.not35 = icmp eq ptr %11, %arrayidx34
  br i1 %cmp.i.not35, label %if.then.while.end_crit_edge, label %if.then.while.body_crit_edge

if.then.while.body_crit_edge:                     ; preds = %if.then
  br label %while.body

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then.while.body_crit_edge
  %arrayidx37 = phi ptr [ %arrayidx, %while.body.while.body_crit_edge ], [ %arrayidx34, %if.then.while.body_crit_edge ]
  %idx.036 = phi i32 [ %and4, %while.body.while.body_crit_edge ], [ %conv, %if.then.while.body_crit_edge ]
  tail call fastcc void @ath_drain_txq_list(ptr noundef %sc, ptr noundef %txq, ptr noundef %arrayidx37)
  %inc = add nuw nsw i32 %idx.036, 1
  %and4 = and i32 %inc, 7
  %arrayidx = getelementptr %struct.ath_txq, ptr %txq, i32 0, i32 8, i32 %and4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i.not = icmp eq ptr %13, %arrayidx
  br i1 %cmp.i.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then.while.end_crit_edge
  %idx.0.lcssa = phi i32 [ %conv, %if.then.while.end_crit_edge ], [ %and4, %while.body.while.end_crit_edge ]
  %conv5 = trunc i32 %idx.0.lcssa to i8
  %14 = ptrtoint ptr %txq_tailidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv5, ptr %txq_tailidx, align 1
  br label %if.end

if.end:                                           ; preds = %while.end, %rcu_read_lock.exit.if.end_crit_edge
  %axq_link = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 2
  %15 = ptrtoint ptr %axq_link to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %axq_link, align 4
  %axq_tx_inprogress = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 7
  %16 = ptrtoint ptr %axq_tx_inprogress to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %axq_tx_inprogress, align 4
  %axq_q = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 3
  tail call fastcc void @ath_drain_txq_list(ptr noundef %sc, ptr noundef %txq, ptr noundef %axq_q)
  tail call void @ath_txq_unlock_complete(ptr noundef %sc, ptr noundef %txq)
  %call.i25 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i25, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i28

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i28:                                ; preds = %if.end
  %call1.i26 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26)
  %tobool.not.i27 = icmp eq i32 %call1.i26, 0
  br i1 %tobool.not.i27, label %land.lhs.true.i28.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i30

land.lhs.true.i28.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i30:                               ; preds = %land.lhs.true.i28
  %.b4.i29 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i29, label %land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge, label %if.then.i31

land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i31:                                      ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i31, %land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i28.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !87
  %17 = tail call i32 @llvm.read_register.i32(metadata !75) #11
  %and.i.i.i.i.i32 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i32 to ptr
  %preempt_count.i.i.i.i33 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i33, align 4
  %sub.i.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i33, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath_drain_txq_list(ptr noundef %sc, ptr noundef %txq, ptr noundef %list) unnamed_addr #0 align 64 {
entry:
  %bf_head = alloca %struct.list_head, align 4
  %ts = alloca %struct.ath_tx_status, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bf_head.sroa.gep = getelementptr inbounds %struct.list_head, ptr %bf_head, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bf_head) #11
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ts) #11
  %0 = call ptr @memset(ptr %ts, i32 0, i32 48)
  %ts_status = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 2
  %1 = ptrtoint ptr %ts_status to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 64, ptr %ts_status, align 2
  %2 = ptrtoint ptr %bf_head to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %bf_head, ptr %bf_head, align 4
  %3 = ptrtoint ptr %bf_head.sroa.gep to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %bf_head, ptr %bf_head.sroa.gep, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %list, align 4
  %cmp.i.not14 = icmp eq ptr %5, %list
  br i1 %cmp.i.not14, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %txbuflock.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 1
  %txbuf.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 2
  %prev.i.i12 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 2, i32 1
  %prev.i.i13 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %6 = phi ptr [ %5, %while.body.lr.ph ], [ %24, %while.cond.backedge.while.body_crit_edge ]
  %stale = getelementptr inbounds %struct.ath_buf, ptr %6, i32 0, i32 8, i32 3
  %7 = ptrtoint ptr %stale to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %stale, align 1, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not = icmp eq i8 %8, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i11 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i11, align 4
  call void @_raw_spin_lock_bh(ptr noundef %txbuflock.i) #11
  %17 = ptrtoint ptr %prev.i.i12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i12, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %6, ptr noundef %18, ptr noundef %txbuf.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_del.exit.ath_tx_return_buffer.exit_crit_edge

list_del.exit.ath_tx_return_buffer.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tx_return_buffer.exit

if.end.i.i.i:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %prev.i.i12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %6, ptr %prev.i.i12, align 4
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %txbuf.i, ptr %6, align 4
  %21 = ptrtoint ptr %prev.i11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev.i11, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %6, ptr %18, align 4
  br label %ath_tx_return_buffer.exit

ath_tx_return_buffer.exit:                        ; preds = %if.end.i.i.i, %list_del.exit.ath_tx_return_buffer.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %txbuflock.i) #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %list_cut_position.exit, %ath_tx_return_buffer.exit
  %23 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %24, %list
  br i1 %cmp.i.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end:                                           ; preds = %while.body
  %bf_lastbf = getelementptr inbounds %struct.ath_buf, ptr %6, i32 0, i32 1
  %25 = ptrtoint ptr %bf_lastbf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bf_lastbf, align 4
  %27 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %list, align 4
  %cmp.i.not.i = icmp eq ptr %28, %list
  br i1 %cmp.i.not.i, label %if.end.list_cut_position.exit_crit_edge, label %if.end.i

if.end.list_cut_position.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_cut_position.exit

if.end.i:                                         ; preds = %if.end
  %29 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %list, align 4
  %cmp.i.not.i.i = icmp eq ptr %30, %list
  br i1 %cmp.i.not.i.i, label %if.end.i.if.end8.i_crit_edge, label %list_is_singular.exit.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

list_is_singular.exit.i:                          ; preds = %if.end.i
  %31 = ptrtoint ptr %prev.i.i13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i13, align 4
  %cmp.i22.not.i = icmp eq ptr %30, %32
  br i1 %cmp.i22.not.i, label %land.lhs.true.i, label %list_is_singular.exit.i.if.end8.i_crit_edge

list_is_singular.exit.i.if.end8.i_crit_edge:      ; preds = %list_is_singular.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

land.lhs.true.i:                                  ; preds = %list_is_singular.exit.i
  %cmp.i23.i = icmp eq ptr %26, %list
  %cmp.not.i = icmp eq ptr %30, %26
  %or.cond.i = select i1 %cmp.i23.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.if.end8.i_crit_edge, label %land.lhs.true.i.list_cut_position.exit_crit_edge

land.lhs.true.i.list_cut_position.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_cut_position.exit

land.lhs.true.i.if.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.end8.i:                                        ; preds = %land.lhs.true.i.if.end8.i_crit_edge, %list_is_singular.exit.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %cmp.i25.not.i = icmp eq ptr %26, %list
  br i1 %cmp.i25.not.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %bf_head to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %bf_head, ptr %bf_head, align 4
  br label %if.end12.sink.split.i

if.else.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %26, align 4
  %.sroa.gep = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %bf_head to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %30, ptr %bf_head, align 4
  %prev.i28.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i28.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %bf_head, ptr %prev.i28.i, align 4
  %38 = ptrtoint ptr %bf_head.sroa.gep to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %26, ptr %bf_head.sroa.gep, align 4
  store ptr %bf_head, ptr %26, align 4
  %39 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %35, ptr %list, align 4
  br label %if.end12.sink.split.i

if.end12.sink.split.i:                            ; preds = %if.else.i, %if.then11.i
  %head.sink.i = phi ptr [ %list, %if.else.i ], [ %bf_head, %if.then11.i ]
  %.sink.i.sroa.phi = phi ptr [ %.sroa.gep, %if.else.i ], [ %bf_head.sroa.gep, %if.then11.i ]
  %40 = ptrtoint ptr %.sink.i.sroa.phi to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %head.sink.i, ptr %.sink.i.sroa.phi, align 4
  br label %list_cut_position.exit

list_cut_position.exit:                           ; preds = %if.end12.sink.split.i, %land.lhs.true.i.list_cut_position.exit_crit_edge, %if.end.list_cut_position.exit_crit_edge
  call fastcc void @ath_tx_process_buffer(ptr noundef %sc, ptr noundef %txq, ptr noundef nonnull %ts, ptr noundef %6, ptr noundef nonnull %bf_head)
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ts) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bf_head) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ath_drain_all_txq(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  %2 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %op_flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @ath9k_hw_abort_tx_dma(ptr noundef %1) #11
  %tx = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %npend.077 = phi i32 [ 0, %if.end ], [ %npend.1, %for.inc.for.body_crit_edge ]
  %i.075 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx, align 4
  %shl = shl nuw nsw i32 1, %i.075
  %and = and i32 %5, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.end5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end5:                                          ; preds = %for.body
  %axq_depth = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %i.075, i32 5
  %6 = ptrtoint ptr %axq_depth to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %axq_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %if.end5.for.inc_crit_edge, label %if.end10

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %axq_qnum = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %i.075, i32 1
  %8 = ptrtoint ptr %axq_qnum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %axq_qnum, align 4
  %call14 = tail call i32 @ath9k_hw_numtxpending(ptr noundef %1, i32 noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  %or = select i1 %tobool15.not, i32 0, i32 %shl
  %spec.select = or i32 %or, %npend.077
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %if.end5.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %npend.1 = phi i32 [ %npend.077, %if.end5.for.inc_crit_edge ], [ %npend.077, %for.body.for.inc_crit_edge ], [ %spec.select, %if.end10 ]
  %inc = add nuw nsw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %npend.1)
  %tobool19.not = icmp eq i32 %npend.1, 0
  br i1 %tobool19.not, label %for.end.if.end30_crit_edge, label %do.body

for.end.if.end30_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

do.body:                                          ; preds = %for.end
  %arrayidx21 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 5, i32 12
  %10 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx21, align 4
  %inc22 = add i32 %11, 1
  store i32 %inc22, ptr %arrayidx21, align 4
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug_mask, align 4
  %and24 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body.if.end30_crit_edge, label %if.then26

do.body.if.end30_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.6, i32 noundef %npend.1) #11
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %do.body.if.end30_crit_edge, %for.end.if.end30_crit_edge
  %14 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx, align 4
  %and37 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end30.for.inc44_crit_edge, label %if.end40

if.end30.for.inc44_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc44

if.end40:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx43 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 0
  tail call void @ath_draintxq(ptr noundef %sc, ptr noundef %arrayidx43)
  br label %for.inc44

for.inc44:                                        ; preds = %if.end40, %if.end30.for.inc44_crit_edge
  %16 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx, align 4
  %and37.1 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.1)
  %tobool38.not.1 = icmp eq i32 %and37.1, 0
  br i1 %tobool38.not.1, label %for.inc44.for.inc44.1_crit_edge, label %if.end40.1

for.inc44.for.inc44.1_crit_edge:                  ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc44.1

if.end40.1:                                       ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx43.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 1
  tail call void @ath_draintxq(ptr noundef %sc, ptr noundef %arrayidx43.1)
  br label %for.inc44.1

for.inc44.1:                                      ; preds = %if.end40.1, %for.inc44.for.inc44.1_crit_edge
  %18 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx, align 4
  %and37.2 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.2)
  %tobool38.not.2 = icmp eq i32 %and37.2, 0
  br i1 %tobool38.not.2, label %for.inc44.1.for.inc44.2_crit_edge, label %if.end40.2

for.inc44.1.for.inc44.2_crit_edge:                ; preds = %for.inc44.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc44.2

if.end40.2:                                       ; preds = %for.inc44.1
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx43.2 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 2
  tail call void @ath_draintxq(ptr noundef %sc, ptr noundef %arrayidx43.2)
  br label %for.inc44.2

for.inc44.2:                                      ; preds = %if.end40.2, %for.inc44.1.for.inc44.2_crit_edge
  %20 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx, align 4
  %and37.3 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.3)
  %tobool38.not.3 = icmp eq i32 %and37.3, 0
  br i1 %tobool38.not.3, label %for.inc44.2.for.inc44.3_crit_edge, label %if.end40.3

for.inc44.2.for.inc44.3_crit_edge:                ; preds = %for.inc44.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc44.3

if.end40.3:                                       ; preds = %for.inc44.2
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx43.3 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 3
  tail call void @ath_draintxq(ptr noundef %sc, ptr noundef %arrayidx43.3)
  br label %for.inc44.3

for.inc44.3:                                      ; preds = %if.end40.3, %for.inc44.2.for.inc44.3_crit_edge
  %22 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx, align 4
  %and37.4 = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.4)
  %tobool38.not.4 = icmp eq i32 %and37.4, 0
  br i1 %tobool38.not.4, label %for.inc44.3.for.inc44.4_crit_edge, label %if.end40.4

for.inc44.3.for.inc44.4_crit_edge:                ; preds = %for.inc44.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc44.4

if.end40.4:                                       ; preds = %for.inc44.3
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx43.4 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 4
  tail call void @ath_draintxq(ptr noundef %sc, ptr noundef %arrayidx43.4)
  br label %for.inc44.4

for.inc44.4:                                      ; preds = %if.end40.4, %for.inc44.3.for.inc44.4_crit_edge
  %24 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx, align 4
  %and37.5 = and i32 %25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.5)
  %tobool38.not.5 = icmp eq i32 %and37.5, 0
  br i1 %tobool38.not.5, label %for.inc44.4.for.inc44.5_crit_edge, label %if.end40.5

for.inc44.4.for.inc44.5_crit_edge:                ; preds = %for.inc44.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc44.5

if.end40.5:                                       ; preds = %for.inc44.4
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx43.5 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 5
  tail call void @ath_draintxq(ptr noundef %sc, ptr noundef %arrayidx43.5)
  br label %for.inc44.5

for.inc44.5:                                      ; preds = %if.end40.5, %for.inc44.4.for.inc44.5_crit_edge
  %26 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx, align 4
  %and37.6 = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.6)
  %tobool38.not.6 = icmp eq i32 %and37.6, 0
  br i1 %tobool38.not.6, label %for.inc44.5.for.inc44.6_crit_edge, label %if.end40.6

for.inc44.5.for.inc44.6_crit_edge:                ; preds = %for.inc44.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc44.6

if.end40.6:                                       ; preds = %for.inc44.5
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx43.6 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 6
  tail call void @ath_draintxq(ptr noundef %sc, ptr noundef %arrayidx43.6)
  br label %for.inc44.6

for.inc44.6:                                      ; preds = %if.end40.6, %for.inc44.5.for.inc44.6_crit_edge
  %28 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx, align 4
  %and37.7 = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.7)
  %tobool38.not.7 = icmp eq i32 %and37.7, 0
  br i1 %tobool38.not.7, label %for.inc44.6.for.inc44.7_crit_edge, label %if.end40.7

for.inc44.6.for.inc44.7_crit_edge:                ; preds = %for.inc44.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc44.7

if.end40.7:                                       ; preds = %for.inc44.6
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx43.7 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 7
  tail call void @ath_draintxq(ptr noundef %sc, ptr noundef %arrayidx43.7)
  br label %for.inc44.7

for.inc44.7:                                      ; preds = %if.end40.7, %for.inc44.6.for.inc44.7_crit_edge
  %30 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx, align 4
  %and37.8 = and i32 %31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.8)
  %tobool38.not.8 = icmp eq i32 %and37.8, 0
  br i1 %tobool38.not.8, label %for.inc44.7.for.inc44.8_crit_edge, label %if.end40.8

for.inc44.7.for.inc44.8_crit_edge:                ; preds = %for.inc44.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc44.8

if.end40.8:                                       ; preds = %for.inc44.7
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx43.8 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 8
  tail call void @ath_draintxq(ptr noundef %sc, ptr noundef %arrayidx43.8)
  br label %for.inc44.8

for.inc44.8:                                      ; preds = %if.end40.8, %for.inc44.7.for.inc44.8_crit_edge
  %32 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx, align 4
  %and37.9 = and i32 %33, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.9)
  %tobool38.not.9 = icmp eq i32 %and37.9, 0
  br i1 %tobool38.not.9, label %for.inc44.8.cleanup_crit_edge, label %if.end40.9

for.inc44.8.cleanup_crit_edge:                    ; preds = %for.inc44.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end40.9:                                       ; preds = %for.inc44.8
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx43.9 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 9
  tail call void @ath_draintxq(ptr noundef %sc, ptr noundef %arrayidx43.9)
  br label %cleanup

cleanup:                                          ; preds = %if.end40.9, %for.inc44.8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ %tobool19.not, %if.end40.9 ], [ %tobool19.not, %for.inc44.8.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_abort_tx_dma(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_hw_numtxpending(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_tx_cleanupq(ptr nocapture noundef %sc, ptr nocapture noundef readonly %txq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %axq_qnum = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 1
  %2 = ptrtoint ptr %axq_qnum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %axq_qnum, align 4
  %call = tail call zeroext i1 @ath9k_hw_releasetxqueue(ptr noundef %1, i32 noundef %3) #11
  %4 = ptrtoint ptr %axq_qnum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %axq_qnum, align 4
  %shl = shl nuw i32 1, %5
  %neg = xor i32 %shl, -1
  %tx = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35
  %6 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx, align 4
  %and = and i32 %7, %neg
  store i32 %and, ptr %tx, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_releasetxqueue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_txq_schedule_start(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_next_txq(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_return_txq(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_txq_schedule_all(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 5, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %axq_lock = getelementptr inbounds %struct.ath_txq, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %axq_lock) #11
  tail call void @ath_txq_schedule(ptr noundef %sc, ptr noundef %1)
  tail call void @_raw_spin_unlock_bh(ptr noundef %axq_lock) #11
  %arrayidx.1 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 5, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  %axq_lock.1 = getelementptr inbounds %struct.ath_txq, ptr %3, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %axq_lock.1) #11
  tail call void @ath_txq_schedule(ptr noundef %sc, ptr noundef %3)
  tail call void @_raw_spin_unlock_bh(ptr noundef %axq_lock.1) #11
  %arrayidx.2 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 5, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  %axq_lock.2 = getelementptr inbounds %struct.ath_txq, ptr %5, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %axq_lock.2) #11
  tail call void @ath_txq_schedule(ptr noundef %sc, ptr noundef %5)
  tail call void @_raw_spin_unlock_bh(ptr noundef %axq_lock.2) #11
  %arrayidx.3 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 5, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  %axq_lock.3 = getelementptr inbounds %struct.ath_txq, ptr %7, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %axq_lock.3) #11
  tail call void @ath_txq_schedule(ptr noundef %sc, ptr noundef %7)
  tail call void @_raw_spin_unlock_bh(ptr noundef %axq_lock.3) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @ath_txchainmask_reduction(ptr nocapture noundef readonly %sc, i8 noundef zeroext %chainmask, i32 noundef %rate) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %caps = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps, align 4
  %and = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %curchan1 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %curchan1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %curchan1, align 4
  %channelFlags = getelementptr inbounds %struct.ath9k_channel, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %channelFlags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %channelFlags, align 2
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool3.not = icmp ne i16 %8, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %chainmask)
  %cmp = icmp eq i8 %chainmask, 7
  %or.cond = and i1 %cmp, %tobool3.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %rate)
  %cmp8 = icmp ult i32 %rate, 144
  %or.cond29 = and i1 %cmp8, %or.cond
  br i1 %or.cond29, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 4, i32 3
  %9 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %10)
  %cmp10 = icmp eq i32 %10, 640
  br i1 %cmp10, label %land.lhs.true12, label %if.else.if.else21_crit_edge

if.else.if.else21_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else21

land.lhs.true12:                                  ; preds = %if.else
  %enabled.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 72, i32 3
  %11 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enabled.i, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.i = icmp ne i8 %12, 0
  %13 = add i32 %rate, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %13)
  %14 = icmp ult i32 %13, 7
  %15 = and i1 %14, %tobool.i
  br i1 %15, label %land.lhs.true12.cleanup_crit_edge, label %land.lhs.true12.if.else21_crit_edge

land.lhs.true12.if.else21_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else21

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else21:                                        ; preds = %land.lhs.true12.if.else21_crit_edge, %if.else.if.else21_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.else21, %land.lhs.true12.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i8 [ %chainmask, %if.else21 ], [ 3, %land.lhs.true.cleanup_crit_edge ], [ 2, %land.lhs.true12.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath_assign_seq(ptr nocapture readnone %common, ptr nocapture noundef readonly %skb) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %vif1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %2 = ptrtoint ptr %vif1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vif1, align 8
  %4 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cb.i, align 8
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %tobool2.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %entry
  %and6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end4.if.end10_crit_edge, label %if.then8

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %seq_no = getelementptr inbounds %struct.ieee80211_vif, ptr %3, i32 1, i32 1
  %6 = ptrtoint ptr %seq_no to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %seq_no, align 8
  %add = add i16 %7, 16
  store i16 %add, ptr %seq_no, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end4.if.end10_crit_edge
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %seq_ctrl, align 2
  %10 = and i16 %9, 3840
  store i16 %10, ptr %seq_ctrl, align 2
  %seq_no14 = getelementptr inbounds %struct.ieee80211_vif, ptr %3, i32 1, i32 1
  %11 = ptrtoint ptr %seq_no14 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %seq_no14, align 8
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %or28 = or i16 %13, %10
  %14 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %or28, ptr %seq_ctrl, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath_tx_start(ptr nocapture noundef readonly %hw, ptr noundef %skb, ptr nocapture noundef %txctl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sta1 = getelementptr inbounds %struct.ath_tx_control, ptr %txctl, i32 0, i32 2
  %0 = ptrtoint ptr %sta1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sta1, align 4
  %vif2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %2 = ptrtoint ptr %vif2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vif2, align 8
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %6 = ptrtoint ptr %txctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %txctl, align 4
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %call6 = tail call fastcc i32 @ath_tx_prepare(ptr noundef %hw, ptr noundef %skb, ptr noundef %txctl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %10 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %queue_mapping.i, align 8
  %conv = zext i16 %11 to i32
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then10

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %uapsdq = getelementptr inbounds %struct.ath_softc, ptr %5, i32 0, i32 35, i32 6
  %12 = ptrtoint ptr %uapsdq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %uapsdq, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  %txq.0 = phi ptr [ %13, %if.then10 ], [ %7, %if.end.if.end11_crit_edge ]
  %14 = ptrtoint ptr %sta1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sta1, align 4
  %tobool13.not = icmp eq ptr %15, null
  br i1 %tobool13.not, label %if.end11.if.end16_crit_edge, label %if.then14

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then14:                                        ; preds = %if.end11
  %vif2.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %vif2.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vif2.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %do.body6.i.i, label %ath_get_skb_tid.exit, !prof !88

do.body6.i.i:                                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath9k/ath9k.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #11, !srcloc !89
  unreachable

ath_get_skb_tid.exit:                             ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %18 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %priority.i, align 4
  %conv.i = and i32 %19, 15
  %sta1.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %1, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %sta1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sta1.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %21, null
  %arrayidx.i.i = getelementptr %struct.ieee80211_sta, ptr %21, i32 0, i32 28, i32 %conv.i
  %txq15.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %17, i32 0, i32 8
  %txq.0.in.i.i = select i1 %tobool12.not.i.i, ptr %txq15.i.i, ptr %arrayidx.i.i
  %22 = ptrtoint ptr %txq.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %txq.0.i.i = load ptr, ptr %txq.0.in.i.i, align 4
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i.i, i32 0, i32 5
  br label %if.end16

if.end16:                                         ; preds = %ath_get_skb_tid.exit, %if.end11.if.end16_crit_edge
  %tid.0 = phi ptr [ %drv_priv.i.i, %ath_get_skb_tid.exit ], [ null, %if.end11.if.end16_crit_edge ]
  %axq_lock.i = getelementptr inbounds %struct.ath_txq, ptr %txq.0, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %axq_lock.i) #11
  %arrayidx = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 35, i32 5, i32 %conv
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %txq.0, %24
  br i1 %cmp, label %if.then19, label %if.end16.if.end22_crit_edge

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %conv20 = trunc i16 %11 to i8
  %txq21 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 30
  %25 = ptrtoint ptr %txq21 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv20, ptr %txq21, align 2
  %pending_frames = getelementptr inbounds %struct.ath_txq, ptr %txq.0, i32 0, i32 11
  %26 = ptrtoint ptr %pending_frames to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pending_frames, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %pending_frames, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end16.if.end22_crit_edge
  %call23 = tail call fastcc ptr @ath_tx_setup_buffer(ptr noundef %5, ptr noundef %tid.0, ptr noundef %skb)
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.then25, label %if.end30

if.then25:                                        ; preds = %if.end22
  %txq1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 30
  %28 = ptrtoint ptr %txq1.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %txq1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp.i = icmp slt i8 %29, 0
  br i1 %cmp.i, label %if.then25.ath_txq_skb_done.exit_crit_edge, label %if.end.i

if.then25.ath_txq_skb_done.exit_crit_edge:        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_txq_skb_done.exit

if.end.i:                                         ; preds = %if.then25
  %conv1.i = zext i8 %29 to i32
  %arrayidx.i = getelementptr %struct.ath_softc, ptr %5, i32 0, i32 35, i32 5, i32 %conv1.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 4
  %pending_frames.i = getelementptr inbounds %struct.ath_txq, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %pending_frames.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pending_frames.i, align 4
  %dec.i = add i32 %33, -1
  store i32 %dec.i, ptr %pending_frames.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp3.i = icmp slt i32 %dec.i, 0
  br i1 %cmp3.i, label %do.end.i, label %if.end.i.ath_txq_skb_done.exit_crit_edge, !prof !88

if.end.i.ath_txq_skb_done.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_txq_skb_done.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 215, i32 noundef 9, ptr noundef null) #11
  %34 = ptrtoint ptr %pending_frames.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %pending_frames.i, align 4
  br label %ath_txq_skb_done.exit

ath_txq_skb_done.exit:                            ; preds = %do.end.i, %if.end.i.ath_txq_skb_done.exit_crit_edge, %if.then25.ath_txq_skb_done.exit_crit_edge
  %paprd = getelementptr inbounds %struct.ath_tx_control, ptr %txctl, i32 0, i32 3
  %35 = ptrtoint ptr %paprd to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %paprd, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool26.not = icmp eq i8 %36, 0
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %ath_txq_skb_done.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #11
  br label %out

if.else:                                          ; preds = %ath_txq_skb_done.exit
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %5, align 8
  tail call void @ieee80211_free_txskb(ptr noundef %38, ptr noundef %skb) #11
  br label %out

if.end30:                                         ; preds = %if.end22
  %paprd31 = getelementptr inbounds %struct.ath_tx_control, ptr %txctl, i32 0, i32 3
  %39 = ptrtoint ptr %paprd31 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %paprd31, align 4
  %bfs_paprd = getelementptr inbounds %struct.ath_buf, ptr %call23, i32 0, i32 8, i32 1
  %41 = ptrtoint ptr %bfs_paprd to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %bfs_paprd, align 1
  %42 = load i8, ptr %paprd31, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool33.not = icmp eq i8 %42, 0
  br i1 %tobool33.not, label %if.end30.if.end36_crit_edge, label %if.then34

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %bfs_paprd_timestamp = getelementptr inbounds %struct.ath_buf, ptr %call23, i32 0, i32 8, i32 5
  %44 = ptrtoint ptr %bfs_paprd_timestamp to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %bfs_paprd_timestamp, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end30.if.end36_crit_edge
  tail call fastcc void @ath_set_rates(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %call23)
  tail call fastcc void @ath_tx_send_normal(ptr noundef %5, ptr noundef %txq.0, ptr noundef %tid.0, ptr noundef %skb)
  br label %out

out:                                              ; preds = %if.end36, %if.else, %if.then27
  tail call void @_raw_spin_unlock_bh(ptr noundef %axq_lock.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath_tx_prepare(ptr nocapture noundef readonly %hw, ptr noundef %skb, ptr nocapture noundef %txctl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %sta1 = getelementptr inbounds %struct.ath_tx_control, ptr %txctl, i32 0, i32 2
  %2 = ptrtoint ptr %sta1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sta1, align 4
  %vif2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %4 = ptrtoint ptr %vif2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vif2, align 8
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %add = add i32 %7, 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 0, i32 29
  br label %if.end9.sink.split

if.else:                                          ; preds = %entry
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.else.if.end9_crit_edge, label %land.lhs.true

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true:                                    ; preds = %if.else
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %1, align 2
  %10 = and i16 %9, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %10)
  %cmp.i = icmp eq i16 %10, 2048
  br i1 %cmp.i, label %if.then5, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %mcast_node = getelementptr inbounds %struct.ieee80211_vif, ptr %5, i32 1, i32 1, i32 11
  br label %if.end9.sink.split

if.end9.sink.split:                               ; preds = %if.then5, %if.then
  %mcast_node.sink = phi ptr [ %mcast_node, %if.then5 ], [ %drv_priv, %if.then ]
  %an8 = getelementptr inbounds %struct.ath_tx_control, ptr %txctl, i32 0, i32 1
  %11 = ptrtoint ptr %an8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %mcast_node.sink, ptr %an8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %land.lhs.true.if.end9_crit_edge, %if.else.if.end9_crit_edge
  %hw_key = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %12 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw_key, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %if.end9.if.end14_crit_edge, label %if.then11

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %icv_len = getelementptr inbounds %struct.ieee80211_key_conf, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %icv_len to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %icv_len, align 4
  %conv = zext i8 %15 to i32
  %add13 = add i32 %add, %conv
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9.if.end14_crit_edge
  %frmlen.0 = phi i32 [ %add13, %if.then11 ], [ %add, %if.end9.if.end14_crit_edge ]
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %18 = ptrtoint ptr %vif2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vif2, align 8
  %20 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cb.i, align 8
  %and.i = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %tobool2.not.i = icmp eq ptr %19, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %if.end14.ath_assign_seq.exit_crit_edge, label %if.end4.i

if.end14.ath_assign_seq.exit_crit_edge:           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_assign_seq.exit

if.end4.i:                                        ; preds = %if.end14
  %and6.i = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end4.i.if.end10.i_crit_edge, label %if.then8.i

if.end4.i.if.end10.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %seq_no.i = getelementptr inbounds %struct.ieee80211_vif, ptr %19, i32 1, i32 1
  %22 = ptrtoint ptr %seq_no.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %seq_no.i, align 8
  %add.i = add i16 %23, 16
  store i16 %add.i, ptr %seq_no.i, align 8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end4.i.if.end10.i_crit_edge
  %seq_ctrl.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %17, i32 0, i32 5
  %24 = ptrtoint ptr %seq_ctrl.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %seq_ctrl.i, align 2
  %26 = and i16 %25, 3840
  store i16 %26, ptr %seq_ctrl.i, align 2
  %seq_no14.i = getelementptr inbounds %struct.ieee80211_vif, ptr %19, i32 1, i32 1
  %27 = ptrtoint ptr %seq_no14.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %seq_no14.i, align 8
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #11
  %or28.i = or i16 %29, %26
  %30 = ptrtoint ptr %seq_ctrl.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %or28.i, ptr %seq_ctrl.i, align 2
  br label %ath_assign_seq.exit

ath_assign_seq.exit:                              ; preds = %if.end10.i, %if.end14.ath_assign_seq.exit_crit_edge
  %tobool16.not = icmp eq ptr %5, null
  br i1 %tobool16.not, label %ath_assign_seq.exit.lor.lhs.false_crit_edge, label %land.lhs.true17

ath_assign_seq.exit.lor.lhs.false_crit_edge:      ; preds = %ath_assign_seq.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

land.lhs.true17:                                  ; preds = %ath_assign_seq.exit
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %5, align 8
  %.off = add i32 %32, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %land.lhs.true17.lor.lhs.false_crit_edge, label %land.lhs.true17.if.then25_crit_edge

land.lhs.true17.if.then25_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

land.lhs.true17.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true17.lor.lhs.false_crit_edge, %ath_assign_seq.exit.lor.lhs.false_crit_edge
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %1, align 2
  %35 = and i16 %34, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %35)
  %cmp.i84 = icmp eq i16 %35, 2048
  br i1 %cmp.i84, label %lor.lhs.false.if.end26_crit_edge, label %lor.lhs.false.if.then25_crit_edge

lor.lhs.false.if.then25_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

lor.lhs.false.if.end26_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then25:                                        ; preds = %lor.lhs.false.if.then25_crit_edge, %land.lhs.true17.if.then25_crit_edge
  %36 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cb.i, align 8
  %or = or i32 %37, 8
  store i32 %or, ptr %cb.i, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %lor.lhs.false.if.end26_crit_edge
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %1, align 2
  %call28 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %39) #14
  %and = and i32 %call28, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.end26.if.end43_crit_edge, label %land.lhs.true30

if.end26.if.end43_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

land.lhs.true30:                                  ; preds = %if.end26
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %call28)
  %cmp32 = icmp ugt i32 %41, %call28
  br i1 %cmp32, label %if.then34, label %land.lhs.true30.if.end43_crit_edge

land.lhs.true30.if.end43_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then34:                                        ; preds = %land.lhs.true30
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %44 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %43 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %45 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %and)
  %cmp36 = icmp ult i32 %sub.ptr.sub.i, %and
  br i1 %cmp36, label %if.then34.cleanup_crit_edge, label %if.end39

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end39:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  %call40 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %and) #11
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %47, i32 %and
  %48 = call ptr @memmove(ptr %47, ptr %add.ptr, i32 %call28)
  br label %if.end43

if.end43:                                         ; preds = %if.end39, %land.lhs.true30.if.end43_crit_edge, %if.end26.if.end43_crit_edge
  %49 = ptrtoint ptr %hw_key to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw_key, align 4
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data, align 4
  %53 = ptrtoint ptr %vif2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vif2, align 8
  %tobool.not.i87 = icmp eq ptr %54, null
  br i1 %tobool.not.i87, label %if.end43.if.end.i_crit_edge, label %land.lhs.true.i

if.end43.if.end.i_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %use_short_preamble.i = getelementptr inbounds %struct.ieee80211_vif, ptr %54, i32 0, i32 1, i32 15
  %55 = ptrtoint ptr %use_short_preamble.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %use_short_preamble.i, align 1, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool4.not.i = icmp ne i8 %56, 0
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %if.end43.if.end.i_crit_edge
  %short_preamble.0.off0.i = phi i1 [ false, %if.end43.if.end.i_crit_edge ], [ %tobool4.not.i, %land.lhs.true.i ]
  %rts_cts_rate_idx.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %57 = ptrtoint ptr %rts_cts_rate_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %rts_cts_rate_idx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp.i.i = icmp slt i8 %58, 0
  br i1 %cmp.i.i, label %if.end.i.ieee80211_get_rts_cts_rate.exit.i_crit_edge, label %if.end.i.i

if.end.i.ieee80211_get_rts_cts_rate.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ieee80211_get_rts_cts_rate.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv6.i.i = zext i8 %58 to i32
  %wiphy.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %59 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %wiphy.i.i, align 8
  %band.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %61 = ptrtoint ptr %band.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %bf.load.i.i = load i32, ptr %band.i.i, align 4
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 29
  %arrayidx.i.i = getelementptr %struct.wiphy, ptr %60, i32 0, i32 53, i32 %bf.lshr.i.i
  %62 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i, align 4
  %bitrates.i.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %bitrates.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bitrates.i.i, align 4
  %arrayidx3.i.i = getelementptr %struct.ieee80211_rate, ptr %65, i32 %conv6.i.i
  br label %ieee80211_get_rts_cts_rate.exit.i

ieee80211_get_rts_cts_rate.exit.i:                ; preds = %if.end.i.i, %if.end.i.ieee80211_get_rts_cts_rate.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %arrayidx3.i.i, %if.end.i.i ], [ null, %if.end.i.ieee80211_get_rts_cts_rate.exit.i_crit_edge ]
  %call6.i = tail call i32 @ath9k_cmn_get_hw_crypto_keytype(ptr noundef %skb) #11
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 0, i32 29
  %spec.select107.i = select i1 %tobool.not, ptr null, ptr %drv_priv.i
  %66 = ptrtoint ptr %vif2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vif2, align 8
  %tobool11.not.i = icmp eq ptr %67, null
  br i1 %tobool11.not.i, label %ieee80211_get_rts_cts_rate.exit.i.nonvifpower.i_crit_edge, label %if.then12.i

ieee80211_get_rts_cts_rate.exit.i.nonvifpower.i_crit_edge: ; preds = %ieee80211_get_rts_cts_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nonvifpower.i

if.then12.i:                                      ; preds = %ieee80211_get_rts_cts_rate.exit.i
  %txpower16.i = getelementptr inbounds %struct.ieee80211_vif, ptr %67, i32 0, i32 1, i32 42
  %68 = ptrtoint ptr %txpower16.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %txpower16.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %69)
  %cmp.i89 = icmp eq i32 %69, -2147483648
  %.tr.i = trunc i32 %69 to i8
  %conv.i = shl i8 %.tr.i, 1
  br i1 %cmp.i89, label %if.then12.i.nonvifpower.i_crit_edge, label %if.then12.i.if.end22.i_crit_edge

if.then12.i.if.end22.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

if.then12.i.nonvifpower.i_crit_edge:              ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nonvifpower.i

nonvifpower.i:                                    ; preds = %if.then12.i.nonvifpower.i_crit_edge, %ieee80211_get_rts_cts_rate.exit.i.nonvifpower.i_crit_edge
  %70 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %priv, align 8
  %cur_chan.i = getelementptr inbounds %struct.ath_softc, ptr %71, i32 0, i32 39
  %72 = ptrtoint ptr %cur_chan.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cur_chan.i, align 8
  %cur_txpower.i = getelementptr inbounds %struct.ath_chanctx, ptr %73, i32 0, i32 12
  %74 = ptrtoint ptr %cur_txpower.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %cur_txpower.i, align 2
  %conv21.i = trunc i16 %75 to i8
  br label %if.end22.i

if.end22.i:                                       ; preds = %nonvifpower.i, %if.then12.i.if.end22.i_crit_edge
  %txpower.1.i = phi i8 [ %conv21.i, %nonvifpower.i ], [ %conv.i, %if.then12.i.if.end22.i_crit_edge ]
  %76 = call ptr @memset(ptr %vif2, i32 0, i32 12)
  %txq.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 30
  %77 = ptrtoint ptr %txq.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -1, ptr %txq.i, align 2
  %tobool23.not.i = icmp eq ptr %50, null
  br i1 %tobool23.not.i, label %if.else25.i, label %if.end40.i

if.else25.i:                                      ; preds = %if.end22.i
  br i1 %tobool.not, label %if.end40.i.thread95, label %land.lhs.true27.i

if.end40.i.thread95:                              ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #13
  %keyix36.i97 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 31
  %78 = ptrtoint ptr %keyix36.i97 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -1, ptr %keyix36.i97, align 1
  br label %land.end.i

land.lhs.true27.i:                                ; preds = %if.else25.i
  %79 = ptrtoint ptr %52 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %52, align 2
  %81 = and i16 %80, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %81)
  %cmp.i108.i = icmp eq i16 %81, 2048
  br i1 %cmp.i108.i, label %land.lhs.true30.i, label %land.lhs.true27.i.if.end40.i.thread92_crit_edge

land.lhs.true27.i.if.end40.i.thread92_crit_edge:  ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i.thread92

land.lhs.true30.i:                                ; preds = %land.lhs.true27.i
  %ps_key.i = getelementptr inbounds %struct.ath_node, ptr %spec.select107.i, i32 0, i32 5
  %82 = ptrtoint ptr %ps_key.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %ps_key.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %cmp32.i = icmp sgt i8 %83, 0
  br i1 %cmp32.i, label %land.lhs.true30.i.land.rhs.i.sink.split_crit_edge, label %land.lhs.true30.i.if.end40.i.thread92_crit_edge

land.lhs.true30.i.if.end40.i.thread92_crit_edge:  ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40.i.thread92

land.lhs.true30.i.land.rhs.i.sink.split_crit_edge: ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.sink.split

if.end40.i.thread92:                              ; preds = %land.lhs.true30.i.if.end40.i.thread92_crit_edge, %land.lhs.true27.i.if.end40.i.thread92_crit_edge
  br label %land.rhs.i.sink.split

if.end40.i:                                       ; preds = %if.end22.i
  %hw_key_idx.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %50, i32 0, i32 4
  %84 = ptrtoint ptr %hw_key_idx.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %hw_key_idx.i, align 2
  %keyix36.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 31
  %86 = ptrtoint ptr %keyix36.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %keyix36.i, align 1
  br i1 %tobool.not, label %if.end40.i.land.end.i_crit_edge, label %if.end40.i.land.rhs.i_crit_edge

if.end40.i.land.rhs.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

if.end40.i.land.end.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end.i

land.rhs.i.sink.split:                            ; preds = %if.end40.i.thread92, %land.lhs.true30.i.land.rhs.i.sink.split_crit_edge
  %.sink = phi i8 [ -1, %if.end40.i.thread92 ], [ %83, %land.lhs.true30.i.land.rhs.i.sink.split_crit_edge ]
  %keyix36.i94 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 31
  %87 = ptrtoint ptr %keyix36.i94 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %.sink, ptr %keyix36.i94, align 1
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %land.rhs.i.sink.split, %if.end40.i.land.rhs.i_crit_edge
  %smps_mode.i = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 0, i32 15
  %88 = ptrtoint ptr %smps_mode.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %smps_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %89)
  %cmp42.i = icmp eq i32 %89, 3
  %phi.sel.i = select i1 %cmp42.i, i8 2, i8 0
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.end40.i.land.end.i_crit_edge, %if.end40.i.thread95
  %90 = phi i8 [ 0, %if.end40.i.land.end.i_crit_edge ], [ %phi.sel.i, %land.rhs.i ], [ 0, %if.end40.i.thread95 ]
  %dyn_smps.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 33
  %91 = ptrtoint ptr %dyn_smps.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %bf.load.i = load i8, ptr %dyn_smps.i, align 1
  %bf.clear.i = and i8 %bf.load.i, -3
  %bf.set.i = or i8 %bf.clear.i, %90
  store i8 %bf.set.i, ptr %dyn_smps.i, align 1
  %keytype45.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 35
  %92 = trunc i32 %call6.i to i8
  %93 = ptrtoint ptr %keytype45.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %bf.load46.i = load i8, ptr %keytype45.i, align 1
  %bf.shl48.i = shl i8 %92, 6
  %bf.clear49.i = and i8 %bf.load46.i, 63
  %bf.set50.i = or i8 %bf.clear49.i, %bf.shl48.i
  store i8 %bf.set50.i, ptr %keytype45.i, align 1
  %conv51.i = trunc i32 %frmlen.0 to i16
  %94 = ptrtoint ptr %hw_key to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv51.i, ptr %hw_key, align 4
  %tx_power.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 34
  %95 = ptrtoint ptr %tx_power.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %txpower.1.i, ptr %tx_power.i, align 2
  %tobool53.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool53.not.i, label %land.end.i.cleanup_crit_edge, label %if.end55.i

land.end.i.cleanup_crit_edge:                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end55.i:                                       ; preds = %land.end.i
  %hw_value.i = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i.i, i32 0, i32 2
  %96 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %hw_value.i, align 2
  %conv56.i = trunc i16 %97 to i8
  %rtscts_rate.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %98 = ptrtoint ptr %rtscts_rate.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv56.i, ptr %rtscts_rate.i, align 4
  br i1 %short_preamble.0.off0.i, label %if.then58.i, label %if.end55.i.cleanup_crit_edge

if.end55.i.cleanup_crit_edge:                     ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then58.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #13
  %hw_value_short.i = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i.i, i32 0, i32 3
  %99 = ptrtoint ptr %hw_value_short.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %hw_value_short.i, align 4
  %or106.i = or i16 %100, %97
  %conv62.i = trunc i16 %or106.i to i8
  %101 = ptrtoint ptr %rtscts_rate.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv62.i, ptr %rtscts_rate.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then58.i, %if.end55.i.cleanup_crit_edge, %land.end.i.cleanup_crit_edge, %if.then34.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then34.cleanup_crit_edge ], [ 0, %land.end.i.cleanup_crit_edge ], [ 0, %if.end55.i.cleanup_crit_edge ], [ 0, %if.then58.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ath_tx_setup_buffer(ptr noundef %sc, ptr noundef %tid, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %rate_driver_data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %txbuflock.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %txbuflock.i) #11
  %txbuf.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 2
  %4 = ptrtoint ptr %txbuf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %txbuf.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %txbuf.i
  br i1 %cmp.i.not.i, label %ath_tx_get_buffer.exit.thread, label %if.end.i, !prof !88

ath_tx_get_buffer.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_bh(ptr noundef %txbuflock.i) #11
  br label %do.body

if.end.i:                                         ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.ath_tx_get_buffer.exit_crit_edge

if.end.i.ath_tx_get_buffer.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tx_get_buffer.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %ath_tx_get_buffer.exit

ath_tx_get_buffer.exit:                           ; preds = %if.end.i.i.i, %if.end.i.ath_tx_get_buffer.exit_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %txbuflock.i) #11
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %ath_tx_get_buffer.exit.do.body_crit_edge, label %do.body6

ath_tx_get_buffer.exit.do.body_crit_edge:         ; preds = %ath_tx_get_buffer.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %ath_tx_get_buffer.exit.do.body_crit_edge, %ath_tx_get_buffer.exit.thread
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug_mask, align 4
  %and = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %if.then4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.26) #11
  br label %cleanup

do.body6:                                         ; preds = %ath_tx_get_buffer.exit
  %bf_lastbf = getelementptr inbounds %struct.ath_buf, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %bf_lastbf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %bf_lastbf, align 4
  %bf_next = getelementptr inbounds %struct.ath_buf, ptr %5, i32 0, i32 2
  %17 = ptrtoint ptr %bf_next to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %bf_next, align 4
  %bf_state = getelementptr inbounds %struct.ath_buf, ptr %5, i32 0, i32 8
  %18 = call ptr @memset(ptr %bf_state, i32 0, i32 12)
  %tobool9.not = icmp eq ptr %tid, null
  br i1 %tobool9.not, label %do.body6.if.end39_crit_edge, label %land.lhs.true

do.body6.if.end39_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

land.lhs.true:                                    ; preds = %do.body6
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %3, align 2
  %21 = and i16 %20, 19456
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %21)
  %cmp.i = icmp eq i16 %21, 2048
  br i1 %cmp.i, label %if.then11, label %land.lhs.true.if.end39_crit_edge

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then11:                                        ; preds = %land.lhs.true
  %seq_ctrl = getelementptr inbounds %struct.ieee80211_hdr, ptr %3, i32 0, i32 5
  %22 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %seq_ctrl, align 2
  %24 = and i16 %23, 3840
  %seq_next = getelementptr inbounds %struct.ath_atx_tid, ptr %tid, i32 0, i32 6
  %25 = ptrtoint ptr %seq_next to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %seq_next, align 2
  %shl = shl i16 %26, 4
  %27 = tail call i16 @llvm.bswap.i16(i16 %shl)
  %storemerge = or i16 %27, %24
  %28 = ptrtoint ptr %seq_ctrl to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %storemerge, ptr %seq_ctrl, align 2
  %29 = and i16 %20, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp.i2.not = icmp eq i16 %29, 0
  br i1 %cmp.i2.not, label %do.body28, label %if.then11.if.end36_crit_edge

if.then11.if.end36_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

do.body28:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %seq_next to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %seq_next, align 2
  %inc = add i16 %31, 1
  %32 = and i16 %inc, 4095
  store i16 %32, ptr %seq_next, align 2
  br label %if.end36

if.end36:                                         ; preds = %do.body28, %if.then11.if.end36_crit_edge
  %seqno38 = getelementptr inbounds %struct.ath_buf, ptr %5, i32 0, i32 8, i32 4
  %33 = ptrtoint ptr %seqno38 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %26, ptr %seqno38, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end36, %land.lhs.true.if.end39_crit_edge, %do.body6.if.end39_crit_edge
  %bf_mpdu = getelementptr inbounds %struct.ath_buf, ptr %5, i32 0, i32 3
  %34 = ptrtoint ptr %bf_mpdu to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %skb, ptr %bf_mpdu, align 4
  %dev = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 1
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %38) #11
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end39
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !92

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %36) #11
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 3
  %41 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %36, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %44, %if.end.i.i ], [ %42, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.29, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %36, ptr noundef %38, i32 noundef %40) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %45 = load ptr, ptr @mem_map, align 4
  %46 = ptrtoint ptr %38 to i32
  %sub.i = add i32 %46, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %45, i32 %shr.i
  %and.i = and i32 %46, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %36, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %40, i32 noundef 1, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i3 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %bf_buf_addr = getelementptr inbounds %struct.ath_buf, ptr %5, i32 0, i32 6
  %47 = ptrtoint ptr %bf_buf_addr to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %retval.0.i3, ptr %bf_buf_addr, align 4
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %49, i32 noundef %retval.0.i3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i3)
  %cmp.i4 = icmp eq i32 %retval.0.i3, -1
  br i1 %cmp.i4, label %if.then48, label %if.end53

if.then48:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %bf_mpdu to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %bf_mpdu, align 4
  %51 = ptrtoint ptr %bf_buf_addr to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %bf_buf_addr, align 4
  %52 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sc_ah, align 4
  %common.i5 = getelementptr inbounds %struct.ath_hw, ptr %53, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.4, ptr noundef %common.i5, ptr noundef nonnull @.str.27) #11
  tail call fastcc void @ath_tx_return_buffer(ptr noundef %sc, ptr noundef nonnull %5)
  br label %cleanup

if.end53:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %rate_driver_data.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %5, ptr %rate_driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.then48, %if.then4, %do.body.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then48 ], [ %5, %if.end53 ], [ null, %if.then4 ], [ null, %do.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_txskb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath_tx_send_normal(ptr nocapture noundef %sc, ptr noundef %txq, ptr noundef %tid, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  %bf_head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %rate_driver_data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bf_head) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %bf_head, i32 0, i32 1
  %1 = ptrtoint ptr %rate_driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rate_driver_data.i, align 4
  %3 = ptrtoint ptr %bf_head to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %bf_head, ptr %bf_head, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %bf_head, ptr %0, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %2, ptr noundef nonnull %bf_head, ptr noundef nonnull %bf_head) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %0, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %bf_head, ptr %2, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %bf_head, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %bf_head to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %2, ptr %bf_head, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %bf_state = getelementptr inbounds %struct.ath_buf, ptr %2, i32 0, i32 8
  %9 = ptrtoint ptr %bf_state to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %bf_state, align 4
  %tobool.not = icmp eq ptr %tid, null
  br i1 %tobool.not, label %list_add_tail.exit.if.end_crit_edge, label %land.lhs.true

list_add_tail.exit.if.end_crit_edge:              ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %list_add_tail.exit
  %10 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cb.i, align 8
  %and = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = ptrtoint ptr %bf_state to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %bf_state, align 4
  %bf_mpdu.i = getelementptr inbounds %struct.ath_buf, ptr %2, i32 0, i32 3
  %13 = ptrtoint ptr %bf_mpdu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bf_mpdu.i, align 4
  %baw_tracked.i = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 3, i32 33
  %15 = ptrtoint ptr %baw_tracked.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %baw_tracked.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i)
  %tobool.not.i = icmp eq i8 %bf.clear.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %seqno1.i = getelementptr inbounds %struct.ath_buf, ptr %2, i32 0, i32 8, i32 4
  %16 = ptrtoint ptr %seqno1.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %seqno1.i, align 4
  %conv.i = zext i16 %17 to i32
  %seq_start.i = getelementptr inbounds %struct.ath_atx_tid, ptr %tid, i32 0, i32 5
  %18 = ptrtoint ptr %seq_start.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %seq_start.i, align 4
  %conv2.i = zext i16 %19 to i32
  %sub.i = sub nsw i32 %conv.i, %conv2.i
  %and.i = and i32 %sub.i, 4095
  %baw_head.i = getelementptr inbounds %struct.ath_atx_tid, ptr %tid, i32 0, i32 9
  %20 = ptrtoint ptr %baw_head.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %baw_head.i, align 4
  %add.i = add i32 %sub.i, %21
  %tx_buf.i = getelementptr inbounds %struct.ath_atx_tid, ptr %tid, i32 0, i32 4
  %rem.i.i = and i32 %add.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %and3.i = lshr i32 %add.i, 5
  %div2.i.i = and i32 %and3.i, 3
  %add.ptr.i.i = getelementptr i32, ptr %tx_buf.i, i32 %div2.i.i
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %shl.i.i, %23
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %24 = ptrtoint ptr %baw_tracked.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load5.i = load i8, ptr %baw_tracked.i, align 1
  %bf.set.i = or i8 %bf.load5.i, 1
  store i8 %bf.set.i, ptr %baw_tracked.i, align 1
  %baw_tail.i = getelementptr inbounds %struct.ath_atx_tid, ptr %tid, i32 0, i32 10
  %25 = ptrtoint ptr %baw_tail.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %baw_tail.i, align 4
  %27 = load i32, ptr %baw_head.i, align 4
  %sub8.i = sub i32 %26, %27
  %and9.i = and i32 %sub8.i, 127
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and9.i)
  %cmp.not.i = icmp ult i32 %and.i, %and9.i
  br i1 %cmp.not.i, label %if.end.i.if.end_crit_edge, label %if.then11.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc.i = add i32 %add.i, 1
  %and15.i = and i32 %inc.i, 127
  %28 = ptrtoint ptr %baw_tail.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and15.i, ptr %baw_tail.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then11.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %list_add_tail.exit.if.end_crit_edge
  %bf_next = getelementptr inbounds %struct.ath_buf, ptr %2, i32 0, i32 2
  %29 = ptrtoint ptr %bf_next to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %bf_next, align 4
  %bf_lastbf = getelementptr inbounds %struct.ath_buf, ptr %2, i32 0, i32 1
  %30 = ptrtoint ptr %bf_lastbf to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %2, ptr %bf_lastbf, align 4
  %framelen = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %31 = ptrtoint ptr %framelen to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %framelen, align 4
  %conv = zext i16 %32 to i32
  call fastcc void @ath_tx_fill_desc(ptr noundef %sc, ptr noundef %2, ptr noundef %txq, i32 noundef %conv)
  call fastcc void @ath_tx_txqaddbuf(ptr noundef %sc, ptr noundef %txq, ptr noundef nonnull %bf_head, i1 noundef zeroext false)
  %axq_qnum = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 1
  %33 = ptrtoint ptr %axq_qnum to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %axq_qnum, align 4
  %queued = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 1, i32 %34, i32 2
  %35 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %queued, align 4
  %inc = add i32 %36, 1
  store i32 %inc, ptr %queued, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bf_head) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_tx_cabq(ptr noundef %hw, ptr noundef %vif, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %txctl = alloca %struct.ath_tx_control, align 4
  %info = alloca %struct.ath_tx_info, align 4
  %bf_q = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %txctl) #11
  %2 = getelementptr inbounds i8, ptr %txctl, i32 12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %cabq = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 36, i32 7
  %4 = ptrtoint ptr %cabq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cabq, align 4
  %6 = ptrtoint ptr %txctl to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %txctl, align 4
  %an = getelementptr inbounds %struct.ath_tx_control, ptr %txctl, i32 0, i32 1
  %7 = ptrtoint ptr %an to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %an, align 4
  %sta = getelementptr inbounds %struct.ath_tx_control, ptr %txctl, i32 0, i32 2
  %8 = ptrtoint ptr %sta to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %sta, align 4
  %paprd = getelementptr inbounds %struct.ath_tx_control, ptr %txctl, i32 0, i32 3
  %9 = ptrtoint ptr %paprd to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %paprd, align 4
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %info) #11
  %10 = call ptr @memset(ptr %info, i32 0, i32 156)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bf_q) #11
  %11 = getelementptr inbounds %struct.list_head, ptr %bf_q, i32 0, i32 1
  %12 = ptrtoint ptr %bf_q to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %bf_q, ptr %bf_q, align 4
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %bf_q, ptr %11, align 4
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 39
  %14 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur_chan, align 8
  %beacon_interval = getelementptr inbounds %struct.ath_chanctx, ptr %15, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %beacon_interval, align 4
  %mul = mul i32 %17, 1000
  %dtim_period = getelementptr inbounds %struct.ath_chanctx, ptr %15, i32 0, i32 5, i32 2
  %18 = ptrtoint ptr %dtim_period to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %dtim_period, align 4
  %conv = zext i16 %19 to i32
  %mul4 = mul i32 %mul, %conv
  %div = sdiv i32 %mul4, 8
  %PktDuration = getelementptr inbounds %struct.ath_tx_info, ptr %info, i32 0, i32 11, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %cleanup.do.body_crit_edge, %entry
  %duration.0 = phi i32 [ 0, %entry ], [ %add, %cleanup.do.body_crit_edge ]
  %bf_tail.0 = phi ptr [ null, %entry ], [ %call7, %cleanup.do.body_crit_edge ]
  %skb.addr.0 = phi ptr [ %skb, %entry ], [ %call18, %cleanup.do.body_crit_edge ]
  %call5 = call fastcc i32 @ath_tx_prepare(ptr noundef %hw, ptr noundef %skb.addr.0, ptr noundef nonnull %txctl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %do.body.cleanup.thread_crit_edge

do.body.cleanup.thread_crit_edge:                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end:                                           ; preds = %do.body
  %call7 = call fastcc ptr @ath_tx_setup_buffer(ptr noundef %1, ptr noundef null, ptr noundef %skb.addr.0)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end.cleanup.thread_crit_edge, label %if.end10

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end10:                                         ; preds = %if.end
  %bf_lastbf = getelementptr inbounds %struct.ath_buf, ptr %call7, i32 0, i32 1
  %20 = ptrtoint ptr %bf_lastbf to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7, ptr %bf_lastbf, align 4
  %bf_mpdu.i = getelementptr inbounds %struct.ath_buf, ptr %call7, i32 0, i32 3
  %21 = ptrtoint ptr %bf_mpdu.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bf_mpdu.i, align 4
  %rates.i = getelementptr inbounds %struct.ath_buf, ptr %call7, i32 0, i32 7
  call void @ieee80211_get_tx_rates(ptr noundef %vif, ptr noundef null, ptr noundef %22, ptr noundef %rates.i, i32 noundef 4) #11
  %framelen = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 3, i32 28
  %23 = ptrtoint ptr %framelen to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %framelen, align 4
  %conv11 = zext i16 %24 to i32
  call fastcc void @ath_buf_set_rate(ptr noundef %1, ptr noundef nonnull %call7, ptr noundef nonnull %info, i32 noundef %conv11, i1 noundef zeroext false)
  %25 = ptrtoint ptr %PktDuration to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %PktDuration, align 4
  %add = add i32 %26, %duration.0
  %tobool12.not = icmp eq ptr %bf_tail.0, null
  br i1 %tobool12.not, label %if.end10.if.end14_crit_edge, label %if.then13

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %bf_next = getelementptr inbounds %struct.ath_buf, ptr %bf_tail.0, i32 0, i32 2
  %27 = ptrtoint ptr %bf_next to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7, ptr %bf_next, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10.if.end14_crit_edge
  %28 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %11, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7, ptr noundef %29, ptr noundef nonnull %bf_q) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end14.list_add_tail.exit_crit_edge

if.end14.list_add_tail.exit_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7, ptr %11, align 4
  %31 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %bf_q, ptr %call7, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %call7, ptr %29, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end14.list_add_tail.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %div)
  %cmp = icmp sgt i32 %add, %div
  br i1 %cmp, label %list_add_tail.exit.if.end22_crit_edge, label %cleanup

list_add_tail.exit.if.end22_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

cleanup.thread:                                   ; preds = %if.end.cleanup.thread_crit_edge, %do.body.cleanup.thread_crit_edge
  %tobool19.not88 = icmp eq ptr %skb.addr.0, null
  br i1 %tobool19.not88, label %cleanup.thread.if.end22_crit_edge, label %if.then21

cleanup.thread.if.end22_crit_edge:                ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

cleanup:                                          ; preds = %list_add_tail.exit
  %call18 = call ptr @ieee80211_get_buffered_bc(ptr noundef %hw, ptr noundef %vif) #11
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %cleanup.if.end22_crit_edge, label %cleanup.do.body_crit_edge

cleanup.do.body_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

cleanup.if.end22_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then21:                                        ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #13
  call void @ieee80211_free_txskb(ptr noundef %hw, ptr noundef nonnull %skb.addr.0) #11
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %cleanup.if.end22_crit_edge, %cleanup.thread.if.end22_crit_edge, %list_add_tail.exit.if.end22_crit_edge
  %34 = ptrtoint ptr %bf_q to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %bf_q, align 4
  %cmp.i.not = icmp eq ptr %35, %bf_q
  br i1 %cmp.i.not, label %if.end22.cleanup41_crit_edge, label %if.end26

if.end22.cleanup41_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup41

if.end26:                                         ; preds = %if.end22
  %36 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %11, align 4
  %bf_mpdu.i81 = getelementptr inbounds %struct.ath_buf, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %bf_mpdu.i81 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bf_mpdu.i81, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 19
  %40 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %41, align 2
  %44 = and i16 %43, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp.not.i = icmp eq i16 %44, 0
  br i1 %cmp.not.i, label %if.end26.ath9k_set_moredata.exit_crit_edge, label %if.then.i

if.end26.ath9k_set_moredata.exit_crit_edge:       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath9k_set_moredata.exit

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %and10.i = and i16 %43, -33
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %and10.i, ptr %41, align 2
  %dev.i = getelementptr inbounds %struct.ath_softc, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 4
  %bf_buf_addr.i = getelementptr inbounds %struct.ath_buf, ptr %37, i32 0, i32 6
  %48 = ptrtoint ptr %bf_buf_addr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bf_buf_addr.i, align 4
  call void @dma_sync_single_for_device(ptr noundef %47, i32 noundef %49, i32 noundef 30, i32 noundef 1) #11
  br label %ath9k_set_moredata.exit

ath9k_set_moredata.exit:                          ; preds = %if.then.i, %if.end26.ath9k_set_moredata.exit_crit_edge
  %50 = ptrtoint ptr %bf_q to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bf_q, align 4
  %52 = ptrtoint ptr %txctl to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %txctl, align 4
  %axq_lock.i = getelementptr inbounds %struct.ath_txq, ptr %53, i32 0, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %axq_lock.i) #11
  call fastcc void @ath_tx_fill_desc(ptr noundef %1, ptr noundef %51, ptr noundef %53, i32 noundef 0)
  call fastcc void @ath_tx_txqaddbuf(ptr noundef %1, ptr noundef %53, ptr noundef nonnull %bf_q, i1 noundef zeroext false)
  %axq_qnum = getelementptr inbounds %struct.ath_txq, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %axq_qnum to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %axq_qnum, align 4
  %queued = getelementptr %struct.ath_softc, ptr %1, i32 0, i32 44, i32 2, i32 1, i32 %55, i32 2
  %56 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %queued, align 4
  %inc = add i32 %57, 1
  store i32 %inc, ptr %queued, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %axq_lock.i) #11
  br label %cleanup41

cleanup41:                                        ; preds = %ath9k_set_moredata.exit, %if.end22.cleanup41_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bf_q) #11
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %info) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %txctl) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath_buf_set_rate(ptr nocapture noundef readonly %sc, ptr nocapture noundef readonly %bf, ptr noundef %info, i32 noundef %len, i1 noundef zeroext %rts) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %bf_mpdu = getelementptr inbounds %struct.ath_buf, ptr %bf, i32 0, i32 3
  %2 = ptrtoint ptr %bf_mpdu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bf_mpdu, align 4
  %4 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc, align 8
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy, align 8
  %rts_threshold = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 36
  %8 = ptrtoint ptr %rts_threshold to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rts_threshold, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3
  %rates4 = getelementptr inbounds %struct.ath_buf, ptr %bf, i32 0, i32 7
  %data = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 2
  %14 = and i16 %13, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -23552, i16 %14)
  %cmp.i = icmp ne i16 %14, -23552
  %dur_update = getelementptr inbounds %struct.ath_tx_info, ptr %info, i32 0, i32 13
  %frombool6 = zext i1 %cmp.i to i8
  %15 = ptrtoint ptr %dur_update to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool6, ptr %dur_update, align 1
  %rtscts_rate = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 32
  %16 = ptrtoint ptr %rtscts_rate to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rtscts_rate, align 4
  %rtscts_rate7 = getelementptr inbounds %struct.ath_tx_info, ptr %info, i32 0, i32 12
  %18 = ptrtoint ptr %rtscts_rate7 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %rtscts_rate7, align 4
  %bf_state = getelementptr inbounds %struct.ath_buf, ptr %bf, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp34.not = icmp eq i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool40.not = icmp eq i32 %9, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %len)
  %cmp42 = icmp ult i32 %9, %len
  %or.cond444 = or i1 %tobool40.not, %cmp42
  %flags74 = getelementptr inbounds %struct.ath_tx_info, ptr %info, i32 0, i32 8
  %txchainmask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 74
  %shl.i = shl i32 %len, 3
  %add5.i = add i32 %shl.i, 21
  %dyn_smps = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 33
  %band = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 4
  %bfs_paprd = getelementptr inbounds %struct.ath_buf, ptr %bf, i32 0, i32 8, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.0475 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %rts.addr.0.off0474 = phi i1 [ %rts, %entry ], [ %rts.addr.2.off0, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ieee80211_tx_rate, ptr %rates4, i32 %i.0475
  %count = getelementptr %struct.ieee80211_tx_rate, ptr %rates4, i32 %i.0475, i32 1
  %19 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %bf.load = load i16, ptr %count, align 1
  %bf.lshr = lshr i16 %bf.load, 11
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %bf.load)
  %tobool.not = icmp ult i16 %bf.load, 2048
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp9 = icmp slt i8 %21, 0
  br i1 %cmp9, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %conv17 = zext i16 %bf.lshr to i32
  %arrayidx19 = getelementptr %struct.ath_tx_info, ptr %info, i32 0, i32 11, i32 %i.0475
  %22 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv17, ptr %arrayidx19, align 4
  %23 = ptrtoint ptr %bf_state to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bf_state, align 4
  %25 = and i8 %24, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %26 = icmp eq i8 %25, 1
  br i1 %26, label %land.lhs.true27, label %if.end.if.end46_crit_edge

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

land.lhs.true27:                                  ; preds = %if.end
  %27 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %bf.load29 = load i16, ptr %count, align 1
  %28 = and i16 %bf.load29, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool32.not = icmp eq i16 %28, 0
  %or.cond443 = select i1 %tobool32.not, i1 true, i1 %cmp34.not
  br i1 %or.cond443, label %land.lhs.true27.if.end46_crit_edge, label %if.then39, !prof !91

land.lhs.true27.if.end46_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then39:                                        ; preds = %land.lhs.true27
  %spec.select445 = select i1 %or.cond444, i1 true, i1 %rts.addr.0.off0474
  br i1 %spec.select445, label %if.then39.if.end77.sink.split_crit_edge, label %if.then39.lor.lhs.false49_crit_edge

if.then39.lor.lhs.false49_crit_edge:              ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false49

if.then39.if.end77.sink.split_crit_edge:          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77.sink.split

if.end46:                                         ; preds = %land.lhs.true27.if.end46_crit_edge, %if.end.if.end46_crit_edge
  br i1 %rts.addr.0.off0474, label %if.end46.if.end77.sink.split_crit_edge, label %if.end46.lor.lhs.false49_crit_edge

if.end46.lor.lhs.false49_crit_edge:               ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false49

if.end46.if.end77.sink.split_crit_edge:           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77.sink.split

lor.lhs.false49:                                  ; preds = %if.end46.lor.lhs.false49_crit_edge, %if.then39.lor.lhs.false49_crit_edge
  %29 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %bf.load52 = load i16, ptr %count, align 1
  %bf.clear53 = and i16 %bf.load52, 2047
  %conv54 = zext i16 %bf.clear53 to i32
  %and55 = and i32 %conv54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.else, label %lor.lhs.false49.if.end77.sink.split_crit_edge

lor.lhs.false49.if.end77.sink.split_crit_edge:    ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77.sink.split

if.else:                                          ; preds = %lor.lhs.false49
  %and67 = and i32 %conv54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.else.if.end77_crit_edge, label %if.else.if.end77.sink.split_crit_edge

if.else.if.end77.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77.sink.split

if.else.if.end77_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

if.end77.sink.split:                              ; preds = %if.else.if.end77.sink.split_crit_edge, %lor.lhs.false49.if.end77.sink.split_crit_edge, %if.end46.if.end77.sink.split_crit_edge, %if.then39.if.end77.sink.split_crit_edge
  %.sink482 = phi i32 [ 4, %if.then39.if.end77.sink.split_crit_edge ], [ 4, %lor.lhs.false49.if.end77.sink.split_crit_edge ], [ 4, %if.end46.if.end77.sink.split_crit_edge ], [ 8, %if.else.if.end77.sink.split_crit_edge ]
  %rts.addr.1.off0470.ph = phi i1 [ true, %if.then39.if.end77.sink.split_crit_edge ], [ false, %lor.lhs.false49.if.end77.sink.split_crit_edge ], [ true, %if.end46.if.end77.sink.split_crit_edge ], [ false, %if.else.if.end77.sink.split_crit_edge ]
  %RateFlags = getelementptr %struct.ath_tx_info, ptr %info, i32 0, i32 11, i32 %i.0475, i32 4
  %30 = ptrtoint ptr %RateFlags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %RateFlags, align 4
  %or73 = or i32 %31, 1
  store i32 %or73, ptr %RateFlags, align 4
  %32 = ptrtoint ptr %flags74 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags74, align 4
  %or75 = or i32 %33, %.sink482
  store i32 %or75, ptr %flags74, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.end77.sink.split, %if.else.if.end77_crit_edge
  %rts.addr.1.off0470 = phi i1 [ false, %if.else.if.end77_crit_edge ], [ %rts.addr.1.off0470.ph, %if.end77.sink.split ]
  %34 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %bf.load80 = load i16, ptr %count, align 1
  %35 = and i16 %bf.load80, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool84.not = icmp eq i16 %35, 0
  br i1 %tobool84.not, label %if.end77.if.end90_crit_edge, label %if.then85

if.end77.if.end90_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

if.then85:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  %RateFlags88 = getelementptr %struct.ath_tx_info, ptr %info, i32 0, i32 11, i32 %i.0475, i32 4
  %36 = ptrtoint ptr %RateFlags88 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %RateFlags88, align 4
  %or89 = or i32 %37, 2
  store i32 %or89, ptr %RateFlags88, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then85, %if.end77.if.end90_crit_edge
  %38 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %bf.load93 = load i16, ptr %count, align 1
  %39 = and i16 %bf.load93, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool97.not = icmp eq i16 %39, 0
  br i1 %tobool97.not, label %if.end90.if.end103_crit_edge, label %if.then98

if.end90.if.end103_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

if.then98:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  %RateFlags101 = getelementptr %struct.ath_tx_info, ptr %info, i32 0, i32 11, i32 %i.0475, i32 4
  %40 = ptrtoint ptr %RateFlags101 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %RateFlags101, align 4
  %or102 = or i32 %41, 4
  store i32 %or102, ptr %RateFlags101, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then98, %if.end90.if.end103_crit_edge
  %42 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %bf.load106 = load i16, ptr %count, align 1
  %bf.clear107 = and i16 %bf.load106, 2047
  %conv108 = zext i16 %bf.clear107 to i32
  %and121 = and i32 %conv108, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122 = icmp ne i32 %and121, 0
  %and145 = and i32 %conv108, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %if.end200, label %if.then147

if.then147:                                       ; preds = %if.end103
  %43 = or i8 %21, -128
  %or149 = zext i8 %43 to i32
  %Rate = getelementptr %struct.ath_tx_info, ptr %info, i32 0, i32 11, i32 %i.0475, i32 1
  %44 = ptrtoint ptr %Rate to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or149, ptr %Rate, align 4
  %45 = ptrtoint ptr %txchainmask to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %txchainmask, align 4
  %47 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sc_ah, align 4
  %caps.i = getelementptr inbounds %struct.ath_hw, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %caps.i, align 4
  %and.i = and i32 %50, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then147.if.else.i_crit_edge, label %land.lhs.true.i

if.then147.if.else.i_crit_edge:                   ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then147
  %curchan1.i = getelementptr inbounds %struct.ath_hw, ptr %48, i32 0, i32 8
  %51 = ptrtoint ptr %curchan1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %curchan1.i, align 4
  %channelFlags.i = getelementptr inbounds %struct.ath9k_channel, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %channelFlags.i, align 2
  %55 = and i16 %54, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool3.not.i = icmp ne i16 %55, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %46)
  %cmp.i446 = icmp eq i8 %46, 7
  %or.cond.i = and i1 %cmp.i446, %tobool3.not.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %43)
  %cmp8.i = icmp ult i8 %43, -112
  %or.cond29.i = and i1 %cmp8.i, %or.cond.i
  br i1 %or.cond29.i, label %land.lhs.true.i.ath_txchainmask_reduction.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i.ath_txchainmask_reduction.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_txchainmask_reduction.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then147.if.else.i_crit_edge
  br label %ath_txchainmask_reduction.exit

ath_txchainmask_reduction.exit:                   ; preds = %if.else.i, %land.lhs.true.i.ath_txchainmask_reduction.exit_crit_edge
  %retval.0.i = phi i8 [ 3, %land.lhs.true.i.ath_txchainmask_reduction.exit_crit_edge ], [ %46, %if.else.i ]
  %conv156 = zext i8 %retval.0.i to i32
  %ChSel = getelementptr %struct.ath_tx_info, ptr %info, i32 0, i32 11, i32 %i.0475, i32 3
  %56 = ptrtoint ptr %ChSel to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv156, ptr %ChSel, align 4
  %and121.lobit = lshr exact i32 %and121, 5
  %conv.i = zext i8 %21 to i32
  %and.i447 = lshr i32 %conv.i, 3
  %add.i = add nuw nsw i32 %and.i447, 1
  %rem.i = and i32 %conv.i, 7
  %arrayidx3.i = getelementptr [8 x [2 x i16]], ptr @bits_per_symbol, i32 0, i32 %rem.i, i32 %and121.lobit
  %57 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx3.i, align 2
  %conv4.i = zext i16 %58 to i32
  %mul.i = mul nuw nsw i32 %add.i, %conv4.i
  %sub.i = add i32 %add5.i, %mul.i
  %div.i = udiv i32 %sub.i, %mul.i
  %59 = and i32 %conv108, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i448 = icmp eq i32 %59, 0
  %mul7.i = mul i32 %div.i, 18
  %add8.i = add i32 %mul7.i, 4
  %div9.i = udiv i32 %add8.i, 5
  %shl6.i = shl i32 %div.i, 2
  %duration.0.i = select i1 %tobool.not.i448, i32 %shl6.i, i32 %div9.i
  %mul10.i = shl nuw nsw i32 %add.i, 2
  %add11.i = add nuw nsw i32 %mul10.i, 32
  %add12.i = add i32 %add11.i, %duration.0.i
  %PktDuration = getelementptr %struct.ath_tx_info, ptr %info, i32 0, i32 11, i32 %i.0475, i32 2
  %60 = ptrtoint ptr %PktDuration to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add12.i, ptr %PktDuration, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %21)
  %cmp168 = icmp ult i8 %21, 8
  br i1 %cmp168, label %land.lhs.true170, label %land.lhs.true183

land.lhs.true170:                                 ; preds = %ath_txchainmask_reduction.exit
  %61 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cb.i, align 8
  %and172 = and i32 %62, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %land.lhs.true170.if.end196_crit_edge, label %if.then174

land.lhs.true170.if.end196_crit_edge:             ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end196

if.then174:                                       ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #13
  %RateFlags177 = getelementptr %struct.ath_tx_info, ptr %info, i32 0, i32 11, i32 %i.0475, i32 4
  br label %if.end196.sink.split

land.lhs.true183:                                 ; preds = %ath_txchainmask_reduction.exit
  %63 = ptrtoint ptr %dyn_smps to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load184 = load i8, ptr %dyn_smps, align 1
  %64 = and i8 %bf.load184, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool188.not = icmp eq i8 %64, 0
  br i1 %tobool188.not, label %land.lhs.true183.if.end196_crit_edge, label %if.then189

land.lhs.true183.if.end196_crit_edge:             ; preds = %land.lhs.true183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end196

if.then189:                                       ; preds = %land.lhs.true183
  call void @__sanitizer_cov_trace_pc() #13
  %RateFlags192 = getelementptr %struct.ath_tx_info, ptr %info, i32 0, i32 11, i32 %i.0475, i32 4
  %65 = ptrtoint ptr %RateFlags192 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %RateFlags192, align 4
  %or193 = or i32 %66, 1
  store i32 %or193, ptr %RateFlags192, align 4
  br label %if.end196.sink.split

if.end196.sink.split:                             ; preds = %if.then189, %if.then174
  %RateFlags177.sink484 = phi ptr [ %RateFlags177, %if.then174 ], [ %flags74, %if.then189 ]
  %67 = ptrtoint ptr %RateFlags177.sink484 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %RateFlags177.sink484, align 4
  %or178 = or i32 %68, 8
  store i32 %or178, ptr %RateFlags177.sink484, align 4
  br label %if.end196

if.end196:                                        ; preds = %if.end196.sink.split, %land.lhs.true183.if.end196_crit_edge, %land.lhs.true170.if.end196_crit_edge
  %call198 = tail call fastcc zeroext i8 @ath_get_rate_txpower(ptr noundef %sc, ptr noundef %bf, i8 noundef zeroext %21, i1 noundef zeroext %tobool122, i1 noundef zeroext false)
  br label %cleanup.sink.split

if.end200:                                        ; preds = %if.end103
  %69 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %69)
  %bf.load201 = load i32, ptr %band, align 4
  %bf.lshr202 = lshr i32 %bf.load201, 29
  %bitrates = getelementptr %struct.ath_hw, ptr %1, i32 0, i32 3, i32 31, i32 %bf.lshr202, i32 1
  %70 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bitrates, align 4
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx, align 1
  %idxprom = sext i8 %73 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load201)
  %cmp210 = icmp ult i32 %bf.load201, 536870912
  br i1 %cmp210, label %land.lhs.true212, label %if.end200.if.else217_crit_edge

if.end200.if.else217_crit_edge:                   ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else217

land.lhs.true212:                                 ; preds = %if.end200
  %arrayidx206 = getelementptr %struct.ieee80211_rate, ptr %71, i32 %idxprom
  %74 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx206, align 4
  %and214 = and i32 %75, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214)
  %tobool215.not = icmp eq i32 %and214, 0
  br i1 %tobool215.not, label %land.lhs.true212.if.end218_crit_edge, label %land.lhs.true212.if.else217_crit_edge

land.lhs.true212.if.else217_crit_edge:            ; preds = %land.lhs.true212
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else217

land.lhs.true212.if.end218_crit_edge:             ; preds = %land.lhs.true212
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end218

if.else217:                                       ; preds = %land.lhs.true212.if.else217_crit_edge, %if.end200.if.else217_crit_edge
  br label %if.end218

if.end218:                                        ; preds = %if.else217, %land.lhs.true212.if.end218_crit_edge
  %phy.0 = phi i8 [ 0, %if.else217 ], [ 1, %land.lhs.true212.if.end218_crit_edge ]
  %hw_value = getelementptr %struct.ieee80211_rate, ptr %71, i32 %idxprom, i32 2
  %76 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %hw_value, align 2
  %conv219 = zext i16 %77 to i32
  %Rate222 = getelementptr %struct.ath_tx_info, ptr %info, i32 0, i32 11, i32 %i.0475, i32 1
  %78 = ptrtoint ptr %Rate222 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %conv219, ptr %Rate222, align 4
  %hw_value_short = getelementptr %struct.ieee80211_rate, ptr %71, i32 %idxprom, i32 3
  %79 = ptrtoint ptr %hw_value_short to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %hw_value_short, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool223.not = icmp eq i16 %80, 0
  br i1 %tobool223.not, label %if.end218.if.end241_crit_edge, label %if.then224

if.end218.if.end241_crit_edge:                    ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end241

if.then224:                                       ; preds = %if.end218
  %81 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %bf.load227 = load i16, ptr %count, align 1
  %82 = and i16 %bf.load227, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool231.not = icmp eq i16 %82, 0
  %83 = and i16 %bf.load106, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %extract.t441 = icmp ne i16 %83, 0
  br i1 %tobool231.not, label %if.then224.if.end241_crit_edge, label %if.then232

if.then224.if.end241_crit_edge:                   ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end241

if.then232:                                       ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #13
  %or238442 = or i16 %80, %77
  %or238 = zext i16 %or238442 to i32
  %84 = ptrtoint ptr %Rate222 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %or238, ptr %Rate222, align 4
  br label %if.end241

if.end241:                                        ; preds = %if.then232, %if.then224.if.end241_crit_edge, %if.end218.if.end241_crit_edge
  %is_sp.0.off0 = phi i1 [ %extract.t441, %if.then232 ], [ %extract.t441, %if.then224.if.end241_crit_edge ], [ false, %if.end218.if.end241_crit_edge ]
  %85 = ptrtoint ptr %bfs_paprd to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %bfs_paprd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool243.not = icmp eq i8 %86, 0
  %87 = ptrtoint ptr %txchainmask to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %txchainmask, align 4
  br i1 %tobool243.not, label %if.else250, label %if.end241.if.end260_crit_edge

if.end241.if.end260_crit_edge:                    ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end260

if.else250:                                       ; preds = %if.end241
  %89 = ptrtoint ptr %Rate222 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %Rate222, align 4
  %91 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %sc_ah, align 4
  %caps.i450 = getelementptr inbounds %struct.ath_hw, ptr %92, i32 0, i32 6
  %93 = ptrtoint ptr %caps.i450 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %caps.i450, align 4
  %and.i451 = and i32 %94, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i451)
  %tobool.not.i452 = icmp eq i32 %and.i451, 0
  br i1 %tobool.not.i452, label %if.else250.if.else.i463_crit_edge, label %land.lhs.true.i460

if.else250.if.else.i463_crit_edge:                ; preds = %if.else250
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i463

land.lhs.true.i460:                               ; preds = %if.else250
  %curchan1.i453 = getelementptr inbounds %struct.ath_hw, ptr %92, i32 0, i32 8
  %95 = ptrtoint ptr %curchan1.i453 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %curchan1.i453, align 4
  %channelFlags.i454 = getelementptr inbounds %struct.ath9k_channel, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %channelFlags.i454 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %channelFlags.i454, align 2
  %99 = and i16 %98, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %tobool3.not.i455 = icmp ne i16 %99, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %88)
  %cmp.i456 = icmp eq i8 %88, 7
  %or.cond.i457 = and i1 %cmp.i456, %tobool3.not.i455
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %90)
  %cmp8.i458 = icmp ult i32 %90, 144
  %or.cond29.i459 = and i1 %cmp8.i458, %or.cond.i457
  br i1 %or.cond29.i459, label %land.lhs.true.i460.if.end260_crit_edge, label %land.lhs.true.i460.if.else.i463_crit_edge

land.lhs.true.i460.if.else.i463_crit_edge:        ; preds = %land.lhs.true.i460
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i463

land.lhs.true.i460.if.end260_crit_edge:           ; preds = %land.lhs.true.i460
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end260

if.else.i463:                                     ; preds = %land.lhs.true.i460.if.else.i463_crit_edge, %if.else250.if.else.i463_crit_edge
  %macVersion.i461 = getelementptr inbounds %struct.ath_hw, ptr %92, i32 0, i32 4, i32 3
  %100 = ptrtoint ptr %macVersion.i461 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %macVersion.i461, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %101)
  %cmp10.i462 = icmp eq i32 %101, 640
  br i1 %cmp10.i462, label %land.lhs.true12.i466, label %if.else.i463.if.else21.i467_crit_edge

if.else.i463.if.else21.i467_crit_edge:            ; preds = %if.else.i463
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else21.i467

land.lhs.true12.i466:                             ; preds = %if.else.i463
  %enabled.i.i464 = getelementptr inbounds %struct.ath_hw, ptr %92, i32 0, i32 72, i32 3
  %102 = ptrtoint ptr %enabled.i.i464 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %enabled.i.i464, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.i.i465 = icmp ne i8 %103, 0
  %104 = add i32 %90, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %104)
  %105 = icmp ult i32 %104, 7
  %106 = and i1 %105, %tobool.i.i465
  br i1 %106, label %land.lhs.true12.i466.if.end260_crit_edge, label %land.lhs.true12.i466.if.else21.i467_crit_edge

land.lhs.true12.i466.if.else21.i467_crit_edge:    ; preds = %land.lhs.true12.i466
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else21.i467

land.lhs.true12.i466.if.end260_crit_edge:         ; preds = %land.lhs.true12.i466
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end260

if.else21.i467:                                   ; preds = %land.lhs.true12.i466.if.else21.i467_crit_edge, %if.else.i463.if.else21.i467_crit_edge
  br label %if.end260

if.end260:                                        ; preds = %if.else21.i467, %land.lhs.true12.i466.if.end260_crit_edge, %land.lhs.true.i460.if.end260_crit_edge, %if.end241.if.end260_crit_edge
  %retval.0.i468.sink = phi i8 [ %88, %if.end241.if.end260_crit_edge ], [ %88, %if.else21.i467 ], [ 3, %land.lhs.true.i460.if.end260_crit_edge ], [ 2, %land.lhs.true12.i466.if.end260_crit_edge ]
  %conv256 = zext i8 %retval.0.i468.sink to i32
  %ChSel259 = getelementptr %struct.ath_tx_info, ptr %info, i32 0, i32 11, i32 %i.0475, i32 3
  %107 = ptrtoint ptr %ChSel259 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %conv256, ptr %ChSel259, align 4
  %108 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %sc_ah, align 4
  %bitrate = getelementptr %struct.ieee80211_rate, ptr %71, i32 %idxprom, i32 1
  %110 = ptrtoint ptr %bitrate to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %bitrate, align 4
  %conv263 = zext i16 %111 to i32
  %mul = mul nuw nsw i32 %conv263, 100
  %conv264 = zext i8 %21 to i16
  %call266 = tail call zeroext i16 @ath9k_hw_computetxtime(ptr noundef %109, i8 noundef zeroext %phy.0, i32 noundef %mul, i32 noundef %len, i16 noundef zeroext %conv264, i1 noundef zeroext %is_sp.0.off0) #11
  %conv267 = zext i16 %call266 to i32
  %PktDuration270 = getelementptr %struct.ath_tx_info, ptr %info, i32 0, i32 11, i32 %i.0475, i32 2
  %112 = ptrtoint ptr %PktDuration270 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %conv267, ptr %PktDuration270, align 4
  %113 = ptrtoint ptr %Rate222 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %Rate222, align 4
  %115 = add i32 %114, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %115)
  %116 = icmp ult i32 %115, 7
  %call283 = tail call fastcc zeroext i8 @ath_get_rate_txpower(ptr noundef %sc, ptr noundef %bf, i8 noundef zeroext %21, i1 noundef zeroext false, i1 noundef zeroext %116)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end260, %if.end196
  %call283.sink = phi i8 [ %call283, %if.end260 ], [ %call198, %if.end196 ]
  %arrayidx285 = getelementptr %struct.ath_tx_info, ptr %info, i32 0, i32 17, i32 %i.0475
  %117 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %call283.sink, ptr %arrayidx285, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %rts.addr.2.off0 = phi i1 [ %rts.addr.0.off0474, %lor.lhs.false.cleanup_crit_edge ], [ %rts.addr.0.off0474, %for.body.cleanup_crit_edge ], [ %rts.addr.1.off0470, %cleanup.sink.split ]
  %inc = add nuw nsw i32 %i.0475, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %cleanup
  %118 = ptrtoint ptr %bf_state to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %bf_state, align 4
  %120 = and i8 %119, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool294.not = icmp eq i8 %120, 0
  br i1 %tobool294.not, label %for.end.if.end303_crit_edge, label %land.lhs.true295

for.end.if.end303_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end303

land.lhs.true295:                                 ; preds = %for.end
  %121 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %sc_ah, align 4
  %rts_aggr_limit = getelementptr inbounds %struct.ath_hw, ptr %122, i32 0, i32 6, i32 1
  %123 = ptrtoint ptr %rts_aggr_limit to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %rts_aggr_limit, align 4
  %conv297 = zext i16 %124 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv297, i32 %len)
  %cmp298 = icmp slt i32 %conv297, %len
  br i1 %cmp298, label %if.then300, label %land.lhs.true295.if.end303_crit_edge

land.lhs.true295.if.end303_crit_edge:             ; preds = %land.lhs.true295
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end303

if.then300:                                       ; preds = %land.lhs.true295
  call void @__sanitizer_cov_trace_pc() #13
  %125 = ptrtoint ptr %flags74 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %flags74, align 4
  %and302 = and i32 %126, -5
  store i32 %and302, ptr %flags74, align 4
  br label %if.end303

if.end303:                                        ; preds = %if.then300, %land.lhs.true295.if.end303_crit_edge, %for.end.if.end303_crit_edge
  %127 = ptrtoint ptr %flags74 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %flags74, align 4
  %and305 = and i32 %128, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and305)
  %tobool306.not = icmp eq i32 %and305, 0
  br i1 %tobool306.not, label %if.end303.if.end310_crit_edge, label %if.then307

if.end303.if.end310_crit_edge:                    ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end310

if.then307:                                       ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #13
  %and309 = and i32 %128, -9
  %129 = ptrtoint ptr %flags74 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %and309, ptr %flags74, align 4
  br label %if.end310

if.end310:                                        ; preds = %if.then307, %if.end303.if.end310_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_get_buffered_bc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_tx_tasklet(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  %bf_head.i = alloca %struct.list_head, align 4
  %ts.i = alloca %struct.ath_tx_status, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %intr_txqs = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 73
  %2 = ptrtoint ptr %intr_txqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intr_txqs, align 4
  %and = and i32 %3, 1023
  %4 = tail call i32 @llvm.read_register.i32(metadata !75) #11
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !85
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %tx = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35
  %bf_head.sroa.gep.i = getelementptr inbounds %struct.list_head, ptr %bf_head.i, i32 0, i32 1
  %txbuflock.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 1
  %txbuf.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 2
  %prev.i.i86.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 2, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %rcu_read_lock.exit
  %i.025 = phi i32 [ 0, %rcu_read_lock.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx, align 4
  %shl = shl nuw nsw i32 1, %i.025
  %and1 = and i32 %9, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  %and3 = and i32 %and, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %i.025
  %10 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sc_ah, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bf_head.i) #11
  %12 = ptrtoint ptr %bf_head.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %bf_head.i, align 4, !annotation !90
  %13 = ptrtoint ptr %bf_head.sroa.gep.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %bf_head.sroa.gep.i, align 4, !annotation !90
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ts.i) #11
  %14 = call ptr @memset(ptr %ts.i, i32 255, i32 48)
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %11, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i13 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i13, label %if.then.do.end.i_crit_edge, label %if.then.i14

if.then.do.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then.i14:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %11, i32 0, i32 3
  %axq_qnum.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %i.025, i32 1
  %17 = ptrtoint ptr %axq_qnum.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %axq_qnum.i, align 4
  %call3.i = call i32 @ath9k_hw_gettxbuf(ptr noundef %11, i32 noundef %18) #11
  %axq_link.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %i.025, i32 2
  %19 = ptrtoint ptr %axq_link.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %axq_link.i, align 4
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.30, i32 noundef %18, i32 noundef %call3.i, ptr noundef %20) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i14, %if.then.do.end.i_crit_edge
  %axq_lock.i.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %i.025, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %axq_lock.i.i) #11
  %op_flags.i = getelementptr inbounds %struct.ath_hw, ptr %11, i32 0, i32 3, i32 5
  %21 = ptrtoint ptr %op_flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %op_flags.i, align 4
  %23 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool5.not88.i = icmp eq i32 %23, 0
  br i1 %tobool5.not88.i, label %if.end7.lr.ph.i, label %do.end.i.ath_tx_processq.exit_crit_edge

do.end.i.ath_tx_processq.exit_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tx_processq.exit

if.end7.lr.ph.i:                                  ; preds = %do.end.i
  %axq_q.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %i.025, i32 3
  %proc_txdesc.i.i = getelementptr inbounds %struct.ath_hw, ptr %11, i32 0, i32 63, i32 6
  %axq_qnum31.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %i.025, i32 1
  %prev.i.i.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %i.025, i32 3, i32 1
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end46.i.if.end7.i_crit_edge, %if.end7.lr.ph.i
  %24 = ptrtoint ptr %axq_q.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %axq_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %25, %axq_q.i
  br i1 %cmp.i.not.i, label %if.then10.i, label %if.end12.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %axq_link11.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %i.025, i32 2
  %26 = ptrtoint ptr %axq_link11.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %axq_link11.i, align 4
  call void @ath_txq_schedule(ptr noundef %sc, ptr noundef %arrayidx) #11
  br label %ath_tx_processq.exit

if.end12.i:                                       ; preds = %if.end7.i
  %stale.i = getelementptr inbounds %struct.ath_buf, ptr %25, i32 0, i32 8, i32 3
  %27 = ptrtoint ptr %stale.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %stale.i, align 1, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool14.not.i = icmp eq i8 %28, 0
  br i1 %tobool14.not.i, label %if.end12.i.if.end26.i_crit_edge, label %if.then15.i

if.end12.i.if.end26.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

if.then15.i:                                      ; preds = %if.end12.i
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %25, align 4
  %cmp.i79.not.i = icmp eq ptr %30, %axq_q.i
  br i1 %cmp.i79.not.i, label %if.then15.i.ath_tx_processq.exit_crit_edge, label %if.then15.i.if.end26.i_crit_edge

if.then15.i.if.end26.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

if.then15.i.ath_tx_processq.exit_crit_edge:       ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tx_processq.exit

if.end26.i:                                       ; preds = %if.then15.i.if.end26.i_crit_edge, %if.end12.i.if.end26.i_crit_edge
  %bf_held.0.i = phi ptr [ null, %if.end12.i.if.end26.i_crit_edge ], [ %25, %if.then15.i.if.end26.i_crit_edge ]
  %bf.0.i = phi ptr [ %25, %if.end12.i.if.end26.i_crit_edge ], [ %30, %if.then15.i.if.end26.i_crit_edge ]
  %bf_lastbf.i = getelementptr inbounds %struct.ath_buf, ptr %bf.0.i, i32 0, i32 1
  %31 = ptrtoint ptr %bf_lastbf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bf_lastbf.i, align 4
  %bf_desc.i = getelementptr inbounds %struct.ath_buf, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %bf_desc.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bf_desc.i, align 4
  %35 = call ptr @memset(ptr %ts.i, i32 0, i32 48)
  %36 = ptrtoint ptr %proc_txdesc.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %proc_txdesc.i.i, align 4
  %call1.i.i = call i32 %37(ptr noundef %11, ptr noundef %34, ptr noundef nonnull %ts.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call1.i.i)
  %cmp.i = icmp eq i32 %call1.i.i, -115
  br i1 %cmp.i, label %if.end26.i.ath_tx_processq.exit_crit_edge, label %do.body30.i

if.end26.i.ath_tx_processq.exit_crit_edge:        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tx_processq.exit

do.body30.i:                                      ; preds = %if.end26.i
  %38 = ptrtoint ptr %axq_qnum31.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %axq_qnum31.i, align 4
  %txprocdesc.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 1, i32 %39, i32 19
  %40 = ptrtoint ptr %txprocdesc.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %txprocdesc.i, align 4
  %inc.i = add i32 %41, 1
  store i32 %inc.i, ptr %txprocdesc.i, align 4
  %stale35.i = getelementptr inbounds %struct.ath_buf, ptr %32, i32 0, i32 8, i32 3
  %42 = ptrtoint ptr %stale35.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %stale35.i, align 1
  %43 = ptrtoint ptr %bf_head.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %bf_head.i, ptr %bf_head.i, align 4
  %44 = ptrtoint ptr %bf_head.sroa.gep.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %bf_head.i, ptr %bf_head.sroa.gep.i, align 4
  %45 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %32, align 4
  %cmp.i.not.i.i = icmp eq ptr %46, %32
  br i1 %cmp.i.not.i.i, label %do.body30.i.if.then39.i_crit_edge, label %list_is_singular.exit.i

do.body30.i.if.then39.i_crit_edge:                ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then39.i

list_is_singular.exit.i:                          ; preds = %do.body30.i
  %prev.i81.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i81.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i81.i, align 4
  %cmp.i82.not.i = icmp eq ptr %46, %48
  br i1 %cmp.i82.not.i, label %list_is_singular.exit.i.if.end42.i_crit_edge, label %list_is_singular.exit.i.if.then39.i_crit_edge

list_is_singular.exit.i.if.then39.i_crit_edge:    ; preds = %list_is_singular.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then39.i

list_is_singular.exit.i.if.end42.i_crit_edge:     ; preds = %list_is_singular.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

if.then39.i:                                      ; preds = %list_is_singular.exit.i.if.then39.i_crit_edge, %do.body30.i.if.then39.i_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i, align 4
  %51 = ptrtoint ptr %axq_q.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %axq_q.i, align 4
  %cmp.i.not.i83.i = icmp eq ptr %52, %axq_q.i
  br i1 %cmp.i.not.i83.i, label %if.then39.i.if.end42.i_crit_edge, label %if.end.i.i

if.then39.i.if.end42.i_crit_edge:                 ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

if.end.i.i:                                       ; preds = %if.then39.i
  %53 = ptrtoint ptr %axq_q.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %axq_q.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %54, %axq_q.i
  br i1 %cmp.i.not.i.i.i, label %if.end.i.i.if.end8.i.i_crit_edge, label %list_is_singular.exit.i.i

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i

list_is_singular.exit.i.i:                        ; preds = %if.end.i.i
  %55 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i.i.i, align 4
  %cmp.i22.not.i.i = icmp eq ptr %54, %56
  br i1 %cmp.i22.not.i.i, label %land.lhs.true.i.i, label %list_is_singular.exit.i.i.if.end8.i.i_crit_edge

list_is_singular.exit.i.i.if.end8.i.i_crit_edge:  ; preds = %list_is_singular.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i

land.lhs.true.i.i:                                ; preds = %list_is_singular.exit.i.i
  %cmp.i23.i.i = icmp eq ptr %50, %axq_q.i
  %cmp.not.i.i = icmp eq ptr %54, %50
  %or.cond.i.i = select i1 %cmp.i23.i.i, i1 true, i1 %cmp.not.i.i
  br i1 %or.cond.i.i, label %land.lhs.true.i.i.if.end8.i.i_crit_edge, label %land.lhs.true.i.i.if.end42.i_crit_edge

land.lhs.true.i.i.if.end42.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

land.lhs.true.i.i.if.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %land.lhs.true.i.i.if.end8.i.i_crit_edge, %list_is_singular.exit.i.i.if.end8.i.i_crit_edge, %if.end.i.i.if.end8.i.i_crit_edge
  %cmp.i25.not.i.i = icmp eq ptr %50, %axq_q.i
  br i1 %cmp.i25.not.i.i, label %if.then11.i.i, label %if.else.i.i

if.then11.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %bf_head.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %bf_head.i, ptr %bf_head.i, align 4
  br label %if.end12.sink.split.i.i

if.else.i.i:                                      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %50, align 4
  %.sroa.gep.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %bf_head.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %54, ptr %bf_head.i, align 4
  %prev.i28.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i28.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %bf_head.i, ptr %prev.i28.i.i, align 4
  %62 = ptrtoint ptr %bf_head.sroa.gep.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %50, ptr %bf_head.sroa.gep.i, align 4
  store ptr %bf_head.i, ptr %50, align 4
  %63 = ptrtoint ptr %axq_q.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %59, ptr %axq_q.i, align 4
  br label %if.end12.sink.split.i.i

if.end12.sink.split.i.i:                          ; preds = %if.else.i.i, %if.then11.i.i
  %head.sink.i.i = phi ptr [ %axq_q.i, %if.else.i.i ], [ %bf_head.i, %if.then11.i.i ]
  %.sink.i.sroa.phi.i = phi ptr [ %.sroa.gep.i, %if.else.i.i ], [ %bf_head.sroa.gep.i, %if.then11.i.i ]
  %64 = ptrtoint ptr %.sink.i.sroa.phi.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %head.sink.i.i, ptr %.sink.i.sroa.phi.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.end12.sink.split.i.i, %land.lhs.true.i.i.if.end42.i_crit_edge, %if.then39.i.if.end42.i_crit_edge, %list_is_singular.exit.i.if.end42.i_crit_edge
  %tobool43.not.i = icmp eq ptr %bf_held.0.i, null
  br i1 %tobool43.not.i, label %if.end42.i.if.end46.i_crit_edge, label %if.then44.i

if.end42.i.if.end46.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

if.then44.i:                                      ; preds = %if.end42.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %bf_held.0.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then44.i.list_del.exit.i_crit_edge

if.then44.i.list_del.exit.i_crit_edge:            ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i84.i = getelementptr inbounds %struct.list_head, ptr %bf_held.0.i, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i.i84.i, align 4
  %67 = ptrtoint ptr %bf_held.0.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bf_held.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev1.i.i.i.i, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %68, ptr %66, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then44.i.list_del.exit.i_crit_edge
  %71 = ptrtoint ptr %bf_held.0.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 256 to ptr), ptr %bf_held.0.i, align 4
  %prev.i85.i = getelementptr inbounds %struct.list_head, ptr %bf_held.0.i, i32 0, i32 1
  %72 = ptrtoint ptr %prev.i85.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i85.i, align 4
  call void @_raw_spin_lock_bh(ptr noundef %txbuflock.i.i) #11
  %73 = ptrtoint ptr %prev.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i.i86.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %bf_held.0.i, ptr noundef %74, ptr noundef %txbuf.i.i) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %list_del.exit.i.ath_tx_return_buffer.exit.i_crit_edge

list_del.exit.i.ath_tx_return_buffer.exit.i_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tx_return_buffer.exit.i

if.end.i.i.i.i:                                   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %prev.i.i86.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %bf_held.0.i, ptr %prev.i.i86.i, align 4
  %76 = ptrtoint ptr %bf_held.0.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %txbuf.i.i, ptr %bf_held.0.i, align 4
  %77 = ptrtoint ptr %prev.i85.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev.i85.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %bf_held.0.i, ptr %74, align 4
  br label %ath_tx_return_buffer.exit.i

ath_tx_return_buffer.exit.i:                      ; preds = %if.end.i.i.i.i, %list_del.exit.i.ath_tx_return_buffer.exit.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %txbuflock.i.i) #11
  br label %if.end46.i

if.end46.i:                                       ; preds = %ath_tx_return_buffer.exit.i, %if.end42.i.if.end46.i_crit_edge
  call fastcc void @ath_tx_process_buffer(ptr noundef %sc, ptr noundef %arrayidx, ptr noundef nonnull %ts.i, ptr noundef %bf.0.i, ptr noundef nonnull %bf_head.i) #11
  %79 = ptrtoint ptr %op_flags.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %op_flags.i, align 4
  %81 = and i32 %80, 16
  %tobool5.not.i = icmp eq i32 %81, 0
  br i1 %tobool5.not.i, label %if.end46.i.if.end7.i_crit_edge, label %if.end46.i.ath_tx_processq.exit_crit_edge

if.end46.i.ath_tx_processq.exit_crit_edge:        ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tx_processq.exit

if.end46.i.if.end7.i_crit_edge:                   ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

ath_tx_processq.exit:                             ; preds = %if.end46.i.ath_tx_processq.exit_crit_edge, %if.end26.i.ath_tx_processq.exit_crit_edge, %if.then15.i.ath_tx_processq.exit_crit_edge, %if.then10.i, %do.end.i.ath_tx_processq.exit_crit_edge
  call void @ath_txq_unlock_complete(ptr noundef %sc, ptr noundef %arrayidx) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ts.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bf_head.i) #11
  br label %for.inc

for.inc:                                          ; preds = %ath_tx_processq.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call.i15 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i15, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i18

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i18:                                ; preds = %for.end
  %call1.i16 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16)
  %tobool.not.i17 = icmp eq i32 %call1.i16, 0
  br i1 %tobool.not.i17, label %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i20

land.lhs.true.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i20:                               ; preds = %land.lhs.true.i18
  %.b4.i19 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i19, label %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, label %if.then.i21

land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i21:                                      ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i21, %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !87
  %82 = call i32 @llvm.read_register.i32(metadata !75) #11
  %and.i.i.i.i.i22 = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i.i.i22 to ptr
  %preempt_count.i.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %preempt_count.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %preempt_count.i.i.i.i23, align 4
  %sub.i.i.i = add i32 %85, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i23, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_tx_edma_tasklet(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  %ts = alloca %struct.ath_tx_status, align 4
  %bf_head = alloca %struct.list_head, align 4
  %bf_q = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bf_head.sroa.gep = getelementptr inbounds %struct.list_head, ptr %bf_head, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ts) #11
  %0 = call ptr @memset(ptr %ts, i32 255, i32 48)
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %1 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %2, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bf_head) #11
  %3 = ptrtoint ptr %bf_head to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %bf_head, align 4, !annotation !90
  %4 = ptrtoint ptr %bf_head.sroa.gep to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %bf_head.sroa.gep, align 4, !annotation !90
  %5 = tail call i32 @llvm.read_register.i32(metadata !75) #11
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !85
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %2, i32 0, i32 3, i32 5
  %9 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %op_flags, align 4
  %11 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not140 = icmp eq i32 %11, 0
  br i1 %tobool.not140, label %if.end.lr.ph, label %rcu_read_lock.exit.for.end_crit_edge

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.lr.ph:                                     ; preds = %rcu_read_lock.exit
  %proc_txdesc.i = getelementptr inbounds %struct.ath_hw, ptr %2, i32 0, i32 63, i32 6
  %qid = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 15
  %beaconq = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 1
  %txbuflock.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 1
  %txbuf.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 2
  %prev.i.i113 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 2, i32 1
  %12 = getelementptr inbounds %struct.list_head, ptr %bf_q, i32 0, i32 1
  %tx_processed = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 9
  %ts_status = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 2
  %tx_last = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 10
  br label %if.end

if.end:                                           ; preds = %for.cond.backedge.if.end_crit_edge, %if.end.lr.ph
  %13 = ptrtoint ptr %proc_txdesc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %proc_txdesc.i, align 4
  %call1.i111 = call i32 %14(ptr noundef %2, ptr noundef null, ptr noundef nonnull %ts) #11
  %15 = zext i32 %call1.i111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %call1.i111, label %if.end11 [
    i32 -115, label %if.end.for.end_crit_edge
    i32 -5, label %do.body
  ]

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body:                                          ; preds = %if.end
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %2, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug_mask, align 4
  %and = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.body.for.end_crit_edge, label %if.then9

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.8) #11
  br label %for.end

if.end11:                                         ; preds = %if.end
  %18 = ptrtoint ptr %qid to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %qid, align 1
  %conv = zext i8 %19 to i32
  %20 = ptrtoint ptr %beaconq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %beaconq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv)
  %cmp12 = icmp eq i32 %21, %conv
  br i1 %cmp12, label %if.then14, label %if.end23

if.then14:                                        ; preds = %if.end11
  %22 = ptrtoint ptr %tx_processed to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %tx_processed, align 4
  %23 = ptrtoint ptr %ts_status to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ts_status, align 2
  %25 = and i8 %24, 95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool18.not = icmp eq i8 %25, 0
  %frombool = zext i1 %tobool18.not to i8
  %26 = ptrtoint ptr %tx_last to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool, ptr %tx_last, align 1
  %call20 = call zeroext i1 @ath9k_is_chanctx_enabled() #11
  br i1 %call20, label %if.then21, label %if.then14.if.end22_crit_edge

if.then14.if.end22_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then21:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  call void @ath_chanctx_event(ptr noundef %sc, ptr noundef null, i32 noundef 1) #11
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.then14.if.end22_crit_edge
  call void @ath9k_csa_update(ptr noundef %sc) #11
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end68, %if.end22
  %27 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %op_flags, align 4
  %29 = and i32 %28, 16
  %tobool.not = icmp eq i32 %29, 0
  br i1 %tobool.not, label %for.cond.backedge.if.end_crit_edge, label %for.cond.backedge.for.end_crit_edge

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.backedge.if.end_crit_edge:               ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end23:                                         ; preds = %if.end11
  %arrayidx = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %conv
  %axq_lock.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %conv, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %axq_lock.i) #11
  %axq_qnum = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %conv, i32 1
  %30 = ptrtoint ptr %axq_qnum to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %axq_qnum, align 4
  %txprocdesc = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 1, i32 %31, i32 19
  %32 = ptrtoint ptr %txprocdesc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %txprocdesc, align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr %txprocdesc, align 4
  %txq_tailidx = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %conv, i32 10
  %34 = ptrtoint ptr %txq_tailidx to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %txq_tailidx, align 1
  %idxprom30 = zext i8 %35 to i32
  %arrayidx31 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %conv, i32 8, i32 %idxprom30
  %36 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %arrayidx31, align 4
  %cmp.i.not = icmp eq ptr %37, %arrayidx31
  br i1 %cmp.i.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_bh(ptr noundef %axq_lock.i) #11
  br label %for.end

if.end35:                                         ; preds = %if.end23
  %stale = getelementptr inbounds %struct.ath_buf, ptr %37, i32 0, i32 8, i32 3
  %38 = ptrtoint ptr %stale to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %stale, align 1, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool36.not = icmp eq i8 %39, 0
  br i1 %tobool36.not, label %if.end35.if.end42_crit_edge, label %if.then37

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then37:                                        ; preds = %if.end35
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %37) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then37.list_del.exit_crit_edge

if.then37.list_del.exit_crit_edge:                ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i, align 4
  %42 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %37, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then37.list_del.exit_crit_edge
  %46 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 256 to ptr), ptr %37, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_lock_bh(ptr noundef %txbuflock.i) #11
  %48 = ptrtoint ptr %prev.i.i113 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i113, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %37, ptr noundef %49, ptr noundef %txbuf.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_del.exit.ath_tx_return_buffer.exit_crit_edge

list_del.exit.ath_tx_return_buffer.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tx_return_buffer.exit

if.end.i.i.i:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %prev.i.i113 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %37, ptr %prev.i.i113, align 4
  %51 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %txbuf.i, ptr %37, align 4
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %37, ptr %49, align 4
  br label %ath_tx_return_buffer.exit

ath_tx_return_buffer.exit:                        ; preds = %if.end.i.i.i, %list_del.exit.ath_tx_return_buffer.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %txbuflock.i) #11
  %54 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx31, align 4
  br label %if.end42

if.end42:                                         ; preds = %ath_tx_return_buffer.exit, %if.end35.if.end42_crit_edge
  %bf.0 = phi ptr [ %55, %ath_tx_return_buffer.exit ], [ %37, %if.end35.if.end42_crit_edge ]
  %bf_lastbf = getelementptr inbounds %struct.ath_buf, ptr %bf.0, i32 0, i32 1
  %56 = ptrtoint ptr %bf_lastbf to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bf_lastbf, align 4
  %58 = ptrtoint ptr %bf_head to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %bf_head, ptr %bf_head, align 4
  %59 = ptrtoint ptr %bf_head.sroa.gep to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %bf_head, ptr %bf_head.sroa.gep, align 4
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %57, align 4
  %cmp.i115.not = icmp eq ptr %61, %arrayidx31
  br i1 %cmp.i115.not, label %if.then46, label %if.else

if.then46:                                        ; preds = %if.end42
  %62 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %arrayidx31, align 4
  %cmp.i.not.i = icmp eq ptr %63, %arrayidx31
  br i1 %cmp.i.not.i, label %if.then46.list_splice_tail_init.exit_crit_edge, label %if.then.i118

if.then46.list_splice_tail_init.exit_crit_edge:   ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit

if.then.i118:                                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  %prev2.i.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %conv, i32 8, i32 %idxprom30, i32 1
  %64 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %66 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %bf_head, ptr %prev3.i.i, align 4
  %67 = ptrtoint ptr %bf_head to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %63, ptr %bf_head, align 4
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %bf_head, ptr %65, align 4
  %69 = ptrtoint ptr %bf_head.sroa.gep to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %65, ptr %bf_head.sroa.gep, align 4
  %70 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %arrayidx31, ptr %arrayidx31, align 4
  store ptr %arrayidx31, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i118, %if.then46.list_splice_tail_init.exit_crit_edge
  %71 = ptrtoint ptr %txq_tailidx to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %txq_tailidx, align 1
  %inc49 = add i8 %72, 1
  %73 = and i8 %inc49, 7
  store i8 %73, ptr %txq_tailidx, align 1
  %axq_q = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %conv, i32 3
  %74 = ptrtoint ptr %axq_q to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %axq_q, align 4
  %cmp.i119.not = icmp eq ptr %75, %axq_q
  br i1 %cmp.i119.not, label %list_splice_tail_init.exit.if.end68_crit_edge, label %if.then58

list_splice_tail_init.exit.if.end68_crit_edge:    ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then58:                                        ; preds = %list_splice_tail_init.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bf_q) #11
  %76 = ptrtoint ptr %bf_q to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %bf_q, ptr %bf_q, align 4
  %77 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %bf_q, ptr %12, align 4
  %axq_link = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %conv, i32 2
  %78 = ptrtoint ptr %axq_link to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %axq_link, align 4
  %79 = ptrtoint ptr %axq_q to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile ptr, ptr %axq_q, align 4
  %cmp.i.not.i122 = icmp eq ptr %80, %axq_q
  br i1 %cmp.i.not.i122, label %if.then58.list_splice_tail_init.exit127_crit_edge, label %if.then.i126

if.then58.list_splice_tail_init.exit127_crit_edge: ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit127

if.then.i126:                                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  %prev2.i.i124 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %conv, i32 3, i32 1
  %81 = ptrtoint ptr %prev2.i.i124 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %prev2.i.i124, align 4
  %prev3.i.i125 = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  %83 = ptrtoint ptr %prev3.i.i125 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %bf_q, ptr %prev3.i.i125, align 4
  %84 = ptrtoint ptr %bf_q to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %80, ptr %bf_q, align 4
  %85 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %bf_q, ptr %82, align 4
  %86 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %82, ptr %12, align 4
  %87 = ptrtoint ptr %axq_q to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %axq_q, ptr %axq_q, align 4
  store ptr %axq_q, ptr %prev2.i.i124, align 4
  br label %list_splice_tail_init.exit127

list_splice_tail_init.exit127:                    ; preds = %if.then.i126, %if.then58.list_splice_tail_init.exit127_crit_edge
  call fastcc void @ath_tx_txqaddbuf(ptr noundef %sc, ptr noundef %arrayidx, ptr noundef nonnull %bf_q, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bf_q) #11
  br label %if.end68

if.else:                                          ; preds = %if.end42
  %stale62 = getelementptr inbounds %struct.ath_buf, ptr %57, i32 0, i32 8, i32 3
  %88 = ptrtoint ptr %stale62 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %stale62, align 1
  %cmp63.not = icmp eq ptr %bf.0, %57
  br i1 %cmp63.not, label %if.else.if.end68_crit_edge, label %if.then65

if.else.if.end68_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then65:                                        ; preds = %if.else
  %prev = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %89 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %prev, align 4
  %91 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile ptr, ptr %arrayidx31, align 4
  %cmp.i.not.i128 = icmp eq ptr %92, %arrayidx31
  br i1 %cmp.i.not.i128, label %if.then65.if.end68_crit_edge, label %if.end.i

if.then65.if.end68_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.end.i:                                         ; preds = %if.then65
  %93 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile ptr, ptr %arrayidx31, align 4
  %cmp.i.not.i.i = icmp eq ptr %94, %arrayidx31
  br i1 %cmp.i.not.i.i, label %if.end.i.if.end8.i_crit_edge, label %list_is_singular.exit.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

list_is_singular.exit.i:                          ; preds = %if.end.i
  %prev.i.i129 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 3, i32 %conv, i32 8, i32 %idxprom30, i32 1
  %95 = ptrtoint ptr %prev.i.i129 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %prev.i.i129, align 4
  %cmp.i22.not.i = icmp eq ptr %94, %96
  br i1 %cmp.i22.not.i, label %land.lhs.true.i130, label %list_is_singular.exit.i.if.end8.i_crit_edge

list_is_singular.exit.i.if.end8.i_crit_edge:      ; preds = %list_is_singular.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

land.lhs.true.i130:                               ; preds = %list_is_singular.exit.i
  %cmp.i23.i = icmp eq ptr %90, %arrayidx31
  %cmp.not.i = icmp eq ptr %94, %90
  %or.cond.i = select i1 %cmp.i23.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %land.lhs.true.i130.if.end8.i_crit_edge, label %land.lhs.true.i130.if.end68_crit_edge

land.lhs.true.i130.if.end68_crit_edge:            ; preds = %land.lhs.true.i130
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

land.lhs.true.i130.if.end8.i_crit_edge:           ; preds = %land.lhs.true.i130
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.end8.i:                                        ; preds = %land.lhs.true.i130.if.end8.i_crit_edge, %list_is_singular.exit.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %cmp.i25.not.i = icmp eq ptr %90, %arrayidx31
  br i1 %cmp.i25.not.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %97 = ptrtoint ptr %bf_head to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %bf_head, ptr %bf_head, align 4
  br label %if.end12.sink.split.i

if.else.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %98 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %90, align 4
  %.sroa.gep = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %bf_head to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %94, ptr %bf_head, align 4
  %prev.i28.i = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  %101 = ptrtoint ptr %prev.i28.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %bf_head, ptr %prev.i28.i, align 4
  %102 = ptrtoint ptr %bf_head.sroa.gep to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %90, ptr %bf_head.sroa.gep, align 4
  store ptr %bf_head, ptr %90, align 4
  %103 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %99, ptr %arrayidx31, align 4
  br label %if.end12.sink.split.i

if.end12.sink.split.i:                            ; preds = %if.else.i, %if.then11.i
  %head.sink.i = phi ptr [ %arrayidx31, %if.else.i ], [ %bf_head, %if.then11.i ]
  %.sink.i.sroa.phi = phi ptr [ %.sroa.gep, %if.else.i ], [ %bf_head.sroa.gep, %if.then11.i ]
  %104 = ptrtoint ptr %.sink.i.sroa.phi to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %head.sink.i, ptr %.sink.i.sroa.phi, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.end12.sink.split.i, %land.lhs.true.i130.if.end68_crit_edge, %if.then65.if.end68_crit_edge, %if.else.if.end68_crit_edge, %list_splice_tail_init.exit127, %list_splice_tail_init.exit.if.end68_crit_edge
  call fastcc void @ath_tx_process_buffer(ptr noundef %sc, ptr noundef %arrayidx, ptr noundef nonnull %ts, ptr noundef %bf.0, ptr noundef nonnull %bf_head)
  call void @ath_txq_unlock_complete(ptr noundef %sc, ptr noundef %arrayidx)
  br label %for.cond.backedge

for.end:                                          ; preds = %if.then34, %for.cond.backedge.for.end_crit_edge, %if.then9, %do.body.for.end_crit_edge, %if.end.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i131 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i131, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i134

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i134:                               ; preds = %for.end
  %call1.i132 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i132)
  %tobool.not.i133 = icmp eq i32 %call1.i132, 0
  br i1 %tobool.not.i133, label %land.lhs.true.i134.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i136

land.lhs.true.i134.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i134
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i136:                              ; preds = %land.lhs.true.i134
  %.b4.i135 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i135, label %land.lhs.true2.i136.rcu_read_unlock.exit_crit_edge, label %if.then.i137

land.lhs.true2.i136.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i136
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i137:                                     ; preds = %land.lhs.true2.i136
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i137, %land.lhs.true2.i136.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i134.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !87
  %105 = call i32 @llvm.read_register.i32(metadata !75) #11
  %and.i.i.i.i.i138 = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i.i.i.i138 to ptr
  %preempt_count.i.i.i.i139 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %preempt_count.i.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %preempt_count.i.i.i.i139, align 4
  %sub.i.i.i = add i32 %108, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i139, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bf_head) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ts) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_is_chanctx_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_chanctx_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_csa_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath_tx_return_buffer(ptr noundef %sc, ptr noundef %bf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %txbuflock = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %txbuflock) #11
  %txbuf = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 2
  %prev.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 2, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %bf, ptr noundef %1, ptr noundef %txbuf) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %bf, ptr %prev.i, align 4
  %3 = ptrtoint ptr %bf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %txbuf, ptr %bf, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %bf, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %bf, ptr %1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %txbuflock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath_tx_process_buffer(ptr noundef %sc, ptr noundef %txq, ptr noundef %ts, ptr noundef %bf, ptr noundef %bf_head) unnamed_addr #0 align 64 {
entry:
  %ba.i.i = alloca [2 x i32], align 8
  %bf_head.i = alloca %struct.list_head, align 4
  %bf_pending.i = alloca %struct.sk_buff_head, align 4
  %ba.i = alloca [2 x i32], align 8
  %rates.i = alloca [4 x %struct.ieee80211_tx_rate], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc, align 8
  %ts_status = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 2
  %2 = ptrtoint ptr %ts_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ts_status, align 2
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and4 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %axq_tx_inprogress = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 7
  %4 = ptrtoint ptr %axq_tx_inprogress to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %axq_tx_inprogress, align 4
  %axq_depth = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 5
  %5 = ptrtoint ptr %axq_depth to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %axq_depth, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %axq_depth, align 4
  %bf_state.i = getelementptr inbounds %struct.ath_buf, ptr %bf, i32 0, i32 8
  %7 = ptrtoint ptr %bf_state.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bf_state.i, align 4
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %bf_is_ampdu_not_probing.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

bf_is_ampdu_not_probing.exit:                     ; preds = %entry
  %bf_mpdu.i = getelementptr inbounds %struct.ath_buf, ptr %bf, i32 0, i32 3
  %10 = ptrtoint ptr %bf_mpdu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bf_mpdu.i, align 4
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cb.i.i, align 8
  %and1.i = and i32 %13, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.then, label %bf_is_ampdu_not_probing.exit.if.end_crit_edge

bf_is_ampdu_not_probing.exit.if.end_crit_edge:    ; preds = %bf_is_ampdu_not_probing.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %bf_is_ampdu_not_probing.exit
  call void @__sanitizer_cov_trace_pc() #13
  %axq_ampdu_depth = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 6
  %14 = ptrtoint ptr %axq_ampdu_depth to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %axq_ampdu_depth, align 4
  %dec9 = add i32 %15, -1
  store i32 %dec9, ptr %axq_ampdu_depth, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %bf_is_ampdu_not_probing.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %16 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sc_ah, align 4
  %bf_desc = getelementptr inbounds %struct.ath_buf, ptr %bf, i32 0, i32 4
  %18 = ptrtoint ptr %bf_desc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bf_desc, align 4
  %ts_rateindex = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 3
  %20 = ptrtoint ptr %ts_rateindex to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ts_rateindex, align 1
  %conv10 = zext i8 %21 to i32
  %get_duration.i = getelementptr inbounds %struct.ath_hw, ptr %17, i32 0, i32 63, i32 7
  %22 = ptrtoint ptr %get_duration.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_duration.i, align 4
  %call1.i = tail call i32 %23(ptr noundef %17, ptr noundef %19, i32 noundef %conv10) #11
  %duration = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 23
  %24 = ptrtoint ptr %duration to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call1.i, ptr %duration, align 4
  %bf_mpdu = getelementptr inbounds %struct.ath_buf, ptr %bf, i32 0, i32 3
  %25 = ptrtoint ptr %bf_mpdu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bf_mpdu, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 19
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %addr1 = getelementptr inbounds %struct.ieee80211_hdr, ptr %28, i32 0, i32 2
  %addr2 = getelementptr inbounds %struct.ieee80211_hdr, ptr %28, i32 0, i32 3
  %call13 = tail call ptr @ieee80211_find_sta_by_ifaddr(ptr noundef %1, ptr noundef %addr1, ptr noundef %addr2) #11
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.if.end25_crit_edge, label %if.then15

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then15:                                        ; preds = %if.end
  %vif2.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %call13, i32 1, i32 0, i32 2
  %29 = ptrtoint ptr %vif2.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vif2.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i, label %do.body6.i.i, label %ath_get_skb_tid.exit, !prof !88

do.body6.i.i:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath9k/ath9k.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #11, !srcloc !89
  unreachable

ath_get_skb_tid.exit:                             ; preds = %if.then15
  %31 = ptrtoint ptr %bf_mpdu to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bf_mpdu, align 4
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 15, i32 0, i32 6
  %33 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %priority.i, align 4
  %conv.i = and i32 %34, 15
  %sta1.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %call13, i32 1, i32 0, i32 1
  %35 = ptrtoint ptr %sta1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sta1.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %36, null
  %arrayidx.i.i = getelementptr %struct.ieee80211_sta, ptr %36, i32 0, i32 28, i32 %conv.i
  %txq15.i.i = getelementptr inbounds %struct.ieee80211_vif, ptr %30, i32 0, i32 8
  %txq.0.in.i.i = select i1 %tobool12.not.i.i, ptr %txq15.i.i, ptr %arrayidx.i.i
  %37 = ptrtoint ptr %txq.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %txq.0.i.i = load ptr, ptr %txq.0.in.i.i, align 4
  %drv_priv.i.i = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i.i, i32 0, i32 5
  %tidno = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i.i, i32 8, i32 4
  %38 = ptrtoint ptr %tidno to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %tidno, align 2
  %40 = ptrtoint ptr %duration to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %duration, align 4
  %ts_longretry.i = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 6
  %42 = ptrtoint ptr %ts_longretry.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ts_longretry.i, align 2
  %conv.i98 = zext i8 %43 to i32
  %add.i = add nuw nsw i32 %conv.i98, 1
  %mul.i = mul i32 %add.i, %41
  %44 = ptrtoint ptr %ts_rateindex to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ts_rateindex, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp16.not.i = icmp eq i8 %45, 0
  br i1 %cmp16.not.i, label %ath_get_skb_tid.exit.ath_tx_count_airtime.exit_crit_edge, label %ath_get_skb_tid.exit.for.body.i_crit_edge

ath_get_skb_tid.exit.for.body.i_crit_edge:        ; preds = %ath_get_skb_tid.exit
  br label %for.body.i

ath_get_skb_tid.exit.ath_tx_count_airtime.exit_crit_edge: ; preds = %ath_get_skb_tid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tx_count_airtime.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %ath_get_skb_tid.exit.for.body.i_crit_edge
  %airtime.018.i = phi i32 [ %add6.i, %for.body.i.for.body.i_crit_edge ], [ %mul.i, %ath_get_skb_tid.exit.for.body.i_crit_edge ]
  %i.017.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %ath_get_skb_tid.exit.for.body.i_crit_edge ]
  %46 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sc_ah, align 4
  %48 = ptrtoint ptr %bf_desc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bf_desc, align 4
  %get_duration.i.i = getelementptr inbounds %struct.ath_hw, ptr %47, i32 0, i32 63, i32 7
  %50 = ptrtoint ptr %get_duration.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %get_duration.i.i, align 4
  %call1.i.i = tail call i32 %51(ptr noundef %47, ptr noundef %49, i32 noundef %i.017.i) #11
  %count.i = getelementptr %struct.ath_buf, ptr %bf, i32 0, i32 7, i32 %i.017.i, i32 1
  %52 = ptrtoint ptr %count.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %bf.load.i = load i16, ptr %count.i, align 1
  %bf.lshr.i = lshr i16 %bf.load.i, 11
  %conv4.i = zext i16 %bf.lshr.i to i32
  %mul5.i = mul i32 %call1.i.i, %conv4.i
  %add6.i = add i32 %mul5.i, %airtime.018.i
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %53 = ptrtoint ptr %ts_rateindex to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ts_rateindex, align 1
  %conv2.i = zext i8 %54 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv2.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ath_tx_count_airtime.exit_crit_edge

for.body.i.ath_tx_count_airtime.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tx_count_airtime.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

ath_tx_count_airtime.exit:                        ; preds = %for.body.i.ath_tx_count_airtime.exit_crit_edge, %ath_get_skb_tid.exit.ath_tx_count_airtime.exit_crit_edge
  %airtime.0.lcssa.i = phi i32 [ %mul.i, %ath_get_skb_tid.exit.ath_tx_count_airtime.exit_crit_edge ], [ %add6.i, %for.body.i.ath_tx_count_airtime.exit_crit_edge ]
  tail call void @ieee80211_sta_register_airtime(ptr noundef nonnull %call13, i8 noundef zeroext %39, i32 noundef %airtime.0.lcssa.i, i32 noundef 0) #11
  %55 = ptrtoint ptr %ts_status to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ts_status, align 2
  %57 = and i8 %56, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool22.not = icmp eq i8 %57, 0
  br i1 %tobool22.not, label %ath_tx_count_airtime.exit.if.end25_crit_edge, label %if.then23

ath_tx_count_airtime.exit.if.end25_crit_edge:     ; preds = %ath_tx_count_airtime.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then23:                                        ; preds = %ath_tx_count_airtime.exit
  call void @__sanitizer_cov_trace_pc() #13
  %clear_ps_filter = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i.i, i32 9, i32 4
  %58 = ptrtoint ptr %clear_ps_filter to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %clear_ps_filter, align 2
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %ath_tx_count_airtime.exit.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %tid.0 = phi ptr [ null, %if.end.if.end25_crit_edge ], [ %drv_priv.i.i, %if.then23 ], [ %drv_priv.i.i, %ath_tx_count_airtime.exit.if.end25_crit_edge ]
  %59 = ptrtoint ptr %bf_state.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bf_state.i, align 4
  %61 = and i8 %60, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool28.not = icmp eq i8 %61, 0
  br i1 %tobool28.not, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end25
  br i1 %tobool5.not, label %if.then31, label %if.then29.if.end43_crit_edge

if.then29.if.end43_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %.pre = zext i1 %tobool.not to i32
  br label %if.end43

if.then31:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %bf_mpdu to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bf_mpdu, align 4
  %64 = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 3, i32 8
  %rates35 = getelementptr inbounds %struct.ath_buf, ptr %bf, i32 0, i32 7
  %65 = call ptr @memcpy(ptr %64, ptr %rates35, i32 12)
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  %conv40 = zext i1 %tobool.not to i32
  tail call fastcc void @ath_tx_rc_status(ptr noundef %sc, ptr noundef %bf, ptr noundef %ts, i32 noundef 1, i32 noundef %cond, i32 noundef %conv40)
  %66 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sc_ah, align 4
  %68 = ptrtoint ptr %bf_mpdu to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bf_mpdu, align 4
  tail call void @ath_dynack_sample_tx_ts(ptr noundef %67, ptr noundef %69, ptr noundef %ts, ptr noundef %call13) #11
  br label %if.end43

if.end43:                                         ; preds = %if.then31, %if.then29.if.end43_crit_edge
  %conv45.pre-phi = phi i32 [ %.pre, %if.then29.if.end43_crit_edge ], [ %conv40, %if.then31 ]
  tail call fastcc void @ath_tx_complete_buf(ptr noundef %sc, ptr noundef %bf, ptr noundef %txq, ptr noundef %bf_head, ptr noundef %call13, ptr noundef %ts, i32 noundef %conv45.pre-phi)
  br label %if.end48

if.else:                                          ; preds = %if.end25
  %conv47 = zext i1 %tobool.not to i32
  %bf_lastbf.i = getelementptr inbounds %struct.ath_buf, ptr %bf, i32 0, i32 1
  %70 = ptrtoint ptr %bf_lastbf.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bf_lastbf.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bf_head.i) #11
  %72 = ptrtoint ptr %bf_head.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr inttoptr (i32 -1 to ptr), ptr %bf_head.i, align 4, !annotation !90
  %73 = getelementptr inbounds %struct.list_head, ptr %bf_head.i, i32 0, i32 1
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr inttoptr (i32 -1 to ptr), ptr %73, align 4, !annotation !90
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %bf_pending.i) #11
  %75 = call ptr @memset(ptr %bf_pending.i, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ba.i) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rates.i) #11
  %76 = ptrtoint ptr %ts_status to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %ts_status, align 2
  %78 = and i8 %77, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i99 = icmp eq i8 %78, 0
  %rates2.i = getelementptr inbounds %struct.ath_buf, ptr %bf, i32 0, i32 7
  %79 = call ptr @memcpy(ptr %rates.i, ptr %rates2.i, i32 12)
  %ts_longretry.i100 = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 6
  %80 = ptrtoint ptr %ts_longretry.i100 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %ts_longretry.i100, align 2
  %conv4.i101 = zext i8 %81 to i32
  %add.i102 = add nuw nsw i32 %conv4.i101, 1
  %82 = ptrtoint ptr %ts_rateindex to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %ts_rateindex, align 1
  %conv5.i = zext i8 %83 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %cmp120.not.i = icmp eq i8 %83, 0
  br i1 %cmp120.not.i, label %if.else.for.end.i_crit_edge, label %if.else.for.body.i108_crit_edge

if.else.for.body.i108_crit_edge:                  ; preds = %if.else
  br label %for.body.i108

if.else.for.end.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i108:                                    ; preds = %for.body.i108.for.body.i108_crit_edge, %if.else.for.body.i108_crit_edge
  %retries.0122.i = phi i32 [ %add8.i, %for.body.i108.for.body.i108_crit_edge ], [ %add.i102, %if.else.for.body.i108_crit_edge ]
  %i.0121.i = phi i32 [ %inc.i107, %for.body.i108.for.body.i108_crit_edge ], [ 0, %if.else.for.body.i108_crit_edge ]
  %count.i104 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %rates.i, i32 0, i32 %i.0121.i, i32 1
  %84 = ptrtoint ptr %count.i104 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %bf.load.i105 = load i16, ptr %count.i104, align 1
  %bf.lshr.i106 = lshr i16 %bf.load.i105, 11
  %conv7.i = zext i16 %bf.lshr.i106 to i32
  %add8.i = add i32 %retries.0122.i, %conv7.i
  %inc.i107 = add nuw nsw i32 %i.0121.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i107, %conv5.i
  br i1 %exitcond.not.i, label %for.body.i108.for.end.i_crit_edge, label %for.body.i108.for.body.i108_crit_edge

for.body.i108.for.body.i108_crit_edge:            ; preds = %for.body.i108
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i108

for.body.i108.for.end.i_crit_edge:                ; preds = %for.body.i108
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i108.for.end.i_crit_edge, %if.else.for.end.i_crit_edge
  %retries.0.lcssa.i = phi i32 [ %add.i102, %if.else.for.end.i_crit_edge ], [ %add8.i, %for.body.i108.for.end.i_crit_edge ]
  br i1 %tobool14.not, label %if.then.i, label %if.end16.i

if.then.i:                                        ; preds = %for.end.i
  %85 = ptrtoint ptr %bf_head.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %bf_head.i, ptr %bf_head.i, align 4
  %86 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %bf_head.i, ptr %73, align 4
  %tobool10.not133.i = icmp eq ptr %bf, null
  br i1 %tobool10.not133.i, label %if.then.i.ath_tx_complete_aggr.exit_crit_edge, label %if.then.i.while.body.i_crit_edge

if.then.i.while.body.i_crit_edge:                 ; preds = %if.then.i
  br label %while.body.i

if.then.i.ath_tx_complete_aggr.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tx_complete_aggr.exit

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then.i.while.body.i_crit_edge
  %bf.addr.0134.i = phi ptr [ %88, %if.end.i.while.body.i_crit_edge ], [ %bf, %if.then.i.while.body.i_crit_edge ]
  %bf_next11.i = getelementptr inbounds %struct.ath_buf, ptr %bf.addr.0134.i, i32 0, i32 2
  %87 = ptrtoint ptr %bf_next11.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bf_next11.i, align 4
  %stale.i = getelementptr inbounds %struct.ath_buf, ptr %bf.addr.0134.i, i32 0, i32 8, i32 3
  %89 = ptrtoint ptr %stale.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %stale.i, align 1, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool12.not.i = icmp ne i8 %90, 0
  %cmp13.not.i = icmp eq ptr %88, null
  %or.cond.i = select i1 %tobool12.not.i, i1 %cmp13.not.i, i1 false
  br i1 %or.cond.i, label %while.body.i.if.end.i_crit_edge, label %if.then15.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then15.i:                                      ; preds = %while.body.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %bf.addr.0134.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then15.i.__list_del_entry.exit.i.i_crit_edge

if.then15.i.__list_del_entry.exit.i.i_crit_edge:  ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %bf.addr.0134.i, i32 0, i32 1
  %91 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %prev.i.i.i, align 4
  %93 = ptrtoint ptr %bf.addr.0134.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bf.addr.0134.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %92, ptr %prev1.i.i.i.i, align 4
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %94, ptr %92, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then15.i.__list_del_entry.exit.i.i_crit_edge
  %97 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %73, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %bf.addr.0134.i, ptr noundef %98, ptr noundef nonnull %bf_head.i) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.if.end.i_crit_edge

__list_del_entry.exit.i.i.if.end.i_crit_edge:     ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %99 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %bf.addr.0134.i, ptr %73, align 4
  %100 = ptrtoint ptr %bf.addr.0134.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %bf_head.i, ptr %bf.addr.0134.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %bf.addr.0134.i, i32 0, i32 1
  %101 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %98, ptr %prev3.i.i.i.i, align 4
  %102 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %bf.addr.0134.i, ptr %98, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  call fastcc void @ath_tx_complete_buf(ptr noundef %sc, ptr noundef nonnull %bf.addr.0134.i, ptr noundef %txq, ptr noundef nonnull %bf_head.i, ptr noundef null, ptr noundef %ts, i32 noundef 0) #11
  br i1 %cmp13.not.i, label %if.end.i.ath_tx_complete_aggr.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end.i.ath_tx_complete_aggr.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tx_complete_aggr.exit

if.end16.i:                                       ; preds = %for.end.i
  %seq_start.i = getelementptr inbounds %struct.ath_atx_tid, ptr %tid.0, i32 0, i32 5
  %103 = ptrtoint ptr %seq_start.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %seq_start.i, align 4
  %ts_flags.i = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 8
  %105 = ptrtoint ptr %ts_flags.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %ts_flags.i, align 4
  %107 = and i8 %106, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool20.not.i = icmp eq i8 %107, 0
  br i1 %tobool20.not.i, label %if.end30.i, label %if.end30.i.thread

if.end30.i:                                       ; preds = %if.end16.i
  %108 = and i8 %60, 2
  %109 = ptrtoint ptr %ba.i to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 0, ptr %ba.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool35.not.i = icmp eq i8 %108, 0
  %tobool37.not.i = xor i1 %tobool.not, true
  %or.cond7.i = select i1 %tobool35.not.i, i1 true, i1 %tobool37.not.i
  br i1 %or.cond7.i, label %if.end30.i.if.end50.i_crit_edge, label %if.else.i

if.end30.i.if.end50.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50.i

if.end30.i.thread:                                ; preds = %if.end16.i
  %tidno.i = getelementptr inbounds %struct.ath_atx_tid, ptr %tid.0, i32 0, i32 8
  %110 = ptrtoint ptr %tidno.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %tidno.i, align 2
  %tid25.i = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 17
  %112 = ptrtoint ptr %tid25.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %tid25.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %111, i8 %113)
  %cmp27.not.i = icmp eq i8 %111, %113
  %spec.select.i = select i1 %cmp27.not.i, i32 %conv47, i32 0
  %114 = and i8 %60, 2
  %115 = ptrtoint ptr %ba.i to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 0, ptr %ba.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool35.not.i113 = icmp eq i8 %114, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool37.not.i114 = icmp eq i32 %spec.select.i, 0
  %or.cond7.i115 = select i1 %tobool35.not.i113, i1 true, i1 %tobool37.not.i114
  br i1 %or.cond7.i115, label %if.end30.i.thread.if.end50.i_crit_edge, label %if.then43.i

if.end30.i.thread.if.end50.i_crit_edge:           ; preds = %if.end30.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50.i

if.then43.i:                                      ; preds = %if.end30.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  %ts_seqnum.i = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 1
  %116 = ptrtoint ptr %ts_seqnum.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %ts_seqnum.i, align 4
  %ba_low.i = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 18
  %118 = ptrtoint ptr %ba_low.i to i32
  call void @__asan_loadN_noabort(i32 %118, i32 8)
  %119 = load i64, ptr %ba_low.i, align 4
  %120 = ptrtoint ptr %ba.i to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %119, ptr %ba.i, align 8
  %phi.cast.i = zext i16 %117 to i32
  %121 = ptrtoint ptr %bf_pending.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %bf_pending.i, ptr %bf_pending.i, align 4
  %prev.i11.i128 = getelementptr inbounds %struct.anon.62, ptr %bf_pending.i, i32 0, i32 1
  %122 = ptrtoint ptr %prev.i11.i128 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %bf_pending.i, ptr %prev.i11.i128, align 4
  %qlen.i.i129 = getelementptr inbounds %struct.sk_buff_head, ptr %bf_pending.i, i32 0, i32 1
  %123 = ptrtoint ptr %qlen.i.i129 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %qlen.i.i129, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ba.i.i) #11
  br label %if.then.i.i

if.else.i:                                        ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  %124 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %sc_ah, align 4
  %opmode.i = getelementptr inbounds %struct.ath_hw, ptr %125, i32 0, i32 28
  %126 = ptrtoint ptr %opmode.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %opmode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %127)
  %cmp45.i = icmp ne i32 %127, 2
  %128 = ptrtoint ptr %bf_pending.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %bf_pending.i, ptr %bf_pending.i, align 4
  %prev.i11.i148 = getelementptr inbounds %struct.anon.62, ptr %bf_pending.i, i32 0, i32 1
  %129 = ptrtoint ptr %prev.i11.i148 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %bf_pending.i, ptr %prev.i11.i148, align 4
  %qlen.i.i149 = getelementptr inbounds %struct.sk_buff_head, ptr %bf_pending.i, i32 0, i32 1
  %130 = ptrtoint ptr %qlen.i.i149 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %qlen.i.i149, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ba.i.i) #11
  br label %if.then.i.i

if.end50.i:                                       ; preds = %if.end30.i.thread.if.end50.i_crit_edge, %if.end30.i.if.end50.i_crit_edge
  %tobool37.not.i121 = phi i1 [ %tobool37.not.i, %if.end30.i.if.end50.i_crit_edge ], [ %tobool37.not.i114, %if.end30.i.thread.if.end50.i_crit_edge ]
  %tobool35.not.i119 = phi i1 [ %tobool35.not.i, %if.end30.i.if.end50.i_crit_edge ], [ %tobool35.not.i113, %if.end30.i.thread.if.end50.i_crit_edge ]
  %txok.addr.0.i117 = phi i32 [ %conv47, %if.end30.i.if.end50.i_crit_edge ], [ %spec.select.i, %if.end30.i.thread.if.end50.i_crit_edge ]
  %131 = ptrtoint ptr %bf_pending.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %bf_pending.i, ptr %bf_pending.i, align 4
  %prev.i11.i = getelementptr inbounds %struct.anon.62, ptr %bf_pending.i, i32 0, i32 1
  %132 = ptrtoint ptr %prev.i11.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %bf_pending.i, ptr %prev.i11.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %bf_pending.i, i32 0, i32 1
  %133 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %qlen.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ba.i.i) #11
  %134 = ptrtoint ptr %ba.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 -1, ptr %ba.i.i, align 8, !annotation !90
  %135 = getelementptr inbounds [2 x i32], ptr %ba.i.i, i32 0, i32 1
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 -1, ptr %135, align 4, !annotation !90
  br i1 %tobool35.not.i119, label %if.end50.i.if.end.i.i_crit_edge, label %if.end50.i.if.then.i.i_crit_edge

if.end50.i.if.then.i.i_crit_edge:                 ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end50.i.if.end.i.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end50.i.if.then.i.i_crit_edge, %if.else.i, %if.then43.i
  %qlen.i.i144 = phi ptr [ %qlen.i.i129, %if.then43.i ], [ %qlen.i.i, %if.end50.i.if.then.i.i_crit_edge ], [ %qlen.i.i149, %if.else.i ]
  %prev.i11.i140 = phi ptr [ %prev.i11.i128, %if.then43.i ], [ %prev.i11.i, %if.end50.i.if.then.i.i_crit_edge ], [ %prev.i11.i148, %if.else.i ]
  %tobool251.not.i138 = phi i1 [ true, %if.then43.i ], [ true, %if.end50.i.if.then.i.i_crit_edge ], [ %cmp45.i, %if.else.i ]
  %seq_st.0.i136 = phi i32 [ %phi.cast.i, %if.then43.i ], [ 0, %if.end50.i.if.then.i.i_crit_edge ], [ 0, %if.else.i ]
  %txok.addr.0.i117134 = phi i32 [ %conv47, %if.then43.i ], [ %txok.addr.0.i117, %if.end50.i.if.then.i.i_crit_edge ], [ %conv47, %if.else.i ]
  %tobool37.not.i121130 = phi i1 [ false, %if.then43.i ], [ %tobool37.not.i121, %if.end50.i.if.then.i.i_crit_edge ], [ false, %if.else.i ]
  %ts_seqnum.i.i = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 1
  %137 = ptrtoint ptr %ts_seqnum.i.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %ts_seqnum.i.i, align 4
  %ba_low.i.i = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 18
  %139 = ptrtoint ptr %ba_low.i.i to i32
  call void @__asan_loadN_noabort(i32 %139, i32 8)
  %140 = load i64, ptr %ba_low.i.i, align 4
  %141 = ptrtoint ptr %ba.i.i to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %140, ptr %ba.i.i, align 8
  %phi.cast.i.i = zext i16 %138 to i32
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end50.i.if.end.i.i_crit_edge
  %qlen.i.i145 = phi ptr [ %qlen.i.i144, %if.then.i.i ], [ %qlen.i.i, %if.end50.i.if.end.i.i_crit_edge ]
  %prev.i11.i141 = phi ptr [ %prev.i11.i140, %if.then.i.i ], [ %prev.i11.i, %if.end50.i.if.end.i.i_crit_edge ]
  %tobool251.not.i139 = phi i1 [ %tobool251.not.i138, %if.then.i.i ], [ true, %if.end50.i.if.end.i.i_crit_edge ]
  %seq_st.0.i137 = phi i32 [ %seq_st.0.i136, %if.then.i.i ], [ 0, %if.end50.i.if.end.i.i_crit_edge ]
  %txok.addr.0.i117135 = phi i32 [ %txok.addr.0.i117134, %if.then.i.i ], [ %txok.addr.0.i117, %if.end50.i.if.end.i.i_crit_edge ]
  %tobool35.not.i119133 = phi i1 [ false, %if.then.i.i ], [ true, %if.end50.i.if.end.i.i_crit_edge ]
  %tobool37.not.i121131 = phi i1 [ %tobool37.not.i121130, %if.then.i.i ], [ %tobool37.not.i121, %if.end50.i.if.end.i.i_crit_edge ]
  %seq_st.0.i.i = phi i32 [ %phi.cast.i.i, %if.then.i.i ], [ 0, %if.end50.i.if.end.i.i_crit_edge ]
  %tobool1.not1.i.i = icmp eq ptr %bf, null
  br i1 %tobool1.not1.i.i, label %ath_tx_count_frames.exit.thread.i, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  br label %while.body.i.i

ath_tx_count_frames.exit.thread.i:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ba.i.i) #11
  br label %while.end200.i

while.body.i.i:                                   ; preds = %if.end15.i.i.while.body.i.i_crit_edge, %if.end.i.i.while.body.i.i_crit_edge
  %nbad.0.i = phi i32 [ %nbad.1.i, %if.end15.i.i.while.body.i.i_crit_edge ], [ 0, %if.end.i.i.while.body.i.i_crit_edge ]
  %nframes.0.i = phi i32 [ %inc.i.i, %if.end15.i.i.while.body.i.i_crit_edge ], [ 0, %if.end.i.i.while.body.i.i_crit_edge ]
  %bf.addr.02.i.i = phi ptr [ %148, %if.end15.i.i.while.body.i.i_crit_edge ], [ %bf, %if.end.i.i.while.body.i.i_crit_edge ]
  %seqno.i.i = getelementptr inbounds %struct.ath_buf, ptr %bf.addr.02.i.i, i32 0, i32 8, i32 4
  %142 = ptrtoint ptr %seqno.i.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %seqno.i.i, align 4
  %conv3.i.i = zext i16 %143 to i32
  %sub.i.i = sub nsw i32 %conv3.i.i, %seq_st.0.i.i
  %and5.i.i = and i32 %sub.i.i, 4095
  %inc.i.i = add i32 %nframes.0.i, 1
  br i1 %tobool37.not.i121131, label %while.body.i.i.if.then13.i.i_crit_edge, label %lor.lhs.false.i.i

while.body.i.i.if.then13.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i.i

lor.lhs.false.i.i:                                ; preds = %while.body.i.i
  br i1 %tobool35.not.i119133, label %lor.lhs.false.i.i.if.end15.i.i_crit_edge, label %land.lhs.true.i.i

lor.lhs.false.i.i.if.end15.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and5.i.i)
  %cmp.i.i = icmp ult i32 %and5.i.i, 64
  br i1 %cmp.i.i, label %land.lhs.true9.i.i, label %land.lhs.true.i.i.if.then13.i.i_crit_edge

land.lhs.true.i.i.if.then13.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %144 = lshr i32 %and5.i.i, 5
  %arrayidx.i.i110 = getelementptr [2 x i32], ptr %ba.i.i, i32 0, i32 %144
  %145 = ptrtoint ptr %arrayidx.i.i110 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx.i.i110, align 4
  %and10.i.i = and i32 %sub.i.i, 31
  %shl.i.i = shl nuw i32 1, %and10.i.i
  %and11.i.i = and i32 %146, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i111 = icmp eq i32 %and11.i.i, 0
  br i1 %tobool12.not.i.i111, label %land.lhs.true9.i.i.if.then13.i.i_crit_edge, label %land.lhs.true9.i.i.if.end15.i.i_crit_edge

land.lhs.true9.i.i.if.end15.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i.i

land.lhs.true9.i.i.if.then13.i.i_crit_edge:       ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i.i

if.then13.i.i:                                    ; preds = %land.lhs.true9.i.i.if.then13.i.i_crit_edge, %land.lhs.true.i.i.if.then13.i.i_crit_edge, %while.body.i.i.if.then13.i.i_crit_edge
  %inc14.i.i = add i32 %nbad.0.i, 1
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then13.i.i, %land.lhs.true9.i.i.if.end15.i.i_crit_edge, %lor.lhs.false.i.i.if.end15.i.i_crit_edge
  %nbad.1.i = phi i32 [ %inc14.i.i, %if.then13.i.i ], [ %nbad.0.i, %lor.lhs.false.i.i.if.end15.i.i_crit_edge ], [ %nbad.0.i, %land.lhs.true9.i.i.if.end15.i.i_crit_edge ]
  %bf_next.i.i = getelementptr inbounds %struct.ath_buf, ptr %bf.addr.02.i.i, i32 0, i32 2
  %147 = ptrtoint ptr %bf_next.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %bf_next.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %148, null
  br i1 %tobool1.not.i.i, label %while.body53.lr.ph.i, label %if.end15.i.i.while.body.i.i_crit_edge

if.end15.i.i.while.body.i.i_crit_edge:            ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

while.body53.lr.ph.i:                             ; preds = %if.end15.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ba.i.i) #11
  %baw_size.i = getelementptr inbounds %struct.ath_atx_tid, ptr %tid.0, i32 0, i32 7
  %active.i = getelementptr inbounds %struct.ath_atx_tid, ptr %tid.0, i32 0, i32 12
  %tobool35.not.not.i = xor i1 %tobool35.not.i119133, true
  %or.cond9.i = select i1 %tobool35.not.not.i, i1 true, i1 %tobool37.not.i121131
  %conv118.i = zext i16 %104 to i32
  %sleeping.i = getelementptr inbounds %struct.ieee80211_sta, ptr %call13, i32 1, i32 0, i32 4
  %axq_qnum.i.i = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 1
  %149 = trunc i32 %retries.0.lcssa.i to i8
  %conv618.i.i = shl i8 %149, 2
  %dev.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 1
  %stale132.i = getelementptr inbounds %struct.ath_buf, ptr %71, i32 0, i32 8, i32 3
  %txbuflock.i.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 1
  %txbuf.i.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 2
  %bf_mpdu.i36.i = getelementptr inbounds %struct.ath_buf, ptr %71, i32 0, i32 3
  %bf_buf_addr.i37.i = getelementptr inbounds %struct.ath_buf, ptr %71, i32 0, i32 6
  %bf_desc29.i.i = getelementptr inbounds %struct.ath_buf, ptr %71, i32 0, i32 4
  %bf_state31.i.i = getelementptr inbounds %struct.ath_buf, ptr %71, i32 0, i32 8
  %baw_head.i.i = getelementptr inbounds %struct.ath_atx_tid, ptr %tid.0, i32 0, i32 9
  %tx_buf.i.i = getelementptr inbounds %struct.ath_atx_tid, ptr %tid.0, i32 0, i32 4
  %baw_tail.i.i = getelementptr inbounds %struct.ath_atx_tid, ptr %tid.0, i32 0, i32 10
  %bar_index.i.i = getelementptr inbounds %struct.ath_atx_tid, ptr %tid.0, i32 0, i32 11
  br label %while.body53.i

while.body53.i:                                   ; preds = %cleanup197.i.while.body53.i_crit_edge, %while.body53.lr.ph.i
  %bf.addr.1130.i = phi ptr [ %bf, %while.body53.lr.ph.i ], [ %153, %cleanup197.i.while.body53.i_crit_edge ]
  %bar_index.0129.i = phi i32 [ -1, %while.body53.lr.ph.i ], [ %bar_index.1.i, %cleanup197.i.while.body53.i_crit_edge ]
  %rc_update.0.off0128.i = phi i1 [ true, %while.body53.lr.ph.i ], [ %rc_update.3.off0.i, %cleanup197.i.while.body53.i_crit_edge ]
  %txfail_cnt.0127.i = phi i16 [ 0, %while.body53.lr.ph.i ], [ %txfail_cnt.1.i, %cleanup197.i.while.body53.i_crit_edge ]
  %acked_cnt.0126.i = phi i16 [ 0, %while.body53.lr.ph.i ], [ %acked_cnt.1.i, %cleanup197.i.while.body53.i_crit_edge ]
  %seqno55.i = getelementptr inbounds %struct.ath_buf, ptr %bf.addr.1130.i, i32 0, i32 8, i32 4
  %150 = ptrtoint ptr %seqno55.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %seqno55.i, align 4
  %bf_next56.i = getelementptr inbounds %struct.ath_buf, ptr %bf.addr.1130.i, i32 0, i32 2
  %152 = ptrtoint ptr %bf_next56.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %bf_next56.i, align 4
  %bf_mpdu57.i = getelementptr inbounds %struct.ath_buf, ptr %bf.addr.1130.i, i32 0, i32 3
  %154 = ptrtoint ptr %bf_mpdu57.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %bf_mpdu57.i, align 4
  %cb.i12.i = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 3
  %rate_driver_data.i.i = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 3, i32 24
  %conv60.i = zext i16 %151 to i32
  %156 = ptrtoint ptr %seq_start.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %seq_start.i, align 4
  %conv62.i = zext i16 %157 to i32
  %sub.i = sub nsw i32 %conv60.i, %conv62.i
  %and63.i = and i32 %sub.i, 4095
  %158 = ptrtoint ptr %baw_size.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %baw_size.i, align 4
  %conv64.i = zext i16 %159 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and63.i, i32 %conv64.i)
  %cmp65.i = icmp ult i32 %and63.i, %conv64.i
  br i1 %cmp65.i, label %lor.lhs.false67.i, label %while.body53.i.if.end127.i_crit_edge

while.body53.i.if.end127.i_crit_edge:             ; preds = %while.body53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end127.i

lor.lhs.false67.i:                                ; preds = %while.body53.i
  %160 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %active.i, align 1, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool68.not.i = icmp eq i8 %161, 0
  br i1 %tobool68.not.i, label %lor.lhs.false67.i.if.end127.i_crit_edge, label %if.else70.i

lor.lhs.false67.i.if.end127.i_crit_edge:          ; preds = %lor.lhs.false67.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end127.i

if.else70.i:                                      ; preds = %lor.lhs.false67.i
  %sub73.i = sub nsw i32 %conv60.i, %seq_st.0.i137
  %and74.i = and i32 %sub73.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and74.i)
  %cmp75.i = icmp ult i32 %and74.i, 64
  br i1 %cmp75.i, label %land.lhs.true77.i, label %if.else70.i.if.else92.i_crit_edge

if.else70.i.if.else92.i_crit_edge:                ; preds = %if.else70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else92.i

land.lhs.true77.i:                                ; preds = %if.else70.i
  %162 = lshr i32 %and74.i, 5
  %arrayidx82.i = getelementptr [2 x i32], ptr %ba.i, i32 0, i32 %162
  %163 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx82.i, align 4
  %and87.i = and i32 %sub73.i, 31
  %shl.i = shl nuw i32 1, %and87.i
  %and88.i = and i32 %164, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i)
  %tobool89.not.i = icmp eq i32 %and88.i, 0
  br i1 %tobool89.not.i, label %land.lhs.true77.i.if.else92.i_crit_edge, label %if.then90.i

land.lhs.true77.i.if.else92.i_crit_edge:          ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else92.i

if.then90.i:                                      ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc91.i = add i16 %acked_cnt.0126.i, 1
  br label %if.end127.i

if.else92.i:                                      ; preds = %land.lhs.true77.i.if.else92.i_crit_edge, %if.else70.i.if.else92.i_crit_edge
  br i1 %or.cond9.i, label %if.else98.i, label %if.then96.i

if.then96.i:                                      ; preds = %if.else92.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc97.i = add i16 %acked_cnt.0126.i, 1
  br label %if.end127.i

if.else98.i:                                      ; preds = %if.else92.i
  br i1 %tobool.not.i99, label %if.else101.i, label %if.else98.i.if.end127.i_crit_edge

if.else98.i.if.end127.i_crit_edge:                ; preds = %if.else98.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end127.i

if.else101.i:                                     ; preds = %if.else98.i
  %retries102.i = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 3, i32 33
  %165 = ptrtoint ptr %retries102.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %bf.load103.i = load i8, ptr %retries102.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 120, i8 %bf.load103.i)
  %cmp106.i = icmp ult i8 %bf.load103.i, 120
  br i1 %cmp106.i, label %if.then108.i, label %if.else115.i

if.then108.i:                                     ; preds = %if.else101.i
  br i1 %tobool37.not.i121131, label %lor.lhs.false110.i, label %if.then108.i.if.then112.i_crit_edge

if.then108.i.if.then112.i_crit_edge:              ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then112.i

lor.lhs.false110.i:                               ; preds = %if.then108.i
  %166 = ptrtoint ptr %sleeping.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %sleeping.i, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool111.not.i = icmp eq i8 %167, 0
  br i1 %tobool111.not.i, label %lor.lhs.false110.i.if.then112.i_crit_edge, label %lor.lhs.false110.i.if.end127.i_crit_edge

lor.lhs.false110.i.if.end127.i_crit_edge:         ; preds = %lor.lhs.false110.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end127.i

lor.lhs.false110.i.if.then112.i_crit_edge:        ; preds = %lor.lhs.false110.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then112.i

if.then112.i:                                     ; preds = %lor.lhs.false110.i.if.then112.i_crit_edge, %if.then108.i.if.then112.i_crit_edge
  %168 = ptrtoint ptr %rate_driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %rate_driver_data.i.i, align 4
  %170 = ptrtoint ptr %axq_qnum.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %axq_qnum.i.i, align 4
  %a_retries.i.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 1, i32 %171, i32 8
  %172 = ptrtoint ptr %a_retries.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %a_retries.i.i, align 4
  %inc.i13.i = add i32 %173, 1
  store i32 %inc.i13.i, ptr %a_retries.i.i, align 4
  %174 = ptrtoint ptr %retries102.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %bf.load3.i.i = load i8, ptr %retries102.i, align 1
  %bf.lshr419.i.i = add i8 %bf.load3.i.i, %conv618.i.i
  store i8 %bf.lshr419.i.i, ptr %retries102.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bf.load103.i)
  %cmp.not.i.i = icmp ult i8 %bf.load103.i, 4
  br i1 %cmp.not.i.i, label %if.end.i14.i, label %if.then112.i.if.end127.i_crit_edge

if.then112.i.if.end127.i_crit_edge:               ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end127.i

if.end.i14.i:                                     ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #13
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 19
  %175 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %data.i.i, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %176, align 2
  %179 = or i16 %178, 8
  store i16 %179, ptr %176, align 2
  %180 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dev.i.i, align 4
  %bf_buf_addr.i.i = getelementptr inbounds %struct.ath_buf, ptr %169, i32 0, i32 6
  %182 = ptrtoint ptr %bf_buf_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %bf_buf_addr.i.i, align 4
  call void @dma_sync_single_for_device(ptr noundef %181, i32 noundef %183, i32 noundef 30, i32 noundef 1) #11
  br label %if.end127.i

if.else115.i:                                     ; preds = %if.else101.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc116.i = add i16 %txfail_cnt.0127.i, 1
  %sub119.i = sub nsw i32 %conv60.i, %conv118.i
  %and120.i = and i32 %sub119.i, 4095
  %184 = call i32 @llvm.smax.i32(i32 %bar_index.0129.i, i32 %and120.i) #11
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.else115.i, %if.end.i14.i, %if.then112.i.if.end127.i_crit_edge, %lor.lhs.false110.i.if.end127.i_crit_edge, %if.else98.i.if.end127.i_crit_edge, %if.then96.i, %if.then90.i, %lor.lhs.false67.i.if.end127.i_crit_edge, %while.body53.i.if.end127.i_crit_edge
  %acked_cnt.1.i = phi i16 [ %inc91.i, %if.then90.i ], [ %acked_cnt.0126.i, %if.else115.i ], [ %inc97.i, %if.then96.i ], [ %acked_cnt.0126.i, %lor.lhs.false67.i.if.end127.i_crit_edge ], [ %acked_cnt.0126.i, %while.body53.i.if.end127.i_crit_edge ], [ %acked_cnt.0126.i, %if.else98.i.if.end127.i_crit_edge ], [ %acked_cnt.0126.i, %lor.lhs.false110.i.if.end127.i_crit_edge ], [ %acked_cnt.0126.i, %if.then112.i.if.end127.i_crit_edge ], [ %acked_cnt.0126.i, %if.end.i14.i ]
  %txfail_cnt.1.i = phi i16 [ %txfail_cnt.0127.i, %if.then90.i ], [ %inc116.i, %if.else115.i ], [ %txfail_cnt.0127.i, %if.then96.i ], [ %txfail_cnt.0127.i, %lor.lhs.false67.i.if.end127.i_crit_edge ], [ %txfail_cnt.0127.i, %while.body53.i.if.end127.i_crit_edge ], [ %txfail_cnt.0127.i, %if.else98.i.if.end127.i_crit_edge ], [ %txfail_cnt.0127.i, %lor.lhs.false110.i.if.end127.i_crit_edge ], [ %txfail_cnt.0127.i, %if.then112.i.if.end127.i_crit_edge ], [ %txfail_cnt.0127.i, %if.end.i14.i ]
  %tobool161.not.i = phi i32 [ 1, %if.then90.i ], [ 0, %if.else115.i ], [ 1, %if.then96.i ], [ 0, %lor.lhs.false67.i.if.end127.i_crit_edge ], [ 0, %while.body53.i.if.end127.i_crit_edge ], [ 1, %if.else98.i.if.end127.i_crit_edge ], [ 1, %lor.lhs.false110.i.if.end127.i_crit_edge ], [ 1, %if.then112.i.if.end127.i_crit_edge ], [ 1, %if.end.i14.i ]
  %tobool137.not.i = phi i1 [ true, %if.then90.i ], [ true, %if.else115.i ], [ true, %if.then96.i ], [ true, %lor.lhs.false67.i.if.end127.i_crit_edge ], [ true, %while.body53.i.if.end127.i_crit_edge ], [ false, %if.else98.i.if.end127.i_crit_edge ], [ false, %lor.lhs.false110.i.if.end127.i_crit_edge ], [ false, %if.then112.i.if.end127.i_crit_edge ], [ false, %if.end.i14.i ]
  %bar_index.1.i = phi i32 [ %bar_index.0129.i, %if.then90.i ], [ %184, %if.else115.i ], [ %bar_index.0129.i, %if.then96.i ], [ %bar_index.0129.i, %lor.lhs.false67.i.if.end127.i_crit_edge ], [ %bar_index.0129.i, %while.body53.i.if.end127.i_crit_edge ], [ %bar_index.0129.i, %if.else98.i.if.end127.i_crit_edge ], [ %bar_index.0129.i, %lor.lhs.false110.i.if.end127.i_crit_edge ], [ %bar_index.0129.i, %if.then112.i.if.end127.i_crit_edge ], [ %bar_index.0129.i, %if.end.i14.i ]
  %185 = ptrtoint ptr %bf_head.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store volatile ptr %bf_head.i, ptr %bf_head.i, align 4
  %186 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %bf_head.i, ptr %73, align 4
  %cmp128.not.i = icmp eq ptr %153, null
  br i1 %cmp128.not.i, label %lor.lhs.false130.i, label %if.end127.i.if.then134.i_crit_edge

if.end127.i.if.then134.i_crit_edge:               ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then134.i

lor.lhs.false130.i:                               ; preds = %if.end127.i
  %187 = ptrtoint ptr %stale132.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %stale132.i, align 1, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool133.not.i = icmp eq i8 %188, 0
  br i1 %tobool133.not.i, label %lor.lhs.false130.i.if.then134.i_crit_edge, label %lor.lhs.false130.i.if.end136.i_crit_edge

lor.lhs.false130.i.if.end136.i_crit_edge:         ; preds = %lor.lhs.false130.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end136.i

lor.lhs.false130.i.if.then134.i_crit_edge:        ; preds = %lor.lhs.false130.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then134.i

if.then134.i:                                     ; preds = %lor.lhs.false130.i.if.then134.i_crit_edge, %if.end127.i.if.then134.i_crit_edge
  %call.i.i16.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %bf.addr.1130.i) #11
  br i1 %call.i.i16.i, label %if.end.i.i19.i, label %if.then134.i.__list_del_entry.exit.i22.i_crit_edge

if.then134.i.__list_del_entry.exit.i22.i_crit_edge: ; preds = %if.then134.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i22.i

if.end.i.i19.i:                                   ; preds = %if.then134.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i17.i = getelementptr inbounds %struct.list_head, ptr %bf.addr.1130.i, i32 0, i32 1
  %189 = ptrtoint ptr %prev.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %prev.i.i17.i, align 4
  %191 = ptrtoint ptr %bf.addr.1130.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %bf.addr.1130.i, align 4
  %prev1.i.i.i18.i = getelementptr inbounds %struct.list_head, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %prev1.i.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %190, ptr %prev1.i.i.i18.i, align 4
  %194 = ptrtoint ptr %190 to i32
  call void @__asan_store4_noabort(i32 %194)
  store volatile ptr %192, ptr %190, align 4
  br label %__list_del_entry.exit.i22.i

__list_del_entry.exit.i22.i:                      ; preds = %if.end.i.i19.i, %if.then134.i.__list_del_entry.exit.i22.i_crit_edge
  %195 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %73, align 4
  %call.i.i.i21.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %bf.addr.1130.i, ptr noundef %196, ptr noundef nonnull %bf_head.i) #11
  br i1 %call.i.i.i21.i, label %if.end.i.i.i24.i, label %__list_del_entry.exit.i22.i.if.end136.i_crit_edge

__list_del_entry.exit.i22.i.if.end136.i_crit_edge: ; preds = %__list_del_entry.exit.i22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end136.i

if.end.i.i.i24.i:                                 ; preds = %__list_del_entry.exit.i22.i
  call void @__sanitizer_cov_trace_pc() #13
  %197 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %bf.addr.1130.i, ptr %73, align 4
  %198 = ptrtoint ptr %bf.addr.1130.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %bf_head.i, ptr %bf.addr.1130.i, align 4
  %prev3.i.i.i23.i = getelementptr inbounds %struct.list_head, ptr %bf.addr.1130.i, i32 0, i32 1
  %199 = ptrtoint ptr %prev3.i.i.i23.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %196, ptr %prev3.i.i.i23.i, align 4
  %200 = ptrtoint ptr %196 to i32
  call void @__asan_store4_noabort(i32 %200)
  store volatile ptr %bf.addr.1130.i, ptr %196, align 4
  br label %if.end136.i

if.end136.i:                                      ; preds = %if.end.i.i.i24.i, %__list_del_entry.exit.i22.i.if.end136.i_crit_edge, %lor.lhs.false130.i.if.end136.i_crit_edge
  br i1 %tobool137.not.i, label %if.then138.i, label %if.else163.i

if.then138.i:                                     ; preds = %if.end136.i
  %201 = ptrtoint ptr %bf_mpdu57.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %bf_mpdu57.i, align 4
  %baw_tracked.i.i = getelementptr inbounds %struct.sk_buff, ptr %202, i32 0, i32 3, i32 33
  %203 = ptrtoint ptr %baw_tracked.i.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %bf.load.i26.i = load i8, ptr %baw_tracked.i.i, align 1
  %bf.clear.i.i = and i8 %bf.load.i26.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i.i)
  %tobool.not.i27.i = icmp eq i8 %bf.clear.i.i, 0
  br i1 %tobool.not.i27.i, label %if.then138.i.ath_tx_update_baw.exit.i_crit_edge, label %if.end.i29.i

if.then138.i.ath_tx_update_baw.exit.i_crit_edge:  ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tx_update_baw.exit.i

if.end.i29.i:                                     ; preds = %if.then138.i
  %204 = ptrtoint ptr %seqno55.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %seqno55.i, align 4
  %conv.i.i = zext i16 %205 to i32
  %206 = ptrtoint ptr %seq_start.i to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %seq_start.i, align 4
  %conv2.i.i = zext i16 %207 to i32
  %sub.i28.i = sub nsw i32 %conv.i.i, %conv2.i.i
  %208 = ptrtoint ptr %baw_head.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %baw_head.i.i, align 4
  %add.i.i = add i32 %sub.i28.i, %209
  %rem.i.i.i = and i32 %add.i.i, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %and3.i.i = lshr i32 %add.i.i, 5
  %div2.i.i.i = and i32 %and3.i.i, 3
  %add.ptr.i.i.i = getelementptr i32, ptr %tx_buf.i.i, i32 %div2.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %210 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i.i = and i32 %211, %neg.i.i.i
  store i32 %and.i.i.i, ptr %add.ptr.i.i.i, align 4
  %212 = ptrtoint ptr %baw_tail.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %baw_tail.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %209, i32 %213)
  %cmp.not2.i.i = icmp eq i32 %209, %213
  br i1 %cmp.not2.i.i, label %if.end.i29.i.ath_tx_update_baw.exit.i_crit_edge, label %if.end.i29.i.land.rhs.i.i_crit_edge

if.end.i29.i.land.rhs.i.i_crit_edge:              ; preds = %if.end.i29.i
  br label %land.rhs.i.i

if.end.i29.i.ath_tx_update_baw.exit.i_crit_edge:  ; preds = %if.end.i29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tx_update_baw.exit.i

land.rhs.i.i:                                     ; preds = %if.end28.i.i.land.rhs.i.i_crit_edge, %if.end.i29.i.land.rhs.i.i_crit_edge
  %214 = phi i32 [ %and20.i.i, %if.end28.i.i.land.rhs.i.i_crit_edge ], [ %209, %if.end.i29.i.land.rhs.i.i_crit_edge ]
  %div3.i.i.i = lshr i32 %214, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %tx_buf.i.i, i32 %div3.i.i.i
  %215 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i1.i.i = and i32 %214, 31
  %217 = shl nuw i32 1, %and.i1.i.i
  %218 = and i32 %217, %216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %tobool10.not.i.i = icmp eq i32 %218, 0
  br i1 %tobool10.not.i.i, label %do.body.i.i, label %land.rhs.i.i.ath_tx_update_baw.exit.i_crit_edge

land.rhs.i.i.ath_tx_update_baw.exit.i_crit_edge:  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tx_update_baw.exit.i

do.body.i.i:                                      ; preds = %land.rhs.i.i
  %219 = ptrtoint ptr %seq_start.i to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %seq_start.i, align 4
  %inc.i30.i = add i16 %220, 1
  %221 = and i16 %inc.i30.i, 4095
  store i16 %221, ptr %seq_start.i, align 4
  %inc18.i.i = add i32 %214, 1
  %and20.i.i = and i32 %inc18.i.i, 127
  %222 = ptrtoint ptr %baw_head.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %and20.i.i, ptr %baw_head.i.i, align 4
  %223 = ptrtoint ptr %bar_index.i.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %bar_index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %224)
  %cmp24.i.i = icmp sgt i8 %224, -1
  br i1 %cmp24.i.i, label %if.then26.i.i, label %do.body.i.i.if.end28.i.i_crit_edge

do.body.i.i.if.end28.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i.i

if.then26.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec.i.i = add nsw i8 %224, -1
  %225 = ptrtoint ptr %bar_index.i.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %dec.i.i, ptr %bar_index.i.i, align 4
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then26.i.i, %do.body.i.i.if.end28.i.i_crit_edge
  %cmp.not.i31.i = icmp eq i32 %and20.i.i, %213
  br i1 %cmp.not.i31.i, label %if.end28.i.i.ath_tx_update_baw.exit.i_crit_edge, label %if.end28.i.i.land.rhs.i.i_crit_edge

if.end28.i.i.land.rhs.i.i_crit_edge:              ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i

if.end28.i.i.ath_tx_update_baw.exit.i_crit_edge:  ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tx_update_baw.exit.i

ath_tx_update_baw.exit.i:                         ; preds = %if.end28.i.i.ath_tx_update_baw.exit.i_crit_edge, %land.rhs.i.i.ath_tx_update_baw.exit.i_crit_edge, %if.end.i29.i.ath_tx_update_baw.exit.i_crit_edge, %if.then138.i.ath_tx_update_baw.exit.i_crit_edge
  br i1 %rc_update.0.off0128.i, label %land.lhs.true141.i, label %ath_tx_update_baw.exit.i.if.end160.i_crit_edge

ath_tx_update_baw.exit.i.if.end160.i_crit_edge:   ; preds = %ath_tx_update_baw.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end160.i

land.lhs.true141.i:                               ; preds = %ath_tx_update_baw.exit.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %acked_cnt.1.i)
  %cmp143.i = icmp eq i16 %acked_cnt.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %txfail_cnt.1.i)
  %cmp147.i = icmp eq i16 %txfail_cnt.1.i, 1
  %or.cond10.i = select i1 %cmp143.i, i1 true, i1 %cmp147.i
  br i1 %or.cond10.i, label %if.then149.i, label %land.lhs.true141.i.if.end160.i_crit_edge

land.lhs.true141.i.if.end160.i_crit_edge:         ; preds = %land.lhs.true141.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end160.i

if.then149.i:                                     ; preds = %land.lhs.true141.i
  %226 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 3, i32 8
  %227 = call ptr @memcpy(ptr %226, ptr %rates.i, i32 12)
  call fastcc void @ath_tx_rc_status(ptr noundef %sc, ptr noundef nonnull %bf.addr.1130.i, ptr noundef %ts, i32 noundef %inc.i.i, i32 noundef %nbad.1.i, i32 noundef %txok.addr.0.i117135) #11
  %bf_lastbf153.i = getelementptr inbounds %struct.ath_buf, ptr %bf.addr.1130.i, i32 0, i32 1
  %228 = ptrtoint ptr %bf_lastbf153.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %bf_lastbf153.i, align 4
  %cmp154.i = icmp eq ptr %bf.addr.1130.i, %229
  br i1 %cmp154.i, label %if.then156.i, label %if.then149.i.if.end160.i_crit_edge

if.then149.i.if.end160.i_crit_edge:               ; preds = %if.then149.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end160.i

if.then156.i:                                     ; preds = %if.then149.i
  call void @__sanitizer_cov_trace_pc() #13
  %230 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %sc_ah, align 4
  %232 = ptrtoint ptr %bf_mpdu57.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %bf_mpdu57.i, align 4
  call void @ath_dynack_sample_tx_ts(ptr noundef %231, ptr noundef %233, ptr noundef %ts, ptr noundef nonnull %call13) #11
  br label %if.end160.i

if.end160.i:                                      ; preds = %if.then156.i, %if.then149.i.if.end160.i_crit_edge, %land.lhs.true141.i.if.end160.i_crit_edge, %ath_tx_update_baw.exit.i.if.end160.i_crit_edge
  %rc_update.1.off0.i = phi i1 [ false, %if.then156.i ], [ false, %if.then149.i.if.end160.i_crit_edge ], [ false, %ath_tx_update_baw.exit.i.if.end160.i_crit_edge ], [ true, %land.lhs.true141.i.if.end160.i_crit_edge ]
  call fastcc void @ath_tx_complete_buf(ptr noundef %sc, ptr noundef nonnull %bf.addr.1130.i, ptr noundef %txq, ptr noundef nonnull %bf_head.i, ptr noundef nonnull %call13, ptr noundef %ts, i32 noundef %tobool161.not.i) #11
  br label %cleanup197.i

if.else163.i:                                     ; preds = %if.end136.i
  %234 = ptrtoint ptr %cb.i12.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %cb.i12.i, align 8
  %and164.i = and i32 %235, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164.i)
  %tobool165.not.i = icmp eq i32 %and164.i, 0
  br i1 %tobool165.not.i, label %if.else163.i.if.end169.i_crit_edge, label %if.then166.i

if.else163.i.if.end169.i_crit_edge:               ; preds = %if.else163.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end169.i

if.then166.i:                                     ; preds = %if.else163.i
  call void @__sanitizer_cov_trace_pc() #13
  %and168.i = and i32 %235, -268435457
  %236 = ptrtoint ptr %cb.i12.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %and168.i, ptr %cb.i12.i, align 8
  call void @ieee80211_sta_eosp(ptr noundef nonnull %call13) #11
  br label %if.end169.i

if.end169.i:                                      ; preds = %if.then166.i, %if.else163.i.if.end169.i_crit_edge
  %237 = ptrtoint ptr %bf_next56.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %bf_next56.i, align 4
  %cmp171.i = icmp eq ptr %238, null
  br i1 %cmp171.i, label %land.lhs.true173.i, label %if.end169.i.if.end195.i_crit_edge

if.end169.i.if.end195.i_crit_edge:                ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end195.i

land.lhs.true173.i:                               ; preds = %if.end169.i
  %239 = ptrtoint ptr %stale132.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %stale132.i, align 1, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %240)
  %tobool176.not.i = icmp eq i8 %240, 0
  br i1 %tobool176.not.i, label %land.lhs.true173.i.if.end195.i_crit_edge, label %if.then178.i

land.lhs.true173.i.if.end195.i_crit_edge:         ; preds = %land.lhs.true173.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end195.i

if.then178.i:                                     ; preds = %land.lhs.true173.i
  call void @_raw_spin_lock_bh(ptr noundef %txbuflock.i.i.i) #11
  %241 = ptrtoint ptr %txbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load volatile ptr, ptr %txbuf.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %242, %txbuf.i.i.i
  br i1 %cmp.i.not.i.i.i, label %ath_tx_get_buffer.exit.thread.i.i, label %if.end.i.i32.i, !prof !88

ath_tx_get_buffer.exit.thread.i.i:                ; preds = %if.then178.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_bh(ptr noundef %txbuflock.i.i.i) #11
  br label %if.then181.i

if.end.i.i32.i:                                   ; preds = %if.then178.i
  %call.i.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %242) #11
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i.i32.i.ath_tx_get_buffer.exit.i.i_crit_edge

if.end.i.i32.i.ath_tx_get_buffer.exit.i.i_crit_edge: ; preds = %if.end.i.i32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tx_get_buffer.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i32.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %242, i32 0, i32 1
  %243 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %245 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %242, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %246, i32 0, i32 1
  %247 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %244, ptr %prev1.i.i.i.i.i.i, align 4
  %248 = ptrtoint ptr %244 to i32
  call void @__asan_store4_noabort(i32 %248)
  store volatile ptr %246, ptr %244, align 4
  br label %ath_tx_get_buffer.exit.i.i

ath_tx_get_buffer.exit.i.i:                       ; preds = %if.end.i.i.i.i.i, %if.end.i.i32.i.ath_tx_get_buffer.exit.i.i_crit_edge
  %249 = ptrtoint ptr %242 to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr inttoptr (i32 256 to ptr), ptr %242, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %242, i32 0, i32 1
  %250 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %txbuflock.i.i.i) #11
  %tobool.not.i33.i = icmp eq ptr %242, null
  br i1 %tobool.not.i33.i, label %ath_tx_get_buffer.exit.i.i.if.then181.i_crit_edge, label %cleanup.i, !prof !88

ath_tx_get_buffer.exit.i.i.if.then181.i_crit_edge: ; preds = %ath_tx_get_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then181.i

if.then181.i:                                     ; preds = %ath_tx_get_buffer.exit.i.i.if.then181.i_crit_edge, %ath_tx_get_buffer.exit.thread.i.i
  %conv60.i183 = zext i16 %151 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 436, i32 noundef 9, ptr noundef null) #11
  %251 = ptrtoint ptr %bf_mpdu57.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %bf_mpdu57.i, align 4
  %baw_tracked.i40.i = getelementptr inbounds %struct.sk_buff, ptr %252, i32 0, i32 3, i32 33
  %253 = ptrtoint ptr %baw_tracked.i40.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %bf.load.i41.i = load i8, ptr %baw_tracked.i40.i, align 1
  %bf.clear.i42.i = and i8 %bf.load.i41.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i42.i)
  %tobool.not.i43.i = icmp eq i8 %bf.clear.i42.i, 0
  br i1 %tobool.not.i43.i, label %if.then181.i.cleanup197.thread.i_crit_edge, label %if.end.i61.i

if.then181.i.cleanup197.thread.i_crit_edge:       ; preds = %if.then181.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup197.thread.i

if.end.i61.i:                                     ; preds = %if.then181.i
  %254 = ptrtoint ptr %seqno55.i to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %seqno55.i, align 4
  %conv.i45.i = zext i16 %255 to i32
  %256 = ptrtoint ptr %seq_start.i to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %seq_start.i, align 4
  %conv2.i47.i = zext i16 %257 to i32
  %sub.i48.i = sub nsw i32 %conv.i45.i, %conv2.i47.i
  %258 = ptrtoint ptr %baw_head.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %baw_head.i.i, align 4
  %add.i50.i = add i32 %sub.i48.i, %259
  %rem.i.i52.i = and i32 %add.i50.i, 31
  %shl.i.i53.i = shl nuw i32 1, %rem.i.i52.i
  %and3.i54.i = lshr i32 %add.i50.i, 5
  %div2.i.i55.i = and i32 %and3.i54.i, 3
  %add.ptr.i.i56.i = getelementptr i32, ptr %tx_buf.i.i, i32 %div2.i.i55.i
  %neg.i.i57.i = xor i32 %shl.i.i53.i, -1
  %260 = ptrtoint ptr %add.ptr.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %add.ptr.i.i56.i, align 4
  %and.i.i58.i = and i32 %261, %neg.i.i57.i
  store i32 %and.i.i58.i, ptr %add.ptr.i.i56.i, align 4
  %262 = ptrtoint ptr %baw_tail.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %baw_tail.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %259, i32 %263)
  %cmp.not2.i60.i = icmp eq i32 %259, %263
  br i1 %cmp.not2.i60.i, label %if.end.i61.i.cleanup197.thread.i_crit_edge, label %if.end.i61.i.land.rhs.i68.i_crit_edge

if.end.i61.i.land.rhs.i68.i_crit_edge:            ; preds = %if.end.i61.i
  br label %land.rhs.i68.i

if.end.i61.i.cleanup197.thread.i_crit_edge:       ; preds = %if.end.i61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup197.thread.i

land.rhs.i68.i:                                   ; preds = %if.end28.i77.i.land.rhs.i68.i_crit_edge, %if.end.i61.i.land.rhs.i68.i_crit_edge
  %264 = phi i32 [ %and20.i71.i, %if.end28.i77.i.land.rhs.i68.i_crit_edge ], [ %259, %if.end.i61.i.land.rhs.i68.i_crit_edge ]
  %div3.i.i64.i = lshr i32 %264, 5
  %arrayidx.i.i65.i = getelementptr i32, ptr %tx_buf.i.i, i32 %div3.i.i64.i
  %265 = ptrtoint ptr %arrayidx.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load volatile i32, ptr %arrayidx.i.i65.i, align 4
  %and.i1.i66.i = and i32 %264, 31
  %267 = shl nuw i32 1, %and.i1.i66.i
  %268 = and i32 %267, %266
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %268)
  %tobool10.not.i67.i = icmp eq i32 %268, 0
  br i1 %tobool10.not.i67.i, label %do.body.i73.i, label %land.rhs.i68.i.cleanup197.thread.i_crit_edge

land.rhs.i68.i.cleanup197.thread.i_crit_edge:     ; preds = %land.rhs.i68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup197.thread.i

do.body.i73.i:                                    ; preds = %land.rhs.i68.i
  %269 = ptrtoint ptr %seq_start.i to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %seq_start.i, align 4
  %inc.i69.i = add i16 %270, 1
  %271 = and i16 %inc.i69.i, 4095
  store i16 %271, ptr %seq_start.i, align 4
  %inc18.i70.i = add i32 %264, 1
  %and20.i71.i = and i32 %inc18.i70.i, 127
  %272 = ptrtoint ptr %baw_head.i.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %and20.i71.i, ptr %baw_head.i.i, align 4
  %273 = ptrtoint ptr %bar_index.i.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %bar_index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %274)
  %cmp24.i72.i = icmp sgt i8 %274, -1
  br i1 %cmp24.i72.i, label %if.then26.i75.i, label %do.body.i73.i.if.end28.i77.i_crit_edge

do.body.i73.i.if.end28.i77.i_crit_edge:           ; preds = %do.body.i73.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i77.i

if.then26.i75.i:                                  ; preds = %do.body.i73.i
  call void @__sanitizer_cov_trace_pc() #13
  %dec.i74.i = add nsw i8 %274, -1
  %275 = ptrtoint ptr %bar_index.i.i to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 %dec.i74.i, ptr %bar_index.i.i, align 4
  br label %if.end28.i77.i

if.end28.i77.i:                                   ; preds = %if.then26.i75.i, %do.body.i73.i.if.end28.i77.i_crit_edge
  %cmp.not.i76.i = icmp eq i32 %and20.i71.i, %263
  br i1 %cmp.not.i76.i, label %if.end28.i77.i.cleanup197.thread.i_crit_edge, label %if.end28.i77.i.land.rhs.i68.i_crit_edge

if.end28.i77.i.land.rhs.i68.i_crit_edge:          ; preds = %if.end28.i77.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i68.i

if.end28.i77.i.cleanup197.thread.i_crit_edge:     ; preds = %if.end28.i77.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup197.thread.i

cleanup197.thread.i:                              ; preds = %if.end28.i77.i.cleanup197.thread.i_crit_edge, %land.rhs.i68.i.cleanup197.thread.i_crit_edge, %if.end.i61.i.cleanup197.thread.i_crit_edge, %if.then181.i.cleanup197.thread.i_crit_edge
  call fastcc void @ath_tx_complete_buf(ptr noundef %sc, ptr noundef nonnull %bf.addr.1130.i, ptr noundef %txq, ptr noundef nonnull %bf_head.i, ptr noundef null, ptr noundef %ts, i32 noundef 0) #11
  %sub184.i = sub nsw i32 %conv60.i183, %conv118.i
  %and185.i = and i32 %sub184.i, 4095
  %276 = call i32 @llvm.smax.i32(i32 %bar_index.1.i, i32 %and185.i) #11
  br label %while.end200.i

cleanup.i:                                        ; preds = %ath_tx_get_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf_lastbf.i.i = getelementptr inbounds %struct.ath_buf, ptr %242, i32 0, i32 1
  %277 = ptrtoint ptr %bf_lastbf.i.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr null, ptr %bf_lastbf.i.i, align 4
  %bf_next.i34.i = getelementptr inbounds %struct.ath_buf, ptr %242, i32 0, i32 2
  %278 = ptrtoint ptr %bf_next.i34.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr null, ptr %bf_next.i34.i, align 4
  %bf_state.i35.i = getelementptr inbounds %struct.ath_buf, ptr %242, i32 0, i32 8
  %279 = call ptr @memset(ptr %bf_state.i35.i, i32 0, i32 12)
  %280 = ptrtoint ptr %bf_mpdu.i36.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %bf_mpdu.i36.i, align 4
  %bf_mpdu27.i.i = getelementptr inbounds %struct.ath_buf, ptr %242, i32 0, i32 3
  %282 = ptrtoint ptr %bf_mpdu27.i.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr %281, ptr %bf_mpdu27.i.i, align 4
  %283 = ptrtoint ptr %bf_buf_addr.i37.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %bf_buf_addr.i37.i, align 4
  %bf_buf_addr28.i.i = getelementptr inbounds %struct.ath_buf, ptr %242, i32 0, i32 6
  %285 = ptrtoint ptr %bf_buf_addr28.i.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %284, ptr %bf_buf_addr28.i.i, align 4
  %bf_desc.i.i = getelementptr inbounds %struct.ath_buf, ptr %242, i32 0, i32 4
  %286 = ptrtoint ptr %bf_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %bf_desc.i.i, align 4
  %288 = ptrtoint ptr %bf_desc29.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %bf_desc29.i.i, align 4
  %290 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %sc_ah, align 4
  %tx_desc_len.i.i = getelementptr inbounds %struct.ath_hw, ptr %291, i32 0, i32 6, i32 13
  %292 = ptrtoint ptr %tx_desc_len.i.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %tx_desc_len.i.i, align 1
  %conv.i38.i = zext i8 %293 to i32
  %294 = call ptr @memcpy(ptr %287, ptr %289, i32 %conv.i38.i)
  %295 = call ptr @memcpy(ptr %bf_state.i35.i, ptr %bf_state31.i.i, i32 12)
  %stale.i.i = getelementptr inbounds %struct.ath_buf, ptr %242, i32 0, i32 8, i32 3
  %296 = ptrtoint ptr %stale.i.i to i32
  call void @__asan_store1_noabort(i32 %296)
  store i8 0, ptr %stale.i.i, align 1
  %297 = ptrtoint ptr %rate_driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr %242, ptr %rate_driver_data.i.i, align 4
  br label %if.end195.i

if.end195.i:                                      ; preds = %cleanup.i, %land.lhs.true173.i.if.end195.i_crit_edge, %if.end169.i.if.end195.i_crit_edge
  %298 = ptrtoint ptr %prev.i11.i141 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %prev.i11.i141, align 4
  %300 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %300)
  store volatile ptr %bf_pending.i, ptr %155, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.41, ptr %155, i32 0, i32 1
  %301 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store volatile ptr %299, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %155, ptr %prev.i11.i141, align 4
  %302 = ptrtoint ptr %299 to i32
  call void @__asan_store4_noabort(i32 %302)
  store volatile ptr %155, ptr %299, align 4
  %303 = ptrtoint ptr %qlen.i.i145 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %qlen.i.i145, align 4
  %add.i.i.i.i = add i32 %304, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i145, align 4
  br label %cleanup197.i

cleanup197.i:                                     ; preds = %if.end195.i, %if.end160.i
  %rc_update.3.off0.i = phi i1 [ %rc_update.0.off0128.i, %if.end195.i ], [ %rc_update.1.off0.i, %if.end160.i ]
  br i1 %cmp128.not.i, label %cleanup197.i.while.end200.i_crit_edge, label %cleanup197.i.while.body53.i_crit_edge

cleanup197.i.while.body53.i_crit_edge:            ; preds = %cleanup197.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body53.i

cleanup197.i.while.end200.i_crit_edge:            ; preds = %cleanup197.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end200.i

while.end200.i:                                   ; preds = %cleanup197.i.while.end200.i_crit_edge, %cleanup197.thread.i, %ath_tx_count_frames.exit.thread.i
  %bar_index.6.i = phi i32 [ %276, %cleanup197.thread.i ], [ -1, %ath_tx_count_frames.exit.thread.i ], [ %bar_index.1.i, %cleanup197.i.while.end200.i_crit_edge ]
  %305 = ptrtoint ptr %bf_pending.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %bf_pending.i, align 4
  %cmp.i80.not.i = icmp eq ptr %306, %bf_pending.i
  br i1 %cmp.i80.not.i, label %while.end200.i.if.end219.i_crit_edge, label %if.then203.i

while.end200.i.if.end219.i_crit_edge:             ; preds = %while.end200.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end219.i

if.then203.i:                                     ; preds = %while.end200.i
  %sleeping204.i = getelementptr inbounds %struct.ieee80211_sta, ptr %call13, i32 1, i32 0, i32 4
  %307 = ptrtoint ptr %sleeping204.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %sleeping204.i, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %308)
  %tobool205.not.i = icmp eq i8 %308, 0
  br i1 %tobool205.not.i, label %if.then203.i.if.end208.i_crit_edge, label %if.then206.i

if.then203.i.if.end208.i_crit_edge:               ; preds = %if.then203.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end208.i

if.then206.i:                                     ; preds = %if.then203.i
  call void @__sanitizer_cov_trace_pc() #13
  %tidno207.i = getelementptr inbounds %struct.ath_atx_tid, ptr %tid.0, i32 0, i32 8
  %309 = ptrtoint ptr %tidno207.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %tidno207.i, align 2
  call void @ieee80211_sta_set_buffered(ptr noundef nonnull %call13, i8 noundef zeroext %310, i1 noundef zeroext true) #11
  br label %if.end208.i

if.end208.i:                                      ; preds = %if.then206.i, %if.then203.i.if.end208.i_crit_edge
  %311 = ptrtoint ptr %bf_pending.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %bf_pending.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %312, %bf_pending.i
  br i1 %cmp.i.not.i.i, label %if.end208.i.skb_queue_splice_tail.exit.i_crit_edge, label %if.then.i85.i

if.end208.i.skb_queue_splice_tail.exit.i_crit_edge: ; preds = %if.end208.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_queue_splice_tail.exit.i

if.then.i85.i:                                    ; preds = %if.end208.i
  call void @__sanitizer_cov_trace_pc() #13
  %retry_q.i = getelementptr inbounds %struct.ath_atx_tid, ptr %tid.0, i32 0, i32 1
  %prev.i82.i = getelementptr inbounds %struct.ath_atx_tid, ptr %tid.0, i32 0, i32 1, i32 0, i32 0, i32 1
  %313 = ptrtoint ptr %prev.i82.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %prev.i82.i, align 4
  %315 = ptrtoint ptr %prev.i11.i141 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %prev.i11.i141, align 4
  %prev5.i.i.i = getelementptr inbounds %struct.anon.41, ptr %312, i32 0, i32 1
  %317 = ptrtoint ptr %prev5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store volatile ptr %314, ptr %prev5.i.i.i, align 4
  %318 = ptrtoint ptr %314 to i32
  call void @__asan_store4_noabort(i32 %318)
  store volatile ptr %312, ptr %314, align 8
  %319 = ptrtoint ptr %316 to i32
  call void @__asan_store4_noabort(i32 %319)
  store volatile ptr %retry_q.i, ptr %316, align 8
  store volatile ptr %316, ptr %prev.i82.i, align 4
  %320 = ptrtoint ptr %qlen.i.i145 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %qlen.i.i145, align 4
  %qlen1.i.i = getelementptr inbounds %struct.ath_atx_tid, ptr %tid.0, i32 0, i32 1, i32 1
  %322 = ptrtoint ptr %qlen1.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %qlen1.i.i, align 4
  %add.i84.i = add i32 %323, %321
  store i32 %add.i84.i, ptr %qlen1.i.i, align 4
  br label %skb_queue_splice_tail.exit.i

skb_queue_splice_tail.exit.i:                     ; preds = %if.then.i85.i, %if.end208.i.skb_queue_splice_tail.exit.i_crit_edge
  %324 = ptrtoint ptr %sleeping204.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %sleeping204.i, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %325)
  %tobool210.not.i = icmp eq i8 %325, 0
  br i1 %tobool210.not.i, label %if.then211.i, label %skb_queue_splice_tail.exit.i.if.end219.i_crit_edge

skb_queue_splice_tail.exit.i.if.end219.i_crit_edge: ; preds = %skb_queue_splice_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end219.i

if.then211.i:                                     ; preds = %skb_queue_splice_tail.exit.i
  %add.ptr.i.i = getelementptr i8, ptr %tid.0, i32 -12
  %326 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %sc, align 8
  call void @ieee80211_schedule_txq(ptr noundef %327, ptr noundef %add.ptr.i.i) #11
  %328 = ptrtoint ptr %ts_status to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %ts_status, align 2
  %330 = and i8 %329, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %330)
  %tobool215.not.i = icmp eq i8 %330, 0
  br i1 %tobool215.not.i, label %if.then211.i.if.end219.i_crit_edge, label %if.then216.i

if.then211.i.if.end219.i_crit_edge:               ; preds = %if.then211.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end219.i

if.then216.i:                                     ; preds = %if.then211.i
  call void @__sanitizer_cov_trace_pc() #13
  %clear_ps_filter.i = getelementptr inbounds %struct.ath_atx_tid, ptr %tid.0, i32 0, i32 13
  %331 = ptrtoint ptr %clear_ps_filter.i to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 1, ptr %clear_ps_filter.i, align 2
  br label %if.end219.i

if.end219.i:                                      ; preds = %if.then216.i, %if.then211.i.if.end219.i_crit_edge, %skb_queue_splice_tail.exit.i.if.end219.i_crit_edge, %while.end200.i.if.end219.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bar_index.6.i)
  %cmp220.i = icmp sgt i32 %bar_index.6.i, -1
  br i1 %cmp220.i, label %if.then222.i, label %if.end219.i.if.end250.i_crit_edge

if.end219.i.if.end250.i_crit_edge:                ; preds = %if.end219.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end250.i

if.then222.i:                                     ; preds = %if.end219.i
  %332 = trunc i32 %bar_index.6.i to i16
  %333 = add i16 %104, %332
  %conv227.i = zext i16 %333 to i32
  %334 = ptrtoint ptr %seq_start.i to i32
  call void @__asan_load2_noabort(i32 %334)
  %335 = load i16, ptr %seq_start.i, align 4
  %conv229.i = zext i16 %335 to i32
  %sub230.i = sub nsw i32 %conv227.i, %conv229.i
  %and231.i = and i32 %sub230.i, 4095
  %baw_size232.i = getelementptr inbounds %struct.ath_atx_tid, ptr %tid.0, i32 0, i32 7
  %336 = ptrtoint ptr %baw_size232.i to i32
  call void @__asan_load2_noabort(i32 %336)
  %337 = load i16, ptr %baw_size232.i, align 4
  %conv233.i = zext i16 %337 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and231.i, i32 %conv233.i)
  %cmp234.i = icmp ult i32 %and231.i, %conv233.i
  br i1 %cmp234.i, label %if.then236.i, label %if.then222.i.if.end244.i_crit_edge

if.then222.i.if.end244.i_crit_edge:               ; preds = %if.then222.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end244.i

if.then236.i:                                     ; preds = %if.then222.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv242.i = trunc i32 %sub230.i to i8
  %bar_index243.i = getelementptr inbounds %struct.ath_atx_tid, ptr %tid.0, i32 0, i32 11
  %338 = ptrtoint ptr %bar_index243.i to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 %conv242.i, ptr %bar_index243.i, align 4
  br label %if.end244.i

if.end244.i:                                      ; preds = %if.then236.i, %if.then222.i.if.end244.i_crit_edge
  %axq_lock.i.i = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 4
  call void @_raw_spin_unlock_bh(ptr noundef %axq_lock.i.i) #11
  %an.i.i = getelementptr inbounds %struct.ath_atx_tid, ptr %tid.0, i32 0, i32 2
  %339 = ptrtoint ptr %an.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %an.i.i, align 4
  %sta.i.i = getelementptr inbounds %struct.ath_node, ptr %340, i32 0, i32 1
  %341 = ptrtoint ptr %sta.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %sta.i.i, align 4
  %tobool.not.i87.i = icmp eq ptr %342, null
  br i1 %tobool.not.i87.i, label %if.end244.i.ath_send_bar.exit.i_crit_edge, label %if.end.i90.i

if.end244.i.ath_send_bar.exit.i_crit_edge:        ; preds = %if.end244.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_send_bar.exit.i

if.end.i90.i:                                     ; preds = %if.end244.i
  call void @__sanitizer_cov_trace_pc() #13
  %vif.i.i = getelementptr inbounds %struct.ath_node, ptr %340, i32 0, i32 2
  %343 = ptrtoint ptr %vif.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %vif.i.i, align 4
  %addr.i.i = getelementptr inbounds %struct.ieee80211_sta, ptr %342, i32 0, i32 1
  %tidno.i.i = getelementptr inbounds %struct.ath_atx_tid, ptr %tid.0, i32 0, i32 8
  %345 = ptrtoint ptr %tidno.i.i to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %tidno.i.i, align 2
  %conv.i88.i = zext i8 %346 to i16
  %347 = shl i16 %333, 4
  %conv249.i = add i16 %347, 16
  call void @ieee80211_send_bar(ptr noundef %344, ptr noundef %addr.i.i, i16 noundef zeroext %conv.i88.i, i16 noundef zeroext %conv249.i) #11
  br label %ath_send_bar.exit.i

ath_send_bar.exit.i:                              ; preds = %if.end.i90.i, %if.end244.i.ath_send_bar.exit.i_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef %axq_lock.i.i) #11
  br label %if.end250.i

if.end250.i:                                      ; preds = %ath_send_bar.exit.i, %if.end219.i.if.end250.i_crit_edge
  br i1 %tobool251.not.i139, label %if.end250.i.ath_tx_complete_aggr.exit_crit_edge, label %if.then252.i

if.end250.i.ath_tx_complete_aggr.exit_crit_edge:  ; preds = %if.end250.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tx_complete_aggr.exit

if.then252.i:                                     ; preds = %if.end250.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @ath9k_queue_reset(ptr noundef %sc, i32 noundef 4) #11
  br label %ath_tx_complete_aggr.exit

ath_tx_complete_aggr.exit:                        ; preds = %if.then252.i, %if.end250.i.ath_tx_complete_aggr.exit_crit_edge, %if.end.i.ath_tx_complete_aggr.exit_crit_edge, %if.then.i.ath_tx_complete_aggr.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rates.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ba.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %bf_pending.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bf_head.i) #11
  br label %if.end48

if.end48:                                         ; preds = %ath_tx_complete_aggr.exit, %if.end43
  br i1 %tobool5.not, label %if.then50, label %if.end48.if.end51_crit_edge

if.end48.if.end51_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  call void @ath_txq_schedule(ptr noundef %sc, ptr noundef %txq)
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end48.if.end51_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath_tx_init(ptr noundef %sc, i32 noundef %nbufs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %txbuflock = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %txbuflock, ptr noundef nonnull @.str.9, ptr noundef nonnull @ath_tx_init.__key, i16 noundef signext 3) #11
  %txdma = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 4
  %txbuf = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 2
  %call4 = tail call i32 @ath_descdma_setup(ptr noundef %sc, ptr noundef %txdma, ptr noundef %txbuf, ptr noundef nonnull @.str.10, i32 noundef %nbufs, i32 noundef 1, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.4, ptr noundef %common.i, ptr noundef nonnull @.str.11, i32 noundef %call4) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %bdma = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 6
  %bbuf = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 36, i32 8
  %call6 = tail call i32 @ath_descdma_setup(ptr noundef %sc, ptr noundef %bdma, ptr noundef %bbuf, ptr noundef nonnull @.str.12, i32 noundef 8, i32 noundef 1, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.4, ptr noundef %common.i, ptr noundef nonnull @.str.13, i32 noundef %call6) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %caps = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %if.then11

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then11:                                        ; preds = %if.end9
  %txsdma.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 51
  %txs_len1.i.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 6, i32 14
  %6 = ptrtoint ptr %txs_len1.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %txs_len1.i.i, align 4
  %conv.i.i = zext i8 %7 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 9
  %dd_desc_len.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 51, i32 2
  %8 = ptrtoint ptr %dd_desc_len.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul.i.i, ptr %dd_desc_len.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 1
  %9 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i, align 4
  %dd_desc_paddr.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 51, i32 1
  %call.i.i.i = tail call ptr @dmam_alloc_attrs(ptr noundef %10, i32 noundef %mul.i.i, ptr noundef %dd_desc_paddr.i.i, i32 noundef 3264, i32 noundef 0) #11
  %11 = ptrtoint ptr %txsdma.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i.i, ptr %txsdma.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then11.cleanup_crit_edge, label %if.then.i

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sc_ah, align 4
  %14 = ptrtoint ptr %dd_desc_paddr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dd_desc_paddr.i.i, align 4
  tail call void @ath9k_hw_setup_statusring(ptr noundef %13, ptr noundef nonnull %call.i.i.i, i32 noundef %15, i16 noundef zeroext 512) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then11.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then8, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ %call6, %if.then8 ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %if.then.i ], [ -12, %if.then11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_descdma_setup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_tx_node_init(ptr nocapture noundef readonly %sc, ptr noundef %an) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vif2.i = getelementptr inbounds %struct.ath_node, ptr %an, i32 0, i32 2
  %sta1.i = getelementptr inbounds %struct.ath_node, ptr %an, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cond.end20.for.body_crit_edge, %entry
  %tidno.046 = phi i32 [ 0, %entry ], [ %inc, %cond.end20.for.body_crit_edge ]
  %0 = ptrtoint ptr %vif2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif2.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body6.i, label %ath_node_to_tid.exit, !prof !88

do.body6.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath9k/ath9k.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #11, !srcloc !89
  unreachable

ath_node_to_tid.exit:                             ; preds = %for.body
  %conv = trunc i32 %tidno.046 to i8
  %2 = ptrtoint ptr %sta1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sta1.i, align 4
  %tobool12.not.i = icmp eq ptr %3, null
  %4 = urem i8 %conv, 17
  %rem.i = zext i8 %4 to i32
  %arrayidx.i = getelementptr %struct.ieee80211_sta, ptr %3, i32 0, i32 28, i32 %rem.i
  %txq15.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 8
  %txq.0.in.i = select i1 %tobool12.not.i, ptr %txq15.i, ptr %arrayidx.i
  %5 = ptrtoint ptr %txq.0.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %txq.0.i = load ptr, ptr %txq.0.in.i, align 4
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 0, i32 5
  %an1 = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 6, i32 1
  %6 = ptrtoint ptr %an1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %an, ptr %an1, align 4
  %tidno3 = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 8, i32 4
  %7 = ptrtoint ptr %tidno3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %tidno3, align 2
  %seq_next = getelementptr inbounds %struct.ath_atx_tid, ptr %drv_priv.i, i32 0, i32 6
  %8 = ptrtoint ptr %seq_next to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %seq_next, align 2
  %seq_start = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 8, i32 1
  %9 = ptrtoint ptr %seq_start to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %seq_start, align 4
  %baw_size = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 8, i32 2
  %10 = ptrtoint ptr %baw_size to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 64, ptr %baw_size, align 4
  %baw_tail = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 9, i32 1
  %11 = ptrtoint ptr %baw_tail to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %baw_tail, align 4
  %baw_head = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 9
  %12 = ptrtoint ptr %baw_head to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %baw_head, align 4
  %active = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 9, i32 3
  %13 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %active, align 1
  %clear_ps_filter = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 9, i32 4
  %14 = ptrtoint ptr %clear_ps_filter to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %clear_ps_filter, align 2
  %retry_q = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 1, i32 2
  %15 = ptrtoint ptr %retry_q to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %retry_q, ptr %retry_q, align 4
  %prev.i = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 2
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %retry_q, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 2, i32 1
  %17 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %qlen.i, align 4
  %18 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %drv_priv.i, ptr %drv_priv.i, align 4
  %prev.i45 = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i45 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %drv_priv.i, ptr %prev.i45, align 4
  %20 = zext i32 %tidno.046 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %tidno.046, label %lor.rhs [
    i32 0, label %ath_node_to_tid.exit.cond.end20_crit_edge
    i32 3, label %ath_node_to_tid.exit.cond.end20_crit_edge47
    i32 1, label %cond.end20.fold.split
    i32 2, label %cond.end20.fold.split44
    i32 4, label %ath_node_to_tid.exit.lor.end_crit_edge
    i32 5, label %ath_node_to_tid.exit.lor.end_crit_edge48
  ]

ath_node_to_tid.exit.lor.end_crit_edge48:         ; preds = %ath_node_to_tid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

ath_node_to_tid.exit.lor.end_crit_edge:           ; preds = %ath_node_to_tid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

ath_node_to_tid.exit.cond.end20_crit_edge47:      ; preds = %ath_node_to_tid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end20

ath_node_to_tid.exit.cond.end20_crit_edge:        ; preds = %ath_node_to_tid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end20

lor.rhs:                                          ; preds = %ath_node_to_tid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %ath_node_to_tid.exit.lor.end_crit_edge, %ath_node_to_tid.exit.lor.end_crit_edge48
  %21 = phi i32 [ 0, %lor.rhs ], [ 1, %ath_node_to_tid.exit.lor.end_crit_edge ], [ 1, %ath_node_to_tid.exit.lor.end_crit_edge48 ]
  br label %cond.end20

cond.end20.fold.split:                            ; preds = %ath_node_to_tid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end20

cond.end20.fold.split44:                          ; preds = %ath_node_to_tid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end20

cond.end20:                                       ; preds = %cond.end20.fold.split44, %cond.end20.fold.split, %lor.end, %ath_node_to_tid.exit.cond.end20_crit_edge, %ath_node_to_tid.exit.cond.end20_crit_edge47
  %cond21 = phi i32 [ 2, %ath_node_to_tid.exit.cond.end20_crit_edge ], [ %21, %lor.end ], [ 2, %ath_node_to_tid.exit.cond.end20_crit_edge47 ], [ 3, %cond.end20.fold.split ], [ 3, %cond.end20.fold.split44 ]
  %arrayidx = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 5, i32 %cond21
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %txq = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 6, i32 2
  %24 = ptrtoint ptr %txq to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %txq, align 4
  %25 = ptrtoint ptr %sta1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sta1.i, align 4
  %tobool.not = icmp eq ptr %26, null
  %inc = add nuw nsw i32 %tidno.046, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 16
  %or.cond = select i1 %tobool.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.end, label %cond.end20.for.body_crit_edge

cond.end20.for.body_crit_edge:                    ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_tx_node_cleanup(ptr noundef %sc, ptr nocapture noundef readonly %an) local_unnamed_addr #0 align 64 {
entry:
  %skb.i = alloca ptr, align 4
  %bf_head.i = alloca %struct.list_head, align 4
  %ts.i = alloca %struct.ath_tx_status, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !75) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !85
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 696, ptr noundef nonnull @.str.21) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %vif2.i = getelementptr inbounds %struct.ath_node, ptr %an, i32 0, i32 2
  %sta1.i = getelementptr inbounds %struct.ath_node, ptr %an, i32 0, i32 1
  %4 = getelementptr inbounds %struct.list_head, ptr %bf_head.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %ath_tid_drain.exit.for.body_crit_edge, %rcu_read_lock.exit
  %tidno.033 = phi i32 [ 0, %rcu_read_lock.exit ], [ %inc, %ath_tid_drain.exit.for.body_crit_edge ]
  %5 = ptrtoint ptr %vif2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vif2.i, align 4
  %tobool.not.i18 = icmp eq ptr %6, null
  br i1 %tobool.not.i18, label %do.body6.i, label %ath_node_to_tid.exit, !prof !88

do.body6.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath9k/ath9k.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #11, !srcloc !89
  unreachable

ath_node_to_tid.exit:                             ; preds = %for.body
  %conv = trunc i32 %tidno.033 to i8
  %7 = ptrtoint ptr %sta1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sta1.i, align 4
  %tobool12.not.i = icmp eq ptr %8, null
  %9 = urem i8 %conv, 17
  %rem.i = zext i8 %9 to i32
  %arrayidx.i = getelementptr %struct.ieee80211_sta, ptr %8, i32 0, i32 28, i32 %rem.i
  %txq15.i = getelementptr inbounds %struct.ieee80211_vif, ptr %6, i32 0, i32 8
  %txq.0.in.i = select i1 %tobool12.not.i, ptr %txq15.i, ptr %arrayidx.i
  %10 = ptrtoint ptr %txq.0.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %txq.0.i = load ptr, ptr %txq.0.in.i, align 4
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 0, i32 5
  %txq1 = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 6, i32 2
  %11 = ptrtoint ptr %txq1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %txq1, align 4
  %axq_lock.i = getelementptr inbounds %struct.ath_txq, ptr %12, i32 0, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %axq_lock.i) #11
  %13 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %drv_priv.i, align 4
  %cmp.i.not = icmp eq ptr %14, %drv_priv.i
  br i1 %cmp.i.not, label %ath_node_to_tid.exit.if.end_crit_edge, label %if.then

ath_node_to_tid.exit.if.end_crit_edge:            ; preds = %ath_node_to_tid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %ath_node_to_tid.exit
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %drv_priv.i) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %drv_priv.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %21 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %drv_priv.i, ptr %drv_priv.i, align 4
  %prev.i3.i = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %drv_priv.i, ptr %prev.i3.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %ath_node_to_tid.exit.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb.i) #11
  %23 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb.i, align 4, !annotation !90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bf_head.i) #11
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ts.i) #11
  %24 = call ptr @memset(ptr %ts.i, i32 0, i32 48)
  %25 = ptrtoint ptr %bf_head.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %bf_head.i, ptr %bf_head.i, align 4
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %bf_head.i, ptr %4, align 4
  %call8.i = call fastcc i32 @ath_tid_dequeue(ptr noundef %drv_priv.i, ptr noundef nonnull %skb.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp eq i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end.while.body.i_crit_edge, label %if.end.ath_tid_drain.exit_crit_edge

if.end.ath_tid_drain.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tid_drain.exit

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %27 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %skb.i, align 4
  %rate_driver_data.i.i = getelementptr inbounds %struct.sk_buff, ptr %28, i32 0, i32 3, i32 24
  %29 = ptrtoint ptr %rate_driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rate_driver_data.i.i, align 4
  %tobool.not.i19 = icmp eq ptr %30, null
  br i1 %tobool.not.i19, label %if.then.i20, label %if.end.i

if.then.i20:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @ath_tx_complete(ptr noundef %sc, ptr noundef %28, i32 noundef 1, ptr noundef %12, ptr noundef null) #11
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %list_add_tail.exit.i, %if.then.i20
  %call.i21 = call fastcc i32 @ath_tid_dequeue(ptr noundef %drv_priv.i, ptr noundef nonnull %skb.i) #11
  %cmp.i22 = icmp eq i32 %call.i21, 0
  br i1 %cmp.i22, label %while.cond.backedge.i.while.body.i_crit_edge, label %while.cond.backedge.i.ath_tid_drain.exit_crit_edge

while.cond.backedge.i.ath_tid_drain.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tid_drain.exit

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end.i:                                         ; preds = %while.body.i
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %4, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %30, ptr noundef %32, ptr noundef nonnull %bf_head.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_add_tail.exit.i_crit_edge

if.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %4, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %bf_head.i, ptr %30, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %30, ptr %32, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_add_tail.exit.i_crit_edge
  call fastcc void @ath_tx_complete_buf(ptr noundef %sc, ptr noundef nonnull %30, ptr noundef %12, ptr noundef nonnull %bf_head.i, ptr noundef null, ptr noundef nonnull %ts.i, i32 noundef 0) #11
  br label %while.cond.backedge.i

ath_tid_drain.exit:                               ; preds = %while.cond.backedge.i.ath_tid_drain.exit_crit_edge, %if.end.ath_tid_drain.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ts.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bf_head.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb.i) #11
  %active = getelementptr inbounds %struct.ieee80211_txq, ptr %txq.0.i, i32 9, i32 3
  %37 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %active, align 1
  call void @_raw_spin_unlock_bh(ptr noundef %axq_lock.i) #11
  %38 = ptrtoint ptr %sta1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sta1.i, align 4
  %tobool4.not = icmp eq ptr %39, null
  %inc = add nuw nsw i32 %tidno.033, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 16
  %or.cond = select i1 %tobool4.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.end, label %ath_tid_drain.exit.for.body_crit_edge

ath_tid_drain.exit.for.body_crit_edge:            ; preds = %ath_tid_drain.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %ath_tid_drain.exit
  %call.i24 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i24, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i27

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i27:                                ; preds = %for.end
  %call1.i25 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i25)
  %tobool.not.i26 = icmp eq i32 %call1.i25, 0
  br i1 %tobool.not.i26, label %land.lhs.true.i27.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i29

land.lhs.true.i27.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i27
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i29:                               ; preds = %land.lhs.true.i27
  %.b4.i28 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i28, label %land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge, label %if.then.i30

land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i29
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i30:                                      ; preds = %land.lhs.true2.i29
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 724, ptr noundef nonnull @.str.22) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i30, %land.lhs.true2.i29.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i27.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !87
  %40 = call i32 @llvm.read_register.i32(metadata !75) #11
  %and.i.i.i.i.i31 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i31 to ptr
  %preempt_count.i.i.i.i32 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i32, align 4
  %sub.i.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i32, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath9k_tx99_send(ptr noundef %sc, ptr noundef %skb, ptr nocapture noundef readonly %txctl) local_unnamed_addr #0 align 64 {
entry:
  %bf_head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %rate_driver_data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 2
  %call2 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %5) #14
  %and = and i32 %call2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %land.lhs.true

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

land.lhs.true:                                    ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %call2)
  %cmp = icmp ugt i32 %7, %call2
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then:                                          ; preds = %land.lhs.true
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %and)
  %cmp4 = icmp ult i32 %sub.ptr.sub.i, %and
  br i1 %cmp4, label %do.body, label %if.end9

do.body:                                          ; preds = %if.then
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug_mask, align 4
  %and6 = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.body.cleanup_crit_edge, label %if.then8

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.14) #11
  br label %cleanup

if.end9:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %and) #11
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %and
  %14 = call ptr @memmove(ptr %13, ptr %add.ptr, i32 %call2)
  br label %if.end13

if.end13:                                         ; preds = %if.end9, %land.lhs.true.if.end13_crit_edge, %entry.if.end13_crit_edge
  %keyix = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 31
  %15 = ptrtoint ptr %keyix to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %keyix, align 1
  %len14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %16 = ptrtoint ptr %len14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len14, align 4
  %18 = trunc i32 %17 to i16
  %conv = add i16 %18, 4
  %framelen = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %19 = ptrtoint ptr %framelen to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv, ptr %framelen, align 4
  %keytype = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 35
  %20 = ptrtoint ptr %keytype to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %keytype, align 1
  %bf.clear = and i8 %bf.load, 63
  store i8 %bf.clear, ptr %keytype, align 1
  %call15 = tail call fastcc ptr @ath_tx_setup_buffer(ptr noundef %sc, ptr noundef null, ptr noundef %skb)
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %do.body18, label %if.end26

do.body18:                                        ; preds = %if.end13
  %debug_mask19 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %debug_mask19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %debug_mask19, align 4
  %and20 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body18.cleanup_crit_edge, label %if.then22

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then22:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.15) #11
  br label %cleanup

if.end26:                                         ; preds = %if.end13
  %tx99_vif = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 59
  %23 = ptrtoint ptr %tx99_vif to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx99_vif, align 8
  %bf_mpdu.i = getelementptr inbounds %struct.ath_buf, ptr %call15, i32 0, i32 3
  %25 = ptrtoint ptr %bf_mpdu.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bf_mpdu.i, align 4
  %rates.i = getelementptr inbounds %struct.ath_buf, ptr %call15, i32 0, i32 7
  tail call void @ieee80211_get_tx_rates(ptr noundef %24, ptr noundef null, ptr noundef %26, ptr noundef %rates.i, i32 noundef 4) #11
  %27 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sc_ah, align 4
  %bf_desc = getelementptr inbounds %struct.ath_buf, ptr %call15, i32 0, i32 4
  %29 = ptrtoint ptr %bf_desc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bf_desc, align 4
  %bf_daddr = getelementptr inbounds %struct.ath_buf, ptr %call15, i32 0, i32 5
  %31 = ptrtoint ptr %bf_daddr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bf_daddr, align 4
  %set_desc_link.i = getelementptr inbounds %struct.ath_hw, ptr %28, i32 0, i32 63, i32 2
  %33 = ptrtoint ptr %set_desc_link.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %set_desc_link.i, align 4
  tail call void %34(ptr noundef %30, i32 noundef %32) #11
  %35 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sc_ah, align 4
  %37 = ptrtoint ptr %txctl to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %txctl, align 4
  %axq_qnum = getelementptr inbounds %struct.ath_txq, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %axq_qnum to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %axq_qnum, align 4
  %tx99_start.i = getelementptr inbounds %struct.ath_hw, ptr %36, i32 0, i32 63, i32 13
  %41 = ptrtoint ptr %tx99_start.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tx99_start.i, align 4
  tail call void %42(ptr noundef %36, i32 noundef %40) #11
  %43 = ptrtoint ptr %txctl to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %txctl, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bf_head.i) #11
  %45 = getelementptr inbounds %struct.list_head, ptr %bf_head.i, i32 0, i32 1
  %46 = ptrtoint ptr %rate_driver_data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rate_driver_data.i, align 4
  %48 = ptrtoint ptr %bf_head.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %bf_head.i, ptr %bf_head.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %bf_head.i, ptr %45, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %47, ptr noundef nonnull %bf_head.i, ptr noundef nonnull %bf_head.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end26.ath_tx_send_normal.exit_crit_edge

if.end26.ath_tx_send_normal.exit_crit_edge:       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tx_send_normal.exit

if.end.i.i.i:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %45, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %bf_head.i, ptr %47, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %52 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %bf_head.i, ptr %prev3.i.i.i, align 4
  %53 = ptrtoint ptr %bf_head.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %47, ptr %bf_head.i, align 4
  br label %ath_tx_send_normal.exit

ath_tx_send_normal.exit:                          ; preds = %if.end.i.i.i, %if.end26.ath_tx_send_normal.exit_crit_edge
  %bf_state.i = getelementptr inbounds %struct.ath_buf, ptr %47, i32 0, i32 8
  %54 = ptrtoint ptr %bf_state.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %bf_state.i, align 4
  %bf_next.i = getelementptr inbounds %struct.ath_buf, ptr %47, i32 0, i32 2
  %55 = ptrtoint ptr %bf_next.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %bf_next.i, align 4
  %bf_lastbf.i = getelementptr inbounds %struct.ath_buf, ptr %47, i32 0, i32 1
  %56 = ptrtoint ptr %bf_lastbf.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %47, ptr %bf_lastbf.i, align 4
  %57 = ptrtoint ptr %framelen to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %framelen, align 4
  %conv.i = zext i16 %58 to i32
  call fastcc void @ath_tx_fill_desc(ptr noundef %sc, ptr noundef %47, ptr noundef %44, i32 noundef %conv.i) #11
  call fastcc void @ath_tx_txqaddbuf(ptr noundef %sc, ptr noundef %44, ptr noundef nonnull %bf_head.i, i1 noundef zeroext false) #11
  %axq_qnum.i = getelementptr inbounds %struct.ath_txq, ptr %44, i32 0, i32 1
  %59 = ptrtoint ptr %axq_qnum.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %axq_qnum.i, align 4
  %queued.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 1, i32 %60, i32 2
  %61 = ptrtoint ptr %queued.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %queued.i, align 4
  %inc.i = add i32 %62, 1
  store i32 %inc.i, ptr %queued.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bf_head.i) #11
  br label %cleanup

cleanup:                                          ; preds = %ath_tx_send_normal.exit, %if.then22, %do.body18.cleanup_crit_edge, %if.then8, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ath_tx_send_normal.exit ], [ -22, %if.then8 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then22 ], [ -22, %do.body18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status_ext(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath_tx_complete_buf(ptr noundef %sc, ptr noundef %bf, ptr noundef %txq, ptr noundef %bf_q, ptr noundef %sta, ptr noundef %ts, i32 noundef %txok) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bf_mpdu = getelementptr inbounds %struct.ath_buf, ptr %bf, i32 0, i32 3
  %0 = ptrtoint ptr %bf_mpdu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bf_mpdu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %txok)
  %tobool.not = icmp eq i32 %txok, 0
  %spec.select = zext i1 %tobool.not to i32
  %ts_status = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 2
  %2 = ptrtoint ptr %ts_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ts_status, align 2
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %entry.if.end5_crit_edge, label %if.then2

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cb.i, align 8
  %or4 = or i32 %6, 256
  store i32 %or4, ptr %cb.i, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %entry.if.end5_crit_edge
  %dev = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %bf_buf_addr = getelementptr inbounds %struct.ath_buf, ptr %bf, i32 0, i32 6
  %9 = ptrtoint ptr %bf_buf_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bf_buf_addr, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef 1, i32 noundef 0) #11
  %13 = ptrtoint ptr %bf_buf_addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %bf_buf_addr, align 4
  %tx99_state = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 61
  %14 = ptrtoint ptr %tx99_state to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tx99_state, align 8, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool7.not = icmp eq i8 %15, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.skip_tx_complete_crit_edge

if.end5.skip_tx_complete_crit_edge:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %skip_tx_complete

if.end9:                                          ; preds = %if.end5
  %bfs_paprd = getelementptr inbounds %struct.ath_buf, ptr %bf, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %bfs_paprd to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bfs_paprd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool10.not = icmp eq i8 %17, 0
  br i1 %tobool10.not, label %if.else17, label %if.then11

if.then11:                                        ; preds = %if.end9
  %bfs_paprd_timestamp = getelementptr inbounds %struct.ath_buf, ptr %bf, i32 0, i32 8, i32 5
  %18 = ptrtoint ptr %bfs_paprd_timestamp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bfs_paprd_timestamp, align 4
  %add = add i32 %19, 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #11
  br label %skip_tx_complete

if.else:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %paprd_complete = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 16
  tail call void @complete(ptr noundef %paprd_complete) #11
  br label %skip_tx_complete

if.else17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ath_debug_stat_tx(ptr noundef %sc, ptr noundef %bf, ptr noundef %ts, ptr noundef %txq, i32 noundef %spec.select) #11
  tail call fastcc void @ath_tx_complete(ptr noundef %sc, ptr noundef %1, i32 noundef %spec.select, ptr noundef %txq, ptr noundef %sta)
  br label %skip_tx_complete

skip_tx_complete:                                 ; preds = %if.else17, %if.else, %if.then15, %if.end5.skip_tx_complete_crit_edge
  %21 = ptrtoint ptr %bf_mpdu to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %bf_mpdu, align 4
  %txbuflock = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 1
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %txbuflock) #11
  %22 = ptrtoint ptr %bf_q to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %bf_q, align 4
  %cmp.i.not.i = icmp eq ptr %23, %bf_q
  br i1 %cmp.i.not.i, label %skip_tx_complete.list_splice_tail_init.exit_crit_edge, label %if.then.i

skip_tx_complete.list_splice_tail_init.exit_crit_edge: ; preds = %skip_tx_complete
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %skip_tx_complete
  call void @__sanitizer_cov_trace_pc() #13
  %txbuf = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 2
  %prev.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 2, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %bf_q, i32 0, i32 1
  %26 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %23, ptr %25, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %txbuf, ptr %27, align 4
  store ptr %27, ptr %prev.i, align 4
  %31 = ptrtoint ptr %bf_q to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %bf_q, ptr %bf_q, align 4
  store ptr %bf_q, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %skip_tx_complete.list_splice_tail_init.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txbuflock, i32 noundef %call24) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_debug_stat_tx(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath_tx_complete(ptr noundef %sc, ptr noundef %skb, i32 noundef %tx_flags, ptr noundef %txq, ptr noundef %sta) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug_mask, align 4
  %and = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.16, ptr noundef %skb) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %6 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc_ah, align 4
  %caldata = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 31
  %8 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %caldata, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %do.end.if.end7_crit_edge, label %if.then4

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %cal_flags = getelementptr inbounds %struct.ath9k_hw_cal_data, ptr %9, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 1, ptr noundef %cal_flags) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %do.end.if.end7_crit_edge
  %and8 = and i32 %tx_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end7.if.end19_crit_edge

if.end7.if.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cb.i, align 8
  %and12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %. = select i1 %tobool13.not, i32 512, i32 -2147483648
  %or = or i32 %11, %.
  %12 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or, ptr %cb.i, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then10, %if.end7.if.end19_crit_edge
  %13 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cb.i, align 8
  %and21 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end19.do.body34_crit_edge, label %if.then23

if.end19.do.body34_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body34

if.then23:                                        ; preds = %if.end19
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %3, align 2
  %call24 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %16) #14
  %and25 = and i32 %call24, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.then23.do.body34_crit_edge, label %land.lhs.true

if.then23.do.body34_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body34

land.lhs.true:                                    ; preds = %if.then23
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %add = add i32 %and25, %call24
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %add)
  %cmp = icmp ugt i32 %18, %add
  br i1 %cmp, label %if.then27, label %land.lhs.true.do.body34_crit_edge

land.lhs.true.do.body34_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body34

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 %and25
  %21 = call ptr @memmove(ptr %add.ptr, ptr %20, i32 %call24)
  %call30 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %and25) #11
  br label %do.body34

do.body34:                                        ; preds = %if.then27, %land.lhs.true.do.body34_crit_edge, %if.then23.do.body34_crit_edge, %if.end19.do.body34_crit_edge
  %sc_pm_lock = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 11
  %call37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sc_pm_lock) #11
  %ps_flags = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 29
  %22 = ptrtoint ptr %ps_flags to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ps_flags, align 4
  %24 = and i16 %23, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool44.not = icmp eq i16 %24, 0
  br i1 %tobool44.not, label %do.body34.if.end63_crit_edge, label %land.lhs.true45

do.body34.if.end63_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

land.lhs.true45:                                  ; preds = %do.body34
  %axq_depth = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 5
  %25 = ptrtoint ptr %axq_depth to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %axq_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool46.not = icmp eq i32 %26, 0
  br i1 %tobool46.not, label %if.then47, label %land.lhs.true45.if.end63_crit_edge

land.lhs.true45.if.end63_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then47:                                        ; preds = %land.lhs.true45
  %and50 = and i16 %23, -9
  %27 = ptrtoint ptr %ps_flags to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %and50, ptr %ps_flags, align 4
  %28 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %debug_mask, align 4
  %and54 = and i32 %29, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.then47.if.end63_crit_edge, label %if.then56

if.then47.if.end63_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then56:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  %30 = and i16 %23, 7
  %and59 = zext i16 %30 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.17, i32 noundef %and59) #11
  br label %if.end63

if.end63:                                         ; preds = %if.then56, %if.then47.if.end63_crit_edge, %land.lhs.true45.if.end63_crit_edge, %do.body34.if.end63_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sc_pm_lock, i32 noundef %call37) #11
  %txq1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 30
  %31 = ptrtoint ptr %txq1.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %txq1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp.i = icmp slt i8 %32, 0
  br i1 %cmp.i, label %if.end63.ath_txq_skb_done.exit_crit_edge, label %if.end.i

if.end63.ath_txq_skb_done.exit_crit_edge:         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_txq_skb_done.exit

if.end.i:                                         ; preds = %if.end63
  %conv1.i = zext i8 %32 to i32
  %arrayidx.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 35, i32 5, i32 %conv1.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 4
  %pending_frames.i = getelementptr inbounds %struct.ath_txq, ptr %34, i32 0, i32 11
  %35 = ptrtoint ptr %pending_frames.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pending_frames.i, align 4
  %dec.i = add i32 %36, -1
  store i32 %dec.i, ptr %pending_frames.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp3.i = icmp slt i32 %dec.i, 0
  br i1 %cmp3.i, label %do.end.i, label %if.end.i.ath_txq_skb_done.exit_crit_edge, !prof !88

if.end.i.ath_txq_skb_done.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_txq_skb_done.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 215, i32 noundef 9, ptr noundef null) #11
  %37 = ptrtoint ptr %pending_frames.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %pending_frames.i, align 4
  br label %ath_txq_skb_done.exit

ath_txq_skb_done.exit:                            ; preds = %do.end.i, %if.end.i.ath_txq_skb_done.exit_crit_edge, %if.end63.ath_txq_skb_done.exit_crit_edge
  %status_driver_data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %38 = ptrtoint ptr %status_driver_data to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %sta, ptr %status_driver_data, align 8
  %complete_q = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 12
  %prev.i.i = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 12, i32 0, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i, align 4
  %41 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %complete_q, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.41, ptr %skb, i32 0, i32 1
  %42 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %skb, ptr %40, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.ath_txq, ptr %txq, i32 0, i32 12, i32 1
  %44 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %45, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_send_bar(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath_tid_dequeue(ptr noundef %tid, ptr nocapture noundef writeonly %skb) unnamed_addr #0 align 64 {
entry:
  %txctl.i = alloca %struct.ath_tx_control, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %retry_q = getelementptr inbounds %struct.ath_atx_tid, ptr %tid, i32 0, i32 1
  %0 = ptrtoint ptr %retry_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %retry_q, align 4
  %cmp.i.i = icmp eq ptr %1, %retry_q
  %tobool.not.i6 = icmp eq ptr %1, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i6
  br i1 %tobool.not.i, label %if.then, label %__skb_dequeue.exit

__skb_dequeue.exit:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %qlen.i.i = getelementptr inbounds %struct.ath_atx_tid, ptr %tid, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.41, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %1, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.41, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %prev17.i.i, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %5, ptr %7, align 8
  %10 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %skb, align 4
  br label %if.end

if.then:                                          ; preds = %entry
  %11 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %skb, align 4
  %add.ptr.i = getelementptr i8, ptr %tid, i32 -12
  %an.i = getelementptr inbounds %struct.ath_atx_tid, ptr %tid, i32 0, i32 2
  %12 = ptrtoint ptr %an.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %an.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %txctl.i) #11
  %18 = getelementptr inbounds i8, ptr %txctl.i, i32 12
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 16777215, ptr %18, align 4
  %txq4.i = getelementptr inbounds %struct.ath_atx_tid, ptr %tid, i32 0, i32 3
  %20 = ptrtoint ptr %txq4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %txq4.i, align 4
  %22 = ptrtoint ptr %txctl.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %txctl.i, align 4
  %an5.i = getelementptr inbounds %struct.ath_tx_control, ptr %txctl.i, i32 0, i32 1
  %23 = ptrtoint ptr %an5.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %an5.i, align 4
  %sta.i = getelementptr inbounds %struct.ath_tx_control, ptr %txctl.i, i32 0, i32 2
  %sta7.i = getelementptr inbounds %struct.ath_node, ptr %13, i32 0, i32 1
  %24 = ptrtoint ptr %sta7.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sta7.i, align 4
  %26 = ptrtoint ptr %sta.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %sta.i, align 4
  %call.i = tail call ptr @ieee80211_tx_dequeue(ptr noundef %17, ptr noundef %add.ptr.i) #11
  %tobool.not.i5 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i5, label %if.then.ath_tid_pull.exit_crit_edge, label %if.end.i

if.then.ath_tid_pull.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %ath_tid_pull.exit

if.end.i:                                         ; preds = %if.then
  %call8.i = call fastcc i32 @ath_tx_prepare(ptr noundef %17, ptr noundef nonnull %call.i, ptr noundef nonnull %txctl.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ieee80211_free_txskb(ptr noundef %17, ptr noundef nonnull %call.i) #11
  br label %ath_tid_pull.exit

if.end11.i:                                       ; preds = %if.end.i
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 10
  %27 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %queue_mapping.i.i, align 8
  %conv.i = zext i16 %28 to i32
  %29 = ptrtoint ptr %txq4.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %txq4.i, align 4
  %arrayidx.i = getelementptr %struct.ath_softc, ptr %15, i32 0, i32 35, i32 5, i32 %conv.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i = icmp eq ptr %30, %32
  br i1 %cmp.i, label %if.then15.i, label %if.end11.i.if.end20.i_crit_edge

if.end11.i.if.end20.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

if.then15.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv17.i = trunc i16 %28 to i8
  %txq18.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 30
  %33 = ptrtoint ptr %txq18.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv17.i, ptr %txq18.i, align 2
  %34 = ptrtoint ptr %txq4.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %txq4.i, align 4
  %pending_frames.i = getelementptr inbounds %struct.ath_txq, ptr %35, i32 0, i32 11
  %36 = ptrtoint ptr %pending_frames.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pending_frames.i, align 4
  %inc.i = add i32 %37, 1
  store i32 %inc.i, ptr %pending_frames.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then15.i, %if.end11.i.if.end20.i_crit_edge
  %38 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %skb, align 4
  br label %ath_tid_pull.exit

ath_tid_pull.exit:                                ; preds = %if.end20.i, %if.then10.i, %if.then.ath_tid_pull.exit_crit_edge
  %retval.0.i = phi i32 [ %call8.i, %if.then10.i ], [ 0, %if.end20.i ], [ -2, %if.then.ath_tid_pull.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %txctl.i) #11
  br label %if.end

if.end:                                           ; preds = %ath_tid_pull.exit, %__skb_dequeue.exit
  %ret.0 = phi i32 [ 0, %__skb_dequeue.exit ], [ %retval.0.i, %ath_tid_pull.exit ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_tx_dequeue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_get_tx_rates(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ath9k_btcoex_aggr_limit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_puttxbuf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_txstart(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_cmn_get_hw_crypto_keytype(ptr noundef) local_unnamed_addr #2

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
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @ath_get_rate_txpower(ptr nocapture noundef readonly %sc, ptr nocapture noundef readonly %bf, i8 noundef zeroext %rateidx, i1 noundef zeroext %is_40, i1 noundef zeroext %is_cck) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %tx99_state = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 61
  %2 = ptrtoint ptr %tx99_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx99_state, align 8, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %tpc_enabled = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 137
  %4 = ptrtoint ptr %tpc_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tpc_enabled, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %bf_mpdu = getelementptr inbounds %struct.ath_buf, ptr %bf, i32 0, i32 3
  %6 = ptrtoint ptr %bf_mpdu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bf_mpdu, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 447, i32 %9)
  %cmp = icmp ugt i32 %9, 447
  br i1 %cmp, label %if.else88, label %if.then4

if.then4:                                         ; preds = %if.end
  %tx_power = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 34
  %10 = ptrtoint ptr %tx_power to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tx_power, align 2
  %conv = zext i8 %11 to i32
  br i1 %is_40, label %if.then6, label %if.then4.if.end19_crit_edge

if.then4.if.end19_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then6:                                         ; preds = %if.then4
  %eep_ops = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %eep_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %eep_ops, align 4
  %get_eeprom_rev = getelementptr inbounds %struct.eeprom_ops, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %get_eeprom_rev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_eeprom_rev, align 4
  %call7 = tail call i32 %15(ptr noundef %1) #11
  %conv9 = and i32 %call7, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv9)
  %cmp10.not = icmp eq i32 %conv9, 0
  br i1 %cmp10.not, label %if.then6.if.end17_crit_edge, label %if.then12

if.then6.if.end17_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then12:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %band = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 4
  %16 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load)
  %cmp13 = icmp ult i32 %bf.load, 536870912
  %idxprom = zext i1 %cmp13 to i32
  %ht40PowerIncForPdadc = getelementptr %struct.ath_hw, ptr %1, i32 0, i32 9, i32 0, i32 2, i32 %idxprom, i32 26
  %17 = ptrtoint ptr %ht40PowerIncForPdadc to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ht40PowerIncForPdadc, align 1
  %phi.cast = zext i8 %18 to i32
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.then6.if.end17_crit_edge
  %power_ht40delta.0 = phi i32 [ %phi.cast, %if.then12 ], [ 2, %if.then6.if.end17_crit_edge ]
  %add = add nuw nsw i32 %power_ht40delta.0, %conv
  br label %if.end19

if.end19:                                         ; preds = %if.end17, %if.then4.if.end19_crit_edge
  %txpower.0 = phi i32 [ %add, %if.end17 ], [ %conv, %if.then4.if.end19_crit_edge ]
  %19 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %macVersion, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %20, label %if.else35 [
    i32 384, label %if.end19.if.then34_crit_edge
    i32 192, label %if.end19.if.then34_crit_edge183
    i32 320, label %if.end19.if.then34_crit_edge184
  ]

if.end19.if.then34_crit_edge184:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then34

if.end19.if.then34_crit_edge183:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then34

if.end19.if.then34_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then34

if.then34:                                        ; preds = %if.end19.if.then34_crit_edge, %if.end19.if.then34_crit_edge183, %if.end19.if.then34_crit_edge184
  %sub = add nuw nsw i32 %txpower.0, 10
  br label %if.end47

if.else35:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %20)
  %cmp38 = icmp ugt i32 %20, 127
  br i1 %cmp38, label %if.then40, label %if.else35.if.end61_crit_edge

if.else35.if.end61_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then40:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #13
  %eep_ops41 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 10
  %22 = ptrtoint ptr %eep_ops41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %eep_ops41, align 4
  %get_eeprom = getelementptr inbounds %struct.eeprom_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %get_eeprom to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_eeprom, align 4
  %call42 = tail call i32 %25(ptr noundef %1, i32 noundef 25) #11
  %sext = shl i32 %call42, 24
  %mul = ashr exact i32 %sext, 23
  %sub45 = sub nsw i32 %txpower.0, %mul
  br label %if.end47

if.end47:                                         ; preds = %if.then40, %if.then34
  %txpower.1.ph = phi i32 [ %sub45, %if.then40 ], [ %sub, %if.then34 ]
  %26 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %.pr)
  %cmp50 = icmp ugt i32 %.pr, 127
  br i1 %cmp50, label %land.lhs.true, label %if.end47.if.end61_crit_edge

if.end47.if.end61_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

land.lhs.true:                                    ; preds = %if.end47
  %eep_ops52 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 10
  %27 = ptrtoint ptr %eep_ops52 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %eep_ops52, align 4
  %get_eeprom53 = getelementptr inbounds %struct.eeprom_ops, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %get_eeprom53 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %get_eeprom53, align 4
  %call54 = tail call i32 %30(ptr noundef %1, i32 noundef 17) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %land.lhs.true.if.end61_crit_edge, label %land.lhs.true56

land.lhs.true.if.end61_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

land.lhs.true56:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %sub60 = add nsw i32 %txpower.1.ph, -2
  %spec.select = select i1 %is_cck, i32 %sub60, i32 %txpower.1.ph
  br label %if.end61

if.end61:                                         ; preds = %land.lhs.true56, %land.lhs.true.if.end61_crit_edge, %if.end47.if.end61_crit_edge, %if.else35.if.end61_crit_edge
  %txpower.2 = phi i32 [ %txpower.1.ph, %land.lhs.true.if.end61_crit_edge ], [ %txpower.1.ph, %if.end47.if.end61_crit_edge ], [ %spec.select, %land.lhs.true56 ], [ %txpower.0, %if.else35.if.end61_crit_edge ]
  %31 = tail call i32 @llvm.smax.i32(i32 %txpower.2, i32 0)
  %idxprom65 = zext i8 %rateidx to i32
  %arrayidx66 = getelementptr %struct.ath_hw, ptr %1, i32 0, i32 138, i32 %idxprom65
  %32 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx66, align 1
  %conv69 = zext i8 %33 to i32
  %conv70 = and i32 %31, 255
  %34 = tail call i32 @llvm.umin.i32(i32 %conv70, i32 %conv69)
  %conv79 = trunc i32 %34 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv79)
  %tobool80.not = icmp eq i8 %conv79, 0
  br i1 %tobool80.not, label %land.lhs.true81, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true81:                                  ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %36)
  %cmp84 = icmp ult i32 %36, 128
  %spec.select179 = zext i1 %cmp84 to i8
  br label %cleanup

if.else88:                                        ; preds = %if.end
  %bfs_paprd = getelementptr inbounds %struct.ath_buf, ptr %bf, i32 0, i32 8, i32 1
  %37 = ptrtoint ptr %bfs_paprd to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bfs_paprd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool89.not = icmp eq i8 %38, 0
  br i1 %tobool89.not, label %if.then90, label %if.else130

if.then90:                                        ; preds = %if.else88
  %conv91 = zext i8 %rateidx to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %rateidx)
  %cmp92 = icmp ult i8 %rateidx, 8
  br i1 %cmp92, label %land.lhs.true94, label %if.then90.if.else112_crit_edge

if.then90.if.else112_crit_edge:                   ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else112

land.lhs.true94:                                  ; preds = %if.then90
  %39 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cb.i, align 8
  %and = and i32 %40, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool95.not = icmp eq i32 %and, 0
  br i1 %tobool95.not, label %land.lhs.true94.if.else112_crit_edge, label %if.then96

land.lhs.true94.if.else112_crit_edge:             ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else112

if.then96:                                        ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx98 = getelementptr %struct.ath_hw, ptr %1, i32 0, i32 139, i32 %conv91
  %41 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx98, align 1
  %tx_power99 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 34
  %43 = ptrtoint ptr %tx_power99 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %tx_power99, align 2
  %45 = tail call i8 @llvm.umin.i8(i8 %42, i8 %44)
  br label %cleanup

if.else112:                                       ; preds = %land.lhs.true94.if.else112_crit_edge, %if.then90.if.else112_crit_edge
  %arrayidx115 = getelementptr %struct.ath_hw, ptr %1, i32 0, i32 138, i32 %conv91
  %46 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx115, align 1
  %tx_power116 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 34
  %48 = ptrtoint ptr %tx_power116 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %tx_power116, align 2
  %50 = tail call i8 @llvm.umin.i8(i8 %47, i8 %49)
  br label %cleanup

if.else130:                                       ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #13
  %paprd_training_power = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 119
  %51 = ptrtoint ptr %paprd_training_power to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %paprd_training_power, align 4
  %conv131 = trunc i32 %52 to i8
  br label %cleanup

cleanup:                                          ; preds = %if.else130, %if.else112, %if.then96, %land.lhs.true81, %if.end61.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 63, %lor.lhs.false.cleanup_crit_edge ], [ 63, %entry.cleanup_crit_edge ], [ %conv131, %if.else130 ], [ %45, %if.then96 ], [ %50, %if.else112 ], [ %conv79, %if.end61.cleanup_crit_edge ], [ %spec.select179, %land.lhs.true81 ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ath9k_hw_computetxtime(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_hw_gettxbuf(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta_by_ifaddr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath_tx_rc_status(ptr nocapture noundef readonly %sc, ptr nocapture noundef readonly %bf, ptr nocapture noundef readonly %ts, i32 noundef %nframes, i32 noundef %nbad, i32 noundef %txok) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bf_mpdu = getelementptr inbounds %struct.ath_buf, ptr %bf, i32 0, i32 3
  %0 = ptrtoint ptr %bf_mpdu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bf_mpdu, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc, align 8
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %6 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc_ah, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %txok)
  %tobool.not = icmp eq i32 %txok, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ts_rssi = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 4
  %8 = ptrtoint ptr %ts_rssi to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ts_rssi, align 4
  %conv = sext i8 %9 to i32
  %ack_signal = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 20
  %10 = ptrtoint ptr %ack_signal to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %ack_signal, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ts_rateindex = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 3
  %11 = ptrtoint ptr %ts_rateindex to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ts_rateindex, align 1
  %conv2 = zext i8 %12 to i32
  %max_rates = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 14
  %13 = ptrtoint ptr %max_rates to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %max_rates, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %14)
  %cmp.not = icmp ult i8 %12, %14
  br i1 %cmp.not, label %if.end.if.end19_crit_edge, label %do.end, !prof !92

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 2560, i32 noundef 9, ptr noundef null) #11
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.end.if.end19_crit_edge
  %15 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cb.i, align 8
  %and = and i32 %16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.end19.if.end48_crit_edge, label %if.then27

if.end19.if.end48_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then27:                                        ; preds = %if.end19
  %or = or i32 %16, 1024
  %17 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or, ptr %cb.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %nframes, i32 %nbad)
  %cmp30 = icmp slt i32 %nframes, %nbad
  br i1 %cmp30, label %do.body39, label %if.then27.if.end48_crit_edge, !prof !88

if.then27.if.end48_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

do.body39:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath9k/xmit.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2565, 0\0A.popsection", ""() #11, !srcloc !94
  unreachable

if.end48:                                         ; preds = %if.then27.if.end48_crit_edge, %if.end19.if.end48_crit_edge
  %conv49 = trunc i32 %nframes to i8
  %18 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %ampdu_len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 25
  %19 = ptrtoint ptr %ampdu_len to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv49, ptr %ampdu_len, align 1
  %sub = sub i32 %nframes, %nbad
  %conv50 = trunc i32 %sub to i8
  %ampdu_ack_len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 24
  %20 = ptrtoint ptr %ampdu_ack_len to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv50, ptr %ampdu_ack_len, align 8
  %ts_status = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 2
  %21 = ptrtoint ptr %ts_status to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ts_status, align 2
  %23 = and i8 %22, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp53 = icmp eq i8 %23, 0
  br i1 %cmp53, label %land.lhs.true, label %if.end48.if.end81_crit_edge

if.end48.if.end81_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

land.lhs.true:                                    ; preds = %if.end48
  %24 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cb.i, align 8
  %and56 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %cmp57 = icmp eq i32 %and56, 0
  br i1 %cmp57, label %if.then59, label %land.lhs.true.if.end81_crit_edge

land.lhs.true.if.end81_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.then59:                                        ; preds = %land.lhs.true
  %ts_flags = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 8
  %26 = ptrtoint ptr %ts_flags to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ts_flags, align 4
  %28 = and i8 %27, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool62.not = icmp eq i8 %28, 0
  br i1 %tobool62.not, label %if.then59.if.end81_crit_edge, label %land.lhs.true69, !prof !92

if.then59.if.end81_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

land.lhs.true69:                                  ; preds = %if.then59
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %3, align 2
  %31 = and i16 %30, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %31)
  %cmp.i = icmp eq i16 %31, 2048
  br i1 %cmp.i, label %land.lhs.true72, label %land.lhs.true69.if.end81_crit_edge

land.lhs.true69.if.end81_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

land.lhs.true72:                                  ; preds = %land.lhs.true69
  %tx_trig_level = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 17
  %32 = ptrtoint ptr %tx_trig_level to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %tx_trig_level, align 2
  %34 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sc_ah, align 4
  %max_txtrig_level = getelementptr inbounds %struct.ath_hw, ptr %35, i32 0, i32 5, i32 13
  %36 = ptrtoint ptr %max_txtrig_level to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %max_txtrig_level, align 2
  %38 = zext i8 %37 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %38)
  %cmp76.not = icmp ult i16 %33, %38
  br i1 %cmp76.not, label %land.lhs.true72.if.end81_crit_edge, label %if.then78

land.lhs.true72.if.end81_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.then78:                                        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #13
  %max_rate_tries = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 16
  %39 = ptrtoint ptr %max_rate_tries to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %max_rate_tries, align 1
  %count = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %18, i32 0, i32 %conv2, i32 1
  %41 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %bf.load = load i16, ptr %count, align 1
  %bf.value = zext i8 %40 to i16
  %bf.shl = shl i16 %bf.value, 11
  %bf.clear = and i16 %bf.load, 2047
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %count, align 1
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %land.lhs.true72.if.end81_crit_edge, %land.lhs.true69.if.end81_crit_edge, %if.then59.if.end81_crit_edge, %land.lhs.true.if.end81_crit_edge, %if.end48.if.end81_crit_edge
  %i.0140 = add i8 %12, 1
  %42 = ptrtoint ptr %max_rates to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %max_rates, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %i.0140, i8 %43)
  %cmp87141 = icmp ult i8 %i.0140, %43
  br i1 %cmp87141, label %for.body.preheader, label %if.end81.for.end_crit_edge

if.end81.for.end_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %if.end81
  %44 = zext i8 %i.0140 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ %44, %for.body.preheader ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %i.0142 = phi i8 [ %i.0140, %for.body.preheader ], [ %i.0, %for.body.for.body_crit_edge ]
  %arrayidx91 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %18, i32 0, i32 %indvars.iv
  %count92 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %18, i32 0, i32 %indvars.iv, i32 1
  %45 = ptrtoint ptr %count92 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %bf.load93 = load i16, ptr %count92, align 1
  %bf.clear94 = and i16 %bf.load93, 2047
  store i16 %bf.clear94, ptr %count92, align 1
  %46 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -1, ptr %arrayidx91, align 1
  %i.0 = add nuw i8 %i.0142, 1
  %47 = ptrtoint ptr %max_rates to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %max_rates, align 1
  %cmp87 = icmp ult i8 %i.0, %48
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  br i1 %cmp87, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end81.for.end_crit_edge
  %ts_longretry = getelementptr inbounds %struct.ath_tx_status, ptr %ts, i32 0, i32 6
  %49 = ptrtoint ptr %ts_longretry to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ts_longretry, align 2
  %count105 = getelementptr [4 x %struct.ieee80211_tx_rate], ptr %18, i32 0, i32 %conv2, i32 1
  %51 = ptrtoint ptr %count105 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %bf.load106 = load i16, ptr %count105, align 1
  %52 = add i8 %50, 1
  %bf.value107 = zext i8 %52 to i16
  %bf.shl108 = shl i16 %bf.value107, 11
  %bf.clear109 = and i16 %bf.load106, 2047
  %bf.set110 = or i16 %bf.shl108, %bf.clear109
  store i16 %bf.set110, ptr %count105, align 1
  %tx_time = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 28
  %53 = ptrtoint ptr %tx_time to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %tx_time, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_dynack_sample_tx_ts(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_register_airtime(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_eosp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_queue_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_setup_statusring(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !19, !20, !22, !24, !26, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !54, !55, !56, !58, !59, !61, !63, !65, !67, !69, !71, !72, !73}
!llvm.named.register.sp = !{!75}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/xmit.c", i32 131, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath9k/xmit.c", i32 1565, i32 2}
!5 = !{ptr @__func__.ath_tx_aggr_start, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__func__.ath_tx_aggr_stop, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath9k/xmit.c", i32 1603, i32 2}
!8 = !{ptr @__func__.ath_tx_aggr_sleep, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath9k/xmit.c", i32 1618, i32 2}
!10 = !{ptr @__func__.ath_tx_aggr_wakeup, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath9k/xmit.c", i32 1636, i32 2}
!12 = !{ptr @ath_txq_setup.subtype_txq_to_hwq, !13, !"subtype_txq_to_hwq", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath9k/xmit.c", i32 1743, i32 19}
!14 = !{ptr @ath_txq_setup.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath9k/xmit.c", i32 1798, i32 3}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/ath9k/xmit.c", i32 1828, i32 3}
!19 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath9k/xmit.c", i32 1937, i32 3}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath9k/xmit.c", i32 1988, i32 3}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath9k/xmit.c", i32 2712, i32 4}
!26 = !{ptr @ath_tx_init.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath9k/xmit.c", i32 2813, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/ath9k/xmit.c", i32 2816, i32 7}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/ath9k/xmit.c", i32 2818, i32 3}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/ath9k/xmit.c", i32 2824, i32 7}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/ath9k/xmit.c", i32 2826, i32 3}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/ath9k/xmit.c", i32 2906, i32 4}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/ath9k/xmit.c", i32 2921, i32 3}
!41 = !{ptr @bits_per_symbol, !42, !"bits_per_symbol", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/ath9k/xmit.c", i32 38, i32 12}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ath/ath9k/xmit.c", i32 2457, i32 2}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/ath9k/xmit.c", i32 2485, i32 3}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ath/ath9k/xmit.c", i32 994, i32 9}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ath/ath9k/xmit.c", i32 166, i32 12}
!51 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!54 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!58 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ath/ath9k/xmit.c", i32 2043, i32 2}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/ath/ath9k/xmit.c", i32 2055, i32 4}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/ath/ath9k/xmit.c", i32 2067, i32 3}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/ath/ath9k/xmit.c", i32 2208, i32 3}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/ath/ath9k/xmit.c", i32 2235, i32 3}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!71 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/ath/ath9k/xmit.c", i32 2613, i32 2}
!75 = !{!"sp"}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i64 2149385926}
!86 = !{i8 0, i8 2}
!87 = !{i64 2149386192}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = !{i64 2157806139, i64 2157806642, i64 2157806176, i64 2157806232, i64 2157806266, i64 2157806290, i64 2157806331, i64 2157806352, i64 2157806380, i64 2157806414}
!90 = !{!"auto-init"}
!91 = !{!"branch_weights", i32 4001, i32 1}
!92 = !{!"branch_weights", i32 2000, i32 1}
!93 = !{i64 2157855224, i64 2157855727, i64 2157855261, i64 2157855317, i64 2157855351, i64 2157855375, i64 2157855416, i64 2157855437, i64 2157855465, i64 2157855499}
!94 = !{i64 2157871512, i64 2157872015, i64 2157871549, i64 2157871605, i64 2157871639, i64 2157871663, i64 2157871704, i64 2157871725, i64 2157871753, i64 2157871787}
