; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/htc_drv_main.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/htc_drv_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ath9k_htc_priv = type { ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i32, i32, i32, %struct.ath9k_hw_cal_data, %struct.ath_spec_scan_priv, %struct.spinlock, %struct.ath_beacon_config, %struct.htc_beacon, %struct.ath9k_htc_rx, %struct.ath9k_htc_tx, %struct.tasklet_struct, %struct.tasklet_struct, %struct.delayed_work, %struct.tasklet_struct, %struct.work_struct, %struct.work_struct, %struct.mutex, i32, i8, i8, i32, i8, [32 x i8], %struct.led_classdev, %struct.work_struct, i32, [4 x i32], %struct.ath_btcoex, %struct.delayed_work, %struct.delayed_work, %struct.ath9k_debug, %struct.mutex, ptr }
%struct.ath9k_hw_cal_data = type { i16, i16, i32, i32, i8, i8, [2 x i8], [3 x i16], [3 x [24 x i32]], [3 x i32], [8 x [3 x i32]], [3 x [16 x i32]], [3 x [6 x i32]], [6 x %struct.ath9k_nfcal_hist] }
%struct.ath9k_nfcal_hist = type { [5 x i16], i8, i16, i8 }
%struct.ath_spec_scan_priv = type { ptr, ptr, i32, %struct.ath_spec_scan }
%struct.ath_spec_scan = type { i8, i8, i8, i8, i8, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.ath_beacon_config = type { ptr, i32, i16, i16, i8, i8, i8, i32, i32 }
%struct.htc_beacon = type { i32, [2 x ptr], i32, i32, i32, i32 }
%struct.ath9k_htc_rx = type { %struct.list_head, %struct.spinlock, i8 }
%struct.list_head = type { ptr, ptr }
%struct.ath9k_htc_tx = type { i8, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, [8 x i32], %struct.timer_list, %struct.spinlock, i8 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.130, i32 }
%struct.atomic_t = type { i32 }
%union.anon.130 = type { ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ath_btcoex = type { i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ath9k_debug = type { ptr, %struct.ath_tx_stats, %struct.ath_rx_stats, %struct.ath_skbrx_stats }
%struct.ath_tx_stats = type { i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.ath_rx_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [39 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_skbrx_stats = type { i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ath_hw = type { %struct.ath_ops, ptr, ptr, %struct.ath_common, %struct.ath9k_hw_version, %struct.ath9k_ops_config, %struct.ath9k_hw_capabilities, [38 x %struct.ath9k_channel], ptr, %union.anon.125, ptr, i8, i8, i8, i8, i8, i8, i16, [6 x i32], %struct.ath_nf_limits, %struct.ath_nf_limits, i16, i32, i32, i32, i16, i8, i8, i32, i32, i8, ptr, %struct.ath9k_pacal_info, %struct.ar5416Stats, [10 x %struct.ath9k_tx_queue_info], [4 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i8, i32, i32, i32, %struct.ath9k_cal_list, %struct.ath9k_cal_list, %struct.ath9k_cal_list, ptr, ptr, ptr, %union.anon.126, %union.anon.127, %union.anon.128, %union.anon.129, i16, i8, i32, i32, %struct.ath_hw_private_ops, %struct.ath_hw_ops, ptr, i32, i32, i32, i32, i32, i32, %struct.ar5416AniState, %struct.ath_btcoex_hw, i32, i8, i8, %struct.ath_hw_radar_conf, [22 x i32], i32, i32, i32, i32, i32, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.ar5416IniArray, [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], [3 x %struct.ar5416IniArray], i32, i32, %struct.ath_gen_timer_table, ptr, i32, i32, i16, i16, i32, i32, i8, i32, i32, i32, i32, i8, [32 x i32], [32 x i8], i32, i32, %struct.ath9k_hw_wow, i8, ptr, ptr, i8, i8, ptr, ptr, i32, %struct.ath_dynack, i8, [36 x i8], [36 x i8], i8, i32, i32 }
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
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ath9k_hw_version = type { i32, i16, i16, i32, i16, i16, i16, i16, i32 }
%struct.ath9k_ops_config = type { i32, i32, i8, i32, i8, i32, i32, i32, i32, i8, i32, i8, i8, i8, i16, i16, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.ath9k_hw_capabilities = type { i32, i16, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8 }
%struct.ath9k_channel = type { ptr, i16, i16, i16 }
%union.anon.125 = type { %struct.ar5416_eeprom_def }
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
%union.anon.126 = type { [3 x i32] }
%union.anon.127 = type { [3 x i32] }
%union.anon.128 = type { [3 x i32] }
%union.anon.129 = type { [3 x i32] }
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
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ath9k_htc_cap_target = type { i32, i8, i8, i8, i8 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.124, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.anon.124 = type { i32, i16 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ath9k_vif_iter_data = type { ptr, [6 x i8] }
%struct.ath9k_htc_target_vif = type <{ i8, i8, [6 x i8], i8, i16, i8 }>
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.131, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.131 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.132] }
%struct.anon.132 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.ath9k_htc_target_sta = type <{ [6 x i8], [6 x i8], i8, i8, i8, i16, i16, i16, i8 }>
%struct.ath9k_htc_target_rate = type { i8, i8, i32, %struct.ath9k_htc_rate }
%struct.ath9k_htc_rate = type { %struct.ath9k_htc_rateset, %struct.ath9k_htc_rateset }
%struct.ath9k_htc_rateset = type { i8, [30 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.ieee80211_ampdu_params = type { i32, ptr, i16, i16, i16, i8, i16 }
%struct.ath9k_htc_target_rate_mask = type <{ i8, i8, i32, i16 }>
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.123, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.possible_net_t = type { ptr }
%struct.anon.123 = type { i64, i64, i8 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ath9k_htc_target_aggr = type { i8, i8, i8, i8 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Unable to reset device (%u Mhz) reset status %d\0A\00", [47 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"longcal @%lu\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"shortcal @%lu\0A\00", [17 x i8] zeroinitializer }, align 32
@ath9k_htc_ops = dso_local global { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @ath9k_htc_tx, ptr @ath9k_htc_start, ptr @ath9k_htc_stop, ptr null, ptr null, ptr null, ptr @ath9k_htc_add_interface, ptr null, ptr @ath9k_htc_remove_interface, ptr @ath9k_htc_config, ptr @ath9k_htc_bss_info_changed, ptr null, ptr null, ptr null, ptr @ath9k_htc_configure_filter, ptr null, ptr null, ptr @ath9k_htc_set_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ath9k_htc_sw_scan_start, ptr @ath9k_htc_sw_scan_complete, ptr @ath9k_htc_get_stats, ptr null, ptr null, ptr @ath9k_htc_set_rts_threshold, ptr @ath9k_htc_sta_add, ptr @ath9k_htc_sta_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ath9k_htc_sta_rc_update, ptr null, ptr null, ptr @ath9k_htc_conf_tx, ptr @ath9k_htc_get_tsf, ptr @ath9k_htc_set_tsf, ptr null, ptr @ath9k_htc_reset_tsf, ptr null, ptr @ath9k_htc_ampdu_action, ptr null, ptr @ath9k_htc_rfkill_poll_state, ptr @ath9k_htc_set_coverage_class, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ath9k_htc_get_antenna, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ath9k_htc_set_bitrate_mask, ptr null, ptr null, ptr null, ptr @ath9k_htc_get_et_sset_count, ptr @ath9k_htc_get_et_stats, ptr @ath9k_htc_get_et_strings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ath9k_htc_channel_switch_beacon, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No room for padding\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"No free TX slot\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Tx failed\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Starting driver with initial channel: %d MHz\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Unable to reset hardware; reset status %d (freq %u MHz)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to update capability in target\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Device not present\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Driver halt\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Unable to remove station entry for monitor mode\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Removed a monitor interface at idx: %d, sta idx: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Unable to remove monitor interface at idx: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Interface type %d not yet supported\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Attach a VIF of type: %d at idx: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to add station entry for: %pM\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Added a station entry for: %pM (idx: %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Added a station entry for VIF %d (idx: %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unable to remove interface at idx: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Detach Interface at idx: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unable to remove station entry for: %pM\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Removed a station entry for: %pM (idx: %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Removed a station entry for VIF %d (idx: %d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Set channel: %d MHz\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable to set channel\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Unable to add station entry for monitor mode\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Attached a monitor interface at idx: %d, sta idx: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to attach a monitor interface\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(%u MHz) -> (%u MHz), HT: %d, HT40: %d fastcc: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Unable to reset channel (%u Mhz) reset status %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"BSS Changed ASSOC %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Beacon enabled for BSS: %pM\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Beacon disabled for BSS: %pM\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Beacon interval changed for BSS: %pM\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"BSSID: %pM aid: 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Updated target sta: %pM, rate caps: 0x%X\0A\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Unable to initialize Rate information on target\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Unable to configure filter on invalid state\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Set HW RX filter: 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@htc_modparam_nohwcrypt = external dso_local local_unnamed_addr global i32, align 4
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Set HW Key\0A\00", [20 x i8] zeroinitializer }, align 32
@ath9k_htc_sta_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&ista->rc_update_work)\00", [55 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Supported rates for sta: %pM updated, rate caps: 0x%X\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Unable to update supported rates for sta: %pM\0A\00", [49 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.49 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"Configure tx [queue/hwq] [%d/%d],  aifs: %d, cw_min: %d, cw_max: %d, txop: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TXQ Update failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unknown AMPDU action\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unable to %s TX aggregation for (%pM, %d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stop\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s TX aggregation for (%pM, %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Starting\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Stopping\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Unable to set 2G rate mask for interface at idx: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Unable to set 5G rate mask for interface at idx: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Set bitrate masks: 0x%x, 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/ath/ath9k/htc_drv_main.c\00", [50 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.62 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.65 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.66 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.67 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 7]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 7]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 1027074, i64 1027076]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.72 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 213, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 790, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 802, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant [14 x i8] c"ath9k_htc_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1870, i32 22 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 878, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 887, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 893, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 921, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 934, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 954, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 987, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1030, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 451, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 459, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 342, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1064, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1107, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 508, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 515, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 519, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1135, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1169, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 552, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 559, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 563, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1212, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1217, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 413, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 422, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 434, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 272, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 280, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1523, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1550, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1564, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1585, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1481, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 697, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 695, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 723, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 652, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1271, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1282, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1445, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1329, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1305, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1309, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1395, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1402, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1697, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 726, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 730, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1780, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1791, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1797, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.265 = private constant [49 x i8] c"../drivers/net/wireless/ath/ath9k/htc_drv_main.c\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1864, i32 6 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ath9k_htc_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @ath9k_htc_sta_add.__key, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_htc_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_htc_sta_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ath9k_htc_setpower(ptr noundef %priv, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %htc_pm_lock = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %htc_pm_lock, i32 noundef 0) #12
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %call = tail call zeroext i1 @ath9k_hw_setpower(ptr noundef %1, i32 noundef %mode) #12
  tail call void @mutex_unlock(ptr noundef %htc_pm_lock) #12
  ret i1 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_setpower(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_ps_wakeup(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %htc_pm_lock = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %htc_pm_lock, i32 noundef 0) #12
  %ps_usecount = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 48
  %0 = ptrtoint ptr %ps_usecount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ps_usecount, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %ps_usecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah, align 4
  %call = tail call zeroext i1 @ath9k_hw_setpower(ptr noundef %3, i32 noundef 0) #12
  br label %unlock

unlock:                                           ; preds = %if.end, %entry.unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %htc_pm_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_ps_restore(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %reset = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reset) #12
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %reset, align 1, !annotation !132
  %htc_pm_lock = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %htc_pm_lock, i32 noundef 0) #12
  %ps_usecount = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 48
  %1 = ptrtoint ptr %ps_usecount to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ps_usecount, align 4
  %dec = add i32 %2, -1
  store i32 %dec, ptr %ps_usecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end:                                           ; preds = %entry
  %ps_idle = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 50
  %3 = ptrtoint ptr %ps_idle to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ps_idle, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %5 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ah, align 4
  %call = tail call zeroext i1 @ath9k_hw_setrxabort(ptr noundef %6, i1 noundef zeroext true) #12
  %7 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ah, align 4
  %call3 = call zeroext i1 @ath9k_hw_stopdmarecv(ptr noundef %8, ptr noundef nonnull %reset) #12
  %9 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ah, align 4
  %call5 = call zeroext i1 @ath9k_hw_setpower(ptr noundef %10, i32 noundef 1) #12
  br label %unlock

if.else:                                          ; preds = %if.end
  %ps_enabled = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 49
  %11 = ptrtoint ptr %ps_enabled to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ps_enabled, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool6.not = icmp eq i8 %12, 0
  br i1 %tobool6.not, label %if.else.unlock_crit_edge, label %if.then7

if.else.unlock_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %ah8 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %13 = ptrtoint ptr %ah8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ah8, align 4
  %call9 = tail call zeroext i1 @ath9k_hw_setpower(ptr noundef %14, i32 noundef 2) #12
  br label %unlock

unlock:                                           ; preds = %if.then7, %if.else.unlock_crit_edge, %if.then1, %entry.unlock_crit_edge
  call void @mutex_unlock(ptr noundef %htc_pm_lock) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reset) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_setrxabort(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_stopdmarecv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_ps_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %htc_pm_lock.i = getelementptr i8, ptr %work, i32 88
  tail call void @mutex_lock_nested(ptr noundef %htc_pm_lock.i, i32 noundef 0) #12
  %ah.i = getelementptr i8, ptr %work, i32 -1736
  %0 = ptrtoint ptr %ah.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah.i, align 4
  %call.i = tail call zeroext i1 @ath9k_hw_setpower(ptr noundef %1, i32 noundef 0) #12
  tail call void @mutex_unlock(ptr noundef %htc_pm_lock.i) #12
  tail call void @mutex_lock_nested(ptr noundef %htc_pm_lock.i, i32 noundef 0) #12
  %2 = ptrtoint ptr %ah.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah.i, align 4
  %call.i5 = tail call zeroext i1 @ath9k_hw_setpower(ptr noundef %3, i32 noundef 2) #12
  tail call void @mutex_unlock(ptr noundef %htc_pm_lock.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_reset(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %htc_mode = alloca i16, align 2
  %cmd_rsp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ah1 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ah1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah1, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %hw = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chandef, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %htc_mode) #12
  %6 = ptrtoint ptr %htc_mode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %htc_mode, align 2, !annotation !132
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd_rsp) #12
  %7 = ptrtoint ptr %cmd_rsp to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %cmd_rsp, align 1, !annotation !132
  %mutex = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 62
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %htc_pm_lock.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %htc_pm_lock.i, i32 noundef 0) #12
  %ps_usecount.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 48
  %8 = ptrtoint ptr %ps_usecount.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ps_usecount.i, align 4
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %ps_usecount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.ath9k_htc_ps_wakeup.exit_crit_edge

entry.ath9k_htc_ps_wakeup.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_ps_wakeup.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %ah1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ah1, align 4
  %call.i = tail call zeroext i1 @ath9k_hw_setpower(ptr noundef %11, i32 noundef 0) #12
  br label %ath9k_htc_ps_wakeup.exit

ath9k_htc_ps_wakeup.exit:                         ; preds = %if.end.i, %entry.ath9k_htc_ps_wakeup.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %htc_pm_lock.i) #12
  %12 = ptrtoint ptr %ah1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ah1, align 4
  %ani_work.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 43
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ani_work.i) #12
  %op_flags.i = getelementptr inbounds %struct.ath_hw, ptr %13, i32 0, i32 3, i32 5
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %op_flags.i) #12
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_stop_queues(ptr noundef %15) #12
  %cleanup_timer = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 10
  %call3 = tail call i32 @del_timer_sync(ptr noundef %cleanup_timer) #12
  tail call void @ath9k_htc_tx_drain(ptr noundef %priv) #12
  %wmi = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 4
  %16 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wmi, align 4
  %call4 = call i32 @ath9k_wmi_cmd(ptr noundef %17, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef nonnull %cmd_rsp, i32 noundef 1, i32 noundef 200) #12
  %18 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wmi, align 4
  %call7 = call i32 @ath9k_wmi_cmd(ptr noundef %19, i32 noundef 11, ptr noundef null, i32 noundef 0, ptr noundef nonnull %cmd_rsp, i32 noundef 1, i32 noundef 200) #12
  %20 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wmi, align 4
  %call12 = call i32 @ath9k_wmi_cmd(ptr noundef %21, i32 noundef 13, ptr noundef null, i32 noundef 0, ptr noundef nonnull %cmd_rsp, i32 noundef 1, i32 noundef 200) #12
  call void @ath9k_wmi_event_drain(ptr noundef %priv) #12
  %caldata15 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 34
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %curchan, align 4
  %call16 = call i32 @ath9k_hw_reset(ptr noundef %1, ptr noundef %23, ptr noundef %caldata15, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %ath9k_htc_ps_wakeup.exit.if.end_crit_edge, label %if.then

ath9k_htc_ps_wakeup.exit.if.end_crit_edge:        ; preds = %ath9k_htc_ps_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %ath9k_htc_ps_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %5, i32 0, i32 1
  %24 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %center_freq, align 4
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1, i32 noundef %25, i32 noundef %call16) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %ath9k_htc_ps_wakeup.exit.if.end_crit_edge
  %curtxpow = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 25
  %26 = ptrtoint ptr %curtxpow to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %curtxpow, align 2
  %txpowlimit = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 26
  %28 = ptrtoint ptr %txpowlimit to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %txpowlimit, align 4
  call void @ath9k_cmn_update_txpow(ptr noundef %1, i16 noundef zeroext %27, i16 noundef zeroext %29, ptr noundef %curtxpow) #12
  %30 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wmi, align 4
  %call20 = call i32 @ath9k_wmi_cmd(ptr noundef %31, i32 noundef 12, ptr noundef null, i32 noundef 0, ptr noundef nonnull %cmd_rsp, i32 noundef 1, i32 noundef 200) #12
  call void @ath9k_host_rx_init(ptr noundef %priv) #12
  %32 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %curchan, align 4
  %channelFlags.i = getelementptr inbounds %struct.ath9k_channel, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %channelFlags.i, align 2
  %36 = and i16 %35, 1
  %37 = xor i16 %36, 1
  %38 = ptrtoint ptr %htc_mode to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %htc_mode, align 2
  %39 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wmi, align 4
  %call27 = call i32 @ath9k_wmi_cmd(ptr noundef %40, i32 noundef 15, ptr noundef nonnull %htc_mode, i32 noundef 2, ptr noundef nonnull %cmd_rsp, i32 noundef 1, i32 noundef 200) #12
  %41 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wmi, align 4
  %call32 = call i32 @ath9k_wmi_cmd(ptr noundef %42, i32 noundef 5, ptr noundef null, i32 noundef 0, ptr noundef nonnull %cmd_rsp, i32 noundef 1, i32 noundef 200) #12
  %htc = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 3
  %43 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %htc, align 4
  call void @htc_start(ptr noundef %44) #12
  call fastcc void @ath9k_htc_vif_reconfig(ptr noundef %priv)
  %45 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw, align 4
  call void @ieee80211_wake_queues(ptr noundef %46) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %47, 5
  %call39 = call i32 @mod_timer(ptr noundef %cleanup_timer, i32 noundef %add) #12
  call void @ath9k_htc_ps_restore(ptr noundef %priv)
  call void @mutex_unlock(ptr noundef %mutex) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_rsp) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %htc_mode) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_stop_ani(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %ani_work = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 43
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ani_work) #12
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %op_flags) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_tx_drain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_wmi_cmd(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_wmi_event_drain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_hw_reset(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_cmn_update_txpow(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_host_rx_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @htc_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath9k_htc_vif_reconfig(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rearm_ani = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 29
  %0 = ptrtoint ptr %rearm_ani to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %rearm_ani, align 2
  %reconfig_beacon = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 30
  %1 = ptrtoint ptr %reconfig_beacon to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %reconfig_beacon, align 1
  %hw = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @ath9k_htc_vif_iter, ptr noundef %priv) #12
  %4 = ptrtoint ptr %rearm_ani to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rearm_ani, align 2, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ah.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %6 = ptrtoint ptr %ah.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ah.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %call1.i = tail call i32 @jiffies_to_msecs(i32 noundef %8) #12
  %longcal_timer.i = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 3, i32 6, i32 1
  %9 = ptrtoint ptr %longcal_timer.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call1.i, ptr %longcal_timer.i, align 4
  %shortcal_timer.i = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 3, i32 6, i32 2
  %10 = ptrtoint ptr %shortcal_timer.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call1.i, ptr %shortcal_timer.i, align 4
  %checkani_timer.i = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 3, i32 6, i32 4
  %11 = ptrtoint ptr %checkani_timer.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call1.i, ptr %checkani_timer.i, align 4
  %op_flags.i = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 3, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %op_flags.i) #12
  %hw.i = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw.i, align 4
  %ani_work.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 43
  tail call void @ieee80211_queue_delayed_work(ptr noundef %13, ptr noundef %ani_work.i, i32 noundef 10) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %reconfig_beacon to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reconfig_beacon, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool3.not = icmp eq i8 %15, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then4:                                         ; preds = %if.end
  %htc_pm_lock.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %htc_pm_lock.i, i32 noundef 0) #12
  %ps_usecount.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 48
  %16 = ptrtoint ptr %ps_usecount.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ps_usecount.i, align 4
  %inc.i = add i32 %17, 1
  store i32 %inc.i, ptr %ps_usecount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then4.ath9k_htc_ps_wakeup.exit_crit_edge

if.then4.ath9k_htc_ps_wakeup.exit_crit_edge:      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_ps_wakeup.exit

if.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %ah.i15 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %18 = ptrtoint ptr %ah.i15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ah.i15, align 4
  %call.i = tail call zeroext i1 @ath9k_hw_setpower(ptr noundef %19, i32 noundef 0) #12
  br label %ath9k_htc_ps_wakeup.exit

ath9k_htc_ps_wakeup.exit:                         ; preds = %if.end.i, %if.then4.ath9k_htc_ps_wakeup.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %htc_pm_lock.i) #12
  tail call void @ath9k_htc_beacon_reconfig(ptr noundef %priv) #12
  tail call void @ath9k_htc_ps_restore(ptr noundef %priv)
  br label %if.end5

if.end5:                                          ; preds = %ath9k_htc_ps_wakeup.exit, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath9k_htc_update_cap_target(ptr nocapture noundef readonly %priv, i8 noundef zeroext %enable_coex) local_unnamed_addr #0 align 64 {
entry:
  %tcap = alloca %struct.ath9k_htc_cap_target, align 8
  %cmd_rsp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tcap) #12
  %0 = getelementptr inbounds %struct.ath9k_htc_cap_target, ptr %tcap, i32 0, i32 2
  %1 = getelementptr inbounds %struct.ath9k_htc_cap_target, ptr %tcap, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd_rsp) #12
  %2 = ptrtoint ptr %cmd_rsp to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %cmd_rsp, align 1, !annotation !132
  %3 = ptrtoint ptr %tcap to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 281474959933440, ptr %tcap, align 8
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %enable_coex, ptr %0, align 1
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %5 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ah, align 4
  %tx_chainmask = getelementptr inbounds %struct.ath_hw, ptr %6, i32 0, i32 6, i32 2
  %7 = ptrtoint ptr %tx_chainmask to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tx_chainmask, align 2
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %1, align 2
  %wmi = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 4
  %10 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wmi, align 4
  %call = call i32 @ath9k_wmi_cmd(ptr noundef %11, i32 noundef 24, ptr noundef nonnull %tcap, i32 noundef 8, ptr noundef nonnull %cmd_rsp, i32 noundef 1, i32 noundef 200) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_rsp) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tcap) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_start_ani(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %call1 = tail call i32 @jiffies_to_msecs(i32 noundef %2) #12
  %longcal_timer = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 6, i32 1
  %3 = ptrtoint ptr %longcal_timer to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call1, ptr %longcal_timer, align 4
  %shortcal_timer = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 6, i32 2
  %4 = ptrtoint ptr %shortcal_timer to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call1, ptr %shortcal_timer, align 4
  %checkani_timer = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 6, i32 4
  %5 = ptrtoint ptr %checkani_timer to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call1, ptr %checkani_timer, align 4
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %op_flags) #12
  %hw = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %ani_work = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 43
  tail call void @ieee80211_queue_delayed_work(ptr noundef %7, ptr noundef %ani_work, i32 noundef 10) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_ani_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1620
  %ah1 = getelementptr i8, ptr %work, i32 -1612
  %0 = ptrtoint ptr %ah1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah1, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %call2 = tail call i32 @jiffies_to_msecs(i32 noundef %2) #12
  %opmode = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 28
  %3 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %opmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp eq i32 %4, 3
  %cond = select i1 %cmp, i32 100, i32 1000
  %power_mode = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 29
  %5 = ptrtoint ptr %power_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %power_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3.not = icmp eq i32 %6, 0
  br i1 %cmp3.not, label %if.end, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

if.end:                                           ; preds = %entry
  %ani = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 6
  %longcal_timer = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 6, i32 1
  %7 = ptrtoint ptr %longcal_timer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %longcal_timer, align 4
  %sub = sub i32 %call2, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 29999, i32 %sub)
  %cmp4 = icmp ugt i32 %sub, 29999
  br i1 %cmp4, label %if.then5, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then5:                                         ; preds = %if.end
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug_mask, align 4
  %and = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then5.do.end_crit_edge, label %if.then6

if.then5.do.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then6:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.3, i32 noundef %11) #12
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.then5.do.end_crit_edge
  %12 = ptrtoint ptr %longcal_timer to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call2, ptr %longcal_timer, align 4
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.end.if.end10_crit_edge
  %13 = ptrtoint ptr %ani to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ani, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp13.not = icmp eq i8 %14, 1
  br i1 %cmp13.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end10
  %shortcal_timer = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 6, i32 2
  %15 = ptrtoint ptr %shortcal_timer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %shortcal_timer, align 4
  %sub17 = sub i32 %call2, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub17, i32 %cond)
  %cmp18.not = icmp ult i32 %sub17, %cond
  br i1 %cmp18.not, label %if.then15.if.end50_crit_edge, label %if.then20

if.then15.if.end50_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then20:                                        ; preds = %if.then15
  %debug_mask22 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %debug_mask22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %debug_mask22, align 4
  %and23 = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.then20.do.end28_crit_edge, label %if.then25

if.then20.do.end28_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end28

