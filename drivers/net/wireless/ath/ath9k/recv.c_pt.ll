; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/recv.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/recv.c"
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
%struct.ath_rxbuf = type { %struct.list_head, ptr, ptr, i32, i32 }
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
%struct.ath_desc = type { i32, i32, i32, i32, [20 x i32], ptr }
%struct.ath_rx_status = type { i32, i16, i8, i8, i8, i8, i8, i8, i8, [3 x i8], [3 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i16, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.142 }
%union.anon.142 = type { %struct.anon.148, [16 x i8] }
%struct.anon.148 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.ieee80211_hdr = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, [6 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.sk_buff_list = type { ptr, ptr }

@ath_rx_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&sc->sc_pcu_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cachelsz %u rxbufsize %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to allocate rx descriptors: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dma_mapping_error() on RX init\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to stop Rx DMA\0A\00", [41 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No free rx buf available\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ath/ath9k/recv.c\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"unsupported hw bitrate detected 0x%02x using 1 Mbit\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"All PS CAB frames received, back to sleep\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Going back to sleep after having received PS-Poll data (0x%lx)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Reconfigure beacon timers based on synchronized timestamp\0A\00", [37 x i8] zeroinitializer }, align 32
@ath_rx_ps_beacon.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Received DTIM beacon indicating buffered broadcast/multicast frame(s)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"PS wait for CAB frames timed out\0A\00", [62 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 278, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 286, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 292, i32 7 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 294, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 317, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 498, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 326, i32 6 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 145, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 913, i32 6 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 921, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 612, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 618, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 549, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 574, i32 3 }
@___asan_gen_.76 = private constant [41 x i8] c"../drivers/net/wireless/ath/ath9k/recv.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 587, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 695, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 723, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @ath_rx_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath_rx_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath_rx_init(ptr noundef %sc, i32 noundef %nbufs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %sc_pcu_lock = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %sc_pcu_lock, ptr noundef nonnull @.str, ptr noundef nonnull @ath_rx_init.__key, i16 noundef signext 3) #6
  %2 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_ah, align 4
  %rx_status_len = getelementptr inbounds %struct.ath_hw, ptr %3, i32 0, i32 6, i32 12
  %4 = ptrtoint ptr %rx_status_len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rx_status_len, align 2
  %conv = zext i8 %5 to i32
  %add = add nuw nsw i32 %conv, 1926
  %rx_bufsize = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 12
  %6 = ptrtoint ptr %rx_bufsize to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %rx_bufsize, align 4
  %7 = load ptr, ptr %sc_ah, align 4
  %caps4 = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %caps4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %caps4, align 4
  %and = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body6, label %if.then

if.then:                                          ; preds = %entry
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 3
  %rx_bufsize.i = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 3, i32 12
  %10 = ptrtoint ptr %rx_bufsize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_bufsize.i, align 4
  %rx_status_len.i = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 6, i32 12
  %12 = ptrtoint ptr %rx_status_len.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rx_status_len.i, align 2
  %conv.i = zext i8 %13 to i32
  %sub.i = sub i32 %11, %conv.i
  %conv2.i = trunc i32 %sub.i to i16
  tail call void @ath9k_hw_set_rx_bufsize(ptr noundef %7, i16 noundef zeroext %conv2.i) #6
  %rx_edma.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 7
  %arrayidx.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 7, i32 1
  %rx_lp_qdepth.i = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 6, i32 11
  %14 = ptrtoint ptr %rx_lp_qdepth.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rx_lp_qdepth.i, align 1
  %conv4.i = zext i8 %15 to i32
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx.i, ptr %arrayidx.i, align 4
  %prev.i.i.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 7, i32 1, i32 0, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 7, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %qlen.i.i.i, align 4
  %rx_fifo_hwsize.i.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 7, i32 1, i32 1
  %19 = ptrtoint ptr %rx_fifo_hwsize.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv4.i, ptr %rx_fifo_hwsize.i.i, align 4
  %rx_hp_qdepth.i = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 6, i32 10
  %20 = ptrtoint ptr %rx_hp_qdepth.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rx_hp_qdepth.i, align 4
  %conv9.i = zext i8 %21 to i32
  %22 = ptrtoint ptr %rx_edma.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %rx_edma.i, ptr %rx_edma.i, align 4
  %prev.i.i71.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 7, i32 0, i32 0, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i71.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %rx_edma.i, ptr %prev.i.i71.i, align 4
  %qlen.i.i72.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 7, i32 0, i32 0, i32 1
  %24 = ptrtoint ptr %qlen.i.i72.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %qlen.i.i72.i, align 4
  %rx_fifo_hwsize.i73.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 7, i32 0, i32 1
  %25 = ptrtoint ptr %rx_fifo_hwsize.i73.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv9.i, ptr %rx_fifo_hwsize.i73.i, align 4
  %mul.i = mul i32 %nbufs, 24
  %dev.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 1
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %27, i32 noundef %mul.i, i32 noundef 3520) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %rxbuf.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 5
  %28 = ptrtoint ptr %rxbuf.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %rxbuf.i, ptr %rxbuf.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 5, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %rxbuf.i, ptr %prev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbufs)
  %cmp80.i = icmp sgt i32 %nbufs, 0
  br i1 %cmp80.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.083.i = phi i32 [ %inc.i, %list_add_tail.exit.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %bf.081.i = phi ptr [ %incdec.ptr.i, %list_add_tail.exit.i.for.body.i_crit_edge ], [ %call.i.i, %if.end.i.for.body.i_crit_edge ]
  %30 = ptrtoint ptr %rx_bufsize.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_bufsize.i, align 4
  %call14.i = tail call ptr @ath_rxbuf_alloc(ptr noundef %common.i.i, i32 noundef %31, i32 noundef 3264) #6
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %for.body.i.rx_init_fail.i_crit_edge, label %if.end17.i

for.body.i.rx_init_fail.i_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rx_init_fail.i

if.end17.i:                                       ; preds = %for.body.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call14.i, i32 0, i32 19
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i, align 4
  %34 = ptrtoint ptr %rx_bufsize.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_bufsize.i, align 4
  %36 = call ptr @memset(ptr %33, i32 0, i32 %35)
  %bf_mpdu.i = getelementptr inbounds %struct.ath_rxbuf, ptr %bf.081.i, i32 0, i32 1
  %37 = ptrtoint ptr %bf_mpdu.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call14.i, ptr %bf_mpdu.i, align 4
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  %40 = load ptr, ptr %data.i, align 4
  %41 = load i32, ptr %rx_bufsize.i, align 4
  %call.i74.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %40) #6
  br i1 %call.i74.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end17.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !54

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %39) #6
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 3
  %42 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %39, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %45, %if.end.i.i.i ], [ %43, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #6
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debug_dma_map_single(ptr noundef %39, ptr noundef %40, i32 noundef %41) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %46 = load ptr, ptr @mem_map, align 4
  %47 = ptrtoint ptr %40 to i32
  %sub.i.i = add i32 %47, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %46, i32 %shr.i.i
  %and.i.i = and i32 %47, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %39, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %41, i32 noundef 0, i32 noundef 0) #6
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %bf_buf_addr.i = getelementptr inbounds %struct.ath_rxbuf, ptr %bf.081.i, i32 0, i32 4
  %48 = ptrtoint ptr %bf_buf_addr.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %retval.0.i.i, ptr %bf_buf_addr.i, align 4
  %49 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %50, i32 noundef %retval.0.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %if.then29.i, label %if.end32.i

if.then29.i:                                      ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %bf_mpdu.i.le = getelementptr inbounds %struct.ath_rxbuf, ptr %bf.081.i, i32 0, i32 1
  %bf_buf_addr.i.le = getelementptr inbounds %struct.ath_rxbuf, ptr %bf.081.i, i32 0, i32 4
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call14.i, i32 noundef 1) #6
  %51 = ptrtoint ptr %bf_mpdu.i.le to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %bf_mpdu.i.le, align 4
  %52 = ptrtoint ptr %bf_buf_addr.i.le to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %bf_buf_addr.i.le, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.4, ptr noundef %common.i.i, ptr noundef nonnull @.str.6) #6
  br label %rx_init_fail.i

if.end32.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %bf.081.i, ptr noundef %54, ptr noundef %rxbuf.i) #6
  br i1 %call.i.i.i, label %if.end.i.i76.i, label %if.end32.i.list_add_tail.exit.i_crit_edge

if.end32.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit.i

if.end.i.i76.i:                                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %bf.081.i, ptr %prev.i.i, align 4
  %56 = ptrtoint ptr %bf.081.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %rxbuf.i, ptr %bf.081.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %bf.081.i, i32 0, i32 1
  %57 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev3.i.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %bf.081.i, ptr %54, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i76.i, %if.end32.i.list_add_tail.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.083.i, 1
  %incdec.ptr.i = getelementptr %struct.ath_rxbuf, ptr %bf.081.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %nbufs
  br i1 %exitcond.not.i, label %list_add_tail.exit.i.cleanup_crit_edge, label %list_add_tail.exit.i.for.body.i_crit_edge

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

list_add_tail.exit.i.cleanup_crit_edge:           ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

rx_init_fail.i:                                   ; preds = %if.then29.i, %for.body.i.rx_init_fail.i_crit_edge
  tail call fastcc void @ath_rx_edma_cleanup(ptr noundef %sc) #6
  br label %cleanup

do.body6:                                         ; preds = %entry
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 3
  %59 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %debug_mask, align 4
  %and7 = and i32 %60, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.body6.do.end14_crit_edge, label %if.then9

do.body6.do.end14_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

if.then9:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %cachelsz = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 7
  %61 = ptrtoint ptr %cachelsz to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %cachelsz, align 4
  %conv10 = zext i16 %62 to i32
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.2, i32 noundef %conv10, i32 noundef %add) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then9, %do.body6.do.end14_crit_edge
  %rxdma = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 6
  %rxbuf = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 5
  %call16 = tail call i32 @ath_descdma_setup(ptr noundef %sc, ptr noundef %rxdma, ptr noundef %rxbuf, ptr noundef nonnull @.str.3, i32 noundef %nbufs, i32 noundef 1, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp.not = icmp eq i32 %call16, 0
  br i1 %cmp.not, label %for.cond.preheader, label %if.then18

for.cond.preheader:                               ; preds = %do.end14
  %dev = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 1
  br label %for.cond

if.then18:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.4, ptr noundef %common.i, ptr noundef nonnull @.str.5, i32 noundef %call16) #6
  br label %if.then52

for.cond:                                         ; preds = %dma_map_single_attrs.exit.for.cond_crit_edge, %for.cond.preheader
  %bf.0.in = phi ptr [ %bf.0, %dma_map_single_attrs.exit.for.cond_crit_edge ], [ %rxbuf, %for.cond.preheader ]
  %63 = ptrtoint ptr %bf.0.in to i32
  call void @__asan_load4_noabort(i32 %63)
  %bf.0 = load ptr, ptr %bf.0.in, align 4
  %cmp24.not = icmp eq ptr %bf.0, %rxbuf
  br i1 %cmp24.not, label %err, label %for.body

for.body:                                         ; preds = %for.cond
  %64 = ptrtoint ptr %rx_bufsize to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rx_bufsize, align 4
  %call27 = tail call ptr @ath_rxbuf_alloc(ptr noundef %common.i, i32 noundef %65, i32 noundef 3264) #6
  %cmp28 = icmp eq ptr %call27, null
  br i1 %cmp28, label %for.body.if.then52_crit_edge, label %if.end31

for.body.if.then52_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then52

if.end31:                                         ; preds = %for.body
  %bf_mpdu = getelementptr inbounds %struct.ath_rxbuf, ptr %bf.0, i32 0, i32 1
  %66 = ptrtoint ptr %bf_mpdu to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call27, ptr %bf_mpdu, align 4
  %67 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %call27, i32 0, i32 19
  %69 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data, align 4
  %71 = ptrtoint ptr %rx_bufsize to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_bufsize, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %70) #6
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end31
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !54

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %68) #6
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %68, i32 0, i32 3
  %73 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %74, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %68, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i92 = phi ptr [ %76, %if.end.i.i ], [ %74, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %call16.i, ptr noundef %retval.0.i.i92) #6
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debug_dma_map_single(ptr noundef %68, ptr noundef %70, i32 noundef %72) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %77 = load ptr, ptr @mem_map, align 4
  %78 = ptrtoint ptr %70 to i32
  %sub.i93 = add i32 %78, 1073741824
  %shr.i = lshr i32 %sub.i93, 12
  %add.ptr.i = getelementptr %struct.page, ptr %77, i32 %shr.i
  %and.i = and i32 %78, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %68, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %72, i32 noundef 2, i32 noundef 0) #6
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i94 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %bf_buf_addr = getelementptr inbounds %struct.ath_rxbuf, ptr %bf.0, i32 0, i32 4
  %79 = ptrtoint ptr %bf_buf_addr to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %retval.0.i94, ptr %bf_buf_addr, align 4
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %81, i32 noundef %retval.0.i94) #6
  %cmp.i = icmp eq i32 %retval.0.i94, -1
  br i1 %cmp.i, label %if.then41, label %dma_map_single_attrs.exit.for.cond_crit_edge

dma_map_single_attrs.exit.for.cond_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

if.then41:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  %bf_mpdu.le = getelementptr inbounds %struct.ath_rxbuf, ptr %bf.0, i32 0, i32 1
  %bf_buf_addr.le = getelementptr inbounds %struct.ath_rxbuf, ptr %bf.0, i32 0, i32 4
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call27, i32 noundef 1) #6
  %82 = ptrtoint ptr %bf_mpdu.le to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %bf_mpdu.le, align 4
  %83 = ptrtoint ptr %bf_buf_addr.le to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %bf_buf_addr.le, align 4
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.4, ptr noundef %common.i, ptr noundef nonnull @.str.6) #6
  br label %if.then52

err:                                              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %rxlink = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 3
  %84 = ptrtoint ptr %rxlink to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %rxlink, align 4
  br label %cleanup

if.then52:                                        ; preds = %if.then41, %for.body.if.then52_crit_edge, %if.then18
  %error.0.ph = phi i32 [ -12, %if.then41 ], [ %call16, %if.then18 ], [ -12, %for.body.if.then52_crit_edge ]
  %85 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sc_ah, align 4
  %caps.i = getelementptr inbounds %struct.ath_hw, ptr %86, i32 0, i32 6
  %87 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %caps.i, align 4
  %and.i96 = and i32 %88, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i96)
  %tobool.not.i97 = icmp eq i32 %and.i96, 0
  br i1 %tobool.not.i97, label %if.end.i100, label %if.then.i98

if.then.i98:                                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ath_rx_edma_cleanup(ptr noundef %sc) #6
  br label %cleanup

if.end.i100:                                      ; preds = %if.then52
  %89 = ptrtoint ptr %rxbuf to i32
  call void @__asan_load4_noabort(i32 %89)
  %bf.028.i = load ptr, ptr %rxbuf, align 4
  %cmp.not29.i = icmp eq ptr %bf.028.i, %rxbuf
  br i1 %cmp.not29.i, label %if.end.i100.cleanup_crit_edge, label %for.body.lr.ph.i

if.end.i100.cleanup_crit_edge:                    ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end.i100
  %dev.i101 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 1
  %rx_bufsize.i102 = getelementptr inbounds %struct.ath_hw, ptr %86, i32 0, i32 3, i32 12
  br label %for.body.i104

for.body.i104:                                    ; preds = %for.inc.i.for.body.i104_crit_edge, %for.body.lr.ph.i
  %bf.030.i = phi ptr [ %bf.028.i, %for.body.lr.ph.i ], [ %bf.0.i, %for.inc.i.for.body.i104_crit_edge ]
  %bf_mpdu.i103 = getelementptr inbounds %struct.ath_rxbuf, ptr %bf.030.i, i32 0, i32 1
  %90 = ptrtoint ptr %bf_mpdu.i103 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bf_mpdu.i103, align 4
  %tobool4.not.i = icmp eq ptr %91, null
  br i1 %tobool4.not.i, label %for.body.i104.for.inc.i_crit_edge, label %if.then5.i

for.body.i104.for.inc.i_crit_edge:                ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then5.i:                                       ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %dev.i101 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev.i101, align 4
  %bf_buf_addr.i105 = getelementptr inbounds %struct.ath_rxbuf, ptr %bf.030.i, i32 0, i32 4
  %94 = ptrtoint ptr %bf_buf_addr.i105 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %bf_buf_addr.i105, align 4
  %96 = ptrtoint ptr %rx_bufsize.i102 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rx_bufsize.i102, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %93, i32 noundef %95, i32 noundef %97, i32 noundef 2, i32 noundef 0) #6
  tail call void @consume_skb(ptr noundef nonnull %91) #6
  %98 = ptrtoint ptr %bf_buf_addr.i105 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %bf_buf_addr.i105, align 4
  %99 = ptrtoint ptr %bf_mpdu.i103 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %bf_mpdu.i103, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then5.i, %for.body.i104.for.inc.i_crit_edge
  %100 = ptrtoint ptr %bf.030.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %bf.0.i = load ptr, ptr %bf.030.i, align 4
  %cmp.not.i = icmp eq ptr %bf.0.i, %rxbuf
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i104_crit_edge

