; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/htc_drv_txrx.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/htc_drv_txrx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.ath9k_tx_queue_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32 }
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
%struct.ieee80211_vif = type { i32, %struct.ieee80211_bss_conf, [6 x i8], i8, i8, i8, i8, [4 x i8], ptr, ptr, i32, i32, ptr, i8, i8, [4 x i8], i8, i8, ptr, [0 x i8] }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.131, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
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
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.124, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.anon.124 = type { i32, i16 }
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
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.ath9k_htc_vif = type { i8, i16, i8, i32, i64 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.145 }
%union.anon.145 = type { %struct.anon.151, [16 x i8] }
%struct.anon.151 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.wmi = type { ptr, ptr, i32, %struct.mutex, %struct.completion, i16, %struct.sk_buff_head, %struct.tasklet_struct, i16, ptr, i32, i8, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.atomic_t, [62 x %struct.register_write], i32, %struct.mutex, %struct.atomic_t, [15 x %struct.register_rmw], i32, %struct.mutex }
%struct.register_write = type { i32, i32 }
%struct.register_rmw = type { i32, i32, i32 }
%struct.wmi_event_txstatus = type { i8, [12 x %struct.__wmi_event_txstatus] }
%struct.__wmi_event_txstatus = type { i8, i8, i8 }
%struct.ath9k_htc_tx_event = type { i32, %struct.__wmi_event_txstatus, %struct.list_head }
%struct.tx_mgmt_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.tx_frame_hdr = type { i8, i8, i8, i8, i32, i8, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.ath9k_htc_sta = type { i8, [8 x i32], %struct.work_struct, ptr }
%struct.ath_rx_status = type { i32, i16, i8, i8, i8, i8, i8, i8, i8, [3 x i8], [3 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i16, i32 }
%struct.ieee80211_rx_status = type <{ i64, i64, i32, i32, i32, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, [2 x i8] }>
%struct.ath_htc_rx_status = type { i64, i16, i8, i8, i8, [3 x i8], [3 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ath9k_htc_rxbuf = type { i8, ptr, %struct.ath_htc_rx_status, %struct.list_head }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to update hardware queue %u!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"VIF is null, but no monitor interface !\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/ath/ath9k/htc_drv_txrx.c\00", [50 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Found packet for cookie: %d, epid: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@subtype_txq_to_hwq = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 2, i32 1, i32 0], [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"qnum %u out of range, max %zu!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No free RX buffer\0A\00", [45 x i8] zeroinitializer }, align 32
@ath9k_rx_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&priv->rx.rxbuflock\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"No matching packet for cookie: %d, epid: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unsupported EPID: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid EPID: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Dropping a packet due to TX timeout\0A\00", [59 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Corrupted RX frame, dropping (len: %d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Corrupted RX data len, dropping (dlen: %d, skblen: %d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Short RX data len, dropping (dlen: %d)\0A\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 7]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 7]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 7]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 204, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 363, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 656, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 772, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"subtype_txq_to_hwq\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 23, i32 18 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 844, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 1152, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 1186, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 641, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 181, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 695, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 723, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 149, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 725, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 1984, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 991, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 1001, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [49 x i8] c"../drivers/net/wireless/ath/ath9k/htc_drv_txrx.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 1013, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @subtype_txq_to_hwq, ptr @.str.6, ptr @.str.7, ptr @ath9k_rx_init.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @skb_queue_head_init.__key, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @subtype_txq_to_hwq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_rx_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @get_hw_qnum(i16 noundef zeroext %queue, ptr nocapture noundef readonly %hwq_map) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %queue to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i16 %queue, label %sw.default [
    i16 0, label %entry.return_crit_edge
    i16 1, label %sw.bb1
    i16 2, label %sw.bb3
    i16 3, label %sw.bb5
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx2 = getelementptr i32, ptr %hwq_map, i32 1
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx4 = getelementptr i32, ptr %hwq_map, i32 2
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx6 = getelementptr i32, ptr %hwq_map, i32 3
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx7 = getelementptr i32, ptr %hwq_map, i32 2
  br label %return

return:                                           ; preds = %sw.default, %sw.bb5, %sw.bb3, %sw.bb1, %entry.return_crit_edge
  %retval.0.in = phi ptr [ %arrayidx7, %sw.default ], [ %arrayidx6, %sw.bb5 ], [ %arrayidx4, %sw.bb3 ], [ %arrayidx2, %sw.bb1 ], [ %hwq_map, %entry.return_crit_edge ]
  %1 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %retval.0 = load i32, ptr %retval.0.in, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_check_stop_queues(ptr noundef %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40
  %tx_lock = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #8
  %queued_cnt = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 1
  %0 = ptrtoint ptr %queued_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queued_cnt, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %queued_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 245, i32 %inc)
  %cmp = icmp sgt i32 %inc, 245
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx, align 4
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i8 %3, 1
  %5 = ptrtoint ptr %tx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %or, ptr %tx, align 4
  %hw = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_stop_queues(ptr noundef %7) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_check_wake_queues(ptr noundef %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40
  %tx_lock = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #8
  %queued_cnt = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 1
  %0 = ptrtoint ptr %queued_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queued_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 246, i32 %1)
  %cmp = icmp slt i32 %1, 246
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx, align 4
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %and6 = and i8 %3, -2
  %5 = ptrtoint ptr %tx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %and6, ptr %tx, align 4
  %hw = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_wake_queues(ptr noundef %7) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath9k_htc_tx_get_slot(ptr noundef %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_lock = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #8
  %tx_slot = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 9
  %call = tail call i32 @_find_first_zero_bit_be(ptr noundef %tx_slot, i32 noundef 256) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call)
  %cmp = icmp sgt i32 %call, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rem.i = and i32 %call, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %call, 5
  %add.ptr.i = getelementptr i32, ptr %tx_slot, i32 %div2.i
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %1, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -105, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_tx_clear_slot(ptr noundef %priv, i32 noundef %slot) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_lock = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #8
  %tx_slot = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 9
  %rem.i = and i32 %slot, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %slot, 5
  %add.ptr.i = getelementptr i32, ptr %tx_slot, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %1, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath_htc_txq_update(ptr nocapture noundef readonly %priv, i32 noundef %qnum, ptr nocapture noundef readonly %qinfo) local_unnamed_addr #1 align 64 {
entry:
  %qi = alloca %struct.ath9k_tx_queue_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ah1 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ah1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah1, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %qi) #8
  %2 = call ptr @memset(ptr %qi, i32 255, i32 60)
  %call = call zeroext i1 @ath9k_hw_get_txq_props(ptr noundef %1, i32 noundef %qnum, ptr noundef nonnull %qi) #8
  %tqi_aifs = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qinfo, i32 0, i32 5
  %3 = ptrtoint ptr %tqi_aifs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tqi_aifs, align 4
  %tqi_aifs2 = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 5
  %5 = ptrtoint ptr %tqi_aifs2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tqi_aifs2, align 4
  %tqi_cwmin = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qinfo, i32 0, i32 6
  %6 = ptrtoint ptr %tqi_cwmin to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tqi_cwmin, align 4
  %div20 = lshr i32 %7, 1
  %tqi_cwmin3 = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 6
  %8 = ptrtoint ptr %tqi_cwmin3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div20, ptr %tqi_cwmin3, align 4
  %tqi_cwmax = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qinfo, i32 0, i32 7
  %9 = ptrtoint ptr %tqi_cwmax to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tqi_cwmax, align 4
  %tqi_cwmax4 = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 7
  %11 = ptrtoint ptr %tqi_cwmax4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tqi_cwmax4, align 4
  %tqi_burstTime = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qinfo, i32 0, i32 12
  %12 = ptrtoint ptr %tqi_burstTime to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tqi_burstTime, align 4
  %tqi_burstTime5 = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 12
  %14 = ptrtoint ptr %tqi_burstTime5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tqi_burstTime5, align 4
  %tqi_readyTime = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qinfo, i32 0, i32 13
  %15 = ptrtoint ptr %tqi_readyTime to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tqi_readyTime, align 4
  %tqi_readyTime6 = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 13
  %17 = ptrtoint ptr %tqi_readyTime6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tqi_readyTime6, align 4
  %call7 = call zeroext i1 @ath9k_hw_set_txq_props(ptr noundef %1, i32 noundef %qnum, ptr noundef nonnull %qi) #8
  br i1 %call7, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.1, i32 noundef %qnum) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = call zeroext i1 @ath9k_hw_resettxqueue(ptr noundef %1, i32 noundef %qnum) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %error.0 = phi i32 [ 0, %if.else ], [ -5, %if.then ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %qi) #8
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_get_txq_props(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_set_txq_props(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_resettxqueue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath9k_htc_tx_start(ptr nocapture noundef %priv, ptr noundef readonly %sta, ptr noundef %skb, i8 noundef zeroext %slot, i1 noundef zeroext %is_cab) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %vif1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %0 = ptrtoint ptr %vif1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vif1, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %drv_priv = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 19
  br label %if.end11

if.else:                                          ; preds = %entry
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %4 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ah, align 4
  %is_monitoring = getelementptr inbounds %struct.ath_hw, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %is_monitoring to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_monitoring, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %do.body, label %if.end10

do.body:                                          ; preds = %if.else
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %5, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug_mask, align 4
  %and = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.body.cleanup_crit_edge, label %if.then7

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end10:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %mon_vif_idx = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 17
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then
  %avp.0 = phi ptr [ %drv_priv, %if.then ], [ null, %if.end10 ]
  %vif_idx.0.in = phi ptr [ %drv_priv, %if.then ], [ %mon_vif_idx, %if.end10 ]
  %10 = ptrtoint ptr %vif_idx.0.in to i32
  call void @__asan_load1_noabort(i32 %10)
  %vif_idx.0 = load i8, ptr %vif_idx.0.in, align 1
  %tobool12.not = icmp eq ptr %sta, null
  %drv_priv14 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %idxprom = zext i8 %vif_idx.0 to i32
  %arrayidx = getelementptr %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 19, i32 %idxprom
  %sta_idx.0.in = select i1 %tobool12.not, ptr %arrayidx, ptr %drv_priv14
  %11 = ptrtoint ptr %sta_idx.0.in to i32
  call void @__asan_load1_noabort(i32 %11)
  %sta_idx.0 = load i8, ptr %sta_idx.0.in, align 1
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %3, align 2
  %14 = and i16 %13, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %14)
  %cmp.i = icmp eq i16 %14, 2048
  %15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 0, ptr %15, align 4
  br i1 %cmp.i, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.end11
  %sta_idx3.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 11
  %17 = ptrtoint ptr %sta_idx3.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %sta_idx.0, ptr %sta_idx3.i, align 1
  %18 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cb.i, align 8
  %and.i = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i8 2, i8 1
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %..i, ptr %15, align 4
  %flags7.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %21 = ptrtoint ptr %flags7.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags7.i, align 8
  %and8.i = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i, label %if.then20.if.end15.i_crit_edge

if.then20.if.end15.i_crit_edge:                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %if.then20
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %3, align 2
  %25 = and i16 %24, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %25)
  %cmp.i.i = icmp eq i16 %25, -30720
  br i1 %cmp.i.i, label %if.then11.i, label %land.lhs.true.i.if.end15.i_crit_edge

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then11.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = and i16 %24, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %26)
  %cmp.i.i.i = icmp eq i16 %26, 3
  %retval.0.v.i.i = select i1 %cmp.i.i.i, i32 30, i32 24
  %retval.0.i.i = getelementptr i8, ptr %3, i32 %retval.0.v.i.i
  %27 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %retval.0.i.i, align 1
  %29 = and i8 %28, 15
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then11.i, %land.lhs.true.i.if.end15.i_crit_edge, %if.then20.if.end15.i_crit_edge
  %tx_hdr.sroa.11.0.i = phi i8 [ 0, %if.then20.if.end15.i_crit_edge ], [ %29, %if.then11.i ], [ 0, %land.lhs.true.i.if.end15.i_crit_edge ]
  %hw.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 1
  %30 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wiphy.i, align 8
  %rts_threshold.i = getelementptr inbounds %struct.wiphy, ptr %33, i32 0, i32 36
  %34 = ptrtoint ptr %rts_threshold.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rts_threshold.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp.not.i = icmp eq i32 %35, -1
  br i1 %cmp.not.i, label %if.end15.i.if.end25.i_crit_edge, label %if.then17.i

if.end15.i.if.end25.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %36 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %35)
  %cmp21.i = icmp ugt i32 %37, %35
  %spec.select87.i = select i1 %cmp21.i, i32 2, i32 0
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then17.i, %if.end15.i.if.end25.i_crit_edge
  %tobool27.not.i = phi i1 [ false, %if.end15.i.if.end25.i_crit_edge ], [ %cmp21.i, %if.then17.i ]
  %flags.0.i = phi i32 [ 0, %if.end15.i.if.end25.i_crit_edge ], [ %spec.select87.i, %if.then17.i ]
  %or.cond.i = or i1 %tobool.not, %tobool27.not.i
  br i1 %or.cond.i, label %if.end25.i.if.end35.i_crit_edge, label %land.lhs.true30.i

if.end25.i.if.end35.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

land.lhs.true30.i:                                ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %use_cts_prot.i = getelementptr inbounds %struct.ieee80211_vif, ptr %1, i32 0, i32 1, i32 14
  %38 = ptrtoint ptr %use_cts_prot.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %use_cts_prot.i, align 4, !range !53
  %40 = zext i8 %39 to i32
  %spec.select88.i = or i32 %flags.0.i, %40
  br label %if.end35.i

if.end35.i:                                       ; preds = %land.lhs.true30.i, %if.end25.i.if.end35.i_crit_edge
  %flags.1.i = phi i32 [ %flags.0.i, %if.end25.i.if.end35.i_crit_edge ], [ %spec.select88.i, %land.lhs.true30.i ]
  %call37.i = tail call i32 @ath9k_cmn_get_hw_crypto_keytype(ptr noundef %skb) #8
  %conv38.i = trunc i32 %call37.i to i8
  %conv40.i = and i32 %call37.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv40.i)
  %cmp41.i = icmp eq i32 %conv40.i, 0
  br i1 %cmp41.i, label %if.end35.i.if.end46.i_crit_edge, label %if.else44.i

if.end35.i.if.end46.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.i

if.else44.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  %hw_key.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %41 = ptrtoint ptr %hw_key.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw_key.i, align 4
  %hw_key_idx.i = getelementptr inbounds %struct.ieee80211_key_conf, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %hw_key_idx.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %hw_key_idx.i, align 2
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.else44.i, %if.end35.i.if.end46.i_crit_edge
  %tx_hdr.sroa.18.0.i = phi i8 [ %44, %if.else44.i ], [ -1, %if.end35.i.if.end46.i_crit_edge ]
  %call47.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 12) #8
  %45 = ptrtoint ptr %call47.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %..i, ptr %call47.i, align 1
  %tx_hdr.sroa.7.0.tx_fhdr.0..sroa_idx.i = getelementptr inbounds i8, ptr %call47.i, i32 1
  %46 = ptrtoint ptr %tx_hdr.sroa.7.0.tx_fhdr.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %sta_idx.0, ptr %tx_hdr.sroa.7.0.tx_fhdr.0..sroa_idx.i, align 1
  %tx_hdr.sroa.9.0.tx_fhdr.0..sroa_idx.i = getelementptr inbounds i8, ptr %call47.i, i32 2
  %47 = ptrtoint ptr %tx_hdr.sroa.9.0.tx_fhdr.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %vif_idx.0, ptr %tx_hdr.sroa.9.0.tx_fhdr.0..sroa_idx.i, align 1
  %tx_hdr.sroa.11.0.tx_fhdr.0..sroa_idx.i = getelementptr inbounds i8, ptr %call47.i, i32 3
  %48 = ptrtoint ptr %tx_hdr.sroa.11.0.tx_fhdr.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %tx_hdr.sroa.11.0.i, ptr %tx_hdr.sroa.11.0.tx_fhdr.0..sroa_idx.i, align 1
  %tx_hdr.sroa.13.0.tx_fhdr.0..sroa_idx.i = getelementptr inbounds i8, ptr %call47.i, i32 4
  %49 = ptrtoint ptr %tx_hdr.sroa.13.0.tx_fhdr.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %flags.1.i, ptr %tx_hdr.sroa.13.0.tx_fhdr.0..sroa_idx.i, align 1
  %tx_hdr.sroa.15.0.tx_fhdr.0..sroa_idx.i = getelementptr inbounds i8, ptr %call47.i, i32 8
  %50 = ptrtoint ptr %tx_hdr.sroa.15.0.tx_fhdr.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv38.i, ptr %tx_hdr.sroa.15.0.tx_fhdr.0..sroa_idx.i, align 1
  %tx_hdr.sroa.18.0.tx_fhdr.0..sroa_idx.i = getelementptr inbounds i8, ptr %call47.i, i32 9
  %51 = ptrtoint ptr %tx_hdr.sroa.18.0.tx_fhdr.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %tx_hdr.sroa.18.0.i, ptr %tx_hdr.sroa.18.0.tx_fhdr.0..sroa_idx.i, align 1
  %tx_hdr.sroa.21.0.tx_fhdr.0..sroa_idx.i = getelementptr inbounds i8, ptr %call47.i, i32 10
  %52 = ptrtoint ptr %tx_hdr.sroa.21.0.tx_fhdr.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %slot, ptr %tx_hdr.sroa.21.0.tx_fhdr.0..sroa_idx.i, align 1
  %tx_hdr.sroa.23.0.tx_fhdr.0..sroa_idx.i = getelementptr inbounds i8, ptr %call47.i, i32 11
  %53 = ptrtoint ptr %tx_hdr.sroa.23.0.tx_fhdr.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %tx_hdr.sroa.23.0.tx_fhdr.0..sroa_idx.i, align 1
  br i1 %is_cab, label %if.then49.i, label %if.end51.i