if.then25:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.4, i32 noundef %19) #12
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %if.then20.do.end28_crit_edge
  %20 = ptrtoint ptr %shortcal_timer to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call2, ptr %shortcal_timer, align 4
  %resetcal_timer = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 6, i32 3
  br label %if.end50.sink.split

if.else:                                          ; preds = %if.end10
  %resetcal_timer34 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 6, i32 3
  %21 = ptrtoint ptr %resetcal_timer34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %resetcal_timer34, align 4
  %sub35 = sub i32 %call2, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1199999, i32 %sub35)
  %cmp36 = icmp ugt i32 %sub35, 1199999
  br i1 %cmp36, label %if.then38, label %if.else.if.end50_crit_edge

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then38:                                        ; preds = %if.else
  %call39 = tail call zeroext i1 @ath9k_hw_reset_calvalid(ptr noundef %1) #12
  %frombool = zext i1 %call39 to i8
  %23 = ptrtoint ptr %ani to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %frombool, ptr %ani, align 4
  br i1 %call39, label %if.then38.if.end50.sink.split_crit_edge, label %if.then38.if.end50_crit_edge

if.then38.if.end50_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then38.if.end50.sink.split_crit_edge:          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.sink.split

if.end50.sink.split:                              ; preds = %if.then38.if.end50.sink.split_crit_edge, %do.end28
  %resetcal_timer34.sink = phi ptr [ %resetcal_timer, %do.end28 ], [ %resetcal_timer34, %if.then38.if.end50.sink.split_crit_edge ]
  %24 = xor i1 %cmp13.not, true
  %25 = ptrtoint ptr %resetcal_timer34.sink to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call2, ptr %resetcal_timer34.sink, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end50.sink.split, %if.then38.if.end50_crit_edge, %if.else.if.end50_crit_edge, %if.then15.if.end50_crit_edge
  %shortcal.0.off0 = phi i1 [ false, %if.then15.if.end50_crit_edge ], [ false, %if.then38.if.end50_crit_edge ], [ false, %if.else.if.end50_crit_edge ], [ %24, %if.end50.sink.split ]
  %checkani_timer = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 6, i32 4
  %26 = ptrtoint ptr %checkani_timer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %checkani_timer, align 4
  %sub52 = sub i32 %call2, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %sub52)
  %cmp53 = icmp ugt i32 %sub52, 99
  br i1 %cmp53, label %if.end58.thread, label %if.end58

if.end58.thread:                                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %checkani_timer to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call2, ptr %checkani_timer, align 4
  %brmerge156 = or i1 %cmp4, %shortcal.0.off0
  br label %if.then66

if.end58:                                         ; preds = %if.end50
  %brmerge = or i1 %cmp4, %shortcal.0.off0
  br i1 %brmerge, label %if.end58.if.then66_crit_edge, label %if.end58.cond.end_crit_edge

if.end58.cond.end_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

if.end58.if.then66_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then66

if.then66:                                        ; preds = %if.end58.if.then66_crit_edge, %if.end58.thread
  %brmerge158 = phi i1 [ %brmerge156, %if.end58.thread ], [ true, %if.end58.if.then66_crit_edge ]
  %htc_pm_lock.i = getelementptr i8, ptr %work, i32 212
  tail call void @mutex_lock_nested(ptr noundef %htc_pm_lock.i, i32 noundef 0) #12
  %ps_usecount.i = getelementptr i8, ptr %work, i32 304
  %29 = ptrtoint ptr %ps_usecount.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ps_usecount.i, align 4
  %inc.i = add i32 %30, 1
  store i32 %inc.i, ptr %ps_usecount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not.i = icmp eq i32 %30, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then66.ath9k_htc_ps_wakeup.exit_crit_edge

if.then66.ath9k_htc_ps_wakeup.exit_crit_edge:     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_ps_wakeup.exit

if.end.i:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %ah1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ah1, align 4
  %call.i = tail call zeroext i1 @ath9k_hw_setpower(ptr noundef %32, i32 noundef 0) #12
  br label %ath9k_htc_ps_wakeup.exit

ath9k_htc_ps_wakeup.exit:                         ; preds = %if.end.i, %if.then66.ath9k_htc_ps_wakeup.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %htc_pm_lock.i) #12
  br i1 %cmp53, label %if.then68, label %ath9k_htc_ps_wakeup.exit.if.end69_crit_edge

ath9k_htc_ps_wakeup.exit.if.end69_crit_edge:      ; preds = %ath9k_htc_ps_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then68:                                        ; preds = %ath9k_htc_ps_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  %curchan = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 8
  %33 = ptrtoint ptr %curchan to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %curchan, align 4
  tail call void @ath9k_hw_ani_monitor(ptr noundef %1, ptr noundef %34) #12
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %ath9k_htc_ps_wakeup.exit.if.end69_crit_edge
  br i1 %brmerge158, label %if.then75, label %if.end69.if.end84_crit_edge

if.end69.if.end84_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

if.then75:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  %curchan76 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 8
  %35 = ptrtoint ptr %curchan76 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %curchan76, align 4
  %rxchainmask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 75
  %37 = ptrtoint ptr %rxchainmask to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %rxchainmask, align 1
  %calibrate.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 63, i32 3
  %39 = ptrtoint ptr %calibrate.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %calibrate.i, align 4
  %call1.i = tail call i32 %40(ptr noundef %1, ptr noundef %36, i8 noundef zeroext %38, i1 noundef zeroext %cmp4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp79 = icmp sgt i32 %call1.i, 0
  %frombool83 = zext i1 %cmp79 to i8
  %41 = ptrtoint ptr %ani to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %frombool83, ptr %ani, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then75, %if.end69.if.end84_crit_edge
  tail call void @ath9k_htc_ps_restore(ptr noundef %add.ptr)
  br label %cond.end

cond.end:                                         ; preds = %if.end84, %if.end58.cond.end_crit_edge, %entry.cond.end_crit_edge
  %hw = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_queue_delayed_work(ptr noundef %43, ptr noundef %work, i32 noundef 10) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_reset_calvalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_ani_monitor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ath9k_htc_get_eeprom_base(ptr nocapture noundef readonly %priv) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %macVersion = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %macVersion to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %macVersion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %3)
  %cmp = icmp eq i32 %3, 320
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %eeprom = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 9
  br label %if.end19

if.else:                                          ; preds = %entry
  %usbdev = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usbdev, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.else.if.end19_crit_edge [
    i32 1, label %if.then5
    i32 2, label %if.then14
  ]

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %eeprom7 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 9
  br label %if.end19

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %eeprom16 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 9
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.then5, %if.else.if.end19_crit_edge, %if.then
  %pBase.0 = phi ptr [ %eeprom, %if.then ], [ %eeprom7, %if.then5 ], [ %eeprom16, %if.then14 ], [ null, %if.else.if.end19_crit_edge ]
  ret ptr %pBase.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_htc_tx(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %control, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  %call2 = tail call i32 @ieee80211_hdrlen(i16 noundef zeroext %7) #15
  %and = and i32 %call2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %land.lhs.true

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true:                                    ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %call2)
  %cmp = icmp ugt i32 %9, %call2
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then:                                          ; preds = %land.lhs.true
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %10 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %and)
  %cmp4 = icmp ult i32 %sub.ptr.sub.i, %and
  br i1 %cmp4, label %do.body, label %if.end9

do.body:                                          ; preds = %if.then
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug_mask, align 4
  %and6 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.body.fail_tx_crit_edge, label %if.then8

do.body.fail_tx_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_tx

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.5) #12
  br label %fail_tx

if.end9:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call10 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %and) #12
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %and
  %16 = call ptr @memmove(ptr %15, ptr %add.ptr, i32 %call2)
  br label %if.end13

if.end13:                                         ; preds = %if.end9, %land.lhs.true.if.end13_crit_edge, %entry.if.end13_crit_edge
  %call14 = tail call i32 @ath9k_htc_tx_get_slot(ptr noundef %1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.body17, label %if.end25

do.body17:                                        ; preds = %if.end13
  %debug_mask18 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %debug_mask18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %debug_mask18, align 4
  %and19 = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body17.fail_tx_crit_edge, label %if.then21

do.body17.fail_tx_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_tx

if.then21:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.6) #12
  br label %fail_tx

if.end25:                                         ; preds = %if.end13
  %19 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %control, align 4
  %conv = trunc i32 %call14 to i8
  %call26 = tail call i32 @ath9k_htc_tx_start(ptr noundef %1, ptr noundef %20, ptr noundef %skb, i8 noundef zeroext %conv, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27.not = icmp eq i32 %call26, 0
  br i1 %cmp27.not, label %if.end38, label %do.body30

do.body30:                                        ; preds = %if.end25
  %debug_mask31 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %debug_mask31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %debug_mask31, align 4
  %and32 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.body30.clear_slot_crit_edge, label %if.then34

do.body30.clear_slot_crit_edge:                   ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  br label %clear_slot

if.then34:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.7) #12
  br label %clear_slot

if.end38:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ath9k_htc_check_stop_queues(ptr noundef %1) #12
  br label %cleanup

clear_slot:                                       ; preds = %if.then34, %do.body30.clear_slot_crit_edge
  tail call void @ath9k_htc_tx_clear_slot(ptr noundef %1, i32 noundef %call14) #12
  br label %fail_tx

fail_tx:                                          ; preds = %clear_slot, %if.then21, %do.body17.fail_tx_crit_edge, %if.then8, %do.body.fail_tx_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #12
  br label %cleanup

cleanup:                                          ; preds = %fail_tx, %if.end38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_htc_start(ptr noundef %hw) #0 align 64 {
entry:
  %tcap.i = alloca %struct.ath9k_htc_cap_target, align 8
  %cmd_rsp.i = alloca i8, align 1
  %htc_mode = alloca i16, align 2
  %cmd_rsp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %ah2 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ah2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah2, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %4 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chandef, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %htc_mode) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd_rsp) #12
  %6 = ptrtoint ptr %cmd_rsp to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %cmd_rsp, align 1, !annotation !132
  %mutex = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 62
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug_mask, align 4
  %and = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %center_freq, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.8, i32 noundef %10) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %htc_pm_lock.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %htc_pm_lock.i, i32 noundef 0) #12
  %11 = ptrtoint ptr %ah2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ah2, align 4
  %call.i = tail call zeroext i1 @ath9k_hw_setpower(ptr noundef %12, i32 noundef 0) #12
  tail call void @mutex_unlock(ptr noundef %htc_pm_lock.i) #12
  %wmi = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wmi, align 4
  %call5 = call i32 @ath9k_wmi_cmd(ptr noundef %14, i32 noundef 14, ptr noundef null, i32 noundef 0, ptr noundef nonnull %cmd_rsp, i32 noundef 1, i32 noundef 200) #12
  %call10 = call ptr @ath9k_cmn_get_channel(ptr noundef %hw, ptr noundef %3, ptr noundef %chandef) #12
  %caldata = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 31
  %15 = ptrtoint ptr %caldata to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %caldata, align 4
  %call11 = call i32 @ath9k_hw_reset(ptr noundef %3, ptr noundef %call10, ptr noundef %16, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end16, label %if.then13

if.then13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %center_freq14 = getelementptr inbounds %struct.ieee80211_channel, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %center_freq14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %center_freq14, align 4
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.9, i32 noundef %call11, i32 noundef %18) #12
  br label %cleanup

if.end16:                                         ; preds = %do.end
  %curtxpow = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 25
  %19 = ptrtoint ptr %curtxpow to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %curtxpow, align 2
  %txpowlimit = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 26
  %21 = ptrtoint ptr %txpowlimit to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %txpowlimit, align 4
  call void @ath9k_cmn_update_txpow(ptr noundef %3, i16 noundef zeroext %20, i16 noundef zeroext %22, ptr noundef %curtxpow) #12
  %channelFlags.i = getelementptr inbounds %struct.ath9k_channel, ptr %call10, i32 0, i32 2
  %23 = ptrtoint ptr %channelFlags.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %channelFlags.i, align 2
  %25 = and i16 %24, 1
  %26 = xor i16 %25, 1
  %27 = ptrtoint ptr %htc_mode to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %htc_mode, align 2
  %28 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wmi, align 4
  %call21 = call i32 @ath9k_wmi_cmd(ptr noundef %29, i32 noundef 15, ptr noundef nonnull %htc_mode, i32 noundef 2, ptr noundef nonnull %cmd_rsp, i32 noundef 1, i32 noundef 200) #12
  %30 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wmi, align 4
  %call26 = call i32 @ath9k_wmi_cmd(ptr noundef %31, i32 noundef 6, ptr noundef null, i32 noundef 0, ptr noundef nonnull %cmd_rsp, i32 noundef 1, i32 noundef 200) #12
  %32 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wmi, align 4
  %call31 = call i32 @ath9k_wmi_cmd(ptr noundef %33, i32 noundef 12, ptr noundef null, i32 noundef 0, ptr noundef nonnull %cmd_rsp, i32 noundef 1, i32 noundef 200) #12
  call void @ath9k_host_rx_init(ptr noundef %1) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tcap.i) #12
  %34 = getelementptr inbounds %struct.ath9k_htc_cap_target, ptr %tcap.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd_rsp.i) #12
  %35 = ptrtoint ptr %cmd_rsp.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %cmd_rsp.i, align 1, !annotation !132
  %36 = ptrtoint ptr %tcap.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 281474959933440, ptr %tcap.i, align 8
  %37 = ptrtoint ptr %ah2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ah2, align 4
  %tx_chainmask.i = getelementptr inbounds %struct.ath_hw, ptr %38, i32 0, i32 6, i32 2
  %39 = ptrtoint ptr %tx_chainmask.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %tx_chainmask.i, align 2
  %41 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %34, align 2
  %42 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wmi, align 4
  %call.i104 = call i32 @ath9k_wmi_cmd(ptr noundef %43, i32 noundef 24, ptr noundef nonnull %tcap.i, i32 noundef 8, ptr noundef nonnull %cmd_rsp.i, i32 noundef 1, i32 noundef 200) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_rsp.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tcap.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %tobool35.not = icmp eq i32 %call.i104, 0
  br i1 %tobool35.not, label %if.end16.if.end45_crit_edge, label %do.body37

if.end16.if.end45_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

do.body37:                                        ; preds = %if.end16
  %44 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %debug_mask, align 4
  %and39 = and i32 %45, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.body37.if.end45_crit_edge, label %if.then41

do.body37.if.end45_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then41:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.10) #12
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %do.body37.if.end45_crit_edge, %if.end16.if.end45_crit_edge
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 5
  call void @_clear_bit(i32 noundef 0, ptr noundef %op_flags) #12
  %htc = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 3
  %46 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %htc, align 4
  call void @htc_start(ptr noundef %47) #12
  %tx = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 40
  %tx_lock = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 40, i32 11
  call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #12
  %48 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %tx, align 4
  %50 = and i8 %49, -2
  store i8 %50, ptr %tx, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #12
  call void @ieee80211_wake_queues(ptr noundef %hw) #12
  %cleanup_timer = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 40, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %51, 5
  %call54 = call i32 @mod_timer(ptr noundef %cleanup_timer, i32 noundef %add) #12
  call void @ath9k_htc_start_btcoex(ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then13
  %retval.0 = phi i32 [ %call11, %if.then13 ], [ %call.i104, %if.end45 ]
  call void @mutex_unlock(ptr noundef %mutex) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_rsp) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %htc_mode) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_htc_stop(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %cmd_rsp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %ah2 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ah2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah2, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd_rsp) #12
  %4 = ptrtoint ptr %cmd_rsp to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %cmd_rsp, align 1, !annotation !132
  %mutex = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 62
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 5
  %5 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %op_flags, align 4
  %and1.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %do.body.do.end_crit_edge, label %if.then5

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.11) #12
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body.do.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  br label %cleanup

if.end7:                                          ; preds = %entry
  %htc_pm_lock.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %htc_pm_lock.i, i32 noundef 0) #12
  %ps_usecount.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 48
  %9 = ptrtoint ptr %ps_usecount.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ps_usecount.i, align 4
  %inc.i = add i32 %10, 1
  store i32 %inc.i, ptr %ps_usecount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end7.ath9k_htc_ps_wakeup.exit_crit_edge

if.end7.ath9k_htc_ps_wakeup.exit_crit_edge:       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_ps_wakeup.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %ah2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ah2, align 4
  %call.i = tail call zeroext i1 @ath9k_hw_setpower(ptr noundef %12, i32 noundef 0) #12
  br label %ath9k_htc_ps_wakeup.exit

ath9k_htc_ps_wakeup.exit:                         ; preds = %if.end.i, %if.end7.ath9k_htc_ps_wakeup.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %htc_pm_lock.i) #12
  %wmi = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wmi, align 4
  %call9 = call i32 @ath9k_wmi_cmd(ptr noundef %14, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef nonnull %cmd_rsp, i32 noundef 1, i32 noundef 200) #12
  %15 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wmi, align 4
  %call14 = call i32 @ath9k_wmi_cmd(ptr noundef %16, i32 noundef 11, ptr noundef null, i32 noundef 0, ptr noundef nonnull %cmd_rsp, i32 noundef 1, i32 noundef 200) #12
  %17 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wmi, align 4
  %call19 = call i32 @ath9k_wmi_cmd(ptr noundef %18, i32 noundef 13, ptr noundef null, i32 noundef 0, ptr noundef nonnull %cmd_rsp, i32 noundef 1, i32 noundef 200) #12
  %rx_tasklet = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 42
  call void @tasklet_kill(ptr noundef %rx_tasklet) #12
  %cleanup_timer = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 40, i32 10
  %call22 = call i32 @del_timer_sync(ptr noundef %cleanup_timer) #12
  call void @ath9k_htc_tx_drain(ptr noundef %1) #12
  call void @ath9k_wmi_event_drain(ptr noundef %1) #12
  call void @mutex_unlock(ptr noundef %mutex) #12
  %fatal_work = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 46
  %call24 = call zeroext i1 @cancel_work_sync(ptr noundef %fatal_work) #12
  %ps_work = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 45
  %call25 = call zeroext i1 @cancel_work_sync(ptr noundef %ps_work) #12
  %led_work = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 55
  %call26 = call zeroext i1 @cancel_work_sync(ptr noundef %led_work) #12
  %19 = ptrtoint ptr %ah2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ah2, align 4
  %ani_work.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 43
  %call1.i = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ani_work.i) #12
  %op_flags.i = getelementptr inbounds %struct.ath_hw, ptr %20, i32 0, i32 3, i32 5
  call void @_clear_bit(i32 noundef 2, ptr noundef %op_flags.i) #12
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  call void @ath9k_htc_stop_btcoex(ptr noundef %1) #12
  %21 = ptrtoint ptr %ah2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ah2, align 4
  %is_monitoring = getelementptr inbounds %struct.ath_hw, ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %is_monitoring to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_monitoring, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool29.not = icmp eq i8 %24, 0
  br i1 %tobool29.not, label %ath9k_htc_ps_wakeup.exit.if.end32_crit_edge, label %if.then30

ath9k_htc_ps_wakeup.exit.if.end32_crit_edge:      ; preds = %ath9k_htc_ps_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then30:                                        ; preds = %ath9k_htc_ps_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @ath9k_htc_remove_monitor_interface(ptr noundef %1)
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %ath9k_htc_ps_wakeup.exit.if.end32_crit_edge
  %call33 = call zeroext i1 @ath9k_hw_phy_disable(ptr noundef %3) #12
  %call34 = call zeroext i1 @ath9k_hw_disable(ptr noundef %3) #12
  call void @ath9k_htc_ps_restore(ptr noundef %1)
  call void @mutex_lock_nested(ptr noundef %htc_pm_lock.i, i32 noundef 0) #12
  %25 = ptrtoint ptr %ah2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ah2, align 4
  %call.i82 = call zeroext i1 @ath9k_hw_setpower(ptr noundef %26, i32 noundef 1) #12
  call void @mutex_unlock(ptr noundef %htc_pm_lock.i) #12
  call void @_set_bit(i32 noundef 0, ptr noundef %op_flags) #12
  %debug_mask38 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %27 = ptrtoint ptr %debug_mask38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug_mask38, align 4
  %and39 = and i32 %28, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end32.do.end44_crit_edge, label %if.then41

if.end32.do.end44_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end44

if.then41:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.12) #12
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %if.end32.do.end44_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %do.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_rsp) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_htc_add_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  %iter_data.i = alloca %struct.ath9k_vif_iter_data, align 4
  %hvif = alloca %struct.ath9k_htc_target_vif, align 1
  %cmd_rsp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %hvif) #12
  %4 = getelementptr inbounds %struct.ath9k_htc_target_vif, ptr %hvif, i32 0, i32 1
  %5 = getelementptr inbounds %struct.ath9k_htc_target_vif, ptr %hvif, i32 0, i32 2
  %6 = getelementptr inbounds %struct.ath9k_htc_target_vif, ptr %hvif, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd_rsp) #12
  %7 = ptrtoint ptr %cmd_rsp to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %cmd_rsp, align 1, !annotation !132
  %mutex = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 62
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %htc_pm_lock.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %htc_pm_lock.i, i32 noundef 0) #12
  %ps_usecount.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 48
  %8 = ptrtoint ptr %ps_usecount.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ps_usecount.i, align 4
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %ps_usecount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.ath9k_htc_ps_wakeup.exit_crit_edge

entry.ath9k_htc_ps_wakeup.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_ps_wakeup.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ah, align 4
  %call.i = tail call zeroext i1 @ath9k_hw_setpower(ptr noundef %11, i32 noundef 0) #12
  br label %ath9k_htc_ps_wakeup.exit

ath9k_htc_ps_wakeup.exit:                         ; preds = %if.end.i, %entry.ath9k_htc_ps_wakeup.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %htc_pm_lock.i) #12
  %12 = call ptr @memset(ptr %hvif, i32 0, i32 12)
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %13 = call ptr @memcpy(ptr %5, ptr %addr, i32 6)
  %14 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vif, align 8
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %15, label %sw.default [
    i32 2, label %ath9k_htc_ps_wakeup.exit.sw.epilog.sink.split_crit_edge
    i32 1, label %ath9k_htc_ps_wakeup.exit.sw.epilog_crit_edge
    i32 3, label %sw.bb5
    i32 7, label %sw.bb7
  ]

ath9k_htc_ps_wakeup.exit.sw.epilog_crit_edge:     ; preds = %ath9k_htc_ps_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

ath9k_htc_ps_wakeup.exit.sw.epilog.sink.split_crit_edge: ; preds = %ath9k_htc_ps_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

sw.bb5:                                           ; preds = %ath9k_htc_ps_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

sw.bb7:                                           ; preds = %ath9k_htc_ps_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

sw.default:                                       ; preds = %ath9k_htc_ps_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.16, i32 noundef %15) #12
  br label %out

sw.epilog.sink.split:                             ; preds = %sw.bb7, %sw.bb5, %ath9k_htc_ps_wakeup.exit.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 2, %sw.bb7 ], [ 6, %sw.bb5 ], [ 1, %ath9k_htc_ps_wakeup.exit.sw.epilog.sink.split_crit_edge ]
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.sink, ptr %4, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %ath9k_htc_ps_wakeup.exit.sw.epilog_crit_edge
  %vif_slot = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 16
  %18 = ptrtoint ptr %vif_slot to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %vif_slot, align 4
  %conv = zext i8 %19 to i32
  %neg = xor i32 %conv, -1
  %20 = tail call i32 @llvm.cttz.i32(i32 %neg, i1 true) #12, !range !134
  %conv11 = trunc i32 %20 to i8
  %21 = ptrtoint ptr %hvif to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv11, ptr %hvif, align 1
  %22 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv11, ptr %drv_priv, align 8
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 2304, ptr %6, align 1
  %wmi = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wmi, align 4
  %call13 = call i32 @ath9k_wmi_cmd(ptr noundef %25, i32 noundef 19, ptr noundef nonnull %hvif, i32 noundef 12, ptr noundef nonnull %cmd_rsp, i32 noundef 1, i32 noundef 200) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.end, label %sw.epilog.out_crit_edge

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %sw.epilog
  %call14 = call fastcc i32 @ath9k_htc_add_station(ptr noundef %1, ptr noundef %vif, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end22, label %do.body17

do.body17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wmi, align 4
  %call19 = call i32 @ath9k_wmi_cmd(ptr noundef %27, i32 noundef 18, ptr noundef nonnull %hvif, i32 noundef 12, ptr noundef nonnull %cmd_rsp, i32 noundef 1, i32 noundef 200) #12
  br label %out

if.end22:                                         ; preds = %if.end
  %28 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ah, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iter_data.i) #12
  %30 = getelementptr inbounds i8, ptr %iter_data.i, i32 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %30, align 4
  %32 = ptrtoint ptr %iter_data.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %iter_data.i, align 4
  %mask.i = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data.i, i32 0, i32 1
  %33 = call ptr @memset(ptr %mask.i, i32 255, i32 6)
  %tobool.not.i = icmp eq ptr %vif, null
  br i1 %tobool.not.i, label %if.end22.if.end.i111_crit_edge, label %ath9k_htc_bssid_iter.exit.i

if.end22.if.end.i111_crit_edge:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i111

ath9k_htc_bssid_iter.exit.i:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %iter_data.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %addr, ptr %iter_data.i, align 4
  br label %if.end.i111

if.end.i111:                                      ; preds = %ath9k_htc_bssid_iter.exit.i, %if.end22.if.end.i111_crit_edge
  %hw.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw.i, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %36, i32 noundef 1, ptr noundef nonnull @ath9k_htc_bssid_iter, ptr noundef nonnull %iter_data.i) #12
  %bssidmask.i = getelementptr inbounds %struct.ath_hw, ptr %29, i32 0, i32 3, i32 11
  %37 = call ptr @memcpy(ptr %bssidmask.i, ptr %mask.i, i32 6)
  %38 = ptrtoint ptr %iter_data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iter_data.i, align 4
  %tobool6.not.i = icmp eq ptr %39, null
  br i1 %tobool6.not.i, label %if.end.i111.ath9k_htc_set_mac_bssid_mask.exit_crit_edge, label %if.then7.i

if.end.i111.ath9k_htc_set_mac_bssid_mask.exit_crit_edge: ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_set_mac_bssid_mask.exit

if.then7.i:                                       ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #14
  %macaddr.i = getelementptr inbounds %struct.ath_hw, ptr %29, i32 0, i32 3, i32 9
  %40 = call ptr @memcpy(ptr %macaddr.i, ptr %39, i32 6)
  br label %ath9k_htc_set_mac_bssid_mask.exit