for.inc.i.for.body.i104_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i104

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %if.end.i100.cleanup_crit_edge, %if.then.i98, %err, %rx_init_fail.i, %list_add_tail.exit.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %err ], [ -12, %rx_init_fail.i ], [ -12, %if.then.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ %error.0.ph, %if.then.i98 ], [ %error.0.ph, %if.end.i100.cleanup_crit_edge ], [ %error.0.ph, %for.inc.i.cleanup_crit_edge ], [ 0, %list_add_tail.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_descdma_setup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath_rxbuf_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_rx_cleanup(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %caps = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps, align 4
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @ath_rx_edma_cleanup(ptr noundef %sc)
  br label %cleanup

if.end:                                           ; preds = %entry
  %rxbuf = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 5
  %4 = ptrtoint ptr %rxbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.028 = load ptr, ptr %rxbuf, align 4
  %cmp.not29 = icmp eq ptr %bf.028, %rxbuf
  br i1 %cmp.not29, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %dev = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 1
  %rx_bufsize = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %bf.030 = phi ptr [ %bf.028, %for.body.lr.ph ], [ %bf.0, %for.inc.for.body_crit_edge ]
  %bf_mpdu = getelementptr inbounds %struct.ath_rxbuf, ptr %bf.030, i32 0, i32 1
  %5 = ptrtoint ptr %bf_mpdu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bf_mpdu, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.then5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %bf_buf_addr = getelementptr inbounds %struct.ath_rxbuf, ptr %bf.030, i32 0, i32 4
  %9 = ptrtoint ptr %bf_buf_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bf_buf_addr, align 4
  %11 = ptrtoint ptr %rx_bufsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_bufsize, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef 2, i32 noundef 0) #6
  tail call void @consume_skb(ptr noundef nonnull %6) #6
  %13 = ptrtoint ptr %bf_buf_addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %bf_buf_addr, align 4
  %14 = ptrtoint ptr %bf_mpdu to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %bf_mpdu, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %for.body.for.inc_crit_edge
  %15 = ptrtoint ptr %bf.030 to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.0 = load ptr, ptr %bf.030, align 4
  %cmp.not = icmp eq ptr %bf.0, %rxbuf
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath_rx_edma_cleanup(ptr noundef %sc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %arrayidx.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 7, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i.i15.i = icmp eq ptr %3, %arrayidx.i
  %tobool.not.i1416.i = icmp eq ptr %3, null
  %tobool.not.i17.i = or i1 %cmp.i.i15.i, %tobool.not.i1416.i
  br i1 %tobool.not.i17.i, label %entry.ath_rx_remove_buffer.exit_crit_edge, label %while.body.lr.ph.i

entry.ath_rx_remove_buffer.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath_rx_remove_buffer.exit

while.body.lr.ph.i:                               ; preds = %entry
  %qlen.i.i.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 7, i32 1, i32 0, i32 1
  %rxbuf.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 5
  %prev.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 5, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %list_add_tail.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %4 = phi ptr [ %3, %while.body.lr.ph.i ], [ %22, %list_add_tail.exit.i.while.body.i_crit_edge ]
  %5 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.41, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %4, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.41, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %10, ptr %prev17.i.i.i, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %8, ptr %10, align 8
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 3
  %13 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cb.i, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %do.body5.i, label %do.end10.i, !prof !55

do.body5.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath9k/recv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 166, 0\0A.popsection", ""() #6, !srcloc !56
  unreachable

do.end10.i:                                       ; preds = %while.body.i
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %14, ptr noundef %16, ptr noundef %rxbuf.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end10.i.list_add_tail.exit.i_crit_edge

do.end10.i.list_add_tail.exit.i_crit_edge:        ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %rxbuf.i, ptr %14, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %14, ptr %16, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end10.i.list_add_tail.exit.i_crit_edge
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i.i.i = icmp eq ptr %22, %arrayidx.i
  %tobool.not.i14.i = icmp eq ptr %22, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i14.i
  br i1 %tobool.not.i.i, label %list_add_tail.exit.i.ath_rx_remove_buffer.exit_crit_edge, label %list_add_tail.exit.i.while.body.i_crit_edge

list_add_tail.exit.i.while.body.i_crit_edge:      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

list_add_tail.exit.i.ath_rx_remove_buffer.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath_rx_remove_buffer.exit

ath_rx_remove_buffer.exit:                        ; preds = %list_add_tail.exit.i.ath_rx_remove_buffer.exit_crit_edge, %entry.ath_rx_remove_buffer.exit_crit_edge
  %arrayidx.i22 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 7, i32 0
  %23 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i22, align 4
  %cmp.i.i15.i23 = icmp eq ptr %24, %arrayidx.i22
  %tobool.not.i1416.i24 = icmp eq ptr %24, null
  %tobool.not.i17.i25 = or i1 %cmp.i.i15.i23, %tobool.not.i1416.i24
  br i1 %tobool.not.i17.i25, label %ath_rx_remove_buffer.exit.ath_rx_remove_buffer.exit45_crit_edge, label %while.body.lr.ph.i29

ath_rx_remove_buffer.exit.ath_rx_remove_buffer.exit45_crit_edge: ; preds = %ath_rx_remove_buffer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath_rx_remove_buffer.exit45

while.body.lr.ph.i29:                             ; preds = %ath_rx_remove_buffer.exit
  %qlen.i.i.i26 = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 7, i32 0, i32 0, i32 1
  %rxbuf.i27 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 5
  %prev.i.i28 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 5, i32 1
  br label %while.body.i35

while.body.i35:                                   ; preds = %list_add_tail.exit.i44.while.body.i35_crit_edge, %while.body.lr.ph.i29
  %25 = phi ptr [ %24, %while.body.lr.ph.i29 ], [ %43, %list_add_tail.exit.i44.while.body.i35_crit_edge ]
  %26 = ptrtoint ptr %qlen.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %qlen.i.i.i26, align 4
  %sub.i.i.i30 = add i32 %27, -1
  store volatile i32 %sub.i.i.i30, ptr %qlen.i.i.i26, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 8
  %prev9.i.i.i31 = getelementptr inbounds %struct.anon.41, ptr %25, i32 0, i32 1
  %30 = ptrtoint ptr %prev9.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev9.i.i.i31, align 4
  store ptr null, ptr %prev9.i.i.i31, align 4
  store ptr null, ptr %25, align 8
  %prev17.i.i.i32 = getelementptr inbounds %struct.anon.41, ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %prev17.i.i.i32 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %31, ptr %prev17.i.i.i32, align 4
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %29, ptr %31, align 8
  %cb.i33 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 3
  %34 = ptrtoint ptr %cb.i33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cb.i33, align 8
  %tobool.not.i34 = icmp eq ptr %35, null
  br i1 %tobool.not.i34, label %do.body5.i36, label %do.end10.i38, !prof !55

do.body5.i36:                                     ; preds = %while.body.i35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath9k/recv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 166, 0\0A.popsection", ""() #6, !srcloc !56
  unreachable

do.end10.i38:                                     ; preds = %while.body.i35
  %36 = ptrtoint ptr %prev.i.i28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i28, align 4
  %call.i.i.i37 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %35, ptr noundef %37, ptr noundef %rxbuf.i27) #6
  br i1 %call.i.i.i37, label %if.end.i.i.i40, label %do.end10.i38.list_add_tail.exit.i44_crit_edge

do.end10.i38.list_add_tail.exit.i44_crit_edge:    ; preds = %do.end10.i38
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit.i44

if.end.i.i.i40:                                   ; preds = %do.end10.i38
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %prev.i.i28 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev.i.i28, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %rxbuf.i27, ptr %35, align 4
  %prev3.i.i.i39 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i.i39, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %35, ptr %37, align 4
  br label %list_add_tail.exit.i44

list_add_tail.exit.i44:                           ; preds = %if.end.i.i.i40, %do.end10.i38.list_add_tail.exit.i44_crit_edge
  %42 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i22, align 4
  %cmp.i.i.i41 = icmp eq ptr %43, %arrayidx.i22
  %tobool.not.i14.i42 = icmp eq ptr %43, null
  %tobool.not.i.i43 = or i1 %cmp.i.i.i41, %tobool.not.i14.i42
  br i1 %tobool.not.i.i43, label %list_add_tail.exit.i44.ath_rx_remove_buffer.exit45_crit_edge, label %list_add_tail.exit.i44.while.body.i35_crit_edge

list_add_tail.exit.i44.while.body.i35_crit_edge:  ; preds = %list_add_tail.exit.i44
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i35

list_add_tail.exit.i44.ath_rx_remove_buffer.exit45_crit_edge: ; preds = %list_add_tail.exit.i44
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath_rx_remove_buffer.exit45

ath_rx_remove_buffer.exit45:                      ; preds = %list_add_tail.exit.i44.ath_rx_remove_buffer.exit45_crit_edge, %ath_rx_remove_buffer.exit.ath_rx_remove_buffer.exit45_crit_edge
  %rxbuf = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 5
  %44 = ptrtoint ptr %rxbuf to i32
  call void @__asan_load4_noabort(i32 %44)
  %bf.046 = load ptr, ptr %rxbuf, align 4
  %cmp.not47 = icmp eq ptr %bf.046, %rxbuf
  br i1 %cmp.not47, label %ath_rx_remove_buffer.exit45.for.end_crit_edge, label %for.body.lr.ph

ath_rx_remove_buffer.exit45.for.end_crit_edge:    ; preds = %ath_rx_remove_buffer.exit45
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %ath_rx_remove_buffer.exit45
  %dev = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 1
  %rx_bufsize = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %bf.048 = phi ptr [ %bf.046, %for.body.lr.ph ], [ %bf.0, %for.inc.for.body_crit_edge ]
  %bf_mpdu = getelementptr inbounds %struct.ath_rxbuf, ptr %bf.048, i32 0, i32 1
  %45 = ptrtoint ptr %bf_mpdu to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bf_mpdu, align 4
  %tobool.not = icmp eq ptr %46, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  %bf_buf_addr = getelementptr inbounds %struct.ath_rxbuf, ptr %bf.048, i32 0, i32 4
  %49 = ptrtoint ptr %bf_buf_addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bf_buf_addr, align 4
  %51 = ptrtoint ptr %rx_bufsize to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_bufsize, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef 0, i32 noundef 0) #6
  %53 = ptrtoint ptr %bf_mpdu to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bf_mpdu, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %54, i32 noundef 1) #6
  %55 = ptrtoint ptr %bf_buf_addr to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %bf_buf_addr, align 4
  %56 = ptrtoint ptr %bf_mpdu to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %bf_mpdu, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %57 = ptrtoint ptr %bf.048 to i32
  call void @__asan_load4_noabort(i32 %57)
  %bf.0 = load ptr, ptr %bf.048, align 4
  %cmp.not = icmp eq ptr %bf.0, %rxbuf
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %ath_rx_remove_buffer.exit45.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ath_calcrxfilter(ptr nocapture noundef readonly %sc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_startrecv(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %caps = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps, align 4
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %rx_enable.i.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 63, i32 1
  %4 = ptrtoint ptr %rx_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_enable.i.i, align 4
  tail call void %5(ptr noundef %1) #6
  %6 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc_ah, align 4
  %common.i.i.i = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 3
  %rxbuf.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 5
  %8 = ptrtoint ptr %rxbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %rxbuf.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %9, %rxbuf.i.i
  br i1 %cmp.i.not.i.i, label %do.body.i.i, label %if.then.for.cond.i.i_crit_edge

if.then.for.cond.i.i_crit_edge:                   ; preds = %if.then
  br label %for.cond.i.i

do.body.i.i:                                      ; preds = %if.then
  %debug_mask.i.i = getelementptr inbounds %struct.ath_hw, ptr %7, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %debug_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %debug_mask.i.i, align 4
  %and.i.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %do.body.i.i.ath_rx_addbuffer_edma.exit.i_crit_edge, label %if.then3.i.i

do.body.i.i.ath_rx_addbuffer_edma.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath_rx_addbuffer_edma.exit.i

if.then3.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i.i.i, ptr noundef nonnull @.str.10) #6
  br label %ath_rx_addbuffer_edma.exit.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then.for.cond.i.i_crit_edge
  %bf.0.i.i = phi ptr [ %tbf.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %9, %if.then.for.cond.i.i_crit_edge ]
  %cmp.not.i.i = icmp eq ptr %bf.0.i.i, %rxbuf.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.ath_rx_addbuffer_edma.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.ath_rx_addbuffer_edma.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath_rx_addbuffer_edma.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %12 = ptrtoint ptr %bf.0.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %tbf.0.i.i = load ptr, ptr %bf.0.i.i, align 4
  %call14.i.i = tail call fastcc zeroext i1 @ath_rx_edma_buf_link(ptr noundef %sc, i32 noundef 0) #6
  br i1 %call14.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %for.body.i.i.ath_rx_addbuffer_edma.exit.i_crit_edge

for.body.i.i.ath_rx_addbuffer_edma.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath_rx_addbuffer_edma.exit.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.i

ath_rx_addbuffer_edma.exit.i:                     ; preds = %for.body.i.i.ath_rx_addbuffer_edma.exit.i_crit_edge, %for.cond.i.i.ath_rx_addbuffer_edma.exit.i_crit_edge, %if.then3.i.i, %do.body.i.i.ath_rx_addbuffer_edma.exit.i_crit_edge
  %13 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sc_ah, align 4
  %common.i.i8.i = getelementptr inbounds %struct.ath_hw, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %rxbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %rxbuf.i.i, align 4
  %cmp.i.not.i10.i = icmp eq ptr %16, %rxbuf.i.i
  br i1 %cmp.i.not.i10.i, label %do.body.i14.i, label %ath_rx_addbuffer_edma.exit.i.for.cond.i18.i_crit_edge

ath_rx_addbuffer_edma.exit.i.for.cond.i18.i_crit_edge: ; preds = %ath_rx_addbuffer_edma.exit.i
  br label %for.cond.i18.i

do.body.i14.i:                                    ; preds = %ath_rx_addbuffer_edma.exit.i
  %debug_mask.i11.i = getelementptr inbounds %struct.ath_hw, ptr %14, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %debug_mask.i11.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %debug_mask.i11.i, align 4
  %and.i12.i = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool2.not.i13.i = icmp eq i32 %and.i12.i, 0
  br i1 %tobool2.not.i13.i, label %do.body.i14.i.ath_edma_start_recv.exit_crit_edge, label %if.then3.i15.i

do.body.i14.i.ath_edma_start_recv.exit_crit_edge: ; preds = %do.body.i14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath_edma_start_recv.exit

if.then3.i15.i:                                   ; preds = %do.body.i14.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i.i8.i, ptr noundef nonnull @.str.10) #6
  br label %ath_edma_start_recv.exit

for.cond.i18.i:                                   ; preds = %for.body.i21.i.for.cond.i18.i_crit_edge, %ath_rx_addbuffer_edma.exit.i.for.cond.i18.i_crit_edge
  %bf.0.i16.i = phi ptr [ %tbf.0.i19.i, %for.body.i21.i.for.cond.i18.i_crit_edge ], [ %16, %ath_rx_addbuffer_edma.exit.i.for.cond.i18.i_crit_edge ]
  %cmp.not.i17.i = icmp eq ptr %bf.0.i16.i, %rxbuf.i.i
  br i1 %cmp.not.i17.i, label %for.cond.i18.i.ath_edma_start_recv.exit_crit_edge, label %for.body.i21.i

for.cond.i18.i.ath_edma_start_recv.exit_crit_edge: ; preds = %for.cond.i18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath_edma_start_recv.exit

for.body.i21.i:                                   ; preds = %for.cond.i18.i
  %19 = ptrtoint ptr %bf.0.i16.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %tbf.0.i19.i = load ptr, ptr %bf.0.i16.i, align 4
  %call14.i20.i = tail call fastcc zeroext i1 @ath_rx_edma_buf_link(ptr noundef %sc, i32 noundef 1) #6
  br i1 %call14.i20.i, label %for.body.i21.i.for.cond.i18.i_crit_edge, label %for.body.i21.i.ath_edma_start_recv.exit_crit_edge

for.body.i21.i.ath_edma_start_recv.exit_crit_edge: ; preds = %for.body.i21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath_edma_start_recv.exit

for.body.i21.i.for.cond.i18.i_crit_edge:          ; preds = %for.body.i21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i18.i

ath_edma_start_recv.exit:                         ; preds = %for.body.i21.i.ath_edma_start_recv.exit_crit_edge, %for.cond.i18.i.ath_edma_start_recv.exit_crit_edge, %if.then3.i15.i, %do.body.i14.i.ath_edma_start_recv.exit_crit_edge
  %20 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sc_ah, align 4
  %common.i.i24.i = getelementptr inbounds %struct.ath_hw, ptr %21, i32 0, i32 3
  tail call void @ath9k_hw_setrxfilter(ptr noundef %21, i32 noundef 0) #6
  tail call void @ath_hw_setbssidmask(ptr noundef %common.i.i24.i) #6
  tail call void @ath9k_hw_setopmode(ptr noundef %21) #6
  tail call void @ath9k_hw_setmcastfilter(ptr noundef %21, i32 noundef -1, i32 noundef -1) #6
  %22 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sc_ah, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %rxbuf = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 5
  %24 = ptrtoint ptr %rxbuf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %rxbuf, align 4
  %cmp.i.not = icmp eq ptr %25, %rxbuf
  br i1 %cmp.i.not, label %if.end.start_recv_crit_edge, label %if.end3

if.end.start_recv_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %start_recv

if.end3:                                          ; preds = %if.end
  %buf_hold = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 8
  %26 = ptrtoint ptr %buf_hold to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %buf_hold, align 8
  %rxlink = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 3
  %27 = ptrtoint ptr %rxlink to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %rxlink, align 4
  br label %for.body

for.body:                                         ; preds = %ath_rx_buf_link.exit.for.body_crit_edge, %if.end3
  %bf.059 = phi ptr [ %25, %if.end3 ], [ %tbf.0, %ath_rx_buf_link.exit.for.body_crit_edge ]
  %28 = ptrtoint ptr %bf.059 to i32
  call void @__asan_load4_noabort(i32 %28)
  %tbf.0 = load ptr, ptr %bf.059, align 4
  %29 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sc_ah, align 4
  %bf_desc.i = getelementptr inbounds %struct.ath_rxbuf, ptr %bf.059, i32 0, i32 2
  %31 = ptrtoint ptr %bf_desc.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bf_desc.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %32, align 4
  %bf_buf_addr.i = getelementptr inbounds %struct.ath_rxbuf, ptr %bf.059, i32 0, i32 4
  %34 = ptrtoint ptr %bf_buf_addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bf_buf_addr.i, align 4
  %ds_data.i = getelementptr inbounds %struct.ath_desc, ptr %32, i32 0, i32 1
  %36 = ptrtoint ptr %ds_data.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %ds_data.i, align 4
  %bf_mpdu.i = getelementptr inbounds %struct.ath_rxbuf, ptr %bf.059, i32 0, i32 1
  %37 = ptrtoint ptr %bf_mpdu.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bf_mpdu.i, align 4
  %cmp.i54 = icmp eq ptr %38, null
  br i1 %cmp.i54, label %do.body2.i, label %do.end7.i, !prof !55

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath9k/recv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 51, 0\0A.popsection", ""() #6, !srcloc !57
  unreachable