if.then49.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  %cab_queued.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 61, i32 1, i32 6
  %54 = ptrtoint ptr %cab_queued.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cab_queued.i, align 4
  %inc.i = add i32 %55, 1
  store i32 %inc.i, ptr %cab_queued.i, align 4
  %cab_ep.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 9
  br label %if.end23

if.end51.i:                                       ; preds = %if.end46.i
  %queue_mapping.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %56 = ptrtoint ptr %queue_mapping.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %queue_mapping.i.i, align 8
  %58 = zext i16 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %57, label %sw.default.i.i [
    i16 0, label %sw.bb.i.i
    i16 1, label %sw.bb1.i.i
    i16 2, label %sw.bb7.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  %queue_stats.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 61, i32 1, i32 7
  %59 = ptrtoint ptr %queue_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %queue_stats.i.i, align 4
  %inc.i.i = add i32 %60, 1
  store i32 %inc.i.i, ptr %queue_stats.i.i, align 4
  %data_vo_ep.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 15
  br label %if.end23

sw.bb1.i.i:                                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx5.i.i = getelementptr %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 61, i32 1, i32 7, i32 1
  %61 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx5.i.i, align 4
  %inc6.i.i = add i32 %62, 1
  store i32 %inc6.i.i, ptr %arrayidx5.i.i, align 4
  %data_vi_ep.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 14
  br label %if.end23

sw.bb7.i.i:                                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx11.i.i = getelementptr %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 61, i32 1, i32 7, i32 2
  %63 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx11.i.i, align 4
  %inc12.i.i = add i32 %64, 1
  store i32 %inc12.i.i, ptr %arrayidx11.i.i, align 4
  %data_be_ep.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 12
  br label %if.end23

sw.default.i.i:                                   ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx17.i.i = getelementptr %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 61, i32 1, i32 7, i32 3
  %65 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx17.i.i, align 4
  %inc18.i.i = add i32 %66, 1
  store i32 %inc18.i.i, ptr %arrayidx17.i.i, align 4
  %data_bk_ep.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 13
  br label %if.end23

if.else22:                                        ; preds = %if.end11
  %tobool.not.i52 = icmp eq ptr %avp.0, null
  br i1 %tobool.not.i52, label %if.else22.if.end.i_crit_edge, label %land.lhs.true.i54

if.else22.if.end.i_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i54:                                ; preds = %if.else22
  %67 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %3, align 2
  %69 = and i16 %68, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 20480, i16 %69)
  %cmp.i.i53 = icmp eq i16 %69, 20480
  br i1 %cmp.i.i53, label %if.then.i, label %land.lhs.true.i54.if.end.i_crit_edge, !prof !54

land.lhs.true.i54.if.end.i_crit_edge:             ; preds = %land.lhs.true.i54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i54
  call void @__sanitizer_cov_trace_pc() #10
  %tsfadjust.i = getelementptr inbounds %struct.ath9k_htc_vif, ptr %avp.0, i32 0, i32 4
  %70 = ptrtoint ptr %tsfadjust.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %tsfadjust.i, align 8
  %u.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %3, i32 0, i32 6
  %72 = ptrtoint ptr %u.i to i32
  call void @__asan_storeN_noabort(i32 %72, i32 8)
  store i64 %71, ptr %u.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i54.if.end.i_crit_edge, %if.else22.if.end.i_crit_edge
  %73 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 4, ptr %15, align 4
  %call7.i = tail call i32 @ath9k_cmn_get_hw_crypto_keytype(ptr noundef %skb) #8
  %conv9.i = and i32 %call7.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv9.i)
  %cmp.i55 = icmp eq i32 %conv9.i, 0
  br i1 %cmp.i55, label %if.end.i.ath9k_htc_tx_mgmt.exit_crit_edge, label %if.else.i

if.end.i.ath9k_htc_tx_mgmt.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_htc_tx_mgmt.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %hw_key.i56 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %74 = ptrtoint ptr %hw_key.i56 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hw_key.i56, align 4
  %hw_key_idx.i57 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %hw_key_idx.i57 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %hw_key_idx.i57, align 2
  br label %ath9k_htc_tx_mgmt.exit

ath9k_htc_tx_mgmt.exit:                           ; preds = %if.else.i, %if.end.i.ath9k_htc_tx_mgmt.exit_crit_edge
  %mgmt_hdr.sroa.15.0.i = phi i8 [ %77, %if.else.i ], [ -1, %if.end.i.ath9k_htc_tx_mgmt.exit_crit_edge ]
  %conv.i = trunc i32 %call7.i to i8
  %call14.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #8
  %78 = ptrtoint ptr %call14.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %sta_idx.0, ptr %call14.i, align 1
  %mgmt_hdr.sroa.6.0.tx_fhdr.0..sroa_idx.i = getelementptr inbounds i8, ptr %call14.i, i32 1
  %79 = ptrtoint ptr %mgmt_hdr.sroa.6.0.tx_fhdr.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %vif_idx.0, ptr %mgmt_hdr.sroa.6.0.tx_fhdr.0..sroa_idx.i, align 1
  %mgmt_hdr.sroa.8.0.tx_fhdr.0..sroa_idx.i = getelementptr inbounds i8, ptr %call14.i, i32 2
  %80 = ptrtoint ptr %mgmt_hdr.sroa.8.0.tx_fhdr.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %mgmt_hdr.sroa.8.0.tx_fhdr.0..sroa_idx.i, align 1
  %mgmt_hdr.sroa.10.0.tx_fhdr.0..sroa_idx.i = getelementptr inbounds i8, ptr %call14.i, i32 3
  %81 = ptrtoint ptr %mgmt_hdr.sroa.10.0.tx_fhdr.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %mgmt_hdr.sroa.10.0.tx_fhdr.0..sroa_idx.i, align 1
  %mgmt_hdr.sroa.12.0.tx_fhdr.0..sroa_idx.i = getelementptr inbounds i8, ptr %call14.i, i32 4
  %82 = ptrtoint ptr %mgmt_hdr.sroa.12.0.tx_fhdr.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv.i, ptr %mgmt_hdr.sroa.12.0.tx_fhdr.0..sroa_idx.i, align 1
  %mgmt_hdr.sroa.15.0.tx_fhdr.0..sroa_idx.i = getelementptr inbounds i8, ptr %call14.i, i32 5
  %83 = ptrtoint ptr %mgmt_hdr.sroa.15.0.tx_fhdr.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %mgmt_hdr.sroa.15.0.i, ptr %mgmt_hdr.sroa.15.0.tx_fhdr.0..sroa_idx.i, align 1
  %mgmt_hdr.sroa.18.0.tx_fhdr.0..sroa_idx.i = getelementptr inbounds i8, ptr %call14.i, i32 6
  %84 = ptrtoint ptr %mgmt_hdr.sroa.18.0.tx_fhdr.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %slot, ptr %mgmt_hdr.sroa.18.0.tx_fhdr.0..sroa_idx.i, align 1
  %mgmt_hdr.sroa.20.0.tx_fhdr.0..sroa_idx.i = getelementptr inbounds i8, ptr %call14.i, i32 7
  %85 = ptrtoint ptr %mgmt_hdr.sroa.20.0.tx_fhdr.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %mgmt_hdr.sroa.20.0.tx_fhdr.0..sroa_idx.i, align 1
  %mgmt_ep.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 11
  br label %if.end23