ath9k_htc_set_mac_bssid_mask.exit:                ; preds = %if.then7.i, %if.end.i111.ath9k_htc_set_mac_bssid_mask.exit_crit_edge
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %29, i32 0, i32 3
  call void @ath_hw_setbssidmask(ptr noundef %common.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iter_data.i) #12
  %41 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %drv_priv, align 8
  %conv24 = zext i8 %42 to i32
  %shl = shl nuw i32 1, %conv24
  %43 = ptrtoint ptr %vif_slot to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %vif_slot, align 4
  %45 = trunc i32 %shl to i8
  %conv27 = or i8 %44, %45
  store i8 %conv27, ptr %vif_slot, align 4
  %nvifs = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 27
  %46 = ptrtoint ptr %nvifs to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %nvifs, align 2
  %inc = add i16 %47, 1
  store i16 %inc, ptr %nvifs, align 2
  %48 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vif, align 8
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %49, label %ath9k_htc_set_mac_bssid_mask.exit.do.end41_crit_edge [
    i32 2, label %sw.bb30
    i32 1, label %sw.bb32
    i32 3, label %sw.bb34
    i32 7, label %sw.bb36
  ]

ath9k_htc_set_mac_bssid_mask.exit.do.end41_crit_edge: ; preds = %ath9k_htc_set_mac_bssid_mask.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end41

sw.bb30:                                          ; preds = %ath9k_htc_set_mac_bssid_mask.exit
  call void @__sanitizer_cov_trace_pc() #14
  %num_sta_vif = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 22
  %51 = ptrtoint ptr %num_sta_vif to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %num_sta_vif, align 1
  %inc31 = add i8 %52, 1
  store i8 %inc31, ptr %num_sta_vif, align 1
  br label %do.end41thread-pre-split

sw.bb32:                                          ; preds = %ath9k_htc_set_mac_bssid_mask.exit
  call void @__sanitizer_cov_trace_pc() #14
  %num_ibss_vif = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 20
  %53 = ptrtoint ptr %num_ibss_vif to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %num_ibss_vif, align 1
  %inc33 = add i8 %54, 1
  store i8 %inc33, ptr %num_ibss_vif, align 1
  br label %do.end41thread-pre-split

sw.bb34:                                          ; preds = %ath9k_htc_set_mac_bssid_mask.exit
  call void @__sanitizer_cov_trace_pc() #14
  %num_ap_vif = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 24
  %55 = ptrtoint ptr %num_ap_vif to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %num_ap_vif, align 1
  %inc35 = add i8 %56, 1
  store i8 %inc35, ptr %num_ap_vif, align 1
  br label %do.end41thread-pre-split

sw.bb36:                                          ; preds = %ath9k_htc_set_mac_bssid_mask.exit
  call void @__sanitizer_cov_trace_pc() #14
  %num_mbss_vif = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 21
  %57 = ptrtoint ptr %num_mbss_vif to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %num_mbss_vif, align 2
  %inc37 = add i8 %58, 1
  store i8 %inc37, ptr %num_mbss_vif, align 2
  br label %do.end41thread-pre-split

do.end41thread-pre-split:                         ; preds = %sw.bb36, %sw.bb34, %sw.bb32, %sw.bb30
  %59 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pr = load i32, ptr %vif, align 8
  br label %do.end41

do.end41:                                         ; preds = %do.end41thread-pre-split, %ath9k_htc_set_mac_bssid_mask.exit.do.end41_crit_edge
  %60 = phi i32 [ %.pr, %do.end41thread-pre-split ], [ %49, %ath9k_htc_set_mac_bssid_mask.exit.do.end41_crit_edge ]
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %60, label %do.end41.if.end52_crit_edge [
    i32 3, label %do.end41.if.then51_crit_edge
    i32 7, label %do.end41.if.then51_crit_edge118
    i32 1, label %do.end41.if.then51_crit_edge119
  ]

do.end41.if.then51_crit_edge119:                  ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then51

do.end41.if.then51_crit_edge118:                  ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then51

do.end41.if.then51_crit_edge:                     ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then51

do.end41.if.end52_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then51:                                        ; preds = %do.end41.if.then51_crit_edge, %do.end41.if.then51_crit_edge118, %do.end41.if.then51_crit_edge119
  call void @ath9k_htc_assign_bslot(ptr noundef %1, ptr noundef %vif) #12
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %do.end41.if.end52_crit_edge
  %num_ibss_vif.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 20
  %62 = ptrtoint ptr %num_ibss_vif.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %num_ibss_vif.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i112 = icmp eq i8 %63, 0
  br i1 %tobool.not.i112, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ah, align 4
  %opmode.i = getelementptr inbounds %struct.ath_hw, ptr %65, i32 0, i32 28
  %66 = ptrtoint ptr %opmode.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %opmode.i, align 4
  br label %ath9k_htc_set_opmode.exit

if.else.i:                                        ; preds = %if.end52
  %num_ap_vif.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 24
  %67 = ptrtoint ptr %num_ap_vif.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %num_ap_vif.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool1.not.i = icmp eq i8 %68, 0
  br i1 %tobool1.not.i, label %if.else5.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %69 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ah, align 4
  %opmode4.i = getelementptr inbounds %struct.ath_hw, ptr %70, i32 0, i32 28
  %71 = ptrtoint ptr %opmode4.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 3, ptr %opmode4.i, align 4
  br label %ath9k_htc_set_opmode.exit

if.else5.i:                                       ; preds = %if.else.i
  %num_mbss_vif.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 21
  %72 = ptrtoint ptr %num_mbss_vif.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %num_mbss_vif.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool6.not.i114 = icmp eq i8 %73, 0
  %74 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ah, align 4
  %opmode12.i = getelementptr inbounds %struct.ath_hw, ptr %75, i32 0, i32 28
  br i1 %tobool6.not.i114, label %if.else10.i, label %if.then7.i115

if.then7.i115:                                    ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %opmode12.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 7, ptr %opmode12.i, align 4
  br label %ath9k_htc_set_opmode.exit

if.else10.i:                                      ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %opmode12.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 2, ptr %opmode12.i, align 4
  br label %ath9k_htc_set_opmode.exit

ath9k_htc_set_opmode.exit:                        ; preds = %if.else10.i, %if.then7.i115, %if.then2.i, %if.then.i
  %78 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ah, align 4
  call void @ath9k_hw_setopmode(ptr noundef %79) #12
  %80 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ah, align 4
  %opmode54 = getelementptr inbounds %struct.ath_hw, ptr %81, i32 0, i32 28
  %82 = ptrtoint ptr %opmode54 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %opmode54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %83)
  %cmp55 = icmp eq i32 %83, 3
  br i1 %cmp55, label %land.lhs.true, label %ath9k_htc_set_opmode.exit.do.body62_crit_edge

ath9k_htc_set_opmode.exit.do.body62_crit_edge:    ; preds = %ath9k_htc_set_opmode.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body62

land.lhs.true:                                    ; preds = %ath9k_htc_set_opmode.exit
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 5
  %84 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %op_flags, align 4
  %86 = and i32 %85, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool58.not = icmp eq i32 %86, 0
  br i1 %tobool58.not, label %if.then59, label %land.lhs.true.do.body62_crit_edge

land.lhs.true.do.body62_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body62

if.then59:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  call void @ath9k_hw_set_tsfadjust(ptr noundef %81, i1 noundef zeroext true) #12
  %87 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ah, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %89 = load volatile i32, ptr @jiffies, align 128
  %call1.i = call i32 @jiffies_to_msecs(i32 noundef %89) #12
  %longcal_timer.i = getelementptr inbounds %struct.ath_hw, ptr %88, i32 0, i32 3, i32 6, i32 1
  %90 = ptrtoint ptr %longcal_timer.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %call1.i, ptr %longcal_timer.i, align 4
  %shortcal_timer.i = getelementptr inbounds %struct.ath_hw, ptr %88, i32 0, i32 3, i32 6, i32 2
  %91 = ptrtoint ptr %shortcal_timer.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %call1.i, ptr %shortcal_timer.i, align 4
  %checkani_timer.i = getelementptr inbounds %struct.ath_hw, ptr %88, i32 0, i32 3, i32 6, i32 4
  %92 = ptrtoint ptr %checkani_timer.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call1.i, ptr %checkani_timer.i, align 4
  %op_flags.i = getelementptr inbounds %struct.ath_hw, ptr %88, i32 0, i32 3, i32 5
  call void @_set_bit(i32 noundef 2, ptr noundef %op_flags.i) #12
  %hw.i117 = getelementptr inbounds %struct.ath_hw, ptr %88, i32 0, i32 3, i32 2
  %93 = ptrtoint ptr %hw.i117 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hw.i117, align 4
  %ani_work.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 43
  call void @ieee80211_queue_delayed_work(ptr noundef %94, ptr noundef %ani_work.i, i32 noundef 10) #12
  br label %do.body62

do.body62:                                        ; preds = %if.then59, %land.lhs.true.do.body62_crit_edge, %ath9k_htc_set_opmode.exit.do.body62_crit_edge
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %95 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %debug_mask, align 4
  %and = and i32 %96, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool63.not = icmp eq i32 %and, 0
  br i1 %tobool63.not, label %do.body62.out_crit_edge, label %if.then64

do.body62.out_crit_edge:                          ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then64:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #14
  %97 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %vif, align 8
  %99 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %drv_priv, align 8
  %conv67 = zext i8 %100 to i32
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.17, i32 noundef %98, i32 noundef %conv67) #12
  br label %out

out:                                              ; preds = %if.then64, %do.body62.out_crit_edge, %do.body17, %sw.epilog.out_crit_edge, %sw.default
  %ret.0 = phi i32 [ -95, %sw.default ], [ %call13, %sw.epilog.out_crit_edge ], [ %call19, %do.body17 ], [ 0, %if.then64 ], [ 0, %do.body62.out_crit_edge ]
  call void @ath9k_htc_ps_restore(ptr noundef %1)
  call void @mutex_unlock(ptr noundef %mutex) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_rsp) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %hvif) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_htc_remove_interface(ptr nocapture noundef readonly %hw, ptr noundef %vif) #0 align 64 {
entry:
  %iter_data.i = alloca %struct.ath9k_vif_iter_data, align 4
  %cmd_rsp.i = alloca i8, align 1
  %sta_idx.i = alloca i8, align 1
  %hvif = alloca %struct.ath9k_htc_target_vif, align 1
  %cmd_rsp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %hvif) #12
  %4 = getelementptr inbounds %struct.ath9k_htc_target_vif, ptr %hvif, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd_rsp) #12
  %5 = ptrtoint ptr %cmd_rsp to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %cmd_rsp, align 1, !annotation !132
  %mutex = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 62
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %htc_pm_lock.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %htc_pm_lock.i, i32 noundef 0) #12
  %ps_usecount.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 48
  %6 = ptrtoint ptr %ps_usecount.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ps_usecount.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %ps_usecount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.ath9k_htc_ps_wakeup.exit_crit_edge

entry.ath9k_htc_ps_wakeup.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_ps_wakeup.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ah, align 4
  %call.i = tail call zeroext i1 @ath9k_hw_setpower(ptr noundef %9, i32 noundef 0) #12
  br label %ath9k_htc_ps_wakeup.exit

ath9k_htc_ps_wakeup.exit:                         ; preds = %if.end.i, %entry.ath9k_htc_ps_wakeup.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %htc_pm_lock.i) #12
  %10 = getelementptr inbounds i8, ptr %hvif, i32 1
  %11 = call ptr @memset(ptr %10, i32 0, i32 11)
  %addr = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %12 = call ptr @memcpy(ptr %4, ptr %addr, i32 6)
  %13 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %drv_priv, align 8
  %15 = ptrtoint ptr %hvif to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %hvif, align 1
  %wmi = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wmi, align 4
  %call4 = call i32 @ath9k_wmi_cmd(ptr noundef %17, i32 noundef 18, ptr noundef nonnull %hvif, i32 noundef 12, ptr noundef nonnull %cmd_rsp, i32 noundef 1, i32 noundef 200) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %ath9k_htc_ps_wakeup.exit.if.end_crit_edge, label %if.then

ath9k_htc_ps_wakeup.exit.if.end_crit_edge:        ; preds = %ath9k_htc_ps_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %ath9k_htc_ps_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %drv_priv, align 8
  %conv = zext i8 %19 to i32
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.21, i32 noundef %conv) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %ath9k_htc_ps_wakeup.exit.if.end_crit_edge
  %nvifs = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 27
  %20 = ptrtoint ptr %nvifs to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %nvifs, align 2
  %dec = add i16 %21, -1
  store i16 %dec, ptr %nvifs, align 2
  %22 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %drv_priv, align 8
  %conv7 = zext i8 %23 to i32
  %shl = shl nuw i32 1, %conv7
  %vif_slot = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 16
  %24 = ptrtoint ptr %vif_slot to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %vif_slot, align 4
  %26 = trunc i32 %shl to i8
  %27 = xor i8 %26, -1
  %conv9 = and i8 %25, %27
  store i8 %conv9, ptr %vif_slot, align 4
  %csa_vif = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 63
  %28 = ptrtoint ptr %csa_vif to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %csa_vif, align 4
  %cmp = icmp eq ptr %29, %vif
  br i1 %cmp, label %if.then11, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %csa_vif to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %csa_vif, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end.if.end13_crit_edge
  %31 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ah, align 4
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %32, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd_rsp.i) #12
  %33 = ptrtoint ptr %cmd_rsp.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %cmd_rsp.i, align 1, !annotation !132
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sta_idx.i) #12
  %34 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %drv_priv, align 8
  %idxprom.i = zext i8 %35 to i32
  %arrayidx.i = getelementptr %struct.ath9k_htc_priv, ptr %1, i32 0, i32 19, i32 %idxprom.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %storemerge.i = load i8, ptr %arrayidx.i, align 1
  %37 = ptrtoint ptr %sta_idx.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %storemerge.i, ptr %sta_idx.i, align 1
  %38 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wmi, align 4
  %call4.i = call i32 @ath9k_wmi_cmd(ptr noundef %39, i32 noundef 17, ptr noundef nonnull %sta_idx.i, i32 noundef 1, ptr noundef nonnull %cmd_rsp.i, i32 noundef 1, i32 noundef 200) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end11.i, label %if.end13.ath9k_htc_remove_station.exit_crit_edge

if.end13.ath9k_htc_remove_station.exit_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_remove_station.exit

if.end11.i:                                       ; preds = %if.end13
  %debug_mask24.i = getelementptr inbounds %struct.ath_hw, ptr %32, i32 0, i32 3, i32 3
  %40 = ptrtoint ptr %debug_mask24.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %debug_mask24.i, align 4
  %and25.i = and i32 %41, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end11.i.if.end34.i_crit_edge, label %if.then27.i

if.end11.i.if.end34.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

if.then27.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %drv_priv, align 8
  %conv29.i = zext i8 %43 to i32
  %44 = ptrtoint ptr %sta_idx.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %sta_idx.i, align 1
  %conv30.i = zext i8 %45 to i32
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i.i, ptr noundef nonnull @.str.25, i32 noundef %conv29.i, i32 noundef %conv30.i) #12
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then27.i, %if.end11.i.if.end34.i_crit_edge
  %46 = ptrtoint ptr %sta_idx.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %sta_idx.i, align 1
  %conv35.i = zext i8 %47 to i32
  %shl.i = shl nuw i32 1, %conv35.i
  %sta_slot.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 18
  %48 = ptrtoint ptr %sta_slot.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %sta_slot.i, align 2
  %50 = trunc i32 %shl.i to i8
  %51 = xor i8 %50, -1
  %conv38.i = and i8 %49, %51
  store i8 %conv38.i, ptr %sta_slot.i, align 2
  %nstations.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 28
  %52 = ptrtoint ptr %nstations.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %nstations.i, align 4
  %dec.i = add i16 %53, -1
  store i16 %dec.i, ptr %nstations.i, align 4
  br label %ath9k_htc_remove_station.exit

ath9k_htc_remove_station.exit:                    ; preds = %if.end34.i, %if.end13.ath9k_htc_remove_station.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sta_idx.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_rsp.i) #12
  %54 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %vif, align 8
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %55, label %ath9k_htc_remove_station.exit.do.end24_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb17
    i32 3, label %sw.bb19
    i32 7, label %sw.bb21
  ]

ath9k_htc_remove_station.exit.do.end24_crit_edge: ; preds = %ath9k_htc_remove_station.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end24

sw.bb:                                            ; preds = %ath9k_htc_remove_station.exit
  call void @__sanitizer_cov_trace_pc() #14
  %num_sta_vif = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 22
  %57 = ptrtoint ptr %num_sta_vif to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %num_sta_vif, align 1
  %dec16 = add i8 %58, -1
  store i8 %dec16, ptr %num_sta_vif, align 1
  br label %do.end24thread-pre-split

sw.bb17:                                          ; preds = %ath9k_htc_remove_station.exit
  call void @__sanitizer_cov_trace_pc() #14
  %num_ibss_vif = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 20
  %59 = ptrtoint ptr %num_ibss_vif to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %num_ibss_vif, align 1
  %dec18 = add i8 %60, -1
  store i8 %dec18, ptr %num_ibss_vif, align 1
  br label %do.end24thread-pre-split

sw.bb19:                                          ; preds = %ath9k_htc_remove_station.exit
  call void @__sanitizer_cov_trace_pc() #14
  %num_ap_vif = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 24
  %61 = ptrtoint ptr %num_ap_vif to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %num_ap_vif, align 1
  %dec20 = add i8 %62, -1
  store i8 %dec20, ptr %num_ap_vif, align 1
  br label %do.end24thread-pre-split

sw.bb21:                                          ; preds = %ath9k_htc_remove_station.exit
  call void @__sanitizer_cov_trace_pc() #14
  %num_mbss_vif = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 21
  %63 = ptrtoint ptr %num_mbss_vif to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %num_mbss_vif, align 2
  %dec22 = add i8 %64, -1
  store i8 %dec22, ptr %num_mbss_vif, align 2
  br label %do.end24thread-pre-split

do.end24thread-pre-split:                         ; preds = %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb
  %65 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pr = load i32, ptr %vif, align 8
  br label %do.end24

do.end24:                                         ; preds = %do.end24thread-pre-split, %ath9k_htc_remove_station.exit.do.end24_crit_edge
  %66 = phi i32 [ %.pr, %do.end24thread-pre-split ], [ %55, %ath9k_htc_remove_station.exit.do.end24_crit_edge ]
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %66, label %do.end24.if.end36_crit_edge [
    i32 3, label %do.end24.if.then35_crit_edge
    i32 7, label %do.end24.if.then35_crit_edge108
    i32 1, label %do.end24.if.then35_crit_edge109
  ]

do.end24.if.then35_crit_edge109:                  ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

do.end24.if.then35_crit_edge108:                  ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

do.end24.if.then35_crit_edge:                     ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

do.end24.if.end36_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then35:                                        ; preds = %do.end24.if.then35_crit_edge, %do.end24.if.then35_crit_edge108, %do.end24.if.then35_crit_edge109
  call void @ath9k_htc_remove_bslot(ptr noundef %1, ptr noundef %vif) #12
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %do.end24.if.end36_crit_edge
  %num_ibss_vif.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 20
  %68 = ptrtoint ptr %num_ibss_vif.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %num_ibss_vif.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i = icmp eq i8 %69, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ah, align 4
  %opmode.i = getelementptr inbounds %struct.ath_hw, ptr %71, i32 0, i32 28
  %72 = ptrtoint ptr %opmode.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %opmode.i, align 4
  br label %ath9k_htc_set_opmode.exit

if.else.i:                                        ; preds = %if.end36
  %num_ap_vif.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 24
  %73 = ptrtoint ptr %num_ap_vif.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %num_ap_vif.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool1.not.i = icmp eq i8 %74, 0
  br i1 %tobool1.not.i, label %if.else5.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ah, align 4
  %opmode4.i = getelementptr inbounds %struct.ath_hw, ptr %76, i32 0, i32 28
  %77 = ptrtoint ptr %opmode4.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 3, ptr %opmode4.i, align 4
  br label %ath9k_htc_set_opmode.exit

if.else5.i:                                       ; preds = %if.else.i
  %num_mbss_vif.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 21
  %78 = ptrtoint ptr %num_mbss_vif.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %num_mbss_vif.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool6.not.i = icmp eq i8 %79, 0
  %80 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ah, align 4
  %opmode12.i = getelementptr inbounds %struct.ath_hw, ptr %81, i32 0, i32 28
  br i1 %tobool6.not.i, label %if.else10.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #14
  %82 = ptrtoint ptr %opmode12.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 7, ptr %opmode12.i, align 4
  br label %ath9k_htc_set_opmode.exit

if.else10.i:                                      ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %opmode12.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 2, ptr %opmode12.i, align 4
  br label %ath9k_htc_set_opmode.exit

ath9k_htc_set_opmode.exit:                        ; preds = %if.else10.i, %if.then7.i, %if.then2.i, %if.then.i
  %84 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ah, align 4
  call void @ath9k_hw_setopmode(ptr noundef %85) #12
  %86 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ah, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iter_data.i) #12
  %88 = getelementptr inbounds i8, ptr %iter_data.i, i32 8
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %88, align 4
  %90 = ptrtoint ptr %iter_data.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %iter_data.i, align 4
  %mask.i = getelementptr inbounds %struct.ath9k_vif_iter_data, ptr %iter_data.i, i32 0, i32 1
  %91 = call ptr @memset(ptr %mask.i, i32 255, i32 6)
  %tobool.not.i102 = icmp eq ptr %vif, null
  br i1 %tobool.not.i102, label %ath9k_htc_set_opmode.exit.if.end.i104_crit_edge, label %ath9k_htc_bssid_iter.exit.i

ath9k_htc_set_opmode.exit.if.end.i104_crit_edge:  ; preds = %ath9k_htc_set_opmode.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i104

ath9k_htc_bssid_iter.exit.i:                      ; preds = %ath9k_htc_set_opmode.exit
  call void @__sanitizer_cov_trace_pc() #14
  %92 = ptrtoint ptr %iter_data.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %addr, ptr %iter_data.i, align 4
  br label %if.end.i104

if.end.i104:                                      ; preds = %ath9k_htc_bssid_iter.exit.i, %ath9k_htc_set_opmode.exit.if.end.i104_crit_edge
  %hw.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 1
  %93 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hw.i, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %94, i32 noundef 1, ptr noundef nonnull @ath9k_htc_bssid_iter, ptr noundef nonnull %iter_data.i) #12
  %bssidmask.i = getelementptr inbounds %struct.ath_hw, ptr %87, i32 0, i32 3, i32 11
  %95 = call ptr @memcpy(ptr %bssidmask.i, ptr %mask.i, i32 6)
  %96 = ptrtoint ptr %iter_data.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %iter_data.i, align 4
  %tobool6.not.i103 = icmp eq ptr %97, null
  br i1 %tobool6.not.i103, label %if.end.i104.ath9k_htc_set_mac_bssid_mask.exit_crit_edge, label %if.then7.i105

if.end.i104.ath9k_htc_set_mac_bssid_mask.exit_crit_edge: ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_set_mac_bssid_mask.exit

if.then7.i105:                                    ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #14
  %macaddr.i = getelementptr inbounds %struct.ath_hw, ptr %87, i32 0, i32 3, i32 9
  %98 = call ptr @memcpy(ptr %macaddr.i, ptr %97, i32 6)
  br label %ath9k_htc_set_mac_bssid_mask.exit

ath9k_htc_set_mac_bssid_mask.exit:                ; preds = %if.then7.i105, %if.end.i104.ath9k_htc_set_mac_bssid_mask.exit_crit_edge
  %common.i.i106 = getelementptr inbounds %struct.ath_hw, ptr %87, i32 0, i32 3
  call void @ath_hw_setbssidmask(ptr noundef %common.i.i106) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iter_data.i) #12
  %99 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %100)
  %cmp38 = icmp eq i32 %100, 3
  br i1 %cmp38, label %land.lhs.true, label %ath9k_htc_set_mac_bssid_mask.exit.do.body51_crit_edge

ath9k_htc_set_mac_bssid_mask.exit.do.body51_crit_edge: ; preds = %ath9k_htc_set_mac_bssid_mask.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body51

land.lhs.true:                                    ; preds = %ath9k_htc_set_mac_bssid_mask.exit
  %num_ap_vif40 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 24
  %101 = ptrtoint ptr %num_ap_vif40 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %num_ap_vif40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %cmp42 = icmp eq i8 %102, 0
  br i1 %cmp42, label %if.then44, label %land.lhs.true.do.body51_crit_edge

land.lhs.true.do.body51_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body51

if.then44:                                        ; preds = %land.lhs.true
  %rearm_ani = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 29
  %103 = ptrtoint ptr %rearm_ani to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %rearm_ani, align 2
  %104 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hw.i, align 4
  call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %105, i32 noundef 1, ptr noundef nonnull @ath9k_htc_vif_iter, ptr noundef %1) #12
  %106 = ptrtoint ptr %rearm_ani to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %rearm_ani, align 2, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool47.not = icmp eq i8 %107, 0
  br i1 %tobool47.not, label %if.then48, label %if.then44.do.body51_crit_edge

if.then44.do.body51_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body51

if.then48:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  %108 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ah, align 4
  %ani_work.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 43
  %call1.i = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ani_work.i) #12
  %op_flags.i = getelementptr inbounds %struct.ath_hw, ptr %109, i32 0, i32 3, i32 5
  call void @_clear_bit(i32 noundef 2, ptr noundef %op_flags.i) #12
  br label %do.body51

do.body51:                                        ; preds = %if.then48, %if.then44.do.body51_crit_edge, %land.lhs.true.do.body51_crit_edge, %ath9k_htc_set_mac_bssid_mask.exit.do.body51_crit_edge
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %110 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %debug_mask, align 4
  %and52 = and i32 %111, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %do.body51.do.end59_crit_edge, label %if.then54

do.body51.do.end59_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end59

if.then54:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #14
  %112 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %drv_priv, align 8
  %conv56 = zext i8 %113 to i32
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.22, i32 noundef %conv56) #12
  br label %do.end59

do.end59:                                         ; preds = %if.then54, %do.body51.do.end59_crit_edge
  call void @ath9k_htc_ps_restore(ptr noundef %1)
  call void @mutex_unlock(ptr noundef %mutex) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_rsp) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %hvif) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_htc_config(ptr noundef %hw, i32 noundef %changed) #0 align 64 {