do.end7.i:                                        ; preds = %for.body
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 19
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i, align 4
  %ds_vdata.i = getelementptr inbounds %struct.ath_desc, ptr %32, i32 0, i32 5
  %41 = ptrtoint ptr %ds_vdata.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %ds_vdata.i, align 4
  %rx_bufsize.i = getelementptr inbounds %struct.ath_hw, ptr %30, i32 0, i32 3, i32 12
  %42 = ptrtoint ptr %rx_bufsize.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_bufsize.i, align 4
  tail call void @ath9k_hw_setuprxdesc(ptr noundef %30, ptr noundef %32, i32 noundef %43, i32 noundef 0) #6
  %44 = ptrtoint ptr %rxlink to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rxlink, align 4
  %tobool8.not.i = icmp eq ptr %45, null
  %bf_daddr14.i = getelementptr inbounds %struct.ath_rxbuf, ptr %bf.059, i32 0, i32 3
  %46 = ptrtoint ptr %bf_daddr14.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bf_daddr14.i, align 4
  br i1 %tobool8.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %45, align 4
  br label %ath_rx_buf_link.exit

if.else.i:                                        ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ath9k_hw_putrxbuf(ptr noundef %30, i32 noundef %47) #6
  br label %ath_rx_buf_link.exit

ath_rx_buf_link.exit:                             ; preds = %if.else.i, %if.then9.i
  %49 = ptrtoint ptr %rxlink to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %32, ptr %rxlink, align 4
  %cmp.not = icmp eq ptr %tbf.0, %rxbuf
  br i1 %cmp.not, label %for.end, label %ath_rx_buf_link.exit.for.body_crit_edge

ath_rx_buf_link.exit.for.body_crit_edge:          ; preds = %ath_rx_buf_link.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %ath_rx_buf_link.exit
  %50 = ptrtoint ptr %rxbuf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %rxbuf, align 4
  %cmp.i55.not = icmp eq ptr %51, %rxbuf
  br i1 %cmp.i55.not, label %for.end.start_recv_crit_edge, label %if.end25

for.end.start_recv_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %start_recv

if.end25:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %bf_daddr = getelementptr inbounds %struct.ath_rxbuf, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %bf_daddr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bf_daddr, align 4
  tail call void @ath9k_hw_putrxbuf(ptr noundef %1, i32 noundef %53) #6
  %rx_enable.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 63, i32 1
  %54 = ptrtoint ptr %rx_enable.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rx_enable.i, align 4
  tail call void %55(ptr noundef %1) #6
  br label %start_recv

start_recv:                                       ; preds = %if.end25, %for.end.start_recv_crit_edge, %if.end.start_recv_crit_edge
  %56 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sc_ah, align 4
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %57, i32 0, i32 3
  tail call void @ath9k_hw_setrxfilter(ptr noundef %57, i32 noundef 0) #6
  tail call void @ath_hw_setbssidmask(ptr noundef %common.i.i) #6
  tail call void @ath9k_hw_setopmode(ptr noundef %57) #6
  tail call void @ath9k_hw_setmcastfilter(ptr noundef %57, i32 noundef -1, i32 noundef -1) #6
  br label %cleanup

cleanup:                                          ; preds = %start_recv, %ath_edma_start_recv.exit
  %.sink = phi ptr [ %1, %start_recv ], [ %23, %ath_edma_start_recv.exit ]
  %cur_chan = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %58 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cur_chan, align 8
  %offchannel = getelementptr inbounds %struct.ath_chanctx, ptr %59, i32 0, i32 13
  %60 = ptrtoint ptr %offchannel to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %offchannel, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool32 = icmp ne i8 %61, 0
  tail call void @ath9k_hw_startpcureceive(ptr noundef %.sink, i1 noundef zeroext %tobool32) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_putrxbuf(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_startpcureceive(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ath_stoprecv(ptr noundef %sc) local_unnamed_addr #0 align 64 {
entry:
  %reset = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reset) #6
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %reset, align 1
  tail call void @ath9k_hw_abortpcurecv(ptr noundef %1) #6
  tail call void @ath9k_hw_setrxfilter(ptr noundef %1, i32 noundef 0) #6
  %call = call zeroext i1 @ath9k_hw_stopdmarecv(ptr noundef %1, ptr noundef nonnull %reset) #6
  %3 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sc_ah, align 4
  %caps.i = getelementptr inbounds %struct.ath_hw, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %caps.i, align 4
  %and.i = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.ath_flushrecv.exit_crit_edge, label %if.then.i

entry.ath_flushrecv.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath_flushrecv.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 @ath_rx_tasklet(ptr noundef %sc, i32 noundef 1, i1 noundef zeroext true) #6
  br label %ath_flushrecv.exit

ath_flushrecv.exit:                               ; preds = %if.then.i, %entry.ath_flushrecv.exit_crit_edge
  %call1.i = call i32 @ath_rx_tasklet(ptr noundef %sc, i32 noundef 1, i1 noundef zeroext false) #6
  %7 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sc_ah, align 4
  %caps = getelementptr inbounds %struct.ath_hw, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %caps, align 4
  %and = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %ath_flushrecv.exit
  %arrayidx.i.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 7, i32 0
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp.i.i15.i.i = icmp eq ptr %12, %arrayidx.i.i
  %tobool.not.i1416.i.i = icmp eq ptr %12, null
  %tobool.not.i17.i.i = or i1 %cmp.i.i15.i.i, %tobool.not.i1416.i.i
  br i1 %tobool.not.i17.i.i, label %if.then.ath_rx_remove_buffer.exit.i_crit_edge, label %while.body.lr.ph.i.i

if.then.ath_rx_remove_buffer.exit.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath_rx_remove_buffer.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.then
  %qlen.i.i.i.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 7, i32 0, i32 0, i32 1
  %rxbuf.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 5
  %prev.i.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 5, i32 1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %list_add_tail.exit.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %13 = phi ptr [ %12, %while.body.lr.ph.i.i ], [ %31, %list_add_tail.exit.i.i.while.body.i.i_crit_edge ]
  %14 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qlen.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 8
  %prev9.i.i.i.i = getelementptr inbounds %struct.anon.41, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %prev9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %13, align 8
  %prev17.i.i.i.i = getelementptr inbounds %struct.anon.41, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %prev17.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %19, ptr %prev17.i.i.i.i, align 4
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %17, ptr %19, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 3
  %22 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cb.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %do.body5.i.i, label %do.end10.i.i, !prof !55

do.body5.i.i:                                     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath9k/recv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 166, 0\0A.popsection", ""() #6, !srcloc !56
  unreachable

do.end10.i.i:                                     ; preds = %while.body.i.i
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %23, ptr noundef %25, ptr noundef %rxbuf.i.i) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %do.end10.i.i.list_add_tail.exit.i.i_crit_edge

do.end10.i.i.list_add_tail.exit.i.i_crit_edge:    ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %rxbuf.i.i, ptr %23, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %23, ptr %25, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %do.end10.i.i.list_add_tail.exit.i.i_crit_edge
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %31, %arrayidx.i.i
  %tobool.not.i14.i.i = icmp eq ptr %31, null
  %tobool.not.i.i.i = or i1 %cmp.i.i.i.i, %tobool.not.i14.i.i
  br i1 %tobool.not.i.i.i, label %list_add_tail.exit.i.i.ath_rx_remove_buffer.exit.i_crit_edge, label %list_add_tail.exit.i.i.while.body.i.i_crit_edge

list_add_tail.exit.i.i.while.body.i.i_crit_edge:  ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

list_add_tail.exit.i.i.ath_rx_remove_buffer.exit.i_crit_edge: ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath_rx_remove_buffer.exit.i

ath_rx_remove_buffer.exit.i:                      ; preds = %list_add_tail.exit.i.i.ath_rx_remove_buffer.exit.i_crit_edge, %if.then.ath_rx_remove_buffer.exit.i_crit_edge
  %arrayidx.i2.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 7, i32 1
  %32 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i2.i, align 4
  %cmp.i.i15.i3.i = icmp eq ptr %33, %arrayidx.i2.i
  %tobool.not.i1416.i4.i = icmp eq ptr %33, null
  %tobool.not.i17.i5.i = or i1 %cmp.i.i15.i3.i, %tobool.not.i1416.i4.i
  br i1 %tobool.not.i17.i5.i, label %ath_rx_remove_buffer.exit.i.if.end_crit_edge, label %while.body.lr.ph.i9.i

ath_rx_remove_buffer.exit.i.if.end_crit_edge:     ; preds = %ath_rx_remove_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.lr.ph.i9.i:                            ; preds = %ath_rx_remove_buffer.exit.i
  %qlen.i.i.i6.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 7, i32 1, i32 0, i32 1
  %rxbuf.i7.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 5
  %prev.i.i8.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 5, i32 1
  br label %while.body.i15.i

while.body.i15.i:                                 ; preds = %list_add_tail.exit.i24.i.while.body.i15.i_crit_edge, %while.body.lr.ph.i9.i
  %34 = phi ptr [ %33, %while.body.lr.ph.i9.i ], [ %52, %list_add_tail.exit.i24.i.while.body.i15.i_crit_edge ]
  %35 = ptrtoint ptr %qlen.i.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %qlen.i.i.i6.i, align 4
  %sub.i.i.i10.i = add i32 %36, -1
  store volatile i32 %sub.i.i.i10.i, ptr %qlen.i.i.i6.i, align 4
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %34, align 8
  %prev9.i.i.i11.i = getelementptr inbounds %struct.anon.41, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %prev9.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev9.i.i.i11.i, align 4
  store ptr null, ptr %prev9.i.i.i11.i, align 4
  store ptr null, ptr %34, align 8
  %prev17.i.i.i12.i = getelementptr inbounds %struct.anon.41, ptr %38, i32 0, i32 1
  %41 = ptrtoint ptr %prev17.i.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %40, ptr %prev17.i.i.i12.i, align 4
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %38, ptr %40, align 8
  %cb.i13.i = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 3
  %43 = ptrtoint ptr %cb.i13.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cb.i13.i, align 8
  %tobool.not.i14.i = icmp eq ptr %44, null
  br i1 %tobool.not.i14.i, label %do.body5.i16.i, label %do.end10.i18.i, !prof !55

do.body5.i16.i:                                   ; preds = %while.body.i15.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath9k/recv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 166, 0\0A.popsection", ""() #6, !srcloc !56
  unreachable

do.end10.i18.i:                                   ; preds = %while.body.i15.i
  %45 = ptrtoint ptr %prev.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i8.i, align 4
  %call.i.i.i17.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %44, ptr noundef %46, ptr noundef %rxbuf.i7.i) #6
  br i1 %call.i.i.i17.i, label %if.end.i.i.i20.i, label %do.end10.i18.i.list_add_tail.exit.i24.i_crit_edge

do.end10.i18.i.list_add_tail.exit.i24.i_crit_edge: ; preds = %do.end10.i18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit.i24.i

if.end.i.i.i20.i:                                 ; preds = %do.end10.i18.i
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %prev.i.i8.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev.i.i8.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %rxbuf.i7.i, ptr %44, align 4
  %prev3.i.i.i19.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i.i19.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i.i19.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %44, ptr %46, align 4
  br label %list_add_tail.exit.i24.i

list_add_tail.exit.i24.i:                         ; preds = %if.end.i.i.i20.i, %do.end10.i18.i.list_add_tail.exit.i24.i_crit_edge
  %51 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i2.i, align 4
  %cmp.i.i.i21.i = icmp eq ptr %52, %arrayidx.i2.i
  %tobool.not.i14.i22.i = icmp eq ptr %52, null
  %tobool.not.i.i23.i = or i1 %cmp.i.i.i21.i, %tobool.not.i14.i22.i
  br i1 %tobool.not.i.i23.i, label %list_add_tail.exit.i24.i.if.end_crit_edge, label %list_add_tail.exit.i24.i.while.body.i15.i_crit_edge

list_add_tail.exit.i24.i.while.body.i15.i_crit_edge: ; preds = %list_add_tail.exit.i24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i15.i

list_add_tail.exit.i24.i.if.end_crit_edge:        ; preds = %list_add_tail.exit.i24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %ath_flushrecv.exit
  call void @__sanitizer_cov_trace_pc() #8
  %rxlink = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 3
  %53 = ptrtoint ptr %rxlink to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %rxlink, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %list_add_tail.exit.i24.i.if.end_crit_edge, %ath_rx_remove_buffer.exit.i.if.end_crit_edge
  %ah_flags = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 24
  %54 = ptrtoint ptr %ah_flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ah_flags, align 4
  %and2 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp ne i32 %and2, 0
  %brmerge = select i1 %tobool3.not, i1 true, i1 %call
  br i1 %brmerge, label %if.end.if.end21_crit_edge, label %do.body, !prof !59

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.body:                                          ; preds = %if.end
  %56 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sc_ah, align 4
  %debug_mask = getelementptr inbounds %struct.ath_hw, ptr %57, i32 0, i32 3, i32 3
  %58 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %debug_mask, align 4
  %and11 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.body.do.body17_crit_edge, label %if.then13

do.body.do.body17_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body17

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %57, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i, ptr noundef nonnull @.str.7) #6
  br label %do.body17

do.body17:                                        ; preds = %if.then13, %do.body.do.body17_crit_edge
  %arrayidx = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 5, i32 13
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %61, 1
  store i32 %inc, ptr %arrayidx, align 4
  br label %if.end21

if.end21:                                         ; preds = %do.body17, %if.end.if.end21_crit_edge
  br i1 %call, label %land.rhs, label %if.end21.land.end_crit_edge

if.end21.land.end_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %reset to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %reset, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool23.not = icmp eq i8 %63, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end21.land.end_crit_edge
  %64 = phi i1 [ false, %if.end21.land.end_crit_edge ], [ %tobool23.not, %land.rhs ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reset) #6
  ret i1 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_abortpcurecv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_setrxfilter(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_hw_stopdmarecv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath_rx_tasklet(ptr noundef %sc, i32 noundef %flush, i1 noundef zeroext %hp) local_unnamed_addr #0 align 64 {
entry:
  %trs.i = alloca %struct.ath_rx_status, align 4
  %rs = alloca %struct.ath_rx_status, align 4
  %decrypt_error = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %common.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %rs) #6
  %caps = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %6 = lshr exact i32 %and, 3
  %7 = xor i32 %6, 2
  %not.hp = xor i1 %hp, true
  %cond = zext i1 %not.hp to i32
  %call7 = tail call i64 @ath9k_hw_gettsf64(ptr noundef %1) #6
  %arrayidx.i.i = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 7, i32 %cond
  %dev.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 1
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %arrayidx.i.i, i32 0, i32 1
  %rxbuf.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 5
  %prev.i.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 5, i32 1
  %buf_hold.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 8
  %rs_datalen.i = getelementptr inbounds %struct.ath_rx_status, ptr %rs, i32 0, i32 1
  %rs_more.i = getelementptr inbounds %struct.ath_rx_status, ptr %rs, i32 0, i32 8
  %frag = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 9
  %discard_next.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 2
  %rs_status.i = getelementptr inbounds %struct.ath_rx_status, ptr %rs, i32 0, i32 2
  %conv.i378 = trunc i64 %call7 to i32
  %and1.i = and i64 %call7, -4294967296
  %spectral_mode.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 58, i32 2
  %spec_priv.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 58
  %rx_spectral.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 2, i32 16
  %chan_lock.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 40
  %cur_chan.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 39
  %rx_beacons.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 2, i32 14
  %is_mybeacon.i = getelementptr inbounds %struct.ath_rx_status, ptr %rs, i32 0, i32 16
  %rs_rate.i = getelementptr inbounds %struct.ath_rx_status, ptr %rs, i32 0, i32 6
  %rx_rate_err.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 2, i32 12
  %rs_antenna.i = getelementptr inbounds %struct.ath_rx_status, ptr %rs, i32 0, i32 7
  %num_pkts.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 4
  %rx_bufsize = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 3, i32 12
  %rx_status_len = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 6, i32 12
  %rx_frags = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 2, i32 15
  %rx_too_many_frags_err = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 2, i32 13
  %rx_oom_err105 = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 2, i32 11
  %sc_pm_lock = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 11
  %ps_flags = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 29
  %ps_enabled.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 30
  %offchannel.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 22
  %rx.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34
  %rxotherant14.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 1
  %rs_isaggr.i = getelementptr inbounds %struct.ath_rx_status, ptr %rs, i32 0, i32 11
  %ampdu_ref.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 10
  %rs_moreaggr.i = getelementptr inbounds %struct.ath_rx_status, ptr %rs, i32 0, i32 13
  %rs_flags.i = getelementptr inbounds %struct.ath_rx_status, ptr %rs, i32 0, i32 15
  %rx_len_err.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 44, i32 2, i32 2, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flush)
  %tobool163.not = icmp eq i32 %flush, 0
  %rxlink.i.i = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 3
  %rx_enable.i = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 63, i32 1
  br label %do.body

do.body:                                          ; preds = %cleanup171, %entry
  %budget.0 = phi i32 [ 512, %entry ], [ %budget.1, %cleanup171 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %decrypt_error) #6
  %8 = ptrtoint ptr %decrypt_error to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %decrypt_error, align 1
  %9 = call ptr @memset(ptr %rs, i32 0, i32 56)
  br i1 %tobool.not, label %if.else11, label %if.then9

if.then9:                                         ; preds = %do.body
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp.i.i10.i = icmp eq ptr %11, %arrayidx.i.i
  %tobool.not102.i11.i = icmp eq ptr %11, null
  %tobool.not.i12.i = or i1 %cmp.i.i10.i, %tobool.not102.i11.i
  br i1 %tobool.not.i12.i, label %if.then9.cleanup171.thread_crit_edge, label %if.then9.if.end.i.i_crit_edge

if.then9.if.end.i.i_crit_edge:                    ; preds = %if.then9
  br label %if.end.i.i

if.then9.cleanup171.thread_crit_edge:             ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup171.thread

if.end.i.i:                                       ; preds = %while.body.i.if.end.i.i_crit_edge, %if.then9.if.end.i.i_crit_edge
  %12 = phi ptr [ %64, %while.body.i.if.end.i.i_crit_edge ], [ %11, %if.then9.if.end.i.i_crit_edge ]
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cb.i.i, align 8
  %tobool3.not.i.i = icmp eq ptr %14, null
  br i1 %tobool3.not.i.i, label %do.body8.i.i, label %do.end14.i.i, !prof !55