if.end23:                                         ; preds = %ath9k_htc_tx_mgmt.exit, %sw.default.i.i, %sw.bb7.i.i, %sw.bb1.i.i, %sw.bb.i.i, %if.then49.i
  %mgmt_ep.i.sink = phi ptr [ %mgmt_ep.i, %ath9k_htc_tx_mgmt.exit ], [ %cab_ep.i, %if.then49.i ], [ %data_bk_ep.i.i, %sw.default.i.i ], [ %data_be_ep.i.i, %sw.bb7.i.i ], [ %data_vi_ep.i.i, %sw.bb1.i.i ], [ %data_vo_ep.i.i, %sw.bb.i.i ]
  %86 = ptrtoint ptr %mgmt_ep.i.sink to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %mgmt_ep.i.sink, align 4
  %conv15.i = trunc i32 %87 to i8
  %epid.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 9
  %88 = ptrtoint ptr %epid.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv15.i, ptr %epid.i, align 1
  %htc = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 3
  %89 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %htc, align 4
  %call24 = tail call i32 @htc_send(ptr noundef %90, ptr noundef %skb) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then7, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %if.end23 ], [ -22, %if.then7 ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @htc_send(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_tx_drain(ptr noundef %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40
  %tx_lock = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #8
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx, align 4
  %2 = or i8 %1, 2
  store i8 %2, ptr %tx, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #8
  %htc = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 3
  %3 = ptrtoint ptr %htc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %htc, align 4
  tail call void @htc_stop(ptr noundef %4) #8
  %wmi = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 4
  %5 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wmi, align 4
  %wmi_event_tasklet = getelementptr inbounds %struct.wmi, ptr %6, i32 0, i32 7
  tail call void @tasklet_kill(ptr noundef %wmi_event_tasklet) #8
  %tx_failed_tasklet = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 44
  tail call void @tasklet_kill(ptr noundef %tx_failed_tasklet) #8
  %mgmt_ep_queue = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 2
  %call1.i = tail call ptr @skb_dequeue(ptr noundef %mgmt_ep_queue) #8
  %cmp.not2.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not2.i, label %entry.ath9k_htc_tx_drainq.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.ath9k_htc_tx_drainq.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_htc_tx_drainq.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %call3.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call1.i, %entry.while.body.i_crit_edge ]
  tail call fastcc void @ath9k_htc_tx_process(ptr noundef %priv, ptr noundef nonnull %call3.i, ptr noundef null) #8
  %call.i = tail call ptr @skb_dequeue(ptr noundef %mgmt_ep_queue) #8
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %while.body.i.ath9k_htc_tx_drainq.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.ath9k_htc_tx_drainq.exit_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_htc_tx_drainq.exit

ath9k_htc_tx_drainq.exit:                         ; preds = %while.body.i.ath9k_htc_tx_drainq.exit_crit_edge, %entry.ath9k_htc_tx_drainq.exit_crit_edge
  %cab_ep_queue = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 3
  %call1.i70 = tail call ptr @skb_dequeue(ptr noundef %cab_ep_queue) #8
  %cmp.not2.i71 = icmp eq ptr %call1.i70, null
  br i1 %cmp.not2.i71, label %ath9k_htc_tx_drainq.exit.ath9k_htc_tx_drainq.exit76_crit_edge, label %ath9k_htc_tx_drainq.exit.while.body.i75_crit_edge

ath9k_htc_tx_drainq.exit.while.body.i75_crit_edge: ; preds = %ath9k_htc_tx_drainq.exit
  br label %while.body.i75

ath9k_htc_tx_drainq.exit.ath9k_htc_tx_drainq.exit76_crit_edge: ; preds = %ath9k_htc_tx_drainq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_htc_tx_drainq.exit76

while.body.i75:                                   ; preds = %while.body.i75.while.body.i75_crit_edge, %ath9k_htc_tx_drainq.exit.while.body.i75_crit_edge
  %call3.i72 = phi ptr [ %call.i73, %while.body.i75.while.body.i75_crit_edge ], [ %call1.i70, %ath9k_htc_tx_drainq.exit.while.body.i75_crit_edge ]
  tail call fastcc void @ath9k_htc_tx_process(ptr noundef %priv, ptr noundef nonnull %call3.i72, ptr noundef null) #8
  %call.i73 = tail call ptr @skb_dequeue(ptr noundef %cab_ep_queue) #8
  %cmp.not.i74 = icmp eq ptr %call.i73, null
  br i1 %cmp.not.i74, label %while.body.i75.ath9k_htc_tx_drainq.exit76_crit_edge, label %while.body.i75.while.body.i75_crit_edge

while.body.i75.while.body.i75_crit_edge:          ; preds = %while.body.i75
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i75

while.body.i75.ath9k_htc_tx_drainq.exit76_crit_edge: ; preds = %while.body.i75
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_htc_tx_drainq.exit76

ath9k_htc_tx_drainq.exit76:                       ; preds = %while.body.i75.ath9k_htc_tx_drainq.exit76_crit_edge, %ath9k_htc_tx_drainq.exit.ath9k_htc_tx_drainq.exit76_crit_edge
  %data_be_queue = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 4
  %call1.i77 = tail call ptr @skb_dequeue(ptr noundef %data_be_queue) #8
  %cmp.not2.i78 = icmp eq ptr %call1.i77, null
  br i1 %cmp.not2.i78, label %ath9k_htc_tx_drainq.exit76.ath9k_htc_tx_drainq.exit83_crit_edge, label %ath9k_htc_tx_drainq.exit76.while.body.i82_crit_edge

ath9k_htc_tx_drainq.exit76.while.body.i82_crit_edge: ; preds = %ath9k_htc_tx_drainq.exit76
  br label %while.body.i82

ath9k_htc_tx_drainq.exit76.ath9k_htc_tx_drainq.exit83_crit_edge: ; preds = %ath9k_htc_tx_drainq.exit76
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_htc_tx_drainq.exit83

while.body.i82:                                   ; preds = %while.body.i82.while.body.i82_crit_edge, %ath9k_htc_tx_drainq.exit76.while.body.i82_crit_edge
  %call3.i79 = phi ptr [ %call.i80, %while.body.i82.while.body.i82_crit_edge ], [ %call1.i77, %ath9k_htc_tx_drainq.exit76.while.body.i82_crit_edge ]
  tail call fastcc void @ath9k_htc_tx_process(ptr noundef %priv, ptr noundef nonnull %call3.i79, ptr noundef null) #8
  %call.i80 = tail call ptr @skb_dequeue(ptr noundef %data_be_queue) #8
  %cmp.not.i81 = icmp eq ptr %call.i80, null
  br i1 %cmp.not.i81, label %while.body.i82.ath9k_htc_tx_drainq.exit83_crit_edge, label %while.body.i82.while.body.i82_crit_edge

while.body.i82.while.body.i82_crit_edge:          ; preds = %while.body.i82
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i82

while.body.i82.ath9k_htc_tx_drainq.exit83_crit_edge: ; preds = %while.body.i82
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_htc_tx_drainq.exit83

ath9k_htc_tx_drainq.exit83:                       ; preds = %while.body.i82.ath9k_htc_tx_drainq.exit83_crit_edge, %ath9k_htc_tx_drainq.exit76.ath9k_htc_tx_drainq.exit83_crit_edge
  %data_bk_queue = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 5
  %call1.i84 = tail call ptr @skb_dequeue(ptr noundef %data_bk_queue) #8
  %cmp.not2.i85 = icmp eq ptr %call1.i84, null
  br i1 %cmp.not2.i85, label %ath9k_htc_tx_drainq.exit83.ath9k_htc_tx_drainq.exit90_crit_edge, label %ath9k_htc_tx_drainq.exit83.while.body.i89_crit_edge

ath9k_htc_tx_drainq.exit83.while.body.i89_crit_edge: ; preds = %ath9k_htc_tx_drainq.exit83
  br label %while.body.i89

ath9k_htc_tx_drainq.exit83.ath9k_htc_tx_drainq.exit90_crit_edge: ; preds = %ath9k_htc_tx_drainq.exit83
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_htc_tx_drainq.exit90

while.body.i89:                                   ; preds = %while.body.i89.while.body.i89_crit_edge, %ath9k_htc_tx_drainq.exit83.while.body.i89_crit_edge
  %call3.i86 = phi ptr [ %call.i87, %while.body.i89.while.body.i89_crit_edge ], [ %call1.i84, %ath9k_htc_tx_drainq.exit83.while.body.i89_crit_edge ]
  tail call fastcc void @ath9k_htc_tx_process(ptr noundef %priv, ptr noundef nonnull %call3.i86, ptr noundef null) #8
  %call.i87 = tail call ptr @skb_dequeue(ptr noundef %data_bk_queue) #8
  %cmp.not.i88 = icmp eq ptr %call.i87, null
  br i1 %cmp.not.i88, label %while.body.i89.ath9k_htc_tx_drainq.exit90_crit_edge, label %while.body.i89.while.body.i89_crit_edge

while.body.i89.while.body.i89_crit_edge:          ; preds = %while.body.i89
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i89

while.body.i89.ath9k_htc_tx_drainq.exit90_crit_edge: ; preds = %while.body.i89
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_htc_tx_drainq.exit90

ath9k_htc_tx_drainq.exit90:                       ; preds = %while.body.i89.ath9k_htc_tx_drainq.exit90_crit_edge, %ath9k_htc_tx_drainq.exit83.ath9k_htc_tx_drainq.exit90_crit_edge
  %data_vi_queue = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 6
  %call1.i91 = tail call ptr @skb_dequeue(ptr noundef %data_vi_queue) #8
  %cmp.not2.i92 = icmp eq ptr %call1.i91, null
  br i1 %cmp.not2.i92, label %ath9k_htc_tx_drainq.exit90.ath9k_htc_tx_drainq.exit97_crit_edge, label %ath9k_htc_tx_drainq.exit90.while.body.i96_crit_edge

ath9k_htc_tx_drainq.exit90.while.body.i96_crit_edge: ; preds = %ath9k_htc_tx_drainq.exit90
  br label %while.body.i96

ath9k_htc_tx_drainq.exit90.ath9k_htc_tx_drainq.exit97_crit_edge: ; preds = %ath9k_htc_tx_drainq.exit90
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_htc_tx_drainq.exit97

while.body.i96:                                   ; preds = %while.body.i96.while.body.i96_crit_edge, %ath9k_htc_tx_drainq.exit90.while.body.i96_crit_edge
  %call3.i93 = phi ptr [ %call.i94, %while.body.i96.while.body.i96_crit_edge ], [ %call1.i91, %ath9k_htc_tx_drainq.exit90.while.body.i96_crit_edge ]
  tail call fastcc void @ath9k_htc_tx_process(ptr noundef %priv, ptr noundef nonnull %call3.i93, ptr noundef null) #8
  %call.i94 = tail call ptr @skb_dequeue(ptr noundef %data_vi_queue) #8
  %cmp.not.i95 = icmp eq ptr %call.i94, null
  br i1 %cmp.not.i95, label %while.body.i96.ath9k_htc_tx_drainq.exit97_crit_edge, label %while.body.i96.while.body.i96_crit_edge

while.body.i96.while.body.i96_crit_edge:          ; preds = %while.body.i96
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i96

while.body.i96.ath9k_htc_tx_drainq.exit97_crit_edge: ; preds = %while.body.i96
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_htc_tx_drainq.exit97

ath9k_htc_tx_drainq.exit97:                       ; preds = %while.body.i96.ath9k_htc_tx_drainq.exit97_crit_edge, %ath9k_htc_tx_drainq.exit90.ath9k_htc_tx_drainq.exit97_crit_edge
  %data_vo_queue = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 7
  %call1.i98 = tail call ptr @skb_dequeue(ptr noundef %data_vo_queue) #8
  %cmp.not2.i99 = icmp eq ptr %call1.i98, null
  br i1 %cmp.not2.i99, label %ath9k_htc_tx_drainq.exit97.ath9k_htc_tx_drainq.exit104_crit_edge, label %ath9k_htc_tx_drainq.exit97.while.body.i103_crit_edge

ath9k_htc_tx_drainq.exit97.while.body.i103_crit_edge: ; preds = %ath9k_htc_tx_drainq.exit97
  br label %while.body.i103

ath9k_htc_tx_drainq.exit97.ath9k_htc_tx_drainq.exit104_crit_edge: ; preds = %ath9k_htc_tx_drainq.exit97
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_htc_tx_drainq.exit104

while.body.i103:                                  ; preds = %while.body.i103.while.body.i103_crit_edge, %ath9k_htc_tx_drainq.exit97.while.body.i103_crit_edge
  %call3.i100 = phi ptr [ %call.i101, %while.body.i103.while.body.i103_crit_edge ], [ %call1.i98, %ath9k_htc_tx_drainq.exit97.while.body.i103_crit_edge ]
  tail call fastcc void @ath9k_htc_tx_process(ptr noundef %priv, ptr noundef nonnull %call3.i100, ptr noundef null) #8
  %call.i101 = tail call ptr @skb_dequeue(ptr noundef %data_vo_queue) #8
  %cmp.not.i102 = icmp eq ptr %call.i101, null
  br i1 %cmp.not.i102, label %while.body.i103.ath9k_htc_tx_drainq.exit104_crit_edge, label %while.body.i103.while.body.i103_crit_edge

while.body.i103.while.body.i103_crit_edge:        ; preds = %while.body.i103
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i103

while.body.i103.ath9k_htc_tx_drainq.exit104_crit_edge: ; preds = %while.body.i103
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_htc_tx_drainq.exit104

ath9k_htc_tx_drainq.exit104:                      ; preds = %while.body.i103.ath9k_htc_tx_drainq.exit104_crit_edge, %ath9k_htc_tx_drainq.exit97.ath9k_htc_tx_drainq.exit104_crit_edge
  %tx_failed = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 8
  %call1.i105 = tail call ptr @skb_dequeue(ptr noundef %tx_failed) #8
  %cmp.not2.i106 = icmp eq ptr %call1.i105, null
  br i1 %cmp.not2.i106, label %ath9k_htc_tx_drainq.exit104.ath9k_htc_tx_drainq.exit111_crit_edge, label %ath9k_htc_tx_drainq.exit104.while.body.i110_crit_edge

ath9k_htc_tx_drainq.exit104.while.body.i110_crit_edge: ; preds = %ath9k_htc_tx_drainq.exit104
  br label %while.body.i110

ath9k_htc_tx_drainq.exit104.ath9k_htc_tx_drainq.exit111_crit_edge: ; preds = %ath9k_htc_tx_drainq.exit104
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_htc_tx_drainq.exit111

while.body.i110:                                  ; preds = %while.body.i110.while.body.i110_crit_edge, %ath9k_htc_tx_drainq.exit104.while.body.i110_crit_edge
  %call3.i107 = phi ptr [ %call.i108, %while.body.i110.while.body.i110_crit_edge ], [ %call1.i105, %ath9k_htc_tx_drainq.exit104.while.body.i110_crit_edge ]
  tail call fastcc void @ath9k_htc_tx_process(ptr noundef %priv, ptr noundef nonnull %call3.i107, ptr noundef null) #8
  %call.i108 = tail call ptr @skb_dequeue(ptr noundef %tx_failed) #8
  %cmp.not.i109 = icmp eq ptr %call.i108, null
  br i1 %cmp.not.i109, label %while.body.i110.ath9k_htc_tx_drainq.exit111_crit_edge, label %while.body.i110.while.body.i110_crit_edge

while.body.i110.while.body.i110_crit_edge:        ; preds = %while.body.i110
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i110

while.body.i110.ath9k_htc_tx_drainq.exit111_crit_edge: ; preds = %while.body.i110
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_htc_tx_drainq.exit111

ath9k_htc_tx_drainq.exit111:                      ; preds = %while.body.i110.ath9k_htc_tx_drainq.exit111_crit_edge, %ath9k_htc_tx_drainq.exit104.ath9k_htc_tx_drainq.exit111_crit_edge
  %7 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wmi, align 4
  %event_lock = getelementptr inbounds %struct.wmi, ptr %8, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %event_lock) #8
  %9 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wmi, align 4
  %pending_tx_events = getelementptr inbounds %struct.wmi, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %pending_tx_events to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pending_tx_events, align 4
  %cmp.not113 = icmp eq ptr %12, %pending_tx_events
  br i1 %cmp.not113, label %ath9k_htc_tx_drainq.exit111.for.end_crit_edge, label %ath9k_htc_tx_drainq.exit111.for.body_crit_edge

ath9k_htc_tx_drainq.exit111.for.body_crit_edge:   ; preds = %ath9k_htc_tx_drainq.exit111
  br label %for.body

ath9k_htc_tx_drainq.exit111.for.end_crit_edge:    ; preds = %ath9k_htc_tx_drainq.exit111
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %ath9k_htc_tx_drainq.exit111.for.body_crit_edge
  %.pn.in114 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %12, %ath9k_htc_tx_drainq.exit111.for.body_crit_edge ]
  %event.0 = getelementptr i8, ptr %.pn.in114, i32 -8
  %13 = ptrtoint ptr %.pn.in114 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn.in114, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in114) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in114, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %.pn.in114 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %.pn.in114, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %20 = ptrtoint ptr %.pn.in114 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in114, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in114, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %event.0) #8
  %22 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wmi, align 4
  %pending_tx_events21 = getelementptr inbounds %struct.wmi, ptr %23, i32 0, i32 12
  %cmp.not = icmp eq ptr %.pn, %pending_tx_events21
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %ath9k_htc_tx_drainq.exit111.for.end_crit_edge
  %.lcssa = phi ptr [ %10, %ath9k_htc_tx_drainq.exit111.for.end_crit_edge ], [ %23, %list_del.exit.for.end_crit_edge ]
  %event_lock30 = getelementptr inbounds %struct.wmi, ptr %.lcssa, i32 0, i32 13
  tail call void @_raw_spin_unlock_bh(ptr noundef %event_lock30) #8
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #8
  %24 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %tx, align 4
  %26 = and i8 %25, -3
  store i8 %26, ptr %tx, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @htc_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_tx_failed_tasklet(ptr noundef %t) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx = getelementptr i8, ptr %t, i32 -676
  %tx_lock = getelementptr i8, ptr %t, i32 -196
  tail call void @_raw_spin_lock(ptr noundef %tx_lock) #8
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx, align 4
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %tx_lock) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %t, i32 -1720
  tail call void @_raw_spin_unlock(ptr noundef %tx_lock) #8
  %tx_failed = getelementptr i8, ptr %t, i32 -332
  %call1.i = tail call ptr @skb_dequeue(ptr noundef %tx_failed) #8
  %cmp.not2.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not2.i, label %if.end.cleanup_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %call3.i = phi ptr [ %call.i, %while.body.i.while.body.i_crit_edge ], [ %call1.i, %if.end.while.body.i_crit_edge ]
  tail call fastcc void @ath9k_htc_tx_process(ptr noundef %add.ptr, ptr noundef nonnull %call3.i, ptr noundef null) #8
  %call.i = tail call ptr @skb_dequeue(ptr noundef %tx_failed) #8
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %while.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_txstatus(ptr noundef %priv, ptr noundef %wmi_event) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wmi_event to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wmi_event, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp51.not = icmp eq i8 %1, 0
  br i1 %cmp51.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %wmi = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %2 = phi i8 [ %1, %for.body.lr.ph ], [ %18, %for.inc.for.body_crit_edge ]
  %i.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %2)
  %cmp4 = icmp ugt i8 %2, 12
  br i1 %cmp4, label %do.end, label %for.body.if.end_crit_edge, !prof !54

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 656, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  %arrayidx = getelementptr %struct.wmi_event_txstatus, ptr %wmi_event, i32 0, i32 1, i32 %i.052
  %call = tail call fastcc ptr @ath9k_htc_tx_get_packet(ptr noundef %priv, ptr noundef %arrayidx)
  %tobool24.not = icmp eq ptr %call, null
  br i1 %tobool24.not, label %if.then25, label %if.end34

if.then25:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 2848, i32 noundef 16) #11
  %tobool27.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool27.not, label %if.then25.for.inc_crit_edge, label %if.end29

if.then25.for.inc_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end29:                                         ; preds = %if.then25
  %txs30 = getelementptr inbounds %struct.ath9k_htc_tx_event, ptr %call7.i.i, i32 0, i32 1
  %4 = call ptr @memcpy(ptr %txs30, ptr %arrayidx, i32 3)
  %5 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wmi, align 4
  %event_lock = getelementptr inbounds %struct.wmi, ptr %6, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %event_lock) #8
  %list = getelementptr inbounds %struct.ath9k_htc_tx_event, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wmi, align 4
  %pending_tx_events = getelementptr inbounds %struct.wmi, ptr %8, i32 0, i32 12
  %prev.i = getelementptr inbounds %struct.wmi, ptr %8, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %10, ptr noundef %pending_tx_events) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end29.list_add_tail.exit_crit_edge

if.end29.list_add_tail.exit_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %prev.i, align 4
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pending_tx_events, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.ath9k_htc_tx_event, ptr %call7.i.i, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %list, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end29.list_add_tail.exit_crit_edge
  %15 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wmi, align 4
  %event_lock33 = getelementptr inbounds %struct.wmi, ptr %16, i32 0, i32 13
  tail call void @_raw_spin_unlock(ptr noundef %event_lock33) #8
  br label %for.inc

if.end34:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ath9k_htc_tx_process(ptr noundef %priv, ptr noundef nonnull %call, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %if.end34, %list_add_tail.exit, %if.then25.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.052, 1
  %17 = ptrtoint ptr %wmi_event to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %wmi_event, align 1
  %conv = zext i8 %18 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %tx.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40
  %tx_lock.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock.i) #8
  %queued_cnt.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 1
  %19 = ptrtoint ptr %queued_cnt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %queued_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 246, i32 %20)
  %cmp.i = icmp slt i32 %20, 246
  br i1 %cmp.i, label %land.lhs.true.i, label %for.end.ath9k_htc_check_wake_queues.exit_crit_edge

for.end.ath9k_htc_check_wake_queues.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_htc_check_wake_queues.exit

land.lhs.true.i:                                  ; preds = %for.end
  %21 = ptrtoint ptr %tx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tx.i, align 4
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.ath9k_htc_check_wake_queues.exit_crit_edge, label %if.then.i

land.lhs.true.i.ath9k_htc_check_wake_queues.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_htc_check_wake_queues.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %and6.i = and i8 %22, -2
  %24 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %and6.i, ptr %tx.i, align 4
  %hw.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 1
  %25 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw.i, align 4
  tail call void @ieee80211_wake_queues(ptr noundef %26) #8
  br label %ath9k_htc_check_wake_queues.exit

ath9k_htc_check_wake_queues.exit:                 ; preds = %if.then.i, %land.lhs.true.i.ath9k_htc_check_wake_queues.exit_crit_edge, %for.end.ath9k_htc_check_wake_queues.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ath9k_htc_tx_get_packet(ptr noundef %priv, ptr nocapture noundef readonly %txs) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %ts_rate = getelementptr inbounds %struct.__wmi_event_txstatus, ptr %txs, i32 0, i32 1
  %2 = ptrtoint ptr %ts_rate to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ts_rate, align 1
  %4 = lshr i8 %3, 4
  %conv.i = zext i8 %4 to i32
  %mgmt_ep.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 11
  %5 = ptrtoint ptr %mgmt_ep.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mgmt_ep.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv.i)
  %cmp.i = icmp eq i32 %6, %conv.i
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mgmt_ep_queue.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 2
  br label %get_htc_epid_queue.exit

if.else.i:                                        ; preds = %entry
  %cab_ep.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 9
  %7 = ptrtoint ptr %cab_ep.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cab_ep.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv.i)
  %cmp3.i = icmp eq i32 %8, %conv.i
  br i1 %cmp3.i, label %if.then5.i, label %if.else7.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %cab_ep_queue.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 3
  br label %get_htc_epid_queue.exit

if.else7.i:                                       ; preds = %if.else.i
  %data_be_ep.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 12
  %9 = ptrtoint ptr %data_be_ep.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_be_ep.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv.i)
  %cmp9.i = icmp eq i32 %10, %conv.i
  br i1 %cmp9.i, label %if.then11.i, label %if.else13.i

if.then11.i:                                      ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #10
  %data_be_queue.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 4
  br label %get_htc_epid_queue.exit

if.else13.i:                                      ; preds = %if.else7.i
  %data_bk_ep.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 13
  %11 = ptrtoint ptr %data_bk_ep.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_bk_ep.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv.i)
  %cmp15.i = icmp eq i32 %12, %conv.i
  br i1 %cmp15.i, label %if.then17.i, label %if.else19.i

if.then17.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #10
  %data_bk_queue.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 5
  br label %get_htc_epid_queue.exit

if.else19.i:                                      ; preds = %if.else13.i
  %data_vi_ep.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 14
  %13 = ptrtoint ptr %data_vi_ep.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_vi_ep.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv.i)
  %cmp21.i = icmp eq i32 %14, %conv.i
  br i1 %cmp21.i, label %if.then23.i, label %if.else25.i

if.then23.i:                                      ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #10
  %data_vi_queue.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 6
  br label %get_htc_epid_queue.exit

if.else25.i:                                      ; preds = %if.else19.i
  %data_vo_ep.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 15
  %15 = ptrtoint ptr %data_vo_ep.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_vo_ep.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv.i)
  %cmp27.i = icmp eq i32 %16, %conv.i
  br i1 %cmp27.i, label %if.then29.i, label %get_htc_epid_queue.exit.thread

if.then29.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #10
  %data_vo_queue.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 7
  br label %get_htc_epid_queue.exit

get_htc_epid_queue.exit.thread:                   ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.14, i32 noundef %conv.i) #8
  br label %cleanup

get_htc_epid_queue.exit:                          ; preds = %if.then29.i, %if.then23.i, %if.then17.i, %if.then11.i, %if.then5.i, %if.then.i
  %epid_queue.0.i = phi ptr [ %mgmt_ep_queue.i, %if.then.i ], [ %cab_ep_queue.i, %if.then5.i ], [ %data_be_queue.i, %if.then11.i ], [ %data_bk_queue.i, %if.then17.i ], [ %data_vi_queue.i, %if.then23.i ], [ %data_vo_queue.i, %if.then29.i ]
  %tobool.not = icmp eq ptr %epid_queue.0.i, null
  br i1 %tobool.not, label %get_htc_epid_queue.exit.cleanup_crit_edge, label %do.body3