entry:
  %htc_mode.i = alloca i16, align 2
  %cmd_rsp.i121 = alloca i8, align 1
  %hvif.i.i = alloca %struct.ath9k_htc_target_vif, align 1
  %cmd_rsp.i.i = alloca i8, align 1
  %hvif.i = alloca %struct.ath9k_htc_target_vif, align 1
  %tsta.i = alloca %struct.ath9k_htc_target_sta, align 1
  %cmd_rsp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  %mutex = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 62
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %htc_pm_lock.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %htc_pm_lock.i, i32 noundef 0) #12
  %ps_usecount.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 48
  %4 = ptrtoint ptr %ps_usecount.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ps_usecount.i, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %ps_usecount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.ath9k_htc_ps_wakeup.exit_crit_edge

entry.ath9k_htc_ps_wakeup.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_ps_wakeup.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ah, align 4
  %call.i = tail call zeroext i1 @ath9k_hw_setpower(ptr noundef %7, i32 noundef 0) #12
  br label %ath9k_htc_ps_wakeup.exit

ath9k_htc_ps_wakeup.exit:                         ; preds = %if.end.i, %entry.ath9k_htc_ps_wakeup.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %htc_pm_lock.i) #12
  %and = and i32 %changed, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %ath9k_htc_ps_wakeup.exit.if.end10_crit_edge, label %if.then

ath9k_htc_ps_wakeup.exit.if.end10_crit_edge:      ; preds = %ath9k_htc_ps_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then:                                          ; preds = %ath9k_htc_ps_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_lock_nested(ptr noundef %htc_pm_lock.i, i32 noundef 0) #12
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hw, align 4
  %and3 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %ps_idle = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 50
  %and3.lobit = lshr exact i32 %and3, 2
  %10 = trunc i32 %and3.lobit to i8
  %11 = ptrtoint ptr %ps_idle to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %ps_idle, align 1
  tail call void @mutex_unlock(ptr noundef %htc_pm_lock.i) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then, %ath9k_htc_ps_wakeup.exit.if.end10_crit_edge
  %chip_reset.1.off0 = phi i1 [ %tobool4.not, %if.then ], [ false, %ath9k_htc_ps_wakeup.exit.if.end10_crit_edge ]
  %and11 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end28_crit_edge, label %if.then13

if.end10.if.end28_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then13:                                        ; preds = %if.end10
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw, align 4
  %and15 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.then13.if.else_crit_edge, label %land.lhs.true

if.then13.if.else_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %if.then13
  %14 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ah, align 4
  %is_monitoring = getelementptr inbounds %struct.ath_hw, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %is_monitoring to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_monitoring, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool18.not = icmp eq i8 %17, 0
  br i1 %tobool18.not, label %if.then19, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then19:                                        ; preds = %land.lhs.true
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %15, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %hvif.i) #12
  %18 = getelementptr inbounds %struct.ath9k_htc_target_vif, ptr %hvif.i, i32 0, i32 1
  %19 = getelementptr inbounds %struct.ath9k_htc_target_vif, ptr %hvif.i, i32 0, i32 2
  %20 = call ptr @memset(ptr %hvif.i, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %tsta.i) #12
  %21 = getelementptr inbounds %struct.ath9k_htc_target_sta, ptr %tsta.i, i32 0, i32 2
  %22 = getelementptr inbounds %struct.ath9k_htc_target_sta, ptr %tsta.i, i32 0, i32 3
  %23 = getelementptr inbounds %struct.ath9k_htc_target_sta, ptr %tsta.i, i32 0, i32 4
  %24 = getelementptr inbounds %struct.ath9k_htc_target_sta, ptr %tsta.i, i32 0, i32 7
  %25 = call ptr @memset(ptr %tsta.i, i32 255, i32 22)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd_rsp.i) #12
  %26 = ptrtoint ptr %cmd_rsp.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %cmd_rsp.i, align 1, !annotation !132
  %nvifs.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 27
  %27 = ptrtoint ptr %nvifs.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %nvifs.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %28)
  %cmp.i = icmp ugt i16 %28, 1
  br i1 %cmp.i, label %if.then19.do.body65.i_crit_edge, label %lor.lhs.false.i

if.then19.do.body65.i_crit_edge:                  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body65.i

lor.lhs.false.i:                                  ; preds = %if.then19
  %nstations.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 28
  %29 = ptrtoint ptr %nstations.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %nstations.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %30)
  %cmp3.i = icmp ugt i16 %30, 7
  br i1 %cmp3.i, label %lor.lhs.false.i.do.body65.i_crit_edge, label %if.end.i119

lor.lhs.false.i.do.body65.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body65.i

if.end.i119:                                      ; preds = %lor.lhs.false.i
  %sta_slot.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 18
  %31 = ptrtoint ptr %sta_slot.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sta_slot.i, align 2
  %conv5.i = zext i8 %32 to i32
  %neg.i = xor i32 %conv5.i, -1
  %33 = tail call i32 @llvm.cttz.i32(i32 %neg.i, i1 true) #12, !range !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %33)
  %cmp10.i = icmp ugt i32 %33, 8
  br i1 %cmp10.i, label %if.end.i119.do.body65.i_crit_edge, label %if.end13.i

if.end.i119.do.body65.i_crit_edge:                ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body65.i

if.end13.i:                                       ; preds = %if.end.i119
  %34 = getelementptr inbounds i8, ptr %hvif.i, i32 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 0, ptr %34, align 1
  %macaddr.i = getelementptr inbounds %struct.ath_hw, ptr %15, i32 0, i32 3, i32 9
  %36 = call ptr @memcpy(ptr %19, ptr %macaddr.i, i32 6)
  %37 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 8, ptr %18, align 1
  %vif_slot.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 16
  %38 = ptrtoint ptr %vif_slot.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %vif_slot.i, align 4
  %conv14.i = zext i8 %39 to i32
  %neg15.i = xor i32 %conv14.i, -1
  %40 = tail call i32 @llvm.cttz.i32(i32 %neg15.i, i1 true) #12, !range !134
  %conv17.i = trunc i32 %40 to i8
  %41 = ptrtoint ptr %hvif.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv17.i, ptr %hvif.i, align 1
  %wmi.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %wmi.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wmi.i, align 4
  %call18.i = call i32 @ath9k_wmi_cmd(ptr noundef %43, i32 noundef 19, ptr noundef nonnull %hvif.i, i32 noundef 12, ptr noundef nonnull %cmd_rsp.i, i32 noundef 1, i32 noundef 200) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool.not.i, label %if.end20.i, label %if.end13.i.do.body65.i_crit_edge

if.end13.i.do.body65.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body65.i

if.end20.i:                                       ; preds = %if.end13.i
  %44 = ptrtoint ptr %hvif.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %hvif.i, align 1
  %mon_vif_idx.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 17
  %46 = ptrtoint ptr %mon_vif_idx.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %mon_vif_idx.i, align 1
  %conv23.i = zext i8 %45 to i32
  %shl.i = shl nuw i32 1, %conv23.i
  %47 = ptrtoint ptr %vif_slot.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %vif_slot.i, align 4
  %49 = trunc i32 %shl.i to i8
  %conv26.i = or i8 %48, %49
  store i8 %conv26.i, ptr %vif_slot.i, align 4
  %50 = ptrtoint ptr %nvifs.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %nvifs.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool28.not.i = icmp eq i16 %51, 0
  br i1 %tobool28.not.i, label %if.then29.i, label %if.end20.i.if.end32.i_crit_edge

if.end20.i.if.end32.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32.i

if.then29.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ah, align 4
  %opmode31.i = getelementptr inbounds %struct.ath_hw, ptr %53, i32 0, i32 28
  %54 = ptrtoint ptr %opmode31.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 6, ptr %opmode31.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then29.i, %if.end20.i.if.end32.i_crit_edge
  %55 = ptrtoint ptr %nvifs.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %nvifs.i, align 2
  %inc.i120 = add i16 %56, 1
  store i16 %inc.i120, ptr %nvifs.i, align 2
  %57 = getelementptr inbounds i8, ptr %tsta.i, i32 6
  %58 = call ptr @memset(ptr %57, i32 0, i32 16)
  %59 = call ptr @memcpy(ptr %tsta.i, ptr %macaddr.i, i32 6)
  %60 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %23, align 1
  %conv37.i = trunc i32 %33 to i8
  %61 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv37.i, ptr %21, align 1
  %62 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %45, ptr %22, align 1
  %63 = ptrtoint ptr %24 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 2)
  store i16 -1, ptr %24, align 1
  %64 = ptrtoint ptr %wmi.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %wmi.i, align 4
  %call41.i = call i32 @ath9k_wmi_cmd(ptr noundef %65, i32 noundef 16, ptr noundef nonnull %tsta.i, i32 noundef 22, ptr noundef nonnull %cmd_rsp.i, i32 noundef 1, i32 noundef 200) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool44.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool44.not.i, label %if.end46.i, label %if.then45.i

if.then45.i:                                      ; preds = %if.end32.i
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.28) #12
  %66 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ah, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %hvif.i.i) #12
  %68 = getelementptr inbounds %struct.ath9k_htc_target_vif, ptr %hvif.i.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd_rsp.i.i) #12
  %69 = ptrtoint ptr %cmd_rsp.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -1, ptr %cmd_rsp.i.i, align 1, !annotation !132
  %70 = getelementptr inbounds i8, ptr %hvif.i.i, i32 1
  %71 = call ptr @memset(ptr %70, i32 0, i32 11)
  %macaddr.i.i = getelementptr inbounds %struct.ath_hw, ptr %67, i32 0, i32 3, i32 9
  %72 = call ptr @memcpy(ptr %68, ptr %macaddr.i.i, i32 6)
  %73 = ptrtoint ptr %mon_vif_idx.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %mon_vif_idx.i, align 1
  %75 = ptrtoint ptr %hvif.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %hvif.i.i, align 1
  %76 = ptrtoint ptr %wmi.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %wmi.i, align 4
  %call1.i.i = call i32 @ath9k_wmi_cmd(ptr noundef %77, i32 noundef 18, ptr noundef nonnull %hvif.i.i, i32 noundef 12, ptr noundef nonnull %cmd_rsp.i.i, i32 noundef 1, i32 noundef 200) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.then45.i.__ath9k_htc_remove_monitor_interface.exit.i_crit_edge, label %if.then.i.i

if.then45.i.__ath9k_htc_remove_monitor_interface.exit.i_crit_edge: ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__ath9k_htc_remove_monitor_interface.exit.i

if.then.i.i:                                      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #14
  %common.i.i.i = getelementptr inbounds %struct.ath_hw, ptr %67, i32 0, i32 3
  %78 = ptrtoint ptr %mon_vif_idx.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %mon_vif_idx.i, align 1
  %conv.i.i = zext i8 %79 to i32
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i.i, ptr noundef nonnull @.str.15, i32 noundef %conv.i.i) #12
  br label %__ath9k_htc_remove_monitor_interface.exit.i

__ath9k_htc_remove_monitor_interface.exit.i:      ; preds = %if.then.i.i, %if.then45.i.__ath9k_htc_remove_monitor_interface.exit.i_crit_edge
  %80 = ptrtoint ptr %nvifs.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %nvifs.i, align 2
  %dec.i.i = add i16 %81, -1
  store i16 %dec.i.i, ptr %nvifs.i, align 2
  %82 = ptrtoint ptr %mon_vif_idx.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %mon_vif_idx.i, align 1
  %conv4.i.i = zext i8 %83 to i32
  %shl.i.i = shl nuw i32 1, %conv4.i.i
  %84 = ptrtoint ptr %vif_slot.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %vif_slot.i, align 4
  %86 = trunc i32 %shl.i.i to i8
  %87 = xor i8 %86, -1
  %conv6.i.i = and i8 %85, %87
  store i8 %conv6.i.i, ptr %vif_slot.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_rsp.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %hvif.i.i) #12
  br label %do.body65.i

if.end46.i:                                       ; preds = %if.end32.i
  %shl47.i = shl nuw nsw i32 1, %33
  %88 = ptrtoint ptr %sta_slot.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %sta_slot.i, align 2
  %90 = trunc i32 %shl47.i to i8
  %conv51.i = or i8 %89, %90
  store i8 %conv51.i, ptr %sta_slot.i, align 2
  %91 = ptrtoint ptr %nstations.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %nstations.i, align 4
  %inc53.i = add i16 %92, 1
  store i16 %inc53.i, ptr %nstations.i, align 4
  %93 = ptrtoint ptr %mon_vif_idx.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %mon_vif_idx.i, align 1
  %idxprom.i = zext i8 %94 to i32
  %arrayidx.i = getelementptr %struct.ath9k_htc_priv, ptr %1, i32 0, i32 19, i32 %idxprom.i
  %95 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv37.i, ptr %arrayidx.i, align 1
  %96 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ah, align 4
  %is_monitoring.i = getelementptr inbounds %struct.ath_hw, ptr %97, i32 0, i32 15
  %98 = ptrtoint ptr %is_monitoring.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %is_monitoring.i, align 4
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %15, i32 0, i32 3, i32 3
  %99 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %100, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool58.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool58.not.i, label %if.end46.i.ath9k_htc_add_monitor_interface.exit_crit_edge, label %if.then59.i

if.end46.i.ath9k_htc_add_monitor_interface.exit_crit_edge: ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_add_monitor_interface.exit

if.then59.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #14
  %101 = ptrtoint ptr %mon_vif_idx.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %mon_vif_idx.i, align 1
  %conv61.i = zext i8 %102 to i32
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i.i, ptr noundef nonnull @.str.29, i32 noundef %conv61.i, i32 noundef %33) #12
  br label %ath9k_htc_add_monitor_interface.exit

do.body65.i:                                      ; preds = %__ath9k_htc_remove_monitor_interface.exit.i, %if.end13.i.do.body65.i_crit_edge, %if.end.i119.do.body65.i_crit_edge, %lor.lhs.false.i.do.body65.i_crit_edge, %if.then19.do.body65.i_crit_edge
  %debug_mask66.i = getelementptr inbounds %struct.ath_hw, ptr %15, i32 0, i32 3, i32 3
  %103 = ptrtoint ptr %debug_mask66.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %debug_mask66.i, align 4
  %and67.i = and i32 %104, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i)
  %tobool68.not.i = icmp eq i32 %and67.i, 0
  br i1 %tobool68.not.i, label %do.body65.i.ath9k_htc_add_monitor_interface.exit_crit_edge, label %if.then69.i

do.body65.i.ath9k_htc_add_monitor_interface.exit_crit_edge: ; preds = %do.body65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_add_monitor_interface.exit

if.then69.i:                                      ; preds = %do.body65.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i.i, ptr noundef nonnull @.str.30) #12
  br label %ath9k_htc_add_monitor_interface.exit

ath9k_htc_add_monitor_interface.exit:             ; preds = %if.then69.i, %do.body65.i.ath9k_htc_add_monitor_interface.exit_crit_edge, %if.then59.i, %if.end46.i.ath9k_htc_add_monitor_interface.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_rsp.i) #12
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %tsta.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %hvif.i) #12
  br label %if.end28

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then13.if.else_crit_edge
  %105 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ah, align 4
  %is_monitoring22 = getelementptr inbounds %struct.ath_hw, ptr %106, i32 0, i32 15
  %107 = ptrtoint ptr %is_monitoring22 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %is_monitoring22, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool23.not = icmp eq i8 %108, 0
  br i1 %tobool23.not, label %if.else.if.end28_crit_edge, label %if.then24

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @ath9k_htc_remove_monitor_interface(ptr noundef %1)
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.else.if.end28_crit_edge, %ath9k_htc_add_monitor_interface.exit, %if.end10.if.end28_crit_edge
  %and29 = and i32 %changed, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp ne i32 %and29, 0
  %brmerge = select i1 %tobool30.not, i1 true, i1 %chip_reset.1.off0
  br i1 %brmerge, label %if.then32, label %if.end28.if.end48_crit_edge

if.end28.if.end48_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

if.then32:                                        ; preds = %if.end28
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %109 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %chandef, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %hw_value, align 2
  %conv = zext i16 %112 to i32
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %113 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %debug_mask, align 4
  %and34 = and i32 %114, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.then32.do.end_crit_edge, label %if.then36

if.then32.do.end_crit_edge:                       ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then36:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %110, i32 0, i32 1
  %115 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %center_freq, align 4
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.26, i32 noundef %116) #12
  br label %do.end

do.end:                                           ; preds = %if.then36, %if.then32.do.end_crit_edge
  %117 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ah, align 4
  %call41 = call ptr @ath9k_cmn_get_channel(ptr noundef %hw, ptr noundef %118, ptr noundef %chandef) #12
  %119 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ah, align 4
  %arrayidx = getelementptr %struct.ath_hw, ptr %120, i32 0, i32 7, i32 %conv
  %common.i.i122 = getelementptr inbounds %struct.ath_hw, ptr %120, i32 0, i32 3
  %hw2.i = getelementptr inbounds %struct.ath_hw, ptr %120, i32 0, i32 3, i32 2
  %121 = ptrtoint ptr %hw2.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hw2.i, align 4
  %123 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %chandef, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %htc_mode.i) #12
  %125 = ptrtoint ptr %htc_mode.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 -1, ptr %htc_mode.i, align 2, !annotation !132
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd_rsp.i121) #12
  %126 = ptrtoint ptr %cmd_rsp.i121 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 -1, ptr %cmd_rsp.i121, align 1, !annotation !132
  %op_flags.i = getelementptr inbounds %struct.ath_hw, ptr %120, i32 0, i32 3, i32 5
  %127 = ptrtoint ptr %op_flags.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %op_flags.i, align 4
  %and1.i.i = and i32 %128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i123 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i123, label %if.end.i125, label %ath9k_htc_set_channel.exit.thread

ath9k_htc_set_channel.exit.thread:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_rsp.i121) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %htc_mode.i) #12
  br label %cleanup

if.end.i125:                                      ; preds = %do.end
  %129 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %hw, align 8
  %and.i124 = and i32 %130, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i124)
  %tobool7.i = icmp ne i32 %and.i124, 0
  call void @mutex_lock_nested(ptr noundef %htc_pm_lock.i, i32 noundef 0) #12
  %131 = ptrtoint ptr %ps_usecount.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %ps_usecount.i, align 4
  %inc.i.i = add i32 %132, 1
  store i32 %inc.i.i, ptr %ps_usecount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp.not.i.i = icmp eq i32 %132, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end.i125.ath9k_htc_ps_wakeup.exit.i_crit_edge

if.end.i125.ath9k_htc_ps_wakeup.exit.i_crit_edge: ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_ps_wakeup.exit.i

if.end.i.i:                                       ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #14
  %133 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ah, align 4
  %call.i.i = call zeroext i1 @ath9k_hw_setpower(ptr noundef %134, i32 noundef 0) #12
  br label %ath9k_htc_ps_wakeup.exit.i

ath9k_htc_ps_wakeup.exit.i:                       ; preds = %if.end.i.i, %if.end.i125.ath9k_htc_ps_wakeup.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %htc_pm_lock.i) #12
  %135 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ah, align 4
  %ani_work.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 43
  %call1.i.i126 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ani_work.i.i) #12
  %op_flags.i.i = getelementptr inbounds %struct.ath_hw, ptr %136, i32 0, i32 3, i32 5
  call void @_clear_bit(i32 noundef 2, ptr noundef %op_flags.i.i) #12
  %cleanup_timer.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 40, i32 10
  %call9.i = call i32 @del_timer_sync(ptr noundef %cleanup_timer.i) #12
  call void @ath9k_htc_tx_drain(ptr noundef %1) #12
  %wmi.i127 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 4
  %137 = ptrtoint ptr %wmi.i127 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %wmi.i127, align 4
  %call10.i = call i32 @ath9k_wmi_cmd(ptr noundef %138, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef nonnull %cmd_rsp.i121, i32 noundef 1, i32 noundef 200) #12
  %139 = ptrtoint ptr %wmi.i127 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %wmi.i127, align 4
  %call13.i = call i32 @ath9k_wmi_cmd(ptr noundef %140, i32 noundef 11, ptr noundef null, i32 noundef 0, ptr noundef nonnull %cmd_rsp.i121, i32 noundef 1, i32 noundef 200) #12
  %141 = ptrtoint ptr %wmi.i127 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %wmi.i127, align 4
  %call18.i128 = call i32 @ath9k_wmi_cmd(ptr noundef %142, i32 noundef 13, ptr noundef null, i32 noundef 0, ptr noundef nonnull %cmd_rsp.i121, i32 noundef 1, i32 noundef 200) #12
  call void @ath9k_wmi_event_drain(ptr noundef %1) #12
  %debug_mask.i129 = getelementptr inbounds %struct.ath_hw, ptr %120, i32 0, i32 3, i32 3
  %143 = ptrtoint ptr %debug_mask.i129 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %debug_mask.i129, align 4
  %and22.i = and i32 %144, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %ath9k_htc_ps_wakeup.exit.i.do.end35.i_crit_edge, label %if.then24.i

ath9k_htc_ps_wakeup.exit.i.do.end35.i_crit_edge:  ; preds = %ath9k_htc_ps_wakeup.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end35.i

if.then24.i:                                      ; preds = %ath9k_htc_ps_wakeup.exit.i
  %145 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ah, align 4
  %curchan.i = getelementptr inbounds %struct.ath_hw, ptr %146, i32 0, i32 8
  %147 = ptrtoint ptr %curchan.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %curchan.i, align 4
  %channel26.i = getelementptr inbounds %struct.ath9k_channel, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %channel26.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %channel26.i, align 4
  %conv.i = zext i16 %150 to i32
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %124, i32 0, i32 1
  %151 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %center_freq.i, align 4
  %width.i.i = getelementptr inbounds %struct.ieee80211_conf, ptr %122, i32 0, i32 7, i32 1
  %153 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %width.i.i, align 4
  %155 = zext i32 %154 to i64
  call void @__sanitizer_cov_trace_switch(i64 %155, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %154, label %land.rhs.i.i [
    i32 6, label %if.then24.i.conf_is_ht.exit.i_crit_edge
    i32 7, label %if.then24.i.conf_is_ht.exit.i_crit_edge145
    i32 0, label %if.then24.i.conf_is_ht.exit.i_crit_edge146
  ]

if.then24.i.conf_is_ht.exit.i_crit_edge146:       ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %conf_is_ht.exit.i

if.then24.i.conf_is_ht.exit.i_crit_edge145:       ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %conf_is_ht.exit.i

if.then24.i.conf_is_ht.exit.i_crit_edge:          ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %conf_is_ht.exit.i

land.rhs.i.i:                                     ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %conf_is_ht.exit.i

conf_is_ht.exit.i:                                ; preds = %land.rhs.i.i, %if.then24.i.conf_is_ht.exit.i_crit_edge, %if.then24.i.conf_is_ht.exit.i_crit_edge145, %if.then24.i.conf_is_ht.exit.i_crit_edge146
  %156 = phi i32 [ 0, %if.then24.i.conf_is_ht.exit.i_crit_edge ], [ 1, %land.rhs.i.i ], [ 0, %if.then24.i.conf_is_ht.exit.i_crit_edge145 ], [ 0, %if.then24.i.conf_is_ht.exit.i_crit_edge146 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %154)
  %cmp.i.i = icmp eq i32 %154, 2
  %conv30.i = zext i1 %cmp.i.i to i32
  %and.lobit.i = lshr exact i32 %and.i124, 3
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i.i122, ptr noundef nonnull @.str.31, i32 noundef %conv.i, i32 noundef %152, i32 noundef %156, i32 noundef %conv30.i, i32 noundef %and.lobit.i) #12
  br label %do.end35.i

do.end35.i:                                       ; preds = %conf_is_ht.exit.i, %ath9k_htc_ps_wakeup.exit.i.do.end35.i_crit_edge
  %caldata38.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 34
  %spec.select.i = select i1 %tobool7.i, ptr null, ptr %caldata38.i
  %call40.i = call i32 @ath9k_hw_reset(ptr noundef %120, ptr noundef %arrayidx, ptr noundef %spec.select.i, i1 noundef zeroext %tobool7.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.end44.i, label %if.then42.i

if.then42.i:                                      ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  %center_freq43.i = getelementptr inbounds %struct.ieee80211_channel, ptr %124, i32 0, i32 1
  %157 = ptrtoint ptr %center_freq43.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %center_freq43.i, align 4
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i122, ptr noundef nonnull @.str.32, i32 noundef %158, i32 noundef %call40.i) #12
  br label %ath9k_htc_set_channel.exit

if.end44.i:                                       ; preds = %do.end35.i
  %curtxpow.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 25
  %159 = ptrtoint ptr %curtxpow.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %curtxpow.i, align 2
  %txpowlimit.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 26
  %161 = ptrtoint ptr %txpowlimit.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %txpowlimit.i, align 4
  call void @ath9k_cmn_update_txpow(ptr noundef %120, i16 noundef zeroext %160, i16 noundef zeroext %162, ptr noundef %curtxpow.i) #12
  %163 = ptrtoint ptr %wmi.i127 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %wmi.i127, align 4
  %call48.i = call i32 @ath9k_wmi_cmd(ptr noundef %164, i32 noundef 12, ptr noundef null, i32 noundef 0, ptr noundef nonnull %cmd_rsp.i121, i32 noundef 1, i32 noundef 200) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool51.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool51.not.i, label %if.end53.i, label %if.end44.i.ath9k_htc_set_channel.exit_crit_edge

if.end44.i.ath9k_htc_set_channel.exit_crit_edge:  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_set_channel.exit

if.end53.i:                                       ; preds = %if.end44.i
  call void @ath9k_host_rx_init(ptr noundef %1) #12
  %channelFlags.i.i = getelementptr %struct.ath_hw, ptr %120, i32 0, i32 7, i32 %conv, i32 2
  %165 = ptrtoint ptr %channelFlags.i.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %channelFlags.i.i, align 2
  %167 = and i16 %166, 1
  %168 = xor i16 %167, 1
  %169 = ptrtoint ptr %htc_mode.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %168, ptr %htc_mode.i, align 2
  %170 = ptrtoint ptr %wmi.i127 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %wmi.i127, align 4
  %call58.i = call i32 @ath9k_wmi_cmd(ptr noundef %171, i32 noundef 15, ptr noundef nonnull %htc_mode.i, i32 noundef 2, ptr noundef nonnull %cmd_rsp.i121, i32 noundef 1, i32 noundef 200) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool61.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool61.not.i, label %do.body64.i, label %if.end53.i.ath9k_htc_set_channel.exit_crit_edge