do.body8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath9k/recv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 644, 0\0A.popsection", ""() #6, !srcloc !60
  unreachable

do.end14.i.i:                                     ; preds = %if.end.i.i
  %15 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sc_ah, align 4
  %17 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i.i, align 4
  %bf_buf_addr.i.i = getelementptr inbounds %struct.ath_rxbuf, ptr %14, i32 0, i32 4
  %19 = ptrtoint ptr %bf_buf_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bf_buf_addr.i.i, align 4
  %rx_bufsize.i.i = getelementptr inbounds %struct.ath_hw, ptr %16, i32 0, i32 3, i32 12
  %21 = ptrtoint ptr %rx_bufsize.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_bufsize.i.i, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef 2) #6
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 19
  %23 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i, align 4
  %call15.i.i = call i32 @ath9k_hw_process_rxdesc_edma(ptr noundef %16, ptr noundef nonnull %rs, ptr noundef %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call15.i.i)
  %cmp.i.i = icmp eq i32 %call15.i.i, -115
  br i1 %cmp.i.i, label %if.then16.i.i, label %if.end20.i.i

if.then16.i.i:                                    ; preds = %do.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %bf_buf_addr.i.i.le = getelementptr inbounds %struct.ath_rxbuf, ptr %14, i32 0, i32 4
  %rx_bufsize.i.i.le = getelementptr inbounds %struct.ath_hw, ptr %16, i32 0, i32 3, i32 12
  %25 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i.i, align 4
  %27 = ptrtoint ptr %bf_buf_addr.i.i.le to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bf_buf_addr.i.i.le, align 4
  %29 = ptrtoint ptr %rx_bufsize.i.i.le to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_bufsize.i.i.le, align 4
  call void @dma_sync_single_for_device(ptr noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef 2) #6
  br label %cleanup171.thread

if.end20.i.i:                                     ; preds = %do.end14.i.i
  %31 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %33 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %12, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.41, ptr %12, i32 0, i32 1
  %35 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %12, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.41, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %36, ptr %prev17.i.i.i, align 4
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %34, ptr %36, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call15.i.i)
  %cmp22.i.i = icmp eq i32 %call15.i.i, -22
  br i1 %cmp22.i.i, label %if.then23.i.i, label %if.end20.i.i.if.end16_crit_edge

if.end20.i.i.if.end16_crit_edge:                  ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then23.i.i:                                    ; preds = %if.end20.i.i
  %39 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %14, ptr noundef %40, ptr noundef %rxbuf.i.i) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then23.i.i.list_add_tail.exit.i.i_crit_edge

if.then23.i.i.list_add_tail.exit.i.i_crit_edge:   ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %14, ptr %prev.i.i.i, align 4
  %42 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %rxbuf.i.i, ptr %14, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %43 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev3.i.i.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %14, ptr %40, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.then23.i.i.list_add_tail.exit.i.i_crit_edge
  %call25.i.i = call fastcc zeroext i1 @ath_rx_edma_buf_link(ptr noundef %sc, i32 noundef %cond) #6
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp.i91.i.i = icmp eq ptr %46, %arrayidx.i.i
  %tobool28.not103.i.i = icmp eq ptr %46, null
  %tobool28.not.i.i = or i1 %cmp.i91.i.i, %tobool28.not103.i.i
  br i1 %tobool28.not.i.i, label %list_add_tail.exit.i.i.while.body.i_crit_edge, label %if.then29.i.i

list_add_tail.exit.i.i.while.body.i_crit_edge:    ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.then29.i.i:                                    ; preds = %list_add_tail.exit.i.i
  %cb30.i.i = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %cb30.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cb30.i.i, align 8
  %tobool33.not.i.i = icmp eq ptr %48, null
  br i1 %tobool33.not.i.i, label %do.body43.i.i, label %do.end51.i.i, !prof !55

do.body43.i.i:                                    ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath9k/recv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 666, 0\0A.popsection", ""() #6, !srcloc !61
  unreachable

do.end51.i.i:                                     ; preds = %if.then29.i.i
  %49 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i94.i.i = add i32 %50, -1
  store volatile i32 %sub.i94.i.i, ptr %qlen.i.i.i, align 4
  %51 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %46, align 8
  %prev9.i95.i.i = getelementptr inbounds %struct.anon.41, ptr %46, i32 0, i32 1
  %53 = ptrtoint ptr %prev9.i95.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev9.i95.i.i, align 4
  store ptr null, ptr %prev9.i95.i.i, align 4
  store ptr null, ptr %46, align 8
  %prev17.i96.i.i = getelementptr inbounds %struct.anon.41, ptr %52, i32 0, i32 1
  %55 = ptrtoint ptr %prev17.i96.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %54, ptr %prev17.i96.i.i, align 4
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %52, ptr %54, align 8
  %57 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i98.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %48, ptr noundef %58, ptr noundef %rxbuf.i.i) #6
  br i1 %call.i.i98.i.i, label %if.end.i.i100.i.i, label %do.end51.i.i.list_add_tail.exit101.i.i_crit_edge

do.end51.i.i.list_add_tail.exit101.i.i_crit_edge: ; preds = %do.end51.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit101.i.i

if.end.i.i100.i.i:                                ; preds = %do.end51.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %48, ptr %prev.i.i.i, align 4
  %60 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %rxbuf.i.i, ptr %48, align 4
  %prev3.i.i99.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %61 = ptrtoint ptr %prev3.i.i99.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev3.i.i99.i.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %48, ptr %58, align 4
  br label %list_add_tail.exit101.i.i

list_add_tail.exit101.i.i:                        ; preds = %if.end.i.i100.i.i, %do.end51.i.i.list_add_tail.exit101.i.i_crit_edge
  %call56.i.i = call fastcc zeroext i1 @ath_rx_edma_buf_link(ptr noundef %sc, i32 noundef %cond) #6
  br label %while.body.i

while.body.i:                                     ; preds = %list_add_tail.exit101.i.i, %list_add_tail.exit.i.i.while.body.i_crit_edge
  %63 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %64, %arrayidx.i.i
  %tobool.not102.i.i = icmp eq ptr %64, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not102.i.i
  br i1 %tobool.not.i.i, label %while.body.i.cleanup171.thread_crit_edge, label %while.body.i.if.end.i.i_crit_edge

while.body.i.if.end.i.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

while.body.i.cleanup171.thread_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup171.thread

if.else11:                                        ; preds = %do.body
  %65 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sc_ah, align 4
  %67 = ptrtoint ptr %rxbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile ptr, ptr %rxbuf.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %68, %rxbuf.i.i
  br i1 %cmp.i.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %rxlink.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %rxlink.i.i, align 4
  br label %cleanup171.thread

if.end.i:                                         ; preds = %if.else11
  %70 = ptrtoint ptr %buf_hold.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %buf_hold.i, align 8
  %cmp.i = icmp eq ptr %68, %71
  br i1 %cmp.i, label %if.end.i.cleanup171.thread_crit_edge, label %if.end7.i

if.end.i.cleanup171.thread_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup171.thread

if.end7.i:                                        ; preds = %if.end.i
  %bf_desc.i = getelementptr inbounds %struct.ath_rxbuf, ptr %68, i32 0, i32 2
  %72 = ptrtoint ptr %bf_desc.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bf_desc.i, align 4
  %call8.i = call i32 @ath9k_hw_rxprocdesc(ptr noundef %66, ptr noundef %73, ptr noundef nonnull %rs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call8.i)
  %cmp9.i = icmp eq i32 %call8.i, -115
  br i1 %cmp9.i, label %if.then10.i, label %if.end7.i.if.end35.i_crit_edge

if.end7.i.if.end35.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %trs.i) #6
  %74 = call ptr @memset(ptr %trs.i, i32 0, i32 56)
  %75 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %68, align 4
  %cmp.i70.not.i = icmp eq ptr %76, %rxbuf.i.i
  br i1 %cmp.i70.not.i, label %if.then15.i, label %if.end18.i

if.then15.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %rxlink.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %rxlink.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %trs.i) #6
  br label %cleanup171.thread

if.end18.i:                                       ; preds = %if.then10.i
  %bf_desc24.i = getelementptr inbounds %struct.ath_rxbuf, ptr %76, i32 0, i32 2
  %78 = ptrtoint ptr %bf_desc24.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bf_desc24.i, align 4
  %call25.i = call i32 @ath9k_hw_rxprocdesc(ptr noundef %66, ptr noundef %79, ptr noundef nonnull %trs.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call25.i)
  %cmp26.i = icmp eq i32 %call25.i, -115
  br i1 %cmp26.i, label %cleanup40.critedge69.i, label %if.end28.i

if.end28.i:                                       ; preds = %if.end18.i
  %call29.i = call i32 @ath9k_hw_rxprocdesc(ptr noundef %66, ptr noundef %73, ptr noundef nonnull %rs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call29.i)
  %cmp30.i = icmp eq i32 %call29.i, -115
  br i1 %cmp30.i, label %if.then31.i, label %if.end28.i.cleanup.i_crit_edge

if.end28.i.cleanup.i_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.then31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %rs_datalen.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %rs_datalen.i, align 4
  %81 = ptrtoint ptr %rs_more.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %rs_more.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then31.i, %if.end28.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %trs.i) #6
  br label %if.end35.i

if.end35.i:                                       ; preds = %cleanup.i, %if.end7.i.if.end35.i_crit_edge
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %68) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end35.i.list_del.exit.i_crit_edge

if.end35.i.list_del.exit.i_crit_edge:             ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i300 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %82 = ptrtoint ptr %prev.i.i.i300 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %prev.i.i.i300, align 4
  %84 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %68, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %83, ptr %prev1.i.i.i.i, align 4
  %87 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %85, ptr %83, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end35.i.list_del.exit.i_crit_edge
  %88 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr inttoptr (i32 256 to ptr), ptr %68, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %89 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %bf_mpdu.i = getelementptr inbounds %struct.ath_rxbuf, ptr %68, i32 0, i32 1
  %90 = ptrtoint ptr %bf_mpdu.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bf_mpdu.i, align 4
  %tobool37.not.i = icmp eq ptr %91, null
  br i1 %tobool37.not.i, label %list_del.exit.i.if.end13_crit_edge, label %if.end39.i

list_del.exit.i.if.end13_crit_edge:               ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end39.i:                                       ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev.i.i, align 4
  %bf_buf_addr.i = getelementptr inbounds %struct.ath_rxbuf, ptr %68, i32 0, i32 4
  %94 = ptrtoint ptr %bf_buf_addr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %bf_buf_addr.i, align 4
  %rx_bufsize.i = getelementptr inbounds %struct.ath_hw, ptr %66, i32 0, i32 3, i32 12
  %96 = ptrtoint ptr %rx_bufsize.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rx_bufsize.i, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %93, i32 noundef %95, i32 noundef %97, i32 noundef 2) #6
  br label %if.end13

cleanup40.critedge69.i:                           ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %trs.i) #6
  br label %cleanup171.thread

if.end13:                                         ; preds = %if.end39.i, %list_del.exit.i.if.end13_crit_edge
  %tobool14.not = icmp eq ptr %68, null
  br i1 %tobool14.not, label %if.end13.cleanup171.thread_crit_edge, label %if.end13.if.end16_crit_edge

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end13.cleanup171.thread_crit_edge:             ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup171.thread

if.end16:                                         ; preds = %if.end13.if.end16_crit_edge, %if.end20.i.i.if.end16_crit_edge
  %bf.0394 = phi ptr [ %68, %if.end13.if.end16_crit_edge ], [ %14, %if.end20.i.i.if.end16_crit_edge ]
  %bf_mpdu = getelementptr inbounds %struct.ath_rxbuf, ptr %bf.0394, i32 0, i32 1
  %98 = ptrtoint ptr %bf_mpdu to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %bf_mpdu, align 4
  %tobool17.not = icmp eq ptr %99, null
  br i1 %tobool17.not, label %if.end16.cleanup171_crit_edge, label %if.end19

if.end16.cleanup171_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup171

if.end19:                                         ; preds = %if.end16
  %100 = ptrtoint ptr %frag to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %frag, align 4
  %tobool20.not = icmp eq ptr %101, null
  %.296 = select i1 %tobool20.not, ptr %99, ptr %101
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %.296, i32 0, i32 3
  %102 = call ptr @memset(ptr %cb.i, i32 0, i32 48)
  %103 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %sc, align 8
  %105 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %sc_ah, align 4
  %common.i.i = getelementptr inbounds %struct.ath_hw, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %discard_next.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %discard_next.i, align 2, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool.not.i = icmp eq i8 %108, 0
  br i1 %tobool.not.i, label %if.end.i303, label %if.end19.corrupt.i_crit_edge

if.end19.corrupt.i_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %corrupt.i

if.end.i303:                                      ; preds = %if.end19
  %109 = ptrtoint ptr %discard_next.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %discard_next.i, align 2
  %110 = ptrtoint ptr %rs_status.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %rs_status.i, align 2
  %112 = ptrtoint ptr %rs_datalen.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %rs_datalen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %tobool7.not.i = icmp eq i16 %113, 0
  br i1 %tobool7.not.i, label %if.end.i303.corrupt.sink.split.i_crit_edge, label %lor.lhs.false.i

if.end.i303.corrupt.sink.split.i_crit_edge:       ; preds = %if.end.i303
  call void @__sanitizer_cov_trace_pc() #8
  br label %corrupt.sink.split.i

lor.lhs.false.i:                                  ; preds = %if.end.i303
  %114 = and i8 %111, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool5.not.i = icmp ne i8 %114, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %113)
  %cmp.i304 = icmp ugt i16 %113, 9
  %brmerge.i = select i1 %cmp.i304, i1 true, i1 %tobool5.not.i
  br i1 %brmerge.i, label %if.end13.i, label %lor.lhs.false.i.corrupt.sink.split.i_crit_edge

lor.lhs.false.i.corrupt.sink.split.i_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %corrupt.sink.split.i

if.end13.i:                                       ; preds = %lor.lhs.false.i
  %conv15.i = zext i16 %113 to i32
  %rx_bufsize.i305 = getelementptr inbounds %struct.ath_hw, ptr %106, i32 0, i32 3, i32 12
  %115 = ptrtoint ptr %rx_bufsize.i305 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %rx_bufsize.i305, align 4
  %rx_status_len.i = getelementptr inbounds %struct.ath_hw, ptr %106, i32 0, i32 6, i32 12
  %117 = ptrtoint ptr %rx_status_len.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %rx_status_len.i, align 2
  %conv16.i = zext i8 %118 to i32
  %sub.i = sub i32 %116, %conv16.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv15.i)
  %cmp17.i = icmp ult i32 %sub.i, %conv15.i
  br i1 %cmp17.i, label %if.end13.i.corrupt.sink.split.i_crit_edge, label %if.end28.i307

if.end13.i.corrupt.sink.split.i_crit_edge:        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %corrupt.sink.split.i

if.end28.i307:                                    ; preds = %if.end13.i
  %119 = ptrtoint ptr %rs_more.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %rs_more.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool29.not.i = icmp eq i8 %120, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %if.end28.i307.if.end30_crit_edge

if.end28.i307.if.end30_crit_edge:                 ; preds = %if.end28.i307
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.end31.i:                                       ; preds = %if.end28.i307
  %121 = and i8 %111, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool35.not.i = icmp eq i8 %121, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.end31.i.corrupt.i_crit_edge

if.end31.i.corrupt.i_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %corrupt.i

if.end37.i:                                       ; preds = %if.end31.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %.296, i32 0, i32 19
  %122 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %123, i32 %conv16.i
  %124 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %rs, align 4
  %conv2.i = zext i32 %125 to i64
  %or.i379 = or i64 %and1.i, %conv2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %conv.i378)
  %cmp.i380 = icmp ugt i32 %125, %conv.i378
  %sub.i381 = sub i32 %125, %conv.i378
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %sub.i381)
  %cmp6.i = icmp ugt i32 %sub.i381, 268435456
  %or.cond.i382 = and i1 %cmp.i380, %cmp6.i
  br i1 %or.cond.i382, label %if.then.i383, label %if.end37.i.if.end.i385_crit_edge, !prof !62

if.end37.i.if.end.i385_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i385

if.then.i383:                                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub10.i = add i64 %or.i379, -4294967296
  br label %if.end.i385

if.end.i385:                                      ; preds = %if.then.i383, %if.end37.i.if.end.i385_crit_edge
  %storemerge = phi i64 [ %sub10.i, %if.then.i383 ], [ %or.i379, %if.end37.i.if.end.i385_crit_edge ]
  %126 = ptrtoint ptr %cb.i to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %storemerge, ptr %cb.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %conv.i378)
  %cmp12.i = icmp ult i32 %125, %conv.i378
  %sub16.i = sub i32 %conv.i378, %125
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %sub16.i)
  %cmp17.i384 = icmp ugt i32 %sub16.i, 268435456
  %or.cond39.i = and i1 %cmp12.i, %cmp17.i384
  br i1 %or.cond39.i, label %if.then25.i, label %if.end.i385.ath9k_process_tsf.exit_crit_edge, !prof !62

if.end.i385.ath9k_process_tsf.exit_crit_edge:     ; preds = %if.end.i385
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_process_tsf.exit

if.then25.i:                                      ; preds = %if.end.i385
  call void @__sanitizer_cov_trace_pc() #8
  %127 = ptrtoint ptr %cb.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %cb.i, align 8
  %add.i = add i64 %128, 4294967296
  store i64 %add.i, ptr %cb.i, align 8
  br label %ath9k_process_tsf.exit

ath9k_process_tsf.exit:                           ; preds = %if.then25.i, %if.end.i385.ath9k_process_tsf.exit_crit_edge
  call void @ath_debug_stat_rx(ptr noundef %sc, ptr noundef nonnull %rs) #6
  %129 = ptrtoint ptr %rs_status.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %rs_status.i, align 2
  %131 = and i8 %130, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool44.not.i = icmp eq i8 %131, 0
  br i1 %tobool44.not.i, label %if.end65.i, label %if.then45.i

if.then45.i:                                      ; preds = %ath9k_process_tsf.exit
  %radar_enabled.i = getelementptr inbounds %struct.ieee80211_conf, ptr %104, i32 0, i32 8
  %132 = ptrtoint ptr %radar_enabled.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %radar_enabled.i, align 8, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool46.not.i = icmp eq i8 %133, 0
  br i1 %tobool46.not.i, label %if.else.i, label %if.then47.i