get_htc_epid_queue.exit.cleanup_crit_edge:        ; preds = %get_htc_epid_queue.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body3:                                         ; preds = %get_htc_epid_queue.exit
  %lock = getelementptr inbounds %struct.sk_buff_head, ptr %epid_queue.0.i, i32 0, i32 2
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %17 = ptrtoint ptr %epid_queue.0.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %epid_queue.0.i, align 4
  %data_bk_ep.i57 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 13
  %data_be_ep.i59 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 12
  %data_vi_ep.i60 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 14
  %data_vo_ep.i61 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 15
  %cab_ep.i63 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 9
  br label %for.cond

for.cond:                                         ; preds = %check_cookie.exit.for.cond_crit_edge, %do.body3
  %skb.0 = phi ptr [ %18, %do.body3 ], [ %tmp.0, %check_cookie.exit.for.cond_crit_edge ]
  %19 = ptrtoint ptr %skb.0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %tmp.0 = load ptr, ptr %skb.0, align 8
  %cmp11.not = icmp eq ptr %skb.0, %epid_queue.0.i
  br i1 %cmp11.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %20 = ptrtoint ptr %txs to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %txs, align 1
  %22 = ptrtoint ptr %mgmt_ep.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mgmt_ep.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv.i)
  %cmp.i55 = icmp eq i32 %23, %conv.i
  br i1 %cmp.i55, label %if.then.i56, label %if.else.i58

if.then.i56:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 19
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  %cookie2.i = getelementptr inbounds %struct.tx_mgmt_hdr, ptr %25, i32 0, i32 6
  br label %if.end25.sink.split.i

if.else.i58:                                      ; preds = %for.body
  %26 = ptrtoint ptr %data_bk_ep.i57 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_bk_ep.i57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv.i)
  %cmp4.i = icmp eq i32 %27, %conv.i
  br i1 %cmp4.i, label %if.else.i58.if.then21.i_crit_edge, label %lor.lhs.false.i

if.else.i58.if.then21.i_crit_edge:                ; preds = %if.else.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21.i

lor.lhs.false.i:                                  ; preds = %if.else.i58
  %28 = ptrtoint ptr %data_be_ep.i59 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_be_ep.i59, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv.i)
  %cmp7.i = icmp eq i32 %29, %conv.i
  br i1 %cmp7.i, label %lor.lhs.false.i.if.then21.i_crit_edge, label %lor.lhs.false9.i

lor.lhs.false.i.if.then21.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21.i

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false.i
  %30 = ptrtoint ptr %data_vi_ep.i60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data_vi_ep.i60, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %conv.i)
  %cmp11.i = icmp eq i32 %31, %conv.i
  br i1 %cmp11.i, label %lor.lhs.false9.i.if.then21.i_crit_edge, label %lor.lhs.false13.i

lor.lhs.false9.i.if.then21.i_crit_edge:           ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21.i

lor.lhs.false13.i:                                ; preds = %lor.lhs.false9.i
  %32 = ptrtoint ptr %data_vo_ep.i61 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_vo_ep.i61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv.i)
  %cmp15.i62 = icmp eq i32 %33, %conv.i
  br i1 %cmp15.i62, label %lor.lhs.false13.i.if.then21.i_crit_edge, label %lor.lhs.false17.i

lor.lhs.false13.i.if.then21.i_crit_edge:          ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21.i

lor.lhs.false17.i:                                ; preds = %lor.lhs.false13.i
  %34 = ptrtoint ptr %cab_ep.i63 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cab_ep.i63, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv.i)
  %cmp19.i = icmp eq i32 %35, %conv.i
  br i1 %cmp19.i, label %lor.lhs.false17.i.if.then21.i_crit_edge, label %lor.lhs.false17.i.check_cookie.exit_crit_edge

lor.lhs.false17.i.check_cookie.exit_crit_edge:    ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_cookie.exit

lor.lhs.false17.i.if.then21.i_crit_edge:          ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21.i

if.then21.i:                                      ; preds = %lor.lhs.false17.i.if.then21.i_crit_edge, %lor.lhs.false13.i.if.then21.i_crit_edge, %lor.lhs.false9.i.if.then21.i_crit_edge, %lor.lhs.false.i.if.then21.i_crit_edge, %if.else.i58.if.then21.i_crit_edge
  %data23.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 19
  %36 = ptrtoint ptr %data23.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data23.i, align 4
  %cookie24.i = getelementptr inbounds %struct.tx_frame_hdr, ptr %37, i32 0, i32 7
  br label %if.end25.sink.split.i

if.end25.sink.split.i:                            ; preds = %if.then21.i, %if.then.i56
  %cookie24.sink.i = phi ptr [ %cookie24.i, %if.then21.i ], [ %cookie2.i, %if.then.i56 ]
  %38 = ptrtoint ptr %cookie24.sink.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %cookie24.sink.i, align 1
  br label %check_cookie.exit

check_cookie.exit:                                ; preds = %if.end25.sink.split.i, %lor.lhs.false17.i.check_cookie.exit_crit_edge
  %fcookie.0.i = phi i8 [ 0, %lor.lhs.false17.i.check_cookie.exit_crit_edge ], [ %39, %if.end25.sink.split.i ]
  %cmp28.i = icmp eq i8 %fcookie.0.i, %21
  br i1 %cmp28.i, label %if.then14, label %check_cookie.exit.for.cond_crit_edge

check_cookie.exit.for.cond_crit_edge:             ; preds = %check_cookie.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then14:                                        ; preds = %check_cookie.exit
  call void @__sanitizer_cov_trace_pc() #10
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %epid_queue.0.i, i32 0, i32 1
  %40 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %qlen.i, align 4
  %sub.i = add i32 %41, -1
  store volatile i32 %sub.i, ptr %qlen.i, align 4
  %42 = ptrtoint ptr %skb.0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %skb.0, align 8
  %prev9.i = getelementptr inbounds %struct.anon.44, ptr %skb.0, i32 0, i32 1
  %44 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %skb.0, align 8
  %prev17.i = getelementptr inbounds %struct.anon.44, ptr %43, i32 0, i32 1
  %46 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %45, ptr %prev17.i, align 4
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %43, ptr %45, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #8
  br label %cleanup

for.end:                                          ; preds = %for.cond
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #8
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %48 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %debug_mask, align 4
  %and20 = and i32 %49, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %for.end.cleanup_crit_edge, label %if.then22

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %txs to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %txs, align 1
  %conv24 = zext i8 %51 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.9, i32 noundef %conv24, i32 noundef %conv.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %for.end.cleanup_crit_edge, %if.then14, %get_htc_epid_queue.exit.cleanup_crit_edge, %get_htc_epid_queue.exit.thread
  %retval.0 = phi ptr [ %skb.0, %if.then14 ], [ null, %get_htc_epid_queue.exit.cleanup_crit_edge ], [ null, %if.then22 ], [ null, %for.end.cleanup_crit_edge ], [ null, %get_htc_epid_queue.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath9k_htc_tx_process(ptr noundef %priv, ptr noundef %skb, ptr noundef readonly %txs) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %ah.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %ah.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah.i, align 4
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 3
  %epid.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 9
  %4 = ptrtoint ptr %epid.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %epid.i, align 1
  %conv.i = zext i8 %5 to i32
  %mgmt_ep.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 11
  %6 = ptrtoint ptr %mgmt_ep.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mgmt_ep.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.i)
  %cmp.i = icmp eq i32 %7, %conv.i
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %cookie.i = getelementptr inbounds %struct.tx_mgmt_hdr, ptr %9, i32 0, i32 6
  br label %if.end

if.else.i:                                        ; preds = %entry
  %data_bk_ep.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 13
  %10 = ptrtoint ptr %data_bk_ep.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_bk_ep.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv.i)
  %cmp7.i = icmp eq i32 %11, %conv.i
  br i1 %cmp7.i, label %if.else.i.if.then28.i_crit_edge, label %lor.lhs.false.i

if.else.i.if.then28.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28.i

lor.lhs.false.i:                                  ; preds = %if.else.i
  %data_be_ep.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 12
  %12 = ptrtoint ptr %data_be_ep.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_be_ep.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv.i)
  %cmp11.i = icmp eq i32 %13, %conv.i
  br i1 %cmp11.i, label %lor.lhs.false.i.if.then28.i_crit_edge, label %lor.lhs.false13.i

lor.lhs.false.i.if.then28.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28.i

lor.lhs.false13.i:                                ; preds = %lor.lhs.false.i
  %data_vi_ep.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 14
  %14 = ptrtoint ptr %data_vi_ep.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_vi_ep.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv.i)
  %cmp16.i = icmp eq i32 %15, %conv.i
  br i1 %cmp16.i, label %lor.lhs.false13.i.if.then28.i_crit_edge, label %lor.lhs.false18.i

lor.lhs.false13.i.if.then28.i_crit_edge:          ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28.i

lor.lhs.false18.i:                                ; preds = %lor.lhs.false13.i
  %data_vo_ep.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 15
  %16 = ptrtoint ptr %data_vo_ep.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_vo_ep.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv.i)
  %cmp21.i = icmp eq i32 %17, %conv.i
  br i1 %cmp21.i, label %lor.lhs.false18.i.if.then28.i_crit_edge, label %lor.lhs.false23.i

lor.lhs.false18.i.if.then28.i_crit_edge:          ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28.i

lor.lhs.false23.i:                                ; preds = %lor.lhs.false18.i
  %cab_ep.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 9
  %18 = ptrtoint ptr %cab_ep.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cab_ep.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv.i)
  %cmp26.i = icmp eq i32 %19, %conv.i
  br i1 %cmp26.i, label %lor.lhs.false23.i.if.then28.i_crit_edge, label %if.then

lor.lhs.false23.i.if.then28.i_crit_edge:          ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28.i

if.then28.i:                                      ; preds = %lor.lhs.false23.i.if.then28.i_crit_edge, %lor.lhs.false18.i.if.then28.i_crit_edge, %lor.lhs.false13.i.if.then28.i_crit_edge, %lor.lhs.false.i.if.then28.i_crit_edge, %if.else.i.if.then28.i_crit_edge
  %data29.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %20 = ptrtoint ptr %data29.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data29.i, align 4
  %cookie30.i = getelementptr inbounds %struct.tx_frame_hdr, ptr %21, i32 0, i32 7
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.10, i32 noundef %conv.i) #8
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  br label %cleanup

if.end:                                           ; preds = %if.then28.i, %if.then.i
  %cookie.i.sink = phi ptr [ %cookie.i, %if.then.i ], [ %cookie30.i, %if.then28.i ]
  %.sink = phi i32 [ 8, %if.then.i ], [ 12, %if.then28.i ]
  %22 = ptrtoint ptr %cookie.i.sink to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cookie.i.sink, align 1
  %call4.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %.sink) #8
  %slot.0.i.ph = zext i8 %23 to i32
  %txok2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 10
  %24 = ptrtoint ptr %txok2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %txok2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %26 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %vif4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %27 = ptrtoint ptr %vif4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vif4, align 8
  %29 = call ptr @memset(ptr %26, i32 0, i32 40)
  %tobool6.not = icmp eq ptr %28, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool6.not
  %tobool8.not = icmp eq ptr %txs, null
  %or.cond197 = or i1 %tobool8.not, %or.cond
  br i1 %or.cond197, label %if.end.send_mac80211_crit_edge, label %if.end10

if.end.send_mac80211_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %send_mac80211

if.end10:                                         ; preds = %if.end
  %ts_flags = getelementptr inbounds %struct.__wmi_event_txstatus, ptr %txs, i32 0, i32 2
  %30 = ptrtoint ptr %ts_flags to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ts_flags, align 1
  %32 = and i8 %31, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool11.not = icmp eq i8 %32, 0
  br i1 %tobool11.not, label %if.end10.if.end20_crit_edge, label %if.then12

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then12:                                        ; preds = %if.end10
  %33 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cb.i, align 8
  %or = or i32 %34, 512
  store i32 %or, ptr %cb.i, align 8
  %and14 = and i32 %34, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then12.if.end20_crit_edge, label %if.then16

if.then12.if.end20_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %or18 = or i32 %34, 1536
  %35 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or18, ptr %cb.i, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.then12.if.end20_crit_edge, %if.end10.if.end20_crit_edge
  %36 = ptrtoint ptr %ts_flags to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ts_flags, align 1
  %38 = and i8 %37, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool24.not = icmp eq i8 %38, 0
  br i1 %tobool24.not, label %if.end20.if.end28_crit_edge, label %if.then25

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cb.i, align 8
  %or27 = or i32 %40, 256
  store i32 %or27, ptr %cb.i, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end20.if.end28_crit_edge
  %41 = ptrtoint ptr %ts_flags to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ts_flags, align 1
  %43 = and i8 %42, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool32.not = icmp eq i8 %43, 0
  br i1 %tobool32.not, label %if.end28.if.end40_crit_edge, label %if.then33

if.end28.if.end40_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %epid.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %bf.load = load i16, ptr %epid.i, align 1
  %bf.set = or i16 %bf.load, 1
  store i16 %bf.set, ptr %epid.i, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.then33, %if.end28.if.end40_crit_edge
  %45 = ptrtoint ptr %epid.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %bf.load41 = load i16, ptr %epid.i, align 1
  %bf.clear42 = and i16 %bf.load41, 2047
  %bf.set43 = or i16 %bf.clear42, 2048
  store i16 %bf.set43, ptr %epid.i, align 1
  %ts_rate = getelementptr inbounds %struct.__wmi_event_txstatus, ptr %txs, i32 0, i32 1
  %46 = ptrtoint ptr %ts_rate to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ts_rate, align 1
  %48 = and i8 %47, 15
  %49 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %26, align 1
  %50 = ptrtoint ptr %ts_flags to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ts_flags, align 1
  %52 = and i8 %51, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool50.not = icmp eq i8 %52, 0
  br i1 %tobool50.not, label %if.else, label %if.then51

if.then51:                                        ; preds = %if.end40
  %bf.clear54 = and i16 %bf.load41, 2039
  %bf.set61 = or i16 %bf.clear54, 2056
  %53 = ptrtoint ptr %epid.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 2)
  store i16 %bf.set61, ptr %epid.i, align 1
  %54 = ptrtoint ptr %ts_flags to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ts_flags, align 1
  %56 = and i8 %55, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool65.not = icmp eq i8 %56, 0
  br i1 %tobool65.not, label %if.then51.if.end77_crit_edge, label %if.then66

if.then51.if.end77_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then66:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set76 = or i16 %bf.clear54, 2088
  %57 = ptrtoint ptr %epid.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 %bf.set76, ptr %epid.i, align 1
  br label %if.end77

if.end77:                                         ; preds = %if.then66, %if.then51.if.end77_crit_edge
  %58 = ptrtoint ptr %ts_flags to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ts_flags, align 1
  %60 = and i8 %59, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool81.not = icmp eq i8 %60, 0
  br i1 %tobool81.not, label %if.end77.if.end101_crit_edge, label %if.then82

if.end77.if.end101_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.then82:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %epid.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %bf.load84 = load i16, ptr %epid.i, align 1
  %bf.set92 = or i16 %bf.load84, 128
  store i16 %bf.set92, ptr %epid.i, align 1
  br label %if.end101

if.else:                                          ; preds = %if.end40
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %1, i32 0, i32 7
  %62 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %chandef, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp94 = icmp eq i32 %65, 1
  br i1 %cmp94, label %if.then96, label %if.else.if.end101_crit_edge

if.else.if.end101_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.then96:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %narrow = add nuw nsw i8 %48, 4
  %66 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %narrow, ptr %26, align 1
  br label %if.end101

if.end101:                                        ; preds = %if.then96, %if.else.if.end101_crit_edge, %if.then82, %if.end77.if.end101_crit_edge
  %data.i198 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %67 = ptrtoint ptr %data.i198 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data.i198, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %68, align 2
  %71 = tail call i32 @llvm.read_register.i32(metadata !43) #8
  %and.i.i.i.i.i.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %74, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !55
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i, label %if.end101.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end101.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end101
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #8
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end101.rcu_read_lock.exit.i_crit_edge
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %68, i32 0, i32 2
  %call.i = tail call ptr @ieee80211_find_sta(ptr noundef nonnull %28, ptr noundef %addr1.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i199, label %land.lhs.true.i

if.then.i199:                                     ; preds = %rcu_read_lock.exit.i
  %call.i36.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i36.i, label %if.then.i199.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i39.i

if.then.i199.rcu_read_unlock.exit.i_crit_edge:    ; preds = %if.then.i199
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true.i39.i:                              ; preds = %if.then.i199
  %call1.i37.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37.i)
  %tobool.not.i38.i = icmp eq i32 %call1.i37.i, 0
  br i1 %tobool.not.i38.i, label %land.lhs.true.i39.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i41.i

land.lhs.true.i39.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i41.i:                             ; preds = %land.lhs.true.i39.i
  %.b4.i40.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i40.i, label %land.lhs.true2.i41.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i42.i

land.lhs.true2.i41.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