if.end53.i.ath9k_htc_set_channel.exit_crit_edge:  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_set_channel.exit

do.body64.i:                                      ; preds = %if.end53.i
  %172 = ptrtoint ptr %wmi.i127 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %wmi.i127, align 4
  %call66.i = call i32 @ath9k_wmi_cmd(ptr noundef %173, i32 noundef 5, ptr noundef null, i32 noundef 0, ptr noundef nonnull %cmd_rsp.i121, i32 noundef 1, i32 noundef 200) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %tobool69.not.i = icmp eq i32 %call66.i, 0
  br i1 %tobool69.not.i, label %if.end71.i, label %do.body64.i.ath9k_htc_set_channel.exit_crit_edge

do.body64.i.ath9k_htc_set_channel.exit_crit_edge: ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_set_channel.exit

if.end71.i:                                       ; preds = %do.body64.i
  %htc.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 3
  %174 = ptrtoint ptr %htc.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %htc.i, align 4
  call void @htc_start(ptr noundef %175) #12
  %176 = ptrtoint ptr %op_flags.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load volatile i32, ptr %op_flags.i, align 4
  %178 = and i32 %177, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool74.not.i = icmp eq i32 %178, 0
  br i1 %tobool74.not.i, label %land.lhs.true.i, label %if.end71.i.if.end80.i_crit_edge

if.end71.i.if.end80.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80.i

land.lhs.true.i:                                  ; preds = %if.end71.i
  %179 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %hw, align 8
  %and77.i = and i32 %180, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77.i)
  %tobool78.not.i = icmp eq i32 %and77.i, 0
  br i1 %tobool78.not.i, label %if.then79.i, label %land.lhs.true.i.if.end80.i_crit_edge

land.lhs.true.i.if.end80.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80.i

if.then79.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @ath9k_htc_vif_reconfig(ptr noundef %1) #12
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then79.i, %land.lhs.true.i.if.end80.i_crit_edge, %if.end71.i.if.end80.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %181 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %181, 5
  %call84.i = call i32 @mod_timer(ptr noundef %cleanup_timer.i, i32 noundef %add.i) #12
  %182 = ptrtoint ptr %op_flags.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load volatile i32, ptr %op_flags.i, align 4
  %184 = and i32 %183, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool87.not.i = icmp eq i32 %184, 0
  br i1 %tobool87.not.i, label %if.end80.i.ath9k_htc_set_channel.exit.thread139_crit_edge, label %land.lhs.true88.i

if.end80.i.ath9k_htc_set_channel.exit.thread139_crit_edge: ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_set_channel.exit.thread139

land.lhs.true88.i:                                ; preds = %if.end80.i
  %spectral_mode.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 35, i32 2
  %185 = ptrtoint ptr %spectral_mode.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %spectral_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %186)
  %cmp.i130 = icmp eq i32 %186, 3
  br i1 %cmp.i130, label %if.then90.i, label %land.lhs.true88.i.ath9k_htc_set_channel.exit.thread139_crit_edge

land.lhs.true88.i.ath9k_htc_set_channel.exit.thread139_crit_edge: ; preds = %land.lhs.true88.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_set_channel.exit.thread139

if.then90.i:                                      ; preds = %land.lhs.true88.i
  call void @__sanitizer_cov_trace_pc() #14
  %spec_priv.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 35
  call void @ath9k_cmn_spectral_scan_trigger(ptr noundef %common.i.i122, ptr noundef %spec_priv.i) #12
  br label %ath9k_htc_set_channel.exit.thread139

ath9k_htc_set_channel.exit.thread139:             ; preds = %if.then90.i, %land.lhs.true88.i.ath9k_htc_set_channel.exit.thread139_crit_edge, %if.end80.i.ath9k_htc_set_channel.exit.thread139_crit_edge
  call void @ath9k_htc_ps_restore(ptr noundef %1) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_rsp.i121) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %htc_mode.i) #12
  br label %if.end48

ath9k_htc_set_channel.exit:                       ; preds = %do.body64.i.ath9k_htc_set_channel.exit_crit_edge, %if.end53.i.ath9k_htc_set_channel.exit_crit_edge, %if.end44.i.ath9k_htc_set_channel.exit_crit_edge, %if.then42.i
  %ret.0.i = phi i32 [ %call40.i, %if.then42.i ], [ %call48.i, %if.end44.i.ath9k_htc_set_channel.exit_crit_edge ], [ %call58.i, %if.end53.i.ath9k_htc_set_channel.exit_crit_edge ], [ %call66.i, %do.body64.i.ath9k_htc_set_channel.exit_crit_edge ]
  call void @ath9k_htc_ps_restore(ptr noundef %1) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_rsp.i121) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %htc_mode.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp = icmp slt i32 %ret.0.i, 0
  br i1 %cmp, label %ath9k_htc_set_channel.exit.cleanup_crit_edge, label %ath9k_htc_set_channel.exit.if.end48_crit_edge

ath9k_htc_set_channel.exit.if.end48_crit_edge:    ; preds = %ath9k_htc_set_channel.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

ath9k_htc_set_channel.exit.cleanup_crit_edge:     ; preds = %ath9k_htc_set_channel.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %ath9k_htc_set_channel.exit.cleanup_crit_edge, %ath9k_htc_set_channel.exit.thread
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.27) #12
  br label %out

if.end48:                                         ; preds = %ath9k_htc_set_channel.exit.if.end48_crit_edge, %ath9k_htc_set_channel.exit.thread139, %if.end28.if.end48_crit_edge
  %and49 = and i32 %changed, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.if.end62_crit_edge, label %if.then51

if.end48.if.end62_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.then51:                                        ; preds = %if.end48
  %187 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %hw, align 4
  %and53 = and i32 %188, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.else57, label %if.then55

if.then55:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_lock_nested(ptr noundef %htc_pm_lock.i, i32 noundef 0) #12
  %189 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %ah, align 4
  %call.i133 = call zeroext i1 @ath9k_hw_setpower(ptr noundef %190, i32 noundef 2) #12
  call void @mutex_unlock(ptr noundef %htc_pm_lock.i) #12
  %ps_enabled = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 49
  %191 = ptrtoint ptr %ps_enabled to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 1, ptr %ps_enabled, align 4
  br label %if.end62

if.else57:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  %ps_enabled58 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 49
  %192 = ptrtoint ptr %ps_enabled58 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 0, ptr %ps_enabled58, align 4
  %ps_work = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 45
  %call59 = call zeroext i1 @cancel_work_sync(ptr noundef %ps_work) #12
  call void @mutex_lock_nested(ptr noundef %htc_pm_lock.i, i32 noundef 0) #12
  %193 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %ah, align 4
  %call.i136 = call zeroext i1 @ath9k_hw_setpower(ptr noundef %194, i32 noundef 0) #12
  call void @mutex_unlock(ptr noundef %htc_pm_lock.i) #12
  br label %if.end62

if.end62:                                         ; preds = %if.else57, %if.then55, %if.end48.if.end62_crit_edge
  %and63 = and i32 %changed, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end62.out_crit_edge, label %if.then65

if.end62.out_crit_edge:                           ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  %power_level = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 1
  %195 = ptrtoint ptr %power_level to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %power_level, align 4
  %.tr = trunc i32 %196 to i16
  %conv66 = shl i16 %.tr, 1
  %txpowlimit = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 26
  %197 = ptrtoint ptr %txpowlimit to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %conv66, ptr %txpowlimit, align 4
  %198 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %ah, align 4
  %curtxpow = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 25
  %200 = ptrtoint ptr %curtxpow to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %curtxpow, align 2
  call void @ath9k_cmn_update_txpow(ptr noundef %199, i16 noundef zeroext %201, i16 noundef zeroext %conv66, ptr noundef %curtxpow) #12
  br label %out

out:                                              ; preds = %if.then65, %if.end62.out_crit_edge, %cleanup
  %ret.2 = phi i32 [ -22, %cleanup ], [ 0, %if.then65 ], [ 0, %if.end62.out_crit_edge ]
  call void @ath9k_htc_ps_restore(ptr noundef %1)
  call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_htc_bss_info_changed(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr nocapture noundef readonly %bss_conf, i32 noundef %changed) #0 align 64 {
entry:
  %cmd_rsp.i.i = alloca i8, align 1
  %trate.i = alloca %struct.ath9k_htc_target_rate, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %ah2 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ah2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah2, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  %mutex = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 62
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %htc_pm_lock.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %htc_pm_lock.i, i32 noundef 0) #12
  %ps_usecount.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 48
  %4 = ptrtoint ptr %ps_usecount.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ps_usecount.i, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %ps_usecount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.ath9k_htc_ps_wakeup.exit_crit_edge

entry.ath9k_htc_ps_wakeup.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_ps_wakeup.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %ah2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ah2, align 4
  %call.i = tail call zeroext i1 @ath9k_hw_setpower(ptr noundef %7, i32 noundef 0) #12
  br label %ath9k_htc_ps_wakeup.exit

ath9k_htc_ps_wakeup.exit:                         ; preds = %if.end.i, %entry.ath9k_htc_ps_wakeup.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %htc_pm_lock.i) #12
  %and = and i32 %changed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %ath9k_htc_ps_wakeup.exit.if.end36_crit_edge, label %do.body

ath9k_htc_ps_wakeup.exit.if.end36_crit_edge:      ; preds = %ath9k_htc_ps_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

do.body:                                          ; preds = %ath9k_htc_ps_wakeup.exit
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug_mask, align 4
  %and3 = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %do.body.do.end_crit_edge, label %if.then5

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %assoc = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 10
  %10 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %assoc, align 1, !range !133
  %12 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.33, i32 noundef %12) #12
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body.do.end_crit_edge
  %assoc7 = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 10
  %13 = ptrtoint ptr %assoc7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %assoc7, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool8.not = icmp eq i8 %14, 0
  %num_sta_assoc_vif11 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 23
  %15 = ptrtoint ptr %num_sta_assoc_vif11 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %num_sta_assoc_vif11, align 4
  %.252 = select i1 %tobool8.not, i8 -1, i8 1
  %dec = add i8 %16, %.252
  store i8 %dec, ptr %num_sta_assoc_vif11, align 4
  %17 = ptrtoint ptr %assoc7 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %assoc7, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool14.not = icmp eq i8 %18, 0
  br i1 %tobool14.not, label %if.then15, label %do.end.if.end16_crit_edge

do.end.if.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 5
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %op_flags) #12
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %do.end.if.end16_crit_edge
  %19 = ptrtoint ptr %ah2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ah2, align 4
  %opmode = getelementptr inbounds %struct.ath_hw, ptr %20, i32 0, i32 28
  %21 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %opmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp = icmp eq i32 %22, 2
  br i1 %cmp, label %if.then19, label %if.end16.if.end36_crit_edge

if.end16.if.end36_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then19:                                        ; preds = %if.end16
  %num_sta_assoc_vif.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 23
  %23 = ptrtoint ptr %num_sta_assoc_vif.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num_sta_assoc_vif.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp.i = icmp eq i8 %24, 1
  br i1 %cmp.i, label %if.then.i, label %if.then19.ath9k_htc_choose_set_bssid.exit_crit_edge

if.then19.ath9k_htc_choose_set_bssid.exit_crit_edge: ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_choose_set_bssid.exit

if.then.i:                                        ; preds = %if.then19
  %hw.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw.i, align 4
  tail call void @ieee80211_iterate_active_interfaces_atomic(ptr noundef %26, i32 noundef 1, ptr noundef nonnull @ath9k_htc_bss_iter, ptr noundef %1) #12
  %27 = ptrtoint ptr %ah2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ah2, align 4
  tail call void @ath9k_hw_write_associd(ptr noundef %28) #12
  %debug_mask.i.i = getelementptr inbounds %struct.ath_hw, ptr %28, i32 0, i32 3, i32 3
  %29 = ptrtoint ptr %debug_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %debug_mask.i.i, align 4
  %and.i.i = and i32 %30, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.ath9k_htc_choose_set_bssid.exit_crit_edge, label %if.then.i.i

if.then.i.ath9k_htc_choose_set_bssid.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_choose_set_bssid.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %common.i.i.i = getelementptr inbounds %struct.ath_hw, ptr %28, i32 0, i32 3
  %curbssid.i.i = getelementptr inbounds %struct.ath_hw, ptr %28, i32 0, i32 3, i32 10
  %curaid.i.i = getelementptr inbounds %struct.ath_hw, ptr %28, i32 0, i32 3, i32 8
  %31 = ptrtoint ptr %curaid.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %curaid.i.i, align 2
  %conv.i.i = zext i16 %32 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i.i.i, ptr noundef nonnull @.str.37, ptr noundef %curbssid.i.i, i32 noundef %conv.i.i) #12
  br label %ath9k_htc_choose_set_bssid.exit

ath9k_htc_choose_set_bssid.exit:                  ; preds = %if.then.i.i, %if.then.i.ath9k_htc_choose_set_bssid.exit_crit_edge, %if.then19.ath9k_htc_choose_set_bssid.exit_crit_edge
  %33 = ptrtoint ptr %assoc7 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %assoc7, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool21.not = icmp ne i8 %34, 0
  %35 = ptrtoint ptr %num_sta_assoc_vif.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %.pr = load i8, ptr %num_sta_assoc_vif.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.pr)
  %cmp25 = icmp eq i8 %.pr, 1
  %or.cond = select i1 %tobool21.not, i1 %cmp25, i1 false
  br i1 %or.cond, label %if.then27, label %if.else

if.then27:                                        ; preds = %ath9k_htc_choose_set_bssid.exit
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %ah2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ah2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %call1.i = tail call i32 @jiffies_to_msecs(i32 noundef %38) #12
  %longcal_timer.i = getelementptr inbounds %struct.ath_hw, ptr %37, i32 0, i32 3, i32 6, i32 1
  %39 = ptrtoint ptr %longcal_timer.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call1.i, ptr %longcal_timer.i, align 4
  %shortcal_timer.i = getelementptr inbounds %struct.ath_hw, ptr %37, i32 0, i32 3, i32 6, i32 2
  %40 = ptrtoint ptr %shortcal_timer.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call1.i, ptr %shortcal_timer.i, align 4
  %checkani_timer.i = getelementptr inbounds %struct.ath_hw, ptr %37, i32 0, i32 3, i32 6, i32 4
  %41 = ptrtoint ptr %checkani_timer.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call1.i, ptr %checkani_timer.i, align 4
  %op_flags.i = getelementptr inbounds %struct.ath_hw, ptr %37, i32 0, i32 3, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %op_flags.i) #12
  %hw.i231 = getelementptr inbounds %struct.ath_hw, ptr %37, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %hw.i231 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw.i231, align 4
  %ani_work.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 43
  tail call void @ieee80211_queue_delayed_work(ptr noundef %43, ptr noundef %ani_work.i, i32 noundef 10) #12
  br label %if.end36

if.else:                                          ; preds = %ath9k_htc_choose_set_bssid.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp30 = icmp eq i8 %.pr, 0
  br i1 %cmp30, label %if.then32, label %if.else.if.end36_crit_edge

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %ah2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ah2, align 4
  %ani_work.i233 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 43
  %call1.i234 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ani_work.i233) #12
  %op_flags.i235 = getelementptr inbounds %struct.ath_hw, ptr %45, i32 0, i32 3, i32 5
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %op_flags.i235) #12
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.else.if.end36_crit_edge, %if.then27, %if.end16.if.end36_crit_edge, %ath9k_htc_ps_wakeup.exit.if.end36_crit_edge
  %and37 = and i32 %changed, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end46_crit_edge, label %if.then39

if.end36.if.end46_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then39:                                        ; preds = %if.end36
  %46 = ptrtoint ptr %ah2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ah2, align 4
  %opmode41 = getelementptr inbounds %struct.ath_hw, ptr %47, i32 0, i32 28
  %48 = ptrtoint ptr %opmode41 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %opmode41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp42 = icmp eq i32 %49, 1
  br i1 %cmp42, label %if.then44, label %if.then39.if.end46_crit_edge

if.then39.if.end46_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then44:                                        ; preds = %if.then39
  %aid = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 13
  %50 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %aid, align 2
  %curaid = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 8
  %52 = ptrtoint ptr %curaid to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %curaid, align 2
  %curbssid = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 10
  %53 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bss_conf, align 8
  %55 = call ptr @memcpy(ptr %curbssid, ptr %54, i32 6)
  %56 = ptrtoint ptr %ah2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ah2, align 4
  tail call void @ath9k_hw_write_associd(ptr noundef %57) #12
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %57, i32 0, i32 3, i32 3
  %58 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %59, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then44.if.end46_crit_edge, label %if.then.i237

if.then44.if.end46_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then.i237:                                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %57, i32 0, i32 3
  %curbssid.i = getelementptr inbounds %struct.ath_hw, ptr %57, i32 0, i32 3, i32 10
  %curaid.i = getelementptr inbounds %struct.ath_hw, ptr %57, i32 0, i32 3, i32 8
  %60 = ptrtoint ptr %curaid.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %curaid.i, align 2
  %conv.i = zext i16 %61 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i.i, ptr noundef nonnull @.str.37, ptr noundef %curbssid.i, i32 noundef %conv.i) #12
  br label %if.end46

if.end46:                                         ; preds = %if.then.i237, %if.then44.if.end46_crit_edge, %if.then39.if.end46_crit_edge, %if.end36.if.end46_crit_edge
  %and47 = and i32 %changed, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end46.if.end89_crit_edge, label %land.lhs.true49

if.end46.if.end89_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

land.lhs.true49:                                  ; preds = %if.end46
  %enable_beacon = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 17
  %62 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %enable_beacon, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool50.not = icmp eq i8 %63, 0
  br i1 %tobool50.not, label %land.lhs.true49.if.then69_crit_edge, label %do.body53

land.lhs.true49.if.then69_crit_edge:              ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then69

do.body53:                                        ; preds = %land.lhs.true49
  %debug_mask54 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %64 = ptrtoint ptr %debug_mask54 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %debug_mask54, align 4
  %and55 = and i32 %65, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %do.body53.land.lhs.true66_crit_edge, label %if.then57

do.body53.land.lhs.true66_crit_edge:              ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true66

if.then57:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bss_conf, align 8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.34, ptr noundef %67) #12
  br label %land.lhs.true66

land.lhs.true66:                                  ; preds = %if.then57, %do.body53.land.lhs.true66_crit_edge
  tail call void @ath9k_htc_set_tsfadjust(ptr noundef %1, ptr noundef %vif) #12
  %enable_beacon62 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 37, i32 5
  %68 = ptrtoint ptr %enable_beacon62 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %enable_beacon62, align 1
  tail call void @ath9k_htc_beacon_config(ptr noundef %1, ptr noundef %vif) #12
  %69 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %69)
  %.pr249 = load i8, ptr %enable_beacon, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr249)
  %tobool68.not = icmp eq i8 %.pr249, 0
  br i1 %tobool68.not, label %land.lhs.true66.if.then69_crit_edge, label %land.lhs.true66.if.end89_crit_edge

land.lhs.true66.if.end89_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

land.lhs.true66.if.then69_crit_edge:              ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then69

if.then69:                                        ; preds = %land.lhs.true66.if.then69_crit_edge, %land.lhs.true49.if.then69_crit_edge
  %num_ap_vif = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 24
  %70 = ptrtoint ptr %num_ap_vif to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %num_ap_vif, align 1
  %conv70 = zext i8 %71 to i32
  %num_mbss_vif = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 21
  %72 = ptrtoint ptr %num_mbss_vif to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %num_mbss_vif, align 2
  %conv71 = zext i8 %73 to i32
  %add = add nuw nsw i32 %conv71, %conv70
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add)
  %cmp72 = icmp ult i32 %add, 2
  br i1 %cmp72, label %if.then69.do.body77_crit_edge, label %lor.lhs.false

if.then69.do.body77_crit_edge:                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body77

lor.lhs.false:                                    ; preds = %if.then69
  %num_ibss_vif = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 20
  %74 = ptrtoint ptr %num_ibss_vif to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %num_ibss_vif, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool75.not = icmp eq i8 %75, 0
  br i1 %tobool75.not, label %lor.lhs.false.if.end89_crit_edge, label %lor.lhs.false.do.body77_crit_edge

lor.lhs.false.do.body77_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body77

lor.lhs.false.if.end89_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

do.body77:                                        ; preds = %lor.lhs.false.do.body77_crit_edge, %if.then69.do.body77_crit_edge
  %debug_mask78 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %76 = ptrtoint ptr %debug_mask78 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %debug_mask78, align 4
  %and79 = and i32 %77, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %do.body77.do.end85_crit_edge, label %if.then81

do.body77.do.end85_crit_edge:                     ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end85

if.then81:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bss_conf, align 8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.35, ptr noundef %79) #12
  br label %do.end85

do.end85:                                         ; preds = %if.then81, %do.body77.do.end85_crit_edge
  %enable_beacon87 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 37, i32 5
  %80 = ptrtoint ptr %enable_beacon87 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %enable_beacon87, align 1
  tail call void @ath9k_htc_beacon_config(ptr noundef %1, ptr noundef %vif) #12
  br label %if.end89

if.end89:                                         ; preds = %do.end85, %lor.lhs.false.if.end89_crit_edge, %land.lhs.true66.if.end89_crit_edge, %if.end46.if.end89_crit_edge
  %and90 = and i32 %changed, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end89.if.end135_crit_edge, label %if.then92

if.end89.if.end135_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end135

if.then92:                                        ; preds = %if.end89
  %nvifs = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 27
  %81 = ptrtoint ptr %nvifs to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %nvifs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %82)
  %cmp94 = icmp eq i16 %82, 1
  br i1 %cmp94, label %land.lhs.true96, label %if.then92.do.body126_crit_edge

if.then92.do.body126_crit_edge:                   ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body126

land.lhs.true96:                                  ; preds = %if.then92
  %83 = ptrtoint ptr %ah2 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ah2, align 4
  %opmode98 = getelementptr inbounds %struct.ath_hw, ptr %84, i32 0, i32 28
  %85 = ptrtoint ptr %opmode98 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %opmode98, align 4
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %86, label %land.lhs.true96.do.body126_crit_edge [
    i32 3, label %land.lhs.true101
    i32 7, label %land.lhs.true114
  ]

land.lhs.true96.do.body126_crit_edge:             ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body126

land.lhs.true101:                                 ; preds = %land.lhs.true96
  %88 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %89)
  %cmp102 = icmp eq i32 %89, 3
  br i1 %cmp102, label %land.lhs.true104, label %land.lhs.true101.do.body126_crit_edge

land.lhs.true101.do.body126_crit_edge:            ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body126

land.lhs.true104:                                 ; preds = %land.lhs.true101
  %num_ap_vif105 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 24
  %90 = ptrtoint ptr %num_ap_vif105 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %num_ap_vif105, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %91)
  %cmp107 = icmp eq i8 %91, 1
  br i1 %cmp107, label %land.lhs.true104.if.then123_crit_edge, label %land.lhs.true104.do.body126_crit_edge

land.lhs.true104.do.body126_crit_edge:            ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body126

land.lhs.true104.if.then123_crit_edge:            ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then123

land.lhs.true114:                                 ; preds = %land.lhs.true96
  %92 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %93)
  %cmp116 = icmp eq i32 %93, 7
  br i1 %cmp116, label %land.lhs.true118, label %land.lhs.true114.do.body126_crit_edge

land.lhs.true114.do.body126_crit_edge:            ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body126

land.lhs.true118:                                 ; preds = %land.lhs.true114
  %num_mbss_vif119 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 21
  %94 = ptrtoint ptr %num_mbss_vif119 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %num_mbss_vif119, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %95)
  %cmp121 = icmp eq i8 %95, 1
  br i1 %cmp121, label %land.lhs.true118.if.then123_crit_edge, label %land.lhs.true118.do.body126_crit_edge

land.lhs.true118.do.body126_crit_edge:            ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body126

land.lhs.true118.if.then123_crit_edge:            ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then123

if.then123:                                       ; preds = %land.lhs.true118.if.then123_crit_edge, %land.lhs.true104.if.then123_crit_edge
  %op_flags124 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 32
  tail call void @_set_bit(i32 noundef 6, ptr noundef %op_flags124) #12
  br label %do.body126

do.body126:                                       ; preds = %if.then123, %land.lhs.true118.do.body126_crit_edge, %land.lhs.true114.do.body126_crit_edge, %land.lhs.true104.do.body126_crit_edge, %land.lhs.true101.do.body126_crit_edge, %land.lhs.true96.do.body126_crit_edge, %if.then92.do.body126_crit_edge
  %debug_mask127 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %96 = ptrtoint ptr %debug_mask127 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %debug_mask127, align 4
  %and128 = and i32 %97, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %do.body126.do.end134_crit_edge, label %if.then130

do.body126.do.end134_crit_edge:                   ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end134

if.then130:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #14
  %98 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %bss_conf, align 8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.36, ptr noundef %99) #12
  br label %do.end134

do.end134:                                        ; preds = %if.then130, %do.body126.do.end134_crit_edge
  tail call void @ath9k_htc_beacon_config(ptr noundef %1, ptr noundef %vif) #12
  br label %if.end135

if.end135:                                        ; preds = %do.end134, %if.end89.if.end135_crit_edge
  %and136 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.end135.if.end152_crit_edge, label %if.then138

if.end135.if.end152_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152

if.then138:                                       ; preds = %if.end135
  %use_short_slot = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 16
  %100 = ptrtoint ptr %use_short_slot to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %use_short_slot, align 2, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool139.not = icmp eq i8 %101, 0
  %. = select i1 %tobool139.not, i32 20, i32 9
  %102 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %103)
  %cmp144 = icmp eq i32 %103, 3
  br i1 %cmp144, label %if.then146, label %if.else149

if.then146:                                       ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #14
  %beacon = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 38
  %slottime147 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 38, i32 4
  %104 = ptrtoint ptr %slottime147 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %., ptr %slottime147, align 4
  %105 = ptrtoint ptr %beacon to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1, ptr %beacon, align 4
  br label %if.end152

if.else149:                                       ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #14
  %slottime150 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 66
  %106 = ptrtoint ptr %slottime150 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %., ptr %slottime150, align 4
  tail call void @ath9k_hw_init_global_settings(ptr noundef %3) #12
  br label %if.end152

if.end152:                                        ; preds = %if.else149, %if.then146, %if.end135.if.end152_crit_edge
  %and153 = and i32 %changed, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %if.end152.if.end156_crit_edge, label %if.then155

if.end152.if.end156_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end156