if.then47.i:                                      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #8
  %134 = ptrtoint ptr %cb.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %cb.i, align 8
  call void @ath9k_dfs_process_phyerr(ptr noundef %sc, ptr noundef %add.ptr.i, ptr noundef nonnull %rs, i64 noundef %135) #6
  br label %requeue_drop_frag

if.else.i:                                        ; preds = %if.then45.i
  %136 = ptrtoint ptr %spectral_mode.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %spectral_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp48.not.i = icmp eq i32 %137, 0
  br i1 %cmp48.not.i, label %if.else.i.requeue_drop_frag_crit_edge, label %land.lhs.true50.i

if.else.i.requeue_drop_frag_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %requeue_drop_frag

land.lhs.true50.i:                                ; preds = %if.else.i
  %138 = ptrtoint ptr %cb.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %cb.i, align 8
  %call53.i = call i32 @ath_cmn_process_fft(ptr noundef %spec_priv.i, ptr noundef %add.ptr.i, ptr noundef nonnull %rs, i64 noundef %139) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %land.lhs.true50.i.requeue_drop_frag_crit_edge, label %do.body56.i

land.lhs.true50.i.requeue_drop_frag_crit_edge:    ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %requeue_drop_frag

do.body56.i:                                      ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #8
  %140 = ptrtoint ptr %rx_spectral.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %rx_spectral.i, align 4
  %inc60.i = add i32 %141, 1
  store i32 %inc60.i, ptr %rx_spectral.i, align 4
  br label %requeue_drop_frag

if.end65.i:                                       ; preds = %ath9k_process_tsf.exit
  call void @_raw_spin_lock_bh(ptr noundef %chan_lock.i) #6
  %142 = ptrtoint ptr %cur_chan.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %cur_chan.i, align 8
  %rxfilter.i = getelementptr inbounds %struct.ath_chanctx, ptr %143, i32 0, i32 20
  %144 = ptrtoint ptr %rxfilter.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %rxfilter.i, align 8
  %call66.i = call zeroext i1 @ath9k_cmn_rx_accept(ptr noundef %common.i.i, ptr noundef %add.ptr.i, ptr noundef %cb.i, ptr noundef nonnull %rs, ptr noundef nonnull %decrypt_error, i32 noundef %145) #6
  call void @_raw_spin_unlock_bh(ptr noundef %chan_lock.i) #6
  br i1 %call66.i, label %if.end69.i, label %if.end65.i.requeue_drop_frag_crit_edge

if.end65.i.requeue_drop_frag_crit_edge:           ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %requeue_drop_frag

if.end69.i:                                       ; preds = %if.end65.i
  %call71.i = call zeroext i1 @ath_is_mybeacon(ptr noundef %common.i.i, ptr noundef %add.ptr.i) #6
  br i1 %call71.i, label %do.body73.i, label %if.end69.i.if.end80.i_crit_edge

if.end69.i.if.end80.i_crit_edge:                  ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80.i

do.body73.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #8
  %146 = ptrtoint ptr %rx_beacons.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %rx_beacons.i, align 4
  %inc77.i = add i32 %147, 1
  store i32 %inc77.i, ptr %rx_beacons.i, align 4
  %148 = ptrtoint ptr %is_mybeacon.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 1, ptr %is_mybeacon.i, align 4
  br label %if.end80.i

if.end80.i:                                       ; preds = %do.body73.i, %if.end69.i.if.end80.i_crit_edge
  %curchan.i = getelementptr inbounds %struct.ath_hw, ptr %106, i32 0, i32 8
  %149 = ptrtoint ptr %curchan.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %curchan.i, align 4
  %tobool81.not.i = icmp eq ptr %150, null
  br i1 %tobool81.not.i, label %do.end94.i, label %if.end109.i, !prof !55

do.end94.i:                                       ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 913, i32 noundef 9, ptr noundef null) #6
  br label %requeue_drop_frag

if.end109.i:                                      ; preds = %if.end80.i
  %call110.i = call i32 @ath9k_cmn_process_rate(ptr noundef %common.i.i, ptr noundef %104, ptr noundef nonnull %rs, ptr noundef %cb.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i)
  %tobool111.not.i = icmp eq i32 %call110.i, 0
  br i1 %tobool111.not.i, label %if.end128.i, label %do.body113.i

do.body113.i:                                     ; preds = %if.end109.i
  %debug_mask.i = getelementptr inbounds %struct.ath_hw, ptr %106, i32 0, i32 3, i32 3
  %151 = ptrtoint ptr %debug_mask.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %debug_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool115.not.i = icmp eq i32 %152, 0
  br i1 %tobool115.not.i, label %do.body113.i.do.body121.i_crit_edge, label %if.then116.i

do.body113.i.do.body121.i_crit_edge:              ; preds = %do.body113.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body121.i

if.then116.i:                                     ; preds = %do.body113.i
  call void @__sanitizer_cov_trace_pc() #8
  %153 = ptrtoint ptr %rs_rate.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %rs_rate.i, align 2
  %conv117.i = zext i8 %154 to i32
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i.i, ptr noundef nonnull @.str.12, i32 noundef %conv117.i) #6
  br label %do.body121.i

do.body121.i:                                     ; preds = %if.then116.i, %do.body113.i.do.body121.i_crit_edge
  %155 = ptrtoint ptr %rx_rate_err.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %rx_rate_err.i, align 4
  %inc125.i = add i32 %156, 1
  store i32 %inc125.i, ptr %rx_rate_err.i, align 4
  br label %requeue_drop_frag

if.end128.i:                                      ; preds = %if.end109.i
  %call129.i = call zeroext i1 @ath9k_is_chanctx_enabled() #6
  br i1 %call129.i, label %if.then130.i, label %if.end128.i.if.end135.i_crit_edge

if.end128.i.if.end135.i_crit_edge:                ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135.i

if.then130.i:                                     ; preds = %if.end128.i
  %157 = ptrtoint ptr %is_mybeacon.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %is_mybeacon.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool132.not.i = icmp eq i8 %158, 0
  br i1 %tobool132.not.i, label %if.then130.i.if.end135.i_crit_edge, label %if.then133.i

if.then130.i.if.end135.i_crit_edge:               ; preds = %if.then130.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135.i

if.then133.i:                                     ; preds = %if.then130.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @ath_chanctx_beacon_recv_ev(ptr noundef %sc, i32 noundef 3) #6
  br label %if.end135.i

if.end135.i:                                      ; preds = %if.then133.i, %if.then130.i.if.end135.i_crit_edge, %if.end128.i.if.end135.i_crit_edge
  call void @ath9k_cmn_process_rssi(ptr noundef %common.i.i, ptr noundef %104, ptr noundef nonnull %rs, ptr noundef %cb.i) #6
  %159 = ptrtoint ptr %curchan.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %curchan.i, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %160, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %162, align 4
  %conv137.i = trunc i32 %164 to i8
  %band138.i = getelementptr inbounds %struct.sk_buff, ptr %.296, i32 0, i32 3, i32 36
  %165 = ptrtoint ptr %band138.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %conv137.i, ptr %band138.i, align 4
  %166 = load ptr, ptr %curchan.i, align 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %166, align 4
  %center_freq.i = getelementptr inbounds %struct.ieee80211_channel, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %center_freq.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %center_freq.i, align 4
  %conv141.i = trunc i32 %170 to i16
  %freq.i = getelementptr inbounds %struct.sk_buff, ptr %.296, i32 0, i32 3, i32 28
  %171 = ptrtoint ptr %freq.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %bf.load.i = load i16, ptr %freq.i, align 4
  %bf.shl.i = shl i16 %conv141.i, 3
  %bf.clear.i = and i16 %bf.load.i, 7
  %bf.set.i = or i16 %bf.clear.i, %bf.shl.i
  store i16 %bf.set.i, ptr %freq.i, align 4
  %172 = ptrtoint ptr %rs_antenna.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %rs_antenna.i, align 1
  %antenna.i = getelementptr inbounds %struct.sk_buff, ptr %.296, i32 0, i32 3, i32 37
  %174 = ptrtoint ptr %antenna.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %173, ptr %antenna.i, align 1
  %flag.i = getelementptr inbounds %struct.sk_buff, ptr %.296, i32 0, i32 3, i32 24
  %175 = ptrtoint ptr %flag.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %flag.i, align 8
  %or.i = or i32 %176, 65536
  store i32 %or.i, ptr %flag.i, align 8
  %177 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %add.ptr.i, align 2
  %179 = and i16 %178, 19456
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %179)
  %cmp.i.i308 = icmp eq i16 %179, 2048
  br i1 %cmp.i.i308, label %land.lhs.true144.i, label %if.end135.i.if.end30_crit_edge

if.end135.i.if.end30_crit_edge:                   ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

land.lhs.true144.i:                               ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #8
  %180 = ptrtoint ptr %num_pkts.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %num_pkts.i, align 8
  %inc149.i = add i32 %181, 1
  store i32 %inc149.i, ptr %num_pkts.i, align 8
  br label %if.end30

corrupt.sink.split.i:                             ; preds = %if.end13.i.corrupt.sink.split.i_crit_edge, %lor.lhs.false.i.corrupt.sink.split.i_crit_edge, %if.end.i303.corrupt.sink.split.i_crit_edge
  %182 = ptrtoint ptr %rx_len_err.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %rx_len_err.i, align 4
  %inc25.i = add i32 %183, 1
  store i32 %inc25.i, ptr %rx_len_err.i, align 4
  br label %corrupt.i

corrupt.i:                                        ; preds = %corrupt.sink.split.i, %if.end31.i.corrupt.i_crit_edge, %if.end19.corrupt.i_crit_edge
  %184 = ptrtoint ptr %rs_more.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %rs_more.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool152.i = icmp ne i8 %185, 0
  %frombool155.i = zext i1 %tobool152.i to i8
  %186 = ptrtoint ptr %discard_next.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %frombool155.i, ptr %discard_next.i, align 2
  br label %requeue_drop_frag

if.end30:                                         ; preds = %land.lhs.true144.i, %if.end135.i.if.end30_crit_edge, %if.end28.i307.if.end30_crit_edge
  %187 = ptrtoint ptr %rx_bufsize to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %rx_bufsize, align 4
  %call31 = call ptr @ath_rxbuf_alloc(ptr noundef %common.i, i32 noundef %188, i32 noundef 2592) #6
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %do.body34, label %if.end35

do.body34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %189 = ptrtoint ptr %rx_oom_err105 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %rx_oom_err105, align 4
  %inc = add i32 %190, 1
  store i32 %inc, ptr %rx_oom_err105, align 4
  br label %requeue_drop_frag

if.end35:                                         ; preds = %if.end30
  %191 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dev.i.i, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %call31, i32 0, i32 19
  %193 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %data, align 4
  %195 = ptrtoint ptr %rx_bufsize to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %rx_bufsize, align 4
  %call.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %194) #6
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end35
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i312, !prof !54

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit.thread

if.then.i312:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = call ptr @dev_driver_string(ptr noundef %192) #6
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %192, i32 0, i32 3
  %197 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i311 = icmp eq ptr %198, null
  br i1 %tobool.not.i.i311, label %if.end.i.i313, label %if.then.i312.dev_name.exit.i_crit_edge

if.then.i312.dev_name.exit.i_crit_edge:           ; preds = %if.then.i312
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i313:                                    ; preds = %if.then.i312
  call void @__sanitizer_cov_trace_pc() #8
  %199 = ptrtoint ptr %192 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %192, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i313, %if.then.i312.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %200, %if.end.i.i313 ], [ %198, %if.then.i312.dev_name.exit.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #6
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %201 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dev.i.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %202, i32 noundef -1) #6
  br label %if.then44

dma_map_single_attrs.exit:                        ; preds = %if.end35
  call void @debug_dma_map_single(ptr noundef %192, ptr noundef %194, i32 noundef %196) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %203 = load ptr, ptr @mem_map, align 4
  %204 = ptrtoint ptr %194 to i32
  %sub.i314 = add i32 %204, 1073741824
  %shr.i = lshr i32 %sub.i314, 12
  %add.ptr.i315 = getelementptr %struct.page, ptr %203, i32 %shr.i
  %and.i = and i32 %204, 4095
  %call41.i = call i32 @dma_map_page_attrs(ptr noundef %192, ptr noundef %add.ptr.i315, i32 noundef %and.i, i32 noundef %196, i32 noundef %7, i32 noundef 0) #6
  %205 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %dev.i.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %206, i32 noundef %call41.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i318 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i318, label %dma_map_single_attrs.exit.if.then44_crit_edge, label %if.end45

dma_map_single_attrs.exit.if.then44_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then44

if.then44:                                        ; preds = %dma_map_single_attrs.exit.if.then44_crit_edge, %dma_map_single_attrs.exit.thread
  call void @__dev_kfree_skb_any(ptr noundef nonnull %call31, i32 noundef 1) #6
  br label %requeue_drop_frag

if.end45:                                         ; preds = %dma_map_single_attrs.exit
  %207 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dev.i.i, align 4
  %bf_buf_addr = getelementptr inbounds %struct.ath_rxbuf, ptr %bf.0394, i32 0, i32 4
  %209 = ptrtoint ptr %bf_buf_addr to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %bf_buf_addr, align 4
  %211 = ptrtoint ptr %rx_bufsize to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %rx_bufsize, align 4
  call void @dma_unmap_page_attrs(ptr noundef %208, i32 noundef %210, i32 noundef %212, i32 noundef %7, i32 noundef 0) #6
  %213 = ptrtoint ptr %bf_mpdu to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %call31, ptr %bf_mpdu, align 4
  %214 = ptrtoint ptr %bf_buf_addr to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %call41.i, ptr %bf_buf_addr, align 4
  %215 = ptrtoint ptr %rs_datalen.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %rs_datalen.i, align 4
  %conv = zext i16 %216 to i32
  %217 = ptrtoint ptr %rx_status_len to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %rx_status_len, align 2
  %conv51 = zext i8 %218 to i32
  %add = add nuw nsw i32 %conv51, %conv
  %call52 = call ptr @skb_put(ptr noundef nonnull %99, i32 noundef %add) #6
  %219 = ptrtoint ptr %rx_status_len to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %rx_status_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %tobool55.not = icmp eq i8 %220, 0
  br i1 %tobool55.not, label %if.end45.if.end61_crit_edge, label %if.then56

if.end45.if.end61_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then56:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %conv59 = zext i8 %220 to i32
  %call60 = call ptr @skb_pull(ptr noundef nonnull %99, i32 noundef %conv59) #6
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %if.end45.if.end61_crit_edge
  %221 = ptrtoint ptr %rs_more.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %rs_more.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %222)
  %tobool62.not = icmp eq i8 %222, 0
  br i1 %tobool62.not, label %if.end65, label %if.end61.do.body69_crit_edge

if.end61.do.body69_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body69

if.end65:                                         ; preds = %if.end61
  %223 = ptrtoint ptr %decrypt_error to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %decrypt_error, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %tobool64 = icmp ne i8 %224, 0
  call void @ath9k_cmn_rx_skb_postprocess(ptr noundef %common.i, ptr noundef nonnull %.296, ptr noundef nonnull %rs, ptr noundef %cb.i, i1 noundef zeroext %tobool64) #6
  %225 = ptrtoint ptr %rs_more.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %.pr = load i8, ptr %rs_more.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool67.not = icmp eq i8 %.pr, 0
  br i1 %tobool67.not, label %if.end92, label %if.end65.do.body69_crit_edge

if.end65.do.body69_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body69

do.body69:                                        ; preds = %if.end65.do.body69_crit_edge, %if.end61.do.body69_crit_edge
  %226 = ptrtoint ptr %rx_frags to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %rx_frags, align 4
  %inc73 = add i32 %227, 1
  store i32 %inc73, ptr %rx_frags, align 4
  %228 = ptrtoint ptr %frag to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %frag, align 4
  %tobool78.not = icmp eq ptr %229, null
  br i1 %tobool78.not, label %do.body69.requeue.sink.split_crit_edge, label %if.then79

do.body69.requeue.sink.split_crit_edge:           ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #8
  br label %requeue.sink.split

if.then79:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #8
  call void @__dev_kfree_skb_any(ptr noundef nonnull %229, i32 noundef 1) #6
  call void @__dev_kfree_skb_any(ptr noundef nonnull %99, i32 noundef 1) #6
  %230 = ptrtoint ptr %rx_too_many_frags_err to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %rx_too_many_frags_err, align 4
  %inc86 = add i32 %231, 1
  store i32 %inc86, ptr %rx_too_many_frags_err, align 4
  br label %requeue.sink.split

if.end92:                                         ; preds = %if.end65
  %232 = ptrtoint ptr %frag to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %frag, align 4
  %tobool95.not = icmp eq ptr %233, null
  br i1 %tobool95.not, label %if.end92.if.end115_crit_edge, label %if.then96

if.end92.if.end115_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

if.then96:                                        ; preds = %if.end92
  %len = getelementptr inbounds %struct.sk_buff, ptr %99, i32 0, i32 6
  %234 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %len, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %.296, i32 0, i32 7
  %236 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %tobool.i.not.i = icmp eq i32 %237, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.then96.skb_tailroom.exit_crit_edge