if.then.i42.i:                                    ; preds = %land.lhs.true2.i41.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #8
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i42.i, %land.lhs.true2.i41.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i39.i.rcu_read_unlock.exit.i_crit_edge, %if.then.i199.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !56
  br label %ath9k_htc_check_tx_aggr.exit

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %75 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw, align 4
  %width.i.i = getelementptr inbounds %struct.ieee80211_conf, ptr %76, i32 0, i32 7, i32 1
  %77 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %width.i.i, align 4
  %79 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %78, label %land.lhs.true3.i [
    i32 6, label %land.lhs.true.i.if.end21.i_crit_edge
    i32 7, label %land.lhs.true.i.if.end21.i_crit_edge204
    i32 0, label %land.lhs.true.i.if.end21.i_crit_edge205
  ]

land.lhs.true.i.if.end21.i_crit_edge205:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

land.lhs.true.i.if.end21.i_crit_edge204:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

land.lhs.true.i.if.end21.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %80 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30578, i16 %81)
  %cmp.i200 = icmp ne i16 %81, -30578
  %82 = and i16 %70, -29696
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30720, i16 %82)
  %cmp.i.i = icmp eq i16 %82, -30720
  %or.cond.i = select i1 %cmp.i200, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i, label %if.then7.i, label %land.lhs.true3.i.if.end21.i_crit_edge

land.lhs.true3.i.if.end21.i_crit_edge:            ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then7.i:                                       ; preds = %land.lhs.true3.i
  %83 = ptrtoint ptr %68 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %68, align 2
  %85 = and i16 %84, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %85)
  %cmp.i.i.i = icmp eq i16 %85, 3
  %retval.0.v.i.i = select i1 %cmp.i.i.i, i32 30, i32 24
  %retval.0.i.i = getelementptr i8, ptr %68, i32 %retval.0.v.i.i
  %86 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %retval.0.i.i, align 1
  %88 = and i8 %87, 15
  %tx_lock.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %88)
  %cmp.i45.i = icmp ult i8 %88, 8
  br i1 %cmp.i45.i, label %__ath9k_htc_check_tx_aggr.exit.i, label %if.then7.i.if.end21.sink.split.i_crit_edge

if.then7.i.if.end21.sink.split.i_crit_edge:       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.sink.split.i

__ath9k_htc_check_tx_aggr.exit.i:                 ; preds = %if.then7.i
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %call.i, i32 0, i32 29
  %conv.i.i = zext i8 %88 to i32
  %arrayidx.i.i = getelementptr %struct.ath9k_htc_sta, ptr %drv_priv.i, i32 0, i32 1, i32 %conv.i.i
  %89 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp2.i.i = icmp eq i32 %90, 0
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock.i.i) #8
  br i1 %cmp2.i.i, label %if.then13.i, label %__ath9k_htc_check_tx_aggr.exit.i.if.end21.i_crit_edge

__ath9k_htc_check_tx_aggr.exit.i.if.end21.i_crit_edge: ; preds = %__ath9k_htc_check_tx_aggr.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then13.i:                                      ; preds = %__ath9k_htc_check_tx_aggr.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv14.i = zext i8 %88 to i16
  %call15.i = tail call i32 @ieee80211_start_tx_ba_session(ptr noundef nonnull %call.i, i16 noundef zeroext %conv14.i, i16 noundef zeroext 0) #8
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock.i.i) #8
  %tid_state.i = getelementptr inbounds %struct.ieee80211_sta, ptr %call.i, i32 1, i32 0, i32 1
  %arrayidx16.i = getelementptr [8 x i32], ptr %tid_state.i, i32 0, i32 %conv.i.i
  %91 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %arrayidx16.i, align 4
  br label %if.end21.sink.split.i

if.end21.sink.split.i:                            ; preds = %if.then13.i, %if.then7.i.if.end21.sink.split.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock.i.i) #8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end21.sink.split.i, %__ath9k_htc_check_tx_aggr.exit.i.if.end21.i_crit_edge, %land.lhs.true3.i.if.end21.i_crit_edge, %land.lhs.true.i.if.end21.i_crit_edge, %land.lhs.true.i.if.end21.i_crit_edge204, %land.lhs.true.i.if.end21.i_crit_edge205
  %call.i47.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i47.i, label %if.end21.i.rcu_read_unlock.exit57.i_crit_edge, label %land.lhs.true.i50.i

if.end21.i.rcu_read_unlock.exit57.i_crit_edge:    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit57.i

land.lhs.true.i50.i:                              ; preds = %if.end21.i
  %call1.i48.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48.i)
  %tobool.not.i49.i = icmp eq i32 %call1.i48.i, 0
  br i1 %tobool.not.i49.i, label %land.lhs.true.i50.i.rcu_read_unlock.exit57.i_crit_edge, label %land.lhs.true2.i52.i

land.lhs.true.i50.i.rcu_read_unlock.exit57.i_crit_edge: ; preds = %land.lhs.true.i50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit57.i

land.lhs.true2.i52.i:                             ; preds = %land.lhs.true.i50.i
  %.b4.i51.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i51.i, label %land.lhs.true2.i52.i.rcu_read_unlock.exit57.i_crit_edge, label %if.then.i53.i

land.lhs.true2.i52.i.rcu_read_unlock.exit57.i_crit_edge: ; preds = %land.lhs.true2.i52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit57.i

if.then.i53.i:                                    ; preds = %land.lhs.true2.i52.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #8
  br label %rcu_read_unlock.exit57.i

rcu_read_unlock.exit57.i:                         ; preds = %if.then.i53.i, %land.lhs.true2.i52.i.rcu_read_unlock.exit57.i_crit_edge, %land.lhs.true.i50.i.rcu_read_unlock.exit57.i_crit_edge, %if.end21.i.rcu_read_unlock.exit57.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !56
  br label %ath9k_htc_check_tx_aggr.exit

ath9k_htc_check_tx_aggr.exit:                     ; preds = %rcu_read_unlock.exit57.i, %rcu_read_unlock.exit.i
  %92 = tail call i32 @llvm.read_register.i32(metadata !43) #8
  %and.i.i.i.i.i54.i = and i32 %92, -16384
  %93 = inttoptr i32 %and.i.i.i.i.i54.i to ptr
  %preempt_count.i.i.i.i55.i = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %preempt_count.i.i.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %preempt_count.i.i.i.i55.i, align 4
  %sub.i.i.i56.i = add i32 %95, -1
  store volatile i32 %sub.i.i.i56.i, ptr %preempt_count.i.i.i.i55.i, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %send_mac80211

send_mac80211:                                    ; preds = %ath9k_htc_check_tx_aggr.exit, %if.end.send_mac80211_crit_edge
  %tx_lock = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 11
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #8
  %queued_cnt = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 1
  %96 = ptrtoint ptr %queued_cnt to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %queued_cnt, align 4
  %dec = add i32 %97, -1
  store i32 %dec, ptr %queued_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp103 = icmp slt i32 %dec, 0
  br i1 %cmp103, label %do.end, label %send_mac80211.if.end130_crit_edge, !prof !54

send_mac80211.if.end130_crit_edge:                ; preds = %send_mac80211
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

do.end:                                           ; preds = %send_mac80211
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 510, i32 noundef 9, ptr noundef null) #8
  %98 = ptrtoint ptr %queued_cnt to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %queued_cnt, align 4
  br label %if.end130

if.end130:                                        ; preds = %do.end, %send_mac80211.if.end130_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #8
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock) #8
  %tx_slot.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 9
  %rem.i.i = and i32 %slot.0.i.ph, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %slot.0.i.ph, 5
  %add.ptr.i.i = getelementptr i32, ptr %tx_slot.i, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %99 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %100, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock) #8
  %call133 = tail call i32 @ieee80211_get_hdrlen_from_skb(ptr noundef %skb) #8
  %and134 = and i32 %call133, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %if.end130.if.end142_crit_edge, label %land.lhs.true

if.end130.if.end142_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end142

land.lhs.true:                                    ; preds = %if.end130
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %101 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %len, align 4
  %add136 = add i32 %and134, %call133
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %add136)
  %cmp137 = icmp ugt i32 %102, %add136
  br i1 %cmp137, label %if.then139, label %land.lhs.true.if.end142_crit_edge

land.lhs.true.if.end142_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end142

if.then139:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %103 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %104, i32 %and134
  %105 = call ptr @memmove(ptr %add.ptr, ptr %104, i32 %call133)
  %call141 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %and134) #8
  br label %if.end142

if.end142:                                        ; preds = %if.then139, %land.lhs.true.if.end142_crit_edge, %if.end130.if.end142_crit_edge
  %106 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_tx_status(ptr noundef %107, ptr noundef %skb) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end142, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_txep(ptr noundef %drv_priv, ptr noundef %skb, i32 noundef %ep_id, i1 noundef zeroext %txok) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %txok to i8
  %txok1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 10
  %0 = ptrtoint ptr %txok1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %txok1, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %timestamp = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %2 = ptrtoint ptr %timestamp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %timestamp, align 4
  br i1 %txok, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %tx_failed = getelementptr inbounds %struct.ath9k_htc_priv, ptr %drv_priv, i32 0, i32 40, i32 8
  tail call void @skb_queue_tail(ptr noundef %tx_failed, ptr noundef %skb) #8
  %state.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %drv_priv, i32 0, i32 44, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %tx_failed_tasklet = getelementptr inbounds %struct.ath9k_htc_priv, ptr %drv_priv, i32 0, i32 44
  tail call void @__tasklet_schedule(ptr noundef %tx_failed_tasklet) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ah.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %drv_priv, i32 0, i32 2
  %3 = ptrtoint ptr %ah.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ah.i, align 4
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %4, i32 0, i32 3
  %conv.i = and i32 %ep_id, 255
  %mgmt_ep.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %drv_priv, i32 0, i32 11
  %5 = ptrtoint ptr %mgmt_ep.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mgmt_ep.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv.i)
  %cmp.i = icmp eq i32 %6, %conv.i
  br i1 %cmp.i, label %if.then.i18, label %if.else.i

if.then.i18:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %mgmt_ep_queue.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %drv_priv, i32 0, i32 40, i32 2
  br label %get_htc_epid_queue.exit

if.else.i:                                        ; preds = %if.end
  %cab_ep.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %drv_priv, i32 0, i32 9
  %7 = ptrtoint ptr %cab_ep.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cab_ep.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv.i)
  %cmp3.i = icmp eq i32 %8, %conv.i
  br i1 %cmp3.i, label %if.then5.i, label %if.else7.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %cab_ep_queue.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %drv_priv, i32 0, i32 40, i32 3
  br label %get_htc_epid_queue.exit

if.else7.i:                                       ; preds = %if.else.i
  %data_be_ep.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %drv_priv, i32 0, i32 12
  %9 = ptrtoint ptr %data_be_ep.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_be_ep.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv.i)
  %cmp9.i = icmp eq i32 %10, %conv.i
  br i1 %cmp9.i, label %if.then11.i, label %if.else13.i

if.then11.i:                                      ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #10
  %data_be_queue.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %drv_priv, i32 0, i32 40, i32 4
  br label %get_htc_epid_queue.exit

if.else13.i:                                      ; preds = %if.else7.i
  %data_bk_ep.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %drv_priv, i32 0, i32 13
  %11 = ptrtoint ptr %data_bk_ep.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_bk_ep.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv.i)
  %cmp15.i = icmp eq i32 %12, %conv.i
  br i1 %cmp15.i, label %if.then17.i, label %if.else19.i

if.then17.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #10
  %data_bk_queue.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %drv_priv, i32 0, i32 40, i32 5
  br label %get_htc_epid_queue.exit

if.else19.i:                                      ; preds = %if.else13.i
  %data_vi_ep.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %drv_priv, i32 0, i32 14
  %13 = ptrtoint ptr %data_vi_ep.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_vi_ep.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv.i)
  %cmp21.i = icmp eq i32 %14, %conv.i
  br i1 %cmp21.i, label %if.then23.i, label %if.else25.i

if.then23.i:                                      ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #10
  %data_vi_queue.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %drv_priv, i32 0, i32 40, i32 6
  br label %get_htc_epid_queue.exit

if.else25.i:                                      ; preds = %if.else19.i
  %data_vo_ep.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %drv_priv, i32 0, i32 15
  %15 = ptrtoint ptr %data_vo_ep.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_vo_ep.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv.i)
  %cmp27.i = icmp eq i32 %16, %conv.i
  br i1 %cmp27.i, label %if.then29.i, label %get_htc_epid_queue.exit.thread

if.then29.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #10
  %data_vo_queue.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %drv_priv, i32 0, i32 40, i32 7
  br label %get_htc_epid_queue.exit

get_htc_epid_queue.exit.thread:                   ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.14, i32 noundef %conv.i) #8
  br label %if.then6

get_htc_epid_queue.exit:                          ; preds = %if.then29.i, %if.then23.i, %if.then17.i, %if.then11.i, %if.then5.i, %if.then.i18
  %epid_queue.0.i = phi ptr [ %mgmt_ep_queue.i, %if.then.i18 ], [ %cab_ep_queue.i, %if.then5.i ], [ %data_be_queue.i, %if.then11.i ], [ %data_bk_queue.i, %if.then17.i ], [ %data_vi_queue.i, %if.then23.i ], [ %data_vo_queue.i, %if.then29.i ]
  %tobool5.not = icmp eq ptr %epid_queue.0.i, null
  br i1 %tobool5.not, label %get_htc_epid_queue.exit.if.then6_crit_edge, label %if.end7

get_htc_epid_queue.exit.if.then6_crit_edge:       ; preds = %get_htc_epid_queue.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

if.then6:                                         ; preds = %get_htc_epid_queue.exit.if.then6_crit_edge, %get_htc_epid_queue.exit.thread
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  br label %cleanup

if.end7:                                          ; preds = %get_htc_epid_queue.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @skb_queue_tail(ptr noundef nonnull %epid_queue.0.i, ptr noundef %skb) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then.i, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_tx_cleanup_timer(ptr noundef %t) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1476
  %ah = getelementptr i8, ptr %t, i32 -1468
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %wmi = getelementptr i8, ptr %t, i32 -1460
  %2 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wmi, align 4
  %event_lock = getelementptr inbounds %struct.wmi, ptr %3, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %event_lock) #8
  %4 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wmi, align 4
  %pending_tx_events = getelementptr inbounds %struct.wmi, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %pending_tx_events to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pending_tx_events, align 4
  %cmp.not86 = icmp eq ptr %7, %pending_tx_events
  br i1 %cmp.not86, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in87 = phi ptr [ %7, %for.body.lr.ph ], [ %.pn91, %for.inc.for.body_crit_edge ]
  %event.090 = getelementptr i8, ptr %.pn.in87, i32 -8
  %8 = ptrtoint ptr %.pn.in87 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn91 = load ptr, ptr %.pn.in87, align 4
  %txs = getelementptr i8, ptr %.pn.in87, i32 -4
  %call13 = tail call fastcc ptr @ath9k_htc_tx_get_packet(ptr noundef %add.ptr, ptr noundef %txs)
  %tobool.not = icmp eq ptr %call13, null
  br i1 %tobool.not, label %if.end22, label %do.body

do.body:                                          ; preds = %for.body
  %9 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug_mask, align 4
  %and = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %do.body.do.end_crit_edge, label %if.then15

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %txs to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %txs, align 4
  %conv = zext i8 %12 to i32
  %ts_rate = getelementptr i8, ptr %.pn.in87, i32 -3
  %13 = ptrtoint ptr %ts_rate to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ts_rate, align 1
  %15 = lshr i8 %14, 4
  %16 = zext i8 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.5, i32 noundef %conv, i32 noundef %16) #8
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body.do.end_crit_edge
  tail call fastcc void @ath9k_htc_tx_process(ptr noundef %add.ptr, ptr noundef nonnull %call13, ptr noundef %txs)
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in87) #8
  br i1 %call.i.i, label %if.end.i.i, label %do.end.for.inc.sink.split_crit_edge

do.end.for.inc.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in87, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %.pn.in87 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.pn.in87, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %for.inc.sink.split

if.end22:                                         ; preds = %for.body
  %23 = ptrtoint ptr %event.090 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %event.090, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %event.090, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %inc)
  %cmp23 = icmp sgt i32 %inc, 39
  br i1 %cmp23, label %if.then25, label %if.end22.for.inc_crit_edge

if.end22.for.inc_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then25:                                        ; preds = %if.end22
  %call.i.i77 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in87) #8
  br i1 %call.i.i77, label %if.end.i.i80, label %if.then25.for.inc.sink.split_crit_edge

if.then25.for.inc.sink.split_crit_edge:           ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.sink.split