if.then155:                                       ; preds = %if.end152
  %107 = ptrtoint ptr %ah2 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ah2, align 4
  %common.i.i239 = getelementptr inbounds %struct.ath_hw, ptr %108, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %trate.i) #12
  %109 = call ptr @memset(ptr %trate.i, i32 0, i32 72)
  %110 = tail call i32 @llvm.read_register.i32(metadata !122) #12
  %and.i.i.i.i.i.i = and i32 %110, -16384
  %111 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %113, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !135
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %if.then155.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then155.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then155
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i240 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i240, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i241

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i241:                                   ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 696, ptr noundef nonnull @.str.40) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i241, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then155.rcu_read_lock.exit.i_crit_edge
  %114 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %bss_conf, align 8
  %call1.i242 = tail call ptr @ieee80211_find_sta(ptr noundef %vif, ptr noundef %115) #12
  %tobool.not.i243 = icmp eq ptr %call1.i242, null
  br i1 %tobool.not.i243, label %if.then.i244, label %if.end.i245

if.then.i244:                                     ; preds = %rcu_read_lock.exit.i
  %call.i18.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i18.i, label %if.then.i244.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i21.i

if.then.i244.rcu_read_unlock.exit.i_crit_edge:    ; preds = %if.then.i244
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true.i21.i:                              ; preds = %if.then.i244
  %call1.i19.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19.i)
  %tobool.not.i20.i = icmp eq i32 %call1.i19.i, 0
  br i1 %tobool.not.i20.i, label %land.lhs.true.i21.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i23.i

land.lhs.true.i21.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i23.i:                             ; preds = %land.lhs.true.i21.i
  %.b4.i22.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22.i, label %land.lhs.true2.i23.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i24.i

land.lhs.true2.i23.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

if.then.i24.i:                                    ; preds = %land.lhs.true2.i23.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 724, ptr noundef nonnull @.str.41) #12
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i24.i, %land.lhs.true2.i23.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i21.i.rcu_read_unlock.exit.i_crit_edge, %if.then.i244.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !136
  %116 = tail call i32 @llvm.read_register.i32(metadata !122) #12
  %and.i.i.i.i.i25.i = and i32 %116, -16384
  %117 = inttoptr i32 %and.i.i.i.i.i25.i to ptr
  %preempt_count.i.i.i.i26.i = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %preempt_count.i.i.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %preempt_count.i.i.i.i26.i, align 4
  %sub.i.i.i.i = add i32 %119, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i26.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %ath9k_htc_update_rate.exit

if.end.i245:                                      ; preds = %rcu_read_lock.exit.i
  call fastcc void @ath9k_htc_setup_rate(ptr noundef %1, ptr noundef nonnull %call1.i242, ptr noundef nonnull %trate.i) #12
  %call.i27.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i27.i, label %if.end.i245.rcu_read_unlock.exit37.i_crit_edge, label %land.lhs.true.i30.i

if.end.i245.rcu_read_unlock.exit37.i_crit_edge:   ; preds = %if.end.i245
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit37.i

land.lhs.true.i30.i:                              ; preds = %if.end.i245
  %call1.i28.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i28.i)
  %tobool.not.i29.i = icmp eq i32 %call1.i28.i, 0
  br i1 %tobool.not.i29.i, label %land.lhs.true.i30.i.rcu_read_unlock.exit37.i_crit_edge, label %land.lhs.true2.i32.i

land.lhs.true.i30.i.rcu_read_unlock.exit37.i_crit_edge: ; preds = %land.lhs.true.i30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit37.i

land.lhs.true2.i32.i:                             ; preds = %land.lhs.true.i30.i
  %.b4.i31.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i31.i, label %land.lhs.true2.i32.i.rcu_read_unlock.exit37.i_crit_edge, label %if.then.i33.i

land.lhs.true2.i32.i.rcu_read_unlock.exit37.i_crit_edge: ; preds = %land.lhs.true2.i32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit37.i

if.then.i33.i:                                    ; preds = %land.lhs.true2.i32.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 724, ptr noundef nonnull @.str.41) #12
  br label %rcu_read_unlock.exit37.i

rcu_read_unlock.exit37.i:                         ; preds = %if.then.i33.i, %land.lhs.true2.i32.i.rcu_read_unlock.exit37.i_crit_edge, %land.lhs.true.i30.i.rcu_read_unlock.exit37.i_crit_edge, %if.end.i245.rcu_read_unlock.exit37.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !136
  %120 = tail call i32 @llvm.read_register.i32(metadata !122) #12
  %and.i.i.i.i.i34.i = and i32 %120, -16384
  %121 = inttoptr i32 %and.i.i.i.i.i34.i to ptr
  %preempt_count.i.i.i.i35.i = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %preempt_count.i.i.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %preempt_count.i.i.i.i35.i, align 4
  %sub.i.i.i36.i = add i32 %123, -1
  store volatile i32 %sub.i.i.i36.i, ptr %preempt_count.i.i.i.i35.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %124 = ptrtoint ptr %ah2 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ah2, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd_rsp.i.i) #12
  %126 = ptrtoint ptr %cmd_rsp.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 -1, ptr %cmd_rsp.i.i, align 1, !annotation !132
  %wmi.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 4
  %127 = ptrtoint ptr %wmi.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %wmi.i.i, align 4
  %call1.i38.i = call i32 @ath9k_wmi_cmd(ptr noundef %128, i32 noundef 23, ptr noundef nonnull %trate.i, i32 noundef 72, ptr noundef nonnull %cmd_rsp.i.i, i32 noundef 1, i32 noundef 200) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i38.i)
  %tobool.not.i39.i = icmp eq i32 %call1.i38.i, 0
  br i1 %tobool.not.i39.i, label %do.body.i, label %ath9k_htc_send_rate_cmd.exit.i

ath9k_htc_send_rate_cmd.exit.i:                   ; preds = %rcu_read_unlock.exit37.i
  call void @__sanitizer_cov_trace_pc() #14
  %common.i.i.i246 = getelementptr inbounds %struct.ath_hw, ptr %125, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i.i246, ptr noundef nonnull @.str.42) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_rsp.i.i) #12
  br label %ath9k_htc_update_rate.exit

do.body.i:                                        ; preds = %rcu_read_unlock.exit37.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_rsp.i.i) #12
  %debug_mask.i247 = getelementptr inbounds %struct.ath_hw, ptr %108, i32 0, i32 3, i32 3
  %129 = ptrtoint ptr %debug_mask.i247 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %debug_mask.i247, align 4
  %and.i248 = and i32 %130, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i248)
  %tobool5.not.i = icmp eq i32 %and.i248, 0
  br i1 %tobool5.not.i, label %do.body.i.ath9k_htc_update_rate.exit_crit_edge, label %if.then6.i

do.body.i.ath9k_htc_update_rate.exit_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_update_rate.exit

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %131 = ptrtoint ptr %bss_conf to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %bss_conf, align 8
  %capflags.i = getelementptr inbounds %struct.ath9k_htc_target_rate, ptr %trate.i, i32 0, i32 2
  %133 = ptrtoint ptr %capflags.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %capflags.i, align 4
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i.i239, ptr noundef nonnull @.str.38, ptr noundef %132, i32 noundef %134) #12
  br label %ath9k_htc_update_rate.exit

ath9k_htc_update_rate.exit:                       ; preds = %if.then6.i, %do.body.i.ath9k_htc_update_rate.exit_crit_edge, %ath9k_htc_send_rate_cmd.exit.i, %rcu_read_unlock.exit.i
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %trate.i) #12
  br label %if.end156

if.end156:                                        ; preds = %ath9k_htc_update_rate.exit, %if.end152.if.end156_crit_edge
  call void @ath9k_htc_ps_restore(ptr noundef %1)
  call void @mutex_unlock(ptr noundef %mutex) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_htc_configure_filter(ptr nocapture noundef readonly %hw, i32 noundef %changed_flags, ptr nocapture noundef %total_flags, i64 noundef %multicast) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah, align 4
  %mutex = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 62
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %4 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %total_flags, align 4
  %and2 = and i32 %5, 1014
  store i32 %and2, ptr %total_flags, align 4
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 5
  %6 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %op_flags, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end12, label %do.body

do.body:                                          ; preds = %entry
  %8 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ah, align 4
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %9, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %do.body.cleanup_crit_edge, label %if.then8

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %common.i44 = getelementptr inbounds %struct.ath_hw, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i44, ptr noundef nonnull @.str.43) #12
  br label %cleanup

if.end12:                                         ; preds = %entry
  %htc_pm_lock.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %htc_pm_lock.i, i32 noundef 0) #12
  %ps_usecount.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 48
  %12 = ptrtoint ptr %ps_usecount.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ps_usecount.i, align 4
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %ps_usecount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end12.ath9k_htc_ps_wakeup.exit_crit_edge

if.end12.ath9k_htc_ps_wakeup.exit_crit_edge:      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_ps_wakeup.exit

if.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ah, align 4
  %call.i = tail call zeroext i1 @ath9k_hw_setpower(ptr noundef %15, i32 noundef 0) #12
  br label %ath9k_htc_ps_wakeup.exit

ath9k_htc_ps_wakeup.exit:                         ; preds = %if.end.i, %if.end12.ath9k_htc_ps_wakeup.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %htc_pm_lock.i) #12
  %16 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %total_flags, align 4
  %rxfilter = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 31
  %18 = ptrtoint ptr %rxfilter to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %rxfilter, align 4
  %call13 = tail call i32 @ath9k_htc_calcrxfilter(ptr noundef %1) #12
  %19 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ah, align 4
  tail call void @ath9k_hw_setrxfilter(ptr noundef %20, i32 noundef %call13) #12
  %21 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ah, align 4
  %debug_mask18 = getelementptr inbounds %struct.ath_hw, ptr %22, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %debug_mask18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug_mask18, align 4
  %and19 = and i32 %24, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %ath9k_htc_ps_wakeup.exit.do.end26_crit_edge, label %if.then21

ath9k_htc_ps_wakeup.exit.do.end26_crit_edge:      ; preds = %ath9k_htc_ps_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end26

if.then21:                                        ; preds = %ath9k_htc_ps_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  %common.i46 = getelementptr inbounds %struct.ath_hw, ptr %22, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i46, ptr noundef nonnull @.str.44, i32 noundef %call13) #12
  br label %do.end26

do.end26:                                         ; preds = %if.then21, %ath9k_htc_ps_wakeup.exit.do.end26_crit_edge
  tail call void @ath9k_htc_ps_restore(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %if.then8, %do.body.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_htc_set_key(ptr nocapture noundef readonly %hw, i32 noundef %cmd, ptr noundef %vif, ptr noundef %sta, ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @htc_modparam_nohwcrypt to i32))
  %4 = load i32, ptr @htc_modparam_nohwcrypt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vif, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %6, label %if.end.if.end11_crit_edge [
    i32 1, label %if.end.land.lhs.true_crit_edge
    i32 7, label %if.end.land.lhs.true_crit_edge78
  ]

if.end.land.lhs.true_crit_edge78:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge78
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %8 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cipher, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %9, label %land.lhs.true.if.end11_crit_edge [
    i32 1027074, label %land.lhs.true.land.lhs.true8_crit_edge
    i32 1027076, label %land.lhs.true.land.lhs.true8_crit_edge79
  ]

land.lhs.true.land.lhs.true8_crit_edge79:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true8

land.lhs.true.land.lhs.true8_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true8

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

land.lhs.true8:                                   ; preds = %land.lhs.true.land.lhs.true8_crit_edge, %land.lhs.true.land.lhs.true8_crit_edge79
  %flags = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags, align 8
  %13 = and i16 %12, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool9.not = icmp eq i16 %13, 0
  br i1 %tobool9.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end11_crit_edge

land.lhs.true8.if.end11_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true8.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %mutex = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 62
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug_mask, align 4
  %and12 = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.do.end_crit_edge, label %if.then14

if.end11.do.end_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.45) #12
  br label %do.end

do.end:                                           ; preds = %if.then14, %if.end11.do.end_crit_edge
  %htc_pm_lock.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %htc_pm_lock.i, i32 noundef 0) #12
  %ps_usecount.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 48
  %16 = ptrtoint ptr %ps_usecount.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ps_usecount.i, align 4
  %inc.i = add i32 %17, 1
  store i32 %inc.i, ptr %ps_usecount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 0
  br i1 %cmp.not.i, label %if.end.i, label %do.end.ath9k_htc_ps_wakeup.exit_crit_edge

do.end.ath9k_htc_ps_wakeup.exit_crit_edge:        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_ps_wakeup.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ah, align 4
  %call.i = tail call zeroext i1 @ath9k_hw_setpower(ptr noundef %19, i32 noundef 0) #12
  br label %ath9k_htc_ps_wakeup.exit

ath9k_htc_ps_wakeup.exit:                         ; preds = %if.end.i, %do.end.ath9k_htc_ps_wakeup.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %htc_pm_lock.i) #12
  %20 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %cmd, label %ath9k_htc_ps_wakeup.exit.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb47
  ]

ath9k_htc_ps_wakeup.exit.sw.epilog_crit_edge:     ; preds = %ath9k_htc_ps_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %ath9k_htc_ps_wakeup.exit
  %call16 = tail call i32 @ath_key_config(ptr noundef %common.i, ptr noundef %vif, ptr noundef %sta, ptr noundef %key) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call16)
  %cmp17 = icmp sgt i32 %call16, -1
  br i1 %cmp17, label %if.then19, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then19:                                        ; preds = %sw.bb
  %conv20 = trunc i32 %call16 to i8
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %21 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv20, ptr %hw_key_idx, align 2
  %flags21 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 6
  %22 = ptrtoint ptr %flags21 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %flags21, align 8
  %24 = or i16 %23, 2
  store i16 %24, ptr %flags21, align 8
  %cipher24 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %25 = ptrtoint ptr %cipher24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cipher24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027074, i32 %26)
  %cmp25 = icmp eq i32 %26, 1027074
  br i1 %cmp25, label %if.end32.thread, label %if.end32

if.end32:                                         ; preds = %if.then19
  %27 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ah, align 4
  %sw_mgmt_crypto_tx = getelementptr inbounds %struct.ath_hw, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %sw_mgmt_crypto_tx to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sw_mgmt_crypto_tx, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool34.not = icmp ne i8 %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1027076, i32 %26)
  %cmp38 = icmp eq i32 %26, 1027076
  %or.cond = select i1 %tobool34.not, i1 %cmp38, i1 false
  br i1 %or.cond, label %if.then40, label %if.end32.sw.epilog_crit_edge

if.end32.sw.epilog_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end32.thread:                                  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  %31 = or i16 %23, 6
  %32 = ptrtoint ptr %flags21 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %flags21, align 8
  br label %sw.epilog

if.then40:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %flags21 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %flags21, align 8
  %35 = or i16 %34, 16
  store i16 %35, ptr %flags21, align 8
  br label %sw.epilog

sw.bb47:                                          ; preds = %ath9k_htc_ps_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  %hw_key_idx48 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %36 = ptrtoint ptr %hw_key_idx48 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %hw_key_idx48, align 2
  tail call void @ath_key_delete(ptr noundef %common.i, i8 noundef zeroext %37) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb47, %if.then40, %if.end32.thread, %if.end32.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %ath9k_htc_ps_wakeup.exit.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb47 ], [ %call16, %sw.bb.sw.epilog_crit_edge ], [ 0, %if.then40 ], [ 0, %if.end32.sw.epilog_crit_edge ], [ -22, %ath9k_htc_ps_wakeup.exit.sw.epilog_crit_edge ], [ 0, %if.end32.thread ]
  tail call void @ath9k_htc_ps_restore(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %land.lhs.true8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -28, %entry.cleanup_crit_edge ], [ -95, %land.lhs.true8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_htc_sw_scan_start(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, ptr nocapture noundef readnone %mac_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah, align 4
  %mutex = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 62
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %beacon_lock = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 36
  tail call void @_raw_spin_lock_bh(ptr noundef %beacon_lock) #12
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 5
  tail call void @_set_bit(i32 noundef 5, ptr noundef %op_flags) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %beacon_lock) #12
  %ps_work = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 45
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %ps_work) #12
  %4 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ah, align 4
  %ani_work.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 43
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ani_work.i) #12
  %op_flags.i = getelementptr inbounds %struct.ath_hw, ptr %5, i32 0, i32 3, i32 5
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %op_flags.i) #12
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_htc_sw_scan_complete(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah, align 4
  %mutex = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 62
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %beacon_lock = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 36
  tail call void @_raw_spin_lock_bh(ptr noundef %beacon_lock) #12
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 5
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %op_flags) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %beacon_lock) #12
  %htc_pm_lock.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %htc_pm_lock.i, i32 noundef 0) #12
  %ps_usecount.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 48
  %4 = ptrtoint ptr %ps_usecount.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ps_usecount.i, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %ps_usecount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.ath9k_htc_ps_wakeup.exit_crit_edge

entry.ath9k_htc_ps_wakeup.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_ps_wakeup.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ah, align 4
  %call.i = tail call zeroext i1 @ath9k_hw_setpower(ptr noundef %7, i32 noundef 0) #12
  br label %ath9k_htc_ps_wakeup.exit

ath9k_htc_ps_wakeup.exit:                         ; preds = %if.end.i, %entry.ath9k_htc_ps_wakeup.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %htc_pm_lock.i) #12
  tail call fastcc void @ath9k_htc_vif_reconfig(ptr noundef %1)
  tail call void @ath9k_htc_ps_restore(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath9k_htc_get_stats(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %stats) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %ah2 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ah2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah2, align 4
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath9k_htc_set_rts_threshold(ptr nocapture noundef readnone %hw, i32 noundef %value) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_htc_sta_add(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %vif, ptr noundef %sta) #0 align 64 {
entry:
  %cmd_rsp.i.i = alloca i8, align 1
  %trate.i = alloca %struct.ath9k_htc_target_rate, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %mutex = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 62
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %htc_pm_lock.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %htc_pm_lock.i, i32 noundef 0) #12
  %ps_usecount.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %ps_usecount.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ps_usecount.i, align 4
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %ps_usecount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.ath9k_htc_ps_wakeup.exit_crit_edge

entry.ath9k_htc_ps_wakeup.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_ps_wakeup.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ah.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ah.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ah.i, align 4
  %call.i = tail call zeroext i1 @ath9k_hw_setpower(ptr noundef %5, i32 noundef 0) #12
  br label %ath9k_htc_ps_wakeup.exit

ath9k_htc_ps_wakeup.exit:                         ; preds = %if.end.i, %entry.ath9k_htc_ps_wakeup.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %htc_pm_lock.i) #12
  %call = tail call fastcc i32 @ath9k_htc_add_station(ptr noundef %1, ptr noundef %vif, ptr noundef %sta)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %ath9k_htc_ps_wakeup.exit.if.end_crit_edge

ath9k_htc_ps_wakeup.exit.if.end_crit_edge:        ; preds = %ath9k_htc_ps_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body:                                          ; preds = %ath9k_htc_ps_wakeup.exit
  %rc_update_work = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 3
  tail call void @__init_work(ptr noundef %rc_update_work, i32 noundef 0) #12
  %6 = ptrtoint ptr %rc_update_work to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %rc_update_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 3, i32 2
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.46, ptr noundef nonnull @ath9k_htc_sta_add.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry5 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 0, i32 3
  %7 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 4, i32 0, i32 7
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.work_struct, ptr %rc_update_work, i32 0, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ath9k_htc_sta_rc_update_work, ptr %func, align 4
  %htc_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 6, i32 1, i32 1, i32 1
  %10 = ptrtoint ptr %htc_priv to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %htc_priv, align 4
  %ah.i22 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %ah.i22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ah.i22, align 4
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %12, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %trate.i) #12
  %13 = call ptr @memset(ptr %trate.i, i32 0, i32 72)
  call fastcc void @ath9k_htc_setup_rate(ptr noundef %1, ptr noundef %sta, ptr noundef nonnull %trate.i) #12
  %14 = ptrtoint ptr %ah.i22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ah.i22, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd_rsp.i.i) #12
  %16 = ptrtoint ptr %cmd_rsp.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %cmd_rsp.i.i, align 1, !annotation !132
  %wmi.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %wmi.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wmi.i.i, align 4
  %call1.i.i = call i32 @ath9k_wmi_cmd(ptr noundef %18, i32 noundef 23, ptr noundef nonnull %trate.i, i32 noundef 72, ptr noundef nonnull %cmd_rsp.i.i, i32 noundef 1, i32 noundef 200) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i, label %ath9k_htc_send_rate_cmd.exit.i

ath9k_htc_send_rate_cmd.exit.i:                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %common.i.i.i = getelementptr inbounds %struct.ath_hw, ptr %15, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i.i, ptr noundef nonnull @.str.42) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_rsp.i.i) #12
  br label %ath9k_htc_init_rate.exit

do.body.i:                                        ; preds = %do.body
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_rsp.i.i) #12
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %12, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %20, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %do.body.i.ath9k_htc_init_rate.exit_crit_edge, label %if.then3.i

do.body.i.ath9k_htc_init_rate.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_init_rate.exit

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %addr.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %capflags.i = getelementptr inbounds %struct.ath9k_htc_target_rate, ptr %trate.i, i32 0, i32 2
  %21 = ptrtoint ptr %capflags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %capflags.i, align 4
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i.i, ptr noundef nonnull @.str.38, ptr noundef %addr.i, i32 noundef %22) #12
  br label %ath9k_htc_init_rate.exit

ath9k_htc_init_rate.exit:                         ; preds = %if.then3.i, %do.body.i.ath9k_htc_init_rate.exit_crit_edge, %ath9k_htc_send_rate_cmd.exit.i
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %trate.i) #12
  br label %if.end

if.end:                                           ; preds = %ath9k_htc_init_rate.exit, %ath9k_htc_ps_wakeup.exit.if.end_crit_edge
  call void @ath9k_htc_ps_restore(ptr noundef %1)
  call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_htc_sta_remove(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %vif, ptr noundef %sta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %rc_update_work = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 3
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %rc_update_work) #12
  %mutex = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 62
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %htc_pm_lock.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %htc_pm_lock.i, i32 noundef 0) #12
  %ps_usecount.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %ps_usecount.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ps_usecount.i, align 4
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %ps_usecount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.ath9k_htc_ps_wakeup.exit_crit_edge

entry.ath9k_htc_ps_wakeup.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_ps_wakeup.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ah.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ah.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ah.i, align 4
  %call.i = tail call zeroext i1 @ath9k_hw_setpower(ptr noundef %5, i32 noundef 0) #12
  br label %ath9k_htc_ps_wakeup.exit

ath9k_htc_ps_wakeup.exit:                         ; preds = %if.end.i, %entry.ath9k_htc_ps_wakeup.exit_crit_edge
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  tail call void @mutex_unlock(ptr noundef %htc_pm_lock.i) #12
  %htc = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %htc, align 4
  %8 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %drv_priv, align 4
  tail call void @htc_sta_drain(ptr noundef %7, i8 noundef zeroext %9) #12
  %call2 = tail call fastcc i32 @ath9k_htc_remove_station(ptr noundef %1, ptr noundef %vif, ptr noundef %sta)
  tail call void @ath9k_htc_ps_restore(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_htc_sta_rc_update(ptr nocapture noundef readnone %hw, ptr nocapture noundef readnone %vif, ptr noundef %sta, i32 noundef %changed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %changed, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rc_update_work = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 3, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %rc_update_work) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_htc_conf_tx(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, i16 noundef zeroext %queue, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  %qi = alloca %struct.ath9k_tx_queue_info, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %qi) #12
  %conv = zext i16 %queue to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %queue)
  %cmp = icmp ugt i16 %queue, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 62
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %htc_pm_lock.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %htc_pm_lock.i, i32 noundef 0) #12
  %ps_usecount.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 48
  %4 = ptrtoint ptr %ps_usecount.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ps_usecount.i, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %ps_usecount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end.ath9k_htc_ps_wakeup.exit_crit_edge

if.end.ath9k_htc_ps_wakeup.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_ps_wakeup.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ah, align 4
  %call.i = tail call zeroext i1 @ath9k_hw_setpower(ptr noundef %7, i32 noundef 0) #12
  br label %ath9k_htc_ps_wakeup.exit

ath9k_htc_ps_wakeup.exit:                         ; preds = %if.end.i, %if.end.ath9k_htc_ps_wakeup.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %htc_pm_lock.i) #12
  %8 = call ptr @memset(ptr %qi, i32 0, i32 60)
  %aifs = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 3
  %9 = ptrtoint ptr %aifs to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %aifs, align 2
  %conv3 = zext i8 %10 to i32
  %tqi_aifs = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 5
  %11 = ptrtoint ptr %tqi_aifs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv3, ptr %tqi_aifs, align 4
  %cw_min = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 1
  %12 = ptrtoint ptr %cw_min to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cw_min, align 2
  %conv4 = zext i16 %13 to i32
  %tqi_cwmin = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 6
  %14 = ptrtoint ptr %tqi_cwmin to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv4, ptr %tqi_cwmin, align 4
  %cw_max = getelementptr inbounds %struct.ieee80211_tx_queue_params, ptr %params, i32 0, i32 2
  %15 = ptrtoint ptr %cw_max to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %cw_max, align 2
  %conv5 = zext i16 %16 to i32
  %tqi_cwmax = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 7
  %17 = ptrtoint ptr %tqi_cwmax to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv5, ptr %tqi_cwmax, align 4
  %18 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %params, align 2
  %conv6 = zext i16 %19 to i32
  %mul = shl nuw nsw i32 %conv6, 5
  %tqi_burstTime = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 12
  %20 = ptrtoint ptr %tqi_burstTime to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul, ptr %tqi_burstTime, align 4
  %hwq_map = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 57
  %call7 = tail call i32 @get_hw_qnum(i16 noundef zeroext %queue, ptr noundef %hwq_map) #12
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %debug_mask, align 4
  %and = and i32 %22, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %ath9k_htc_ps_wakeup.exit.do.end_crit_edge, label %if.then8

ath9k_htc_ps_wakeup.exit.do.end_crit_edge:        ; preds = %ath9k_htc_ps_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then8:                                         ; preds = %ath9k_htc_ps_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %aifs to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %aifs, align 2
  %conv11 = zext i8 %24 to i32
  %25 = ptrtoint ptr %cw_min to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %cw_min, align 2
  %conv13 = zext i16 %26 to i32
  %27 = ptrtoint ptr %cw_max to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %cw_max, align 2
  %conv15 = zext i16 %28 to i32
  %29 = ptrtoint ptr %params to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %params, align 2
  %conv17 = zext i16 %30 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.49, i32 noundef %conv, i32 noundef %call7, i32 noundef %conv11, i32 noundef %conv13, i32 noundef %conv15, i32 noundef %conv17) #12
  br label %do.end