if.then96.skb_tailroom.exit_crit_edge:            ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #8
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %.296, i32 0, i32 17
  %238 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %.296, i32 0, i32 16
  %240 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %239 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %241 to i32
  %sub.ptr.sub.i.neg = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.then96.skb_tailroom.exit_crit_edge
  %cond.i.neg = phi i32 [ %sub.ptr.sub.i.neg, %cond.false.i ], [ 0, %if.then96.skb_tailroom.exit_crit_edge ]
  %sub = add i32 %cond.i.neg, %235
  %call98 = call i32 @pskb_expand_head(ptr noundef nonnull %.296, i32 noundef 0, i32 noundef %sub, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp = icmp slt i32 %call98, 0
  br i1 %cmp, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #8
  %242 = ptrtoint ptr %frag to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr null, ptr %frag, align 4
  %243 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %len, align 4
  %call113 = call ptr @skb_put(ptr noundef nonnull %.296, i32 noundef %244) #6
  %245 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %len, align 4
  %data.i319 = getelementptr inbounds %struct.sk_buff, ptr %99, i32 0, i32 19
  %247 = ptrtoint ptr %data.i319 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %data.i319, align 4
  %249 = call ptr @memcpy(ptr %call113, ptr %248, i32 %246)
  call void @__dev_kfree_skb_any(ptr noundef nonnull %99, i32 noundef 1) #6
  br label %if.end115

cleanup:                                          ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @consume_skb(ptr noundef nonnull %99) #6
  %250 = ptrtoint ptr %rx_oom_err105 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %rx_oom_err105, align 4
  %inc106 = add i32 %251, 1
  store i32 %inc106, ptr %rx_oom_err105, align 4
  br label %requeue_drop_frag

if.end115:                                        ; preds = %cleanup.thread, %if.end92.if.end115_crit_edge
  %skb.2 = phi ptr [ %99, %if.end92.if.end115_crit_edge ], [ %.296, %cleanup.thread ]
  %flag = getelementptr inbounds %struct.sk_buff, ptr %.296, i32 0, i32 3, i32 24
  %252 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %flag, align 8
  %and116 = and i32 %253, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.end115.do.body123_crit_edge, label %if.then118

if.end115.do.body123_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body123

if.then118:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  %len119 = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 6
  %254 = ptrtoint ptr %len119 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %len119, align 4
  %sub120 = add i32 %255, -8
  call void @skb_trim(ptr noundef nonnull %skb.2, i32 noundef %sub120) #6
  br label %do.body123

do.body123:                                       ; preds = %if.then118, %if.end115.do.body123_crit_edge
  %call127 = call i32 @_raw_spin_lock_irqsave(ptr noundef %sc_pm_lock) #6
  %256 = ptrtoint ptr %ps_flags to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %ps_flags, align 4
  %258 = and i16 %257, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %258)
  %tobool134.not = icmp eq i16 %258, 0
  br i1 %tobool134.not, label %lor.lhs.false, label %do.body123.if.then137_crit_edge

do.body123.if.then137_crit_edge:                  ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then137

lor.lhs.false:                                    ; preds = %do.body123
  %259 = ptrtoint ptr %ps_enabled.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %ps_enabled.i, align 2, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %260)
  %tobool.not.i320 = icmp eq i8 %260, 0
  br i1 %tobool.not.i320, label %lor.lhs.false.if.end139_crit_edge, label %ath9k_check_auto_sleep.exit

lor.lhs.false.if.end139_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

ath9k_check_auto_sleep.exit:                      ; preds = %lor.lhs.false
  %261 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %sc_ah, align 4
  %caps.i = getelementptr inbounds %struct.ath_hw, ptr %262, i32 0, i32 6
  %263 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %caps.i, align 4
  %and.i322 = and i32 %264, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i322)
  %tobool1.i.not = icmp eq i32 %and.i322, 0
  br i1 %tobool1.i.not, label %ath9k_check_auto_sleep.exit.if.end139_crit_edge, label %ath9k_check_auto_sleep.exit.if.then137_crit_edge

ath9k_check_auto_sleep.exit.if.then137_crit_edge: ; preds = %ath9k_check_auto_sleep.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then137

ath9k_check_auto_sleep.exit.if.end139_crit_edge:  ; preds = %ath9k_check_auto_sleep.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

if.then137:                                       ; preds = %ath9k_check_auto_sleep.exit.if.then137_crit_edge, %do.body123.if.then137_crit_edge
  %265 = ptrtoint ptr %is_mybeacon.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %is_mybeacon.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %266)
  %tobool138 = icmp ne i8 %266, 0
  %267 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %sc_ah, align 4
  %common.i.i325 = getelementptr inbounds %struct.ath_hw, ptr %268, i32 0, i32 3
  %data.i326 = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 19
  %269 = ptrtoint ptr %data.i326 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %data.i326, align 4
  %271 = and i16 %257, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %271)
  %tobool.not.i327 = icmp eq i16 %271, 0
  br i1 %tobool.not.i327, label %lor.lhs.false.i329, label %land.lhs.true.i

lor.lhs.false.i329:                               ; preds = %if.then137
  %272 = ptrtoint ptr %ps_enabled.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %ps_enabled.i, align 2, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %273)
  %tobool.not.i.i328 = icmp eq i8 %273, 0
  br i1 %tobool.not.i.i328, label %lor.lhs.false.i329.if.else.i335_crit_edge, label %ath9k_check_auto_sleep.exit.i

lor.lhs.false.i329.if.else.i335_crit_edge:        ; preds = %lor.lhs.false.i329
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i335

ath9k_check_auto_sleep.exit.i:                    ; preds = %lor.lhs.false.i329
  %caps.i.i = getelementptr inbounds %struct.ath_hw, ptr %268, i32 0, i32 6
  %274 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %caps.i.i, align 4
  %and.i.i = and i32 %275, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.i.not.i = icmp ne i32 %and.i.i, 0
  %276 = and i1 %tobool138, %tobool1.i.not.i
  br i1 %276, label %ath9k_check_auto_sleep.exit.i.if.then.i331_crit_edge, label %ath9k_check_auto_sleep.exit.i.if.else.i335_crit_edge

ath9k_check_auto_sleep.exit.i.if.else.i335_crit_edge: ; preds = %ath9k_check_auto_sleep.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i335

ath9k_check_auto_sleep.exit.i.if.then.i331_crit_edge: ; preds = %ath9k_check_auto_sleep.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i331

land.lhs.true.i:                                  ; preds = %if.then137
  br i1 %tobool138, label %land.lhs.true.i.if.then.i331_crit_edge, label %land.lhs.true.i.if.else.i335_crit_edge

land.lhs.true.i.if.else.i335_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i335

land.lhs.true.i.if.then.i331_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i331

if.then.i331:                                     ; preds = %land.lhs.true.i.if.then.i331_crit_edge, %ath9k_check_auto_sleep.exit.i.if.then.i331_crit_edge
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 6
  %277 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %278)
  %cmp.i.i330 = icmp ult i32 %278, 36
  br i1 %cmp.i.i330, label %if.then.i331.if.end139_crit_edge, label %if.end.i.i332

if.then.i331.if.end139_crit_edge:                 ; preds = %if.then.i331
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

if.end.i.i332:                                    ; preds = %if.then.i331
  %279 = and i16 %257, -2
  %280 = ptrtoint ptr %ps_flags to i32
  call void @__asan_store2_noabort(i32 %280)
  store i16 %279, ptr %ps_flags, align 4
  %281 = and i16 %257, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %281)
  %tobool.not.i79.i = icmp eq i16 %281, 0
  br i1 %tobool.not.i79.i, label %if.end.i.i332.if.end69.i.i_crit_edge, label %if.then5.i.i

if.end.i.i332.if.end69.i.i_crit_edge:             ; preds = %if.end.i.i332
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i332
  %and8.i.i = and i16 %257, -18
  %282 = ptrtoint ptr %ps_flags to i32
  call void @__asan_store2_noabort(i32 %282)
  store i16 %and8.i.i, ptr %ps_flags, align 4
  %debug_mask.i.i = getelementptr inbounds %struct.ath_hw, ptr %268, i32 0, i32 3, i32 3
  %283 = ptrtoint ptr %debug_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %debug_mask.i.i, align 4
  %and10.i.i = and i32 %284, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.then5.i.i.do.end.i.i_crit_edge, label %if.then12.i.i

if.then5.i.i.do.end.i.i_crit_edge:                ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

if.then12.i.i:                                    ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i.i325, ptr noundef nonnull @.str.15) #6
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then12.i.i, %if.then5.i.i.do.end.i.i_crit_edge
  %call14.i.i = call zeroext i1 @ath9k_is_chanctx_enabled() #6
  br i1 %call14.i.i, label %if.then15.i.i, label %do.end.i.i.land.lhs.true.i.i_crit_edge

do.end.i.i.land.lhs.true.i.i_crit_edge:           ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i.i

if.then15.i.i:                                    ; preds = %do.end.i.i
  %285 = ptrtoint ptr %cur_chan.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %cur_chan.i, align 8
  %cmp16.i.i = icmp eq ptr %286, %offchannel.i.i
  br i1 %cmp16.i.i, label %if.then15.i.i.if.end68.i.i_crit_edge, label %if.then15.i.i.land.lhs.true.i.i_crit_edge

if.then15.i.i.land.lhs.true.i.i_crit_edge:        ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i.i

if.then15.i.i.if.end68.i.i_crit_edge:             ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68.i.i

land.lhs.true.i.i:                                ; preds = %if.then15.i.i.land.lhs.true.i.i_crit_edge, %do.end.i.i.land.lhs.true.i.i_crit_edge
  %287 = ptrtoint ptr %cur_chan.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %cur_chan.i, align 8
  %beacon_interval.i.i = getelementptr inbounds %struct.ath_chanctx, ptr %288, i32 0, i32 5, i32 1
  %289 = ptrtoint ptr %beacon_interval.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %beacon_interval.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %290)
  %cmp23.i.i = icmp eq i32 %290, 0
  br i1 %cmp23.i.i, label %land.rhs.i80.i, label %if.then67.critedge.i.i

land.rhs.i80.i:                                   ; preds = %land.lhs.true.i.i
  %.b122.i.i = load i1, ptr @ath_rx_ps_beacon.__already_done, align 1
  br i1 %.b122.i.i, label %land.rhs.i80.i.if.end68.i.i_crit_edge, label %if.then33.i.i, !prof !54

land.rhs.i80.i.if.end68.i.i_crit_edge:            ; preds = %land.rhs.i80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68.i.i

if.then33.i.i:                                    ; preds = %land.rhs.i80.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ath_rx_ps_beacon.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 560, i32 noundef 9, ptr noundef null) #6
  br label %if.end68.i.i

if.then67.critedge.i.i:                           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @ath9k_set_beacon(ptr noundef %sc) #6
  br label %if.end68.i.i

if.end68.i.i:                                     ; preds = %if.then67.critedge.i.i, %if.then33.i.i, %land.rhs.i80.i.if.end68.i.i_crit_edge, %if.then15.i.i.if.end68.i.i_crit_edge
  call void @ath9k_p2p_beacon_sync(ptr noundef %sc) #6
  br label %if.end69.i.i

if.end69.i.i:                                     ; preds = %if.end68.i.i, %if.end.i.i332.if.end69.i.i_crit_edge
  %291 = ptrtoint ptr %data.i326 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %data.i326, align 4
  %variable.i.i.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %292, i32 0, i32 6, i32 1, i32 2
  %293 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %len.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %292, i32 %294
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %if.end.i.i.i334.while.cond.i.i.i_crit_edge, %if.end69.i.i
  %pos.0.i.i.i = phi ptr [ %variable.i.i.i, %if.end69.i.i ], [ %add.ptr4.i.i.i, %if.end.i.i.i334.while.cond.i.i.i_crit_edge ]
  %add.ptr2.i.i.i = getelementptr i8, ptr %pos.0.i.i.i, i32 2
  %cmp.i.i.i333 = icmp ult ptr %add.ptr2.i.i.i, %add.ptr.i.i.i
  br i1 %cmp.i.i.i333, label %while.body.i.i.i, label %while.cond.i.i.i.if.end83.i.i_crit_edge

while.cond.i.i.i.if.end83.i.i_crit_edge:          ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %incdec.ptr.i.i.i = getelementptr i8, ptr %pos.0.i.i.i, i32 1
  %295 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %incdec.ptr.i.i.i, align 1
  %conv.i.i.i = zext i8 %296 to i32
  %add.ptr4.i.i.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 %conv.i.i.i
  %cmp5.i.i.i = icmp ugt ptr %add.ptr4.i.i.i, %add.ptr.i.i.i
  br i1 %cmp5.i.i.i, label %while.body.i.i.i.if.end83.i.i_crit_edge, label %if.end.i.i.i334

while.body.i.i.i.if.end83.i.i_crit_edge:          ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83.i.i

if.end.i.i.i334:                                  ; preds = %while.body.i.i.i
  %297 = ptrtoint ptr %pos.0.i.i.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %pos.0.i.i.i, align 1
  %cmp8.i.i.i = icmp eq i8 %298, 5
  br i1 %cmp8.i.i.i, label %if.then10.i.i.i, label %if.end.i.i.i334.while.cond.i.i.i_crit_edge

if.end.i.i.i334.while.cond.i.i.i_crit_edge:       ; preds = %if.end.i.i.i334
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i.i

if.then10.i.i.i:                                  ; preds = %if.end.i.i.i334
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %296)
  %cmp12.i.i.i = icmp ult i8 %296, 4
  br i1 %cmp12.i.i.i, label %if.then10.i.i.i.if.end83.i.i_crit_edge, label %if.end15.i.i.i

if.then10.i.i.i.if.end83.i.i_crit_edge:           ; preds = %if.then10.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83.i.i

if.end15.i.i.i:                                   ; preds = %if.then10.i.i.i
  %299 = ptrtoint ptr %add.ptr2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %add.ptr2.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %300)
  %cmp17.not.i.i.i = icmp eq i8 %300, 0
  br i1 %cmp17.not.i.i.i, label %ath_beacon_dtim_pending_cab.exit.i.i, label %if.end15.i.i.i.if.end83.i.i_crit_edge

if.end15.i.i.i.if.end83.i.i_crit_edge:            ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83.i.i

ath_beacon_dtim_pending_cab.exit.i.i:             ; preds = %if.end15.i.i.i
  %bitmap_ctrl.i.i.i = getelementptr i8, ptr %pos.0.i.i.i, i32 4
  %301 = ptrtoint ptr %bitmap_ctrl.i.i.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %bitmap_ctrl.i.i.i, align 1
  %303 = and i8 %302, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %303)
  %tobool.i.not.i.i = icmp eq i8 %303, 0
  br i1 %tobool.i.not.i.i, label %ath_beacon_dtim_pending_cab.exit.i.i.if.end83.i.i_crit_edge, label %do.body72.i.i

ath_beacon_dtim_pending_cab.exit.i.i.if.end83.i.i_crit_edge: ; preds = %ath_beacon_dtim_pending_cab.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83.i.i

do.body72.i.i:                                    ; preds = %ath_beacon_dtim_pending_cab.exit.i.i
  %debug_mask73.i.i = getelementptr inbounds %struct.ath_hw, ptr %268, i32 0, i32 3, i32 3
  %304 = ptrtoint ptr %debug_mask73.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %debug_mask73.i.i, align 4
  %and74.i.i = and i32 %305, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74.i.i)
  %tobool75.not.i.i = icmp eq i32 %and74.i.i, 0
  br i1 %tobool75.not.i.i, label %do.body72.i.i.do.end79.i.i_crit_edge, label %if.then76.i.i

do.body72.i.i.do.end79.i.i_crit_edge:             ; preds = %do.body72.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end79.i.i

if.then76.i.i:                                    ; preds = %do.body72.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i.i325, ptr noundef nonnull @.str.16) #6
  br label %do.end79.i.i

do.end79.i.i:                                     ; preds = %if.then76.i.i, %do.body72.i.i.do.end79.i.i_crit_edge
  %306 = ptrtoint ptr %ps_flags to i32
  call void @__asan_load2_noabort(i32 %306)
  %307 = load i16, ptr %ps_flags, align 4
  %308 = or i16 %307, 3
  store i16 %308, ptr %ps_flags, align 4
  br label %if.end139

if.end83.i.i:                                     ; preds = %ath_beacon_dtim_pending_cab.exit.i.i.if.end83.i.i_crit_edge, %if.end15.i.i.i.if.end83.i.i_crit_edge, %if.then10.i.i.i.if.end83.i.i_crit_edge, %while.body.i.i.i.if.end83.i.i_crit_edge, %while.cond.i.i.i.if.end83.i.i_crit_edge
  %309 = ptrtoint ptr %ps_flags to i32
  call void @__asan_load2_noabort(i32 %309)
  %310 = load i16, ptr %ps_flags, align 4
  %311 = and i16 %310, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %311)
  %tobool87.not.i.i = icmp eq i16 %311, 0
  br i1 %tobool87.not.i.i, label %if.end83.i.i.if.end139_crit_edge, label %if.then88.i.i

if.end83.i.i.if.end139_crit_edge:                 ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

if.then88.i.i:                                    ; preds = %if.end83.i.i
  %and91.i.i = and i16 %310, -3
  %312 = ptrtoint ptr %ps_flags to i32
  call void @__asan_store2_noabort(i32 %312)
  store i16 %and91.i.i, ptr %ps_flags, align 4
  %debug_mask94.i.i = getelementptr inbounds %struct.ath_hw, ptr %268, i32 0, i32 3, i32 3
  %313 = ptrtoint ptr %debug_mask94.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %debug_mask94.i.i, align 4
  %and95.i.i = and i32 %314, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i.i)
  %tobool96.not.i.i = icmp eq i32 %and95.i.i, 0
  br i1 %tobool96.not.i.i, label %if.then88.i.i.if.end139_crit_edge, label %if.then97.i.i

if.then88.i.i.if.end139_crit_edge:                ; preds = %if.then88.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

if.then97.i.i:                                    ; preds = %if.then88.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i.i325, ptr noundef nonnull @.str.17) #6
  br label %if.end139

if.else.i335:                                     ; preds = %land.lhs.true.i.if.else.i335_crit_edge, %ath9k_check_auto_sleep.exit.i.if.else.i335_crit_edge, %lor.lhs.false.i329.if.else.i335_crit_edge
  %315 = and i16 %257, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %315)
  %tobool8.not.i = icmp eq i16 %315, 0
  br i1 %tobool8.not.i, label %if.else.i335.if.else30.i_crit_edge, label %land.lhs.true9.i

if.else.i335.if.else30.i_crit_edge:               ; preds = %if.else.i335
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else30.i

land.lhs.true9.i:                                 ; preds = %if.else.i335
  %316 = ptrtoint ptr %270 to i32
  call void @__asan_load2_noabort(i32 %316)
  %317 = load i16, ptr %270, align 2
  %318 = and i16 %317, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %318)
  %cmp.i81.i = icmp eq i16 %318, 2048
  %319 = and i16 %317, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12288, i16 %319)
  %cmp.i82.i = icmp eq i16 %319, -12288
  %or.cond.i = or i1 %cmp.i81.i, %cmp.i82.i
  br i1 %or.cond.i, label %land.lhs.true16.i, label %land.lhs.true9.i.if.else30.i_crit_edge

land.lhs.true9.i.if.else30.i_crit_edge:           ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else30.i