if.end.i.i80:                                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i78 = getelementptr inbounds %struct.list_head, ptr %.pn.in87, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i78 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i78, align 4
  %27 = ptrtoint ptr %.pn.in87 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %.pn.in87, align 4
  %prev1.i.i.i79 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i79 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i79, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.end.i.i80, %if.then25.for.inc.sink.split_crit_edge, %if.end.i.i, %do.end.for.inc.sink.split_crit_edge
  %31 = ptrtoint ptr %.pn.in87 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in87, align 4
  %prev.i81 = getelementptr inbounds %struct.list_head, ptr %.pn.in87, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i81 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i81, align 4
  tail call void @kfree(ptr noundef %event.090) #8
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.end22.for.inc_crit_edge
  %33 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wmi, align 4
  %pending_tx_events12 = getelementptr inbounds %struct.wmi, ptr %34, i32 0, i32 12
  %cmp.not = icmp eq ptr %.pn91, %pending_tx_events12
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi ptr [ %5, %entry.for.end_crit_edge ], [ %34, %for.inc.for.end_crit_edge ]
  %event_lock34 = getelementptr inbounds %struct.wmi, ptr %.lcssa, i32 0, i32 13
  tail call void @_raw_spin_unlock(ptr noundef %event_lock34) #8
  %mgmt_ep_queue = getelementptr i8, ptr %t, i32 -424
  tail call fastcc void @ath9k_htc_tx_cleanup_queue(ptr noundef %add.ptr, ptr noundef %mgmt_ep_queue)
  %cab_ep_queue = getelementptr i8, ptr %t, i32 -368
  tail call fastcc void @ath9k_htc_tx_cleanup_queue(ptr noundef %add.ptr, ptr noundef %cab_ep_queue)
  %data_be_queue = getelementptr i8, ptr %t, i32 -312
  tail call fastcc void @ath9k_htc_tx_cleanup_queue(ptr noundef %add.ptr, ptr noundef %data_be_queue)
  %data_bk_queue = getelementptr i8, ptr %t, i32 -256
  tail call fastcc void @ath9k_htc_tx_cleanup_queue(ptr noundef %add.ptr, ptr noundef %data_bk_queue)
  %data_vi_queue = getelementptr i8, ptr %t, i32 -200
  tail call fastcc void @ath9k_htc_tx_cleanup_queue(ptr noundef %add.ptr, ptr noundef %data_vi_queue)
  %data_vo_queue = getelementptr i8, ptr %t, i32 -144
  tail call fastcc void @ath9k_htc_tx_cleanup_queue(ptr noundef %add.ptr, ptr noundef %data_vo_queue)
  %tx.i = getelementptr i8, ptr %t, i32 -432
  %tx_lock.i = getelementptr i8, ptr %t, i32 48
  tail call void @_raw_spin_lock_bh(ptr noundef %tx_lock.i) #8
  %queued_cnt.i = getelementptr i8, ptr %t, i32 -428
  %35 = ptrtoint ptr %queued_cnt.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %queued_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 246, i32 %36)
  %cmp.i = icmp slt i32 %36, 246
  br i1 %cmp.i, label %land.lhs.true.i, label %for.end.ath9k_htc_check_wake_queues.exit_crit_edge

for.end.ath9k_htc_check_wake_queues.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_htc_check_wake_queues.exit

land.lhs.true.i:                                  ; preds = %for.end
  %37 = ptrtoint ptr %tx.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %tx.i, align 4
  %39 = and i8 %38, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.ath9k_htc_check_wake_queues.exit_crit_edge, label %if.then.i

land.lhs.true.i.ath9k_htc_check_wake_queues.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_htc_check_wake_queues.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %and6.i = and i8 %38, -2
  %40 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %and6.i, ptr %tx.i, align 4
  %hw.i = getelementptr i8, ptr %t, i32 -1472
  %41 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw.i, align 4
  tail call void @ieee80211_wake_queues(ptr noundef %42) #8
  br label %ath9k_htc_check_wake_queues.exit

ath9k_htc_check_wake_queues.exit:                 ; preds = %if.then.i, %land.lhs.true.i.ath9k_htc_check_wake_queues.exit_crit_edge, %for.end.ath9k_htc_check_wake_queues.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tx_lock.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %43, 5
  %call42 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath9k_htc_tx_cleanup_queue(ptr noundef %priv, ptr noundef %epid_queue) unnamed_addr #1 align 64 {
entry:
  %queue = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %queue) #8
  %0 = call ptr @memset(ptr %queue, i32 255, i32 56)
  %lock.i = getelementptr inbounds %struct.sk_buff_head, ptr %queue, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %1 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %queue, ptr %queue, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.65, ptr %queue, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %queue, i32 0, i32 1
  %3 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %qlen.i.i, align 4
  %lock = getelementptr inbounds %struct.sk_buff_head, ptr %epid_queue, i32 0, i32 2
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %4 = ptrtoint ptr %epid_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %epid_queue, align 4
  %cmp7.not47 = icmp eq ptr %5, %epid_queue
  br i1 %cmp7.not47, label %if.end22.critedge, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %ah.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %epid_queue, i32 0, i32 1
  br label %for.body.outer

for.body.outer:                                   ; preds = %for.inc.thread.for.body.outer_crit_edge, %for.body.lr.ph
  %process.0.off049.ph = phi i1 [ true, %for.inc.thread.for.body.outer_crit_edge ], [ false, %for.body.lr.ph ]
  %skb.048.ph = phi ptr [ %tmp.050, %for.inc.thread.for.body.outer_crit_edge ], [ %5, %for.body.lr.ph ]
  %6 = ptrtoint ptr %ah.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ah.i, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.outer
  %skb.048 = phi ptr [ %tmp.050, %for.inc.for.body_crit_edge ], [ %skb.048.ph, %for.body.outer ]
  %8 = ptrtoint ptr %skb.048 to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp.050 = load ptr, ptr %skb.048, align 8
  %timestamp.i = getelementptr inbounds %struct.sk_buff, ptr %skb.048, i32 0, i32 3, i32 12
  %9 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %timestamp.i, align 4
  %add.i = add i32 %10, 300
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.body.i, label %for.inc

do.body.i:                                        ; preds = %for.body
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug_mask.i, align 4
  %and.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.for.inc.thread_crit_edge, label %if.then3.i

do.body.i.for.inc.thread_crit_edge:               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.thread

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %common.i.i.le = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i.i.le, ptr noundef nonnull @.str.15) #8
  br label %for.inc.thread

for.inc:                                          ; preds = %for.body
  %cmp7.not = icmp eq ptr %tmp.050, %epid_queue
  br i1 %cmp7.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.thread:                                   ; preds = %if.then3.i, %do.body.i.for.inc.thread_crit_edge
  %14 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qlen.i, align 4
  %sub.i40 = add i32 %15, -1
  store volatile i32 %sub.i40, ptr %qlen.i, align 4
  %16 = ptrtoint ptr %skb.048 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skb.048, align 8
  %prev9.i = getelementptr inbounds %struct.anon.44, ptr %skb.048, i32 0, i32 1
  %18 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %skb.048, align 8
  %prev17.i = getelementptr inbounds %struct.anon.44, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %19, ptr %prev17.i, align 4
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %17, ptr %19, align 8
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  store volatile ptr %queue, ptr %skb.048, align 8
  store volatile ptr %23, ptr %prev9.i, align 4
  store volatile ptr %skb.048, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %skb.048, ptr %23, align 4
  %25 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i = add i32 %26, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i, align 4
  %cmp7.not54 = icmp eq ptr %tmp.050, %epid_queue
  br i1 %cmp7.not54, label %for.end.thread, label %for.inc.thread.for.body.outer_crit_edge

for.inc.thread.for.body.outer_crit_edge:          ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.outer

for.end.thread:                                   ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  br label %if.then12

for.end:                                          ; preds = %for.inc
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  br i1 %process.0.off049.ph, label %for.end.if.then12_crit_edge, label %for.end.if.end22_crit_edge

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

for.end.if.then12_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.then12:                                        ; preds = %for.end.if.then12_crit_edge, %for.end.thread
  %27 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %queue, align 4
  %cmp16.not51 = icmp eq ptr %28, %queue
  br i1 %cmp16.not51, label %if.then12.if.end22_crit_edge, label %if.then12.for.body18_crit_edge

if.then12.for.body18_crit_edge:                   ; preds = %if.then12
  br label %for.body18

if.then12.if.end22_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %if.then12.for.body18_crit_edge
  %skb.152 = phi ptr [ %tmp.1, %for.body18.for.body18_crit_edge ], [ %28, %if.then12.for.body18_crit_edge ]
  %29 = ptrtoint ptr %skb.152 to i32
  call void @__asan_load4_noabort(i32 %29)
  %tmp.1 = load ptr, ptr %skb.152, align 8
  %30 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %qlen.i.i, align 4
  %sub.i43 = add i32 %31, -1
  store volatile i32 %sub.i43, ptr %qlen.i.i, align 4
  %32 = load ptr, ptr %skb.152, align 8
  %prev9.i44 = getelementptr inbounds %struct.anon.44, ptr %skb.152, i32 0, i32 1
  %33 = ptrtoint ptr %prev9.i44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev9.i44, align 4
  store ptr null, ptr %prev9.i44, align 4
  store ptr null, ptr %skb.152, align 8
  %prev17.i45 = getelementptr inbounds %struct.anon.44, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %prev17.i45 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %34, ptr %prev17.i45, align 4
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %32, ptr %34, align 8
  call fastcc void @ath9k_htc_tx_process(ptr noundef %priv, ptr noundef %skb.152, ptr noundef null)
  %cmp16.not = icmp eq ptr %tmp.1, %queue
  br i1 %cmp16.not, label %for.body18.if.end22_crit_edge, label %for.body18.for.body18_crit_edge

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body18

for.body18.if.end22_crit_edge:                    ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end22.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  br label %if.end22

if.end22:                                         ; preds = %if.end22.critedge, %for.body18.if.end22_crit_edge, %if.then12.if.end22_crit_edge, %for.end.if.end22_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %queue) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath9k_tx_init(ptr noundef %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mgmt_ep_queue = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 2
  %lock.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 2, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %0 = ptrtoint ptr %mgmt_ep_queue to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mgmt_ep_queue, ptr %mgmt_ep_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 2, i32 0, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mgmt_ep_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 2, i32 1
  %2 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %qlen.i.i, align 4
  %cab_ep_queue = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 3
  %lock.i17 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i17, ptr noundef nonnull @.str.16, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %3 = ptrtoint ptr %cab_ep_queue to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cab_ep_queue, ptr %cab_ep_queue, align 4
  %prev.i.i18 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 3, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i18 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cab_ep_queue, ptr %prev.i.i18, align 4
  %qlen.i.i19 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 3, i32 1
  %5 = ptrtoint ptr %qlen.i.i19 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %qlen.i.i19, align 4
  %data_be_queue = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 4
  %lock.i20 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i20, ptr noundef nonnull @.str.16, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %6 = ptrtoint ptr %data_be_queue to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %data_be_queue, ptr %data_be_queue, align 4
  %prev.i.i21 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 4, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i21 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data_be_queue, ptr %prev.i.i21, align 4
  %qlen.i.i22 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 4, i32 1
  %8 = ptrtoint ptr %qlen.i.i22 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %qlen.i.i22, align 4
  %data_bk_queue = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 5
  %lock.i23 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 5, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i23, ptr noundef nonnull @.str.16, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %9 = ptrtoint ptr %data_bk_queue to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %data_bk_queue, ptr %data_bk_queue, align 4
  %prev.i.i24 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 5, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i24 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %data_bk_queue, ptr %prev.i.i24, align 4
  %qlen.i.i25 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 5, i32 1
  %11 = ptrtoint ptr %qlen.i.i25 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %qlen.i.i25, align 4
  %data_vi_queue = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 6
  %lock.i26 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 6, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i26, ptr noundef nonnull @.str.16, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %12 = ptrtoint ptr %data_vi_queue to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %data_vi_queue, ptr %data_vi_queue, align 4
  %prev.i.i27 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 6, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i27 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %data_vi_queue, ptr %prev.i.i27, align 4
  %qlen.i.i28 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 6, i32 1
  %14 = ptrtoint ptr %qlen.i.i28 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %qlen.i.i28, align 4
  %data_vo_queue = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 7
  %lock.i29 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 7, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i29, ptr noundef nonnull @.str.16, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %15 = ptrtoint ptr %data_vo_queue to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %data_vo_queue, ptr %data_vo_queue, align 4
  %prev.i.i30 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 7, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i30 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %data_vo_queue, ptr %prev.i.i30, align 4
  %qlen.i.i31 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 7, i32 1
  %17 = ptrtoint ptr %qlen.i.i31 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %qlen.i.i31, align 4
  %tx_failed = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 8
  %lock.i32 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 8, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i32, ptr noundef nonnull @.str.16, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %18 = ptrtoint ptr %tx_failed to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %tx_failed, ptr %tx_failed, align 4
  %prev.i.i33 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 8, i32 0, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i33 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %tx_failed, ptr %prev.i.i33, align 4
  %qlen.i.i34 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 8, i32 1
  %20 = ptrtoint ptr %qlen.i.i34 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %qlen.i.i34, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !57
  %initialized = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 40, i32 12
  %21 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %initialized, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath9k_tx_cleanup(ptr nocapture noundef %priv) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ath9k_htc_txq_setup(ptr nocapture noundef %priv, i32 noundef %subtype) local_unnamed_addr #1 align 64 {
entry:
  %qi = alloca %struct.ath9k_tx_queue_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ah1 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ah1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah1, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %qi) #8
  %2 = call ptr @memset(ptr %qi, i32 0, i32 60)
  %arrayidx = getelementptr [4 x i32], ptr @subtype_txq_to_hwq, i32 0, i32 %subtype
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
  %tqi_qflags = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 3
  %9 = ptrtoint ptr %tqi_qflags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 6, ptr %tqi_qflags, align 4
  %call3 = call i32 @ath9k_hw_setuptxqueue(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %qi) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp = icmp eq i32 %call3, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call3)
  %cmp4 = icmp ugt i32 %call3, 3
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i, ptr noundef nonnull @.str.6, i32 noundef %call3, i32 noundef 4) #8
  %call6 = call zeroext i1 @ath9k_hw_releasetxqueue(ptr noundef %1, i32 noundef %call3) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx8 = getelementptr %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 57, i32 %subtype
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call3, ptr %arrayidx8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then5 ], [ true, %if.end7 ], [ false, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %qi) #8
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_hw_setuptxqueue(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_releasetxqueue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath9k_htc_cabq_setup(ptr nocapture noundef readonly %priv) local_unnamed_addr #1 align 64 {
entry:
  %qi = alloca %struct.ath9k_tx_queue_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %qi) #8
  %0 = call ptr @memset(ptr %qi, i32 0, i32 60)
  %tqi_subtype = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 2
  %1 = ptrtoint ptr %tqi_subtype to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %tqi_subtype, align 4
  %tqi_aifs = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 5
  %2 = ptrtoint ptr %tqi_aifs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tqi_aifs, align 4
  %tqi_cwmin = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 6
  %3 = ptrtoint ptr %tqi_cwmin to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %tqi_cwmin, align 4
  %tqi_cwmax = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 7
  %4 = ptrtoint ptr %tqi_cwmax to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tqi_cwmax, align 4
  %tqi_qflags = getelementptr inbounds %struct.ath9k_tx_queue_info, ptr %qi, i32 0, i32 3
  %5 = ptrtoint ptr %tqi_qflags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 6, ptr %tqi_qflags, align 4
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %6 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ah, align 4
  %call = call i32 @ath9k_hw_setuptxqueue(ptr noundef %7, i32 noundef 3, ptr noundef nonnull %qi) #8
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %qi) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath9k_htc_calcrxfilter(ptr nocapture noundef readonly %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ah1 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ah1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah1, align 4
  %call = tail call i32 @ath9k_hw_getrxfilter(ptr noundef %1) #8
  %and = and i32 %call, 8448
  %rxfilter = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 31
  %2 = ptrtoint ptr %rxfilter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rxfilter, align 4
  %and4 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  %spec.select.v = select i1 %tobool.not, i32 7, i32 135
  %spec.select = or i32 %spec.select.v, %and
  %is_monitoring = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %is_monitoring to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_monitoring, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  %or8 = or i32 %spec.select, 32
  %rfilt.1 = select i1 %tobool6.not, i32 %spec.select, i32 %or8
  %and11 = lshr i32 %3, 2
  %6 = and i32 %and11, 8
  %7 = or i32 %rfilt.1, %6
  %opmode = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 28
  %8 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %opmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp eq i32 %9, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %nvifs = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 27
  %10 = ptrtoint ptr %nvifs to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %nvifs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %11)
  %cmp16 = icmp ult i16 %11, 2
  %and20 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %or.cond = select i1 %cmp16, i1 %tobool21.not, i1 false
  br i1 %or.cond, label %land.lhs.true.if.end25_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %if.end25

if.end25:                                         ; preds = %if.else, %land.lhs.true.if.end25_crit_edge
  %.sink = phi i32 [ 16, %if.else ], [ 512, %land.lhs.true.if.end25_crit_edge ]
  %or24 = or i32 %7, %.sink
  %hw = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 1
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %width.i = getelementptr inbounds %struct.ieee80211_conf, ptr %13, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %15, label %17 [
    i32 6, label %if.end25.if.end46_crit_edge
    i32 7, label %if.end25.if.end46_crit_edge70
    i32 0, label %if.end25.if.end46_crit_edge71
  ]

if.end25.if.end46_crit_edge71:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.end25.if.end46_crit_edge70:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.end25.if.end46_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

17:                                               ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %or2967 = or i32 %or24, 5120
  br label %if.end46