do.end:                                           ; preds = %if.then8, %ath9k_htc_ps_wakeup.exit.do.end_crit_edge
  %call19 = call i32 @ath_htc_txq_update(ptr noundef %1, i32 noundef %call7, ptr noundef nonnull %qi) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.50) #12
  br label %out

if.end22:                                         ; preds = %do.end
  %31 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ah, align 4
  %opmode = getelementptr inbounds %struct.ath_hw, ptr %32, i32 0, i32 28
  %33 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %opmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp24 = icmp eq i32 %34, 1
  br i1 %cmp24, label %land.lhs.true, label %if.end22.out_crit_edge

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true:                                    ; preds = %if.end22
  %arrayidx = getelementptr %struct.ath9k_htc_priv, ptr %1, i32 0, i32 57, i32 2
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %36)
  %cmp27 = icmp eq i32 %call7, %36
  br i1 %cmp27, label %if.then29, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  call void @ath9k_htc_beaconq_config(ptr noundef %1) #12
  br label %out

out:                                              ; preds = %if.then29, %land.lhs.true.out_crit_edge, %if.end22.out_crit_edge, %if.then21
  call void @ath9k_htc_ps_restore(ptr noundef %1)
  call void @mutex_unlock(ptr noundef %mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %out ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %qi) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ath9k_htc_get_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %mutex = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 62
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %htc_pm_lock.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %htc_pm_lock.i, i32 noundef 0) #12
  %ps_usecount.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %ps_usecount.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ps_usecount.i, align 4
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %ps_usecount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.ath9k_htc_ps_wakeup.exit_crit_edge

entry.ath9k_htc_ps_wakeup.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_ps_wakeup.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ah.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ah.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ah.i, align 4
  %call.i = tail call zeroext i1 @ath9k_hw_setpower(ptr noundef %5, i32 noundef 0) #12
  br label %ath9k_htc_ps_wakeup.exit

ath9k_htc_ps_wakeup.exit:                         ; preds = %if.end.i, %entry.ath9k_htc_ps_wakeup.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %htc_pm_lock.i) #12
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ah, align 4
  %call = tail call i64 @ath9k_hw_gettsf64(ptr noundef %7) #12
  tail call void @ath9k_htc_ps_restore(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_htc_set_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, i64 noundef %tsf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %mutex = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 62
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %htc_pm_lock.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %htc_pm_lock.i, i32 noundef 0) #12
  %ps_usecount.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %ps_usecount.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ps_usecount.i, align 4
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %ps_usecount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.ath9k_htc_ps_wakeup.exit_crit_edge

entry.ath9k_htc_ps_wakeup.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_ps_wakeup.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ah.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ah.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ah.i, align 4
  %call.i = tail call zeroext i1 @ath9k_hw_setpower(ptr noundef %5, i32 noundef 0) #12
  br label %ath9k_htc_ps_wakeup.exit

ath9k_htc_ps_wakeup.exit:                         ; preds = %if.end.i, %entry.ath9k_htc_ps_wakeup.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %htc_pm_lock.i) #12
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ah, align 4
  tail call void @ath9k_hw_settsf64(ptr noundef %7, i64 noundef %tsf) #12
  tail call void @ath9k_htc_ps_restore(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_htc_reset_tsf(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %mutex = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 62
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %htc_pm_lock.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %htc_pm_lock.i, i32 noundef 0) #12
  %ps_usecount.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %ps_usecount.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ps_usecount.i, align 4
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %ps_usecount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.ath9k_htc_ps_wakeup.exit_crit_edge

entry.ath9k_htc_ps_wakeup.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_ps_wakeup.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ah.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ah.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ah.i, align 4
  %call.i = tail call zeroext i1 @ath9k_hw_setpower(ptr noundef %5, i32 noundef 0) #12
  br label %ath9k_htc_ps_wakeup.exit

ath9k_htc_ps_wakeup.exit:                         ; preds = %if.end.i, %entry.ath9k_htc_ps_wakeup.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %htc_pm_lock.i) #12
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ah, align 4
  tail call void @ath9k_hw_reset_tsf(ptr noundef %7) #12
  tail call void @ath9k_htc_ps_restore(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_htc_ampdu_action(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %sta2 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 1
  %2 = ptrtoint ptr %sta2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sta2, align 4
  %4 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %params, align 4
  %tid4 = getelementptr inbounds %struct.ieee80211_ampdu_params, ptr %params, i32 0, i32 2
  %6 = ptrtoint ptr %tid4 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tid4, align 4
  %mutex = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 62
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %htc_pm_lock.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %htc_pm_lock.i, i32 noundef 0) #12
  %ps_usecount.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 48
  %8 = ptrtoint ptr %ps_usecount.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ps_usecount.i, align 4
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %ps_usecount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.ath9k_htc_ps_wakeup.exit_crit_edge

entry.ath9k_htc_ps_wakeup.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_ps_wakeup.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ah.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %ah.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ah.i, align 4
  %call.i = tail call zeroext i1 @ath9k_hw_setpower(ptr noundef %11, i32 noundef 0) #12
  br label %ath9k_htc_ps_wakeup.exit

ath9k_htc_ps_wakeup.exit:                         ; preds = %if.end.i, %entry.ath9k_htc_ps_wakeup.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %htc_pm_lock.i) #12
  %12 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %5, label %sw.default [
    i32 0, label %ath9k_htc_ps_wakeup.exit.sw.epilog_crit_edge
    i32 1, label %ath9k_htc_ps_wakeup.exit.sw.epilog_crit_edge38
    i32 2, label %sw.bb
    i32 3, label %ath9k_htc_ps_wakeup.exit.sw.bb5_crit_edge
    i32 4, label %ath9k_htc_ps_wakeup.exit.sw.bb5_crit_edge39
    i32 5, label %ath9k_htc_ps_wakeup.exit.sw.bb5_crit_edge40
    i32 6, label %sw.bb7
  ]

ath9k_htc_ps_wakeup.exit.sw.bb5_crit_edge40:      ; preds = %ath9k_htc_ps_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

ath9k_htc_ps_wakeup.exit.sw.bb5_crit_edge39:      ; preds = %ath9k_htc_ps_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

ath9k_htc_ps_wakeup.exit.sw.bb5_crit_edge:        ; preds = %ath9k_htc_ps_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

ath9k_htc_ps_wakeup.exit.sw.epilog_crit_edge38:   ; preds = %ath9k_htc_ps_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

ath9k_htc_ps_wakeup.exit.sw.epilog_crit_edge:     ; preds = %ath9k_htc_ps_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %ath9k_htc_ps_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call fastcc i32 @ath9k_htc_tx_aggr_oper(ptr noundef %1, ptr noundef %3, i32 noundef 2, i16 noundef zeroext %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %spec.store.select = select i1 %tobool.not, i32 1, i32 %call
  br label %sw.epilog

sw.bb5:                                           ; preds = %ath9k_htc_ps_wakeup.exit.sw.bb5_crit_edge, %ath9k_htc_ps_wakeup.exit.sw.bb5_crit_edge39, %ath9k_htc_ps_wakeup.exit.sw.bb5_crit_edge40
  %13 = tail call fastcc i32 @ath9k_htc_tx_aggr_oper(ptr noundef %1, ptr noundef %3, i32 noundef %5, i16 noundef zeroext %7)
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 0, i32 1
  tail call void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef %vif, ptr noundef %addr, i16 noundef zeroext %7) #12
  br label %sw.epilog

sw.bb7:                                           ; preds = %ath9k_htc_ps_wakeup.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %7)
  %cmp = icmp ugt i16 %7, 7
  br i1 %cmp, label %sw.bb7.sw.epilog_crit_edge, label %if.end10

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end10:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i16 %7 to i32
  %tx_lock = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 40, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #12
  %tid_state = getelementptr inbounds %struct.ieee80211_sta, ptr %3, i32 1, i32 0, i32 1
  %arrayidx = getelementptr [8 x i32], ptr %tid_state, i32 0, i32 %conv
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #12
  br label %sw.epilog

sw.default:                                       ; preds = %ath9k_htc_ps_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #14
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %16, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.51) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end10, %sw.bb7.sw.epilog_crit_edge, %sw.bb5, %sw.bb, %ath9k_htc_ps_wakeup.exit.sw.epilog_crit_edge, %ath9k_htc_ps_wakeup.exit.sw.epilog_crit_edge38
  %ret.0 = phi i32 [ 0, %sw.default ], [ 0, %if.end10 ], [ 0, %sw.bb5 ], [ %spec.store.select, %sw.bb ], [ 0, %ath9k_htc_ps_wakeup.exit.sw.epilog_crit_edge ], [ 0, %ath9k_htc_ps_wakeup.exit.sw.epilog_crit_edge38 ], [ -22, %sw.bb7.sw.epilog_crit_edge ]
  tail call void @ath9k_htc_ps_restore(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_rfkill_poll_state(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_htc_set_coverage_class(ptr nocapture noundef readonly %hw, i16 noundef signext %coverage_class) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %mutex = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 62
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %htc_pm_lock.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %htc_pm_lock.i, i32 noundef 0) #12
  %ps_usecount.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %ps_usecount.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ps_usecount.i, align 4
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %ps_usecount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.ath9k_htc_ps_wakeup.exit_crit_edge

entry.ath9k_htc_ps_wakeup.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_ps_wakeup.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ah.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ah.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ah.i, align 4
  %call.i = tail call zeroext i1 @ath9k_hw_setpower(ptr noundef %5, i32 noundef 0) #12
  br label %ath9k_htc_ps_wakeup.exit

ath9k_htc_ps_wakeup.exit:                         ; preds = %if.end.i, %entry.ath9k_htc_ps_wakeup.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %htc_pm_lock.i) #12
  %conv = sext i16 %coverage_class to i32
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ah, align 4
  %coverage_class2 = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 65
  %8 = ptrtoint ptr %coverage_class2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %coverage_class2, align 4
  %9 = load ptr, ptr %ah, align 4
  tail call void @ath9k_hw_init_global_settings(ptr noundef %9) #12
  tail call void @ath9k_htc_ps_restore(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath9k_htc_get_antenna(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %tx_ant, ptr nocapture noundef writeonly %rx_ant) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %ah.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ah.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah.i, align 4
  %macVersion.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %macVersion.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %macVersion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %5)
  %cmp.i = icmp eq i32 %5, 320
  br i1 %cmp.i, label %ath9k_htc_get_eeprom_base.exit, label %if.else.i

if.else.i:                                        ; preds = %entry
  %usbdev.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %usbdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usbdev.i, align 4
  %8 = add i32 %7, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %8)
  %switch = icmp ult i32 %8, -2
  %pBase.0.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 9
  %tobool.not = icmp eq ptr %pBase.0.i, null
  %or.cond = select i1 %switch, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.else.i.if.else_crit_edge, label %if.else.i.if.then_crit_edge

if.else.i.if.then_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.else.i.if.else_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

ath9k_htc_get_eeprom_base.exit:                   ; preds = %entry
  %pBase.0.i.old = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 9
  %tobool.not.old = icmp eq ptr %pBase.0.i.old, null
  br i1 %tobool.not.old, label %ath9k_htc_get_eeprom_base.exit.if.else_crit_edge, label %ath9k_htc_get_eeprom_base.exit.if.then_crit_edge

ath9k_htc_get_eeprom_base.exit.if.then_crit_edge: ; preds = %ath9k_htc_get_eeprom_base.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

ath9k_htc_get_eeprom_base.exit.if.else_crit_edge: ; preds = %ath9k_htc_get_eeprom_base.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %ath9k_htc_get_eeprom_base.exit.if.then_crit_edge, %if.else.i.if.then_crit_edge
  %txMask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 9, i32 0, i32 0, i32 8
  %9 = ptrtoint ptr %txMask to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %txMask, align 1
  %conv = zext i8 %10 to i32
  %11 = ptrtoint ptr %tx_ant to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %tx_ant, align 4
  %rxMask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 9, i32 0, i32 0, i32 7
  %12 = ptrtoint ptr %rxMask to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rxMask, align 1
  %conv2 = zext i8 %13 to i32
  br label %if.end

if.else:                                          ; preds = %ath9k_htc_get_eeprom_base.exit.if.else_crit_edge, %if.else.i.if.else_crit_edge
  %14 = ptrtoint ptr %tx_ant to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %tx_ant, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ 0, %if.else ], [ %conv2, %if.then ]
  %15 = ptrtoint ptr %rx_ant to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %storemerge, ptr %rx_ant, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_htc_set_bitrate_mask(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %vif, ptr nocapture noundef readonly %mask) #0 align 64 {
entry:
  %tmask = alloca %struct.ath9k_htc_target_rate_mask, align 8
  %cmd_rsp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmask) #12
  %4 = getelementptr inbounds %struct.ath9k_htc_target_rate_mask, ptr %tmask, i32 0, i32 2
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd_rsp) #12
  %5 = ptrtoint ptr %cmd_rsp to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %cmd_rsp, align 1, !annotation !132
  %6 = ptrtoint ptr %tmask to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %tmask, align 8
  %7 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %drv_priv, align 8
  store i8 %8, ptr %tmask, align 8
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mask, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %4, align 2
  %wmi = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wmi, align 4
  %call3 = call i32 @ath9k_wmi_cmd(ptr noundef %13, i32 noundef 31, ptr noundef nonnull %tmask, i32 noundef 8, ptr noundef nonnull %cmd_rsp, i32 noundef 1, i32 noundef 200) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %drv_priv, align 8
  %conv = zext i8 %15 to i32
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.58, i32 noundef %conv) #12
  br label %out

if.end:                                           ; preds = %entry
  %16 = getelementptr inbounds %struct.ath9k_htc_target_rate_mask, ptr %tmask, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %16, align 1
  %arrayidx7 = getelementptr [6 x %struct.anon.132], ptr %mask, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx7, align 4
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %4, align 2
  %21 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wmi, align 4
  %call12 = call i32 @ath9k_wmi_cmd(ptr noundef %22, i32 noundef 31, ptr noundef nonnull %tmask, i32 noundef 8, ptr noundef nonnull %cmd_rsp, i32 noundef 1, i32 noundef 200) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool15.not = icmp eq i32 %call12, 0
  br i1 %tobool15.not, label %do.body20, label %if.then16

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %drv_priv, align 8
  %conv18 = zext i8 %24 to i32
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.59, i32 noundef %conv18) #12
  br label %out

do.body20:                                        ; preds = %if.end
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %25 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %debug_mask, align 4
  %and = and i32 %26, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %do.body20.out_crit_edge, label %if.then22

do.body20.out_crit_edge:                          ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then22:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mask, align 4
  %29 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx7, align 4
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.60, i32 noundef %28, i32 noundef %30) #12
  br label %out

out:                                              ; preds = %if.then22, %do.body20.out_crit_edge, %if.then16, %if.then
  %ret.0 = phi i32 [ %call3, %if.then ], [ %call12, %if.then16 ], [ 0, %if.then22 ], [ 0, %do.body20.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_rsp) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmask) #12
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_htc_get_et_sset_count(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_get_et_stats(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_get_et_strings(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_htc_channel_switch_beacon(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr nocapture noundef readnone %chandef) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %csa_vif = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 63
  %2 = ptrtoint ptr %csa_vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csa_vif, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end23, label %do.end, !prof !137

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 1864, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %csa_vif to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %vif, ptr %csa_vif, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_iterate_active_interfaces_atomic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ath9k_htc_vif_iter(ptr nocapture noundef writeonly %data, ptr nocapture noundef readnone %mac, ptr nocapture noundef readonly %vif) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vif, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %1, label %entry.if.end_crit_edge [
    i32 3, label %entry.land.lhs.true_crit_edge
    i32 7, label %entry.land.lhs.true_crit_edge15
  ]

entry.land.lhs.true_crit_edge15:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge15
  %enable_beacon = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 17
  %3 = ptrtoint ptr %enable_beacon to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enable_beacon, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %reconfig_beacon = getelementptr inbounds %struct.ath9k_htc_priv, ptr %data, i32 0, i32 30
  %5 = ptrtoint ptr %reconfig_beacon to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %reconfig_beacon, align 1
  %rearm_ani = getelementptr inbounds %struct.ath9k_htc_priv, ptr %data, i32 0, i32 29
  %6 = ptrtoint ptr %rearm_ani to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %rearm_ani, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %assoc = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 10
  %7 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %assoc, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %rearm_ani6 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %data, i32 0, i32 29
  %9 = ptrtoint ptr %rearm_ani6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %rearm_ani6, align 2
  %reconfig_beacon7 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %data, i32 0, i32 30
  %10 = ptrtoint ptr %reconfig_beacon7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %reconfig_beacon7, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_beacon_reconfig(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @ieee80211_hdrlen(i16 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_htc_tx_get_slot(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_htc_tx_start(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_check_stop_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_tx_clear_slot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath9k_cmn_get_channel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_start_btcoex(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_stop_btcoex(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath9k_htc_remove_monitor_interface(ptr nocapture noundef %priv) unnamed_addr #0 align 64 {
entry:
  %hvif.i = alloca %struct.ath9k_htc_target_vif, align 1
  %cmd_rsp.i = alloca i8, align 1
  %cmd_rsp = alloca i8, align 1
  %sta_idx = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd_rsp) #12
  %2 = ptrtoint ptr %cmd_rsp to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %cmd_rsp, align 1, !annotation !132
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sta_idx) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %hvif.i) #12
  %3 = getelementptr inbounds %struct.ath9k_htc_target_vif, ptr %hvif.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd_rsp.i) #12
  %4 = ptrtoint ptr %cmd_rsp.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %cmd_rsp.i, align 1, !annotation !132
  %5 = getelementptr inbounds i8, ptr %hvif.i, i32 1
  %6 = call ptr @memset(ptr %5, i32 0, i32 11)
  %macaddr.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 9
  %7 = call ptr @memcpy(ptr %3, ptr %macaddr.i, i32 6)
  %mon_vif_idx.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 17
  %8 = ptrtoint ptr %mon_vif_idx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mon_vif_idx.i, align 1
  %10 = ptrtoint ptr %hvif.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %hvif.i, align 1
  %wmi.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 4
  %11 = ptrtoint ptr %wmi.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wmi.i, align 4
  %call1.i = call i32 @ath9k_wmi_cmd(ptr noundef %12, i32 noundef 18, ptr noundef nonnull %hvif.i, i32 noundef 12, ptr noundef nonnull %cmd_rsp.i, i32 noundef 1, i32 noundef 200) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %entry.__ath9k_htc_remove_monitor_interface.exit_crit_edge, label %if.then.i

entry.__ath9k_htc_remove_monitor_interface.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__ath9k_htc_remove_monitor_interface.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %mon_vif_idx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mon_vif_idx.i, align 1
  %conv.i = zext i8 %14 to i32
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.15, i32 noundef %conv.i) #12
  br label %__ath9k_htc_remove_monitor_interface.exit

__ath9k_htc_remove_monitor_interface.exit:        ; preds = %if.then.i, %entry.__ath9k_htc_remove_monitor_interface.exit_crit_edge
  %nvifs.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 27
  %15 = ptrtoint ptr %nvifs.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %nvifs.i, align 2
  %dec.i = add i16 %16, -1
  store i16 %dec.i, ptr %nvifs.i, align 2
  %17 = ptrtoint ptr %mon_vif_idx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mon_vif_idx.i, align 1
  %conv4.i = zext i8 %18 to i32
  %shl.i = shl nuw i32 1, %conv4.i
  %vif_slot.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 16
  %19 = ptrtoint ptr %vif_slot.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %vif_slot.i, align 4
  %21 = trunc i32 %shl.i to i8
  %22 = xor i8 %21, -1
  %conv6.i = and i8 %20, %22
  store i8 %conv6.i, ptr %vif_slot.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_rsp.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %hvif.i) #12
  %arrayidx = getelementptr %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 19, i32 %conv4.i
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx, align 1
  %25 = ptrtoint ptr %sta_idx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %sta_idx, align 1
  %26 = ptrtoint ptr %wmi.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wmi.i, align 4
  %call1 = call i32 @ath9k_wmi_cmd(ptr noundef %27, i32 noundef 17, ptr noundef nonnull %sta_idx, i32 noundef 1, ptr noundef nonnull %cmd_rsp, i32 noundef 1, i32 noundef 200) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %__ath9k_htc_remove_monitor_interface.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.13) #12
  br label %cleanup

if.end:                                           ; preds = %__ath9k_htc_remove_monitor_interface.exit
  %28 = ptrtoint ptr %sta_idx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sta_idx, align 1
  %conv = zext i8 %29 to i32
  %shl = shl nuw i32 1, %conv
  %sta_slot = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 18
  %30 = ptrtoint ptr %sta_slot to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %sta_slot, align 2
  %32 = trunc i32 %shl to i8
  %33 = xor i8 %32, -1
  %conv3 = and i8 %31, %33
  store i8 %conv3, ptr %sta_slot, align 2
  %nstations = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 28
  %34 = ptrtoint ptr %nstations to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %nstations, align 4
  %dec = add i16 %35, -1
  store i16 %dec, ptr %nstations, align 4
  %36 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ah, align 4
  %is_monitoring = getelementptr inbounds %struct.ath_hw, ptr %37, i32 0, i32 15
  %38 = ptrtoint ptr %is_monitoring to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %is_monitoring, align 4
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %39 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %debug_mask, align 4
  %and6 = and i32 %40, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.then8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %mon_vif_idx.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %mon_vif_idx.i, align 1
  %conv10 = zext i8 %42 to i32
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.14, i32 noundef %conv10, i32 noundef %conv) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sta_idx) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_rsp) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_phy_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath9k_htc_add_station(ptr nocapture noundef %priv, ptr nocapture noundef readonly %vif, ptr noundef %sta) unnamed_addr #0 align 64 {
entry:
  %tsta = alloca %struct.ath9k_htc_target_sta, align 1
  %cmd_rsp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %tsta) #12
  %2 = getelementptr inbounds %struct.ath9k_htc_target_sta, ptr %tsta, i32 0, i32 1
  %3 = getelementptr inbounds %struct.ath9k_htc_target_sta, ptr %tsta, i32 0, i32 2
  %4 = getelementptr inbounds %struct.ath9k_htc_target_sta, ptr %tsta, i32 0, i32 3
  %5 = getelementptr inbounds %struct.ath9k_htc_target_sta, ptr %tsta, i32 0, i32 4
  %6 = getelementptr inbounds %struct.ath9k_htc_target_sta, ptr %tsta, i32 0, i32 7
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd_rsp) #12
  %7 = ptrtoint ptr %cmd_rsp to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %cmd_rsp, align 1, !annotation !132
  %nstations = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 28
  %8 = ptrtoint ptr %nstations to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nstations, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %9)
  %cmp = icmp ugt i16 %9, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %sta_slot = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 18
  %10 = ptrtoint ptr %sta_slot to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sta_slot, align 2
  %conv2 = zext i8 %11 to i32
  %neg = xor i32 %conv2, -1
  %12 = tail call i32 @llvm.cttz.i32(i32 %neg, i1 true) #12, !range !134
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %cmp6 = icmp ugt i32 %12, 8
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %13 = call ptr @memset(ptr %tsta, i32 0, i32 22)
  %tobool.not = icmp eq ptr %sta, null
  br i1 %tobool.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %drv_priv11 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %14 = call ptr @memcpy(ptr %tsta, ptr %addr, i32 6)
  %curbssid = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 10
  %15 = call ptr @memcpy(ptr %2, ptr %curbssid, i32 6)
  %conv15 = trunc i32 %12 to i8
  %16 = ptrtoint ptr %drv_priv11 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv15, ptr %drv_priv11, align 4
  %ampdu_factor = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %ampdu_factor to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ampdu_factor, align 1
  %conv16 = zext i8 %18 to i32
  %shl = shl i32 8192, %conv16
  %conv17 = trunc i32 %shl to i16
  br label %if.end24

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %addr20 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 2
  %19 = call ptr @memcpy(ptr %tsta, ptr %addr20, i32 6)
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %5, align 1
  %.pre = trunc i32 %12 to i8
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then10
  %conv25.pre-phi = phi i8 [ %.pre, %if.else ], [ %conv15, %if.then10 ]
  %storemerge = phi i16 [ -1, %if.else ], [ %conv17, %if.then10 ]
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %storemerge, ptr %6, align 1
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv25.pre-phi, ptr %3, align 1
  %23 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %drv_priv, align 8
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %4, align 1
  %wmi = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 4
  %26 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wmi, align 4
  %call27 = call i32 @ath9k_wmi_cmd(ptr noundef %27, i32 noundef 16, ptr noundef nonnull %tsta, i32 noundef 22, ptr noundef nonnull %cmd_rsp, i32 noundef 1, i32 noundef 200) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end35, label %if.then29

if.then29:                                        ; preds = %if.end24
  br i1 %tobool.not, label %if.then29.cleanup_crit_edge, label %if.then31

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then31:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  %addr32 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.18, ptr noundef %addr32) #12
  br label %cleanup

if.end35:                                         ; preds = %if.end24
  %debug_mask50 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %debug_mask50 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %debug_mask50, align 4
  %and51 = and i32 %29, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool.not, label %do.body49, label %do.body38

do.body38:                                        ; preds = %if.end35
  br i1 %tobool52.not, label %if.end71.critedge, label %if.then40

if.then40:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #14
  %addr41 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %3, align 1
  %conv44 = zext i8 %31 to i32
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.19, ptr noundef %addr41, i32 noundef %conv44) #12
  %shl62.c115 = shl nuw nsw i32 1, %12
  %32 = ptrtoint ptr %sta_slot to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %sta_slot, align 2
  %34 = trunc i32 %shl62.c115 to i8
  %conv65.c116 = or i8 %33, %34
  store i8 %conv65.c116, ptr %sta_slot, align 2
  %35 = ptrtoint ptr %nstations to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %nstations, align 4
  %inc.c117 = add i16 %36, 1
  store i16 %inc.c117, ptr %nstations, align 4
  br label %cleanup

do.body49:                                        ; preds = %if.end35
  br i1 %tobool52.not, label %do.body49.if.then68_crit_edge, label %if.then53

do.body49.if.then68_crit_edge:                    ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then68