land.lhs.true16.i:                                ; preds = %land.lhs.true9.i
  %addr1.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %270, i32 0, i32 2
  %320 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %addr1.i, align 4
  %322 = and i32 %321, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %322)
  %tobool.i.i = icmp eq i32 %322, 0
  %323 = and i16 %317, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %323)
  %cmp.i83.i = icmp ne i16 %323, 0
  %or.cond89.i = select i1 %tobool.i.i, i1 true, i1 %cmp.i83.i
  br i1 %or.cond89.i, label %land.lhs.true16.i.if.else30.i_crit_edge, label %if.then22.i

land.lhs.true16.i.if.else30.i_crit_edge:          ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else30.i

if.then22.i:                                      ; preds = %land.lhs.true16.i
  %324 = and i16 %257, -4
  %325 = ptrtoint ptr %ps_flags to i32
  call void @__asan_store2_noabort(i32 %325)
  store i16 %324, ptr %ps_flags, align 4
  %debug_mask.i336 = getelementptr inbounds %struct.ath_hw, ptr %268, i32 0, i32 3, i32 3
  %326 = ptrtoint ptr %debug_mask.i336 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %debug_mask.i336, align 4
  %and27.i = and i32 %327, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.then22.i.if.end139_crit_edge, label %if.then29.i

if.then22.i.if.end139_crit_edge:                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

if.then29.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i.i325, ptr noundef nonnull @.str.13) #6
  br label %if.end139

if.else30.i:                                      ; preds = %land.lhs.true16.i.if.else30.i_crit_edge, %land.lhs.true9.i.if.else30.i_crit_edge, %if.else.i335.if.else30.i_crit_edge
  %328 = and i16 %257, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %328)
  %tobool34.not.i = icmp eq i16 %328, 0
  br i1 %tobool34.not.i, label %if.else30.i.if.end139_crit_edge, label %land.lhs.true35.i

if.else30.i.if.end139_crit_edge:                  ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

land.lhs.true35.i:                                ; preds = %if.else30.i
  %addr136.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %270, i32 0, i32 2
  %329 = ptrtoint ptr %addr136.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %addr136.i, align 4
  %331 = and i32 %330, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %331)
  %tobool.i84.not.i = icmp eq i32 %331, 0
  br i1 %tobool.i84.not.i, label %land.lhs.true39.i, label %land.lhs.true35.i.if.end139_crit_edge

land.lhs.true35.i.if.end139_crit_edge:            ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

land.lhs.true39.i:                                ; preds = %land.lhs.true35.i
  %332 = ptrtoint ptr %270 to i32
  call void @__asan_load2_noabort(i32 %332)
  %333 = load i16, ptr %270, align 2
  %334 = and i16 %333, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %334)
  %cmp.i85.not.i = icmp eq i16 %334, 0
  br i1 %cmp.i85.not.i, label %if.then42.i, label %land.lhs.true39.i.if.end139_crit_edge

land.lhs.true39.i.if.end139_crit_edge:            ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

if.then42.i:                                      ; preds = %land.lhs.true39.i
  %335 = and i16 %257, -5
  %336 = ptrtoint ptr %ps_flags to i32
  call void @__asan_store2_noabort(i32 %336)
  store i16 %335, ptr %ps_flags, align 4
  %debug_mask48.i = getelementptr inbounds %struct.ath_hw, ptr %268, i32 0, i32 3, i32 3
  %337 = ptrtoint ptr %debug_mask48.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %debug_mask48.i, align 4
  %and49.i = and i32 %338, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %if.then42.i.if.end139_crit_edge, label %if.then51.i

if.then42.i.if.end139_crit_edge:                  ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

if.then51.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #8
  %339 = and i16 %257, 11
  %and54.i = zext i16 %339 to i32
  call void (ptr, ptr, ptr, ...) @ath_printk(ptr noundef nonnull @.str.1, ptr noundef %common.i.i325, ptr noundef nonnull @.str.14, i32 noundef %and54.i) #6
  br label %if.end139

if.end139:                                        ; preds = %if.then51.i, %if.then42.i.if.end139_crit_edge, %land.lhs.true39.i.if.end139_crit_edge, %land.lhs.true35.i.if.end139_crit_edge, %if.else30.i.if.end139_crit_edge, %if.then29.i, %if.then22.i.if.end139_crit_edge, %if.then97.i.i, %if.then88.i.i.if.end139_crit_edge, %if.end83.i.i.if.end139_crit_edge, %do.end79.i.i, %if.then.i331.if.end139_crit_edge, %ath9k_check_auto_sleep.exit.if.end139_crit_edge, %lor.lhs.false.if.end139_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %sc_pm_lock, i32 noundef %call127) #6
  %340 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %sc_ah, align 4
  %caps.i338 = getelementptr inbounds %struct.ath_hw, ptr %341, i32 0, i32 6
  %342 = ptrtoint ptr %caps.i338 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %caps.i338, align 4
  %and.i339 = and i32 %343, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i339)
  %tobool.not.i340 = icmp eq i32 %and.i339, 0
  br i1 %tobool.not.i340, label %if.end139.ath9k_antenna_check.exit_crit_edge, label %if.end.i342

if.end139.ath9k_antenna_check.exit_crit_edge:     ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_antenna_check.exit

if.end.i342:                                      ; preds = %if.end139
  %344 = ptrtoint ptr %rx.i to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %rx.i, align 8
  %346 = ptrtoint ptr %rs_antenna.i to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %rs_antenna.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %345, i8 %347)
  %cmp.not.i = icmp eq i8 %345, %347
  br i1 %cmp.not.i, label %if.end.i342.if.end15.sink.split.i_crit_edge, label %if.then4.i

if.end.i342.if.end15.sink.split.i_crit_edge:      ; preds = %if.end.i342
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i

if.then4.i:                                       ; preds = %if.end.i342
  %348 = ptrtoint ptr %rxotherant14.i to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %rxotherant14.i, align 1
  %inc.i = add i8 %349, 1
  store i8 %inc.i, ptr %rxotherant14.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %inc.i)
  %cmp7.i = icmp ugt i8 %inc.i, 2
  br i1 %cmp7.i, label %if.then9.i, label %if.then4.i.if.end15.i_crit_edge

if.then4.i.if.end15.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.then9.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv11.i = zext i8 %347 to i32
  call void @ath9k_hw_setantenna(ptr noundef %341, i32 noundef %conv11.i) #6
  %350 = ptrtoint ptr %rx.i to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 %347, ptr %rx.i, align 8
  br label %if.end15.sink.split.i

if.end15.sink.split.i:                            ; preds = %if.then9.i, %if.end.i342.if.end15.sink.split.i_crit_edge
  %351 = ptrtoint ptr %rxotherant14.i to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 0, ptr %rxotherant14.i, align 1
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end15.sink.split.i, %if.then4.i.if.end15.i_crit_edge
  %352 = ptrtoint ptr %caps.i338 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %caps.i338, align 4
  %and17.i = and i32 %353, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end15.i.cleanup.sink.split.i_crit_edge, label %if.then19.i

if.end15.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.then19.i:                                      ; preds = %if.end15.i
  %bt_ant_diversity.i = getelementptr inbounds %struct.ath_hw, ptr %341, i32 0, i32 3, i32 29
  %354 = ptrtoint ptr %bt_ant_diversity.i to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %bt_ant_diversity.i, align 2, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %355)
  %tobool20.not.i = icmp eq i8 %355, 0
  br i1 %tobool20.not.i, label %if.then19.i.ath9k_antenna_check.exit_crit_edge, label %if.then19.i.cleanup.sink.split.i_crit_edge

if.then19.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.then19.i.ath9k_antenna_check.exit_crit_edge:   ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_antenna_check.exit

cleanup.sink.split.i:                             ; preds = %if.then19.i.cleanup.sink.split.i_crit_edge, %if.end15.i.cleanup.sink.split.i_crit_edge
  call void @ath_ant_comb_scan(ptr noundef %sc, ptr noundef nonnull %rs) #6
  br label %ath9k_antenna_check.exit

ath9k_antenna_check.exit:                         ; preds = %cleanup.sink.split.i, %if.then19.i.ath9k_antenna_check.exit_crit_edge, %if.end139.ath9k_antenna_check.exit_crit_edge
  %356 = ptrtoint ptr %rs_isaggr.i to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %rs_isaggr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %357)
  %tobool.not.i344 = icmp eq i8 %357, 0
  br i1 %tobool.not.i344, label %ath9k_antenna_check.exit.ath9k_apply_ampdu_details.exit_crit_edge, label %if.then.i347

ath9k_antenna_check.exit.ath9k_apply_ampdu_details.exit_crit_edge: ; preds = %ath9k_antenna_check.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_apply_ampdu_details.exit

if.then.i347:                                     ; preds = %ath9k_antenna_check.exit
  %358 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %flag, align 8
  %or.i346 = or i32 %359, 4608
  store i32 %or.i346, ptr %flag, align 8
  %360 = ptrtoint ptr %ampdu_ref.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %ampdu_ref.i, align 8
  %ampdu_reference.i = getelementptr inbounds %struct.sk_buff, ptr %.296, i32 0, i32 3, i32 20
  %362 = ptrtoint ptr %ampdu_reference.i to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 %361, ptr %ampdu_reference.i, align 4
  %363 = ptrtoint ptr %rs_moreaggr.i to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %rs_moreaggr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %364)
  %tobool1.not.i = icmp eq i8 %364, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.then.i347.if.end.i350_crit_edge

if.then.i347.if.end.i350_crit_edge:               ; preds = %if.then.i347
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i350

if.then2.i:                                       ; preds = %if.then.i347
  call void @__sanitizer_cov_trace_pc() #8
  %or4.i = or i32 %359, 12800
  %365 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 %or4.i, ptr %flag, align 8
  %366 = ptrtoint ptr %ampdu_ref.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %ampdu_ref.i, align 8
  %inc.i348 = add i32 %367, 1
  store i32 %inc.i348, ptr %ampdu_ref.i, align 8
  br label %if.end.i350

if.end.i350:                                      ; preds = %if.then2.i, %if.then.i347.if.end.i350_crit_edge
  %368 = ptrtoint ptr %rs_flags.i to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %rs_flags.i, align 1
  %370 = and i8 %369, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %370)
  %tobool7.not.i349 = icmp eq i8 %370, 0
  br i1 %tobool7.not.i349, label %if.end.i350.ath9k_apply_ampdu_details.exit_crit_edge, label %if.then8.i

if.end.i350.ath9k_apply_ampdu_details.exit_crit_edge: ; preds = %if.end.i350
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath9k_apply_ampdu_details.exit

if.then8.i:                                       ; preds = %if.end.i350
  call void @__sanitizer_cov_trace_pc() #8
  %371 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %flag, align 8
  %or10.i = or i32 %372, 16384
  store i32 %or10.i, ptr %flag, align 8
  br label %ath9k_apply_ampdu_details.exit

ath9k_apply_ampdu_details.exit:                   ; preds = %if.then8.i, %if.end.i350.ath9k_apply_ampdu_details.exit_crit_edge, %ath9k_antenna_check.exit.ath9k_apply_ampdu_details.exit_crit_edge
  call void @ath_debug_rate_stats(ptr noundef %sc, ptr noundef nonnull %rs, ptr noundef %skb.2) #6
  %data.i351 = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 19
  %373 = ptrtoint ptr %data.i351 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %data.i351, align 4
  %375 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %sc_ah, align 4
  %377 = ptrtoint ptr %rs_datalen.i to i32
  call void @__asan_load2_noabort(i32 %377)
  %378 = load i16, ptr %rs_datalen.i, align 4
  %379 = ptrtoint ptr %374 to i32
  call void @__asan_load2_noabort(i32 %379)
  %380 = load i16, ptr %374, align 2
  %381 = and i16 %380, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %381)
  %cmp.i.i354 = icmp eq i16 %381, 2048
  br i1 %cmp.i.i354, label %if.end.i355, label %ath9k_apply_ampdu_details.exit.ath_rx_count_airtime.exit_crit_edge

ath9k_apply_ampdu_details.exit.ath_rx_count_airtime.exit_crit_edge: ; preds = %ath9k_apply_ampdu_details.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath_rx_count_airtime.exit

if.end.i355:                                      ; preds = %ath9k_apply_ampdu_details.exit
  %382 = call i32 @llvm.read_register.i32(metadata !44) #6
  %and.i.i.i.i.i.i = and i32 %382, -16384
  %383 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %383, i32 0, i32 1
  %384 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %385, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !63
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i.i = call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i.i, label %if.end.i355.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i357

if.end.i355.rcu_read_lock.exit.i_crit_edge:       ; preds = %if.end.i355
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i357:                             ; preds = %if.end.i355
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i356 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i356, label %land.lhs.true.i.i357.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i357.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i357
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i357
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #6
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i357.rcu_read_lock.exit.i_crit_edge, %if.end.i355.rcu_read_lock.exit.i_crit_edge
  %386 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %sc, align 8
  %addr2.i = getelementptr inbounds %struct.ieee80211_hdr, ptr %374, i32 0, i32 3
  %call2.i = call ptr @ieee80211_find_sta_by_ifaddr(ptr noundef %387, ptr noundef %addr2.i, ptr noundef null) #6
  %tobool.not.i358 = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i358, label %rcu_read_lock.exit.i.exit.i_crit_edge, label %if.end4.i

rcu_read_lock.exit.i.exit.i_crit_edge:            ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.i

if.end4.i:                                        ; preds = %rcu_read_lock.exit.i
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 15, i32 0, i32 6
  %388 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %priority.i, align 4
  %390 = trunc i32 %389 to i8
  %conv.i = and i8 %390, 15
  %enc_flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 3, i32 30
  %391 = ptrtoint ptr %enc_flags.i to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %enc_flags.i, align 2
  %conv6.i = zext i8 %392 to i32
  %bw.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 3, i32 31
  %393 = ptrtoint ptr %bw.i to i32
  call void @__asan_loadN_noabort(i32 %393, i32 2)
  %bf.load.i359 = load i16, ptr %bw.i, align 1
  %and17.i360 = and i32 %conv6.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i360)
  %tobool18.i = icmp ne i32 %and17.i360, 0
  %bf.lshr23.mask.i = and i16 %bf.load.i359, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.lshr23.mask.i)
  %cmp26.i361 = icmp eq i16 %bf.lshr23.mask.i, 16384
  br i1 %cmp26.i361, label %if.then28.i, label %if.else.i364

if.then28.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %394 = and i16 %bf.load.i359, 14336
  call void @__sanitizer_cov_trace_const_cmp2(i16 6144, i16 %394)
  %cmp.i362 = icmp eq i16 %394, 6144
  %rate_idx.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 3, i32 33
  %395 = ptrtoint ptr %rate_idx.i to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %rate_idx.i, align 1
  %conv29.i = zext i16 %378 to i32
  %conv31.i = zext i1 %cmp.i362 to i32
  %and7.i = lshr i32 %conv6.i, 2
  %and7.lobit.i = and i32 %and7.i, 1
  %call35.i = call i32 @ath_pkt_duration(ptr noundef %sc, i8 noundef zeroext %396, i32 noundef %conv29.i, i32 noundef %conv31.i, i32 noundef %and7.lobit.i, i1 noundef zeroext %tobool18.i) #6
  br label %if.end55.i

if.else.i364:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %397 = ptrtoint ptr %rs_rate.i to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %rs_rate.i, align 2
  %399 = add i8 %398, -24
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %399)
  %400 = icmp ult i8 %399, 7
  %band.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 3, i32 36
  %401 = ptrtoint ptr %band.i to i32
  call void @__asan_load1_noabort(i32 %401)
  %402 = load i8, ptr %band.i, align 4
  %idxprom.i = zext i8 %402 to i32
  %bitrates.i = getelementptr %struct.ath_hw, ptr %376, i32 0, i32 3, i32 31, i32 %idxprom.i, i32 1
  %403 = ptrtoint ptr %bitrates.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %bitrates.i, align 4
  %rate_idx43.i = getelementptr inbounds %struct.sk_buff, ptr %skb.2, i32 0, i32 3, i32 33
  %405 = ptrtoint ptr %rate_idx43.i to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %rate_idx43.i, align 1
  %idxprom44.i = zext i8 %406 to i32
  %conv46.i = zext i1 %400 to i8
  %bitrate.i = getelementptr %struct.ieee80211_rate, ptr %404, i32 %idxprom44.i, i32 1
  %407 = ptrtoint ptr %bitrate.i to i32
  call void @__asan_load2_noabort(i32 %407)
  %408 = load i16, ptr %bitrate.i, align 4
  %conv47.i = zext i16 %408 to i32
  %mul.i = mul nuw nsw i32 %conv47.i, 100
  %conv48.i = zext i16 %378 to i32
  %conv50.i = zext i8 %406 to i16
  %call52.i = call zeroext i16 @ath9k_hw_computetxtime(ptr noundef %376, i8 noundef zeroext %conv46.i, i32 noundef %mul.i, i32 noundef %conv48.i, i16 noundef zeroext %conv50.i, i1 noundef zeroext %tobool18.i) #6
  %conv53.i = zext i16 %call52.i to i32
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.else.i364, %if.then28.i
  %airtime.0.i = phi i32 [ %call35.i, %if.then28.i ], [ %conv53.i, %if.else.i364 ]
  call void @ieee80211_sta_register_airtime(ptr noundef nonnull %call2.i, i8 noundef zeroext %conv.i, i32 noundef 0, i32 noundef %airtime.0.i) #6
  br label %exit.i

exit.i:                                           ; preds = %if.end55.i, %rcu_read_lock.exit.i.exit.i_crit_edge
  %call.i88.i = call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i88.i, label %exit.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i91.i

exit.i.rcu_read_unlock.exit.i_crit_edge:          ; preds = %exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i

land.lhs.true.i91.i:                              ; preds = %exit.i
  %call1.i89.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i89.i)
  %tobool.not.i90.i = icmp eq i32 %call1.i89.i, 0
  br i1 %tobool.not.i90.i, label %land.lhs.true.i91.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i93.i

land.lhs.true.i91.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i93.i:                             ; preds = %land.lhs.true.i91.i
  %.b4.i92.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i92.i, label %land.lhs.true2.i93.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i94.i

land.lhs.true2.i93.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i93.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit.i