if.end46:                                         ; preds = %17, %if.end25.if.end46_crit_edge, %if.end25.if.end46_crit_edge70, %if.end25.if.end46_crit_edge71
  %18 = phi i32 [ %or2967, %17 ], [ %or24, %if.end25.if.end46_crit_edge ], [ %or24, %if.end25.if.end46_crit_edge70 ], [ %or24, %if.end25.if.end46_crit_edge71 ]
  %and32 = shl i32 %3, 7
  %19 = and i32 %and32, 16384
  %20 = or i32 %18, %19
  %nvifs37 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 27
  %21 = ptrtoint ptr %nvifs37 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %nvifs37, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %22)
  %cmp39 = icmp ult i16 %22, 2
  %and42 = and i32 %3, 576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %or.cond69 = select i1 %cmp39, i1 %tobool43.not, i1 false
  %or45 = or i32 %20, 32768
  %rfilt.6 = select i1 %or.cond69, i32 %20, i32 %or45
  ret i32 %rfilt.6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_hw_getrxfilter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_host_rx_init(ptr nocapture noundef readonly %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ah = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah, align 4
  %rx_enable.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 63, i32 1
  %2 = ptrtoint ptr %rx_enable.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_enable.i, align 4
  tail call void %3(ptr noundef %1) #8
  %4 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ah, align 4
  %call.i.i = tail call i32 @ath9k_hw_getrxfilter(ptr noundef %5) #8
  %and.i.i = and i32 %call.i.i, 8448
  %rxfilter.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 31
  %6 = ptrtoint ptr %rxfilter.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rxfilter.i.i, align 4
  %and4.i.i = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool.not.i.i = icmp eq i32 %and4.i.i, 0
  %spec.select.v.i.i = select i1 %tobool.not.i.i, i32 7, i32 135
  %spec.select.i.i = or i32 %spec.select.v.i.i, %and.i.i
  %is_monitoring.i.i = getelementptr inbounds %struct.ath_hw, ptr %5, i32 0, i32 15
  %8 = ptrtoint ptr %is_monitoring.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_monitoring.i.i, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not.i.i = icmp eq i8 %9, 0
  %or8.i.i = or i32 %spec.select.i.i, 32
  %rfilt.1.i.i = select i1 %tobool6.not.i.i, i32 %spec.select.i.i, i32 %or8.i.i
  %and11.i.i = lshr i32 %7, 2
  %10 = and i32 %and11.i.i, 8
  %11 = or i32 %rfilt.1.i.i, %10
  %opmode.i.i = getelementptr inbounds %struct.ath_hw, ptr %5, i32 0, i32 28
  %12 = ptrtoint ptr %opmode.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %opmode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i.i = icmp eq i32 %13, 2
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %entry.if.else.i.i_crit_edge

entry.if.else.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %nvifs.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 27
  %14 = ptrtoint ptr %nvifs.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %nvifs.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %15)
  %cmp16.i.i = icmp ult i16 %15, 2
  %and20.i.i = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i.i)
  %tobool21.not.i.i = icmp eq i32 %and20.i.i, 0
  %or.cond.i.i = select i1 %cmp16.i.i, i1 %tobool21.not.i.i, i1 false
  br i1 %or.cond.i.i, label %land.lhs.true.i.i.if.end25.i.i_crit_edge, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

land.lhs.true.i.i.if.end25.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %entry.if.else.i.i_crit_edge
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.else.i.i, %land.lhs.true.i.i.if.end25.i.i_crit_edge
  %.sink.i.i = phi i32 [ 16, %if.else.i.i ], [ 512, %land.lhs.true.i.i.if.end25.i.i_crit_edge ]
  %or24.i.i = or i32 %11, %.sink.i.i
  %hw.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 1
  %16 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw.i.i, align 4
  %width.i.i.i = getelementptr inbounds %struct.ieee80211_conf, ptr %17, i32 0, i32 7, i32 1
  %18 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width.i.i.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %19, label %21 [
    i32 6, label %if.end25.i.i.ath9k_htc_opmode_init.exit_crit_edge
    i32 7, label %if.end25.i.i.ath9k_htc_opmode_init.exit_crit_edge7
    i32 0, label %if.end25.i.i.ath9k_htc_opmode_init.exit_crit_edge8
  ]

if.end25.i.i.ath9k_htc_opmode_init.exit_crit_edge8: ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_htc_opmode_init.exit

if.end25.i.i.ath9k_htc_opmode_init.exit_crit_edge7: ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_htc_opmode_init.exit

if.end25.i.i.ath9k_htc_opmode_init.exit_crit_edge: ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_htc_opmode_init.exit

21:                                               ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or2967.i.i = or i32 %or24.i.i, 5120
  br label %ath9k_htc_opmode_init.exit

ath9k_htc_opmode_init.exit:                       ; preds = %21, %if.end25.i.i.ath9k_htc_opmode_init.exit_crit_edge, %if.end25.i.i.ath9k_htc_opmode_init.exit_crit_edge7, %if.end25.i.i.ath9k_htc_opmode_init.exit_crit_edge8
  %22 = phi i32 [ %or2967.i.i, %21 ], [ %or24.i.i, %if.end25.i.i.ath9k_htc_opmode_init.exit_crit_edge ], [ %or24.i.i, %if.end25.i.i.ath9k_htc_opmode_init.exit_crit_edge7 ], [ %or24.i.i, %if.end25.i.i.ath9k_htc_opmode_init.exit_crit_edge8 ]
  %and32.i.i = shl i32 %7, 7
  %23 = and i32 %and32.i.i, 16384
  %24 = or i32 %22, %23
  %nvifs37.i.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 27
  %25 = ptrtoint ptr %nvifs37.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %nvifs37.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %26)
  %cmp39.i.i = icmp ult i16 %26, 2
  %and42.i.i = and i32 %7, 576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i.i)
  %tobool43.not.i.i = icmp eq i32 %and42.i.i, 0
  %or.cond69.i.i = select i1 %cmp39.i.i, i1 %tobool43.not.i.i, i1 false
  %or45.i.i = or i32 %24, 32768
  %rfilt.6.i.i = select i1 %or.cond69.i.i, i32 %24, i32 %or45.i.i
  tail call void @ath9k_hw_setrxfilter(ptr noundef %5, i32 noundef %rfilt.6.i.i) #8
  tail call void @ath9k_hw_setmcastfilter(ptr noundef %5, i32 noundef -1, i32 noundef -1) #8
  %27 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ah, align 4
  %op_flags = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 5
  %29 = ptrtoint ptr %op_flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %op_flags, align 4
  %31 = and i32 %30, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool = icmp ne i32 %31, 0
  tail call void @ath9k_hw_startpcureceive(ptr noundef %28, i1 noundef zeroext %tobool) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_startpcureceive(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_rx_tasklet(ptr noundef %t) local_unnamed_addr #1 align 64 {
entry:
  %rx_stats.i = alloca %struct.ath_rx_status, align 4
  %decrypt_error.i = alloca i8, align 1
  %rx_status = alloca %struct.ieee80211_rx_status, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1596
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %rx_status) #8
  %0 = call ptr @memset(ptr %rx_status, i32 255, i32 48)
  %rx = getelementptr i8, ptr %t, i32 -608
  %rxbuflock = getelementptr i8, ptr %t, i32 -600
  %hw1.i = getelementptr i8, ptr %t, i32 -1592
  %ah.i = getelementptr i8, ptr %t, i32 -1588
  %rs_datalen1.i.i = getelementptr inbounds %struct.ath_rx_status, ptr %rx_stats.i, i32 0, i32 1
  %rs_status2.i.i = getelementptr inbounds %struct.ath_rx_status, ptr %rx_stats.i, i32 0, i32 2
  %rs_phyerr3.i.i = getelementptr inbounds %struct.ath_rx_status, ptr %rx_stats.i, i32 0, i32 3
  %rs_rssi4.i.i = getelementptr inbounds %struct.ath_rx_status, ptr %rx_stats.i, i32 0, i32 4
  %rs_keyix5.i.i = getelementptr inbounds %struct.ath_rx_status, ptr %rx_stats.i, i32 0, i32 5
  %rs_rate6.i.i = getelementptr inbounds %struct.ath_rx_status, ptr %rx_stats.i, i32 0, i32 6
  %rs_antenna7.i.i = getelementptr inbounds %struct.ath_rx_status, ptr %rx_stats.i, i32 0, i32 7
  %rs_more8.i.i = getelementptr inbounds %struct.ath_rx_status, ptr %rx_stats.i, i32 0, i32 8
  %rs_rssi_ctl.i.i = getelementptr inbounds %struct.ath_rx_status, ptr %rx_stats.i, i32 0, i32 9
  %rs_rssi_ext.i.i = getelementptr inbounds %struct.ath_rx_status, ptr %rx_stats.i, i32 0, i32 10
  %rs_isaggr14.i.i = getelementptr inbounds %struct.ath_rx_status, ptr %rx_stats.i, i32 0, i32 11
  %rs_moreaggr15.i.i = getelementptr inbounds %struct.ath_rx_status, ptr %rx_stats.i, i32 0, i32 13
  %rs_num_delims16.i.i = getelementptr inbounds %struct.ath_rx_status, ptr %rx_stats.i, i32 0, i32 14
  %enc_flags.i.i.i = getelementptr inbounds %struct.ath_rx_status, ptr %rx_stats.i, i32 0, i32 22
  %bw.i.i.i = getelementptr inbounds %struct.ath_rx_status, ptr %rx_stats.i, i32 0, i32 23
  %spec_priv.i = getelementptr i8, ptr %t, i32 -724
  %rxfilter.i = getelementptr i8, ptr %t, i32 -1516
  %is_mybeacon.i = getelementptr inbounds %struct.ath_rx_status, ptr %rx_stats.i, i32 0, i32 16
  %band65.i = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 11
  %freq.i = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 5
  %antenna.i = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 12
  %flag.i = getelementptr inbounds %struct.ieee80211_rx_status, ptr %rx_status, i32 0, i32 4
  %ps_enabled = getelementptr i8, ptr %t, i32 332
  %ps_work = getelementptr i8, ptr %t, i32 148
  %prev.i2.i = getelementptr i8, ptr %t, i32 -604
  br label %do.body

do.body:                                          ; preds = %list_move_tail.exit, %entry
  %call4 = call i32 @_raw_spin_lock_irqsave(ptr noundef %rxbuflock) #8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.body
  %.pn.in = phi ptr [ %rx, %do.body ], [ %.pn, %for.body.for.cond_crit_edge ]
  %1 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp14.not = icmp eq ptr %.pn, %rx
  br i1 %cmp14.not, label %for.cond.if.then23_crit_edge, label %for.body

for.cond.if.then23_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

for.body:                                         ; preds = %for.cond
  %tmp_buf.0 = getelementptr i8, ptr %.pn, i32 -48
  %2 = ptrtoint ptr %tmp_buf.0 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tmp_buf.0, align 8, !range !53
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %for.body
  %tmp_buf.0.le = getelementptr i8, ptr %.pn, i32 -48
  %cmp21 = icmp eq ptr %tmp_buf.0.le, null
  br i1 %cmp21, label %for.end.if.then23_crit_edge, label %if.end26

for.end.if.then23_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then23

if.then23:                                        ; preds = %for.end.if.then23_crit_edge, %for.cond.if.then23_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rxbuflock, i32 noundef %call4) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rx_status) #8
  ret void

if.end26:                                         ; preds = %for.end
  %skb27 = getelementptr i8, ptr %.pn, i32 -44
  %4 = ptrtoint ptr %skb27 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb27, align 4
  %tobool28.not = icmp eq ptr %5, null
  br i1 %tobool28.not, label %if.end26.requeue_crit_edge, label %if.end30

if.end26.requeue_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %requeue

if.end30:                                         ; preds = %if.end26
  %6 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw1.i, align 4
  %8 = ptrtoint ptr %ah.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ah.i, align 4
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %common.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %rx_stats.i) #8
  %12 = call ptr @memset(ptr %rx_stats.i, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %decrypt_error.i) #8
  %13 = ptrtoint ptr %decrypt_error.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %decrypt_error.i, align 1
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %15)
  %cmp.i = icmp ult i32 %15, 40
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.17, i32 noundef %15) #8
  br label %if.then32

if.end.i:                                         ; preds = %if.end30
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %rs_datalen6.i = getelementptr inbounds %struct.ath_htc_rx_status, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %rs_datalen6.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rs_datalen6.i, align 8
  %conv.i = zext i16 %19 to i32
  %sub.i = add i32 %15, -40
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv.i)
  %cmp9.not.i = icmp eq i32 %sub.i, %conv.i
  br i1 %cmp9.not.i, label %if.end15.i, label %if.then12.i, !prof !58

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str, ptr noundef %common.i.i, ptr noundef nonnull @.str.18, i32 noundef %conv.i, i32 noundef %15) #8
  br label %if.then32

if.end15.i:                                       ; preds = %if.end.i
  %rs_status.i = getelementptr inbounds %struct.ath_htc_rx_status, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %rs_status.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rs_status.i, align 2
  %22 = and i8 %21, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool17.not.i = icmp eq i8 %22, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool18.not.i = icmp eq i16 %19, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %19)
  %cmp20.i = icmp ult i16 %19, 10
  %spec.select.i = select i1 %cmp20.i, i1 %tobool17.not.i, i1 false
  %or.cond.i = select i1 %tobool18.not.i, i1 true, i1 %spec.select.i
  br i1 %or.cond.i, label %do.body.i, label %if.end37.i, !prof !59

do.body.i:                                        ; preds = %if.end15.i
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %9, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %debug_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool33.not.i = icmp eq i32 %24, 0
  br i1 %tobool33.not.i, label %do.body.i.if.then32_crit_edge, label %if.then34.i

do.body.i.if.then32_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

if.then34.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i.i, ptr noundef nonnull @.str.19, i32 noundef %conv.i) #8
  br label %if.then32

if.end37.i:                                       ; preds = %if.end15.i
  %25 = call ptr @memset(ptr %rx_status, i32 0, i32 48)
  %26 = ptrtoint ptr %rs_datalen6.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %rs_datalen6.i, align 8
  %28 = ptrtoint ptr %rs_datalen1.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %rs_datalen1.i.i, align 4
  %29 = ptrtoint ptr %rs_status.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rs_status.i, align 2
  %31 = ptrtoint ptr %rs_status2.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %rs_status2.i.i, align 2
  %rs_phyerr.i.i = getelementptr inbounds %struct.ath_htc_rx_status, ptr %17, i32 0, i32 3
  %32 = ptrtoint ptr %rs_phyerr.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %rs_phyerr.i.i, align 1
  %34 = ptrtoint ptr %rs_phyerr3.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %rs_phyerr3.i.i, align 1
  %rs_rssi.i.i = getelementptr inbounds %struct.ath_htc_rx_status, ptr %17, i32 0, i32 4
  %35 = ptrtoint ptr %rs_rssi.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %rs_rssi.i.i, align 4
  %37 = ptrtoint ptr %rs_rssi4.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %rs_rssi4.i.i, align 4
  %rs_keyix.i.i = getelementptr inbounds %struct.ath_htc_rx_status, ptr %17, i32 0, i32 7
  %38 = ptrtoint ptr %rs_keyix.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %rs_keyix.i.i, align 1
  %40 = ptrtoint ptr %rs_keyix5.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %rs_keyix5.i.i, align 1
  %rs_rate.i.i = getelementptr inbounds %struct.ath_htc_rx_status, ptr %17, i32 0, i32 8
  %41 = ptrtoint ptr %rs_rate.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %rs_rate.i.i, align 4
  %43 = ptrtoint ptr %rs_rate6.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %rs_rate6.i.i, align 2
  %rs_antenna.i.i = getelementptr inbounds %struct.ath_htc_rx_status, ptr %17, i32 0, i32 9
  %44 = ptrtoint ptr %rs_antenna.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %rs_antenna.i.i, align 1
  %46 = ptrtoint ptr %rs_antenna7.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %rs_antenna7.i.i, align 1
  %rs_more.i.i = getelementptr inbounds %struct.ath_htc_rx_status, ptr %17, i32 0, i32 10
  %47 = ptrtoint ptr %rs_more.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %rs_more.i.i, align 2
  %49 = ptrtoint ptr %rs_more8.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %rs_more8.i.i, align 4
  %rs_rssi_ctl9.i.i = getelementptr inbounds %struct.ath_htc_rx_status, ptr %17, i32 0, i32 5
  %50 = call ptr @memcpy(ptr %rs_rssi_ctl.i.i, ptr %rs_rssi_ctl9.i.i, i32 3)
  %rs_rssi_ext12.i.i = getelementptr inbounds %struct.ath_htc_rx_status, ptr %17, i32 0, i32 6
  %51 = call ptr @memcpy(ptr %rs_rssi_ext.i.i, ptr %rs_rssi_ext12.i.i, i32 3)
  %rs_isaggr.i.i = getelementptr inbounds %struct.ath_htc_rx_status, ptr %17, i32 0, i32 11
  %52 = ptrtoint ptr %rs_isaggr.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %rs_isaggr.i.i, align 1
  %54 = ptrtoint ptr %rs_isaggr14.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %rs_isaggr14.i.i, align 1
  %rs_moreaggr.i.i = getelementptr inbounds %struct.ath_htc_rx_status, ptr %17, i32 0, i32 12
  %55 = ptrtoint ptr %rs_moreaggr.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %rs_moreaggr.i.i, align 8
  %57 = ptrtoint ptr %rs_moreaggr15.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %rs_moreaggr15.i.i, align 1
  %rs_num_delims.i.i = getelementptr inbounds %struct.ath_htc_rx_status, ptr %17, i32 0, i32 13
  %58 = ptrtoint ptr %rs_num_delims.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %rs_num_delims.i.i, align 1
  %60 = ptrtoint ptr %rs_num_delims16.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %rs_num_delims16.i.i, align 2
  %61 = ptrtoint ptr %enc_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %enc_flags.i.i.i, align 4
  %62 = ptrtoint ptr %bw.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %bw.i.i.i, align 4
  %rs_flags.i.i.i = getelementptr inbounds %struct.ath_htc_rx_status, ptr %17, i32 0, i32 14
  %63 = ptrtoint ptr %rs_flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %rs_flags.i.i.i, align 2
  %65 = and i8 %64, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i.i.i = icmp eq i8 %65, 0
  %spec.store.select.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 3
  %66 = ptrtoint ptr %bw.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %spec.store.select.i.i.i, ptr %bw.i.i.i, align 4
  %67 = ptrtoint ptr %rs_flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %rs_flags.i.i.i, align 2
  %69 = and i8 %68, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool5.not.i.i.i = icmp eq i8 %69, 0
  br i1 %tobool5.not.i.i.i, label %if.end37.i.rx_status_htc_to_ath.exit.i_crit_edge, label %if.then6.i.i.i