if.then53:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %drv_priv, align 8
  %conv55 = zext i8 %38 to i32
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %3, align 1
  %conv57 = zext i8 %40 to i32
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.20, i32 noundef %conv55, i32 noundef %conv57) #12
  br label %if.then68

if.then68:                                        ; preds = %if.then53, %do.body49.if.then68_crit_edge
  %shl62.c108 = shl nuw nsw i32 1, %12
  %41 = ptrtoint ptr %sta_slot to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %sta_slot, align 2
  %43 = trunc i32 %shl62.c108 to i8
  %conv65.c109 = or i8 %42, %43
  store i8 %conv65.c109, ptr %sta_slot, align 2
  %44 = ptrtoint ptr %nstations to i32
  call void @__asan_load2_noabort(i32 %44)
  %storemerge118.in = load i16, ptr %nstations, align 4
  %storemerge118 = add i16 %storemerge118.in, 1
  store i16 %storemerge118, ptr %nstations, align 4
  %45 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %drv_priv, align 8
  %idxprom = zext i8 %46 to i32
  %arrayidx = getelementptr %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 19, i32 %idxprom
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv25.pre-phi, ptr %arrayidx, align 1
  br label %cleanup

if.end71.critedge:                                ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #14
  %shl62.c111 = shl nuw nsw i32 1, %12
  %48 = ptrtoint ptr %sta_slot to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %sta_slot, align 2
  %50 = trunc i32 %shl62.c111 to i8
  %conv65.c112 = or i8 %49, %50
  store i8 %conv65.c112, ptr %sta_slot, align 2
  %51 = ptrtoint ptr %nstations to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %nstations, align 4
  %inc.c113 = add i16 %52, 1
  store i16 %inc.c113, ptr %nstations, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end71.critedge, %if.then68, %if.then40, %if.then31, %if.then29.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -105, %entry.cleanup_crit_edge ], [ -105, %if.end.cleanup_crit_edge ], [ %call27, %if.then31 ], [ %call27, %if.then29.cleanup_crit_edge ], [ 0, %if.then40 ], [ 0, %if.end71.critedge ], [ 0, %if.then68 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_rsp) #12
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %tsta) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_assign_bslot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_set_tsfadjust(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_htc_bssid_iter(ptr nocapture noundef %data, ptr noundef %mac, ptr nocapture noundef readnone %vif) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mac, align 1
  %8 = xor i8 %5, %7
  %neg = xor i8 %8, -1
  %arrayidx5 = getelementptr %struct.ath9k_vif_iter_data, ptr %data, i32 0, i32 1, i32 0
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx5, align 1
  %and = and i8 %10, %neg
  store i8 %and, ptr %arrayidx5, align 1
  %arrayidx.1 = getelementptr i8, ptr %3, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.1, align 1
  %arrayidx3.1 = getelementptr i8, ptr %mac, i32 1
  %13 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx3.1, align 1
  %15 = xor i8 %12, %14
  %neg.1 = xor i8 %15, -1
  %arrayidx5.1 = getelementptr %struct.ath9k_vif_iter_data, ptr %data, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx5.1, align 1
  %and.1 = and i8 %17, %neg.1
  store i8 %and.1, ptr %arrayidx5.1, align 1
  %arrayidx.2 = getelementptr i8, ptr %3, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.2, align 1
  %arrayidx3.2 = getelementptr i8, ptr %mac, i32 2
  %20 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx3.2, align 1
  %22 = xor i8 %19, %21
  %neg.2 = xor i8 %22, -1
  %arrayidx5.2 = getelementptr %struct.ath9k_vif_iter_data, ptr %data, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx5.2, align 1
  %and.2 = and i8 %24, %neg.2
  store i8 %and.2, ptr %arrayidx5.2, align 1
  %arrayidx.3 = getelementptr i8, ptr %3, i32 3
  %25 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.3, align 1
  %arrayidx3.3 = getelementptr i8, ptr %mac, i32 3
  %27 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx3.3, align 1
  %29 = xor i8 %26, %28
  %neg.3 = xor i8 %29, -1
  %arrayidx5.3 = getelementptr %struct.ath9k_vif_iter_data, ptr %data, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx5.3, align 1
  %and.3 = and i8 %31, %neg.3
  store i8 %and.3, ptr %arrayidx5.3, align 1
  %arrayidx.4 = getelementptr i8, ptr %3, i32 4
  %32 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.4, align 1
  %arrayidx3.4 = getelementptr i8, ptr %mac, i32 4
  %34 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx3.4, align 1
  %36 = xor i8 %33, %35
  %neg.4 = xor i8 %36, -1
  %arrayidx5.4 = getelementptr %struct.ath9k_vif_iter_data, ptr %data, i32 0, i32 1, i32 4
  %37 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx5.4, align 1
  %and.4 = and i8 %38, %neg.4
  store i8 %and.4, ptr %arrayidx5.4, align 1
  %arrayidx.5 = getelementptr i8, ptr %3, i32 5
  %39 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.5, align 1
  %arrayidx3.5 = getelementptr i8, ptr %mac, i32 5
  %41 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx3.5, align 1
  %43 = xor i8 %40, %42
  %neg.5 = xor i8 %43, -1
  %arrayidx5.5 = getelementptr %struct.ath9k_vif_iter_data, ptr %data, i32 0, i32 1, i32 5
  %44 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx5.5, align 1
  %and.5 = and i8 %45, %neg.5
  store i8 %and.5, ptr %arrayidx5.5, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %mac, ptr %data, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %for.cond.preheader
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_hw_setbssidmask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_setopmode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath9k_htc_remove_station(ptr nocapture noundef %priv, ptr nocapture noundef readonly %vif, ptr noundef %sta) unnamed_addr #0 align 64 {
entry:
  %cmd_rsp = alloca i8, align 1
  %sta_idx = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd_rsp) #12
  %2 = ptrtoint ptr %cmd_rsp to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %cmd_rsp, align 1, !annotation !132
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sta_idx) #12
  %tobool.not = icmp eq ptr %sta, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %drv_priv1 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %drv_priv, align 8
  %idxprom = zext i8 %4 to i32
  %arrayidx = getelementptr %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 19, i32 %idxprom
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %storemerge.in = phi ptr [ %arrayidx, %if.else ], [ %drv_priv1, %if.then ]
  %5 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load1_noabort(i32 %5)
  %storemerge = load i8, ptr %storemerge.in, align 1
  %6 = ptrtoint ptr %sta_idx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %storemerge, ptr %sta_idx, align 1
  %wmi = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 4
  %7 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wmi, align 4
  %call4 = call i32 @ath9k_wmi_cmd(ptr noundef %8, i32 noundef 17, ptr noundef nonnull %sta_idx, i32 noundef 1, ptr noundef nonnull %cmd_rsp, i32 noundef 1, i32 noundef 200) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end11, label %if.then6

if.then6:                                         ; preds = %do.body
  br i1 %tobool.not, label %if.then6.cleanup_crit_edge, label %if.then8

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.23, ptr noundef %addr) #12
  br label %cleanup

if.end11:                                         ; preds = %do.body
  %debug_mask24 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %debug_mask24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug_mask24, align 4
  %and25 = and i32 %10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool.not, label %do.body23, label %do.body14

do.body14:                                        ; preds = %if.end11
  br i1 %tobool26.not, label %do.body14.if.end34_crit_edge, label %if.then16

do.body14.if.end34_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then16:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #14
  %addr17 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  %11 = ptrtoint ptr %sta_idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sta_idx, align 1
  %conv = zext i8 %12 to i32
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.24, ptr noundef %addr17, i32 noundef %conv) #12
  br label %if.end34

do.body23:                                        ; preds = %if.end11
  br i1 %tobool26.not, label %do.body23.if.end34_crit_edge, label %if.then27

do.body23.if.end34_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then27:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %drv_priv, align 8
  %conv29 = zext i8 %14 to i32
  %15 = ptrtoint ptr %sta_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sta_idx, align 1
  %conv30 = zext i8 %16 to i32
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.25, i32 noundef %conv29, i32 noundef %conv30) #12
  br label %if.end34

if.end34:                                         ; preds = %if.then27, %do.body23.if.end34_crit_edge, %if.then16, %do.body14.if.end34_crit_edge
  %17 = ptrtoint ptr %sta_idx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sta_idx, align 1
  %conv35 = zext i8 %18 to i32
  %shl = shl nuw i32 1, %conv35
  %sta_slot = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 18
  %19 = ptrtoint ptr %sta_slot to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sta_slot, align 2
  %21 = trunc i32 %shl to i8
  %22 = xor i8 %21, -1
  %conv38 = and i8 %20, %22
  store i8 %conv38, ptr %sta_slot, align 2
  %nstations = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 28
  %23 = ptrtoint ptr %nstations to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %nstations, align 4
  %dec = add i16 %24, -1
  store i16 %dec, ptr %nstations, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then8, %if.then6.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sta_idx) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_rsp) #12
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_remove_bslot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_cmn_spectral_scan_trigger(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_set_tsfadjust(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_beacon_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_init_global_settings(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_htc_bss_iter(ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %mac, ptr nocapture noundef readonly %vif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %bss_conf1 = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1
  %2 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %assoc = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 10
  %4 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %assoc, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %aid = getelementptr inbounds %struct.ieee80211_vif, ptr %vif, i32 0, i32 1, i32 13
  %6 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %aid, align 2
  %curaid = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %curaid to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %curaid, align 2
  %last_rssi = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 30
  %9 = ptrtoint ptr %last_rssi to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 127, ptr %last_rssi, align 4
  %curbssid = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 10
  %10 = ptrtoint ptr %bss_conf1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bss_conf1, align 8
  %12 = call ptr @memcpy(ptr %curbssid, ptr %11, i32 6)
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  tail call void @_set_bit(i32 noundef 3, ptr noundef %op_flags) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_write_associd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath9k_htc_setup_rate(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %sta, ptr nocapture noundef writeonly %trate) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wiphy, align 8
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chandef, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %arrayidx = getelementptr %struct.wiphy, ptr %3, i32 0, i32 53, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %n_bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_bitrates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp145 = icmp sgt i32 %11, 0
  br i1 %cmp145, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %band2 = getelementptr inbounds %struct.ieee80211_supported_band, ptr %9, i32 0, i32 2
  %bitrates = getelementptr inbounds %struct.ieee80211_supported_band, ptr %9, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %j.0148 = phi i32 [ 0, %for.body.lr.ph ], [ %j.1, %for.inc.for.body_crit_edge ]
  %i.0146 = phi i32 [ 0, %for.body.lr.ph ], [ %inc7, %for.inc.for.body_crit_edge ]
  %12 = ptrtoint ptr %band2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %band2, align 4
  %arrayidx3 = getelementptr [6 x i32], ptr %sta, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx3, align 4
  %shl = shl nuw i32 1, %i.0146
  %and = and i32 %15, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %bitrates to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bitrates, align 4
  %bitrate = getelementptr %struct.ieee80211_rate, ptr %17, i32 %i.0146, i32 1
  %18 = ptrtoint ptr %bitrate to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %bitrate, align 4
  %20 = udiv i16 %19, 5
  %conv5 = trunc i16 %20 to i8
  %arrayidx6 = getelementptr %struct.ath9k_htc_target_rate, ptr %trate, i32 0, i32 3, i32 0, i32 1, i32 %j.0148
  %21 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv5, ptr %arrayidx6, align 1
  %inc = add i32 %j.0148, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %j.1 = phi i32 [ %inc, %if.then ], [ %j.0148, %for.body.for.inc_crit_edge ]
  %inc7 = add nuw nsw i32 %i.0146, 1
  %22 = ptrtoint ptr %n_bitrates to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_bitrates, align 4
  %cmp = icmp slt i32 %inc7, %23
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %j.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %j.1, %for.inc.for.end_crit_edge ]
  %conv8 = trunc i32 %j.0.lcssa to i8
  %rates9 = getelementptr inbounds %struct.ath9k_htc_target_rate, ptr %trate, i32 0, i32 3
  %24 = ptrtoint ptr %rates9 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv8, ptr %rates9, align 4
  %ht_cap = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %ht_supported = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %ht_supported to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ht_supported, align 2, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool11.not = icmp eq i8 %26, 0
  br i1 %tobool11.not, label %for.end.if.end93_crit_edge, label %for.cond13.preheader

for.end.if.end93_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

for.cond13.preheader:                             ; preds = %for.end
  %mcs = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4
  br label %for.body16

for.body16:                                       ; preds = %for.inc35.for.body16_crit_edge, %for.cond13.preheader
  %j.2151 = phi i32 [ 0, %for.cond13.preheader ], [ %j.3141, %for.inc35.for.body16_crit_edge ]
  %i.1149 = phi i32 [ 0, %for.cond13.preheader ], [ %inc36, %for.inc35.for.body16_crit_edge ]
  %div18144 = lshr i32 %i.1149, 3
  %arrayidx19 = getelementptr [10 x i8], ptr %mcs, i32 0, i32 %div18144
  %27 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %28 to i32
  %rem132 = and i32 %i.1149, 7
  %shl21 = shl nuw nsw i32 1, %rem132
  %and22 = and i32 %shl21, %conv20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %for.body16.for.inc35_crit_edge, label %if.end30

for.body16.for.inc35_crit_edge:                   ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc35

if.end30:                                         ; preds = %for.body16
  %conv25 = trunc i32 %i.1149 to i8
  %inc28 = add i32 %j.2151, 1
  %arrayidx29 = getelementptr %struct.ath9k_htc_target_rate, ptr %trate, i32 0, i32 3, i32 1, i32 1, i32 %j.2151
  %29 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv25, ptr %arrayidx29, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %inc28)
  %cmp31 = icmp eq i32 %inc28, 30
  br i1 %cmp31, label %if.end30.for.end37_crit_edge, label %if.end30.for.inc35_crit_edge

if.end30.for.inc35_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc35

if.end30.for.end37_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end37

for.inc35:                                        ; preds = %if.end30.for.inc35_crit_edge, %for.body16.for.inc35_crit_edge
  %j.3141 = phi i32 [ %inc28, %if.end30.for.inc35_crit_edge ], [ %j.2151, %for.body16.for.inc35_crit_edge ]
  %inc36 = add nuw nsw i32 %i.1149, 1
  %exitcond.not = icmp eq i32 %inc36, 77
  br i1 %exitcond.not, label %for.inc35.for.end37_crit_edge, label %for.inc35.for.body16_crit_edge

for.inc35.for.body16_crit_edge:                   ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body16

for.inc35.for.end37_crit_edge:                    ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end37

for.end37:                                        ; preds = %for.inc35.for.end37_crit_edge, %if.end30.for.end37_crit_edge
  %j.4 = phi i32 [ 30, %if.end30.for.end37_crit_edge ], [ %j.3141, %for.inc35.for.end37_crit_edge ]
  %conv38 = trunc i32 %j.4 to i8
  %ht_rates40 = getelementptr inbounds %struct.ath9k_htc_target_rate, ptr %trate, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %ht_rates40 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv38, ptr %ht_rates40, align 1
  %31 = ptrtoint ptr %ht_cap to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ht_cap, align 4
  %33 = and i16 %32, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool45.not = icmp eq i16 %33, 0
  %spec.select = select i1 %tobool45.not, i32 8, i32 40
  %arrayidx51 = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool52.not = icmp ne i8 %35, 0
  %or54 = zext i1 %tobool52.not to i32
  %caps.1 = or i32 %spec.select, %or54
  %36 = and i16 %32, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool60.not = icmp eq i16 %36, 0
  br i1 %tobool60.not, label %for.end37.if.end66_crit_edge, label %land.lhs.true

for.end37.if.end66_crit_edge:                     ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

land.lhs.true:                                    ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw, align 4
  %width.i = getelementptr inbounds %struct.ieee80211_conf, ptr %38, i32 0, i32 7, i32 1
  %39 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp.i = icmp eq i32 %40, 2
  %or65 = or i32 %caps.1, 2
  %spec.select133 = select i1 %cmp.i, i32 %or65, i32 %caps.1
  br label %if.end66

if.end66:                                         ; preds = %land.lhs.true, %for.end37.if.end66_crit_edge
  %caps.2 = phi i32 [ %caps.1, %for.end37.if.end66_crit_edge ], [ %spec.select133, %land.lhs.true ]
  %41 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw, align 4
  %width.i135 = getelementptr inbounds %struct.ieee80211_conf, ptr %42, i32 0, i32 7, i32 1
  %43 = ptrtoint ptr %width.i135 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %width.i135, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %44, label %if.end66.if.end93_crit_edge [
    i32 2, label %land.lhs.true71
    i32 1, label %land.lhs.true83
  ]

if.end66.if.end93_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

land.lhs.true71:                                  ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  %46 = lshr i16 %32, 4
  %47 = and i16 %46, 4
  %48 = zext i16 %47 to i32
  %49 = or i32 %caps.2, %48
  br label %if.end93

land.lhs.true83:                                  ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  %50 = lshr i16 %32, 3
  %51 = and i16 %50, 4
  %52 = zext i16 %51 to i32
  %53 = or i32 %caps.2, %52
  br label %if.end93

if.end93:                                         ; preds = %land.lhs.true83, %land.lhs.true71, %if.end66.if.end93_crit_edge, %for.end.if.end93_crit_edge
  %caps.3 = phi i32 [ 0, %for.end.if.end93_crit_edge ], [ %53, %land.lhs.true83 ], [ %49, %land.lhs.true71 ], [ %caps.2, %if.end66.if.end93_crit_edge ]
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %54 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %drv_priv, align 4
  %56 = ptrtoint ptr %trate to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %trate, align 4
  %isnew = getelementptr inbounds %struct.ath9k_htc_target_rate, ptr %trate, i32 0, i32 1
  %57 = ptrtoint ptr %isnew to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %isnew, align 1
  %capflags = getelementptr inbounds %struct.ath9k_htc_target_rate, ptr %trate, i32 0, i32 2
  %58 = ptrtoint ptr %capflags to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %caps.3, ptr %capflags, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_htc_calcrxfilter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_setrxfilter(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_key_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_key_delete(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_htc_sta_rc_update_work(ptr noundef %work) #0 align 64 {
entry:
  %cmd_rsp.i = alloca i8, align 1
  %trate = alloca %struct.ath9k_htc_target_rate, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -304
  %htc_priv = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %htc_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %htc_priv, align 4
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %trate) #12
  %mutex = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 62
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %htc_pm_lock.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %htc_pm_lock.i, i32 noundef 0) #12
  %ps_usecount.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 48
  %4 = ptrtoint ptr %ps_usecount.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ps_usecount.i, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %ps_usecount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.ath9k_htc_ps_wakeup.exit_crit_edge

entry.ath9k_htc_ps_wakeup.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ath9k_htc_ps_wakeup.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ah, align 4
  %call.i = tail call zeroext i1 @ath9k_hw_setpower(ptr noundef %7, i32 noundef 0) #12
  br label %ath9k_htc_ps_wakeup.exit

ath9k_htc_ps_wakeup.exit:                         ; preds = %if.end.i, %entry.ath9k_htc_ps_wakeup.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %htc_pm_lock.i) #12
  %8 = call ptr @memset(ptr %trate, i32 0, i32 72)
  call fastcc void @ath9k_htc_setup_rate(ptr noundef %1, ptr noundef %add.ptr3, ptr noundef nonnull %trate)
  %9 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ah, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd_rsp.i) #12
  %11 = ptrtoint ptr %cmd_rsp.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %cmd_rsp.i, align 1, !annotation !132
  %wmi.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %wmi.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wmi.i, align 4
  %call1.i = call i32 @ath9k_wmi_cmd(ptr noundef %13, i32 noundef 23, ptr noundef nonnull %trate, i32 noundef 72, ptr noundef nonnull %cmd_rsp.i, i32 noundef 1, i32 noundef 200) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %do.body, label %do.body7

do.body:                                          ; preds = %ath9k_htc_ps_wakeup.exit
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_rsp.i) #12
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug_mask, align 4
  %and = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body.if.end17_crit_edge, label %if.then6

do.body.if.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %addr = getelementptr i8, ptr %work, i32 -280
  %capflags = getelementptr inbounds %struct.ath9k_htc_target_rate, ptr %trate, i32 0, i32 2
  %16 = ptrtoint ptr %capflags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %capflags, align 4
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.47, ptr noundef %addr, i32 noundef %17) #12
  br label %if.end17

do.body7:                                         ; preds = %ath9k_htc_ps_wakeup.exit
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %10, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.42) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_rsp.i) #12
  %debug_mask8 = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %debug_mask8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %debug_mask8, align 4
  %and9 = and i32 %19, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body7.if.end17_crit_edge, label %if.then11

do.body7.if.end17_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then11:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  %addr12 = getelementptr i8, ptr %work, i32 -280
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.48, ptr noundef %addr12) #12
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %do.body7.if.end17_crit_edge, %if.then6, %do.body.if.end17_crit_edge
  call void @ath9k_htc_ps_restore(ptr noundef %1)
  call void @mutex_unlock(ptr noundef %mutex) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %trate) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @htc_sta_drain(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_hw_qnum(i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_htc_txq_update(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_beaconq_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ath9k_hw_gettsf64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_settsf64(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_reset_tsf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath9k_htc_tx_aggr_oper(ptr noundef %priv, ptr noundef %sta, i32 noundef %action, i16 noundef zeroext %tid) unnamed_addr #0 align 64 {
entry:
  %aggr = alloca %struct.ath9k_htc_target_aggr, align 4
  %cmd_rsp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %aggr) #12
  %2 = getelementptr inbounds %struct.ath9k_htc_target_aggr, ptr %aggr, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd_rsp) #12
  %3 = ptrtoint ptr %cmd_rsp to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %cmd_rsp, align 1, !annotation !132
  %conv = zext i16 %tid to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %tid)
  %cmp = icmp ugt i16 %tid, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds %struct.ath9k_htc_target_aggr, ptr %aggr, i32 0, i32 1
  %5 = ptrtoint ptr %aggr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %aggr, align 4
  %drv_priv = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %6 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %drv_priv, align 4
  store i8 %7, ptr %aggr, align 4
  %8 = trunc i16 %tid to i8
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %action)
  %cmp4 = icmp eq i32 %action, 2
  %conv6 = zext i1 %cmp4 to i8
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv6, ptr %2, align 2
  %wmi = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 4
  %11 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wmi, align 4
  %call7 = call i32 @ath9k_wmi_cmd(ptr noundef %12, i32 noundef 25, ptr noundef nonnull %aggr, i32 noundef 4, ptr noundef nonnull %cmd_rsp, i32 noundef 1, i32 noundef 200) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  %debug_mask23 = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %debug_mask23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %debug_mask23, align 4
  %and24 = and i32 %14, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool.not, label %do.body22, label %do.body9

do.body9:                                         ; preds = %if.end
  br i1 %tobool25.not, label %do.body9.if.end37_crit_edge, label %if.then12

do.body9.if.end37_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then12:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool15.not = icmp eq i8 %16, 0
  %cond16 = select i1 %tobool15.not, ptr @.str.54, ptr @.str.53
  %addr = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.52, ptr noundef nonnull %cond16, ptr noundef %addr, i32 noundef %conv) #12
  br label %if.end37

do.body22:                                        ; preds = %if.end
  br i1 %tobool25.not, label %do.body22.if.end37_crit_edge, label %if.then26

do.body22.if.end37_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then26:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool29.not = icmp eq i8 %18, 0
  %cond30 = select i1 %tobool29.not, ptr @.str.57, ptr @.str.56
  %addr31 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.55, ptr noundef nonnull %cond30, ptr noundef %addr31, i32 noundef %conv) #12
  br label %if.end37

if.end37:                                         ; preds = %if.then26, %do.body22.if.end37_crit_edge, %if.then12, %do.body9.if.end37_crit_edge
  %phi.sel = phi i32 [ 2, %do.body22.if.end37_crit_edge ], [ 2, %if.then26 ], [ 0, %do.body9.if.end37_crit_edge ], [ 0, %if.then12 ]
  %tx_lock = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 11
  call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #12
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool40.not = icmp eq i8 %20, 0
  %spec.select = select i1 %tobool40.not, i32 0, i32 %phi.sel
  %tid_state = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 1, i32 0, i32 1
  %arrayidx = getelementptr [8 x i32], ptr %tid_state, i32 0, i32 %conv
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select, ptr %arrayidx, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end37 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd_rsp) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %aggr) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_tx_ba_cb_irqsafe(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !84, !85, !87, !89, !91, !93, !95, !96, !98, !100, !102, !104, !106, !108, !109, !110, !112, !113, !114, !116, !118, !120}
!llvm.named.register.sp = !{!122}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 213, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 790, i32 3}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 802, i32 4}
!8 = !{ptr @ath9k_htc_ops, !9, !"ath9k_htc_ops", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 1870, i32 22}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 878, i32 4}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 887, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 893, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 921, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 934, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 954, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 987, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 1030, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 451, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 459, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 342, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 1064, i32 3}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 1107, i32 2}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 508, i32 4}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 515, i32 3}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 519, i32 3}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 1135, i32 3}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 1169, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 552, i32 4}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 559, i32 3}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 563, i32 3}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 1212, i32 3}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 1217, i32 4}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 413, i32 3}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 422, i32 2}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 434, i32 2}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 272, i32 2}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 280, i32 3}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 1523, i32 3}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 1550, i32 3}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 1564, i32 4}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 1585, i32 3}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 1481, i32 2}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 697, i32 3}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!80 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!84 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 652, i32 3}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 1271, i32 3}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 1282, i32 2}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 1445, i32 2}
!93 = !{ptr @ath9k_htc_sta_add.__key, !94, !"__key", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 1329, i32 3}
!95 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 1305, i32 3}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 1309, i32 3}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 1395, i32 2}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 1402, i32 3}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 1697, i32 3}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 726, i32 3}
!108 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 730, i32 3}
!112 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 1780, i32 3}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 1791, i32 3}
!118 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 1797, i32 2}
!120 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_main.c", i32 1864, i32 6}
!122 = !{!"sp"}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 1, !"min_enum_size", i32 4}
!125 = !{i32 8, !"branch-target-enforcement", i32 0}
!126 = !{i32 8, !"sign-return-address", i32 0}
!127 = !{i32 8, !"sign-return-address-all", i32 0}
!128 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!129 = !{i32 7, !"uwtable", i32 1}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!132 = !{!"auto-init"}
!133 = !{i8 0, i8 2}
!134 = !{i32 0, i32 33}
!135 = !{i64 2149420806}
!136 = !{i64 2149421072}
!137 = !{!"branch_weights", i32 2000, i32 1}