if.then.i94.i:                                    ; preds = %land.lhs.true2.i93.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.20) #6
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i94.i, %land.lhs.true2.i93.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i91.i.rcu_read_unlock.exit.i_crit_edge, %exit.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !64
  %409 = call i32 @llvm.read_register.i32(metadata !44) #6
  %and.i.i.i.i.i95.i = and i32 %409, -16384
  %410 = inttoptr i32 %and.i.i.i.i.i95.i to ptr
  %preempt_count.i.i.i.i96.i = getelementptr inbounds %struct.thread_info, ptr %410, i32 0, i32 1
  %411 = ptrtoint ptr %preempt_count.i.i.i.i96.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load volatile i32, ptr %preempt_count.i.i.i.i96.i, align 4
  %sub.i.i.i.i = add i32 %412, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i96.i, align 4
  call void @rcu_read_unlock_strict() #6
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br label %ath_rx_count_airtime.exit

ath_rx_count_airtime.exit:                        ; preds = %rcu_read_unlock.exit.i, %ath9k_apply_ampdu_details.exit.ath_rx_count_airtime.exit_crit_edge
  %413 = ptrtoint ptr %data.i351 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %data.i351, align 4
  %415 = ptrtoint ptr %414 to i32
  call void @__asan_load2_noabort(i32 %415)
  %416 = load i16, ptr %414, align 2
  %417 = and i16 %416, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -11264, i16 %417)
  %cmp.i366 = icmp eq i16 %417, -11264
  br i1 %cmp.i366, label %if.then143, label %ath_rx_count_airtime.exit.if.end145_crit_edge

ath_rx_count_airtime.exit.if.end145_crit_edge:    ; preds = %ath_rx_count_airtime.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end145

if.then143:                                       ; preds = %ath_rx_count_airtime.exit
  call void @__sanitizer_cov_trace_pc() #8
  %418 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %sc_ah, align 4
  %420 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %rs, align 4
  call void @ath_dynack_sample_ack_ts(ptr noundef %419, ptr noundef %skb.2, i32 noundef %421) #6
  br label %if.end145

if.end145:                                        ; preds = %if.then143, %ath_rx_count_airtime.exit.if.end145_crit_edge
  call void @ieee80211_rx_napi(ptr noundef %3, ptr noundef null, ptr noundef %skb.2, ptr noundef null) #6
  br label %requeue_drop_frag

requeue_drop_frag:                                ; preds = %if.end145, %cleanup, %if.then44, %do.body34, %corrupt.i, %do.body121.i, %do.end94.i, %if.end65.i.requeue_drop_frag_crit_edge, %do.body56.i, %land.lhs.true50.i.requeue_drop_frag_crit_edge, %if.else.i.requeue_drop_frag_crit_edge, %if.then47.i
  %422 = ptrtoint ptr %frag to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %frag, align 4
  %tobool148.not = icmp eq ptr %423, null
  br i1 %tobool148.not, label %requeue_drop_frag.requeue_crit_edge, label %if.then149

requeue_drop_frag.requeue_crit_edge:              ; preds = %requeue_drop_frag
  call void @__sanitizer_cov_trace_pc() #8
  br label %requeue

if.then149:                                       ; preds = %requeue_drop_frag
  call void @__sanitizer_cov_trace_pc() #8
  call void @__dev_kfree_skb_any(ptr noundef nonnull %423, i32 noundef 1) #6
  br label %requeue.sink.split

requeue.sink.split:                               ; preds = %if.then149, %if.then79, %do.body69.requeue.sink.split_crit_edge
  %.sink = phi ptr [ null, %if.then149 ], [ null, %if.then79 ], [ %99, %do.body69.requeue.sink.split_crit_edge ]
  %424 = ptrtoint ptr %frag to i32
  call void @__asan_store4_noabort(i32 %424)
  store ptr %.sink, ptr %frag, align 4
  br label %requeue

requeue:                                          ; preds = %requeue.sink.split, %requeue_drop_frag.requeue_crit_edge
  %425 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i367 = call zeroext i1 @__list_add_valid(ptr noundef %bf.0394, ptr noundef %426, ptr noundef %rxbuf.i.i) #6
  br i1 %call.i.i367, label %if.end.i.i368, label %requeue.list_add_tail.exit_crit_edge

requeue.list_add_tail.exit_crit_edge:             ; preds = %requeue
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i368:                                    ; preds = %requeue
  call void @__sanitizer_cov_trace_pc() #8
  %427 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %427)
  store ptr %bf.0394, ptr %prev.i.i.i, align 4
  %428 = ptrtoint ptr %bf.0394 to i32
  call void @__asan_store4_noabort(i32 %428)
  store ptr %rxbuf.i.i, ptr %bf.0394, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %bf.0394, i32 0, i32 1
  %429 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %429)
  store ptr %426, ptr %prev3.i.i, align 4
  %430 = ptrtoint ptr %426 to i32
  call void @__asan_store4_noabort(i32 %430)
  store volatile ptr %bf.0394, ptr %426, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i368, %requeue.list_add_tail.exit_crit_edge
  br i1 %tobool.not, label %if.then157, label %if.else162

if.then157:                                       ; preds = %list_add_tail.exit
  %431 = ptrtoint ptr %buf_hold.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %buf_hold.i, align 8
  %tobool.not.i370 = icmp eq ptr %432, null
  br i1 %tobool.not.i370, label %if.then157.ath_rx_buf_relink.exit_crit_edge, label %if.then.i374

if.then157.ath_rx_buf_relink.exit_crit_edge:      ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath_rx_buf_relink.exit

if.then.i374:                                     ; preds = %if.then157
  %433 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %sc_ah, align 4
  %bf_desc.i.i = getelementptr inbounds %struct.ath_rxbuf, ptr %432, i32 0, i32 2
  %435 = ptrtoint ptr %bf_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %bf_desc.i.i, align 4
  %437 = ptrtoint ptr %436 to i32
  call void @__asan_store4_noabort(i32 %437)
  store i32 0, ptr %436, align 4
  %bf_buf_addr.i.i372 = getelementptr inbounds %struct.ath_rxbuf, ptr %432, i32 0, i32 4
  %438 = ptrtoint ptr %bf_buf_addr.i.i372 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %bf_buf_addr.i.i372, align 4
  %ds_data.i.i = getelementptr inbounds %struct.ath_desc, ptr %436, i32 0, i32 1
  %440 = ptrtoint ptr %ds_data.i.i to i32
  call void @__asan_store4_noabort(i32 %440)
  store i32 %439, ptr %ds_data.i.i, align 4
  %bf_mpdu.i.i = getelementptr inbounds %struct.ath_rxbuf, ptr %432, i32 0, i32 1
  %441 = ptrtoint ptr %bf_mpdu.i.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %bf_mpdu.i.i, align 4
  %cmp.i.i373 = icmp eq ptr %442, null
  br i1 %cmp.i.i373, label %do.body2.i.i, label %do.end7.i.i, !prof !55

do.body2.i.i:                                     ; preds = %if.then.i374
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath9k/recv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 51, 0\0A.popsection", ""() #6, !srcloc !57
  unreachable

do.end7.i.i:                                      ; preds = %if.then.i374
  %data.i.i375 = getelementptr inbounds %struct.sk_buff, ptr %442, i32 0, i32 19
  %443 = ptrtoint ptr %data.i.i375 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %data.i.i375, align 4
  %ds_vdata.i.i = getelementptr inbounds %struct.ath_desc, ptr %436, i32 0, i32 5
  %445 = ptrtoint ptr %ds_vdata.i.i to i32
  call void @__asan_store4_noabort(i32 %445)
  store ptr %444, ptr %ds_vdata.i.i, align 4
  %rx_bufsize.i.i376 = getelementptr inbounds %struct.ath_hw, ptr %434, i32 0, i32 3, i32 12
  %446 = ptrtoint ptr %rx_bufsize.i.i376 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %rx_bufsize.i.i376, align 4
  call void @ath9k_hw_setuprxdesc(ptr noundef %434, ptr noundef %436, i32 noundef %447, i32 noundef 0) #6
  %448 = ptrtoint ptr %rxlink.i.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %rxlink.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %449, null
  br i1 %tobool8.not.i.i, label %if.else.i.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %bf_daddr.i.i = getelementptr inbounds %struct.ath_rxbuf, ptr %432, i32 0, i32 3
  %450 = ptrtoint ptr %bf_daddr.i.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %bf_daddr.i.i, align 4
  %452 = ptrtoint ptr %449 to i32
  call void @__asan_store4_noabort(i32 %452)
  store i32 %451, ptr %449, align 4
  br label %ath_rx_buf_link.exit.i

if.else.i.i:                                      ; preds = %do.end7.i.i
  br i1 %tobool163.not, label %if.then13.i.i, label %if.else.i.i.ath_rx_buf_link.exit.i_crit_edge

if.else.i.i.ath_rx_buf_link.exit.i_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ath_rx_buf_link.exit.i

if.then13.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %bf_daddr14.i.i = getelementptr inbounds %struct.ath_rxbuf, ptr %432, i32 0, i32 3
  %453 = ptrtoint ptr %bf_daddr14.i.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %bf_daddr14.i.i, align 4
  call void @ath9k_hw_putrxbuf(ptr noundef %434, i32 noundef %454) #6
  br label %ath_rx_buf_link.exit.i

ath_rx_buf_link.exit.i:                           ; preds = %if.then13.i.i, %if.else.i.i.ath_rx_buf_link.exit.i_crit_edge, %if.then9.i.i
  %455 = ptrtoint ptr %rxlink.i.i to i32
  call void @__asan_store4_noabort(i32 %455)
  store ptr %436, ptr %rxlink.i.i, align 4
  br label %ath_rx_buf_relink.exit

ath_rx_buf_relink.exit:                           ; preds = %ath_rx_buf_link.exit.i, %if.then157.ath_rx_buf_relink.exit_crit_edge
  %456 = ptrtoint ptr %buf_hold.i to i32
  call void @__asan_store4_noabort(i32 %456)
  store ptr %bf.0394, ptr %buf_hold.i, align 8
  br i1 %tobool163.not, label %if.then160, label %ath_rx_buf_relink.exit.if.end167_crit_edge

ath_rx_buf_relink.exit.if.end167_crit_edge:       ; preds = %ath_rx_buf_relink.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end167

if.then160:                                       ; preds = %ath_rx_buf_relink.exit
  call void @__sanitizer_cov_trace_pc() #8
  %457 = ptrtoint ptr %rx_enable.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %rx_enable.i, align 4
  call void %458(ptr noundef %1) #6
  br label %if.end167

if.else162:                                       ; preds = %list_add_tail.exit
  br i1 %tobool163.not, label %if.then164, label %if.else162.if.end167_crit_edge

if.else162.if.end167_crit_edge:                   ; preds = %if.else162
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end167

if.then164:                                       ; preds = %if.else162
  call void @__sanitizer_cov_trace_pc() #8
  %call165 = call fastcc zeroext i1 @ath_rx_edma_buf_link(ptr noundef %sc, i32 noundef %cond)
  br label %if.end167

if.end167:                                        ; preds = %if.then164, %if.else162.if.end167_crit_edge, %if.then160, %ath_rx_buf_relink.exit.if.end167_crit_edge
  %dec = add i32 %budget.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget.0)
  %tobool168.not = icmp eq i32 %budget.0, 0
  br i1 %tobool168.not, label %do.end175.loopexit, label %if.end167.cleanup171_crit_edge

if.end167.cleanup171_crit_edge:                   ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup171

cleanup171.thread:                                ; preds = %if.end13.cleanup171.thread_crit_edge, %cleanup40.critedge69.i, %if.then15.i, %if.end.i.cleanup171.thread_crit_edge, %if.then.i, %while.body.i.cleanup171.thread_crit_edge, %if.then16.i.i, %if.then9.cleanup171.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %decrypt_error) #6
  br label %do.end175

cleanup171:                                       ; preds = %if.end167.cleanup171_crit_edge, %if.end16.cleanup171_crit_edge
  %budget.1 = phi i32 [ %budget.0, %if.end16.cleanup171_crit_edge ], [ %dec, %if.end167.cleanup171_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %decrypt_error) #6
  br label %do.body

do.end175.loopexit:                               ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %decrypt_error) #6
  br label %do.end175

do.end175:                                        ; preds = %do.end175.loopexit, %cleanup171.thread
  %imask = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 36
  %459 = ptrtoint ptr %imask to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %imask, align 4
  %and176 = and i32 %460, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176)
  %tobool177.not = icmp eq i32 %and176, 0
  br i1 %tobool177.not, label %if.then178, label %do.end175.if.end180_crit_edge

do.end175.if.end180_crit_edge:                    ; preds = %do.end175
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end180

if.then178:                                       ; preds = %do.end175
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %460, 48
  %461 = ptrtoint ptr %imask to i32
  call void @__asan_store4_noabort(i32 %461)
  store i32 %or, ptr %imask, align 4
  call void @ath9k_hw_set_interrupts(ptr noundef %1) #6
  br label %if.end180

if.end180:                                        ; preds = %if.then178, %do.end175.if.end180_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %rs) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ath9k_hw_gettsf64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_cmn_rx_skb_postprocess(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_debug_rate_stats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_dynack_sample_ack_ts(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ath_rx_edma_buf_link(ptr noundef %sc, i32 noundef %qtype) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_ah = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 7
  %0 = ptrtoint ptr %sc_ah to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_ah, align 4
  %arrayidx = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 7, i32 %qtype
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %arrayidx, i32 0, i32 1
  %2 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen.i, align 4
  %rx_fifo_hwsize = getelementptr %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 7, i32 %qtype, i32 1
  %4 = ptrtoint ptr %rx_fifo_hwsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_fifo_hwsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp ult i32 %3, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %rxbuf = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 34, i32 5
  %6 = ptrtoint ptr %rxbuf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rxbuf, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %7, ptr %7, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %7, ptr %prev.i3.i, align 4
  %bf_mpdu = getelementptr inbounds %struct.ath_rxbuf, ptr %7, i32 0, i32 1
  %16 = ptrtoint ptr %bf_mpdu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bf_mpdu, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 19
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %rx_status_len = getelementptr inbounds %struct.ath_hw, ptr %1, i32 0, i32 6, i32 12
  %20 = ptrtoint ptr %rx_status_len to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rx_status_len, align 2
  %conv = zext i8 %21 to i32
  %22 = call ptr @memset(ptr %19, i32 0, i32 %conv)
  %dev = getelementptr inbounds %struct.ath_softc, ptr %sc, i32 0, i32 1
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %bf_buf_addr = getelementptr inbounds %struct.ath_rxbuf, ptr %7, i32 0, i32 4
  %25 = ptrtoint ptr %bf_buf_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bf_buf_addr, align 4
  %27 = load i8, ptr %rx_status_len, align 2
  %conv5 = zext i8 %27 to i32
  tail call void @dma_sync_single_for_device(ptr noundef %24, i32 noundef %26, i32 noundef %conv5, i32 noundef 1) #6
  %cb = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3
  %28 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %7, ptr %cb, align 8
  %29 = ptrtoint ptr %bf_buf_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bf_buf_addr, align 4
  tail call void @ath9k_hw_addrxbuf_edma(ptr noundef %1, i32 noundef %30, i32 noundef %qtype) #6
  %prev.i.i25 = getelementptr inbounds %struct.sk_buff_list, ptr %arrayidx, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i25, align 4
  %33 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %arrayidx, ptr %17, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.41, ptr %17, i32 0, i32 1
  %34 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %prev10.i.i.i, align 4
  store volatile ptr %17, ptr %prev.i.i25, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %17, ptr %32, align 4
  %36 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %qlen.i, align 4
  %add.i.i.i = add i32 %37, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit, %entry.cleanup_crit_edge
  ret i1 %cmp.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_set_interrupts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_set_rx_bufsize(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_setuprxdesc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_hw_setbssidmask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_setopmode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_setmcastfilter(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_hw_process_rxdesc_edma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_hw_rxprocdesc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_debug_stat_rx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_dfs_process_phyerr(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_cmn_process_fft(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_cmn_rx_accept(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath_is_mybeacon(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_cmn_process_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ath9k_is_chanctx_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_chanctx_beacon_recv_ev(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_cmn_process_rssi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_set_beacon(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_p2p_beacon_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath_ant_comb_scan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_setantenna(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta_by_ifaddr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath_pkt_duration(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ath9k_hw_computetxtime(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_sta_register_airtime(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_napi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_hw_addrxbuf_edma(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !41, !43}
!llvm.named.register.sp = !{!44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @ath_rx_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/recv.c", i32 278, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath9k/recv.c", i32 286, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath9k/recv.c", i32 292, i32 7}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath9k/recv.c", i32 294, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/ath9k/recv.c", i32 317, i32 4}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/ath9k/recv.c", i32 498, i32 3}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ath/ath9k/recv.c", i32 145, i32 3}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/ath9k/recv.c", i32 913, i32 6}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/ath/ath9k/recv.c", i32 921, i32 3}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/ath9k/recv.c", i32 612, i32 3}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/ath/ath9k/recv.c", i32 618, i32 3}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/ath9k/recv.c", i32 549, i32 3}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/ath/ath9k/recv.c", i32 560, i32 9}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/ath/ath9k/recv.c", i32 574, i32 3}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/ath9k/recv.c", i32 587, i32 3}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!43 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!44 = !{!"sp"}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{i64 2157781155, i64 2157781657, i64 2157781192, i64 2157781248, i64 2157781282, i64 2157781306, i64 2157781347, i64 2157781368, i64 2157781396, i64 2157781430}
!57 = !{i64 2157768969, i64 2157769470, i64 2157769006, i64 2157769062, i64 2157769096, i64 2157769120, i64 2157769161, i64 2157769182, i64 2157769210, i64 2157769244}
!58 = !{i8 0, i8 2}
!59 = !{!"branch_weights", i32 4001, i32 1}
!60 = !{i64 2157805741, i64 2157806243, i64 2157805778, i64 2157805834, i64 2157805868, i64 2157805892, i64 2157805933, i64 2157805954, i64 2157805982, i64 2157806016}
!61 = !{i64 2157807404, i64 2157807906, i64 2157807441, i64 2157807497, i64 2157807531, i64 2157807555, i64 2157807596, i64 2157807617, i64 2157807645, i64 2157807679}
!62 = !{!"branch_weights", i32 1, i32 4001}
!63 = !{i64 2149342093}
!64 = !{i64 2149342359}