if.end37.i.rx_status_htc_to_ath.exit.i_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx_status_htc_to_ath.exit.i

if.then6.i.i.i:                                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %enc_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 4, ptr %enc_flags.i.i.i, align 4
  br label %rx_status_htc_to_ath.exit.i

rx_status_htc_to_ath.exit.i:                      ; preds = %if.then6.i.i.i, %if.end37.i.rx_status_htc_to_ath.exit.i_crit_edge
  call void @ath9k_htc_err_stat_rx(ptr noundef %add.ptr, ptr noundef nonnull %rx_stats.i) #8
  %71 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %17, align 8
  %73 = ptrtoint ptr %rx_status to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %72, ptr %rx_status, align 8
  %call38.i = call ptr @skb_pull(ptr noundef nonnull %5, i32 noundef 40) #8
  %74 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data.i, align 4
  br i1 %tobool17.not.i, label %if.end53.i, label %if.then47.i, !prof !58

if.then47.i:                                      ; preds = %rx_status_htc_to_ath.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %rx_status to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %rx_status, align 8
  %call49.i = call i32 @ath_cmn_process_fft(ptr noundef %spec_priv.i, ptr noundef %75, ptr noundef nonnull %rx_stats.i, i64 noundef %77) #8
  br label %if.then32

if.end53.i:                                       ; preds = %rx_status_htc_to_ath.exit.i
  %78 = ptrtoint ptr %rxfilter.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rxfilter.i, align 4
  %call54.i = call zeroext i1 @ath9k_cmn_rx_accept(ptr noundef %common.i.i, ptr noundef %75, ptr noundef nonnull %rx_status, ptr noundef nonnull %rx_stats.i, ptr noundef nonnull %decrypt_error.i, i32 noundef %79) #8
  br i1 %call54.i, label %if.end56.i, label %if.end53.i.if.then32_crit_edge

if.end53.i.if.then32_crit_edge:                   ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

if.end56.i:                                       ; preds = %if.end53.i
  %80 = ptrtoint ptr %decrypt_error.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %decrypt_error.i, align 1, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool57.i = icmp ne i8 %81, 0
  call void @ath9k_cmn_rx_skb_postprocess(ptr noundef %common.i.i, ptr noundef nonnull %5, ptr noundef nonnull %rx_stats.i, ptr noundef nonnull %rx_status, i1 noundef zeroext %tobool57.i) #8
  %call58.i = call i32 @ath9k_cmn_process_rate(ptr noundef %common.i.i, ptr noundef %7, ptr noundef nonnull %rx_stats.i, ptr noundef nonnull %rx_status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %if.end34, label %if.end56.i.if.then32_crit_edge

if.end56.i.if.then32_crit_edge:                   ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

if.then32:                                        ; preds = %if.end56.i.if.then32_crit_edge, %if.end53.i.if.then32_crit_edge, %if.then47.i, %if.then34.i, %do.body.i.if.then32_crit_edge, %if.then12.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %decrypt_error.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %rx_stats.i) #8
  %82 = ptrtoint ptr %skb27 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %skb27, align 4
  call void @__dev_kfree_skb_any(ptr noundef %83, i32 noundef 1) #8
  br label %requeue

if.end34:                                         ; preds = %if.end56.i
  %call62.i = call zeroext i1 @ath_is_mybeacon(ptr noundef %common.i.i, ptr noundef %75) #8
  %frombool63.i = zext i1 %call62.i to i8
  %84 = ptrtoint ptr %is_mybeacon.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %frombool63.i, ptr %is_mybeacon.i, align 4
  call void @ath9k_cmn_process_rssi(ptr noundef %common.i.i, ptr noundef %7, ptr noundef nonnull %rx_stats.i, ptr noundef nonnull %rx_status) #8
  %curchan.i = getelementptr inbounds %struct.ath_hw, ptr %11, i32 0, i32 8
  %85 = ptrtoint ptr %curchan.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %curchan.i, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 4
  %conv64.i = trunc i32 %90 to i8
  %91 = ptrtoint ptr %band65.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv64.i, ptr %band65.i, align 4
  %92 = load ptr, ptr %86, align 4
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %center_freq.i, align 4
  %conv68.i = trunc i32 %94 to i16
  %95 = ptrtoint ptr %freq.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %bf.load.i = load i16, ptr %freq.i, align 4
  %bf.shl.i = shl i16 %conv68.i, 3
  %bf.clear.i = and i16 %bf.load.i, 7
  %bf.set.i = or i16 %bf.clear.i, %bf.shl.i
  store i16 %bf.set.i, ptr %freq.i, align 4
  %96 = ptrtoint ptr %rs_antenna7.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %rs_antenna7.i.i, align 1
  %98 = ptrtoint ptr %antenna.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %antenna.i, align 1
  %99 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %flag.i, align 8
  %or.i = or i32 %100, 65536
  store i32 %or.i, ptr %flag.i, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %decrypt_error.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %rx_stats.i) #8
  %101 = ptrtoint ptr %skb27 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %skb27, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %102, i32 0, i32 3
  %103 = call ptr @memcpy(ptr %cb.i, ptr %rx_status, i32 48)
  %104 = load ptr, ptr %skb27, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %104, i32 0, i32 19
  %105 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %data, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %106, align 2
  %109 = and i16 %108, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %109)
  %cmp.i97 = icmp eq i16 %109, -32768
  br i1 %cmp.i97, label %land.lhs.true, label %if.end34.if.end43_crit_edge

if.end34.if.end43_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

land.lhs.true:                                    ; preds = %if.end34
  %110 = ptrtoint ptr %ps_enabled to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %ps_enabled, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool40.not = icmp eq i8 %111, 0
  br i1 %tobool40.not, label %land.lhs.true.if.end43_crit_edge, label %if.then42

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %112 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hw1.i, align 4
  call void @ieee80211_queue_work(ptr noundef %113, ptr noundef %ps_work) #8
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %land.lhs.true.if.end43_crit_edge, %if.end34.if.end43_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rxbuflock, i32 noundef %call4) #8
  %114 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hw1.i, align 4
  call void @ieee80211_rx_napi(ptr noundef %115, ptr noundef null, ptr noundef %104, ptr noundef null) #8
  %call57 = call i32 @_raw_spin_lock_irqsave(ptr noundef %rxbuflock) #8
  br label %requeue

requeue:                                          ; preds = %if.end43, %if.then32, %if.end26.requeue_crit_edge
  %flags.0 = phi i32 [ %call57, %if.end43 ], [ %call4, %if.then32 ], [ %call4, %if.end26.requeue_crit_edge ]
  %116 = ptrtoint ptr %tmp_buf.0.le to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %tmp_buf.0.le, align 8
  %117 = ptrtoint ptr %skb27 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %skb27, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #8
  br i1 %call.i.i, label %if.end.i.i, label %requeue.__list_del_entry.exit.i_crit_edge

requeue.__list_del_entry.exit.i_crit_edge:        ; preds = %requeue
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %requeue
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %118 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %prev.i.i, align 4
  %120 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %119, ptr %prev1.i.i.i, align 4
  %123 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %121, ptr %119, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %requeue.__list_del_entry.exit.i_crit_edge
  %124 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn, ptr noundef %125, ptr noundef %rx) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %126 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %.pn, ptr %prev.i2.i, align 4
  %127 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %rx, ptr %.pn, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %128 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %125, ptr %prev3.i.i.i, align 4
  %129 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %.pn, ptr %125, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rxbuflock, i32 noundef %flags.0) #8
  br label %do.body
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_htc_rxep(ptr noundef %drv_priv, ptr noundef %skb, i32 noundef %ep_id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ah1 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %drv_priv, i32 0, i32 2
  %0 = ptrtoint ptr %ah1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah1, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %rx = getelementptr inbounds %struct.ath9k_htc_priv, ptr %drv_priv, i32 0, i32 39
  %initialized = getelementptr inbounds %struct.ath9k_htc_priv, ptr %drv_priv, i32 0, i32 39, i32 2
  %2 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %initialized, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.err_crit_edge, label %do.body8

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

do.body8:                                         ; preds = %entry
  %rxbuflock = getelementptr inbounds %struct.ath9k_htc_priv, ptr %drv_priv, i32 0, i32 39, i32 1
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rxbuflock) #8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.body8
  %.pn.in = phi ptr [ %rx, %do.body8 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp20.not = icmp eq ptr %.pn, %rx
  br i1 %cmp20.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rxbuflock, i32 noundef %call12) #8
  br label %do.body35

for.body:                                         ; preds = %for.cond
  %tmp_buf.0 = getelementptr i8, ptr %.pn, i32 -48
  %5 = ptrtoint ptr %tmp_buf.0 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tmp_buf.0, align 8, !range !53
  %tobool22.not = icmp eq i8 %6, 0
  br i1 %tobool22.not, label %for.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %for.body
  %tmp_buf.0.le = getelementptr i8, ptr %.pn, i32 -48
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rxbuflock, i32 noundef %call12) #8
  %cmp32 = icmp eq ptr %tmp_buf.0.le, null
  br i1 %cmp32, label %for.end.do.body35_crit_edge, label %do.body43

for.end.do.body35_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body35

do.body35:                                        ; preds = %for.end.do.body35_crit_edge, %for.end.thread
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool36.not = icmp eq i32 %8, 0
  br i1 %tobool36.not, label %do.body35.err_crit_edge, label %if.then37

do.body35.err_crit_edge:                          ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.then37:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.2, ptr noundef %common.i, ptr noundef nonnull @.str.7) #8
  br label %err

do.body43:                                        ; preds = %for.end
  %call52 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rxbuflock) #8
  %skb57 = getelementptr i8, ptr %.pn, i32 -44
  %9 = ptrtoint ptr %skb57 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %skb, ptr %skb57, align 4
  %10 = ptrtoint ptr %tmp_buf.0.le to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %tmp_buf.0.le, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rxbuflock, i32 noundef %call52) #8
  %state.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %drv_priv, i32 0, i32 42, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body43.cleanup_crit_edge

do.body43.cleanup_crit_edge:                      ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  %rx_tasklet = getelementptr inbounds %struct.ath9k_htc_priv, ptr %drv_priv, i32 0, i32 42
  tail call void @__tasklet_schedule(ptr noundef %rx_tasklet) #8
  br label %cleanup

err:                                              ; preds = %if.then37, %do.body35.err_crit_edge, %entry.err_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then.i, %do.body43.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_rx_cleanup(ptr noundef readonly %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rx = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 39
  %0 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx, align 4
  %cmp.not26 = icmp eq ptr %1, %rx
  br i1 %cmp.not26, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in27 = phi ptr [ %.pn30, %if.end.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %rxbuf.029 = getelementptr i8, ptr %.pn.in27, i32 -48
  %2 = ptrtoint ptr %.pn.in27 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn30 = load ptr, ptr %.pn.in27, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in27) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in27, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in27 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in27, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in27 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in27, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in27, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %skb = getelementptr i8, ptr %.pn.in27, i32 -44
  %11 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skb, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %list_del.exit.if.end_crit_edge, label %if.then

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %12, i32 noundef 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del.exit.if.end_crit_edge
  tail call void @kfree(ptr noundef %rxbuf.029) #8
  %cmp.not = icmp eq ptr %.pn30, %rx
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath9k_rx_init(ptr noundef %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rx = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 39
  %0 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %rx, ptr %rx, align 4
  %prev.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 39, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %rx, ptr %prev.i, align 4
  %rxbuflock = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 39, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %rxbuflock, ptr noundef nonnull @.str.8, ptr noundef nonnull @ath9k_rx_init.__key, i16 noundef signext 3) #8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.023 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 56) #11
  %cmp4 = icmp eq ptr %call7.i.i, null
  br i1 %cmp4, label %err, label %if.end

if.end:                                           ; preds = %for.body
  %list = getelementptr inbounds %struct.ath9k_htc_rxbuf, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %4, ptr noundef %rx) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %prev.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rx, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.ath9k_htc_rxbuf, ptr %call7.i.i, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list, ptr %4, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %if.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %do.end10, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.end10:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !60
  %initialized = getelementptr inbounds %struct.ath9k_htc_priv, ptr %priv, i32 0, i32 39, i32 2
  %9 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %initialized, align 4
  br label %cleanup14

err:                                              ; preds = %for.body
  %10 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx, align 4
  %cmp.not26.i = icmp eq ptr %11, %rx
  br i1 %cmp.not26.i, label %err.cleanup14_crit_edge, label %err.for.body.i_crit_edge

err.for.body.i_crit_edge:                         ; preds = %err
  br label %for.body.i

err.cleanup14_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup14

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %err.for.body.i_crit_edge
  %.pn.in27.i = phi ptr [ %.pn30.i, %if.end.i.for.body.i_crit_edge ], [ %11, %err.for.body.i_crit_edge ]
  %rxbuf.029.i = getelementptr i8, ptr %.pn.in27.i, i32 -48
  %12 = ptrtoint ptr %.pn.in27.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn30.i = load ptr, ptr %.pn.in27.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in27.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in27.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %.pn.in27.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %.pn.in27.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %19 = ptrtoint ptr %.pn.in27.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in27.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in27.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %skb.i = getelementptr i8, ptr %.pn.in27.i, i32 -44
  %21 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %skb.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %list_del.exit.i.if.end.i_crit_edge, label %if.then.i

list_del.exit.i.if.end.i_crit_edge:               ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %22, i32 noundef 1) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %list_del.exit.i.if.end.i_crit_edge
  tail call void @kfree(ptr noundef %rxbuf.029.i) #8
  %cmp.not.i = icmp eq ptr %.pn30.i, %rx
  br i1 %cmp.not.i, label %if.end.i.cleanup14_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end.i.cleanup14_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup14

cleanup14:                                        ; preds = %if.end.i.cleanup14_crit_edge, %err.cleanup14_crit_edge, %do.end10
  %retval.0 = phi i32 [ 0, %do.end10 ], [ -12, %err.cleanup14_crit_edge ], [ -12, %if.end.i.cleanup14_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_cmn_get_hw_crypto_keytype(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_get_hdrlen_from_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_start_tx_ba_session(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
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
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
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
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_setrxfilter(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_setmcastfilter(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_err_stat_rx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_cmn_process_fft(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_cmn_rx_accept(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_cmn_rx_skb_postprocess(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_cmn_process_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath_is_mybeacon(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_cmn_process_rssi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_napi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_load8_noabort(i32)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !24, !25, !27, !28, !30, !32, !34, !35, !37, !39, !41}
!llvm.named.register.sp = !{!43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_txrx.c", i32 204, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_txrx.c", i32 363, i32 4}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_txrx.c", i32 656, i32 3}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_txrx.c", i32 772, i32 4}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_txrx.c", i32 844, i32 3}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_txrx.c", i32 1152, i32 3}
!14 = !{ptr @ath9k_rx_init.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_txrx.c", i32 1186, i32 2}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_txrx.c", i32 641, i32 2}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_txrx.c", i32 181, i32 3}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_txrx.c", i32 149, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_txrx.c", i32 725, i32 3}
!32 = !{ptr @skb_queue_head_init.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @subtype_txq_to_hwq, !36, !"subtype_txq_to_hwq", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_txrx.c", i32 23, i32 18}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_txrx.c", i32 991, i32 3}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_txrx.c", i32 1001, i32 3}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/ath9k/htc_drv_txrx.c", i32 1013, i32 3}
!43 = !{!"sp"}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i8 0, i8 2}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{i64 2149401797}
!56 = !{i64 2149402063}
!57 = !{i64 2157944477}
!58 = !{!"branch_weights", i32 2000, i32 1}
!59 = !{!"branch_weights", i32 4001, i32 4000000}
!60 = !{i64 2157963543}
